declare variable $disc1 := collection('../XML/Final/Disc1/?select=*.xml');
declare variable $disc2 := collection('../XML/Final/Disc2/?select=*.xml');
declare variable $disc3 := collection('../XML/Final/Disc3/?select=*.xml');
declare variable $discs := ($disc1, $disc2, $disc3);
declare variable $xspacer := 20;
declare variable $yspacer := 25;
declare variable $scenes := $discs//scene;
<svg
    xmlns="http://www.w3.org/2000/svg"
    width="2500"
    height="2200">
    <g
        transform="translate(250,100)">

        <g>
            {
                let $speeches := $scenes//Q{}sp
                let $CloudCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Cloud' or data(@name) = 'Little Cloud'] => count()
                let $TifaCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Tifa'] => count()
                let $BarretCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Barret'] => count()
                let $YuffieCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Yuffie'] => count()
                let $NanakiCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Nanaki' or data(@name) = 'Red XIII'] => count()
                let $VincentCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Vincent'] => count()
                let $CidCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Cid'] => count()
                let $AerithCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Aerith' or data(@name) = 'Flower Girl'] => count()
                let $CaitSithCount := $scenes//Q{}sp/Q{}speaker[data(@name) = 'Cait Sith'] => count()
                let $otherCount := $scenes//Q{}sp/Q{}speaker[not(contains(@name, 'Cloud')) and not(contains(@name, 'Barret')) and not(contains(@name, 'Tifa')) and not(contains(@name, 'Yuffie')) and not(contains(@name, 'Nanaki')) and not(contains(@name, 'Vincent')) and not(contains(@name, 'Cid')) and not(contains(@name, 'Cait Sith')) and not(contains(@name, 'Aerith')) and not(contains(@name, 'Red XIII')) and not(contains(@name, 'Flower Girl')) or (contains(@name, 'Kid')) or not(contains(@name, ',')) or not(contains(@name, '+'))] => count()
                return
                    <g>
                        <line
                            x1="0"
                            y1="{0}"
                            x2="{$CloudCount}"
                            y2="{0}"
                            stroke="cyan"
                            stroke-width="15"/>
                        <text
                            x="{$CloudCount   + 10}"
                            y="{0}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$CloudCount}</text>
                                                    <line
                            x1="0"
                            y1="{25}"
                            x2="{$TifaCount}"
                            y2="{25}"
                            stroke="black"
                            stroke-width="15"/>
                        <text
                            x="{$TifaCount   + 10}"
                            y="{25}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="gray">{$TifaCount}</text>
                                                            <line
                            x1="0"
                            y1="{50}"
                            x2="{$BarretCount}"
                            y2="{50}"
                            stroke="grey"
                            stroke-width="15"/>
                        <text
                            x="{$BarretCount   + 10}"
                            y="{50}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$BarretCount}</text>
                                                                                        <line
                            x1="0"
                            y1="{75}"
                            x2="{$YuffieCount}"
                            y2="{75}"
                            stroke="green"
                            stroke-width="15"/>
                        <text
                            x="{$YuffieCount   + 10}"
                            y="{75}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$YuffieCount}</text>                                                            <line
                            x1="0"
                            y1="{100}"
                            x2="{$NanakiCount}"
                            y2="{100}"
                            stroke="orange"
                            stroke-width="15"/>
                        <text
                            x="{$NanakiCount   + 10}"
                            y="{100}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$NanakiCount}</text>
                                                                                        <line
                            x1="0"
                            y1="{125}"
                            x2="{$VincentCount}"
                            y2="{125}"
                            stroke="red"
                            stroke-width="15"/>
                        <text
                            x="{$VincentCount   + 10}"
                            y="{125}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$VincentCount}</text>
                                                                                        <line
                            x1="0"
                            y1="{150}"
                            x2="{$CidCount}"
                            y2="{150}"
                            stroke="yellow"
                            stroke-width="15"/>
                        <text
                            x="{$CidCount   + 10}"
                            y="{150}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$CidCount}</text>
                                                                                        <line
                            x1="0"
                            y1="{175}"
                            x2="{$AerithCount}"
                            y2="{175}"
                            stroke="pink"
                            stroke-width="15"/>
                        <text
                            x="{$AerithCount   + 10}"
                            y="{175}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$AerithCount}</text>
                                                                                        <line
                            x1="0"
                            y1="{200}"
                            x2="{$CaitSithCount}"
                            y2="{200}"
                            stroke="white"
                            stroke-width="15"/>
                        <text
                            x="{$CaitSithCount   + 10}"
                            y="{200}"
                            font-family="sans-serif"
                            font-size="12px"
                            fill="white">{$CaitSithCount}</text>
                            <line x1="0" x2="0"
                            y1="0"
                            y2="225"
                            stroke="white"
                            />
                    

                    </g>
            }
        </g></g></svg>