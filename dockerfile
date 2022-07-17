FROM centos
RUN yum -y update && yum clean all

// Jenkins Installations
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade
RUN sudo install java-openjdk11 -y
RUN sudo yum install jenkins -y
RUN sudo systemctl enable jenkins; sudo systemctl start jenkins; sudo systemctl status jenkins
RUN ssh-keygen -t rsa
// Jenkins first time password sudo cat /var/lib/jenkins/secrets/initialAdminPassword
// $ ls ~/.ssh/	you can see 3 files: id_rsa, id_rsa.pub authorised_keys

RUN yum install -y maven

EXPOSE 8080
