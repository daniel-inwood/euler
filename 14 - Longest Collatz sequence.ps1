<#
https://projecteuler.net/problem=14
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
#>


####################### make it recognise previous points

$NumberList = 999999

$SeenNumbers = @()

$BiggestChainLength = 0

While($NumberList -gt 1){ ######### A little clumsy, but faster than having PS generate 1..999999
    ForEach($StartingNumber in $NumberList){
    
        $CurrentNumber = $StartingNumber 
        $ChainLength = 0
    
        While($CurrentNumber -gt 1){
        
            If($CurrentNumber % 2 -ne 0){
                $CurrentNumber = ($CurrentNumber * 3) + 1
                $ChainLength++
            }
        
            If($CurrentNumber % 2 -eq 0){
                $CurrentNumber = $CurrentNumber / 2
                $ChainLength++
            }    
            
        
            If($ChainLength -gt $BiggestChainLength){
                $BiggestChainLength = $ChainLength
                $BiggestChainNumber = $StartingNumber
            }
        
        } 
    
        $NumberList--
        $Output = "" + $StartingNumber + " produces a chain of " + $ChainLength
        $Output 
    
    }
}

$Results = "Longest chain: " + $BiggestChainLength + ", produced by " + $BiggestChainNumber
$Results

