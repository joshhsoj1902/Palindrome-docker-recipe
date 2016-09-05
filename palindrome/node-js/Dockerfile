FROM node:6.2.2-wheezy

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

##TODO: This would be nicer if it was just an image on the hub, but this works for now.

RUN apt-get update
RUN apt-get install -y git

RUN mkdir /root/.ssh/
RUN touch /root/.ssh/known_hosts
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN git clone https://github.com/joshhsoj1902/palindrome.git /usr/src/app
##END TODO

#This is because npm is being ran as root, the better solution would be adding 
#non root user to run as.
RUN npm install --unsafe-perm

CMD [ "node", "app.js" ]
