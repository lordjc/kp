########## Start - Following parameters needs to be configured #######
# Table Name to be pulled , this is received as input parameter.
table_name=dept_t
echo table_name=dept_t
# connect string to connect to source database
echo connect_string=jdbc:mysql://azh7-4.ent.cloudera.com/scm
# connect string to connect to Hive
echo hive_connect_string=!connect jdbc:hive2://azh7-1.ent.cloudera.com:10000/default;
# connect string to Sqoop metastore
echo sqoop_metastore=jdbc:hsqldb:hsql://azh7-1.ent.cloudera.com:16000/sqoop
# user name to connect to source database
echo user_name=cloudera-scm
# database name for source database
echo remote_db_name=scm
# hive database name
echo db_name=kp_wellness_repository
# top directory
echo top_dir=/user/dev/data/${db_name}
# incremental column to be used for incremental pull
echo check_column=year
# partition column to be used to calculate year month for partitioning in Hive
echo partition_column=purchase_dt
# no of mappers, second parameter or defaulted as 4
echo mappers=${2-4}
########## End - Above parameters needs to be configured ###########
# defining full table name by appending the database name
echo full_table_name=${remote_db_name}.${table_name}
# defining staging table by append "_STAGE"
echo staging_table=${table_name}_STAGE
# defining partition table by appending "_PART"
echo partitioned_table=${table_name}_PART
# defining staging table by appending "_MERGE"
echo merged_table=${table_name}_MERGE
# defining staging directory appending "/sqoop"
echo staging_dir=${top_dir}/sqoop
# defining staging directory appending "/metadata"
echo metadata_dir=${top_dir}/metadata
# defining staging directory appending "/archive"
echo archive_dir=${top_dir}/archive
# defining avro schema file name by appending ".schema"
echo schema_name=${table_name}.schema
# defining sqoop job name by appending "_JOB"
echo job_name=${table_name}_JOB
curr_date=`date +"%Y_%m_%d_%H_%M"`
# capturing the current date for creating latest folders 
echo curr_date=${curr_date}