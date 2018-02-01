/**
 * In this file, we create a React component
 * which incorporates components provided by Material-UI.
 */
import React, {Component} from 'react';
import Reboot from 'material-ui/Reboot';

import {withStyles} from 'material-ui/styles';

import Head from './Head';
import Navigation from './Navigation';
import Upgrade from './Upgrade';


const styles = {
  root: {
    width: '100%',
  }
};

class Main extends Component {

  constructor(props) {
    super(props);
    this.state = {
      drawer: true,
      view: 0
    }
  }

  toggleDrawer(open) {
    this.setState({drawer: open});
  }

  changeView(viewNum) {
    this.setState({view: viewNum,
                  drawer: false});
  }

  render() {
    const {classes} = this.props;

        const  view  = this.state.view;

    return (
      <div className={classes.root}>
        <Reboot/>
        <Navigation onViewChange={n => this.changeView(n)} hideDrawer={() => this.toggleDrawer(false)} open={this.state.drawer}/>
        <Head showDrawer={() => this.toggleDrawer(true)}/>
        {view === 4 && <Upgrade/>}
      </div>
    );
  }
}

export default withStyles(styles)(Main);
