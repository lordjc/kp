Sqoop ETL pipeline automation using bash/python and Ooozie workflows
==
This archive contains a collection of scripts written in bash and python.

scripts/

and Oozie workflows

workflows/

There are basic example workflows that demonstrate how to automate single actions
e.g. sqoop a table (workflow-sqoop_mySql-2.zip), extract a schema from files (workflow-get_schema-29.zip), 
create hive table (workflow-create_hive_table-33.zip)

As well as more complex workflows built using multiple actions that automate an entire ETL pipeline and include the following functionality
- Error handling
- Use of Sqoop Metatstore
- Notifications
- Handling of PII
- Schema Evolution
- Daily appends
- Purging of directories
- Management of staging and prod directories




