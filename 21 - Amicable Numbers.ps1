﻿<#
https://projecteuler.net/problem=21

#>

$Level0  = (75)
$Level1  = (95, 64)
$Level2  = (17, 47, 82)
$Level3  = (18, 35, 87, 10)
$Level4  = (20,  4, 82, 47, 65)
$Level5  = (19,  1, 23, 75,  3, 34)
$Level6  = (88,  2, 77, 73,  7, 63, 67)
$Level7  = (99, 65,  4, 28,  6, 16, 70, 92)
$Level8  = (41, 41, 26, 56, 83, 40, 80, 70, 33)
$Level9  = (41, 48, 72, 33, 47, 32, 37, 16, 94, 29)
$Level10 = (53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14)
$Level11 = (70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57)
$Level12 = (91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48)
$Level13 = (63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31)
$Level14 = ( 4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23)

$Route = 0
$BestRouteTotal = 0

While ($Route -le 16384){    # 2 to the power of the number of levels of this pyramid

    $RouteBinary = [convert]::ToString($Route,2)
    $RouteBinary = $RouteBinary.PadLeft(15, "0")
    
    $CursorRow = 0
    $CursorColumn = 0
    $RouteTotal = 0
    
    While ($CursorRow -lt 15){
        $Row = Get-Variable -Name ("Level" + $CursorRow) -ValueOnly
        If ($RouteBinary[$CursorRow] -eq "1"){ $CursorColumn++ }
        $RouteTotal += $Row[$CursorColumn]    
        $CursorRow++
    }
    If ($RouteTotal -gt $BestRouteTotal){
        $BestRouteTotal = $RouteTotal
        $BestRouteBinary = $RouteBinary
        }
    $Route++
}

$BestRouteBinary = $BestRouteBinary -replace "0", "Left, " -replace "1", "Right, " 
$String = "Best route: " + $BestRouteBinary + "for a toal of " + $BestRouteTotal
$String



