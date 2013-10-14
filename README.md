# Docker-Ghost
This repository is made to run Ghost in Docker, the Dockerfile installs Node.js and NPM, adds Ghost to the image and runs Ghost in a development environment. The port for Ghost is mapped to port 5000.

# Running Docker-Ghost
Git clone the repository: 

<code>git clone git@github.com:livebytes/docker-ghost.git</code>

Install Docker using the Docker documentation that you can find here: https://www.docker.io/gettingstarted/

Pull the base Docker:

<code>sudo docker pull base</code>

Build the ghost-docker (execute command below in the folder you cloned the repository to):

<code>sudo docker build -t ghost .</code>

Run the ghost-docker:

<code>sudo docker run ghost</code>
