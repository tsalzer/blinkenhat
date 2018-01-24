#pragma once
#include "Effect.hpp"

class EDot : public Effect {
public:
  EDot() : width(0), start_time(0), duration(0) {}

  void update(LEDBand &band, unsigned long time) override;
  void restart() override {
    start_time = millis();
  }
  void config(const ConfigWrapper &cfg) override;

private:
  int width;
  unsigned long start_time;
  unsigned int duration;
  unsigned int color_duration;
};
