let $speech := //speaker[@name]
let $speakDistinct := $speech => distinct-values()
for $spkr in $speakDistinct
let $Speechcount := //speaker[data(@name) = $speech] => count()
where $Speechcount >1
order by $spkr
return (concat ( $spkr, " is a recurring character. ")) 
