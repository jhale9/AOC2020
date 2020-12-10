drop table if exists puzzle_input;
create temp table puzzle_input as (
select *
from  regexp_split_to_table($$99
3
1
11
48
113
131
43
82
19
4
153
105
52
56
109
27
119
147
31
34
13
129
17
61
10
29
24
12
104
152
103
80
116
79
73
21
133
44
18
74
112
136
30
146
100
39
130
91
124
70
115
81
28
151
2
122
87
143
62
7
126
95
75
20
123
63
125
53
45
141
14
67
69
60
114
57
142
150
42
78
132
66
88
140
139
106
38
85
37
51
94
98
86
68$$, E'
') WITH ORDINALITY as t(entry, id)
);

--p1
select dif
	,count(*)
from (
select *
	,entry::int - coalesce((lag(entry) over (order by entry::int))::int, 0) as dif
from puzzle_input
order by entry::int
)a
group by 1

--p2
drop table if exists puzzle_input_2;
create temp table puzzle_input_2 as (
select *
	,entry::int as joltage
from puzzle_input
);

/*dont do this */
-- with recursive combinations as(
-- select 0::int as joltage
-- 	,1::int as stepno
-- 
-- union all
-- select pi.joltage
-- 	,stepno + 1
-- from puzzle_input_2 pi
-- inner join combinations c on pi.joltage between c.joltage+1 and c.joltage +3
-- )
-- select count(*)
-- from combinations
-- where joltage =153


drop table if exists all_nums;
create temp table all_nums as (
select gs as jolts
	,pi.joltage is not null as adapter_exists
from generate_series(0,153) gs
left join puzzle_input_2 pi on pi.joltage = gs.gs
)



with recursive combinations as(
select 0::bigint as joltage
	,0::bigint as one_ago
	,0::bigint as two_ago
	,1::bigint as here
union all
select joltage + 1
	,c.here as one_ago
	,c.one_ago as two_ago
	,case when an.adapter_exists then c.one_ago + c.two_ago + c.here else 0 end as here 

from combinations c
inner join all_nums an on an.jolts = c.joltage + 1
)
select *
from combinations



