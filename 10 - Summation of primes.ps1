<#
https://projecteuler.net/problem=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
#>

$PrimeTestLimit = 2000000


$Result = 0
$PrimeList = @(2, 3, 5)


$SavedPrimeList = Get-Content -Path "C:\Users\wigan\Desktop\Git Repo\Euler\euler\PrimeList.txt"
If($SavedPrimeList -ne $null){$PrimeList = $SavedPrimeList}
Else{Add-Content -Path "PrimeList.txt" -Value $PrimeList}

$Total = 0
$PrimeList | Foreach { $Total += $_}

[int]$Candidate = 0 + $PrimeList[-1] + 1           # Starting point for testing primeness. Primeitude. Not user editable. 


# Prime Number Generator
While($Candidate -lt $PrimeTestLimit){  
        $Prime = $True
        If([Math]::sqrt($Candidate) % 1 -eq 0){$Prime = $False}
        
        $PrimeListIndex = 0

    :switch While($PrimeListIndex -lt $PrimeList.Count){            
                    $Mod = $Candidate % $PrimeList[$PrimeListIndex]
                    Switch($Mod) {
                        0 {$Prime = $False; break switch} 
                        default {$PrimeListIndex++}
                    }
            }
        
                 
        If($Prime -eq $true){
                $Total += $Candidate
                $PrimeList += $Candidate
                Add-Content -Path "C:\Users\wigan\Desktop\Git Repo\Euler\euler\PrimeList.txt" -Value $Candidate
        }
        If($Candidate % 1000 -eq 0){$Candidate}   

$Candidate++
} 

Write-Host ($PrimeList.Count) "total primes"
Write-Host $PrimeList[-1] "highest prime"
Write-Host $Total "sum of primes"


