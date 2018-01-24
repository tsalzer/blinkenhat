//
// Created by jan on 24.01.18.
//

#ifndef BLINKENHAT_CONFIG_H
#define BLINKENHAT_CONFIG_H

#include <WString.h>
#include <ArduinoJson.h>


class ConfigWrapper {

public:
    ConfigWrapper(const JsonObject &cfg) : cfg(cfg) {}

    template<typename Tkey, typename Tvalue>
    Tvalue getOption(const Tkey &key, const Tvalue &dflt) const {
        if (cfg.containsKey(key)) {
            return cfg.get<Tvalue>(key);
        }
        return dflt;
    }

private:
    const JsonObject &cfg;
};

class Config {
public:
    Config(const String default_cfg) : buff(), root(nullptr) {
        load(default_cfg);
    }

    void load(const String &json);

    ConfigWrapper effectConfig(const String &effect) const {
        return ConfigWrapper(root->get<JsonObject &>("effects")
			.get<JsonObject &>(effect));
    }

private:
    DynamicJsonBuffer buff;
    JsonObject *root;
};

#endif //BLINKENHAT_CONFIG_H
