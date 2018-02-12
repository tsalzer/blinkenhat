const webpack = require('webpack');

const path = require("path");
const HtmlWebPackPlugin = require("html-webpack-plugin");
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const HtmlWebpackInlineSourcePlugin = require('html-webpack-inline-source-plugin');


module.exports = {
  entry: ["./src/js/app.js"],
  resolve: {extensions: ['.js', '.jsx']},
  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "js/[name].js"
  },
  devServer: {
    contentBase: "./dist",
    proxy: {
        '/config': {
            target: 'http://localhost:3000',
            secure: false
        }
    }
  },
  devtool: "source-map",
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        loader: "babel-loader",
        query: {
          cacheDirectory: true,
        },
      },
      {
        test: /\.css$/,
        loader: 'style-loader!css-loader',
      },
      {
        test: /\.html$/,
        use: [
          {
            loader: "html-loader"
          }
        ]
      }
    ]
  },
  plugins: [
    new HtmlWebPackPlugin({
                            template: "./src/index.html",
                            inlineSource: ".(js|css|jsx)$", // embed all javascript and css inline
                            filename: "./index.html"
                          }),
    new HtmlWebpackInlineSourcePlugin(),
    new webpack.SourceMapDevToolPlugin({
                                         filename: '[name].js.map',
                                       }),
  ]
};

const isProduction = process.env.NODE_ENV  === "production";

if (isProduction) {
  module.exports.plugins.push(
    new webpack.DefinePlugin({
          'process.env.NODE_ENV': JSON.stringify('production')
    }),
    new UglifyJsPlugin({
      sourceMap: true
    })
  );
}
