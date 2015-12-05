FROM debian:latest

MAINTAINER Kamil Kwiek <kamil.kwiek@continuum.io>

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda-3.16.0-Linux-x86_64.sh && \
    /bin/bash /Miniconda-3.16.0-Linux-x86_64.sh -b -p /opt/conda && \
    rm Miniconda-3.16.0-Linux-x86_64.sh && \
    /opt/conda/bin/conda install --yes conda==3.18.3

RUN apt-get install -y curl grep sed dpkg && \
    TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
    curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
    dpkg -i tini.deb && \
    rm tini.deb && \
    apt-get clean

ENV PATH /opt/conda/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]


ADD docker/ /root/rcfiles
ADD dotfiles/* /
ADD dotfiles/.jupyter /
RUN sh /root/rcfiles/install_everythin.sh


EXPOSE 8080
