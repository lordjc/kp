${connectURL}


DROP TABLE ${tableName};

CREATE EXTERNAL TABLE default.${tableName} ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' location 'hdfs://azh7-1${stagingDir}' TBLPROPERTIES ('avro.schema.url'='hdfs://azh7-1${schema}');
