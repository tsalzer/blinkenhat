#include "ERainbow.hpp"

void
ERainbow::update(LEDBand &band, unsigned long time) {
  uint8_t hue = uint8_t(255.0f * (float((time - start_time) % duration) / duration));

  band.upper_leds().fill_rainbow(hue);
  band.lower_leds().fill_rainbow(255 - hue);
}
