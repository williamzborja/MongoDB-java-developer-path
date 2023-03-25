FROM docker/dev-environments-default:stable-1

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y software-properties-common
RUN wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - && \
  add-apt-repository 'deb https://apt.corretto.aws stable main'

RUN apt-get update; apt-get install -y java-17-amazon-corretto-jdk

