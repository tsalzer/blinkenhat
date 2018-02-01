import React, {Component} from 'react';

import Typography from 'material-ui/Typography';
import TextField from 'material-ui/TextField';
import Button from 'material-ui/Button';

import PaperContainer from './PaperContainer'

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
        <form method="post" action="/firmware" encType="multipart/form-data">
          <Typography type="headline" gutterBottom>
            Upgrade
          </Typography>
          <PaperContainer headline="Firmware">
            <TextField
              id="firmware"
              name="file"
              label="Firmware"
              className={classes.textField}
              onChange={e => this.handleChange(e)}
              value={this.state.file}
              margin="normal"
              type="file"
              fullWidth
            />
            <Button raised color="primary" type="submit" disabled={this.state.disabled}>
              Submit
            </Button>
          </PaperContainer>
        </form>
      </div>
    );
  }
}

export default withStyles(styles)(Upgrade)
