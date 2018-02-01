/**
 * In this file, we create a React component
 * which incorporates components provided by Material-UI.
 */
import React, {Component} from 'react';
import Reboot from 'material-ui/Reboot';
import Snackbar from 'material-ui/Snackbar';
import Slide from 'material-ui/transitions/Slide';

import {MuiThemeProvider, createMuiTheme} from 'material-ui/styles';

import axios from 'axios';

import {withStyles} from 'material-ui/styles';

import Head from './Head';
import Navigation from './Navigation';
import Upgrade from './Upgrade';
import WiFi from './WiFi'


const styles = {
  root: {
    width: '100%',
  }
};

const theme = createMuiTheme({
                               palette: {
                                 type: 'dark', // Switching the dark mode on is a single property value change.
                               },
                             });

class Main extends Component {

  constructor(props) {
    super(props);
    this.state = {
      drawer: true,
      view: 0,
      global_data: {
        sta_ssid: "",
        sta_passwd: "",
        ap_ssid: "",
        ap_passwd: ""
      }
    }
  }

  loadConfig() {
    axios.get(`/config`)
      .then(res => {
        const new_config = res.data;
        this.setState(
          {global_data: Object.assign({}, this.state.global_data, new_config)}
        );
      });
  }

  saveConfig() {
    axios.post('/config', this.state.global_data)
      .then(rsp => {
        this.showMessage("Config saved");
      }).catch(reason => {
      this.showMessage("Save failed")
    });
  }

  componentDidMount() {
    this.loadConfig();
  }

  toggleDrawer(open) {
    this.setState({drawer: open});
  }

  showMessage(message) {
    this.setState({last_message: message, show_message: true})
  }

  changeView(viewNum) {
    this.setState({
                    view: viewNum,
                    drawer: false
                  });
  }

  setGlobalData(field, value) {
    const update = {};
    update[field] = value;
    this.setState({global_data: Object.assign({}, this.state.global_data, update)})
  }

  render() {
    const {classes} = this.props;
    const view = this.state.view;

    return (
      <div className={classes.root}>
        <MuiThemeProvider theme={theme}>
          <Reboot/>
          <Navigation onViewChange={n => this.changeView(n)} hideDrawer={() => this.toggleDrawer(false)}
                      open={this.state.drawer}/>
          <Head showDrawer={() => this.toggleDrawer(true)} onSave={() => this.saveConfig()}/>
          {view === 3 &&
          <WiFi cfg_data={this.state.global_data} onDataChange={(field, val) => this.setGlobalData(field, val)}/>}
          {view === 4 && <Upgrade/>}
          <Snackbar
            open={this.state.show_message}
            transition={Slide}
            autoHideDuration={4000}
            SnackbarContentProps={{
              'aria-describedby': 'message-id',
            }}
            onClose={() => this.setState({show_message: false})}
            message={<span id="message-id">{this.state.last_message}</span>}
          />
        </MuiThemeProvider>
      </div>
    );
  }
}

export default withStyles(styles)(Main);
