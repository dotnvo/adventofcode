#Input
"$Env:Userprofile\Documents\Github\adventofcode\2021\day 2"
$data = (Get-Content -Path "$Env:Userprofile\Documents\Github\adventofcode\2021\day 2\input.txt")

#Part 1
[int]$HorizontalCounter = 0
[int]$DepthCounter = 0

ForEach ($item in $data) {
    $Direction = $item.split(' ')[0]
    [int]$Count = $item.split(' ')[1]

    If ($direction -eq 'Forward') {
        $HorizontalCounter = $HorizontalCounter + $Count
    } 

    if ($direction -eq 'Down') {
        $DepthCounter = $DepthCounter + $Count
    }
    if ($direction -eq 'up') {
        $DepthCounter = $DepthCounter - $Count
    }

}
$Final = $DepthCounter * $HorizontalCounter
$Final
#Part 2

[int]$HorizontalCounter = 0
[int]$DepthCounter = 0
[int]$aim = 0

ForEach ($item in $data) {
    $Direction = $item.split(' ')[0]
    [int]$Count = $item.split(' ')[1]

    if ($direction -eq 'Down') {
        $aim = $aim + $Count
    }
    if ($direction -eq 'up') {
        $aim = $aim - $Count
    }

    If ($direction -eq 'Forward') {
        $HorizontalCounter = $HorizontalCounter + $Count
        if ($aim -ne 0) {
            $DepthCounter = $DepthCounter + ($Count * $aim)
        }
    } 

}
$Final = $DepthCounter * $HorizontalCounter
$Final