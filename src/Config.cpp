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
