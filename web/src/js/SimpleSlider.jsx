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


function SimpleSlider(props) {
  const {classes} = props;

  return (
    <FormControl className={classes.control} fullWidth>
      <FormLabel htmlFor={props.id}>{props.label}</FormLabel>
      <input id={props.id} type="range" min={props.min} max={props.max} step={props.step}
             value={props.value} onChange={e => props.onChange(e)}/>
      <FormHelperText id={props.id + "-helper-text"}>{props.valueFormat(props.value)}</FormHelperText>
    </FormControl>
  )
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
