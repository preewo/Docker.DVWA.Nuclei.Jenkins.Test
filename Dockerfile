FROM jenkins/jenkins:lts

# Set the Jenkins admin user and password
ENV JENKINS_USER=admin \
    JENKINS_PASS=password
ENV ZAP_PORT 8090

# Install additional packages
USER root
# Set permissions
RUN chown -R jenkins:jenkins /var/jenkins_home
RUN curl -sL https://dl.google.com/go/go1.20.2.linux-amd64.tar.gz | tar -C /usr/local -xzf -
ENV PATH=$PATH:/usr/local/go/bin
ENV GOPATH /go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
RUN curl -sL https://github.com/zaproxy/zaproxy/releases/download/v2.10.0/ZAP_2.10.0_Linux.tar.gz | tar -C /opt -xzf -
ENV PATH=$PATH:/opt/ZAP_2.10.0
CMD ["sh", "-c", "/opt/ZAP_2.10.0/zap.sh -daemon -port $ZAP_PORT"]
COPY nuclei_temps /opt/nuclei_temps
USER jenkins

