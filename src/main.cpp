#include <Arduino.h>

#include "default.h"
#include "Config.h"
#include "LEDBand.hpp"
#include "ERainbow.hpp"
#include "EDot.hpp"

#define LED_NUM 72
#define BRIGHTNESS 56
#define FRAMERATE 29


Config cfg(DEFAULT_CONFIG);
LEDBand *band;
EDot *l;
ERainbow *r;

Effect* current_effect;

void setup() {
    Serial.begin(115200);
    Serial.println("setup");
    Serial.println(int(Channel::A));
    band = new LEDBand(Channel::A, LED_NUM, FRAMERATE);
    r = new ERainbow();
    l = new EDot();

    setupLEDs(BRIGHTNESS);

    l->config(cfg.effectConfig(F("dot")));
    r->config(cfg.effectConfig(F("rainbow")));

    current_effect = l;
}

void loop() {
    unsigned long loop_time = millis();
    band->blankLeds();
    current_effect->update(*band, loop_time);
    band->update();
}
