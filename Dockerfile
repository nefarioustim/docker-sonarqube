FROM sonarqube:alpine

ENV SERVICE_NAME="sonarqube"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins/"

# Install Python Plugin
RUN apk add --no-cache curl
RUN cd /opt/sonarqube/extensions/plugins && \
	curl -sLo sonar-python-plugin-1.10.0.2131.jar \
    https://binaries.sonarsource.com/Distribution/sonar-python-plugin/sonar-python-plugin-1.10.0.2131.jar

