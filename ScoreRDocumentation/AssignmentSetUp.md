Setting up an assignment
========================================================






```r
require(WriteScoreR)
newScorerSet("set-up-DTK-2013-05-27")
```


How to set up an assignment

### Just a couple of questions to illustrate scoring


```r
piQuestion = selectSet(name = "piValue", totalPts = 4, `2.71727` = FALSE, `3.14159` = TRUE, 
    `6.28318` = FALSE)
```


* Which is closest to $\pi$? <select name='in1'><option value='NA' selected>UNANSWERED</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      1,
"name": "piValue",
"totalpts":      4 
},
"type": "Fixed Choice",
"pts":      0,
"hint": "",
"reward": "Right!",
"content": "2.71727" 
}'>2.71727</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      1,
"name": "piValue",
"totalpts":      4 
},
"type": "Fixed Choice",
"pts":      4,
"hint": "",
"reward": "Right!",
"content": "3.14159" 
}'>3.14159</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      1,
"name": "piValue",
"totalpts":      4 
},
"type": "Fixed Choice",
"pts":      0,
"hint": "",
"reward": "Right!",
"content": "6.28318" 
}'>6.28318</option> </select><span id='out1' class='shiny-html-output'> </span>

* Pick an even number out of this set:  <select name='in2'><option value='NA' selected>UNANSWERED</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      2,
"name": "evens",
"totalpts":      1 
},
"type": "Fixed Choice",
"pts":      0,
"hint": "",
"reward": "Right!",
"content": "3" 
}'>3</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      2,
"name": "evens",
"totalpts":      1 
},
"type": "Fixed Choice",
"pts":      0,
"hint": "",
"reward": "Right!",
"content": "5" 
}'>5</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      2,
"name": "evens",
"totalpts":      1 
},
"type": "Fixed Choice",
"pts":      1,
"hint": "",
"reward": "Right!",
"content": "6" 
}'>6</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      2,
"name": "evens",
"totalpts":      1 
},
"type": "Fixed Choice",
"pts":      0,
"hint": "",
"reward": "Right!",
"content": "7" 
}'>7</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      2,
"name": "evens",
"totalpts":      1 
},
"type": "Fixed Choice",
"pts":      1,
"hint": "",
"reward": "Right!",
"content": "8" 
}'>8</option> <option value='{
 "itemInfo": {
 "setID": "set-up-DTK-2013-05-27",
"itemN":      2,
"name": "evens",
"totalpts":      1 
},
"type": "Fixed Choice",
"pts":      0,
"hint": "",
"reward": "Right!",
"content": "9" 
}'>9</option> </select><span id='out2' class='shiny-html-output'> </span>


```r
I(selectNumber(choices = c(3, 5, 6, 7, 8, 9), correct = c(6, 8), name = "evens", 
    totalPts = 2))
```


### To Do

* Provide different formats, not just the dropdown menu.

<select style='visibility: hidden' width='5' name='roster'><option value='[ "in1", "in2" ]'>Ignore me</option></select>

#### Danny Kaplan, May 25, 2013
