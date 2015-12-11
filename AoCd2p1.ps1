$in = get-content 'C:\Users\rdameron\Downloads\AoCd1p1.txt'
#$area = 2x3x4

foreach($a in $in)
{
  $l,$w,$h = $a.split('x',3)

  $lw = [int]$l * [int]$w
  #$lw

  $wh = [int]$w * [int]$h
  #$wh

  $hl = [int]$h * [int]$l
  #$hl

  $min = $lw,$wh,$hl | Measure-Object -Minimum

  $BoxSurfaceArea = 2*$lw + 2*$wh + 2*$hl + $min.Minimum

  $paper = $paper + $BoxSurfaceArea

}

'Total paper needed for order: ' + $paper
