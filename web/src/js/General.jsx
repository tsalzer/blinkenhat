import React, {Component} from 'react';

import SimpleSlider from './SimpleSlider'

import PaperContainer from './PaperContainer'
import Page from './Page';

import {withStyles} from 'material-ui/styles';

const styles = theme => ({
  control: {
    padding: theme.spacing.unit * 2,
  },
  slider: {
    height: 10
  }
});


class General extends Component {

  changeData(field) {
    return event => {
      this.props.onDataChange(field, parseInt(event.target.value));
    }
  }

  render() {
    const {classes, cfg_data} = this.props;

    return (
      <Page name={"General Settings"}>
        <PaperContainer headline="Global LED settings">
          <SimpleSlider id="brightness" label="Brightness" min={5} max={100} value={cfg_data.brightness}
                        onChange={this.changeData("brightness")}
                        valueFormat={val => val + "%"}/>
          <SimpleSlider id="framerate" label="Framerate" min={2} max={40} value={cfg_data.framerate}
                        onChange={this.changeData("framerate")}
                        valueFormat={val => val + "fps"}/>
        </PaperContainer>
      </Page>
    );
  }
}


export default withStyles(styles)(General)
