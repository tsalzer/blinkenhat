//
// Created by jan on 24.01.18.
//

#include <FS.h>

#include "Config.h"
#include "default.h"


const char PROGMEM FILENAME[] = "/config.json";


void Config::load() {
  buff.clear();
  root = nullptr;

  if (SPIFFS.exists(FPSTR(FILENAME))) {
    File file = SPIFFS.open(FILENAME, "r");
    if (file) {
      JsonObject &parsed = buff.parseObject(file);
      if (parsed.success()) {
        root = &parsed;
      }
    }
  }

  if (! root) {
    JsonObject &parsed = buff.parse(F(DEFAULT_CONFIG));

    if (parsed.success()) {
      root = &parsed;
    }
  }
}

void Config::saveNewConfig(const String &new_config) const {
  File file = SPIFFS.open(FILENAME, "w");
  if (file) {
    root->printTo(file);
    file.close();
  }
}

void Config::removeConfig() const {
  if (SPIFFS.exists(FPSTR(FILENAME))) {
    SPIFFS.remove(FILENAME);
  }
}

String Config::currentConfig() const {
  String output;
  root->printTo(output);
  return output;
}


Config::ChannelCfg Config::channel (const Channel &channel) const {
  return ChannelCfg(root->get<JsonObject &>(F("channels"))
                        .get<JsonObject &>(
                            (channel==Channel::A ? F("A") : F("B"))));
}

String Config::EffectCfg::type() const {
  return cfg->get<String>(F("typ"));
}

ConfigWrapper Config::EffectCfg::config() const {
  return ConfigWrapper(&(cfg->get<JsonObject &>(F("cfg"))));
}

ConfigWrapper Config::ChannelCfg::for_each_fx(const std::function<void(const Config::EffectCfg &)> &cb) const {
  for (auto fx: cfg->get<JsonArray &>(F("effects"))) {
    cb(EffectCfg(fx.as<JsonObject &>()));
  }
}
