declare variable $discs := collection("Final/Disc1/?select*.xml");
declare variable $xspacer := 20;
declare variable $yspacer := 25;
declare variable $scenes := $discs//scene;
for $scene at $pos in $scenes
let $speeches := $scene//Q{}sp
let $count := $speeches => count()


            let $CloudCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Cloud'] => count() div $count
return $CloudCount