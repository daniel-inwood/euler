
$Values = @("2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A")
$Suits = @("C", "D", "H", "S")
$CardPool = @()

ForEach($Value in $Values){
    ForEach($Suit in $Suits){
        $CardPool += $Value + $Suit
    }
}
$CardPool


function Get-HandScore {
    param($ThisHand)

    #$ThisHand = "6D 7C 5D 5H 3S"
    #$ThisHand = "5C JC 2H 5S 3D"
<#
Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
Straight Flush: All cards are consecutive values of same suit.
Four of a Kind: Four cards of the same value.
Full House: Three of a kind and a pair.
Flush: All cards of the same suit.
Straight: All cards are consecutive values.
Three of a Kind: Three cards of the same value.
Two Pairs: Two different pairs.
One Pair: Two cards of the same value.
High Card: Highest value card.
#>

$ScoreRoyalFlush = 0
If(
    (
        ($ThisHand -match ".*(T{1}).*") -and
        ($ThisHand -match ".*(J{1}).*") -and
        ($ThisHand -match ".*(Q{1}).*") -and
        ($ThisHand -match ".*(K{1}).*") -and
        ($ThisHand -match ".*(A{1}).*")
    ) -and (
        ([regex]::matches($ThisHand,"C{1}").count -eq 5) -or
        ([regex]::matches($ThisHand,"H{1}").count -eq 5) -or
        ([regex]::matches($ThisHand,"D{1}").count -eq 5) -or
        ([regex]::matches($ThisHand,"S{1}").count -eq 5) 
    )){ $ScoreRoyalFlush = 100 }
$ScoreRoyalFlush

$ScoreStraightFlush = 0
If(   
    ($ThisHand -match "(.){1}(C){1} (.){1}(C){1} (.){1}(C){1} (.){1}(C){1} (.){1}(C){1}") -or
    ($ThisHand -match "(.){1}(H){1} (.){1}(H){1} (.){1}(H){1} (.){1}(H){1} (.){1}(H){1}") -or
    ($ThisHand -match "(.){1}(D){1} (.){1}(D){1} (.){1}(D){1} (.){1}(D){1} (.){1}(D){1}") -or
    ($ThisHand -match "(.){1}(S){1} (.){1}(S){1} (.){1}(S){1} (.){1}(S){1} (.){1}(S){1}")
    ) { $ScoreStraightFlush = 90 }
If($ScoreStraightFlush -gt 0){
    If($ThisHand -match ".*(2{1}).*" -and $ThisHand -match ".*(3{1}).*" -and $ThisHand -match ".*(4{1}).*" -and $ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*"){$ScoreStraightFlush += 1}
    If($ThisHand -match ".*(3{1}).*" -and $ThisHand -match ".*(4{1}).*" -and $ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*"){$ScoreStraightFlush += 2}
    If($ThisHand -match ".*(4{1}).*" -and $ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*"){$ScoreStraightFlush += 3}
    If($ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*"){$ScoreStraightFlush += 4}
    If($ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*"){$ScoreStraightFlush += 5}
    If($ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*"){$ScoreStraightFlush += 6}
    If($ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*" -and $ThisHand -match ".*(Q{1}).*"){$ScoreStraightFlush += 7}
    If($ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*" -and $ThisHand -match ".*(Q{1}).*" -and $ThisHand -match ".*(K{1}).*"){$ScoreStraightFlush += 8}
    If($ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*" -and $ThisHand -match ".*(Q{1}).*" -and $ThisHand -match ".*(K{1}).*" -and $ThisHand -match ".*(A{1}).*"){$ScoreStraightFlush += 9}
}
$ScoreStraightFlush

$ScoreFourKind = 0
If([regex]::matches($ThisHand,"2{1}").count -gt 3){$ScoreFourKind = 81}
If([regex]::matches($ThisHand,"3{1}").count -gt 3){$ScoreFourKind = 82}
If([regex]::matches($ThisHand,"4{1}").count -gt 3){$ScoreFourKind = 83}
If([regex]::matches($ThisHand,"5{1}").count -gt 3){$ScoreFourKind = 84}
If([regex]::matches($ThisHand,"6{1}").count -gt 3){$ScoreFourKind = 85}
If([regex]::matches($ThisHand,"7{1}").count -gt 3){$ScoreFourKind = 86}
If([regex]::matches($ThisHand,"8{1}").count -gt 3){$ScoreFourKind = 87}
If([regex]::matches($ThisHand,"9{1}").count -gt 3){$ScoreFourKind = 88}
If([regex]::matches($ThisHand,"T{1}").count -gt 3){$ScoreFourKind = 89}
If([regex]::matches($ThisHand,"J{1}").count -gt 3){$ScoreFourKind = 89.1}
If([regex]::matches($ThisHand,"Q{1}").count -gt 3){$ScoreFourKind = 89.2}
If([regex]::matches($ThisHand,"K{1}").count -gt 3){$ScoreFourKind = 89.3}
If([regex]::matches($ThisHand,"A{1}").count -gt 3){$ScoreFourKind = 89.4}
$ScoreFourKind 

$ScoreFullHouse = 0
$FullHouseConfirmed = 0
$ScoreFullHouseString = ""
$MatchList = @("1", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A")
ForEach($CardValue in $MatchList){
    If([regex]::matches($ThisHand,"$CardValue{1}").count -eq 3){
        $ScoreFullHouseString += "70" + $CardValue
        $MatchList2 = $Matchlist | Where-Object { $_ -notlike $CardValue }
        ForEach($SubCardValue in $MatchList2){
            If([regex]::matches($ThisHand,"$SubCardValue{1}").count -eq 2){
                $ScoreFullHouseString += "0" + $SubCardValue
                $FullHouseConfirmed = 1
            }
            $ScoreFullHouseString = $ScoreFullHouseString -replace "T","99" -replace "J","999" -replace "Q","9999" -replace "K","99999" -replace "A","999999"
        }
    }
} If($FullHouseConfirmed -eq 1){$ScoreFullHouse = 0 + $ScoreFullHouseString }
While($ScoreFullHouse -gt 80){$ScoreFullHouse = $ScoreFullHouse / 10}
$ScoreFullHouse 

$ScoreFlush = 0
If(
    ($ThisHand -match "(.){1}(C){1} (.){1}(C){1} (.){1}(C){1} (.){1}(C){1} (.){1}(C){1}") -or
    ($ThisHand -match "(.){1}(H){1} (.){1}(H){1} (.){1}(H){1} (.){1}(H){1} (.){1}(H){1}") -or
    ($ThisHand -match "(.){1}(D){1} (.){1}(D){1} (.){1}(D){1} (.){1}(D){1} (.){1}(D){1}") -or
    ($ThisHand -match "(.){1}(S){1} (.){1}(S){1} (.){1}(S){1} (.){1}(S){1} (.){1}(S){1}")
    ){
        $ScoreFlush = 60
    }
$ScoreFlush

$ScoreStraight = 0
If($ThisHand -match ".*(2{1}).*" -and $ThisHand -match ".*(3{1}).*" -and $ThisHand -match ".*(4{1}).*" -and $ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*"){$ScoreStraight = 51}
If($ThisHand -match ".*(3{1}).*" -and $ThisHand -match ".*(4{1}).*" -and $ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*"){$ScoreStraight = 52}
If($ThisHand -match ".*(4{1}).*" -and $ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*"){$ScoreStraight = 53}
If($ThisHand -match ".*(5{1}).*" -and $ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*"){$ScoreStraight = 54}
If($ThisHand -match ".*(6{1}).*" -and $ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*"){$ScoreStraight = 55}
If($ThisHand -match ".*(7{1}).*" -and $ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*"){$ScoreStraight = 56}
If($ThisHand -match ".*(8{1}).*" -and $ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*" -and $ThisHand -match ".*(Q{1}).*"){$ScoreStraight = 57}
If($ThisHand -match ".*(9{1}).*" -and $ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*" -and $ThisHand -match ".*(Q{1}).*" -and $ThisHand -match ".*(K{1}).*"){$ScoreStraight = 58}
If($ThisHand -match ".*(T{1}).*" -and $ThisHand -match ".*(J{1}).*" -and $ThisHand -match ".*(Q{1}).*" -and $ThisHand -match ".*(K{1}).*" -and $ThisHand -match ".*(A{1}).*"){$ScoreStraight = 59}
$ScoreStraight

$ScoreThreeKind = 0
If([regex]::matches($ThisHand,"2{1}").count -eq 3){$ScoreThreeKind = 41}
If([regex]::matches($ThisHand,"3{1}").count -eq 3){$ScoreThreeKind = 42}
If([regex]::matches($ThisHand,"4{1}").count -eq 3){$ScoreThreeKind = 43}
If([regex]::matches($ThisHand,"5{1}").count -eq 3){$ScoreThreeKind = 44}
If([regex]::matches($ThisHand,"6{1}").count -eq 3){$ScoreThreeKind = 45}
If([regex]::matches($ThisHand,"7{1}").count -eq 3){$ScoreThreeKind = 46}
If([regex]::matches($ThisHand,"8{1}").count -eq 3){$ScoreThreeKind = 47}
If([regex]::matches($ThisHand,"9{1}").count -eq 3){$ScoreThreeKind = 48}
If([regex]::matches($ThisHand,"T{1}").count -eq 3){$ScoreThreeKind = 49}
If([regex]::matches($ThisHand,"J{1}").count -eq 3){$ScoreThreeKind = 49.1}
If([regex]::matches($ThisHand,"Q{1}").count -eq 3){$ScoreThreeKind = 49.2}
If([regex]::matches($ThisHand,"K{1}").count -eq 3){$ScoreThreeKind = 49.3}
If([regex]::matches($ThisHand,"A{1}").count -eq 3){$ScoreThreeKind = 49.4}
$ScoreThreeKind 

$ScoreTwoPair = 0
$TwoPairConfirmed = 0
$ScoreTwoPairString = ""
$MatchList = @("1", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A")
ForEach($CardValue in $MatchList){
    If([regex]::matches($ThisHand,"$CardValue{1}").count -eq 2){
        $ScoreTwoPairString += "30" + $CardValue
        $MatchList2 = $Matchlist | Where-Object { $_ -notlike $CardValue }
        ForEach($SubCardValue in $MatchList2){
            If([regex]::matches($ThisHand,"$SubCardValue{1}").count -eq 2){
                $ScoreTwoPairString += "0" + $SubCardValue
                $TwoPairConfirmed = 1
            }
            $ScoreTwoPairString = $ScoreTwoPairString -replace "T","99" -replace "J","999" -replace "Q","9999" -replace "K","99999" -replace "A","999999"
        }
    }
} If($TwoPairConfirmed -eq 1){$ScoreTwoPair = 0 + $ScoreTwoPairString }
While($ScoreTwoPair -gt 40){$ScoreTwoPair = $ScoreTwoPair / 10}
$ScoreTwoPair 

$ScoreOnePair = 0
If([regex]::matches($ThisHand,"2{1}").count -gt 1){$ScoreOnePair = 21}
If([regex]::matches($ThisHand,"3{1}").count -gt 1){$ScoreOnePair = 22}
If([regex]::matches($ThisHand,"4{1}").count -gt 1){$ScoreOnePair = 23}
If([regex]::matches($ThisHand,"5{1}").count -gt 1){$ScoreOnePair = 24}
If([regex]::matches($ThisHand,"6{1}").count -gt 1){$ScoreOnePair = 25}
If([regex]::matches($ThisHand,"7{1}").count -gt 1){$ScoreOnePair = 26}
If([regex]::matches($ThisHand,"8{1}").count -gt 1){$ScoreOnePair = 27}
If([regex]::matches($ThisHand,"9{1}").count -gt 1){$ScoreOnePair = 28}
If([regex]::matches($ThisHand,"T{1}").count -gt 1){$ScoreOnePair = 29}
If([regex]::matches($ThisHand,"J{1}").count -gt 1){$ScoreOnePair = 29.1}
If([regex]::matches($ThisHand,"Q{1}").count -gt 1){$ScoreOnePair = 29.2}
If([regex]::matches($ThisHand,"K{1}").count -gt 1){$ScoreOnePair = 29.3}
If([regex]::matches($ThisHand,"A{1}").count -gt 1){$ScoreOnePair = 29.4}
$ScoreOnePair

$ScoreHighCard = 0
If($ThisHand -match ".*(2{1}).*"){$ScoreHighCard = 11}
If($ThisHand -match ".*(3{1}).*"){$ScoreHighCard = 12}
If($ThisHand -match ".*(4{1}).*"){$ScoreHighCard = 13}
If($ThisHand -match ".*(5{1}).*"){$ScoreHighCard = 14}
If($ThisHand -match ".*(6{1}).*"){$ScoreHighCard = 15}
If($ThisHand -match ".*(7{1}).*"){$ScoreHighCard = 16}
If($ThisHand -match ".*(8{1}).*"){$ScoreHighCard = 17}
If($ThisHand -match ".*(9{1}).*"){$ScoreHighCard = 18}
If($ThisHand -match ".*(T{1}).*"){$ScoreHighCard = 19}
If($ThisHand -match ".*(J{1}).*"){$ScoreHighCard = 19.1}
If($ThisHand -match ".*(Q{1}).*"){$ScoreHighCard = 19.2}
If($ThisHand -match ".*(K{1}).*"){$ScoreHighCard = 19.3}
If($ThisHand -match ".*(A{1}).*"){$ScoreHighCard = 19.4}
$ScoreHighCard


$ScoreCollection = @($ScoreRoyalFlush, $ScoreStraightFlush, $ScoreFourKind, $ScoreFullHouse, $ScoreFlush, $ScoreStraight, $ScoreThreeKind, $ScoreTwoPair, $ScoreOnePair, $ScoreHighCard)
$HandScore = $ScoreCollection | Measure-Object -Maximum
$HandScore = $HandScore.Maximum

return $HandScore


}

#####################################################################

$RawCards = (Get-Content -Path Poker.txt) -split "`r"

$P1Wins = 0
$P2Wins = 0

$Deal = 0

While($Deal -lt 1000){

$ThisDeal = $RawCards[$Deal]

$P1Hand = $ThisDeal.Substring(0,   14)
$P2Hand = $ThisDeal.Substring(15,  14)

$P1Score = (Get-HandScore $P1Hand) | Measure-Object -Maximum
$P2Score = (Get-HandScore $P2Hand) | Measure-Object -Maximum


If($P1Score.Maximum -gt $P2Score.Maximum){$P1Wins++}
If($P2Score.Maximum -gt $P1Score.Maximum){$P2Wins++}

If($P2Score.Maximum -eq $P1Score.Maximum){$ThisDeal}

$Deal++
}

Write-Host "Player 1 wins:" $P1Wins
Write-Host "Player 2 wins:" $P2Wins











