-- the sensitivity is the *expected* spread of values
-- for a static table one can use the difference between highest and smallest value
select count(salary), max(salary), min(salary), max(salary) - min(salary) as sensitivity from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE";