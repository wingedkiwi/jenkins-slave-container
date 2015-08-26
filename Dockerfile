FROM ubuntu:latest

# Install required packages.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    wget python docker.io openjdk-7-jre git

ADD jenkins-slave.py /opt/bin/jenkins-slave.py

# Run boot script.
CMD /opt/bin/jenkins-slave.py
