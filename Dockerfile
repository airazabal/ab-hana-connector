FROM confluentinc/cp-kafka-connect-base:6.0.1

COPY hana.zip /tmp/hana-6.13.zip
EXPOSE 8083
RUN confluent-hub install --no-prompt  --verbose /tmp/hana-6.13.zip
ENTRYPOINT ["connect-distributed", "/usr/share/confluent-hub-components/SAP-kafka-connector-hana_2.13/etc/connect-distributed.properties", "/usr/share/confluent-hub-components/SAP-kafka-connector-hana_2.13/etc/connect-hana-source.properties"]