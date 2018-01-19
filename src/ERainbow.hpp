#pragma once
#include "Effect.hpp"

class ERainbow : public Effect
{
public:
  ERainbow(LEDBand &band) : hue(0), Effect(band), speed(1) {}

  void update() override;
  void config(int i) override { speed = i;}

private:
  uint8_t hue;
  int speed;
};
