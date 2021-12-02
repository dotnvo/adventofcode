#Input
"$Env:Userprofile\Documents\Github\adventofcode\2021\day 1"
$SonarReadings = [int[]](Get-Content -Path "$Env:Userprofile\Documents\Github\adventofcode\2021\day 1\input.txt")

#Part 1
$PreviousNumber = $null
$i = 0
ForEach ($item in $SonarReadings) {
    $Calculation = $item - $PreviousNumber
    If ($Calculation -gt 0) {
        $i++

    }
    $PreviousNumber = $item
}

#First Loop has no previous number so we need to remove that as its a false positive and doesn't actually increase
$i = $i - 1
$i

# Part 2

$i = 0
for ($a = 0;$a -lt $SonarReadings.count - 3; $a++) {
$SumFirst = $SonarReadings[$a] + $SonarReadings[$a+1] + $SonarReadings[$a+2]
$SumSecond = $SonarReadings[$a+1] + $SonarReadings[$a+2] + $SonarReadings[$a+3]

if ($SumFirst -lt $SumSecond) {
    $i++
}

}
$i