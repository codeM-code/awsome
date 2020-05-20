# Monade


- [An Intuitive Introduction to Monads in Under 10 Minutes](https://youtu.be/Nq-q2USYetQ)

APa: Hattest Du Spass an Algebra?
     Kannst Du mir z. B. aus dem Stand sagen, was 'ne abelsche Gruppe ist?
TODO: Tom:


- [Heinrich_Kleisli](https://de.wikipedia.org/wiki/Heinrich_Kleisli/)

- https://de.wikipedia.org/wiki/Monade_(Kategorientheorie)#Anwendung

---

- [Lektion zu Monaden](http://www.purl.org/stefan_ram/pub/monaden) => [hierhin](http://userpage.fu-berlin.de/~ram/pub/pub_jf47ht81Ht/monaden)

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
