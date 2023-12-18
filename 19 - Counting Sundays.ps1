<#
https://projecteuler.net/problem=19

You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

#>

Function CheckLeapYear { ## Didn't use this in the end
    $CLY = $args[0]
    $Leap = 0
    If ($CLY % 4 -eq 0 -and $CLY % 100 -ne 0 -and $CLY % 400 -ne 0){ return $True }
    Else { return $False }
}

## Plan: Manually iterate through days, checking day of week and day of month as we go. 

$SundayFirst = 0

$TestDate = Get-Date('1901-01-01')

While($TestDate -ne (Get-Date('2000-12-31'))){
    If ($TestDate.DayOfWeek -eq 'Sunday'-and $TestDate.Day -eq 1){ $TestDate; $SundayFirst++ }
    $TestDate = $TestDate + (New-TimeSpan -Days 1)
    }


$SundayFirst










