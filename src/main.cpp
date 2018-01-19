#include <Arduino.h>
#include "LEDBand.hpp"
#include "ERainbow.hpp"
#include "EDot.hpp"

#define LED_NUM 72
#define BRIGHTNESS 25
#define FRAMERATE 100

LEDBand band (LED_NUM, BRIGHTNESS, FRAMERATE);
EDot l(band);
ERainbow r(band);

void setup() {
  Serial.begin(115200);
  Serial.println("setup");
  l.config(2, CRGB::Purple);
  r.config(5);
}

void loop() {
  r.update();
  //l.update();
}
