FROM jenkins/jenkins:lts

# Set jenkins user details
ENV JENKINS_USER adisakshya
ENV JENKINS_PASS someSuperStrongPassword

# Set version
ENV JENKINS_MASTER_VERSION 1.0.0

USER root

# Install packages
RUN apt-get update \
    && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    python-pip

# Install plugins
COPY ./plugins/plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

# Install docker 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update -qq \
    && apt-get install docker-ce -y
RUN usermod -aG docker jenkins

# Clean
RUN apt-get clean

# Install docker-compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

USER jenkins

# Start jenkins
CMD ["java", "-jar", "/opt/jenkins.war"]