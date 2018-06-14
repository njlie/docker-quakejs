FROM node:latest
WORKDIR /app

# RUN git clone https://github.com/njlie/docker-quakejs
ADD . /app
WORKDIR /app
EXPOSE 27960/udp
RUN npm install 

# ADD ./q3-install.sh /app/docker-quakejs/
RUN ["chmod", "+x", "./q3-install.sh"]
# ADD ./server.cfg /app/docker-quakejs/base/baseq3/server.cfg
ENTRYPOINT ["./q3-install.sh"]
