$floors = get-content 'C:\Users\rdameron\Downloads\AdventofCodeDay1P1.txt'
$floor = $floors.ToCharArray() 
$r = 1
$fl = 0
foreach($f in $floor)
{ 
    if ($f -eq '(')
      {$fl++}
    else
      {$fl--}
    
    if ($fl -eq -1) {$r; $fl; break;}
    else 
      {$r++}
}