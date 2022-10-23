




$array = @(1, 2)


while($array[-1] -lt 4000000){

$array += ($array[-1] + $array[-2])



}


$total = 0

foreach($entry in $array){

if($entry % 2 -eq 0){ $total = $total + $entry}

}
























