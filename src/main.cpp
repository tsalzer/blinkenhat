#include <Arduino.h>

#include "default.h"
#include "Config.h"
#include "LEDDevice.h"


Config cfg(DEFAULT_CONFIG);
LEDDevice device;


void setup() {
  Serial.begin(115200);
  Serial.println("setup");
  Serial.println(int(Channel::A));

  device.setup();
  device.configure(cfg);
}

void loop() {
  unsigned long loop_time = millis();
  device.loop(loop_time);
}
