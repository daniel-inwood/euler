<#
https://projecteuler.net/problem=20

n! means n x (n - 1) x ::: x 3 x 2 x 1.

For example, 10! = 10 x 9 x 8 x 7 x 6 x 5 x 4 x 3 x 2 x 1 = 3,628,800,
and the sum of the digits in the number is 27.

Find the sum of the digits in the number 100!

#>

$InputNumber = 100
[bigint]$Factorial = 1

While($InputNumber -gt 0){
    $Factorial = $Factorial * $InputNumber
    $InputNumber--
    }

$Factorial
$FactorialString = $Factorial.ToString()

$Cursor = 0
$DigitSum = 0


While($Cursor -lt $FactorialString.Length){
    $DigitSum += $FactorialString[$Cursor] - 48  ## ASCII to int offset conversion
    $Cursor++
    }


$DigitSum



