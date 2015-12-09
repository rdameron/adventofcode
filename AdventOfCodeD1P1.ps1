$floors = get-content 'C:\Users\rdameron\Downloads\AdventofCodeDay1P1.txt'
$up = ([regex]::Matches($floors, "\(" )).count
$down = ([regex]::Matches($floors, "\)" )).count
$up - $down