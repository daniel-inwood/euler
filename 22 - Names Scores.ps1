<#
https://projecteuler.net/problem=22

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 
3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 * 53 = 49714.

What is the total of all the name scores in the file?
#>

$NamesListRaw = (Get-Content -LiteralPath "C:\Users\Daniel\Desktop\Git Repo\Euler\euler\Names.txt").Split(',') -replace '"'
$NamesListSorted = $NamesListRaw | Sort-Object 

$ScoreGrandTotal = 0

$Alphabet = @()
ForEach ($AsciiCharacter in (65..90)) { ## Adding each letter to an array to reference it's position in the alphabet later
    $Alphabet += [char]$AsciiCharacter
    }


$ListPosition = 1
ForEach($Name in $NamesListSorted){
    $NameScore = 0
    $Index = 0
    ForEach($Letter in $Name[0..$Name.Length]){
        $NameScore += $Alphabet.IndexOf($Name[$Index]) + 1
        $Index ++
        }
    $NameFinalScore = $NameScore * $ListPosition
    # Write-Host $Name $NameScore $ListPosition $NameFinalScore # debug
    $ScoreGrandTotal += $NameFinalScore
    $ListPosition ++
    }

$ScoreGrandTotal