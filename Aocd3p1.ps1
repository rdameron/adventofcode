$x=1
$y=1

$HousesVisited += @("1,1")

﻿$in = get-content 'C:\Users\rdameron\Downloads\AoC_D3Input.txt' #| select -First 10
$in = $in.ToCharArray()

foreach($d in $in)
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




