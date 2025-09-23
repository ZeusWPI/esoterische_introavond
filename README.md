Esoterische codenight 11/09
===

# Esoterische & Frustrerende programmeertalenavond
Oplossingen voor de Esoterische Introavond (event 2024)

Stel, je naam is fred en je lost de eerste challenge op in BrainFuck, dan kan je een PR maken die een file `<jaar>/1/fred.bf` heet waarin je oplossing zit.

# Challenges

## Beginners

### 1. Print 'Zeus is de max!'

```
Zeus is de max!
```

### 2. Print 'Zeus' in een loop

```
Zeus
Zeus
Zeus
Zeus
...
```

### 3. Neem een string als input en verander elke hoofdletter naar een kleine letter en vice versa (de input bestaat alleen uit letters dus [A-Za-z])

```
(in) ZeusWPI
(out) zEUSwpi
```

```
(in) WiNA
(out) wIna
```
### 4. Neem 2 getallen en tel ze op
```
(in) 1 2
(out) 3
```

### 5. Encrypt/decrypt text adhv [ROT13](https://en.wikipedia.org/wiki/ROT13)
```
(in) Zeus WPI
(out) Mrhf JCV
```

```
(in) Mrhf JCV
(out) Zeus WPI
```

### 6. Vervang elk voorkomen van WiNa in een tekst door ZeusWPI
```
(in) WiNa organiseert leuke activiteiten
(out) ZeusWPI organiseert leuke activiteiten
```

### 7. Check of een woord een palindroom is (negeer spaties)

```
(in) legovogel
(out) OK

(in) ZeusWPI
(out) NEE

(in) Step on no pets
(out) OK
```

### 10. Geef voor een string de brainfuck code die deze string print
```
(in) Hi
(out)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
```

### 11. Implementeer het `head` unix commando
Dit programma print de eerste 10 lijnen van de input

```
(in)
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
(out)
1
2
3
4
5
6
7
8
9
10
```

## Mediocre

### 12. Gok het juiste getal tussen 1 en 100

```
(in) 50
(out) lower

(in) 25
(out) higher

(in) 37
(out) Correct
```

### 12. Fizzbuzz! Print alle getallen van 1 - 100. Is het deelbaar door 3 print Fizz, deelbaar door 5 Buzz en deelbaar door beiden Fizzbuzz

```
1
2
Fizz
4
Buzz
...
```

### 13. Sorteer een lijst
Sorteer een lijst met een algorithme naar keuze
```
(in)
K
O
I
H
D
M
E
C
N
J
G
L
A
B
F
(out)
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
```


### 14. Blad steen schaar bot
|        | n |
| ------ | - |
| blad   | 1 |
| steen  | 2 |
| schaar | 3 |

Tip: geef in het begin van het programma een seed mee als random source

### 15. Bereken de grootste gemene deler van 2 getallen

```
(in) 8 12
(out) 4
```


## Advanced

### 16. Schrijf of een programma of de haakjes in string gebalanceerd zijn, return 0 als alles klopt anders 1
gebalanceerd: `(a[bc])`
ongebalanceerd:`(a[)bc]`

```
(in) (a[bc])
(out) 0
```

```
(in) (a[)bc]
(out) 1
```

### 17. Schrijf een tic-tac-toe spel
### 18. Base64 encoder
```
(in) Zeus WPI
(out) WmV1cyBXUEk=
```

### 19. Maak een brainfuck-interpreter in een andere esoterische taal
### 20. Polygolot
Kies 2 esotherische talen naar keuze en 2 challenges naar keuze.
Schrijf een programma dat geldig is in beide talen en ook beide challenges correct uitvoert.


# Talen

* [Brainfuck](https://esolangs.org/wiki/Brainfuck) (+++)
  - online: https://copy.sh/brainfuck/
  - online: https://www.nayuki.io/page/brainfuck-interpreter-javascript
  - compile: https://github.com/FKD13/brainfuck-transpiler
* [Whitespace](https://esolangs.org/wiki/Whitespace) (+++++)
  - online: https://naokikp.github.io/wsi/whitespace.html
  - online: https://www.jdoodle.com/execute-whitespace-online
* [Maze](https://esolangs.org/wiki/Maze) (++)
  - interpreter (niet online, wel amazing): https://github.com/olls/maze-interpreter-v2
* [Shakespeare](https://esolangs.org/wiki/Shakespeare) (++)
  - https://tio.run/#spl
* [Rockstar](https://esolangs.org/wiki/Rockstar) (++)
  - https://github.com/dylanbeattie/rockstar?tab=readme-ov-file#implementations
  - online: https://codewithrockstar.com/online
* [Javagony](https://esolangs.org/wiki/Javagony) (+) (Java, maar met gelimiteerde control-flow, is geldige standaard java code)
* [Piet](https://esolangs.org/wiki/Piet) (+++++)

<details>
  <summary>Vorige talen</summary>
    
  * RCPU (++), maar kinda lastig om op te zetten (git en Python moeten geinstalleerd zijn, niet getest op Windows) (zie https://github.com/redfast00/RCPU)
    - compile Brainfuck naar RCPU: https://github.com/redfast00/rcpu_compiler
  * Stutter (+++, geen idee of het werkt, https://github.com/redfast00/stutter))
  * Sd (moeilijker dan brainfuck)
    - Sd: (niet online): https://gist.github.com/urbanangel/7cd8ed849e6faa4e53434b384c4a09a8
  * JSFuck (++++)
  * Befunge (++++)
  * Argh! (+++)
  * Functio (+++)


## Hoe dingen uitvoeren

- Sd: (niet online): https://gist.github.com/urbanangel/7cd8ed849e6faa4e53434b384c4a09a8
- Brainfuck:
  - online: https://www.nayuki.io/page/brainfuck-interpreter-javascript
  - online: https://copy.sh/brainfuck/
-

## Hoe dingen uitvoeren -- oud

- JSFuck: (moet je de javascript nog wel zelf runnen :) ): http://codertab.com/JsUnFuck
- RCPU: roep heel luid "JASPER WTF IS DIT"
- Rockstar: 
- Stutter: roep heel luid "JASPER DIT IS SHIT"
- Befunge: http://www.quirkster.com/iano/js/befunge.html
- Argh! http://argh.sha-bang.de/
</details>

Kijk ook eens op [esolangs](https://esolangs.org/wiki/Language_list) of [tio.run](https://tio.run) voor andere talen.
