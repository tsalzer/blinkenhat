#include <Arduino.h>

#include <Config.h>
#include <LEDDevice.h>
#include <WifiHandler.h>


Config cfg;
WifiHandler wifihandler;
LEDDevice device;


void setup() {
  Serial.begin(115200);
  Serial.println("setup");
  Serial.println(int(Channel::A));

  cfg.load();

  wifihandler.configure(cfg);

  device.setup();
  device.configure(cfg);
}

void loop() {
  unsigned long loop_time = millis();
  device.loop(loop_time);
}
