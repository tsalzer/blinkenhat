//
// Created by jan on 24.01.18.
//

#ifndef BLINKENHAT_CONFIG_H
#define BLINKENHAT_CONFIG_H

#include <functional>

#include <WString.h>
#include <ArduinoJson.h>

enum class Channel {
  A = 0,
  B = 1
};

inline void forEachChannel(const std::function<void(const Channel &channel)> &cb) {
  cb(Channel::A);
  cb(Channel::B);
}


class ConfigWrapper {

public:
  ConfigWrapper(const JsonObject *cfg) : cfg(cfg) {}

  template<typename Tkey, typename Tvalue>
  Tvalue getOption(const Tkey &key, const Tvalue &dflt) const {
    if (cfg->containsKey(key)) {
      return cfg->get<Tvalue>(key);
    }
    return dflt;
  }

  virtual ~ConfigWrapper() = default;

protected:
  const JsonObject *cfg;
};

class Config {
public:

  class EffectCfg : ConfigWrapper {
  public:
    EffectCfg(JsonObject &root) : ConfigWrapper(&root) {}
    String type() const;
    ConfigWrapper config() const;
  };

  class ChannelCfg : public ConfigWrapper {
  public:
    ChannelCfg(JsonObject &root) : ConfigWrapper(&root) {}
    ConfigWrapper for_each_fx(const std::function<void(const EffectCfg &)> &cb) const;
  };

  Config(const String &default_cfg) : buff(), root(nullptr) {
    load(default_cfg);
  }

  void load(const String &json);

  ConfigWrapper device() const { return ConfigWrapper(root); }

  ChannelCfg channel(const Channel &channel) const;
private:
  DynamicJsonBuffer buff;
  JsonObject *root;
};

#endif //BLINKENHAT_CONFIG_H
