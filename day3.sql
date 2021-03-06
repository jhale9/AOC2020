drop table if exists puzzle_input;
create temp table puzzle_input as (
select regexp_split_to_array($$......#..##..#...#...#.###.....
#..#............#..........#...
..........#....#..........#....
....#..#.#..........#..#.....#.
#.......#...#......#........###
#####........#.#....##..##..#..
......#.#..#..#..##.#..#.##....
.#..#.#..............##....##..
..##......#....#........#...###
...#....#.#....#.#..#......#..#
..................#.....#.....#
#.#...#...#....#............#.#
.#...#.....#...##........#.....
...#....#........#..#....#..###
#...##.....##.#.#...........#.#
.###........#.#.#.........#....
...#.............###.....#.#..#
.####.#..#....#.....#.........#
.#.#........#.#.....#.....#....
.#.......#................##.##
...#.#..#...###.....#....#..##.
...#....##..#............##...#
#...#............######...#.##.
.........#........#.#...#..##..
.....###..#.#.....##.#.#......#
..#.#...#.#..#.#.##..#.....#.#.
..#......#.#....#...#..........
..#...#.....#.#...##.....#.....
.##...........####........##...
....#............#.#...........
.....####.........#.##....###..
#..#..#.#..............#.#.....
...#.#........#.........#......
......#.#.#...#.....#....#.....
........#.#...#####..#..#......
.....#.#....#....#...........##
.#...#.........#.......##......
.#.##..##......#...............
...#.....#.......#.#.#.........
.........#..#...#...#.#.##....#
.#......##....#..#.........#...
....#.....#........#.........##
......#...........##...........
.....#..............###.#....#.
........#..#...#..#..#..#..#.#.
.#.....#.##.#..#..#.#.....#....
...#....#...#.#.....##.#...#..#
#..#......#..#.###...........#.
.##...##.#........#.#......#.#.
...#.#..#.#.......#..###...##..
#.......#.#....#..........#....
.#.....#..#.#.#..#..#........#.
.#...#......#.#...#.##.....#.##
...######..#.#....#.........##.
#.#.......................#....
..#..##...#...#.#..##.......#..
.##..#.......##......##.#..#...
#.#....##.......#..#...........
..#...#............#..#........
........#.#.........#...#..#..#
.#...###...............##...#..
...........#.....#....#....###.
#..#....##..#................##
...#.#..#..##......#....##....#
...#.##...#....#..#....#.......
#...##..##.#.........#...#....#
.##........###.#..........#....
..#..#..#...#.##..#.#......#...
.......##..#....###.##.....#..#
#....#...#.#.....#..###....##..
.#.......#.........#....#.#..#.
.........#.......#.#.......#...
..........#...##..#...#....#.##
..#........#.......#...........
#....#.....##......#....#.#...#
......#.....#....#.....#..#....
.#....##...#...##..............
..#....#......#...#....#...#...
#....###...##..#.#....##......#
..#.......#.........#..#......#
...#...#.##.......#....##..#...
..#.#...#.##..#..#..#...#.#...#
.#.........###....#....#.....#.
.#.##.#..##..#...........#....#
....##..#..##.#.......#....#..#
....#..#.........##..#......#.#
..........#.#.#....##.#......##
.##...#....###...#..........#..
#..#.....#..#.#.#.#..#......#.#
......#....#......##.#......#.#
...#.....#.......#....#.......#
.#.#................#..........
......#..#..#...............##.
##......#...#.####....#.#.#....
...#..##............#....#.....
..#..#.#...#..................#
.##.#.#..##.###.....#..#.......
..#...#.#...#......#..#........
.###..........##...###..##..#..
#.#...#........#.......##......
..##...#........#....##...##...
.......#.##.....#.#.##..#..##..
........#............#....##...
...#.#.#..#.........#.#.......#
..#..##.##...#.##...#....#...#.
.....##.#...##............##...
.#...#.###....#.......#...#...#
.......#######.#....#.....#.#..
......#.......#............##..
.....#...........#......#.....#
........#....#.##.#............
.#........#.......##.#.#....#..
#.....#..####.#................
.....#.......................##
.#.....#..##.#..##........#.#.#
#...##....#..##................
......##.###..........#.....#..
.#........#...#..............##
..#..........###.........#.....
....#.....##....#..#..#.#.#....
....#.......#.##...#.####.#....
#........#............#.##.....
..#......##.....#..#...#.......
..#......###...#.##......#..#..
#..#..#............#..#.###....
...##.........#..##...#..#.#...
..#.###..#.##.#........#..#....
......#..###.#........#........
.#....#.#..#.....#..#..#.......
#.....##.##...#...###.#.#..#.#.
.#....#..#.........#..#....###.
......##.####...#....#........#
##..#........#..#..##...#......
#.........#.........#...#..#.#.
..........#...................#
###....#....#....#......###...#
#....##........#..###.#..#.....
.#......#.....#.#.........#..#.
...#.......##.....#.........###
..............#........#.....##
....#.#..#.....###.#....##.....
.........#..##.#....#.#........
...#....#.......#.#.#..#.#....#
...........#...#..........#.#..
#.................##........###
####..#.#..#...#.....###.......
..#.#......##.#.......#........
.......##........#..#.....#..#.
...#..#......#..#.#.......###..
#....#...##..#.#.#.#.........#.
....#....#....#.#..#..........#
...###........#.#.###......##..
................#.....#.#...##.
..#..#.###...........#...###.#.
.........................#..#.#
#...#..#..##.###.....##.##.#...
...#..................#.#....#.
......#..##.#.......#.......#..
.##....#.#................#....
.#...#..#.#.#....##....#.......
.##......#.....#..........#....
..#...........#..##.........#..
....#.#...........#..........##
....#.#.#...........#.#........
......#.....#..#....##....##...
............##...##......#.#.##
#.#.....#..#....#..#...#.#...#.
.#...###..#..#.......#.......#.
.....#..#.##.....#....#...#....
##.....#..##.......##..#.#.#..#
....#.#......##....#.....#..###
.#...#.#......#.##...#..##.....
.#...#...#......##..#..#...#.#.
.#.........#....##...###...##..
###.....#......####.....#.#....
.....#..##.##................#.
.#.................#...#..##.#.
....#....#..#.......#.....#....
.##....#..#..#.....###.#..#..#.
#.#.......#.....##...#.....#...
#.#........#.#.###...#....#....
.#.....#.....##.#...#..#.......
..###.#............#...##.###..
.....#.....#..#..##............
.#.#..#.#..##..#....#...##.....
.#...........#..#.......#...#.#
#.#.#.#.....##....#............
...#.................#.#......#
.....##.............#...#.#....
.##......#.#....#..........#.#.
.#.##.......##...#...#.....#.#.
#...#.#........#......##....#.#
#....##....#....#...#..#..#.#.#
......#..........#...#.....#..#
#..#....#....#..##.#..#.#...#..
......#..#.#....#.....#.#..#..#
...#.#...###........#.#......##
..#............................
...#.#..##...##...#...#......##
...#.####......#.........#....#
.#...#.#...##....#......#.#....
.#.....##..##.#................
.#...............#.............
......#.....#...#..##..##......
...#..##.......#.......#..#.#.#
......##.....#..#.....#...#.#.#
........##........#.#........##
.#....#.....###..#.......#...#.
#...#....#.........#.......#...
...##..#........#####.#........
###..#....#.#..#...#.####......
..#..........#.#.............#.
#......#.#....#.#.#....#.##....
.#.#.#.............#....#...#..
......#.....#.#...#..###.#..#..
.....#..#............#...#...##
..#......###..#........#.#.....
#..##......#.#.#.#...........#.
#..#...##.##.....#....#..#.....
...##.#..........#.#....#...#..
.#.#.#.#..#.#...#......#.......
....#......###.#...............
.........#...#....#...#.#....#.
##.#.........#...##............
........#..........#.#...#.....
..#........#....#.......#......
#..#...............#..#...##.#.
#........#.....##.#..#....#...#
..##....#....#.#...........##..
....#.#.........#..#.....#..#..
.......##....#.#.#....###.#....
......#....#.#...#..#.........#
.....##..#....#.#......#.#.#...
#.##..##.#.......#..#...##.#.##
........#.#..#...##.#.#..#.....
#..#......#......#...#.#..#....
.....#......#.#....##....##....
....#.##...##..#..........##.#.
.#....#.......#.........#......
.#.......#.#...#...............
....#.##.......#.##..#.##..#...
#..#.......#.....#..#..........
..#.##.......#....#.#..##..#...
.#.....#...##.#.#..#...#.......
.......#.........#......#.#....
#.##.....##.......#....#.......
##.#.#.........##..#.....#....#
....#.#.#.#....#..#..##.......#
#...#...........#.#............
...#...#.#..#..##..............
......#.......#.........#..#.#.
#.....##.#....#...#..#.........
#...#..###.##..###...##.....#..
#....#.#.#...#.#..........#....
................#.#....#.....##
#.##..............####.....#.##
................#.....#........
#...#..#......#.....#......#...
.........##...........#...#...#
#.#....#...##.....#.....#..#..#
.....#...##..##.............#..
....###.#.......#.........#...#
..#.......#......#..#...#.#....
#.#....#......#.##....#.##.#...
.#.#...#.......#.#...#.##..#...
..........#......#.....#.......
........#...#.....#...##...#.#.
.....##....#.##..#........#.##.
..........##.....#..#........#.
.#....#..#.......#.##..........
.#..#..#...#...#........#.##...
.#...#.##.......#...#........#.
.....#....#.............#..#...
...#....##...#...#.....##......
#.#####.........##...#.....#...
......#.......#....#.....#..#..
..#..............#.#..#..#.....
....#.................#...#....
###.#..##.#....#...#.#......#.#
..##......#.#........#.#...##..
.....#...#...#..#.#..#..##..#..
.##...#......#...#...##.#...#..
.......###.#...........##.##...
.#.##..#.#.###.......#..##...#.
..#....#.......#..##......#....
.#....#.#..#..#.#.#....#...#...
..........##....#....#.#.......
.....#.......#.#..###.#.###....
.#.#....#.##..#.#..#.....#.#.#.
....#.....#.#.#............#...
.###....#...##......##..###..#.
...#.#..#.....#...#....##..#...
.#.#....#..........#...##.....#
#.....##...#........#.#..##..#.
.......#....#.#..........#...#.
.........#..#.#.###.........##.
..................#.#....#....#
....#....#.#..#.......###.##.##
....#...#.................#....
...#..#####.......#.#..##.##...
##.#....#...............#..#...
....#..........#...........#.#.
..##.#.##.#..#.#....#..........
.....#....#....##.#....#....#.#
.......#..##.....###...#....#.#
.#.......#..#.#.#...........#..
.#...........##.#.##....#.#....
....#.#....#.#.#......##.......
.........##......#.#.....###...
........#.#...#.##.....#.##.##.
##.#..##.#.........#....#......
.#.#.#....#..........#.#....#..
....###.........#.#.#..........
#..#....##.....#...............
#.##....#.#...#.....#......#.#.
............#.##........#......
.....#.#.....##..##............
.##..........#.......#......#..
...##..##......#.....#..#....##
.##.##...#.................##..
#....#.#........#..#....#..##.#
....##..##......#....###.#.#..#
.....#....#..#..#...##...#...#.$$, E'\n') as input_str
);

drop table if exists map_dimensions;
create temp table map_dimensions as (
select array_length(input_str, 1) as down
	,length(input_str[1]) as across
from puzzle_input
);

/*part 1 begin*/
drop table if exists squares_visited;
create temp table squares_visited as (
select *
	,step as down_coord
	,(step-1)*3+1 as across_coord
	,(((step-1)*3) % across)+1 as across_coord_adjusted
from map_dimensions
inner join generate_series(1, down) step on true
)


drop table if exists path_taken;
create temp table path_taken as (
select *
from squares_visited sv
left join lateral (select substr(input_str[down_coord], across_coord_adjusted, 1) as tile_visited
	from puzzle_input
	limit 1)a
	on true
)

select sum(case when tile_visited = '#' then 1 else 0 end) as trees
from path_taken


/*part 2 begin*/
drop table if exists slopes;
create temp table slopes (
definition varchar,
down_steps int,
right_steps int);

insert into slopes values('r1d1', 1, 1);
insert into slopes values('r3d1', 1, 3);
insert into slopes values('r5d1', 1, 5);
insert into slopes values('r7d1', 1, 7);
insert into slopes values('r1d2', 2, 1);



drop table if exists squares_visited_p2;
create temp table squares_visited_p2 as (
select s.*
	,down_coord
	,(step_number-1)*right_steps+1 as across_coord
-- 	,(step-1)*right_steps+1 as across_coord
	,(((step_number-1)*right_steps) % across)+1 as across_coord_adjusted
from slopes s 
cross join map_dimensions md
cross join generate_series(1, md.down, s.down_steps) with ordinality as t(down_coord, step_number)
);



select definition
	,count(*) as steps_taken
	,sum(case when tile_visited = '#' then 1 else 0 end) as trees
from(
select *
from squares_visited_p2
left join lateral (select substr(input_str[down_coord], across_coord_adjusted::int, 1) as tile_visited
	from puzzle_input
	limit 1)a
	on true
)a
group by 1