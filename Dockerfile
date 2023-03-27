FROM redhat/ubi8-minimal

RUN rpm --import https://yum.corretto.aws/corretto.key && \
  curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo

RUN microdnf update && microdnf install -y java-17-amazon-corretto-devel
