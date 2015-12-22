$in = get-content 'C:\Users\rdameron\Downloads\AoCd2Input.txt' #| select -First 1
$total = 0

foreach($a in $in)
{
  $ribbon = 0
  $bow = 0
  
  $l,$w,$h = $a.split('x',3)

  #sort $l, $w, $h
  #pick lowest 2 values
  $x,$y = [int]$l,[int]$w,[int]$h | sort-object | select -first 2
  
  $ribbon = (2*[int]$x)+(2*[int]$y)
  $bow = [int]$l*[int]$w*[int]$h

  $total += $ribbon + $bow

}

'Total ribbon needed for order: ' + $total