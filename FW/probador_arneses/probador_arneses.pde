/*
22 J9-16 7 T3CK/AC2TX/RC2 
23 J9-15 8 T4CK/AC2RX/RC3
28 J9-10 1 AERXERR/RG15 
29 J9-09 11 ECRX/SDA2/SDI2A/U2ARX/PMA4/CN9/RG7
31 J9-07 4 PMD6/RE6 
32 J9-06 3 PMD5/RE5 
33 J9-05 100 PMD4/RE4 
34 J9-04 99 PMD3/RE3 
35 J9-03 98 PMD2/RE2 
36 J9-02 94 PMD1/RE1
50 J8-04 11 ECRX/SDA2/SDI2A/U2ARX/PMA4/CN9/RG7 Also JP3,JP4 
51 J8-03 12 ERXDV/AERXDV/ECRSDV/AECRSDV/SCL2A/SDO2A/U2ATX/PMA3/CN10/RG8 Also JP3,JP4 
52 J8-02 10 ECOL/SCK2A/U2BTX/U2ARTS/PMA5/CN8/RG6 Also J13-03 
53 J8-01 14 ERXCLK/AERXCLK/EREFCLK/AEREFCLK/SS2A/U2BRX/U2ACTS/PMA2/CN11/RG9 Also J13-05 
54 J5-01 25 PGED1/AN0/CN2/RB0 Also A0 
55 J5-02 24 PGEC1/AN1/CN3/RB1 Also A1 
56 J5-03 23 AN2/C2IN-/CN4/RB2 Also A2 
57 J5-04 22 AN3/C2IN+/CN5/RB3 Also A3 
58 J5-05 21 AN4/C1IN-/CN6/RB4 Also A4 
59 J5-06 20 AN5/C1IN+/VBUSON/CN7/RB5 Also A5 
60 J5-7 26 PGEC2/AN6/OCFA/RB6 Also A6 
61 J5-8 27 PGED2/AN7/RB7 Also A7 
68 J7-07 43 AN14/ERXD2/AETXD3/PMALH/PMA1/RB14 Also A14 
69 J7-08 44 AN15/ERXD3/AETXD2/OCFB/PMALL/PMA0/CN12/RB15 Also A15 

30, 31, 32, 33, 34, 35, 36, 37
IN2,IN1,IN4,IN3,IN6,IN5,IN8,IN7

22,    23
OE_1D_in, OE_1C_in //inputs

28,    29
OE_1A_in, OE_1B_in //inputs

54/A0,55/A1,56/A2,57/A3,58/A4,59/A5,60/A6,61/A7
OUT 1,OUT 2,OUT 3,OUT 4,OUT 5,OUT 6,OUT 7,OUT 8

68/A14,69/A15
LED G , LED R

50,   51,   52,   53
OE1_B,OE1_A,OE1_D,OE1_C //outPUTS
*/
//Constantes
const int input1 = 31;  //INPUTS BUS
const int input2 = 30;
const int input3 = 33;
const int input4 = 32;
const int input5 = 35;
const int input6 = 34;
const int input7 = 37;
const int input8 = 36;

const int oe1a_i = 28;  //INPUTS CONTROL
const int oe1b_i = 29;
const int oe1c_i = 23;
const int oe1d_i = 22;

const int in_p [32] = {input1, input2, input3, input4, input5, input6, input7, input8, input1, input2, input3, input4, input5, input6, input7, input8, input1, input2, input3, input4, input5, input6, input7, input8, input1, input2, input3, input4, input5, input6, input7, input8};
const int in_c [32] = {oe1a_i, oe1a_i, oe1a_i, oe1a_i, oe1a_i, oe1a_i, oe1a_i, oe1a_i, oe1b_i, oe1b_i, oe1b_i, oe1b_i, oe1b_i, oe1b_i, oe1b_i, oe1b_i, oe1c_i, oe1c_i, oe1c_i, oe1c_i, oe1c_i, oe1c_i, oe1c_i, oe1c_i, oe1d_i, oe1d_i, oe1d_i, oe1d_i, oe1d_i, oe1d_i, oe1d_i, oe1d_i};

const int out1 = 54;  //OUTPUTS BUS
const int out2 = 55;
const int out3 = 56;
const int out4 = 57;
const int out5 = 58;
const int out6 = 59;
const int out7 = 60;
const int out8 = 61;

const int oe1a = 51;  //OUTPUTS CONTROL
const int oe1b = 68;
const int oe1c = 53;
const int oe1d = 52;

const int out_p [32] = {out6, out5, out4, out3, out2, out1, out4, out3, out2, out1, out8, out7, out2, out1, out8, out7, out6, out5, out8, out7, out6, out5, out4, out3, out6, out5, out4, out3, out2, out1, out8, out7};
const int out_c [32] = {oe1a, oe1a, oe1a, oe1a, oe1a, oe1a, oe1b, oe1b, oe1b, oe1b, oe1a, oe1a, oe1c, oe1c, oe1b, oe1b, oe1b, oe1b, oe1c, oe1c, oe1c, oe1c, oe1c, oe1c, oe1d, oe1d, oe1d, oe1d, oe1d, oe1d, oe1d, oe1d};

//const int led_g = 68;  //LEDS -> oe1b
const int led_e = 69;

//unsigned int outputs = 4294967296;

void setup() {
  pinMode(input1, INPUT);  //INPUTS BUS
  pinMode(input2, INPUT);
  pinMode(input3, INPUT);
  pinMode(input4, INPUT);
  pinMode(input5, INPUT);
  pinMode(input6, INPUT);
  pinMode(input7, INPUT);
  pinMode(input8, INPUT);
  
  pinMode(oe1a_i, OUTPUT);//INPUTS CONTROL
  pinMode(oe1b_i, OUTPUT);
  pinMode(oe1c_i, OUTPUT);
  pinMode(oe1d_i, OUTPUT);
  
  pinMode(out1, OUTPUT);  //OUTPUTS BUS
  pinMode(out2, OUTPUT);
  pinMode(out3, OUTPUT);
  pinMode(out4, OUTPUT);
  pinMode(out5, OUTPUT);
  pinMode(out6, OUTPUT);
  pinMode(out7, OUTPUT);
  pinMode(out8, OUTPUT);
  
  pinMode(oe1a, OUTPUT);  //OUTPUTS CONTROL
  pinMode(oe1b, OUTPUT);
  pinMode(oe1c, OUTPUT);
  pinMode(oe1d, OUTPUT);
  
  //pinMode(led_g, OUTPUT);  //LEDS
  pinMode(led_e, OUTPUT);
  
  digitalWrite(out1, LOW);
  digitalWrite(out2, LOW);
  digitalWrite(out3, LOW);
  digitalWrite(out4, LOW);
  digitalWrite(out5, LOW);
  digitalWrite(out6, LOW);
  digitalWrite(out7, LOW);
  digitalWrite(out8, LOW);
  
  digitalWrite(oe1a, LOW);
  digitalWrite(oe1b, LOW);
  digitalWrite(oe1c, LOW);
  digitalWrite(oe1d, LOW);
  
  digitalWrite(oe1a_i, HIGH);//Z
  digitalWrite(oe1b_i, HIGH);//Z
  digitalWrite(oe1c_i, HIGH);//Z
  digitalWrite(oe1d_i, HIGH);//Z
  
  Serial.begin(57600);  //SERIAL
  Serial.print("/");
}

void loop(){
  int  found_n=0;
  byte found [33];//max found = 32
  
  if(Serial.available()){ // FW: pin 0:31 SW: pin 1:32
    output_high(Serial.read()-1);
    for(int pin=0; pin<=31; pin++){
      if(input(pin)){
        found[found_n+1]=pin+1;
        found_n++;
      }
      if(pin==31){
        found[0]=found_n;
        Serial.write(found,found_n+1);
      }
    }
  }
}

void output_high(int pin){
  digitalWrite(out1, LOW);
  digitalWrite(out2, LOW);
  digitalWrite(out3, LOW);
  digitalWrite(out4, LOW);
  digitalWrite(out5, LOW);
  digitalWrite(out6, LOW);
  digitalWrite(out7, LOW);
  digitalWrite(out8, LOW);
  
  digitalWrite(oe1a, HIGH);//Z
  digitalWrite(oe1b, HIGH);//Z
  digitalWrite(oe1c, HIGH);//Z
  digitalWrite(oe1d, HIGH);//Z
  
  digitalWrite(out_p [pin], HIGH);
  digitalWrite(out_c [pin], LOW);
}

boolean input(int pin){
  digitalWrite(oe1a_i, HIGH);//Z
  digitalWrite(oe1b_i, HIGH);//Z
  digitalWrite(oe1c_i, HIGH);//Z
  digitalWrite(oe1d_i, HIGH);//Z
  digitalWrite(in_c [pin], LOW);
  delay(2);
  return digitalRead (in_p [pin]);
}


