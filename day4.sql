drop table if exists puzzle_input;
create temp table puzzle_input as (
select *
from  regexp_split_to_table($$hcl:5d90f0 cid:270 ecl:#66dc9c hgt:62cm byr:1945 pid:63201172 eyr:2026

ecl:amb byr:1943 iyr:2014 eyr:2028
pid:333051831

byr:1971
eyr:2021 iyr:2015 pid:158388040 hcl:#18171d ecl:brn hgt:179cm

byr:1936
pid:707057570 iyr:2014 ecl:amb cid:299 eyr:2030
hcl:#c0946f hgt:186cm

hcl:#7d3b0c pid:431742871
ecl:hzl hgt:169cm cid:340
eyr:2023
iyr:2017 byr:1994$$, E'[\n|\r]{4}') WITH ORDINALITY as t(entry, id)
);



drop table if exists parsed_json;
create temp table parsed_json as (
select id
	,json_key
	,coded -> json_key as json_value
from (
select id
	, coded
	,json_object_keys(coded) as json_key


from(

select ('{"'||replace(replace(regexp_replace(entry, '\s+', ',', 'g'), ':', '":"'), ',', '","')||'"}')::json as coded
	,id
from puzzle_input
)a
)b
);



--part 1
select sum(case when adj = 7 then 1 else 0 end)
from (
select id
	,sum(case when json_key <> 'cid' then 1 else 0 end) as adj
	,sum(case when json_key <> 'cid' then 1 else 0 end) as entry_count
from parsed_json
group by 1
)a

--part2
drop table if exists mod_json;
create temp table mod_json as (
select id
	, json_key::text as jkey
	,replace(json_value::text, '"', '') as jvalue
	,false::bool as valid_flg
from parsed_json
);

drop table if exists valid_entries;
create temp table valid_entries(
id int,
field varchar,
validation bool,
jvalue text)
;

insert into valid_entries(
select id
	,'byr'
	,TRUE
	,jvalue
from mod_json
 where jkey = 'byr'
  and jvalue ~ '^\d{4}$'
  and jvalue::int between 1920 and 2002
);

insert into valid_entries(
select id
	,'iyr'
	,TRUE
	,jvalue
from mod_json
 where jkey = 'iyr'
  and jvalue ~ '^\d{4}$'
  and jvalue::int between 2010 and 2020
);

insert into valid_entries(
select id
	,'eyr'
	,TRUE
	,jvalue
from mod_json
 where jkey = 'eyr'
  and jvalue ~ '^\d{4}$'
  and jvalue::int between 2020 and 2030
);

insert into valid_entries(
select id
	,'hgt'
	,TRUE
	,jvalue
from (select *
	,substring(jvalue, '^\d{2,3}([a-z]{2})$') as unit 
	,substring(jvalue, '^(\d{2,3})[a-z]{2}$') as height 
from mod_json
 where jkey = 'hgt'
  and jvalue ~ '^\d{2,3}[a-z]{2}$'
 )a
 where (unit = 'cm' and height::int between 150 and 193)
 or  (unit = 'in' and height::int between 59 and 76)
);



insert into valid_entries(
select id
	,'hcl'
	,TRUE
	,jvalue
from mod_json
 where jkey = 'hcl'
  and jvalue ~ '^#[0-9a-z]{6}$'
);



insert into valid_entries(
select id
	,'ecl'
	,TRUE
	,jvalue
from mod_json
 where jkey = 'ecl'
  and jvalue in ('amb', 'blu', 'brn', 'gry', 'grn', 'hzl', 'oth')
);



insert into valid_entries(
select id
	,'pid'
	,TRUE
	,jvalue
from mod_json
 where jkey = 'pid'
  and jvalue ~ '^\d{9}$'
);


select *
from (
select id
	,count(*)
from valid_entries
group by 1
order by 2 desc
)a
where count = 7






