//
// Created by jan on 25.01.18.
//

#ifndef BLINKENHAT_EFFECTSTACK_H
#define BLINKENHAT_EFFECTSTACK_H

#include <forward_list>
#include <LEDBand.h>

#include "Effect.h"

class EffectStack {
public:
  void configure(const Config::ChannelCfg &cfg);

  void loop(LEDBand &band, unsigned long time) {
    for (auto effect : effects) {
      effect->update(band, time);
    }
  }

private:
  Effect *createEffect(const Config::EffectCfg &cfg);

  std::forward_list<Effect *> effects;
};

#endif //BLINKENHAT_EFFECTSTACK_H
