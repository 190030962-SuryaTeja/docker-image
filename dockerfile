FROM amazonlinux

RUN yum -y update
RUN yum clean all
RUN yum install -y wget

RUN yum install -y git

RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade
RUN yum install -y java
RUN yum install jenkins -y
RUN systemctl enable jenkins

RUN yum install -y docker

RUN yum install -y maven

EXPOSE 8080
