#include "LEDBand.h"

static const uint8_t maxLEDs = 100;
static CRGBArray<maxLEDs * 2> led_arr;

LEDBand::LEDBand(const Channel channel, const uint8_t numLEDs, const uint8_t framerate)
    : leds(led_arr((int(channel) * maxLEDs), ((int(channel) * maxLEDs) + numLEDs - 1))),
      numLEDs(numLEDs),
      wait(1000 / framerate)
{
  last_update = millis();
}

void LEDBand::update() {
  unsigned long elapsed = millis() - last_update;

  if (1.0f != gamma) {
    allLeds().napplyGamma_video(gamma);
  }

  if (elapsed < wait) {
//    delay(wait - elapsed);
    FastLED.delay(wait - elapsed);
  } else {
    // we can't guarantee the framerate
    FastLED.show();
  }
  last_update = millis();

  // take the new time after update to get rid of the processing time of show()
}

void LEDBand::config(const Config::ChannelCfg &cfg) {
  gamma = cfg.getOption("gamma", 1.0f);
}

void setupLEDs(uint8_t brightness) {
  // tell FastLED about the LED strip configuration
  FastLED.addLeds<WS2811_PORTA, 2>(led_arr, maxLEDs)
      .setCorrection(TypicalLEDStrip);

  // set master brightness control
  FastLED.setBrightness(brightness);

  // We do not use dithering for now.
  FastLED.setDither(1);
}