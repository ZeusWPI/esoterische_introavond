
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

### 3. Neem een string als input en verander elke hoofdletter naar een kleine letter en vice versa

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

### 5. Reken uit hoeveel mg. caffeine er in _n_ flessen mate van 50cl zit
```
(in) 1
(out) 100
```

```
(in) 9
(out) 900
```

### 6. Print de eerste 10 priemgetallen

```
2
3
5
7
11
13
17
19
23
29
```

### 7. Vervang elk voorkomen van WiNa in een tekst door ZeusWPI
```
(in) WiNa organiseert leuke activiteiten
(out) ZeusWPI organiseert leuke activiteiten
```

### 8. Check of een woord een palindroom is (negeer spaties)

```
(in) legovogel
(out) OK

(in) ZeusWPI
(out) NEE

(in) Step on no pets
(out) OK
```

### 9. Tel 2 binaire getallen op

```
(in) 101 + 10
(out) 111
```

```
(in) 11010 + 10
(out) 11100
```

## Mediocre

### 10. Gok het juiste getal tussen 1 en 100

```
(in) 50
(out) lower

(in) 25
(out) higher

(in) 37
(out) Correct
```

### 11. Fizzbuzz! Print alle getallen van 1 - 100. Is het deelbaar door 3 print Fizz, deelbaar door 5 Buzz en deelbaar door beiden Fizzbuzz

```
1
2
Fizz
4
Buzz
...
```

## Advanced

### 12. Schrijf of een programma of de haakjes in string gebalanceerd zijn, return 0 als alles klopt anders 1
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

### 13. Maak een brainfuck-interpreter in een andere esoterische taal


# Talen

* Brainfuck (+++)
* Functio (+++)
* Whitespace (+++++)
* Maze (++)
* Shakespeare (++)
* Rockstar (++)
* BASIC (+)
* Javagony (+) (Java, maar met gelimiteerde control-flow, is geldige standaard java code)
* Piet (+++++)

<details>
  <summary>Previous Languages</summary>
    
  * RCPU (++), maar kinda lastig om op te zetten (git en Python moeten geinstalleerd zijn, niet getest op Windows) (zie https://github.com/redfast00/RCPU)
  * Stutter (+++, geen idee of het werkt, https://github.com/redfast00/stutter))
  * Sd (moeilijker dan brainfuck)
  * JSFuck (++++)
  * Befunge (++++)
  * Argh! (+++)
</details>

## Hoe dingen uitvoeren

- Brainfuck:
    - online: https://copy.sh/brainfuck/
    - compile: https://github.com/FKD13/brainfuck-transpiler
    - compile naar RCPU: https://github.com/redfast00/rcpu_compiler
- Sd: (niet online): https://gist.github.com/urbanangel/7cd8ed849e6faa4e53434b384c4a09a8
- Whitespace: https://www.jdoodle.com/execute-whitespace-online
- Maze: (niet online, wel amazing): https://github.com/olls/maze-interpreter-v2
- JSFuck: (moet je de javascript nog wel zelf runnen :) ): http://codertab.com/JsUnFuck
- RCPU: roep heel luid "JASPER WTF IS DIT"
- Shakespeare: https://tio.run/#spl
- Rockstar: (niet online) https://github.com/dylanbeattie/rockstar
- BASIC: https://www.jdoodle.com/execute-freebasic-online
- Stutter: roep heel luid "JASPER DIT IS SHIT"
- Befunge: http://www.quirkster.com/iano/js/befunge.html
- Argh! http://argh.sha-bang.de/

Kijk ook eens op [esolangs](https://esolangs.org/wiki/Language_list) of [tio.run](https://tio.run) voor andere talen.
