
List<String> players = [];
int index=0;
List<int> scores = [];


List <String> truth = ["If you had the chance to be invisible for one day what would you do?",
"If you had to live with only one object what would it be?",
"If you had a time machine, what year would you go to?",
"If you had a gift of 1000 to give to someone in this room, who would it be and why?",
"when was the last time you faked being sick to get out of something?",
"what is your least favourite thing about the person on your right?",
"what is your biggest dream?",
"If you were granted two wishes, what would you ask for?",
"Name something you've always wanted, but is too expensive to buy.",
"What talent do you have, that is embarrassing to share?",
"Have you ever stolen anything?",
"What is your favorite thing about the person on your left?",
"Who's your favorite singer?",
"How would you describe",
"yourself in 3 words?",
"When was the last time you Googled your own name?",
"Who is your personal hero?",
"What is one dare you would never do?",
"When was the most inappropriate time you farted?",
"What is your favorite hobby?",
"Who is wearing the worst outfit in the room?",
"What is the longest time you think you could go without your phone?",
"What is your favorite food?",
"What is your worst fear?",
"What is the stupidest",
"thing you've done because someone dared you to?",
"Spill the last secret someone told you?",
"Do you Google new people you meet?",
"What is the last lie you told?",
"Admit to something dumb you did recently",
"What is the worst gift you've ever received?",
"What is your least favorite thing about the person on your left?",
"If your life was made into a movie, who would play you?",
"What is the weirdest thing you have ever eaten?",
"If you could be any animal, which one would you be and why?",
"What is your guilty pleasure?",
"What is your favorite song?",
"What is your favorite movie?",
"Who do you think has the best hair in the room?",
"What's your most embarrassing nickname?",
"Tell everyone in the group your most embarrassing story",
"On a scale of 1 to 10, how good looking would you rate yourself?",
"Who is your favorite TV character?",
"If you had the chance to be invisible for one day, what would you do?",
"Have you ever cheated in an exam?",
"What is something you stole?",
"Which player would you like to swap lives with for a week?",
"What were your first impressions of the player opposite you?",
"What is something that you have never told anyone?",
"What's the longest you have gone without showering?",
"What is the stupidest thing you have ever done?",
"What one person do you text the most?",
"Who's the smelliest person in the room?",
"What is the grossest thing you've ever eaten?",
"What animal are you most afraid of?",
"If you had to live with only one object what would it be?",
"If you could dye your hair any color, what color would you pick?",
"What is your favorite thing to do on the weekends?",
"Who in this room would you like to be stuck on a boat with?",
"If you were locked up in a room with a person from this room, who would you choose and why?",
"What question would you like to ask another player?",
"What secret are you scared of people finding out about you?",
"If you could be alone on an island with only one person who would it be?",
"What is the best thing you have ever gotten away with?",
"Who is the best cook you know?",
"If you could be a superhero, what would your power be?",
"If you had one day to spend 1 million dollars, what would you do?",
"If you weren't here, what would you be doing?",
"Who is the one person in the world you hate the most?",
"What music are you embarrassed to admit you listen to?",
"What is your dream job?",
"Who is your best friend?",
"What is one talent you wished you possessed?",
"What is your most disgusting habit?",
"What were your first impressions of the person to your right?",
"What do you want to do when you are older?",
"What is the most embarrassing thing in your bedroom?",
"Pick one: Money, Power, Fame?",
"When was the last time you peed in bed?",
"What is the last book you've read?",
"What is your favorite thing about the person on your left?",
"What is the meanest thing you have ever done?",
"Which player would you like to swap lives with for a week?",
"If you could dye your hair any color, what color would you pick?",
"What is the best thing you have ever gotten away with?",
"When was the last time you faked being sick to get out of something?",
"If you had the chance to be invisible for one day, what would you do?",
"What is your favorite song?",
"Admit to something dumb you did recently.",
"What is one talent you wished you possessed?",
"What is the meanest thing you have ever done?",
"What is your worst fear?",
"What is the grossest thing you've ever eaten?",
"What is your worst habit?",
"Who is or was your secret crush? ??",
"Did you ever lie about why you were too late?",
"What's the worst meal your mum or dad ever made?",
"Would you rather have a pet or a sibling?",
"Have you ever peed in your bed or in a swimming pool?",
"Which celebrity would you want to be, and why?",
"Have you ever cried during a movie? ??",
"Do you ever cheat on chores, and what are your excuses?",
"Have you ever skipped school?",
"What do you want to be when you grow up?",
"Are you afraid of the dark?",
"What's your scariest nightmare?",
"What is the one thing you would change about yourself?",
"If you had a genie in a bottle, what three things would you wish for?",
"What is your favorite vegetable?",
"What was the most embarrassing time you farted?",
"Which celebrity would you be and why?",
"Have you faked being sick to stay home from school?",
"What is the dumbest thing you've ever done around someone you liked?",
"Have you ever cried during a movie?",
"What is the most embarrassing thing you have posted on social media?",
"What is one thing that you wish you were better at doing?",
"When was the last time you did something nice for somebody else?",
"Have you ever broken something and not told anyone?",
"Have you ever used lunch money on something you shouldn't?",
"When was the last time your room was cleaned?",
"Is there anything hidden under your bed?",
"Do you have hidden snacks in your room?",
"Have you ever pretended to finish your dinner?",
"Have you cheated on a test?",
"How was your first kiss?",
"Who do you have a crush on?",
"What is one annoying thing about every person in the room?",
"What was the biggest joke you've ever played on someone?",
"If you could have any one thing in the world what would it be?",
"What is the strangest dream you've had?",
"Who is your favorite person in the room?",
"What do you like most about everyone in the room?",
"Have you ever lied to a teacher, and what was it about?",
"Who is your favorite superhero?",
"Do you sneak snacks when nobody's looking?",
"What's the dumbest thing you've ever said around someone you like?",
"Would you rather have a sibling or a pet?",
"What is a word that you've made up?",
"Who is your imaginary friend?",
"If you had a genie what 3 things would you wish for?",
"If you could choose your name what would it be?",
"What makes you bored out of your mind?",
"What is your secret superpower?",
"Which Harry Potter character would you be and why?",
"What is the most annoying sound?",
"If you had a time machine what time period would you visit?",
"If you had a pet dinosaur which would you pick?",
"Would you rather be a princess/prince or a mermaid/man?",
"Who is your best friend?",
"What do you want to do when you grow up?",
"Do you prefer to sing or to dance?",
"Can you speak a different language?",
"What are the birthdays of your family members?",
"What is your favorite fruit?",
"Have you ever peed the bed?",
"Have you cried in public?",
"Have you hidden test results?",
"Have you fed your vegetables to the dog?",
"Are you afraid of ghosts?",
"Can you be alone in a dark room?",
"Have you cheated on a test?",
"Have you watched a horror movie alone? ",
"What is the last lie you told?",
"When was the last time you cleaned up your room?",
"Have you ever broken something in the house and blamed a sibling?",
"What was your most embarrassing moment?",
"What is the funniest thing you have ever seen?",
"When was the last time you laughed?",
"Who is your funniest friend, and why?",
"Which cartoon characters does the player to your right look like?",
"Have you ever snooped to find what you were getting for Christmas?",
"What is your weirdest talent?",
"What is the funniest thing that ever happened at school?",
"What is your favorite joke?",
"What is the funniest thing the family pet has ever done?",
"Have you ever played a prank on someone?",
"What is the clumsiest thing you have ever done?",
"What is something you would never admit to anyone?",
"What is the weirdest thing about your family?"];

List <String> dare = [
"Go outside and yell \"Merry Christmas!\"",
"Go next door and ask the neighbors to borrow a random item.",
"Lick your elbow.",
"Sing a song with a silly voice.",
"Don't laugh while the other players try to make you laugh.",
"Imitate another player.",
"Do a silly dance.",
"Eat a spoonful of sugar.",
"Drink a glass of water with salt in it.",
"Prank call a friend.",
"Try to do a cartwheel.",
"Eat something without using your hands.",
"Try not to blink for 30 seconds.",
"Imitate a cartoon character.",
"Hold an ice cube in your hand until it melts.",
"Talk with your tongue sticking out.",
"Draw or write something while holding the pen in your mouth.",
"Eat a spoonful of peanut butter and try singing.",
"Try saying something with your mouth closed.",
"Talk using the third person until the next turn.",
"Sing every time you want to say something until the next turn.",
"Spin ten times and try performing a simple task.",
"Talk and act like a cowboy.",
"Stand on your hands.",
"Draw something blindfolded.",
"Go outside and wave at the people you see.",
"Try to moonwalk.",
"Borrow an item of clothing from another player and wear it until the next turn.",
"Pour some cold water on your head.",
"Eat some crackers and try to whistle.",
"Wear socks on your hands until the next turn.",
"Hold your breath for ten seconds.",
"Try jumping on one foot.",
"Wear a silly hat until the next turn.",
"Talk with a foreign accent until the next turn.",
"Do ten pushups.",
"Go get an item from another room while wearing a blindfold.",
"Try juggling with some eggs.",
"Wear your socks on your hands until the next turn.",
"Mix different soft drinks and drink the mixture.",
"Speak in a made-up language until the next turn.",
"Try eating something while wearing a blindfold.",
"Dance with no music.",
"Do the Macarena.",
"Act out a funny story.",
"Tell jokes until another player laughs.",
"Talk with a different accent every time you say something until the end of the game.",
"Sing a song without opening your mouth and let the other players guess the song.",
"Dance like a ballet dancer.",
"Stack some items to build the tallest tower possible.",
"Give a piggyback to another player.",
"Choose a random item in the room and make up a story about it.",
"Keep a straight face while the rest of the group tries to make you laugh",
"Pretend to ride a horse.",
"Eat pudding or jello without your hands.",
"Go outside and do the chicken dance.",
"Don't laugh while everyone else tries to make you for 1 minute.",
"Do a crazy dance to your favorite song.",
"Pretend to be your favorite character from a movie.",
"Balance a spoon on your nose for ten seconds",
"Have the rest of the group wrap your whole body in toilet paper.",
"Do the chicken dance",
"Hold an ice cube in your hand until it melts",
"Say the alphabet backward",
"Do an impression of the person to your right",
"Try to lick your nose",
"Let the person on your left do your hair however they want",
"Sing everything you say for the next 20 minutes to the tune of \"Happy Birthday\"",
"Act like a dog and have everyone pet you",
"Draw a mustache on your face",
"Stand outside and sing your favorite song at the top of your lungs",
"Pretend to slip on a banana peel",
"Write a text using your nose only",
"Draw a picture using your mouth to hold the pencil",
"Do jumping jacks until your next turn",
"Drink a glass of salt water",
"Don't move for a whole minute",
"Keep water in your mouth while everyone tries to make you laugh",
"Stand on your head",
"Make up a story about a random object in the room",
"Sing a song with your mouth closed while everyone tries to guess the song",
"Eat a piece of cake without using your hands",
"Sit on a balloon until it pops",
"Spin ten times and try to walk in a straight line",
"Sing the alphabet without moving your mouth",
"Yell the first word that comes to your mind right now",
"Balance a ball on top of your head"
];

