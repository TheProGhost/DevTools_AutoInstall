# select language
Write-Output "Select Language of your choice:"
Write-Output "1. C/C++"
Write-Output "2. Python"
Write-Output "(For multiple choice add space between them like: 1 2 3)"
$choice = Read-Host -Prompt "Enter choice "

# converting input values to array and removing space
$values =@()
for($i=0; $i -lt $choice.Length; $i++){
    if($choice[$i] -ne " "){
            $values += $choice[$i]
    }
}

Write-Output $values

# switch case for the language installation
switch($values){
    1 {"1st language"}
    2 {"2nd language"}
    Default {"Wrong choice selected."}
}