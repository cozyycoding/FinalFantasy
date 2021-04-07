declare variable $discs := "/XML/Final/?select*.xml";
declare variable $xspacer := 20;
declare variable $yspacer := 25;
declare variable $speakDistinct := //speaker[data(@name)] => distinct-values();
<html>
    <head>
    <title>Lines of dialogue per Character</title>
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
                        for $spkr at $pos in $speakDistinct
                        let $speech := //Q{}sp/Q{}speaker[data(@name)]
                        let $speechCount := //Q{}sp/Q{}speaker[data(@name) = $spkr] => count()
                        where $speechCount >1
                        return
                            <g>
                                <text
                                    x="-75"
                                    y="{$pos * $yspacer + 5}"
                                    font-family="sans-serif"
                                    font-size="12px"
                                    fill="black">{$spkr}</text>
                                <line
                                    x1="0"
                                    y1="{$pos * $yspacer}"
                                    x2="{$speechCount * $xspacer}"
                                    y2="{$pos * $yspacer}"
                                    stroke="blue"
                                    stroke-width="15"/>
                                <text
                                    x="{$speechCount * $xspacer + 10}"
                                    y="{$pos * $yspacer + 5}"
                                    font-family="sans-serif"
                                    font-size="12px"
                                    fill="black">{$speechCount}</text>
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