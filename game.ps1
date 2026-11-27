# Player stats inital
$health = 100
$energy = 80
$hunger = 20
$thirst = 30

# Character trust
$MiraTrust = 25
$EliasTrust = 50

#Limits
if ($MiraTrust -gt 100)
 {$MiraTrust = 100}
if ($MiraTrust -lt 0)
 {$MiraTrust = 0}

if ($EliasTrust -gt 100)
 {$EliasTrust = 100}
if ($EliasTrust -lt 0)
 {$EliasTrust = 0}

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

  #MIRA

if ($dchoice -eq "1")
 {write-host "The girl turns away, embarassed. 'No... I'm fine. 
And how would a newcomer like you be of help anyway?' She pauses and seems to be thinking of something.
'I haven't seen you before. You're new here, aren't you?' 
She doesn't wait for your response. 'Anyway... it doesn't matter.' 
She pauses, realising she might've sounded a little too harsh. 
'I appreciate you wanting to help, but i don't think you'll be able to understand the map."
$MiraTrust += 5
write-host "The girl seems to trust you a little more.
Her trust: $MiraTrust/100"
read-host "Press Enter to continue..."
write-host "She looks at you, as though she wanted to say something.
Just then, a loud toll of a bell can be heard in the distance.
Her face immediately becomes worried. 'We need to run.'
Her eyes scan the souroundings, then land on you.'
'Sorry, I haven't seen you before, so I can't trust you.' She says with guilt.
She hides the map in her bag and begins walking away.
After a few steps, she turns back.
'The bell... It means danger. That's all i can say...'
As those words leave her mouth, her body was already turned away from you.
The girl scutteled away, before you could say anything."
write-host "You are left in the dark passage alone. You look around.
...
There was a deafening silence. Your hands squeeze together.
There was barely any light left, as the girl walked away with her lantern.
Your survival instincts kick in. You decide to:

1. Follow the girl quietly, so she doesn't notice you

2. Wander deeper into the passage. The girl didn't look welcoming either way..."

$pathchoice = ""
while ($pathchoice -ne "1" -and $pathchoice -ne "2")
 {$pathchoice = read-host "You decide that"
 if ($pathchoice -ne "1" -and $pathchoice -ne "2") 
 {write-host "Hmm.. maybe you should think it over."}}

# TO THE SETTELMENT

if($pathchoice -eq "1")
 {write-host "After some hesitation, you start quietly walking after the girl, 
following the light of her lantern.
You try to keep your footsteps light, thus, you can only hear your own breathing.
....
You follow her carefully and soon, the passage starts to widen, the air starts to feel warmer ,
and faint voices echo somwhere ahead.
As you inch closer, you notice... something unusual up ahead.
Light...
Actually,not just one light... but hundreds... hundreds of lights shining somwhere in the distance.
Your pace slows down as you look around you. Your eyes widen.
The walls of the cavern had hunnderds of small, wooden houses. 
Giant, narrow bridges stretched between the walls.
The light that you saw from the distance were coming from the houses, as well as from the lanterns hanging from ropes.
If you would narrow your eyes, you would see people.
Actual people. Just going about their daily lives. As if this was normal. As if they were still above ground."
read-host "Press enter to continue"
write-host "The girl stops by the entrance of the settlement, where two guards werre standing.
One of the guards looks at her. 'Mira, you're back. It's good you came back in time.'
'Yes.' The girl - Mira, replies shortly.
You notice Mira hand them a document. As the soliders are checking it, 
you realise they probably won't let you in that easily.
Just as you were about to walk away, the soldiers finish checking the document and notice you.
'Who are you? I've never seen you before.'
'They're someone i met while scouting. Probably a newcomer.' Mira says, looking at you briefly.
'Do you have a permit?' The guard asks whie looking at you.
You shake your head.
The guards brows furrow. 'That's weird. Usually, every newcomer gets a permit.'
In the distance, the bell could be heard once more.
'Hold on. Tell me your name, maybe i can find you on the list of newcomers.'
The man looks through the list frantically.
'$name... $name... oh... there you go, i found you.'
The guard lets out a relieved breath. 'I will call Rowan...'
'Who?' You mutter quietly, but the guard doesn't hear you.
'The one responsible for the newcomers.' Mira, who's been standing aside, watching you, says.
'Your name is on the list.' She continues bluntly. 'Maybe i was a little wrong with mt first impression about you.'"
$MiraTrust += 10
write-host "Mira seems to trust you a little more. Her trust: $MiraTrust/100"}

elseif ($pathchoice -eq "2")
{write-host "You watch the girl dissapear into the darkness, the light of her lantern getting dimmer and dimmer..
Eventually, you turn the other way. Perhaps following a stranger wasn't exactly the brightest idea.
You continue walking down the passage.
The more you walk, the more noticeable do the sounds around you become.
With the occassional dripping of water, you also hear... voices.
Voices? Here?
You slow down and looks around.
Someone is here..."
read-host "Press Enter to continue...
You slowly follow the source of the voices.
A narrow opening leads deeper into the underground.
You start noticing a faint light coming from afar.
Then, you notice its source. A small cottage on the side of the cavern.
Hesitantly, you approach the small cottage. It's door was opened, so you decide to peek.
Inside, an older woman was sitting beside a table, carefullt wrapping some cloth around someone's arm.
The stone walls of the cottage were full of shelves that were full of glass bottles, hers and books.
'There. That should hold for now'
The injured man smiles gratefully. 'Thank you, Sera.'
'You should be thanking me by actually being more careful next time.'
The woman says with a stern expression.
Just as the man gets up and leaves, she notices you in the doorway.
'Oh hello there.'
She observes your unfamiliar appearance. 'I don't think i've seen you around here before.'"
write-host "You pause and think of what to say.

1. 'I don't know where i am or how i got here. Could you help me?'

2. 'I'm fine. I'm just looking around.'"

$dchoice = ""
while ($dchoice -ne "1" -and $dchoice -ne "2")
 {$dchoice = read-host "What do you choose?"
  if ($dchoice -ne "1" -and $dchoice -ne "2")
   {write-host "Hmm... maybe you should think it over."}}
  
if($dchoice -eq "1")
{write-host "Her expression immediately.
'You don't know where ypu are?' She asks while beginning to approach you.
'Are you hurt? HAve you been wandering through here alone?'
You stay silent, unsure of how to answer.
'Well, you certainly shouldn't be out here by yourself. Come. I'll takke you somwhere safer.'"}

eleseif ($dchoice -eq "2")
{write-host "The woman thinks for a moment.
'I see... well, in my eyes, you look pretty lost while wandering around here.'
She looks around. 'I wouldn't recommend wandering around here alone while not knowing where you're going.'
She gathers her supplies and gets up. 'I'm heading back to the settlement. If you want, you can accompany me.'"}

write-host "You two begin to walk back in the direction you came from.
Eventually, the woman speaks up. 'You must have a lot of questions. Most newcomers do.'
'What is this place?' You ask.
She stays quiet for a little before replying. 'This place... has existed for longer than most people here can remember...'
She notices the curiosity in your eyes. She stays quiet again, longer this time.
'It's... a rather long story.' She says with a sigh.
'I think you'll be better off hearing it from someone who knows how to tell it properly.'"
read-host "Press Enter to continue..."
write-host "Slowly, the passage begins to widen. The air starts feeling warmer. And you notice something.
Light. Not just one. But hundreds. Hundreds of them shining somwhere in the distance.
You slow down and you look around you. Your eyes widen."}}

elseif ($dchoice -eq "2")
 {write-host "She glances at you suspiciously. 'And why do you care? Don't you know the rules here?
In this place, everybody minds their own buisness.'"
$MiraTrust -= 5
write-host "The girl is a little suspicius of you. Her trust: $MiraTrust/100"}
write-host "Suddenly, a bell ringing could be heard. The girl's face immediately hardens.
'I have to go.' She says coldly before turning away from you, walking away in fast, hurried steps."}

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
Elias' trust: $EliasTrust/100"
read-host "Press Enter to continue..."
write-host "Suddenly, a bell could be heard ringing from a distance.
Everybody in the group becomes a little uneasy.
Elias turns to you, trying to not appear panicked himself.
'Alright, let's pick up the pace and get moving.'"}
elseif ($dchoice -eq "2")
 {write-host "The man looks around cautiously, then shakess his head.
'This... is not the best place to talk. Let's just... move.'
He starts walking, then looks at you again.
'Come on.' He says before looking back towards the faint light once more, then continuing to walk wih a faster pace."
$EliasTrust -= 5
write-host "Elias is a little suspicious of you. 
Elias' trust: $EliasTrust/100"}
read-host "Press Enter to continue..."
write-host "You flollow him and his group. 
As all of you move, the ginger looks at you with a small smile.
'My name is Elias, by the way. I'm the guide around these parts.'
As you and the group walked, the loud toll of a bell could be heard.
Elias takes a deep breath. 'Perfect. We'll arive just in time.'"}