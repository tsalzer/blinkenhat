#include "ERainbow.h"

void
ERainbow::update(LEDBand &band, unsigned long time) {
  uint8_t hue = uint8_t(255.0f * (float((time - start_time) % speed) / float(speed)));

  if (apply_to & 0x01)
    band.upperLeds().fill_rainbow(hue);
  if (apply_to & 0x02)
    band.lowerLeds().fill_rainbow(255 - hue);
}

void ERainbow::config(const ConfigWrapper &cfg) {
  speed = cfg.getOption(F("speed"), 10);
  apply_to = cfg.getOption(F("apply"), uint8_t(3));
  restart();
}
