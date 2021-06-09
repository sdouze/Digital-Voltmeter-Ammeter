include <Wire.h>
#include <Adafruit_ADS1015.h>

int r1 = 20065;
int r2 = 5030;
float supply;
Adafruit_ADS1115 ads;  /* Use this for the 16-bit version */

void setup(void)
{
  Serial.begin(9600);
  Serial.println("Hello!");

  Serial.println("Getting single-ended readings from AIN0..3");
  Serial.println("ADC Range: +/- 6.144V (1 bit = 3mV/ADS1015, 0.1875mV/ADS1115)");

  // ads.setGain(GAIN_TWOTHIRDS);  // 2/3x gain +/- 6.144V  1 bit = 3mV      0.1875mV (default)


  ads.begin();
}

void loop(void)
{
  float adc0, adc1;
  float Voltage;
  float currentmv;
  float SupplyAmp;

  float multiplier = 0.1875F; /* ADS1115  @ +/- 6.144V gain (16-bit results) */

  adc0 = ads.readADC_SingleEnded(0);
  Voltage = adc0 * multiplier;
  supply = (Voltage * (r1 + r2)) / r2;
  adc1 = ads.readADC_SingleEnded(1);
  currentmv = adc1 * multiplier;
  SupplyAmp = map(currentmv, 0, 880, 0, 4000);

  Serial.print("measure: ");
  Serial.print(adc0);
  Serial.print("(");
  Serial.print(Voltage);
  Serial.println("mV)");
  Serial.print(supply / 1000, 3);
  Serial.println("V");
  Serial.print(SupplyAmp);
  Serial.println("A");
  Serial.println('\n');

  delay(2000);
}
