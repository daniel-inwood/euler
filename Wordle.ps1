$RawList = Get-Content -LiteralPath "C:\Users\wigan\Desktop\Git Repo\Euler\euler\Word List.txt"


$ValidWordList = @()

ForEach($RawWord in $RawList){
    If($RawWord.length -eq 5){
        $ValidWordList += $RawWord
        }
    }


$Word = $ValidWordList | Get-Random

$Word





$Guess1 = Read-Host "Enter your guess: "












