FROM centos
RUN yum -y update && yum clean all
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade
RUN sudo install java-openjdk11 -y
RUN sudo yum install jenkins -y
RUN sudo systemctl enable jenkins; sudo systemctl start jenkins; sudo systemctl status jenkins
RUN ssh-keygen -t rsa
RUN yum install -y maven

EXPOSE 8080
