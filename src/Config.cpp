//
// Created by jan on 24.01.18.
//

#include "Config.h"

void Config::load(const String &json) {
  buff.clear();

  JsonObject &parsed = buff.parse(json);

  if (parsed.success()) {
    root = &parsed;
  }
}
Config::ChannelCfg Config::channel(const Channel &channel) {
  return ChannelCfg(root->get<JsonObject &>(F("channels"))
                        .get<JsonObject &>(
                            (channel==Channel::A ? F("A") : F("B"))));
}

String Config::EffectCfg::type() const { return fx_root->get<String>(F("typ")); }

ConfigWrapper Config::EffectCfg::cfg() const {
  return ConfigWrapper(fx_root->get<JsonObject &>(F("cfg")));
}

ConfigWrapper Config::ChannelCfg::for_each_fx(const std::function<void(const Config::EffectCfg &)> &cb) const {
  for (auto fx: channel_root->get<JsonArray &>(F("effects"))) {
    cb(EffectCfg(fx.as<JsonObject &>()));
  }
}
