<#
https://projecteuler.net/problem=9

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which a2 + b2 = c2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
#>



$Range = @(0..1000)

#While($NumProd -ne 1000){
    ForEach($Entry1 in $Range){
        $Num1 = $Entry1
        ForEach($Entry2 in $Range){    
            $Num2 = $Entry2
            
            If($Num2 -gt $Num1){

                $Num1Sq = $Num1 * $Num1
                $Num2Sq = $Num2 * $Num2
                
                $Num3Sq = $Num1Sq + $Num2Sq
                               
                $Num3 = [Math]::sqrt($Num3Sq)

                If(
                    ($Num3 -gt $Num2) -and
                    ($Num3 % 1 -eq 0)
                    ){
                
                        $NumProd = $Num1 + $Num2 + $Num3
                        
                        If($Numprod -eq 1000){
                            $Results = ("`n`n" + $Num1 + " + " + $Num2 + " + " + $Num3 + " = " + $NumProd)
                            $FinalProduct = $Num1 * $Num2 * $Num3
                            }
                        
                                                
                        Write-Host "`n`n $Num1"+" $Num2 "+" $Num3 "=" $NumProd "
                }
            }
        
        }
    
    
    
    }
#}



$Results
$FinalProduct



############### tidy me uuuuuuuuuuuuuup
