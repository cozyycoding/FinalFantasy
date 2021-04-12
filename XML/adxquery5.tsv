declare option saxon:output "method=text";
declare variable $disc1 := collection('Final/Disc1/?select=*.xml');
declare variable $disc2 := collection('Final/Disc2/?select=*.xml');
declare variable $disc3 := collection('Final/Disc3/?select=*.xml');
declare variable $discs := ($disc1, $disc2, $disc3);
let $ff-speech := $discs//scene//speaker
let $ff-speakers := $ff-speech/data(@name)=> distinct-values()
for $ff-spkr in $ff-speakers

let $spkr-speech-count := $discs//speaker[./data(@name) = $ff-spkr]
let $ff-speech-count := $ff-speech => count()
for $ff-spch in $spkr-speech-count

let $referents := $ff-spkr[.//speaker/string() ! normalize-space() = $ff-spch]
//referent/data(@char) ! normalize-space() => distinct-values()
for $r in $referents
(: I was really clueless on how to handle the referent aspect of this. I also am guessing I don't need to
define my discs but I couldn't remember how to go about doing that either. :)

return concat($ff-spkr, "&#x9;", "Speaker", "&#x9;", $ff-spch, "&#x9;", $r, "&#x9;", "Referent", "&#10;")