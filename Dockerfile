FROM ubuntu:20.04

RUN apt-get -y update && apt-get install -y tzdata
RUN apt-get -y install python3 python3-pip jupyter-notebook
RUN apt-get -y install git build-essential cmake clang libssl-dev

RUN pip3 install --upgrade pip
RUN pip3 install pandas numpy matplotlib seaborn &&\
    pip3 install scipy scikit-learn cython &&\
    pip3 install arviz==0.11.4 pystan==2.19.1.1