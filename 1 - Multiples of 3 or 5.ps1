<#
https://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
#>


$Num = 0


$Output = 0

while($Num -lt 1000){

    $UpdateFlag = $False
    if($Num % 3 -eq 0){ $UpdateFlag = $true }
    if($Num % 5 -eq 0){ $UpdateFlag = $true }

    if($UpdateFlag -eq $True){ 
        $Output = $output + $Num}

    $Num++

}

Write-Output "`nFind the sum of all the multiples of 3 or 5 below 1000:"
$Output.ToString('N0')