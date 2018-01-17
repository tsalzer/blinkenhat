#include <Arduino.h>
#include "LEDBand.hpp"

#define LEDS 72
#define BRIGHTNESS 27
#define FRAMERATE 100

LEDBand<LEDS> band (BRIGHTNESS, FRAMERATE);

void setup() {
}

void loop() {
  static uint8_t hue = 0;
  band.leds.fill_rainbow(hue++);

  band.update();
}
