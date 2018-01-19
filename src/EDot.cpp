#include "EDot.hpp"

void
EDot :: update()
{
  int max = band.getLEDCount();
  if (pos == max) pos = 0;

  band.leds[pos++] = color;

  fadeToBlackBy( band.leds, max, width);

  //band.leds = CRGB::Black;
  /*
  if ((pos + width) >= max) {
    for(CRGB & pixel : band.leds(0,(pos-max)+width)) { pixel = color; }
  }
  for(CRGB & pixel : band.leds(pos,width+pos)) { pixel = color; }
  pos++;
  */
  band.update();
}

void
EDot::config(int size)
{
  width = 256/(size);
  band.setFramerate(25);
}

void
EDot::config(int size, CRGB _color)
{
  config(size);
  color=_color;
}
