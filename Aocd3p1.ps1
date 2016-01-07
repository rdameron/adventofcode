$x=1
$y=1

$HousesVisited += @("1,1")

﻿$nav = get-content 'C:\Users\rdameron\Downloads\AoC_D3Input.txt' #| select -First 10
$nav = $nav.ToCharArray()

foreach($d in $nav)
{ 
    switch ($d) {
    '>' {$x++}
    '<' {$x--}
    '^' {$y++}
    'v' {$y--}
    }

    if ($HousesVisited -notcontains "$x,$y") {
            $HousesVisited += @("$x,$y")
        }
}

#Unique house visits
($HousesVisited | Get-Unique).Count




