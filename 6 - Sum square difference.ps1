<#
https://projecteuler.net/problem=6

The sum of the squares of the first ten natural numbers is 385.

The square of the sum of the first ten natural numbers is 3025.

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#>


$Digits = @(1..100)



$SumOfSquares = 0
ForEach($Digit in $Digits){
    $SumOfSquares += ($Digit * $Digit)
}


$Sum = 0
$SquareOfSums = 0
ForEach($Digit in $Digits){
    $Sum += $Digit
}
$SquareOfSums = ($Sum * $Sum)


$Difference = $SquareOfSums - $SumOfSquares


$Difference

