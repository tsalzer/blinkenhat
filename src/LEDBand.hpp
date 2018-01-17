#pragma once

#define FASTLED_ESP8266_D1_PIN_ORDER
#define FASTLED_ALLOW_INTERRUPTS 0

#include <FastLED.h>

template<uint8_t numLEDS> class LEDBand
{
public:
  LEDBand(const uint8_t brightness, const uint8_t framerate = 40);

  // default brightness 127; default framerate 40
  LEDBand();

  void update();

  void setBrightness(const uint8_t br);
  uint8_t getBrightness(void) const { return brightness; }

  void setFramerate(const uint8_t f);
  uint8_t getFramerate(void) const { return framerate; }

  uint8_t getLEDNumber(void) const { return numLEDS; }

  CRGBArray<numLEDS> leds;

private:
  uint8_t brightness;
  uint8_t framerate;
  unsigned long wait;
  unsigned long last_update;
};

// -------------------------------------------------------
template<uint8_t numLEDS>
LEDBand<numLEDS> :: LEDBand(const uint8_t brightness, const uint8_t framerate)
: brightness(brightness)
{
  setFramerate(framerate);

  // tell FastLED about the LED strip configuration
  FastLED.addLeds<WS2811_PORTA, 1>(leds, numLEDS)
      .setCorrection(TypicalLEDStrip);

  // set master brightness control
  FastLED.setBrightness(brightness);

  // We do not use dithering for now.
  FastLED.setDither(0);

  last_update = millis();
}

template<uint8_t numLEDS>
LEDBand<numLEDS> :: LEDBand()
: LEDBand(127) {}

template<uint8_t numLEDS>
void LEDBand<numLEDS> :: setBrightness(uint8_t br)
{
  brightness = br;
  FastLED.setBrightness(brightness);
}

template<uint8_t numLEDS>
void LEDBand<numLEDS> :: setFramerate(const uint8_t f)
{
  framerate = f;
  wait=1000/f;
}

template<uint8_t numLEDS>
void LEDBand<numLEDS> :: update()
{
  unsigned long elapsed = millis() - last_update;

  if (elapsed < wait) {
    delay(wait - elapsed);
  } else {
    // we can't guarantee the framerate
  }
  FastLED.show();

   // take the new time after update to get rid of the processing time of show()
  last_update = millis();
}
