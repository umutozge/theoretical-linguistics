COGS532 &ndash; 2024F &ndash; Quiz II (24/10)
------------------------------------
1. **[3pts]**
   Explain the difference between interpretable and uninterpretable features with examples.
   
   -----------

   **Solution:**
   
   Interpretable features affect semantic interpretation, while uninterpretable features only serve syntactic purposes.
   
   **Interpretable Features:**
   - The [plural] feature on nouns affects both form and meaning (cats vs cat)
   - Person features [1st], [2nd] affect who is being referred to
   - Gender features in pronouns (he/she) that correspond to actual gender
   
   **Uninterpretable Features:**
   - Case features like [nominative] and [accusative] only regulate syntactic position (he vs him) without changing meaning
   - Agreement features on verbs (runs vs run) don't contribute to meaning
   - Grammatical gender in languages like Gaelic where "woman" (boireannach) is grammatically masculine

  -----------

2. **[2pts]**
   Consider Turkish nouns and adjectives. What criteria would you use to distinguish between these categories? Provide a decision procedure.

   -----------
   
   **Solution:**
   
   A systematic decision procedure to classify Turkish words as N, A or neither:

   **Step 1: Morphological Tests**
   - Apply plural marking (-lar/-ler)
     - If word accepts plural → Likely N
     - If word rejects plural → Could be A or other
   
   **Step 2: Syntactic Tests**
   - Test if word can take case markers
     - If accepts case → Confirms N
     - If rejects case → Likely A
   - Test if word can be modified by degree words (çok "very")
     - If accepts degree modification → Confirms A
     - If rejects degree modification → Not A
   
   **Step 3: Classification**
   - If passes N tests only → Classify as N
   - If passes A tests only → Classify as A
   - If fails all tests → Classify as X (neither N nor A)

   -----------
