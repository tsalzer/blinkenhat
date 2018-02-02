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


class Channel extends Component {

  changeData(field) {
    return event => {
      this.props.dataMangle(d => {
        d[field] = parseFloat(event.target.value);
      });
    }
  }

  render() {
    const {classes, cfg_data} = this.props;
    const channel_data = cfg_data.channels[this.props.channel];

    return (
      <Page name={"Channel " + this.props.channel + " Settings"}>
        <PaperContainer headline="General channel settings">
          <SimpleSlider id="leds" label="Number of LED" min={50} max={100} value={channel_data.leds}
                        onChange={this.changeData("leds")}
                        valueFormat={val => val + " LEDs"}/>
          <SimpleSlider id="gamma" label="Gamma Value" min={0.5} max={2} step={0.1} value={channel_data.gamma}
                        onChange={this.changeData("gamma")}
                        valueFormat={val => val}/>
        </PaperContainer>
      </Page>
    );
  }
}


export default withStyles(styles)(Channel)
