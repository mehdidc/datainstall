FROM debian:latest

ADD rcfiles/ /root/rcfiles
ADD dotfiles/* /
ADD dotfiles/.jupyter /
RUN sh /root/rcfiles/install_everythin.sh


EXPOSE 8080
