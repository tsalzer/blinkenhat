#ifndef BLINKENHAT_WEBSERVER_H
#define BLINKENHAT_WEBSERVER_H

#include <HatConfig.h>
#include <ESP8266WebServer.h>


class WebServer {
public:
  WebServer() : web(80) {}

  void configure(HatConfig &config);
  void loop() { web.handleClient(); }

private:
  ESP8266WebServer web;
};


#endif // BLINKENHAT_WEBSERVER_H
