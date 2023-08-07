# coxv2ahiosetpopulate
Populating IO sets on v2 (i24) City of Heroes ourodev private servers

TLDR if you just want the text file to paste into your server that's here too. All recipes set to cost 10k just so they can't be vendored for profit. Purples not included.

This is a way to generate a text file to let a v2 Ourodev admin populate IO set recipes into the auction house. This is helpful for small private servers without enough players to support a game economy where players trade recipes amongst themselves.

This script uses AutoHotkey v2 and was created by mlaramie, who doesn't have a github and doesn't care to so I'm posting it in my own github that I made just to complain about other github projects.

Method:

Open the script in Autohotkey v2 and press play.

Press the numpad + key.

A prompt appears asking for the name of the enhancement. This is the AH-recognized name. If you go to https://wiki.ourodev.com/view/I25_Populate_Auction_Server (a script that purportedly works in i25) you will find text lines that look like this:

/fakeauc_add_recipe "Razzle_Dazzle_A_20" 30000 3000 ""

Here, "Razzle_Dazzle" is the name we want (without the quotes). Enter this into the prompt box.

A file called "fakeauc.txt" is then appended with lines for all 6 possible enhancement slots, ranging from level 5 to 50 in increments of 5.

Repeat this for every enhancement set name.

==START HERE IF YOU'RE JUST USING THE TEXT FILE==

Now log into the game with a character with console privileges (a GM character). Press the tilde (~) to bring down the console. Copy paste the contents of fakeauc.txt into the console. Your client will likely freeze for about a minute; just wait.

Any command that refers to an IO slot that doesn't exist (like slot f on a set with only 4 slots) or at an impossible level (level 45 on a set that caps at 30) will return an error.

Give the AH a few minutes to populate and check to make sure your recipes are available.

If you want to add salvage there are other lists you can paste. https://pastebin.com/kQswz0Cc for example.
