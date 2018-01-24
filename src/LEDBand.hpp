#pragma once

#define FASTLED_ESP8266_D1_PIN_ORDER
#define FASTLED_ALLOW_INTERRUPTS 0

#include <FastLED.h>

enum class Channel {
  A = 0,
  B = 1
};

class LEDBand {
public:
  LEDBand(const Channel channel, const uint8_t numLEDs, const uint8_t framerate);

  void update();

  uint8_t getLEDCount(void) const { return numLEDs; }

  CRGBSet all_leds() { return leds; }
  CRGBSet upper_leds() { return leds(0, (numLEDs / 2) - 1); }
  CRGBSet lower_leds() { return CRGBSet(leds.leds, numLEDs - 1, (numLEDs / 2)); }


private:
  CRGBSet leds;
  uint8_t numLEDs;

  unsigned int wait;
  unsigned long last_update;
};

void setupLEDs(uint8_t brightness);