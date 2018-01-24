#include "EDot.hpp"

void EDot::update(LEDBand &band, unsigned long time) {
    uint8_t hue = uint8_t(255.0f * float((time - start_time) % color_duration) / color_duration);

    int max = band.getLEDCount() / 2;

    unsigned int elapsed = (time - start_time) % duration;
    float center = (float(elapsed) / float(duration)) * max;
    int head = int8_t(ceilf(center));
    int tail = int8_t(floorf(center)) - width;

    band.all_leds() = CRGB::Black;

    unsigned int off = 0;
    do {
        unsigned int pos = (tail + max + off++) % max;
        float coeff = 1.0f - (fabsf(center - pos) / width);
        CHSV color = CHSV(hue, 255, uint8_t(255 * coeff));
        band.upper_leds()[pos] = color;
        band.lower_leds()[pos] = color;
    } while (tail + off != head);
}


void EDot::config(const ConfigWrapper &cfg) {
    width = cfg.getOption(F("len"), 10);
    duration = cfg.getOption(F("speed"), 10U);
    color_duration = cfg.getOption(F("color_speed"), 15U);
    restart();
}
