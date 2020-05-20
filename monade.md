# Monade

https://de.wikipedia.org/wiki/Heinrich_Kleisli

https://de.wikipedia.org/wiki/Monade_(Kategorientheorie)#Anwendung

http://userpage.fu-berlin.de/~ram/pub/pub_jf47ht81Ht/monaden

Eine Monade `;` ist eine Abbildung `;` mit der zu einer Operation `O1` und einer Operation `O2` die Hintereinanderausführung dieser beiden Operationen als die Operation `O1 ; O2` geschrieben werden kann.

```
       O1 ; O2   |
     .-----------|-----------.
     |           V           |
     | .-------------------. |
     | |        O1         | |
     | '-------------------' |
     |           |           |
     |           V           |
     | .-------------------. |
     | |        O2         | |
     | '-------------------' |
     '-----------|-----------'
                 V
```

Die Abbildung `;` zum Verbinden zweier Operationen wird auch mit dem Namen `bind` bezeichnet.
