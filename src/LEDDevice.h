//
// Created by jan on 26.01.18.
//

#ifndef BLINKENHAT_LEDDEVICE_H
#define BLINKENHAT_LEDDEVICE_H

#include "LEDBand.h"
#include "EffectStack.h"
#include "Config.h"
class LEDDevice {
public:
  LEDDevice();

  void setup();
  void configure(const Config &cfg);

  void loop(unsigned long time);

private:
  void recreateChannel(const Channel &channel, const Config::ChannelCfg &ccfg);

  uint8_t brightness;
  unsigned int frame_time;

  unsigned long last_update;

  LEDBand *bands[2];
  EffectStack effects[2];
};

#endif //BLINKENHAT_LEDDEVICE_H
