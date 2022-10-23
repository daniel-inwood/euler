<#
https://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
#>

$StartTime = Get-Date

$InputNumber = 600851475143

$PrimeLimit = 10010         # Not sure if I'm ready to commit 

$ErrorLevel = 0
$Candidate = 4                     # Starting point for testing primeness. Primeitude. Not user editable. 
$Primes = @(2, 3)                  # Two prime entries just to get us started, since they'll never change
$PrimeIndex = 0                    # Marker for incrementing through $Primes
$InputNumberStore = $InputNumber   # Storing user input in case we need it later

# Prime Number Generator
While($Candidate -lt $PrimeLimit){  
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
                If($PrimeLimit -gt 10000){
                    $TimePassed = New-TimeSpan -Start $StartTime -End (Get-Date)
                    $Progress = [Math]::Round(($Candidate / $PrimeLimit) * 100)
                    Write-Host "Generating Primes -" $Candidate.ToString('N0') / $PrimeLimit.ToString('N0') - $Progress "% complete.   Time Elapsed -" ('{0:m\:ss\.f}' -f $TimePassed)
                } 
        }   
$Candidate++
} 

Write-Host "`n"
Write-Host "Number of primes generated: " $Primes.Count.ToString('N0')
Write-Host "Highest prime generated:    " $Primes[-1].ToString('N0')
Write-Host "`nNow testing" $InputNumber.ToString('N0') "...`n`n"

# $Primes now contains a list of prime numbers from 2 to $PrimeLimit.
# Now, we start dividing the input number by increasing primes.


While(($ErrorLevel -eq 0) -and ($InputNumber -gt 1)){

    If($InputNumber / $Primes[$PrimeIndex] -eq 1){
        Write-Host $InputNumber / ($Primes[$PrimeIndex]) = ($InputNumber / $Primes[$PrimeIndex])
        $Output = "`nThe greatest prime factor of " + $InputNumberStore.ToString('N0') + " is " + $Primes[$PrimeIndex].ToString('N0') + "."
        Write-Host $Output
        Break
    }

    If($InputNumber % $Primes[$PrimeIndex] -eq 0){
        Write-Host $InputNumber / ($Primes[$PrimeIndex]) = ($InputNumber / $Primes[$PrimeIndex])
        $InputNumber = $InputNumber / $Primes[$PrimeIndex]         
    }

    If(
        ($InputNumber % $Primes[$PrimeIndex] -gt 0) -and`
        ($InputNumber / $Primes[$PrimeIndex] -ne 1)
        ){
            $PrimeIndex++
            If($PrimeIndex -eq ($Primes.Count)){
                Write-Host "`nLimit set too low - out of available primes before finding a prime factor."     
                Break
            }   
     }
}

    





