select u.name, p.color
from users u
join packages p on p.id_user_sender = u.id
where u.address = 'United States' and p.year = 2019
order by u.name;