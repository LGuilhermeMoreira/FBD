select max(price), min(price)
from products 

select round(avg(price),2)
from products

select count(distinct city) 
from customers

select all name
from customers
where state = 'RS'

select prod.name, prov.name
from products prod
join categories cat on cat.id = prod.id_categories
join providers prov on prov.id = prod.id_providers
where cat.id = 6

select m.id, m.name
from movies
join genres g on g.id = m.id_genres
where g.description = 'Action'

select p.name, c.name
from products p
join categories c on c.id = p.id_categories
where p.amount > 100
and c.id in (1,2,3,6,9)
order by c.id


select c.name, round((s.math*2) + (s.specific*3) + (s.project_plan*5),2)/10 AS media 
from candidate c
join score s on s.candidate_id = c.id
order by media

select c.id, c.name
from customers
left join locations l on l.id_customers = c.id
where l.id_customers = null

select 'Approved: ' || s.name || '|' || s.grade
from students
where grade >= 7

select l.name , round(l.omenga * 1.618,3)
from life_registry l
join dimensions d on d.id = l.dimensions_id
where
d.name = 'C875' and d.name = 'C774'


select 'Podium: ' || team
from league
where position in (1,2,3)

select 'Demoted: ' || team
from league
where position in (14,15) 




select c.name,. r.rentals_date 
from customers c
join rentals r on r.id_customers = c.id
where r.rentals_date between '2016-09-01' and '2016-09-30'


