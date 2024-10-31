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
   - Apply diminutive marking (-ce/-ca)
     - If word accepts diminutive → Confirms A \
       Example: güzel → güzelce (bir kız)
   - Apply approximation marking (-den/-dan/-ten/-tan)
     - If word accepts approximation → Confirms A \
       Example: genç → gençten (bir çocuk)
   
   **Step 2: Syntactic Tests**
   - Test if word can take case markers
     - If accepts case → Confirms N
     - If rejects case → Likely A
   - Test if word can be modified by degree words (çok "very")
     - If accepts degree modification → Confirms A
     - If rejects degree modification → Not A
   - Test if word can form manner adverbs with -ce/-ca
     - If forms manner adverb → Confirms A \
       Example: hızlı → hızlıca koştu, zeki → zekice konuştu \
       Note: Not all adjectives allow this (e.g., color terms)
   
   **Step 3: Classification**
   - If passes N tests only → Classify as N
   - If passes A tests only → Classify as A
   - If fails all tests → Classify as X (neither N nor A)

   -----------
