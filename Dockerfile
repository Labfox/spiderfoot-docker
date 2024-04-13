FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install python3 python3-pip -y
RUN apt install wget -y
RUN wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz
RUN tar -zxvf v4.0.tar.gz
WORKDIR spiderfoot-4.0
RUN pip3 install "cython<3.0.0" && pip3 install --no-build-isolation pyyaml==5.4.1
RUN pip3 install -r requirements.txt
CMD ["python3", "./sf.py", "-l", "0.0.0.0:5001"]
