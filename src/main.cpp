#include <Arduino.h>

#include "default.h"
#include "Config.h"
#include "LEDBand.h"
#include "EffectStack.h"

#define LED_NUM 72
#define BRIGHTNESS 56
#define FRAMERATE 29

Config cfg(DEFAULT_CONFIG);
LEDBand *band;

EffectStack effects;

void setup() {
  Serial.begin(115200);
  Serial.println("setup");
  Serial.println(int(Channel::A));

  effects.configure(cfg.channel(Channel::A));
  band = new LEDBand(Channel::A, LED_NUM, FRAMERATE);

  setupLEDs(BRIGHTNESS);
}

void loop() {
  unsigned long loop_time = millis();
  band->blankLeds();
  effects.loop(*band, loop_time);
  band->update();
}
