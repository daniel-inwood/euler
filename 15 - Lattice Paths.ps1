<#
https://projecteuler.net/problem=15
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?
#>

$StartTime = Get-Date

$GridSize = 20
$Seed = 0
$Results = 0
$TestString = ""
$Cap = ""

$TestOnes = ""
$TestZero = ""

While($Cap.Length -lt ($GridSize * 2)){$Cap += "1"}

While($TestString -ne $Cap){
    $TestString = [string]([Convert]::ToString($Seed,2))
    While( ($TestString.Length) -lt ($GridSize * 2) ){ $TestString = "0" + $TestString }
    
    If( ([regex]::Matches($TestString, "1" )).count -eq $GridSize ){
        $Results++
    }
    $Seed++
}

$FinishTime = Get-Date
$Elapsed = (New-TimeSpan -Start $StartTime -End $FinishTime).TotalSeconds

$GridSize
$Results
$Elapsed


<#
1  2
2  6
3  20
4  70
5  252
6  924
7  3432
8  12870
9  48620
10 184756
11 705432
12 2704156
#>