#pragma once

#define FASTLED_ESP8266_D1_PIN_ORDER
#define FASTLED_ALLOW_INTERRUPTS 0

#include <FastLED.h>

const uint8_t maxLEDs = 100;

class LEDBand
{
public:
  LEDBand(const int numLEDs, const uint8_t brightness, const uint8_t framerate);

  LEDBand(const int numLEDs, const uint8_t brightness = 127);

  // default brightness 127; default framerate 40
  LEDBand();

  void update();

  void setBrightness(const uint8_t br);
  uint8_t getBrightness(void) const { return brightness; }

  void setFramerate(const uint8_t f);
  uint8_t getFramerate(void) const { return framerate; }

  uint8_t getLEDCount(void) const { return numLEDs; }

  CRGBSet leds;

private:
  CRGB led_arr[maxLEDs];
  int numLEDs;

  uint8_t brightness;
  uint8_t framerate;
  unsigned long wait;
  unsigned long last_update;
};
