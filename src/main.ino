#include "utils.h"

void setup () {
  pinMode(13, OUTPUT);
}

void loop () {
  digitalWrite(13, HIGH);
  delay500();
  digitalWrite(13, LOW);
  delay500();
}
