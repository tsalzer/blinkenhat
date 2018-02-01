/**
 * In this file, we create a React component
 * which incorporates components provided by Material-UI.
 */
import React, {Component} from 'react';
import Reboot from 'material-ui/Reboot';

import {withStyles} from 'material-ui/styles';

import Head from './Head';
import Navigation from './Navigation';


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
    }
  }

  toggleDrawer(open) {
    this.setState({drawer: open});
  }

  render() {
    const {classes} = this.props;

    return (
      <div className={classes.root}>
        <Reboot/>
        <Navigation hideDrawer={() => this.toggleDrawer(false)} open={this.state.drawer}/>
        <Head showDrawer={() => this.toggleDrawer(true)}/>
      </div>
    );
  }
}

export default withStyles(styles)(Main);
