$x1=1
$y1=1
$x2=1
$y2=1
$rownumber=1

$SantaVisits += @("1,1")
$RoboSantaVisits += @("1,1")

$incoming = get-content 'C:\Users\rdameron\Downloads\AoC_D3Input.txt' 
#$incoming = '^v'

$nav = $incoming.ToCharArray() #| select -First 20

foreach($d in $nav)
{ 
    if ($rownumber % 2 -eq 0) {
        switch ($d) {
        '>' {$x1++}
        '<' {$x1--}
        '^' {$y1++}
        'v' {$y1--}
        }

        if ($RoboSantaVisits -notcontains "$x1,$y1") {
                $RoboSantaVisits += @("$x1,$y1")
            }
    }

    else {
        switch ($d) {
        '>' {$x2++}
        '<' {$x2--}
        '^' {$y2++}
        'v' {$y2--}
        }

        if ($SantaVisits -notcontains "$x2,$y2") {
                $SantaVisits += @("$x2,$y2")
            }
    }

    $rownumber ++
}

#Unique house visits?
$AllVisits = $SantaVisits + $RoboSantaVisits

($AllVisits | Select-Object -Unique).Count


<#Reset

$rownumber=1
$SantaVisits = @()
$RoboSantaVisits = @()

#>




