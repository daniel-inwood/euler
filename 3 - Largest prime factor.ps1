<#
https://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
#>


## Quick (slow) and dirty prime tester:
$limit = 100000
$candidate = 4
$primes = @(2, 3)
while($candidate -ne $limit){
    if($candidate % 2 -ne 0){
        $prime = $true
        foreach($testnumber in $primes){
            if($candidate % $testnumber -eq 0){$prime = $false}
            }
        if($prime -eq $true){
        $primes += $candidate
      }
}
$candidate++
}
$primes
