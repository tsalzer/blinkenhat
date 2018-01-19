#pragma once
#include "Effect.hpp"

class EDot : public Effect
{
public:
  EDot(LEDBand &band) : Effect(band), width(0), pos(0), color(CRGB::White) {}

  void update() override;
  void config(int size) override;

  // REMOVE ME
  void config(int size, CRGB color);

private:
  int width;
  int pos;
  CRGB color;
};
