<#
https://projecteuler.net/problem=25

The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
#>

$Array = @([bigint]1, [bigint]1)
$EntryLength = 0

while($EntryLength -ne 1000){
$Array += ($Array[-1] + $Array[-2]) # add the last number to the second last, and append the result
$EntryLength = ($Array[-1]).ToString().Length
}

$Array[0]
$Array[1]
$Array[2]

Write-Output "`nThe index of the first Fibonacci number with 1000 digits is:"
$Array.length
