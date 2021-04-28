declare variable $disc1 := collection('Final/Disc1/?select=*.xml'); 
declare variable $disc2 := collection('Final/Disc2/?select=*.xml'); 
declare variable $disc3 := collection('Final/Disc3/?select=*.xml');
declare variable $discs := ($disc1, $disc2, $disc3); 
declare variable $xspacer := 20;
declare variable $yspacer := 25;
declare variable $scenes := $discs//scene;
<html>
    <head>
    <title>Lines of dialogue per Character per Scene</title>
    </head>
    <body>
<p>The graph here lets us see the number of times each character speaks. This is relevant to our research question, as it lets us see the impact that each character has on the story.</p>

        <svg
            xmlns="http://www.w3.org/2000/svg"
            width="100%"
            height="100%">
            <g
                transform="translate(150,100)">
                <g>
                    <text
                        x="0"
                        y="-5"
                        font-family="sans-serif"
                        font-size="20px"
                        fill="black">Reccuring Characters in Final Fantasy</text>
                </g>
                <g>
                    {
                        for $scene at $pos in $scenes
                        let $speeches := $scenes//Q{}sp
                        let $count := $scene//Q{}speaker => count()
                        let $barSize := 100
                            
                            let $count := $scene//Q{}speaker => count()
                            
                            let $CloudCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Cloud'] => count() div $count
                            let $CloudPercent := $CloudCount div $count
                            let $CloudBar := $CloudPercent * $barSize
                            
                            let $TifaCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Tifa'] => count() div $count
                            let $TifaPercent := $TifaCount div $count
                            let $TifaBar := $TifaPercent * $barSize
                            let $TifaBarStart := $CloudBar
                            
                            let $BarretCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Barret'] => count() div $count 
                            let $BarretPercent := $BarretCount div $count
                            let $BarretBar := $BarretPercent * $barSize
                            let $BarretBarStart := $TifaBarStart + $TifaBar
                            
                            let $YuffieCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Yuffie'] => count() div $count
                            let $YuffiePercent := $YuffieCount div $count
                            let $YuffieBar := $YuffiePercent * $barSize
                            let $YuffieBarStart := $BarretBarStart + $BarretBar
                            
                            let $NanakiCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Nanaki'] => count() div $count 
                            let $NanakiPercent := $NanakiCount div $count
                            let $NanakiBar := $NanakiPercent * $barSize
                            let $NanakiBarStart := $YuffieBarStart + $YuffieBar
                            
                            
                            let $VincentCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Vincent'] => count() div $count
                            let $VincentPercent := $VincentCount div $count
                            let $VincentBar := $VincentPercent * $barSize
                            let $VincentBarStart := $NanakiBarStart + $NanakiBar
                            
                            let $CidCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Cid'] => count() div $count
                            let $CidPercent := $CidCount div $count
                            let $CidBar := $CidPercent * $barSize
                            let $CidBarStart := $VincentBarStart + $VincentBar
                            
                            let $AerithCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Aerith'] => count() div $count
                            let $AerithPercent := $AerithCount div $count
                            let $AerithBar := $AerithPercent * $barSize
                            let $AerithBarStart := $CidBarStart + $CidBar
                            
                            let $CaitSithCount := $scene//Q{}sp/Q{}speaker[data(@name) = 'Cait Sith'] => count() div $count
                            let $CaitSithPercent := $CaitSithCount div $count
                            let $CaitSithBar := $CaitSithPercent * $barSize
                            let $CaitSithBarStart := $AerithBar + $AerithBarStart
                            
                            return
                            <g>
                                <text
                                    x="-75"
                                    y="{$pos * $yspacer + 5}"
                                    font-family="sans-serif"
                                    font-size="12px"
                                    fill="black">{$scene}</text>
                                <line 
                                    x1="0"
                                    y1="{$pos * $yspacer}"
                                    x2="{$CloudBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="Cyan"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$TifaBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$TifaBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$BarretBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$BarretBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$YuffieBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$YuffieBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$NanakiBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$NanakiBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$VincentBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$VincentBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>                            <line 
                                    x1="{$CidBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$CidBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$AerithBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$AerithBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$CaitSithBarStart}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$CaitSithBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                <text
                                    x="{$count * $xspacer + 10}"
                                    y="{$pos * $yspacer + 5}"
                                    font-family="sans-serif"
                                    font-size="12px"
                                    fill="black">{$count}</text>
                                <line
                                    x1="0"
                                    y1="0"
                                    x2="0"
                                    y2="{max($pos + 1) * $yspacer}"
                                    stroke="black"
                                    stroke-width="2"/>
                            </g>
                    }
                </g>
            </g>
        </svg>
    </body>
</html>