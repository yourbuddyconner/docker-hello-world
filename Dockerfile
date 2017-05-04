FROM ubuntu:16.04
MAINTAINER me@connerswann.me

RUN apt-get update && apt-get install -y python-setuptools python python-pip 
#RUN easy_install pip

ADD ./application/requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
ADD ./application /opt/application/

WORKDIR /opt/application

CMD ["python", "app.py"]
