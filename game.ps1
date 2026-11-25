# Player stats inital
$health = 100
$energy = 80
$hunger = 20
$thirst = 30

# Character trust
$MiraTrust = 25
$EliasTrust = 50

function ShowPlayerStats 
{write-host "Health:" $health
write-host "Energy:" $energy
write-host "Hunger:" $hunger
write-host "Thirst:" $thirst}


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
ShowPlayerStats
write-host "----------------------------------------------"
write-host "You decide it's time to move..."
write-host "In the distance, you notice two things.

1. A narrow passage that leads deeper into the cavern.

2. A faint light coming from behind some giant rock formation.
"
$pathchoice = ""
while ($pathchoice -ne "1" -and $pathchoice -ne "2")
 {$pathchoice = read-host "Where do you go?"
 if ($pathchoice -ne "1" -and $pathchoice -ne "2") 
  {write-host "Hmm... Maybe you should think it over."}}

if ($pathchoice -eq "1") 
{write-host "
Carefully, you enter the passage. 
...
The air becomes colder."
write-host "In the distance, you notice a siluette. Slowly, you step closer.
The siluette of a frail woman reveals itself. Immediately after noticing you, 
her dark brown eyes narrow and she quickly hides a worn piece of paper behind her back.
She doesn't utter a word, so you decide to speak first."
write-host "What do you say?
1. You're trying to read that map, aren't you? I think i can help.
2. Why are you hiding that?"
$dchoice = ""
while ($dchoice -ne "1" -and $dchoice -ne "2")
 {$dchoice = read-host "You decide to say"
 if ($dchoice -ne "1" -and $dchoice -ne "2")
  {write-host "Hmm... maybe you should think it over."}}

if ($dchoice -eq "1")
 {write-host "The girl turns away, embarassed. 'No... I'm fine. 
And how would a newcomer like you be of help anyway?' She pauses and seems to be thinking of something.
'I haven't seen you before. You're new here, aren't you?' 
She doesn't wait for your response. 'Anyway... it doesn't matter.' 
She pauses, realising she might've sounded a little too harsh. 
'I appreciate you wanting to help, but i don't think you'll be able to understand the map."
$MiraTrust += 5
write-host "The girl seems to trust you a little more.
Her trust: $MiraTrust/100"}

elseif ($dchoice -eq "2")
 {write-host "She glances at you suspiciously. 'And why do you care? Don't you know the rules here?
In this place, everybody minds their own buisness.'"
$MiraTrust -= 5
write-host "The girl is a little suspicius of you. Her trust: $MiraTrust/100"}}

#ELIAS

elseif ($pathchoice -eq "2")
  {write-host "
You approach the faint light.
...
You hear voices. As you get closer, you notice a group of people walking.
They all seemed to carry worn out bags on their shoulders.
One of them, a gignger-haired man, looks up at you and smiles.
'Oh! I haven't seen you arounnd. You must be a newcomer.'
You nod.
'Me and my group were just going back to the settlement. If you want, you can come with us so i can show you around.'
You think for a moment. Finally, you met actual life down here. But you still have so many questions.
You could:
1. Accept his offer and come with him.
2. Ask him about where the light was coming from and what is this place."

$dchoice = ""
while ($dchoice -ne "1" -and $dchoice -ne "2")
 {$dchoice = read-host "What do you choose?"
  if ($dchoice -ne "1" -and $dchoice -ne "2")
   {write-host "Hmm... maybe you should think it over."}}

if ($dchoice -eq "1")
 {write-host "The man's face lights up. Perfect! I know everybody fears ending up here, 
that's why i want to make everyone feel welcomed.
He pauses, then says 'By the way, my name is Elias. What's yours.'
You tell him your name.
'Oh, and interesting name. I've never heard anything quite like it before. You must be from really far away.
I wonder how did you even end up in a place like this?' He shakes his head.
'Well, that's none of my buisness. Nice to meet you, $name'
You wonder if you should ask him about this place. You hesiate but ultimately decide not to."
$EliasTrust += 5
write-host "Elias seems to trust you a little more. 
Elias' trust: $EliasTrust/100"}
elseif ($dchoice -eq "2")
 {write-host "The man looks around cautiously, then shakess his head.
'This... is not the best place to talk. Let's just... move.'
He starts walking, then looks at you again.
'Come on.' He says before looking back towards the faint light once more, then continuing to walk wih a faster pace."
$EliasTrust -= 5
write-host "Elias is a little suspicious of you. 
Elias' trust: $EliasTrust/100"}}