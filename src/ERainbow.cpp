#include "ERainbow.hpp"

void
ERainbow :: update()
{
  band.leds.fill_rainbow(hue+=speed);
  band.update();
}
