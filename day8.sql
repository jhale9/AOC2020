drop table if exists puzzle_input;
create temp table puzzle_input as (
select *
from  regexp_split_to_table($$acc +3
jmp +599
nop +311
jmp +605
acc -3
acc +50
acc +15
jmp +1$$, E'
') WITH ORDINALITY as t(entry, id)
);


drop table if exists puzzle_input2;
create temp table puzzle_input2 as (

select *
	,(regexp_split_to_array(entry, ' '))[1] as instruction
	,(regexp_split_to_array(entry, ' '))[2]::int as quantity
from puzzle_input
);

--part1
drop table if exists one_universe;
with recursive instructions as (
select id
	,instruction
	,quantity
	,1 as stepno
	,ARRAY[]::integer[] as visited
	,(case when instruction = 'acc' then quantity else 0 end)::int as accumulator
	,null::int as flipped_id
from puzzle_input2
where id = 1

union 
select pi.id
	,pi.instruction
	,pi.quantity
	,i.stepno + 1
	,visited || pi.id::int
	,case when pi.instruction = 'acc' then i.accumulator + pi.quantity else i.accumulator end as accumulator
	,(case when (i.instruction in ('nop', 'jmp') and
		pi.id = case when i.instruction = 'nop' then i.id + i.quantity
			else i.id + 1 end
		) then pi.id else i.flipped_id end)::int as flipped_id
from puzzle_input2 pi
inner join instructions i
	on pi.id = case when i.instruction = 'jmp' then i.id + i.quantity
			else i.id + 1 end
where not pi.id = any(i.visited)
)
select *
into one_universe
from instructions
-- limit 10000
;


select * from one_universe;










--part2
drop table if exists all_universes;
with recursive instructions as (
select id
	,instruction
	,quantity
	,1 as stepno
	,ARRAY[]::integer[] as visited
	,(case when instruction = 'acc' then quantity else 0 end)::int as accumulator
	,null::int as flipped_id
from puzzle_input2
where id = 1

union 
select pi.id
	,pi.instruction
	,pi.quantity
	,i.stepno + 1
	,visited || pi.id::int
	,case when pi.instruction = 'acc' then i.accumulator + pi.quantity else i.accumulator end as accumulator
	,(case when (i.instruction in ('nop', 'jmp') and
		pi.id = case when i.instruction = 'nop' then i.id + i.quantity
			else i.id + 1 end
		and i.quantity <> 1
		) then pi.id else i.flipped_id end)::int as flipped_id
from puzzle_input2 pi
inner join instructions i
	on pi.id = case when i.instruction = 'jmp' then i.id + i.quantity
			else i.id + 1 end
	or (i.instruction in ('nop', 'jmp') and
		pi.id = case when i.instruction = 'nop' then i.id + i.quantity
			else i.id + 1 end
		and i.flipped_id is null
		and i.quantity <> 1
		)
where not pi.id = any(i.visited)
)
select *
into all_universes
from instructions
-- limit 10000
;


select *
from all_universes
-- order by flipped_id nulls first, stepno

select * 
from 
(
select *
	,case when instruction = 'jmp' then id + quantity else id + 1 end as target
from all_universes
)a
where target = 642












