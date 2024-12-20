COGS 532 - :calendar: 19/12 - Fall 2024
---------------------------------------

Assignment
----------

The assignment is due before class time.

* The examples are same as the last week. This time you are asked to make a more sound lexicon. Use the `bar` feature to distinguish between infinitival VPs like `to walk`, `to promise harry to walk`, etc., and finite VPs like `walks`, `promised Harry to walk`, etc. You must not accept strings like `*john to go`.

* You also need to take care of agreement errors, `*john sleep` must be ruled out. 

    The inifinitival bit gets **2pts**, agreement bit gets another **2pts**.

Solution
--------

Below is a rather minimal solution that is based on features. All we do is
relaxing the `bar` feature of the bundle `n`, and use this flexibility to
control the combination of `to` with the appropriate verb phrase and to block
the combination of a subject directly with a `to VP`, at the same time.

A type-raising version is also possible but we leave it as a future exercise
after we discuss more about case and type-raising next week.


Here is the theory:

```
(feature-dictionary (agr pl sg)
                    (cat v n)
                    (bar 0 1 2))

(category-bundles (s  (cat v))
      			  (np (cat n) (bar 2))
                  (n  (cat n))
		 )

```


Here is the lexicon:

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
def raising () {
s\np/(s\n[1]); \p\x.lex'(p x); seems seem
}
```
