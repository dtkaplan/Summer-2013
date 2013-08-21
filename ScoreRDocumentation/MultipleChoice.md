Multiple Choice Questions
========================================================




A **multiple choice** question is in many respects like selecting from a set.  The different format is to accommodate long answers that might not be appropriate in a drop-down menu.  A multiple choice format also can be used with mathematical markup that can't be included in a drop-down menu.

### The Header

As with all *ScoreR* problem, the source Rmd file makes use of commands in the `WriteScoreR` package.  The function `newScorerSet()` is used to provide a unique ID to the problem. The following commands, which typically will be hidden from the reader by the use of the `include=FALSE` directive, do this.  

```r
require(ScoreR)
startProblem("multiple-choice-DTK-2013-05-25")
```


### Three steps

There are three (simple) steps to creating a multiple-choice problem in *ScoreR*:

1. Initialization of the question
2. Creation of the individual items, typically embedded in *markdown* statements
3. Termination of the question.

Initialization is done with the `newMC()` function.


```r
f = newMC(totalPts = 5, name = "minus1")  # Ordinarily, make this silent
```


The function name, in this case `f`, is arbitrary.  You will use that name to create the individual items with statements like `I(f(TRUE))` and I(f(FALSE))`, which will be embedded in text.  For instance:

Which of these is equal to $-1$?  
<label for='MCitem1'><input type='radio' name='ScoreR1' id='MCitem1' value='{
 "pts":      0,
"hint": "",
"reward": "Right!",
"content": "A" 
}'> <b>A</b></label> The value of $a x^2 + b x - c$ for all $a$, $b$, and $c$  
<label for='MCitem2'><input type='radio' name='ScoreR1' id='MCitem2' value='{
 "pts":      5,
"hint": "",
"reward": "Right!",
"content": "B" 
}'> <b>B</b></label>  $e^{i\pi}$  
<label for='MCitem3'><input type='radio' name='ScoreR1' id='MCitem3' value='{
 "pts":      0,
"hint": "",
"reward": "Right!",
"content": "C" 
}'> <b>C</b></label> $\ln(0)$  
<label for='MCitem4'><input type='radio' name='ScoreR1' id='MCitem4' value='{
 "pts":      0,
"hint": "",
"reward": "Right!",
"content": "D" 
}'> <b>D</b></label> There's no such thing as a negative number, just a negative attitude.
<input type='text' readonly='readonly' style='color:green' size='3' id='ScoreR1out'></input><select style='visibility: hidden' width='5' name='ScoreR1info'><option value='{
 "setID": "multiple-choice-DTK-2013-05-25",
"itemN":      1,
"name": "minus1",
"totalpts":      5,
"type": "MC",
"reward": "" 
}'>Question info</option></select>

After the items have been defined, terminate the question by calling the function with the argument `finish=TRUE`

```r
I(f(finish = TRUE))
```

You may well want to use inline knitr notation --- that's up to you.

### Hints and Labels

You may prefer not to have bullet points before the individual items, yet still have each on it's own line.  To do this, in Markdown, put several blank spaces at the end of each line.

Which of these is a movie?    
<label for='MCitem1'><input type='radio' name='ScoreR2' id='MCitem1' value='{
 "pts":      1,
"hint": "",
"reward": "Right!",
"content": "A" 
}'> <b>A</b></label> Gone with the Wind    
<label for='MCitem2'><input type='radio' name='ScoreR2' id='MCitem2' value='{
 "pts":      0,
"hint": "",
"reward": "Right!",
"content": "B" 
}'> <b>B</b></label> The Wind is Gone    
<label for='MCitem3'><input type='radio' name='ScoreR2' id='MCitem3' value='{
 "pts":      0,
"hint": "",
"reward": "Right!",
"content": "C" 
}'> <b>C</b></label> Go Wind, Go! 
<input type='text' readonly='readonly' style='color:green' size='3' id='ScoreR2out'></input><select style='visibility: hidden' width='5' name='ScoreR2info'><option value='{
 "setID": "multiple-choice-DTK-2013-05-25",
"itemN":      2,
"name": "movietitle",
"totalpts":      1,
"type": "MC",
"reward": "" 
}'>Question info</option></select>

You can use the `markers` argument to `newMc()` to specify labels other than A,B,C,....  You can also assign a name to the item and specify a reward for the correct answer.  Within the individual items (e.g., within `f()`), you can specify a hint.

For example: 


```r
f = newMC(name = "Anna Karenina", totalPts = 4, markers = c("Б", "Г", "Д"))
```


#### What are the first words of Tolstoy's "Anna Karenina"?

<label for='MCitem1'><input type='radio' name='ScoreR3' id='MCitem1' value='{
 "pts":      4,
"hint": "",
"reward": "Right!",
"content": "Б" 
}'> <b>Б</b></label> Happy families are all alike; every unhappy family is unhappy in its own way.  
<label for='MCitem2'><input type='radio' name='ScoreR3' id='MCitem2' value='{
 "pts":      0,
"hint": "",
"reward": "Right!",
"content": "Г" 
}'> <b>Г</b></label> The prettiest belle of them all was Anna.  Also, the saddest.  
<label for='MCitem3'><input type='radio' name='ScoreR3' id='MCitem3' value='{
 "pts":      4,
"hint": "",
"reward": "Right!",
"content": "Д" 
}'> <b>Д</b></label> Все счастливые семьи похожи друг на друга, каждая несчастливая семья несчастлива по-своему.  
<input type='text' readonly='readonly' style='color:green' size='3' id='ScoreR3out'></input><select style='visibility: hidden' width='5' name='ScoreR3info'><option value='{
 "setID": "multiple-choice-DTK-2013-05-25",
"itemN":      3,
"name": "Anna Karenina",
"totalpts":      4,
"type": "MC",
"reward": "" 
}'>Question info</option></select>


<select style='visibility: hidden' width='5' name='roster'><option value='[ "minus1", "movietitle", "Anna Karenina" ]'>problem roster</option></select>
#### Danny Kaplan, May 25, 2013
