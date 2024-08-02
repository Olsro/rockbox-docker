# Motivations
I found a Docker template on GitHub but unfortunately it was incomplete. I also tried to build on my Mac M1 and unfortunately the script doesn't work natively it seems. I also found an already-built build on Reddit, but it was several years old so I preferred not to use it.

After several hours of tinkering, I've built a functional, modern Dockerfile that allows me to patch and then build a working RockBox build for my iPod Mini.

# How to use
1) Install Docker desktop on your system
2) (Only necessary the first time, you can skip this step the next times to save time) Run the sh file "build-dockerimage.sh" (If permission is denied, make it executable first : chmod a+x build-dockerimage.sh). This script will also clone the latest git repo of rockbox to the folder rockbox-git/rockbox automatically if necessary.
3) Run the sh file "run-dockerimage.sh" (If permission is denied, make it executable first : chmod a+x run-dockerimage.sh)
4) After a few minutes, you should find your artifacts in the folder rockbox-git/artifacts
5) Enjoy !

Feel free to give me some feedbacks on this and to star my GitHub project and say thank you here if it helped you someway.