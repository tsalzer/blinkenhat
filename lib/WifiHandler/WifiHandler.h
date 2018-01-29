#ifndef BLINKENHAT_WIFIHANDLER_H
#define BLINKENHAT_WIFIHANDLER_H

#include <Config.h>
#include <DNSServer.h>

class WifiHandler {
public:
  void configure(const Config &cfg);
  bool connect();
  void loop() {
    // .. disconnect after timeout
    // use softAPgetStationNum to check if clients connected.
  }

private:
  String sta_ssid;
  String sta_passwd;

  String ap_ssid;
  String ap_passwd;

  unsigned long timeout;
  unsigned long last_client;

  DNSServer dnsServer;
};

#endif // BLINKENHAT_WIFIHANDLER_H
