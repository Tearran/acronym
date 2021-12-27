
#include <Wire.h>
#include <SparkFun_GridEYE_Arduino_Library.h>
#include <ssd1306.h>
#include <ssd1306_console.h>

// Use these values (in degrees C) to adjust the contrast

int pixelTable[64];
GridEYE grideye;

#define Serial console //display on ssd1306 , comment // to display on serial
Ssd1306Console console;

void setup() {

  // Serial.begin(115200); // uncomment to display on serial
  grideye.begin();
  ssd1306_128x64_i2c_init();
  ssd1306_clearScreen();
  ssd1306_setFixedFont(ssd1306xled_font6x8);
  ssd1306_printFixed(0, 8 - 1, "Project:", STYLE_NORMAL);
  ssd1306_printFixed(0, 16 - 1, "A.C.R.O.N.Y.M", STYLE_NORMAL);
  ssd1306_printFixed(0, 32 - 1, "Arduino IDE", STYLE_NORMAL);
  ssd1306_printFixed(0, 64 - 1, "github.com/Tearran",     STYLE_NORMAL);
  delay(5000);
  ssd1306_clearScreen();
  ssd1306_printFixed (0,  8, "Go Check out", STYLE_NORMAL );
  ssd1306_printFixedN(0, 16, "piCorderOS", STYLE_ITALIC, FONT_SIZE_2X);
  ssd1306_printFixed (0, 63, "github.com/directive0", STYLE_NORMAL );
  playFanfair();
  delay(5000);
  ssd1306_clearScreen();
  ssd1306_printFixed (0,  8 - 1,  "AMG8833 + SSD1306", STYLE_NORMAL );
  ssd1306_printFixed (0, 24 - 1,  "monochrome test", STYLE_NORMAL );
  ssd1306_printFixed (0, 32 - 1,  "AMG8833 is not accurate ", STYLE_NORMAL );
  ssd1306_printFixed (0, 40 - 1,  "so we will use HI LOW ", STYLE_NORMAL );
  ssd1306_printFixed (0, 52 - 1,  "Symbols: low to high", STYLE_NORMAL );
  ssd1306_printFixed (0, 64 - 1,  "Symbols:  . o 0 O ", STYLE_NORMAL );
  delay(5000);
  ssd1306_fillScreen(0x00);
  Serial.print(" ");
}

void loop() {
  amg88xx();
}
