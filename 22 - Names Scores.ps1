<#
https://projecteuler.net/problem=22

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 
3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 * 53 = 49714.

What is the total of all the name scores in the file?
#>

$NamesListRaw = (Get-Content -LiteralPath "C:\Users\wigan\Desktop\Git Repo\Euler\euler\Names.txt").Split(',') -replace '"'
$NamesListSorted = $NamesListRaw | Sort-Object 
#$NamesListSorted = $NamesListSorted[0..1] #################################################

$LetterScore = @{}
$Alphabet = @()
ForEach ($AsciiCharacter in (65..90)) {$Alphabet += [char]$AsciiCharacter}

$Count = 1
ForEach($Letter in $Alphabet){
    $LetterScore.add($Letter, $Count)
    $Count++
   }

$RunningTotal = 0
$NamePosition = 0
ForEach($Name in $NamesListSorted){
    $LetterCursor = 0
    $NameScore = 0
    While($LetterCursor -lt $Name.Length){
        $NameScore += $LetterScore[$Name[$LetterCursor]]
        $LetterCursor++
        }
    $NamePosition++
    $RunningTotal += ($NamePosition * $NameScore)
    }

$RunningTotal


