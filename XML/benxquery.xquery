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
            width="1200"
            height="2500">
            <g
                transform="translate(250,100)">
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
                        let $sceneName :=$scene/Q{}sp[1]/text()
                        let $count := $scene//Q{}speaker => count()
                        let $barSize := 1000
                            
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
                                    x="-150"
                                    y="{$pos * $yspacer + 5}"
                                    font-family="sans-serif"
                                    font-size="12px"
                                    fill="black">{$sceneName}</text>
                                <line 
                                    x1="0"
                                    y1="{$pos * $yspacer}"
                                    x2="{$CloudBar * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="cyan"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$TifaBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$TifaBar * $xspacer +$TifaBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="black"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$BarretBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$BarretBar * $xspacer + $BarretBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="gray"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$YuffieBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$YuffieBar * $xspacer +$YuffieBarStart* $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="green"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$NanakiBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$NanakiBar * $xspacer + $NanakiBarStart* $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="orange"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$VincentBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$VincentBar * $xspacer +$VincentBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="red"
                                    stroke-width="15"/>                            <line 
                                    x1="{$CidBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$CidBarStart * $xspacer = $CidBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="yellow"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$AerithBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$AerithBar * $xspacer + $AerithBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="pink"
                                    stroke-width="15"/>
                                                                <line 
                                    x1="{$CaitSithBarStart * $xspacer}"
                                    y1="{$pos * $yspacer}"
                                    x2="{$CaitSithBar * $xspacer + $CaitSithBarStart * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="black"
                                    stroke-width="15"/>
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