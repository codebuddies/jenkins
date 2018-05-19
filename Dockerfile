FROM jenkins/jenkins:latest
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false

RUN /usr/local/bin/install-plugins.sh credentials-binding greenballs ws-cleanup
COPY codebuddies.config.xml /usr/share/jenkins/ref/jobs/codebuddies-deploy-PR/config.xml

USER root
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs git jq curl
RUN npm i -g --unsafe-perm now
USER jenkins
