FROM ubuntu:18.04

RUN useradd -ms /bin/bash webchain

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update ; apt install -y sudo wget openssh-server software-properties-common build-essential tcl git unzip curl python net-tools ; apt clean
RUN curl -O https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz ; tar -C /usr/local -xzf go1.13.3.linux-amd64.tar.gz ; rm -rf go1.13.3.linux-amd64.tar.gz

ENV PATH="/root/.nvm/versions/node/v8.17.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/go/bin:/usr/local/go/bin" SHELL="/bin/bash"
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash ; export NVM_DIR="$HOME/.nvm" ; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" ; nvm install v8.17.0 ; command -v nvm ; npm -v ; nvm list
ENV NVM_BIN="/root/.nvm/versions/node/v8.17.0/bin" NVM_CD_FLAGS=""

USER webchain
ENV PATH="/home/webchain/.nvm/versions/node/v8.17.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/webchain/go/bin:/usr/local/go/bin" SHELL="/bin/bash"
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash ; export NVM_DIR="$HOME/.nvm" ; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" ; nvm install v8.17.0 ; command -v nvm ; npm -v ; nvm list
ENV NVM_BIN="/home/webchain/.nvm/versions/node/v8.17.0/bin" NVM_CD_FLAGS=""

USER 0

CMD ["/bin/bash"]
