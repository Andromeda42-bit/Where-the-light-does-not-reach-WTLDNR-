Write-Host "Where the sun does not reach (WTSDNR)"
write-host "
INTRODUCTION
"
read-host "Press Enter to continue."
$name = Read-Host "Let your name be known"
Write-Host "
Welcome, $name..."
read-host "Press Enter to continue."
write-host "........."
write-host "You open you eyes..."
write-host "It's dark. You can barely see anything.
The air smells of damp stone. You hear water dropping nearby."
write-host "'Where am i?' you wonder. You sit up and look around. You can barely see anything.
'The night sky hasn't been so dark in ages...', you think as you look around once more.
Just then, your vision starts to adapt. Your eyes narrow. 
This... this doesn't seem like the normal outside world...
Your hand reaches out and touches the nearest surface. Is that stone?"
read-host "Press Enter to continue."
write-host "
------------------------------------------------
Chapter 1
------------------------------------------------"
write-host "You decide it's time to move..."
write-host "In the distance, you notice two things.

1. A narrow passage that leads deeper into the cavern.

2. A faint light coming from behind some giant rock formation.
"

$choice = read-host "Where do you go?"

if ($choice -eq "1") 
{write-host "
Carefully, you enter the passage. 
...
The air becomes colder."}
elseif ($choice -eq "2")
{write-host "
You approach the faint light.
...
You hear voices."}