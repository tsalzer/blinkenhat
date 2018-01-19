#pragma once
#include "LEDBand.hpp"

class Effect
{
public:
  Effect(LEDBand &band) : band(band) {}

  virtual void update()  = 0;
  virtual void config(int i)  = 0;

protected:
  LEDBand &band;
};
