<#
https://projecteuler.net/problem=4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
#>

function TestOddSubject {
    param ($StringSubject)
    $IsPalindrome = $True
    $MiddleCharacter = (($StringSubject.length - 1) / 2) + 0 ####### beware off by one
    $TestCharacter = 0
    while($TestCharacter -lt $MiddleCharacter){
            If($StringSubject[$TestCharacter] -ne $StringSubject[(-1 - $TestCharacter)]){
                $IsPalindrome = $False}
            $TestCharacter++
            }
     If($IsPalindrome -eq $True){
        $BiggestValue = $ResultsArray.Keys | Sort-Object -Descending | Select-Object -First 1
        If([int]$StringSubject -gt $BiggestValue){
            $ResultsArray.add([int]$StringSubject, $IsPalindrome)
            }
    }
}

function TestEvenSubject {
    param ($StringSubject)
    $IsPalindrome = $True
    $TestCharacter = 0
    while($TestCharacter -lt ($StringSubject.Length / 2)){
            If($StringSubject[$TestCharacter] -ne $StringSubject[(-1 - $TestCharacter)]){
                $IsPalindrome = $False}
            $TestCharacter++
            }
    If($IsPalindrome -eq $True){
        $BiggestValue = $ResultsArray.Keys | Sort-Object -Descending | Select-Object -First 1
        If([int]$StringSubject -gt $BiggestValue){
            $ResultsArray.add([int]$StringSubject, $IsPalindrome)
            }
    }
}

#####################################################################################################################################

$NumberOfDigits = 4
[int]$Min = "9" + ("0" * ($NumberOfDigits - 1))
[int]$Max = "9" * $NumberOfDigits
$CrossQty = ($Max - $Min) * ($Max - $Min)
$CrossMax = $Max * $Max

$LeftNumbers = @($Max..$Min) # Setting these up max>min lets us filter more aggressively
$RightNumbers = @($Max..$Min) # Could alter minumum value here to save time
$FinalResult = 0
$StringSubject = " "
$ResultsArray = @{}
Set-Variable -Name $ResultsArray -Option AllScope
Set-Variable -Name $StringSubject -Option AllScope

Write-Host "`n"
Write-Host "Number of digits:" $NumberOfDigits
Write-Host "Number of potential results:" $CrossQty.ToString('N0')
Write-Host "Maximum possible result:    " $CrossMax.ToString('N0')
Write-Host "`nFinding palindromes............"

$CrossTable = @()
ForEach($LEntry in $LeftNumbers){
    $BiggestValueOld = $ResultsArray.Keys | Sort-Object -Descending | Select-Object -First 1
    ForEach($REntry in $RightNumbers){
        $CrossCandidate = ($LEntry * $REntry)
        $StringSubject = [string]$CrossCandidate  ## This could be much more consice but since .length & .count work differently on string vs int this made sense
        If($StringSubject.length % 2 -eq 0){
            TestEvenSubject($StringSubject)
            } 
        Else{
            TestOddSubject($StringSubject)}
        }
    $BiggestValueNew = $ResultsArray.Keys | Sort-Object -Descending | Select-Object -First 1
    If($BiggestValueOld -ne $BiggestValueNew){Write-Host "Potential result:" $BiggestValueNew}
}

$FinalResult = $ResultsArray.Keys | Sort-Object -Descending | Select-Object -First 1

Write-Host "`nBiggest palindrome:"
$FinalResult