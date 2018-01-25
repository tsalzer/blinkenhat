#pragma once
#include "Effect.hpp"

class ERainbow : public Effect {
public:
  ERainbow() : speed(1), apply_to(3) {}

  void update(LEDBand &band, unsigned long time) override;

  void restart() {
    start_time = millis();
  }

  void config(const ConfigWrapper &cfg) override {
    speed = cfg.getOption(F("speed"), 10);
    apply_to = cfg.getOption(F("apply"), 3);
    restart();
  }

private:
  int speed;
  uint8_t apply_to;
  unsigned long start_time;
  unsigned int duration;
};
