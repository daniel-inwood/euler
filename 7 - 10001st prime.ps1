<#
https://projecteuler.net/problem=7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
#>


$WhichPrime = 10000


$StartTime = (Get-Date)

$Candidate = 4                     # Starting point for testing primeness. Primeitude. Not user editable. 
$Primes = @(2, 3)                  # Two prime entries just to get us started, since they'll never change
$PrimeIndex = 0                    # Marker for incrementing through $Primes

# Prime Number Generator
While(($Primes.Length) -ne $WhichPrime){  
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
                $Primes += $Candidate
                If($WhichPrime -gt 9000){
                    $TimePassed = New-TimeSpan -Start $StartTime -End (Get-Date)
                    Write-Host "Generating Primes - Checking" $Candidate.ToString('N0') / $Primes.Length.ToString('N0') "primes so far     Time Elapsed -" ('{0:m\:ss\.f}' -f $TimePassed)
                } 
        }   
$Candidate++
} 


$Primes[-2] # Because this is better than making the code look wierd to dodge an OB1 error