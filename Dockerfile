FROM node:latest

WORKDIR /app
ADD . /app

EXPOSE 80
EXPOSE 27960

RUN npm install

# CMD ["node", "build/ioq3ded.js", "+set", "fs_game", "baseq3", "+set", "dedicated", "2", "+exec server.cfg"]
CMD ["echo", "hello"]
