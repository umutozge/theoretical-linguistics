COGS 532 - :calendar: 2/1 - Fall 2024
---------------------------------------

Assignment
----------

The assignment is due Jan 5 and worths **[5pts]**.

* Repeat the steps starting with the title `Fetch the program to your system`.
    Thereby you will have the updated version.
* Copy and rename the `mrf-basic` directory, you are going to build over this project.
* In this assignment do not forget to invoke `smallworld` with the `-m` flag.
    E.g.:
    ```
    rlwrap smallworld -m
    ```

    when you are inside your project directory.
* You are required to reduce the `noun` categories to one and handle the agreement
    and case features of noun phrases like `the dog`, `the spies`, etc., by
    using morphological analysis and changing the lexicon.
* In its current state, `mrf-basic` allows for singular proper names like `john`
    to combine with plural verbs like `sleep`. You are required also to correct
    this.
* * In the end, when you parse the following file by the command `:pf <filename>`
    (replace `<filename>` with whatever name you have saved the following
    content in.):

    ```
    john chases the dog
    the dog chases john
    the dog sleeps
    the dogs sleep
    john loves
    a dog loves
    john love mary
    the dog love mary
    the dogs sleeps
    ```

The output must be like:

```
PARSED: JOHN CHASES THE DOG 

--------------------PARSE 1--------------------

[(> (< john nom) (< (b< chase sg) (< (> the (< dog sg)) acc))) = s : chase'(the'dog') john']

------------------------------------------------

PARSED: THE DOG CHASES JOHN 

--------------------PARSE 1--------------------

[(> (< (> the (< dog sg)) nom) (< (b< chase sg) (< john acc))) = s : chase'john'(the'dog') ]

------------------------------------------------


PARSED: THE DOG SLEEPS 

--------------------PARSE 1--------------------

[(> (< (> the (< dog sg)) nom) (< sleep sg)) = s : sleep'(the'dog') ]

------------------------------------------------


PARSED: THE DOGS SLEEP 

--------------------PARSE 1--------------------

[(> (< (> the (< dog pl)) nom) (< sleep pl)) = s : sleep'(the'dog') ]

------------------------------------------------


PARSED: JOHN LOVES 

--------------------PARSE 1--------------------

[(b> (< john nom) (b< love sg)) =  s/np  : 𝛌x .love'x john']

------------------------------------------------


PARSED: A DOG LOVES 

--------------------PARSE 1--------------------

[(b> (< (> a (< dog sg)) nom) (b< love sg)) =  s/np  : 𝛌x .love'x (a dog') ]

------------------------------------------------

*JOHN LOVE MARY

*THE DOG LOVE MARY

*THE DOGS SLEEPS
```

**Solution:**

Lexicon:

```
def proper-name (pn) {
np[sg]; lex'; john mary
}
def iverb (v) {
s\np; lex';  sleep walk
}
def tverb (v) {
s\np/np; lex'; love chase
}
def noun (n) {
n; lex'; spy dog
}
def sg (phi) {
n[sg]\n;  \x.x ; sg 
}
def pl (phi) {
n[pl]\n; \x.x ; pl 
}
def determiner () {
np[agr=?x]/n[agr=?x]; lex'; the
}
def determiner () {
np/n[sg]; lex'; a 
}
def singular (agr) {
s[+]\np[sg]\(s[-]\np); \x.x; sg
}
def plural (agr) {
s[+]\np[pl]\(s[-]\np); \x.x; pl 
}
def nominative (case) {
s/(s\np[agr=?x])\np[agr=?x]; \x\q. q x ; nom 
}
def accusative (case) {
(s\np[agr=?x])\(s\np[agr=?x]/np)\np; \x\p. p x; acc
}
```

Theory:

```

(feature-dictionary (agr pl sg)
                    (cat v n)
                    (bar 0 1 2)
					(fin + -)
					)

(category-bundles (s (cat v))
				  (np (cat n) (bar 2))
		  		  (n (cat n)) 
		            )
```

MRF:

```
(john (john pn) (nom case))
(john (john pn) (acc case))
(mary (mary pn) (nom case))
(mary (mary pn) (acc case))

(sleeps (sleep v) (sg agr))
(walks (walk v) (sg agr))
(sleep (sleep v) (pl agr))
(walk (walk v) (pl agr))
(loves (love v) (sg agr))
(love (love v) (pl agr))
(chases (chase v) (sg agr))
(chase (chase v) (pl agr))

(dog (dog n) (sg phi) (nom case))
(dog (dog n) (sg phi) (acc case))
(dogs (dog n) (pl phi) (nom case))
(dogs (dog n) (pl phi) (acc case))
(spy (dog n) (sg phi) (nom case))
(spy (dog n) (sg phi) (acc case))
(spies (dog n) (pl phi) (nom case))
(spies (dog n) (pl phi) (acc case))
```
