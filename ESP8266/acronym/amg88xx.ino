#define HOT 40    // viewed as "O"
#define COLD 20   // viewed as "."

#define Serial console //display on ssd1306 , comment // to display on serial
void amg88xx() {
  //without delay let other things happen while this is waiting
  unsigned long previousMillis = 0;
  const long interval = 200;            
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;    
    for (unsigned char i = 0; i < 64; i++) {pixelTable[i] = map(grideye.getPixelTemperature(i), COLD, HOT, 0, 3);}// Temprature MAP
  }
  for (unsigned char i = 0; i < 64; i++) {
    if      (pixelTable[i] == 0) {Serial.print("."); }
    else if (pixelTable[i] == 1) {Serial.print("o"); } //med-low
    else if (pixelTable[i] == 2) {Serial.print("0"); } //med-hi
    else if (pixelTable[i] == 3) {Serial.print("O"); }
    Serial.print(" ");
    if ((i + 1) % 8 == 0) {Serial.print("\n"); }
  }
}
