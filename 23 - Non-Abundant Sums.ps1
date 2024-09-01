<#
https://projecteuler.net/problem=23

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number (n) is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

#>


Function Perfection-Checker {
    $InputNumber = $args[0]
    $TestNumber = $InputNumber - 1 #essential
    $SOPD = 0

    While($TestNumber -gt 0){
        If($InputNumber % $TestNumber -eq 0){
           # $TestNumber #########
            $SOPD += $TestNumber
        }
        $TestNumber--
    }

    If($SOPD -gt $InputNumber){Return "Abundant"}
    If($SOPD -eq $InputNumber){Return "Perfect"}
    If($SOPD -lt $InputNumber){Return "Deficient"}

}


$AbundantNumbers = @()
$AbundantTest = 2

While($AbundantTest -lt 28123){
    If((Perfection-Checker $AbundantTest) -eq "Abundant"){
        $AbundantNumbers += ($AbundantTest)
        }
    $AbundantTest++
    }



## $AbundantNumbers | Out-File -LiteralPath "C:\Users\wigan\Desktop\Git Repo\Euler\euler\23 AbunduntNumbersList.txt"




$AbundantSumNumbers = @()


##### DO A NASTY CROSS JOIN AND WHATEVER IS LEFT IS THE RESULT (sum the digits)

ForEach($Num1 in $AbundantNumbers){
    $Num1
    ForEach($Num2 in $AbundantNumbers){
        $Sum = $Num1 + $Num2
        If($Sum -lt 28123){
            If($Sum -notin $AbundantSumNumbers){
                $AbundantSumNumbers += $SizeCheck
                }
            }
        }
    }

$AbundantSumNumbers.count














