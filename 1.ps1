$num = 0


$output = 0

while($num -lt 1000){


$updateflag = $false


if($num % 3 -eq 0){ $updateflag = $true }

if($num % 5 -eq 0){ $updateflag = $true }




if($updateflag -eq $true){ 
$num
$output = $output + $num}


$num++


}


$output