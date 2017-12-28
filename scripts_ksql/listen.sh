#!/bin/bash

echo -e "\nPrinting one message from each of the following topics:"

echo -e "\nwikipedia.parsed:"
docker exec cpdemo_connect_1 kafka-avro-console-consumer --bootstrap-server kafka1:9092 --property schema.registry.url=http://schemaregistry:8081 --topic wikipedia.parsed --max-messages 1

echo -e "\nWIKIPEDIABOT:"
docker exec cpdemo_connect_1 kafka-avro-console-consumer --bootstrap-server kafka1:9092 --property schema.registry.url=http://schemaregistry:8081 --topic WIKIPEDIABOT --max-messages 1

echo -e "\nWIKIPEDIANOBOT:"
docker exec cpdemo_connect_1 kafka-avro-console-consumer --bootstrap-server kafka1:9092 --property schema.registry.url=http://schemaregistry:8081 --topic WIKIPEDIANOBOT --max-messages 1
