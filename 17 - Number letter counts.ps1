<#
https://projecteuler.net/problem=17

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
#>


function Get-HundredNumberCharacters([string]$global:FunctionInput){
    If($FunctionInput -eq "1"){return "OneHundred"}
    If($FunctionInput -eq "2"){return "TwoHundred"}
    If($FunctionInput -eq "3"){return "ThreeHundred"}
    If($FunctionInput -eq "4"){return "FourHundred"}
    If($FunctionInput -eq "5"){return "FiveHundred"}
    If($FunctionInput -eq "6"){return "SixHundred"}
    If($FunctionInput -eq "7"){return "SevenHundred"}
    If($FunctionInput -eq "8"){return "EightHundred"}
    If($FunctionInput -eq "9"){return "NineHundred"}
    }

function Get-TenNumberCharacters([string]$global:FunctionInput){
    If($FunctionInput -eq "1"){return "One"}
    If($FunctionInput -eq "2"){return "Two"}
    If($FunctionInput -eq "3"){return "Three"}
    If($FunctionInput -eq "4"){return "Four"}
    If($FunctionInput -eq "5"){return "Five"}
    If($FunctionInput -eq "6"){return "Six"}
    If($FunctionInput -eq "7"){return "Seven"}
    If($FunctionInput -eq "8"){return "Eight"}
    If($FunctionInput -eq "9"){return "Nine"}

    If($FunctionInput -eq "01"){return "One"}
    If($FunctionInput -eq "02"){return "Two"}
    If($FunctionInput -eq "03"){return "Three"}
    If($FunctionInput -eq "04"){return "Four"}
    If($FunctionInput -eq "05"){return "Five"}
    If($FunctionInput -eq "06"){return "Six"}
    If($FunctionInput -eq "07"){return "Seven"}
    If($FunctionInput -eq "08"){return "Eight"}
    If($FunctionInput -eq "09"){return "Nine"}
    If($FunctionInput -eq "10"){return "Ten"}
    If($FunctionInput -eq "11"){return "Eleven"}
    If($FunctionInput -eq "12"){return "Twelve"}
    If($FunctionInput -eq "13"){return "Thirteen"}
    If($FunctionInput -eq "14"){return "Fourteen"}
    If($FunctionInput -eq "15"){return "Fifteen"}
    If($FunctionInput -eq "16"){return "Sixteen"}
    If($FunctionInput -eq "17"){return "Seventeen"}
    If($FunctionInput -eq "18"){return "Eighteen"}
    If($FunctionInput -eq "19"){return "Nineteen"}
    If($FunctionInput -eq "20"){return "Twenty"}
    If($FunctionInput -eq "21"){return "TwentyOne"}
    If($FunctionInput -eq "22"){return "TwentyTwo"}
    If($FunctionInput -eq "23"){return "TwentyThree"}
    If($FunctionInput -eq "24"){return "TwentyFour"}
    If($FunctionInput -eq "25"){return "TwentyFive"}
    If($FunctionInput -eq "26"){return "TwentySix"}
    If($FunctionInput -eq "27"){return "TwentySeven"}
    If($FunctionInput -eq "28"){return "TwentyEight"}
    If($FunctionInput -eq "29"){return "TwentyNine"}
    If($FunctionInput -eq "30"){return "Thirty"}
    If($FunctionInput -eq "31"){return "ThirtyOne"}
    If($FunctionInput -eq "32"){return "ThirtyTwo"}
    If($FunctionInput -eq "33"){return "ThirtyThree"}
    If($FunctionInput -eq "34"){return "ThirtyFour"}
    If($FunctionInput -eq "35"){return "ThirtyFive"}
    If($FunctionInput -eq "36"){return "ThirtySix"}
    If($FunctionInput -eq "37"){return "ThirtySeven"}
    If($FunctionInput -eq "38"){return "ThirtyEight"}
    If($FunctionInput -eq "39"){return "ThirtyNine"}
    If($FunctionInput -eq "40"){return "Forty"}
    If($FunctionInput -eq "41"){return "FortyOne"}
    If($FunctionInput -eq "42"){return "FortyTwo"}
    If($FunctionInput -eq "43"){return "FortyThree"}
    If($FunctionInput -eq "44"){return "FortyFour"}
    If($FunctionInput -eq "45"){return "FortyFive"}
    If($FunctionInput -eq "46"){return "FortySix"}
    If($FunctionInput -eq "47"){return "FortySeven"}
    If($FunctionInput -eq "48"){return "FortyEight"}
    If($FunctionInput -eq "49"){return "FortyNine"}
    If($FunctionInput -eq "50"){return "Fifty"}
    If($FunctionInput -eq "51"){return "FiftyOne"}
    If($FunctionInput -eq "52"){return "FiftyTwo"}
    If($FunctionInput -eq "53"){return "FiftyThree"}
    If($FunctionInput -eq "54"){return "FiftyFour"}
    If($FunctionInput -eq "55"){return "FiftyFive"}
    If($FunctionInput -eq "56"){return "FiftySix"}
    If($FunctionInput -eq "57"){return "FiftySeven"}
    If($FunctionInput -eq "58"){return "FiftyEight"}
    If($FunctionInput -eq "59"){return "FiftyNine"}
    If($FunctionInput -eq "60"){return "Sixty"}
    If($FunctionInput -eq "61"){return "SixtyOne"}
    If($FunctionInput -eq "62"){return "SixtyTwo"}
    If($FunctionInput -eq "63"){return "SixtyThree"}
    If($FunctionInput -eq "64"){return "SixtyFour"}
    If($FunctionInput -eq "65"){return "SixtyFive"}
    If($FunctionInput -eq "66"){return "SixtySix"}
    If($FunctionInput -eq "67"){return "SixtySeven"}
    If($FunctionInput -eq "68"){return "SixtyEight"}
    If($FunctionInput -eq "69"){return "SixtyNine"}
    If($FunctionInput -eq "70"){return "Seventy"}
    If($FunctionInput -eq "71"){return "SeventyOne"}
    If($FunctionInput -eq "72"){return "SeventyTwo"}
    If($FunctionInput -eq "73"){return "SeventyThree"}
    If($FunctionInput -eq "74"){return "SeventyFour"}
    If($FunctionInput -eq "75"){return "SeventyFive"}
    If($FunctionInput -eq "76"){return "SeventySix"}
    If($FunctionInput -eq "77"){return "SeventySeven"}
    If($FunctionInput -eq "78"){return "SeventyEight"}
    If($FunctionInput -eq "79"){return "SeventyNine"}
    If($FunctionInput -eq "80"){return "Eighty"}
    If($FunctionInput -eq "81"){return "EightyOne"}
    If($FunctionInput -eq "82"){return "EightyTwo"}
    If($FunctionInput -eq "83"){return "EightyThree"}
    If($FunctionInput -eq "84"){return "EightyFour"}
    If($FunctionInput -eq "85"){return "EightyFive"}
    If($FunctionInput -eq "86"){return "EightySix"}
    If($FunctionInput -eq "87"){return "EightySeven"}
    If($FunctionInput -eq "88"){return "EightyEight"}
    If($FunctionInput -eq "89"){return "EightyNine"}
    If($FunctionInput -eq "90"){return "Ninety"}
    If($FunctionInput -eq "91"){return "NinetyOne"}
    If($FunctionInput -eq "92"){return "NinetyTwo"}
    If($FunctionInput -eq "93"){return "NinetyThree"}
    If($FunctionInput -eq "94"){return "NinetyFour"}
    If($FunctionInput -eq "95"){return "NinetyFive"}
    If($FunctionInput -eq "96"){return "NinetySix"}
    If($FunctionInput -eq "97"){return "NinetySeven"}
    If($FunctionInput -eq "98"){return "NinetyEight"}
    If($FunctionInput -eq "99"){return "NinetyNine"}
    }



$StartNumber = 1
$Characters = 0


$Characters += ("OneThousand").Length # Rather than adding functions to parse the four digit number, adding it manually for this simple case


While($StartNumber -ne 1000){ 

    [string]$StringNumber = $StartNumber
    
    $NumberName = ""    
    
    If($StringNumber.Length -gt 2){
        $NumberName += Get-HundredNumberCharacters $StringNumber[0]
        $Characters += (Get-HundredNumberCharacters $StringNumber[0]).length
        $StringNumber = $StringNumber.Substring(1, $StringNumber.Length - 1)
        If($StringNumber -ne "00"){
            $NumberName += "And"
            $Characters += 3
            }
        }

    $NumberName += Get-TenNumberCharacters $StringNumber
    $Characters += (Get-TenNumberCharacters $StringNumber).length

    $StartNumber++
}



$Characters