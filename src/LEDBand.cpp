#include "LEDBand.hpp"

LEDBand :: LEDBand(const int numLEDs, const uint8_t brightness, const uint8_t framerate)
: leds(led_arr, numLEDs), numLEDs(numLEDs), brightness(brightness)
{
  setFramerate(framerate);

  // tell FastLED about the LED strip configuration
  FastLED.addLeds<WS2811_PORTA, 1>(leds, numLEDs)
      .setCorrection(TypicalLEDStrip);

  // set master brightness control
  FastLED.setBrightness(brightness);

  // We do not use dithering for now.
  FastLED.setDither(0);

  last_update = millis();
}

LEDBand :: LEDBand()
: LEDBand(127) {}

void LEDBand :: setBrightness(uint8_t br)
{
  brightness = br;
  FastLED.setBrightness(brightness);
}

void LEDBand :: setFramerate(const uint8_t f)
{
  framerate = f;
  wait=1000/f;
}

void LEDBand :: update()
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
