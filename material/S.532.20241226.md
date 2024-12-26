COGS 532 - :calendar: 26/12 - Fall 2024
---------------------------------------

Assignment
----------

This weeks assignment is quite short. It is an opportunity for those who need to
catch up with the rest. Those who are already fine can go on playing with CCG.

The assignment is due before class time.

* **[2pts]** The solution posted for the assignment of last week has a deficiency: It
    cannot handle sentences like `john wants to try to write a play`. Discover
    its source and correct it.

Solution
--------

```
def proper-names () {
np[sg]; lex'; john mary harry sally alice
}
def sg-intransitives () {
s\np[sg]; \x.lex'x;  talks walks
}
def pl-intransitives () {
s\np[pl]; \x.lex'x; talk walk leave
}
def nonfin-intransitives () {
s\n[1]; \x.lex'x; talk walk leave
}
def sg-transitives () {
s\np[sg]/np; \x.lex'x; loves writes
}
def pl-transitives () {
s\np[pl]/np; \x\y.lex'x y; love write
}
def nonfin-transitives () {
s\n[1]/np; \x\y.lex'x y; love write
}
def sg-nouns () {
n[sg,0]; \x.lex'x; spy dog play
}
def pl-nouns () {
n[pl,0]; \x.lex'x; spies dogs plays
}
def definite () {
np[agr=?x]/n[agr=?x,0]; \p.lex'p; the
}
def indefinite (){
np/n[sg,0]; \p.lex'p; a
}
def infinitival () {
s\n[1]/(s\n[1]); \x.x ; to
}
def s-control () {
s\np/(s\n[1])/np; \x\p\y.lex'(p y) x y; promised promise promises
}
def o-control () {
s\np/(s\n[1])/np; \x\p\y.lex'(p x) x y; persuaded persuade persuades
}
def want-type () {
s\np/(s\n[1]); \p\x.lex'(p x) x ; want wants wanted try tries tried begin begins began 
}
def non-fin-want-type () {
s\n[1]/(s\n[1]); \p\x.lex'(p x) x ; want wants wanted try tries tried begin begins began 
}
def raising () {
s\np/(s\n[1]); \p\x.lex'(p x); seems seem
}
```
