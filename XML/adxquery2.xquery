let $vv-speech := //scene[child::speaker[@name="Vincent"]]
let $vv-speaker := $vv-speech//speaker/data(@name)=> distinct-values()
let $vv-speech-count := $vv-speech => count()
return (concat ("In the 40th scene, the character ", $vv-speaker, " speaks ", $vv-speech-count, " times."))
(:So this is pretty much essential for the project so I decided to go ahead and try this and redo it a bit from what was in the tutorial page, but it gives me an issue that says "sequence of more than one item is not allowed as the second argument of fn:concat() (u"Lucrecia", u"Vincent"). Not sure what to do form here.:)