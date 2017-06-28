#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

int ledPin = 6;

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_RGBW    Pixels are wired for RGBW bitstream (NeoPixel RGBW products)
Adafruit_NeoPixel strip = Adafruit_NeoPixel(5, ledPin, NEO_GRB + NEO_KHZ800);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

char loginNotes[] = "azbC"; // a space represents a rest
//gabygabyxzCDxzCDabywabywzCDEzCDEbywFCDEqywFGDEqi        
int loginLength = sizeof(loginNotes); // the number of notes
int loginBeats[] = {2,3,3,16};
//1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 
int loginTempo = 75;

char errNotes[] = "x x x x "; // a space represents a rest
//gabygabyxzCDxzCDabywabywzCDEzCDEbywFCDEqywFGDEqi        
int errLength = sizeof(errNotes); // the number of notes
int errBeats[] = {4,4,4,4, 4,4,4,4};
//1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1, 
int errTempo = 75;

int speakerPin = 9;
int message;

void setup() {
  Serial.begin(9600);
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
  pinMode(speakerPin, OUTPUT);
}

void loop() {
  if (Serial.available() > 0)
  {
    message = Serial.read();
    if (message == 'l')
    {
      colorWipe(strip.Color(0, 50, 0), 50, loginNotes, loginLength, loginBeats, loginTempo); // Green
    }
    if (message == 'e')
    {
      colorWipe(strip.Color(127, 0, 0), 50, errNotes, errLength, errBeats, errTempo); // Red
    }
  }
}

void colorWipe(uint32_t c, uint8_t wait, char notes[], int length, int beats[], int tempo) {
  for (int k = 0; k < length; k++) {
    if (notes[k] != ' ')
    {
      for(uint16_t i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, c);
      }
      strip.show();
      playNote(notes[k], beats[k] * tempo);
      delay(wait);
      for(uint16_t i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, 0, 0, 0);
      }
      strip.show();
      delay(wait);
    }
    else
    {
      delay(beats[k] * tempo);
    }
  }
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t Wheel(byte WheelPos) {
  WheelPos = 255 - WheelPos;
  if(WheelPos < 85) {
    return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3);
  }
  if(WheelPos < 170) {
    WheelPos -= 85;
    return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3);
  }
  WheelPos -= 170;
  return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0);
}

void playTone(int tone, int duration) {
  for (long i = 0; i < duration * 1000L; i += tone * 2) {
    digitalWrite(speakerPin, HIGH);
    delayMicroseconds(tone);
    digitalWrite(speakerPin, LOW);
    delayMicroseconds(tone);
  }
}

void playNote(char note, int duration) {
  char names[] = { 'c', 'd', 'e', 'f', 'g', 'x', 'a', 'z', 'b', 'C', 'y', 'D', 'w', 'E', 'F', 'q', 'G', 'i' };
  // c=C4, C = C5. These values have been tuned.
  int tones[] = { 1898, 1690, 1500, 1420, 1265, 1194, 1126, 1063, 1001, 947, 893, 843, 795, 749, 710, 668, 630, 594 };
   
  // play the tone corresponding to the note name
  for (int i = 0; i < 18; i++) {
    if (names[i] == note) {
      playTone(tones[i], duration);
    }
  }
}
