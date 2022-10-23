$limit = 1000
$candidate = 2
$primes = @(1, 2)
while($candidate -ne $limit){
    if($candidate % 2 -ne 0){
        $prime = $true
        $testnumbers = @(2..($candidate - 1))
        foreach($testnumber in $testnumbers){
            if($candidate % $testnumber -eq 0){$prime = $false}
            }
        if($prime -eq $true){
        $primes += $candidate
      }
}
$candidate++
}
$primes







$limit = 100000
$candidate = 4
$primes = @(2, 3)
while($candidate -ne $limit){
    if($candidate % 2 -ne 0){
        $prime = $true
        foreach($testnumber in $primes){
            if($candidate % $testnumber -eq 0){$prime = $false}
            }
        if($prime -eq $true){
        $primes += $candidate
      }
}
$candidate++
}
$primes



$input = 13195






## 5, 7, 13 and 29.

