FROM alpine:latest

# Copy code
COPY . /data/blur-admin/

WORKDIR /data/blur-admin

# Install nginx & node
# Install Bower
# Install node & bower depends
# Set bower root allow
RUN  sed -i s#http://dl-cdn.alpinelinux.org#https://mirrors.aliyun.com#g /etc/apk/repositories && \
    apk add --update nodejs git nodejs-npm && \
    npm install -g bower gulp && \
    echo '{ "allow_root": true }' > /root/.bowerrc && \
    git config --global url."https://".insteadOf git:// && \
    npm install && \
    bower install



