#!/bin/sh

docker exec cpdemo_connect_1 kafka-avro-console-consumer --bootstrap-server kafka1:9092 --property schema.registry.url=http://schemaregistry:8081 --topic EN_WIKIPEDIA_GT_1_COUNTS --consumer-property group.id=EN_WIKIPEDIA_GT_1_COUNTS-consumer --consumer-property interceptor.classes=io.confluent.monitoring.clients.interceptor.MonitoringConsumerInterceptor >/dev/null 2>&1 &
