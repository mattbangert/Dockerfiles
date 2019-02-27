FROM sonarqube:alpine
LABEL maintainer="matt.bangert@gmail.com"

#Plugin Versions
ENV SONAR_JAVA_PLUGIN_VERSION 5.9.1.16423
ENV GITLAB_PLUGIN_VERSION 3.0.2
ENV SCM_ACTIVITY_VERSION 1.8
ENV CHECKSTYLE_PLUGIN_VERSION 4.11
ENV SONAR_MOTION_PLUGIN_VERSION 1.7
ENV CHECKSTYLE_PLUGIN_VERSION 4.11
ENV SONAR_PITEST_PLUGIN_VERSION 0.9
ENV SONAR_PMD_PLUGIN_VERSION 2.6
ENV SONAR_TIMELINE_PLUGIN_VERSION 1.4
ENV SONAR_TAB_METRICS_PLUGIN_VERSION 1.4.1
ENV SONAR_CHECKSTYLE_PLUGIN_VERSION 4.11
ENV SONAR_FINDBUGS_PLUGIN_VERSION 3.7.0
ENV SONAR_WEBDRIVER_PLUGIN_VERSION 1.0.3
ENV SONAR_GHERKIN_PLUGIN_VERSION 1.7


RUN apk add --no-cache curl=7.55.0-r2

# Download plugins
RUN mkdir -p /tmp/plugins

RUN set -x && curl -sLo /tmp/plugins/onar-java-plugin-${SONAR_JAVA_PLUGIN_VERSION}.jar \
    https://binaries.sonarsource.com/Distribution/sonar-java-plugin/sonar-java-plugin-${SONAR_JAVA_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-gitlab-plugin-${GITLAB_PLUGIN_VERSION}.jar \
	https://github.com/gabrie-allaigre/sonar-gitlab-plugin/releases/download/${GITLAB_PLUGIN_VERSION}/sonar-gitlab-plugin-${GITLAB_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-scm-activity-plugin-${SCM_ACTIVITY_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/scm-activity/sonar-scm-activity-plugin/${SCM_ACTIVITY_VERSION}/sonar-scm-activity-plugin-${SCM_ACTIVITY_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/checkstyle-sonar-plugin-${SONAR_CHECKSTYLE_PLUGIN_VERSION}.jar \
    https://github.com/checkstyle/sonar-checkstyle/releases/download/${CHECKSTYLE_PLUGIN_VERSION}/checkstyle-sonar-plugin-${SONAR_CHECKSTYLE_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-motion-chart-plugin-${SONAR_MOTION_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-motion-chart-plugin/${SONAR_MOTION_PLUGIN_VERSION}/sonar-motion-chart-plugin-${SONAR_MOTION_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-pitest-plugin-${SONAR_PITEST_PLUGIN_VERSION}.jar \
    https://github.com/VinodAnandan/sonar-pitest/releases/download/v${SONAR_PITEST_PLUGIN_VERSION}/sonar-pitest-plugin-${SONAR_PITEST_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-pmd-plugin-${SONAR_PMD_PLUGIN_VERSION}.jar \
    https://github.com/SonarQubeCommunity/sonar-pmd/releases/download/${SONAR_PMD_PLUGIN_VERSION}/sonar-pmd-plugin-${SONAR_PMD_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-timeline-plugin-${SONAR_TIMELINE_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-timeline-plugin/${SONAR_TIMELINE_PLUGIN_VERSION}/sonar-timeline-plugin-${SONAR_TIMELINE_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-tab-metrics-plugin-${SONAR_TAB_METRICS_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-tab-metrics-plugin/${SONAR_TAB_METRICS_PLUGIN_VERSION}/sonar-tab-metrics-plugin-${SONAR_TAB_METRICS_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-findbugs-plugin-${SONAR_FINDBUGS_PLUGIN_VERSION}.jar \
    https://github.com/spotbugs/sonar-findbugs/releases/download/${SONAR_FINDBUGS_PLUGIN_VERSION}/sonar-findbugs-plugin-${SONAR_FINDBUGS_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-webdriver-plugin-${SONAR_WEBDRIVER_PLUGIN_VERSION}.jar \
    https://github.com/kwoding/sonar-webdriver-plugin/releases/download/sonar-webdriver-plugin-${SONAR_WEBDRIVER_PLUGIN_VERSION}/sonar-webdriver-plugin-${SONAR_WEBDRIVER_PLUGIN_VERSION}.jar

RUN set -x && curl -sLo /tmp/plugins/sonar-gherkin-plugin-${SONAR_GHERKIN_PLUGIN_VERSION}.jar \
    https://github.com/racodond/sonar-gherkin-plugin/releases/download/${SONAR_GHERKIN_PLUGIN_VERSION}/sonar-gherkin-plugin-${SONAR_GHERKIN_PLUGIN_VERSION}.jar

# End Plugins

# Move plugins to the extensions directory
RUN mv /tmp/plugins/* "$SONARQUBE_HOME"/extensions/plugins
