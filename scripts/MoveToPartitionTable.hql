${connectURL}


set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.dynamic.partition=true;

from ${staging_table} insert overwrite table ${partitioned_table} partition(yearp,month) select *,year(from_unixtime(cast(round(${partition_column}/1000) as bigint))),month(from_unixtime(cast(round(${partition_column}/1000) as bigint)));


