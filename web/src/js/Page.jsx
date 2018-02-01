import React, {Component} from 'react';

import Typography from 'material-ui/Typography';

import {withStyles} from 'material-ui/styles';

const styles = theme => ({
  root: {
    flexGrow: 1,
    padding: 5
  },
});

function Page(props) {
  const {classes} = props;

  return (
    <div className={classes.root}>
      <Typography type="headline" gutterBottom>
        {props.name}
      </Typography>
      {props.children}
    </div>
  );
}

export default withStyles(styles)(Page)
