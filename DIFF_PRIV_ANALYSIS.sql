-- all --
select avg(salary) as avg_t	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE"; -- 81856.78029
select avg(salary) as avg_v	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV"; -- 80611.35369474422, 83635.81812867535
select abs((avg_v - avg_t)/avg_t) from (
	select avg(salary) as avg_t
	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE"
) cross join (
	select avg(salary) as avg_v
	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV"
); -- 0.015214702934119098, 0.021733542809436564

-- 1 --
select avg(salary) as avg_t	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE" where start_year <= '1986'; -- 154740.2493622449
select avg(salary) as avg_v	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV" where start_year <= '1986'; -- 158328.75018660387, 181412.51655650948
select abs((avg_v - avg_t)/avg_t) from (
	select avg(salary) as avg_t
	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE"
	where start_year <= '1986'
) cross join (
	select avg(salary) as avg_v
	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV"
	where start_year <= '1986'
); -- 0.023190481074890353, 0.17236799930330432

-- 2 --
select avg(salary) as avg_t	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE" where '1986' < start_year and start_year <= '1996'; -- 119603.25911986103
select avg(salary) as avg_v	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV" where '1986' < start_year and start_year <= '1996'; -- 115149.59877376235, 137956.77469942498
select abs((avg_v - avg_t)/avg_t) from (
	select avg(salary) as avg_t
	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE"
	where '1986' < start_year and start_year <= '1996'
) cross join (
	select avg(salary) as avg_v
	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV"
	where '1986' < start_year and start_year <= '1996'
); -- 0.03723694804700449, 0.15345330649535957

-- 3 --
select avg(salary) as avg_t	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE" where '1996' < start_year and start_year <= '2006'; -- 91376.44969974106
select avg(salary) as avg_v	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV" where '1996' < start_year and start_year <= '2006'; -- 90897.57589316036, 95258.72151067162
select abs((avg_v - avg_t)/avg_t) from (
	select avg(salary) as avg_t
	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE"
	where '1996' < start_year and start_year <= '2006'
) cross join (
	select avg(salary) as avg_v
	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV"
	where '1996' < start_year and start_year <= '2006'
); -- 0.005240669867939227, 0.042486568735024495

-- 4 --
select avg(salary) as avg_t	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE" where '2006' < start_year; -- 65418.18246793386
select avg(salary) as avg_v	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV" where '2006' < start_year; -- 64130.96790709679, 61650.76454935651
select abs((avg_v - avg_t)/avg_t) from (
	select avg(salary) as avg_t
	from "ACME_SCHEMA_1"."VLDBDemo.db::tables.HRDB_TABLE"
	where '2006' < start_year
) cross join (
	select avg(salary) as avg_v
	from "ACME_SCHEMA_1"."VLDBDemo.db::HRDB_VIEW_DIFF_PRIV"
	where '2006' < start_year
); -- 0.019676709322640814, 0.05758976749964026
