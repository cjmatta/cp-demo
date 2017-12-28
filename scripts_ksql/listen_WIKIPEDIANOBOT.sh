#!/bin/sh

docker exec cpdemo_connect_1 kafka-avro-console-consumer --bootstrap-server kafka1:9092 --property schema.registry.url=http://schemaregistry:8081 --topic WIKIPEDIANOBOT --consumer-property group.id=WIKIPEDIANOBOT-consumer --consumer-property interceptor.classes=io.confluent.monitoring.clients.interceptor.MonitoringConsumerInterceptor >/dev/null 2>&1 &
