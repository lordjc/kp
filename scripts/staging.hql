!connect jdbc:hive2://azh7-1.ent.cloudera.com:10000/default;


$(gen_create_tbl.py cars_stage /user/dev/data/default/sqoop/cars /user/dev/data/default/metadata/cars.schema);

