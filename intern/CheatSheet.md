# Cheatsheet für Asuro-Programmierung

    // definiere Funktion "vorbereiten"
    int vorbereiten(void)
    {
      return 42;
    }

    int main() // Startpunkt!
    {
      vorbereiten(); // rufe eine Funktion auf!
      Speed(120,120); // fahre los (auch eine Funktion!)

      unsigned char taster = 0;
      // jetzt kommt eine Schleife:
      do {
        taster = getTaster(); // frage nach Kollision
      } while (taster == 0); // wiederhole solange keine Kollision

      verarbeiteKollision(); // rufe Funktion auf!
    }

## Die Sprache C

Präcompiler-Instruktion: WORT wird vor dem Übersetzen durch seinen Wert ersetzt. Es wird keine Variable angelegt.

    #define SPEED 123
    #define LOWSPEED (0.5*SPEED)

Zahlen: Wählt `int` für große ganze Zahlen. `char` ist für kleine ganze Zahlen. `float` ist für Kommazahlen.

    int ganze_zahl = 1337
    float kommazahl = 3.14
    float ganze_kommazahl = 1337.0
    char kleinstes_char = -128
    char groesstes_char = 127
    char bitschreibweise = 0b10101010 // 8 bit, 1010 1010
    char hexschreibweise = 0xAA // ist gleich 1010 1010

Eine Variable soll/kann nur positiv sein? Damit kann man den Wertebereich verdoppeln!

    unsigned int = 99999999
    unsigned float = 99999999.0
    unsigned groesstes_unsigned_char = 255
    unsigned kleinstes_unsigned_char = 0

Achtung, wenn ihr über das Maximum hinaus zählt, zählt die Variable bei der kleinsten Zahl weiter!


# Die Asuro-Befehle

Motoren steuern:
- Speed
- Direction

Lichtsensor auslesen:

Odometrie:

Infrarot-Schnittstelle lesen/schreiben:

Interrupts:
