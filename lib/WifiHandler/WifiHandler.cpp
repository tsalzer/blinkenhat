#include <ESP8266WiFi.h>

#include "WifiHandler.h"

const byte DNS_PORT = 53;

void WifiHandler::configure(const Config &cfg) {
  ConfigWrapper dcfg = cfg.device();

  sta_ssid = dcfg.getOption(F("sta_ssid"), String());
  sta_passwd = dcfg.getOption(F("sta_ssid"), String());

  ap_ssid = dcfg.getOption(F("ap_ssid"), String());
  ap_passwd = dcfg.getOption(F("ap_ssid"), String());

  timeout = dcfg.getOption(F("ap_timeout"), 0U);
}

bool WifiHandler::connect() {
  last_client = millis();

  if (sta_ssid.length() > 0 && sta_passwd.length() > 0) {
    WiFi.mode(WIFI_STA);
    WiFi.begin(sta_ssid.c_str(), sta_passwd.c_str());

    for (int i = 0; i < 5; ++i) {
      if (WiFi.status() == WL_CONNECTED) {
        return true;
      }
      delay(50);
    }
  }

  if (ap_ssid.length() > 0 && ap_passwd.length() > 0) {
    WiFi.mode(WIFI_AP_STA);

    WiFi.softAP((ap_ssid + String(ESP.getChipId(), HEX)).c_str(),
		ap_passwd.c_str());

    dnsServer.setErrorReplyCode(DNSReplyCode::NoError);
    dnsServer.start(DNS_PORT, "*", WiFi.softAPIP());

    return true;
  }

  return false;
}
