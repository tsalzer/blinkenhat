/**
 * We need ur own slider component until
 * https://github.com/mui-org/material-ui/issues/4793
 * is resolved.
 */

import React, {Component} from 'react';

import {FormControl, FormHelperText, FormLabel} from 'material-ui/Form';

import {withStyles} from 'material-ui/styles';

const styles = theme => ({
  control: {
    padding: theme.spacing.unit * 2,
  },
});


class SimpleSlider extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const {classes} = this.props;
    console.log(this.props);
    console.log(classes.control);

    return (
      <FormControl className={classes.control} fullWidth>
        <FormLabel htmlFor={this.props.id}>{this.props.label}</FormLabel>
        <input id={this.props.id} type="range" min={this.props.min} max={this.props.max} step={this.props.step}
               value={this.props.value} onChange={e => this.props.onChange(e)}/>
        <FormHelperText id={this.props.id + "-helper-text"}>{this.props.valueFormat(this.props.value)}</FormHelperText>
      </FormControl>
    )
  }
}

SimpleSlider.defaultProps = {
  valueFormat: val => val,
  value: 0,
  min: 0,
  max: 10,
  step: 1,
  onChange: console.log
};

export default withStyles(styles)(SimpleSlider)
