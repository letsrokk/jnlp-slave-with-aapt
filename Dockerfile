FROM jenkins/jnlp-slave:3.16-1
MAINTAINER Dmitry Mayer <mayer.dmitry@gmail.com>

USER root
RUN apt-get update && apt-get install aapt -y

USER jenkins
ENTRYPOINT ["jenkins-slave"]
