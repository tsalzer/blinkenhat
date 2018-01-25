//
// Created by jan on 25.01.18.
//

#include "EffectStack.h"

#include "ERainbow.h"
#include "EDot.h"

Effect *EffectStack::createEffect(const Config::EffectCfg &cfg) {
  Serial.println(cfg.type());

  if (cfg.type()==F("rainbow")) {
    Effect *fx = new ERainbow();
    fx->config(cfg.cfg());
    return fx;
  }
  if (cfg.type()==F("dot")) {
    Effect *fx = new EDot();
    fx->config(cfg.cfg());
    return fx;
  }
  return nullptr;
}

void EffectStack::configure(const Config::ChannelCfg &cfg) {
  for (auto item : effects) {
    delete item;
  }
  effects.clear();

  cfg.for_each_fx([&](const Config::EffectCfg &fx_cfg) {
    Effect *fx = createEffect(fx_cfg);
    if (fx) {
      effects.emplace_front(fx);
    }
  });
}
