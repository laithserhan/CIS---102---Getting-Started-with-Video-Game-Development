**By the end of this week you should be able to:**
1. Identify Fantasy Consoles and what they are for.
1. Install PICO-8 and find the folders associated with it.
1. Understand what each part of PICO-8 is for.
1. Install PICO-8 games and import them.
1. Find the PICO-8 Manual, Resources, and Community

# Welcome to your first day with PICO-8! 

You might be asking yourself, "What the hell is PICO-8?" 

Well, PICO-8 is what is called a "Fantasy Console" which doesn't really answer the question. What i'd offer is that one of the best descriptions I found for what a fantasy console is comes from [this article](https://medium.com/@G05P3L/fantasy-console-wars-a-guide-to-the-biggest-players-in-retrogamings-newest-trend-56bbe948474d).

```The PICO-8 seeks to emulate the aesthetics and community of 1980s home computing for a modern audience. Folks who grew up with these early home computers, such as the BBC Micro, Commodore 64 & ZX Spectrum, often programmed software for them via a built-in BASIC interpreter, creating games and apps that were shared through cassette tapes and floppy disks.```

The nice part about the fantasy console world is that they are: 
1. Easy to use.
1. Easy to learn.
1. Provide endless possibility.

During this course, you will be working on making your own game for people to play. While finishing the game depends on you, the class will help you along with grades and milestones.

## Table of Contents
1. [PICO-8](#pico-8)
1. [Command Line](#command-line)
1. [SPLORE](#splore)
1. [User-Interface](#user-interface)
1. [File Structures and Locations](#file-structures-and-locations)
1. [Useful Text Commands](#useful-text-commands)
1. [Other Games](#other-games)
1. [A Cheat Sheet](#a-cheat-sheet)

## PICO-8
This is your programming environment for the class and nearly all of your content is going to be run from this little program. According to the manual, which you can find here: [PICO-8 Manual](https://www.lexaloffle.com/pico-8.php?page=manual), PICO-8 is:

```PICO-8 is a fantasy console for making, sharing and playing tiny games and other computer programs. When you turn it on, the machine greets you with a shell for typing in Lua programs and provides simple built-in tools for creating sprites, maps and sound.```

```The harsh limitations of PICO-8 are carefully chosen to be fun to work with, encourage small but expressive designs and hopefully to give PICO-8 cartridges their own particular look and feel.```

Let's unpack this a little. First, PICO-8 is a console much like the *Nintendo Switch*, *Playstation 4*, or *Xbox One*. This means that PICO-8 is primarily a tool for video game playing. This also means that PICO-8, much like the mentioned systems, can only run games that are made for it. We call this proprietary format. Also much like the other video game consoles, PICO-8 has competitors. 

Next, the term, *"harsh limitations* should stand out and also the word lua as these two things are related. Lua is a programming language that you might have already encountered in video games. For example, addons for games like *World of Warcraft*, *Gary's Mod*, or even some forms of Minecraft are made using Lua. At its core, Lua is a programming language that is "lightweight" yet very powerful. PICO-8 uses Lua but restricts many of its abilities in order to foster creative problem solving. 

Limitations are one of the first things we need to think about in video games as they are the reason games are fun. I like this quote from the philosopher Ian Bogost From his book [Play Anything](http://bogost.com/books/play-anything/):

```play is what happens when we accept limitations, narrow our focus, and—consequently—have fun.``` 

When we start a video game, we know that we'll be using a device to input commands through an interface of some kind. That interface is not natural. It relies on signals going from our eyes to our brain to our fingers and through reasoning centers, through various aspects of our physiology. Mentally, when we're new to a game - much like we might be new to programming - things can be unfun for a while. Remember this as we begin.

PICO-8, like video games, are limited in their capacity in interesting ways. We'll get in to this as we move forward. 

In the next section, i'll go over many of the interfaces in brief.

## Command Line
![The Command Line](/course%20documents/pics/lecture/week1/command.png)

This is the command line as it looks after booting up the console (clicking on the PICO-8 icon to start it). Here, you can enter commands like "cls" to clear the screen or "install_demos" to install demonstration files. You could also type "splore" to get to the exploration menus. For now, just type in "splore" - NOTE: *for commands, for all typing, you will be typing only in lower case letters.*

## SPLORE
![The Command Line](/course%20documents/pics/lecture/week1/splore.png)

The SPLORE menu is a tiny graphic interface that let's you look at various *cartridges* for PICO-8. In this case, a *cartridge* is a tiny text file with the file extension ".p8". 

```A file extension is the stuff that comes after the . in a file name. For example, if you look at the title of the lecture file here, you'll see a ".md" after the title, "Welcome! Variables and What's What." The ".md" tells my computer - any computer - that this is a file that should be opened with anything associated with ".md". In my case, this is just the notepad but it could also be any program that accepts "markdown" files.```

As you look around this menu, click on a few games and see what they're about. Don't worry if you get lost and have to close PICO-8, that will stop happening as you get more familiar with it. 

This menu includes the following submenus:

* new
	* These are new games released to the PICO-8 Cartridges website.
* featured
	* These are featured games for PICO-8. Right now, the game Celeste will be featured heavily here.
* work in progress
	* These are games that are uploaded but not complete. Check them out, you can also navigate to the BBS thread in the menus to talk about the game if you see something that might need fixed. 
* collaboration
	* There is a trend in the PICO-8 community for so-called, "17-1" games. This means that the limited space in a game cartridge has to be filled up by 17 games. They're really fun to work on and should be something to aim for in the future.
* jam
	* Game Jams happen all the time. These are usually short time-frame themed sessions that task creators with making a game based on a theme. So, "the chess jam" challenges game makers to create a chess game in a week. Or, the Cyberpunk Jam tasked folks with making cyberpunk themed games in 12 days. You will usually work on a team and you will learn more about game design, programming, and making it work than anything you've done until that point. 
* search
	* Search for games by word.
* current folder
	* This is the file listing of the folder your PICO-8 is currently pointed at. 
* favorites
	* Mark games as favorite and they'll show up here. 

Play around here and get to know the types of games that show up for PICO-8. You'll note that all of them share a certain aesthetic quality based on the sprite editor but that all of them are unique. After this class, you'll be able to start lending your ideas to that uniqueness.

Next, we'll talk about the interface that comes up if you hit the "ESCAPE" key at the command line. 

## User-Interface

The user interface for PICO-8 is where all of the design occurs. Not only can you manipulate any game's code, you can also load PICO-8 on certain hardware and program on the go. For example, the [Pocket Chip](https://getchip.com/pages/pocketchip) is a lightweight, hand-held system that can run PICO-8. If you have to go to work, go to class, or go anywhere you can take it with you. 

So the user interface contains the following screens:

### Code Editor
![The Command Line](/course%20documents/pics/lecture/week1/code.png)

### Sprite Editor
![The Sprite Editor](/course%20documents/pics/lecture/week1/sprite.png)

### Map Editor
![The Command Line](/course%20documents/pics/lecture/week1/map.png)

### Sound Effects Editor
![The Command Line](/course%20documents/pics/lecture/week1/sound.png)

### Music Editor
![The Command Line](/course%20documents/pics/lecture/week1/music.png)

## File Structures and Locations

One the things that you might know about your computer is that it consists of a large number of files that all have three kinds of information before we even get to the contents.

1. The name of the file (e.g. filename.txt)
1. An extension that indicates to the operating system what kind of file it is. (The .txt in filename.txt tells your computer it is a txt or text file and to open the appropriate program to open that program.)
1. A location in the file structure that makes up your computer.
	* (e.g. C:\Users\nickl\Dropbox\Bellevue Work\GAME\CIS 102\GAME-102---PICO-8-\lectures\filename.txt)

For PICO-8 this is no different. There is a program called PICO-8 that exists inside of your computer's file structure in predictible locations. There is also a folder inside of your computer's file structure that holds all of the cartridges you create, cartridges you download, and other files that are needed to run them. 

You can find this folder most easily by typing, "Folder" in the command line on PICO-8. There are also a bunch of other commands that do things in the command line. Commands like `run` or `help`. Knowing these commands can save you time and effort, can lower your overall frustration with learning this stuff. 

Here is a list of useful commands to consider. What they do should be a little self-evident but I leave it to you to try them out.

## Useful Text Commands
(a lot of this is from the [wiki](http://pico-8.wikia.com/wiki/CommandReference))
* Help and information
  * help
  * info
  * install_demos
  * keyconfig
  * splore
* Files and folders
  * cd [dirpath]
  * export filename
  * folder
  * import filename
  * load filename
  * ls
  * mkdir dirname
  * save [filename]
* Running and quitting Edit
  * reboot
  * resume
  * run
  * shutdown

## Other Games
If you head to [The PICO-8 Carts Page](https://www.lexaloffle.com/bbs/?cat=7#sub=2&mode=carts), you'll see a bunch of games you can play. Click on the picture and the game will load. Click on the name and you'll go to a page that has the game to play plus a number of other commands. Under the game you should see: 

``` Cart [the cart number] | Copy | Code | The Date of upload | Link ```

	Note that `copy` is not always available. This is due to the ways that licensing has been evolving.

The Cart Number is the number assigned to the cart the time it was first uploaded. This number will not change as it is updated. While this number is not exactly the most exciting, knowing the number can help you on occasion. 

`copy` and `code` are the two clickable items that are super important. The first item allows you to import the entirity of the game into PICO-8 whereas the second allows you to import just the code. 

	Note that `copy` is not always available. This is due to the ways that licensing has been evolving.

What is the difference between these two? Well: 
* `Copy` will include things like graphics and sound. This is the complete game.
* `Code` will just show you the code that makes up the game. 

`Code` is useful for when you are trying to solve coding problems and want to see how a similar game accomplished a particular issues. Copy is useful for that as well but also includes sprites and sounds in case you want to "borrow" them. (*remember to cite where you get stuff from~*)

### Installing games via Copy
To install a game via the copy link from the website, you simply click on the `copy' button and copy the data like normal. Once you have done this, go to PICO-8 and on the command line type, `load @clip`. This will load the game you have just copied, sprites, sounds, and all, into their respective spaces. You can then play the game you want and have all of the assets created for that game. 

This method of loading games is very useful if you want to explore how a particular game managed a particular look and feel. It can also give you some other hints and tricks as you explore the game, the code, and the music of that particular game.  

### Copying and Pasting Code 
When you copy the code of a game, you will be able to run the game but independent of any sprites or sounds. Some games (like the ones you make for this course) are ok with this. Others will simply draw blank boxes where a sprite should be. 

To install games via copying the code, all you need to do is simply select all the code, copy it and paste it into the `Code Editor` of PICO-8. If the game works perfectly, you can either play it or start customizing it yourself. The cartridge eco-system of PICO-8 reflects the nature of the original video games - open and open sourced. 

## A Cheat Sheet
The very last bit to be a part of this week is a cheat sheet. The cheat sheet is very useful if you print it out (in color) and keep it with the machine you use to code with. It will provide an endless array of useful information on which number each color is, the parameters of circles, rectangles, and other shapes. It even provides data on the various types of variables that can be used within programs. 

In addition to this small cheat sheet, there is a much larger one in a github repository. [The In-Depth PICO-8 Cheatsheet](https://neko250.github.io/pico8-api/) is an exhaustive resource you'll need soon.

![Image of PICO-8 Cheat Sheet](/course%20documents/pics/general/cheat-sheet.png)
