#ifndef BLINKENHAT_WEBSERVER_H
#define BLINKENHAT_WEBSERVER_H

#include <Config.h>
#include <ESP8266WebServer.h>


class WebServer {
public:
  WebServer() = default;

  void configure(Config &config);
  void loop() { web.handleClient(); }

private:
  ESP8266WebServer web;
};


#endif // BLINKENHAT_WEBSERVER_H
