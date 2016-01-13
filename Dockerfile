FROM debian:latest

RUN apt-get install -y bash

ADD rcfiles/ /root/rcfiles
WORKDIR /root/rcfiles
ADD dotfiles/* /
ADD dotfiles/ /root/dotfiles
ADD dotfiles/.jupyter /
RUN bash /root/rcfiles/install_everything.sh

CMD zsh
EXPOSE 8080
