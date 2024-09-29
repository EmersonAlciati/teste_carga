FROM justb4/jmeter:5.5

ARG JMETER_VERSION="5.5"
ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}

COPY ./jmx /${JMETER_HOME}/bin
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
RUN mkdir ${JMETER_HOME}/bin/perf_reports

WORKDIR	${JMETER_HOME}/bin
EXPOSE 60000 1099 50000
ENTRYPOINT ["/docker-entrypoint.sh"]