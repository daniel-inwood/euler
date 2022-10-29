<#
https://projecteuler.net/problem=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
#>


$PrimeTestLimit = 2000001

$Result = 0
$StartTime = (Get-Date)

$Candidate = 4                     # Starting point for testing primeness. Primeitude. Not user editable. 
$Primes = @(2, 3)                  # Two prime entries just to get us started, since they'll never change

# Prime Number Generator
While($Candidate -ne $PrimeTestLimit){  
        $Prime = $True
        If([Math]::sqrt($Candidate) % 1 -eq 0){$Prime = $False}
        If($Prime = $True){
                ForEach($PrimeNumber in $Primes){
                    If($Candidate % $PrimeNumber -eq 0){
                        $Prime = $false
                    }
                }
        }
        If($Prime -eq $true){
                $Result = $Result + $Candidate
                $Primes += $Candidate
               
                If($WhichPrime -gt 9000){
                    $TimePassed = New-TimeSpan -Start $StartTime -End (Get-Date)
                    Write-Host "Generating Primes - Checking" $Candidate.ToString('N0') / $Result.ToString('N0') "total sum so far     Time Elapsed -" ('{0:m\:ss\.f}' -f $TimePassed)
                } 
        }   
$Candidate++
} 


$Result