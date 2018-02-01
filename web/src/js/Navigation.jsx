import React, {Component} from 'react';

import {withStyles} from 'material-ui/styles';

import Drawer from 'material-ui/Drawer';
import List, {ListItem, ListItemIcon, ListItemText} from 'material-ui/List';
import Divider from 'material-ui/Divider'
import IconButton from 'material-ui/IconButton';

import SettingsIcon from 'material-ui-icons/Settings';
import WifiIcon from 'material-ui-icons/Wifi';
import UpdateIcon from 'material-ui-icons/Update';
import LightbulbOutlineIcon from 'material-ui-icons/LightbulbOutline';
import ChevronLeftIcon from 'material-ui-icons/ChevronLeft';


const styles = theme => ({
  list: {
    width: 250,
  },
  listFull: {
    width: 'auto',
  },
  drawerHeader: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'flex-end',
    padding: '0 8px',
  },
});


function NavItem(props) {
  return (
    <ListItem button onClick={props.onClick}>
      <ListItemIcon>
        {props.icon}
      </ListItemIcon>
      <ListItemText primary={props.label}/>
    </ListItem>
  );
}


class Navigation extends Component {

  render() {
    const {classes} = this.props;


    return (
      <Drawer open={this.props.open} onClose={this.props.hideDrawer}>
        <div tabIndex={0} role="button">
          <div className={classes.drawerHeader}>
            <IconButton onClick={this.props.hideDrawer}>
              <ChevronLeftIcon/>
            </IconButton>
          </div>
          <Divider/>
          <div className={classes.list}>
            <List>
              <NavItem label="Channel A" icon={<LightbulbOutlineIcon/>} onClick={() => this.props.onViewChange(0)}/>
              <NavItem label="Channel B" icon={<LightbulbOutlineIcon/>} onClick={() => this.props.onViewChange(1)}/>
            </List>
            <Divider/>
            <List>
              <NavItem label="General" icon={<SettingsIcon/>} onClick={() => this.props.onViewChange(2)}/>
              <NavItem label="Wifi" icon={<WifiIcon/>} onClick={() => this.props.onViewChange(3)}/>
              <NavItem label="Upgrade" icon={<UpdateIcon/>} onClick={() => this.props.onViewChange(4)}/>
            </List>
          </div>
        </div>
      </Drawer>
    );
  }
}

export default withStyles(styles)(Navigation);
