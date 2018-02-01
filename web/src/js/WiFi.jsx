import React, {Component} from 'react';

import Typography from 'material-ui/Typography';
import TextField from 'material-ui/TextField';
import PaperContainer from './PaperContainer'

import {withStyles} from 'material-ui/styles';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: 5
  },
  control: {
    padding: theme.spacing.unit * 2,
  },
});


class WiFi extends Component {

  changeData(field) {
    return event => {
      this.props.onDataChange(field, event.target.value);
    }
  }

  render() {
    const {classes} = this.props;

    return (
      <div className={classes.root}>
        <Typography type="headline" gutterBottom>
          WiFi Settings
        </Typography>
        <PaperContainer headline="Station mode settings">
          <TextField
            fullWidth
            id="sta_ssid"
            label="Station SSID"
            onChange={this.changeData("sta_ssid")}
            value={this.props.cfg_data.sta_ssid}
            margin="normal"
          />
          <TextField
            fullWidth
            id="sta_passwd"
            label="Station Password"
            onChange={this.changeData("sta_passwd")}
            value={this.props.cfg_data.sta_passwd}
            margin="normal"
          />
        </PaperContainer>
        <PaperContainer headline="AP mode settings">
          <TextField
            fullWidth
            id="ap_ssid"
            label="AP SSID"
            onChange={this.changeData("ap_ssid")}
            value={this.props.cfg_data.ap_ssid}
            margin="normal"
          />
          <TextField
            fullWidth
            id="ap_passwd"
            label="AP Password"
            onChange={this.changeData("ap_passwd")}
            value={this.props.cfg_data.ap_passwd}
            margin="normal"
          />
        </PaperContainer>
      </div>
    );
  }
}

export default withStyles(styles)(WiFi);
