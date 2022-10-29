<#
https://projecteuler.net/problem=5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#>

$Result = 0 
$Mult = 1
 
$1Digit  = 1
$2Digit  = 2
$3Digit  = 3
$4Digit  = 4
$5Digit  = 5
$6Digit  = 6
$7Digit  = 7
$8Digit  = 8 
$9Digit  = 9
$10Digit = 10
$11Digit = 11
$12Digit = 12 
$13Digit = 13
$14Digit = 14
$15Digit = 15
$16Digit = 16 
$17Digit = 17
$18Digit = 18
$19Digit = 19
$20Digit = 20 




While($Result -eq 0){                             # Nested If much faster than and-and-and
    $Test = $20Digit * $Mult                      # Many of these redundant due to prime overfactoring, but keeping them all in for verification
    If($Test % $20Digit -eq 0){
    If($Test % $19Digit -eq 0){
    If($Test % $18Digit -eq 0){
    If($Test % $17Digit -eq 0){
    If($Test % $16Digit -eq 0){
    If($Test % $15Digit -eq 0){
    If($Test % $14Digit -eq 0){
    If($Test % $13Digit -eq 0){
    If($Test % $12Digit -eq 0){
    If($Test % $11Digit -eq 0){
    If($Test % $10Digit -eq 0){
    If($Test % $9Digit -eq 0){
    If($Test % $8Digit -eq 0){
    If($Test % $7Digit -eq 0){
    If($Test % $6Digit -eq 0){
    If($Test % $5Digit -eq 0){
    If($Test % $4Digit -eq 0){  
    If($Test % $3Digit -eq 0){
    If($Test % $2Digit -eq 0){
    If($Test % $1Digit -eq 0){  
        $Result = $Test}}}}}}}}}}}}}}}}}}}}
    $Mult++
    }
$Result