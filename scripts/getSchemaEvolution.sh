#!/bin/bash
staging_dir=$1
table_name=$2
metadata_dir=$3
schema_name=$4

hadoop jar /opt/cloudera/parcels/CDH/lib/avro/avro-tools.jar getschema ${staging_dir}/${table_name}/part-m-00000.avro > /tmp/${table_name}.avsc

cat /tmp/${table_name}.avsc | sed "s/\"type\" \: \[/\"type\" \: \[ \"null\"\,/g" |  sed "s/\, \"null\" \]\,/ \]\, \"default\" \: null\,/g" > /tmp/${table_name}_modified.avsc

hdfs dfs -put /tmp/${table_name}_modified.avsc ${metadata_dir}/${schema_name}