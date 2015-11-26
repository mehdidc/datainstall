FROM continuumio/miniconda
ADD docker/ /root/rcfiles
ADD dotfiles/* /
ADD dotfiles/.jupyter /
RUN sh /root/rcfiles/install_everythin.sh

EXPOSE 8080
