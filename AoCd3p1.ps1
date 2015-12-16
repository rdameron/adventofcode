$in = get-content 'C:\Users\rdameron\Downloads\AoC_D3Input.txt' #| select -First 10
$in = $in.ToCharArray()

$x=1
$y=1
#$px=1
#$py=1

$Houses=1

foreach($d in $in)
{ 
    switch ($d) {
    '>' {$x++}
    '<' {$x--}
    '^' {$y++}
    'v' {$y--}
    }

    #if ($x -ne $px) or ($y -ne $py) 
        #{$Houses++}

    #save positions in array or hashtable
    #check if position is in array, if not save it. Use contains
    #when done, count elements in hashtable? 

    @{ X = '1'; Y = '1' }

    
}





