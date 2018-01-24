#pragma once
#include "Effect.hpp"

class ERainbow : public Effect {
public:
  ERainbow() : speed(1) {}

  void update(LEDBand &band, unsigned long time) override;

  void restart() {
    start_time = millis();
  }

  void config(const ConfigWrapper &cfg) override {
    speed = cfg.getOption(F("speed"), 10);
    restart();
  }

private:
  int speed;
  unsigned long start_time;
  unsigned int duration;
};
