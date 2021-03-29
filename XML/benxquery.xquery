declare variable $disc1 := collection('Final/Disk1/?select*.xml');
declare variable $disc2 := collection('Final/Disk2/?select*.xml');
declare variable $disc3 := collection('Final/Disk3/?select*.xml');
declare variable $disks := ($disc1, $disc2, $disc3);
<html>
<head>
<title>Recurring Characters</title>
</head>
<body>
<h1>Recurring characters in Final Fantasy VII</h1>
<ol>{let $speech := //speaker[@name]
let $speakDistinct := $speech => distinct-values()
for $spkr in $speakDistinct
let $speechCount := //speaker[data(@name) = $speech] => count()
where $speechCount >1
order by $spkr
return $spkr}
</ol>
</body>
</html>
