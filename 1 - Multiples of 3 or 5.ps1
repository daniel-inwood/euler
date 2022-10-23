<#
https://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
#>


$Num = 0


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