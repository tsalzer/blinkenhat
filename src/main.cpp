#include <Arduino.h>

#include <Config.h>
#include <LEDDevice.h>

#include "default.h"


Config cfg;
LEDDevice device;


void setup() {
  Serial.begin(115200);
  Serial.println("setup");
  Serial.println(int(Channel::A));

  cfg.load();
  device.setup();
  device.configure(cfg);
}

void loop() {
  unsigned long loop_time = millis();
  device.loop(loop_time);
}
