FROM debian:latest

ADD rcfiles/ /root/rcfiles
ADD dotfiles/* /
ADD dotfiles/ /root/dotfiles
ADD dotfiles/.jupyter /
RUN sh /root/rcfiles/install_everything.sh

EXPOSE 8080
