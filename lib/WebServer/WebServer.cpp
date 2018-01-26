
#include "WebServer.h"

const char PROGMEM TEXT_PLAIN[] = "text/plain";
const char PROGMEM APPLICATION_JSON[] = "application/json";

void WebServer::configure(Config &config) {

  /*
   * GET /
   */
  web.on(F("/"), HTTP_GET,
         [this]() { web.send(200, FPSTR(TEXT_PLAIN), F("Hello.")); });

  /*
   * GET /firmware
   */
  web.on(F("/firmware"), HTTP_GET, [this]() {
    web.send(200, FPSTR(APPLICATION_JSON), F("{\"version\": \"none\"}"));
  });

  /*
   * POST /firmware
   */
  web.on(
      F("/firmware"), HTTP_POST,
      [this]() {
        web.sendHeader(F("Connection"), F("close"));

        if (Update.hasError()) {
          web.send_P(
              200, TEXT_PLAIN,
              PSTR("Update failed. You may need to reflash the device."));
        } else {
          web.sendHeader(F("Refresh"), F("20; URL=/"));
          web.send_P(200, TEXT_PLAIN,
                        PSTR("Update successful.\n\nDevice will reboot and try "
                             "to reconnect in 20 seconds."));
        }
        delay(500);
        ESP.restart();
      },
      [this]() {
        HTTPUpload &upload = web.upload();
        if (upload.status == UPLOAD_FILE_START) {
          Serial.setDebugOutput(true);

          Serial.print(F("Update: "));
          Serial.println(upload.filename.c_str());
          uint32_t maxSketchSpace =
              (ESP.getFreeSketchSpace() - 0x1000) & 0xFFFFF000;
          if (!Update.begin(maxSketchSpace)) { // start with max available size
            Update.printError(Serial);
          }
        } else if (upload.status == UPLOAD_FILE_WRITE) {
          if (Update.write(upload.buf, upload.currentSize) !=
              upload.currentSize) {
            Update.printError(Serial);
          }
        } else if (upload.status == UPLOAD_FILE_END) {
          if (Update.end(
                  true)) { // true to set the size to the current progress
            Serial.print(F("Update Success: "));
            Serial.print(upload.totalSize);
            Serial.print(F("\nRebooting...\n"));
          } else {
            Update.printError(Serial);
          }
          Serial.setDebugOutput(false);
        }
        yield();
      });

  /*
   * GET /config
   */
  web.on(F("/config"), HTTP_GET, [&]() {
    config.saveNewConfig(web.arg("plain"));
    config.load();
    web.send(200, FPSTR(APPLICATION_JSON), config.currentConfig());
  });

  /*
   * POST /config
   */
  web.on(F("/config"), HTTP_POST,
         [this]() { web.send(200, FPSTR(APPLICATION_JSON), F("true")); });
}
