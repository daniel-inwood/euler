<#
https://projecteuler.net/problem=16

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
#>


$BigNumber = [bigint]::Pow(2, 1000)
$CharacterArray = $BigNumber -split ''

$Result = 0
foreach($Number in $CharacterArray){
    $Result += ([int]::parse($Number))
    }

 $Result