import React, {Component} from 'react';

import TextField from 'material-ui/TextField';

import {withStyles} from 'material-ui/styles';

const styles = theme => ({
  control: {
    padding: theme.spacing.unit * 2,
  },
  label:{
    paddingLeft: theme.spacing.unit * 2,
    paddingRight: theme.spacing.unit * 2,
  }
});

function CommonTextField(props) {
  const {classes} = props;
  return (
    <TextField
      fullWidth
      id={props.id}
      label={props.label}
      onChange={props.changerProvider(props.id)}
      value={props.cfg_data[props.id]}
      margin="normal"
      className={classes.control}
      labelClassName={classes.label}
    />
  )
}

export default withStyles(styles)(CommonTextField)
