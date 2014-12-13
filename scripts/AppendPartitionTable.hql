${connectURL}


set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.dynamic.partition=true;

insert into table ${partitioned_table} partition (yearp,month) select *,year(from_unixtime(cast(round(${partition_column}/1000) as bigint))) as year,month(from_unixtime(cast(round(${partition_column}/1000) as bigint))) as month from ${db_name}.${staging_table};


