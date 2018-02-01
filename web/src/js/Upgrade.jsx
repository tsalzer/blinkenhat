import React, {Component} from 'react';

import Typography from 'material-ui/Typography';
import Grid from 'material-ui/Grid'
import TextField from 'material-ui/TextField';
import Button from 'material-ui/Button';

import {withStyles} from 'material-ui/styles';


const styles = theme => ({
  root: {
    flexGrow: 1,
    marginTop: 10,
    padding: 5,
  },
});


class Upgrade extends Component {

  constructor(props) {
    super(props);

    this.state = {
      disabled: true,
      file: ""
    }
  }

  handleChange(event) {
    this.setState({
                    disabled: (event.target.value === undefined || event.target.value.length === ""),
                    file: event.target.value
                  });
  }

  render() {
    const {classes} = this.props;

    return (
      <div className={classes.root}>
        <form method="post" action="/firmware" enctype="multipart/form-data" >
          <Grid container spacing={24}>
            <Grid item xs={12}>
              <Typography type="headline" gutterBottom>
                Upgrade
              </Typography>
            </Grid>
            <Grid item xs={12}>
              <TextField
                id="firmware"
                name="file"
                label="Firmware"
                className={classes.textField}
                onChange={e => this.handleChange(e)}
                value={this.state.file}
                margin="normal"
                type="file"
              />
            </Grid>
            <Grid item xs={12}>
              <Button raised color="primary" type="submit" disabled={this.state.disabled}>
                Submit
              </Button>
            </Grid>
          </Grid>
        </form>
      </div>
    );
  }
}

export default withStyles(styles)(Upgrade)
