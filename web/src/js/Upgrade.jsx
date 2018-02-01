import React, {Component} from 'react';

import TextField from 'material-ui/TextField';
import Button from 'material-ui/Button';

import PaperContainer from './PaperContainer'
import Page from './Page'

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
      <Page name="Upgrade">
        <form method="post" action="/firmware" encType="multipart/form-data">
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
      </Page>
    );
  }
}

export default withStyles(styles)(Upgrade)
