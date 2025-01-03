
COGS 532 - :calendar: 17/1 - Fall 2024
---------------------------------------

Final Assignment
----------------

The assignment is due Jan 17 and worths **[15pts]**.

You are required to build a system that produces the input-output relation
below. Note that,

* the semantics of relative pronouns can be expressed as `\p\q\x.(p x) & (q
x)` in a `smallworld` lexicon.
* the current version does not issue `NOT IN YOUR LEXICON` warning. In other
    words, failure may be in your lexicon.

Input:
```
the angry dog
john tries to chase the spy
the angry spy tries to chase john
john wants to try to chase the spy
the spy whom john loves sleeps
the spy whom john wants to try to chase loves mary
the spy whom the angry dog chases sleeps
the spy who wants to try to chase john loves mary
the spy whom john loves whom mary chases
to to love john
to to love the spy 
```

Output:

```
PARSED: THE ANGRY DOG 

--------------------PARSE 1--------------------

[(> the (> angry (< dog sg))) =  (s\np)\((s\np)/np)  : 𝛌q .q (the'(𝛌x .angry'x  ∧ (dog'x))) ]

------------------------------------------------


PARSED: JOHN TRIES TO CHASE THE SPY 

--------------------PARSE 1--------------------

[(> (< john nom) (> (b< try sg) (> to (< chase (> the (< spy sg)))))) = s : try'(chase'(the'spy') john') john']

------------------------------------------------


PARSED: THE ANGRY SPY TRIES TO CHASE JOHN 

--------------------PARSE 1--------------------

[(> (> the (> angry (< spy sg))) (> (b< try sg) (> to (< chase (< john acc))))) = s : try'(chase'john'(the'(𝛌x .angry'x  ∧ (spy'x)))) (the'(𝛌x .angry'x  ∧ (spy'x))) ]

------------------------------------------------


PARSED: JOHN WANTS TO TRY TO CHASE THE SPY 

--------------------PARSE 1--------------------

[(> (< john nom)
  (> (b< want sg) (> to (> try (> to (< chase (> the (< spy sg)))))))) = s : want'(try'(chase'(the'spy') john') john') john']

------------------------------------------------


PARSED: THE SPY WHOM JOHN LOVES SLEEPS 

--------------------PARSE 1--------------------

[(> (> the (< spy (b< sg (> whom (b> (< john nom) (b< love sg))))))
  (< sleep sg)) = s : sleep'(the'(𝛌x_9.love'x_9john' ∧ (spy'x_9))) ]

------------------------------------------------


PARSED: THE SPY WHOM JOHN WANTS TO TRY TO CHASE LOVES MARY 

--------------------PARSE 1--------------------

[(>
  (> the
   (< spy
    (b< sg
     (> whom
      (b> (< john nom) (b> (b< want sg) (b> to (b> try (b> to chase)))))))))
  (< (b< love sg) (< mary acc))) = s : love'mary'(the'(𝛌x_3.want'(try'(chase'x_3john') john') john' ∧ (spy'x_3))) ]

------------------------------------------------


PARSED: THE SPY WHOM THE ANGRY DOG CHASES SLEEPS 

--------------------PARSE 1--------------------

[(>
  (> the
   (< spy (b< sg (> whom (b> (> the (> angry (< dog sg))) (b< chase sg))))))
  (< sleep sg)) = s : sleep'(the'(𝛌x_6.chase'x_6(the'(𝛌x .angry'x  ∧ (dog'x)))  ∧ (spy'x_6))) ]

------------------------------------------------


PARSED: THE SPY WHO WANTS TO TRY TO CHASE JOHN LOVES MARY 

--------------------PARSE 1--------------------

[(>
  (> the
   (< spy
    (b< sg
     (> who (> (b< want sg) (> to (> try (> to (< chase (< john acc))))))))))
  (< (b< love sg) (< mary acc))) = s : love'mary'(the'(𝛌x_8.want'(try'(chase'john'x_8) x_8) x_8 ∧ (spy'x_8))) ]

------------------------------------------------


PARSED: THE SPY WHOM JOHN LOVES WHOM MARY CHASES 

--------------------PARSE 1--------------------

[(> the
  (< spy
   (b< sg
    (b< (> whom (b> (< john nom) (b< love sg)))
     (> whom (b> (< mary nom) (b< chase sg))))))) =  (s\np)\((s\np)/np)  : 𝛌q .q (the'(𝛌x_5.chase'x_5mary' ∧ (love'x_5john' ∧ (spy'x_5)))) ]

------------------------------------------------

*TO TO LOVE JOHN

*TO TO LOVE THE SPY
```
