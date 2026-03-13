<#
https://projecteuler.net/problem=23

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number (n) is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

#>

Function Sum-Divisors{
    param ($DivisorsInput)
    $ProperDivisorsSum = 0
    
    If($DivisorsInput %2 -eq 0){
        $DivisorsTestCutoff = $DivisorsInput / 2    
        }
    Else{
        $DivisorsTestCutoff = ($DivisorsInput + 1) / 2
        }
    ForEach($DivisorsInteger in @(1..$DivisorsTestCutoff)){     # Room for plenty of skipping over some integers here
        If($DivisorsInput % $DivisorsInteger -eq 0){
            $ProperDivisorsSum += $DivisorsInteger
            }
        }
    Return $ProperDivisorsSum
}

$TestRange = @(1..28125)

$AbundantList = @()
ForEach($TestInt1 in $TestRange){
    If((Sum-Divisors $TestInt1) -gt $TestInt1){   # gather abundant numbers
        $AbundantList += $TestInt1
        } 
    }


$ResultSum = 0
ForEach($TestInt2 in $TestRange){
    If($TestInt2 % 100 -eq 0){Write-Host $TestInt2}
    $SumProduct = 0
    :abundancecheck
    ForEach($AbundantInt in $AbundantList){
        $SubtractedResult = $TestInt2 - $AbundantInt
        If($SubtractedResult -gt 0){
            If((Sum-Divisors $SubtractedResult) -gt $SubtractedResult){ # subtract an abuntant number from the number tested, check if result is also abundant
                $SumProduct = 1
                Break abundancecheck
                }
            }
        }
    If($SumProduct -eq 0){$ResultSum += $TestInt2}
    }

$ResultSum

