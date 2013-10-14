# Install Ghost blogging platform and run development environment on port 5000
#
# VERSION 0.0.1

FROM base
MAINTAINER Amer Grgic "amer@livebyt.es"

# Install dependencies for nginx installation
RUN apt-get install -y python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
# Install unzip
RUN apt-get install -y unzip
# Install nodejs & npm
RUN apt-get install -y rlwrap
RUN apt-get install -y nodejs 
RUN curl https://npmjs.org/install.sh | sh
# Make data-dir
RUN mkdir /data/
# Add Ghost zip to image
ADD ./ghost-0.3.2.zip /tmp/
# Unzip Ghost zip to /data/ghost
RUN unzip -uo /tmp/ghost-0.3.2.zip -d /data/ghost
# Add custom config js to /data/ghost
ADD ./config.example.js /data/ghost/
# Install Ghost with NPM
RUN cd /data/ghost/ && npm install --production
# Port map port 5000 to 80 on local machine
EXPOSE 5000:2368
# Run Ghost
CMD cd /data/ghost && npm start
