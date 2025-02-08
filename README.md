# Container test

## Prerequisites


This Container is to be run on a Linux machine.
Having docker installed on your machine. If unsure, run
``` bash
docker -v
```
which shows you the current version.

---
## Creating the image and running the container


With the following command 
``` bash
docker build -t IMAGENAME .
```
you create the docker image. Make sure, not to forget the "." at the end.
The "-t" flag indicates the name of the created image.

After creation of the image is done, you can run the container by typing in:
``` bash
docker run -d --name DOCKERNAME -p 3000:3000 IMAGENAME
```
Adding the "-d" flag will start the container detached from the terminal your running it. The DOCKERNAME in this case is the name, the container is referred to, while running. You can check the running containers using the "docker stats" command. The IMAGENAME is the tag you specified while building the image.
The "-p" flag is for port forwarding. The first number is relevant to your computer and the second number to the container.

There should be a message about "Listening on port 3000".

Go to your browser and check the port on your localhost and you should see a nice little message.
