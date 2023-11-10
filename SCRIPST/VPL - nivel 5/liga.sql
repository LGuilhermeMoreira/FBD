-- SELECT 'Podium: ' || team
-- FROM league
-- LIMIT 3;

-- SELECT 'Demoted: ' || team
-- FROM league
-- Where position > (SELECT COUNT(*) FROM league) - 2;


select 'Podium: ' || team
from league
where position in (1,2,3);


with maxposition as (
    select max(position) from league
)
select 'Demoted: ' || team
from league
where position in (maxposition-1,maxposition);
