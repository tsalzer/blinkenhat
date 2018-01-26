#pragma once
#include "Effect.h"

class ERainbow : public Effect {
public:
  ERainbow() : speed(1), apply_to(3), value(255) {}

  void update(LEDBand &band, unsigned long time) override;

  void restart() override;

  void config(const ConfigWrapper &cfg) override;

private:
  int speed;
  uint8_t apply_to;
  uint8_t value;
  unsigned long start_time;
};
