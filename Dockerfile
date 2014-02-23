# Install Ghost blogging platform and run development environment
#
# VERSION 1.0.0

FROM ubuntu:12.10
MAINTAINER Amer Grgic "amer@livebyt.es"
WORKDIR /data/ghost

# Install dependencies for nginx installation
RUN apt-get update
RUN apt-get install -y python g++ make software-properties-common --force-yes
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
# Install unzip
RUN apt-get install -y unzip
# Install nodejs & npm
RUN apt-get install -y rlwrap
RUN apt-get install -y nodejs 
RUN curl https://npmjs.org/install.sh | sh
# Add Ghost zip to image
ADD ./ghost-0.4.0.zip /tmp/
# Unzip Ghost zip to /data/ghost
RUN unzip -uo /tmp/ghost-0.4.0.zip -d /data/ghost
# Add custom config js to /data/ghost
ADD ./config.example.js /data/ghost/config.js
# Install Ghost with NPM
RUN cd /data/ghost/ && npm install --production
# Expose port 2368
EXPOSE 2368
# Run Ghost
CMD ["npm","start"]

