import React, {Component} from 'react';

import PaperContainer from './PaperContainer'
import Page from './Page'
import CommonTextField from './CommonTextField'

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
    const makeChanger = id => this.changeData(id);

    return (
      <Page name="WiFi Settings">
        <PaperContainer headline="Station mode settings">
          <CommonTextField id={"sta_ssid"} label="Station SSID"
                           changerProvider={makeChanger} cfg_data={this.props.cfg_data}/>
          <CommonTextField id={"sta_passwd"} label="Station Password"
                           changerProvider={makeChanger} cfg_data={this.props.cfg_data}/>
        </PaperContainer>
        <PaperContainer headline="AP mode settings">
          <CommonTextField id={"ap_ssid"} label="AP SSID"
                           changerProvider={makeChanger} cfg_data={this.props.cfg_data}/>
          <CommonTextField id={"ap_passwd"} label="AP Password"
                           changerProvider={makeChanger} cfg_data={this.props.cfg_data}/>
        </PaperContainer>
      </Page>
    );
  }
}

export default withStyles(styles)(WiFi);
