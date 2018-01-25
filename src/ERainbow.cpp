#include "ERainbow.hpp"

void
ERainbow::update(LEDBand &band, unsigned long time) {
  uint8_t hue = uint8_t(255.0f * (float((time - start_time) % duration) / duration));

  if (apply_to & 0x01)
    band.upperLeds().fill_rainbow(hue);
  if (apply_to & 0x02)
    band.lowerLeds().fill_rainbow(255 - hue);
}
