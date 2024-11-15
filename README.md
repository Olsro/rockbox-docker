# Motivations
I found a Docker template on GitHub but unfortunately it was incomplete. I also tried to build on my Mac M1 and unfortunately the script doesn't work natively it seems. I also found an already-built build on Reddit, but it was several years old so I preferred not to use it.

After several hours of tinkering, I've built a functional, modern Dockerfile that allows me to patch and then build a working RockBox build for my iPod Mini.

I also improved the project to provide a simple way to cast the PC database tool which allows you to build your Rockbox music database directly from your PC to save time because your PC is much faster than your iPod.

# How to compile builds
*This is to help you at compiling full builds of Rockbox for your iPods. If you are interested only by the database tool, you can skip this whole section.*

1) Install Docker desktop on your system
2) (Only necessary the first time, you can skip this step the next times to save time) Run the sh file ```build-dockerimage.sh``` (If permission is denied, make it executable first : ```chmod a+x build-dockerimage.sh```). This script will also clone the latest git repo of rockbox to the folder rockbox-git/rockbox automatically if necessary.
3) Run the sh file ```run-compilewithdocker.sh``` (If permission is denied, make it executable first : ```chmod a+x run-compilewithdocker.sh```)
4) After a few minutes, you should find your artifacts in the folder rockbox-git/artifacts
5) Enjoy !

# How to use the database tool
The database tool is very useful to create an usable Rockbox database. Doing it on your PC will be much faster than doing it on device. For 30000 .mpc (Musepack) songs, on-device building requires more than 1 hour while it will require only a few minutes on PC.

If you want to build reliably the database on your PC, you have to **organize your Music by avoiding any kind of UTF characters** (like accents). Building the database on PC will be unreliable if paths to your Music are not normalized enough. I will provide later a program to help at normalization. I had less issues on Linux with not normalized paths, but it was still broken in something like 1% of cases for some reason.
The easiest way to maintain normalized short paths is just to sync your music using iTunes on Stock OS.

Steps to follow:
1) Install Docker desktop on your system
2) (Only necessary the first time, you can skip this step the next times to save time) Run the sh file ```build-dockerimage.sh``` (If permission is denied, make it executable first : ```chmod a+x build-dockerimage.sh```). This script will also clone the latest git repo of rockbox to the folder rockbox-git/rockbox automatically if necessary.
3) Run the sh file ```run-databasetoolwithdocker.sh <path to the root directory of your DAP>``` (If permission is denied, make it executable first : ```chmod a+x run-databasetoolwithdocker.sh```). Replace ```<path to the root directory of your path``` by an absolute path of it (for example: ```/Volumes/IPOD```).
4) After a few minutes, the program should quit itself and the database should have been re-created and populated fully on your iPod.
5) You can now disconnect your iPod and navigate through your database under the Rockbox environment.

# Support my work
Feel free to give me some feedbacks on this and to star my GitHub project and say thank you here if it helped you someway.

You can also tip me on Patreon: https://www.patreon.com/Olsro
