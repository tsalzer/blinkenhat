# Webfrontend for the BlinkenHat

All commands shown here expect the CWD to be the directory of this readme.

## Development

To start the development you need node.
You can use [nodeenv](https://pypi.python.org/pypi/nodeenv) to get a local installation.

The packages are installed via npm:
```bash
$ npm install
```

For easy development there is a dev server.
If consists of two parts: The webpack dev server to compile and deliver the static contents and the json-server to deliver the fake-API.
You need to start both for full testing:
```bash
# start the webpack dev server:
$ npm start

# start the json-server:
$ npm json-server
# which actually calls:
# $ ./node_modules/.bin/json-server --watch dummy.json
```

The dev version of the frontend is then available at http://localhost:8080.

## Build

For the "production" build you need node as with the development version.
Install all dependencies:
```bash
$ npm install
```

Run the build process:
```bash
$ NODE_ENV="production" npm run build
```

This creates `dist/index.html` which will be picked up by the platformio build process and included in the binary.
