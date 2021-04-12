declare option saxon:output "method=text";

let $speakers := speaker/data(@name) => distinct-values()

for $s in $speakers

let $s-speeches := speaker[/data(@name) = $s]
//speaker/data(@name) ! normalize-space () => distinct-values ()

for $s-spch in $s-speeches

let $targetNodes := speaker[/data(@name) = $s-spch]
//speaker/data(@name) ! normalize-space () => count ()
for $r in $s-spch
return concat($s, "&#x9;", $s-spch, "&#x9;", $r, "&#10;")