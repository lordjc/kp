


CREATE EXTERNAL TABLE cars_stage
CREATE EXTERNAL TABLE cars_stage (year int,color string,purchase_dt bigint,price string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
