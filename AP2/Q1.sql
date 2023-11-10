select city, avg(credit_limit)
from customers
group by credit_limit
order by credit_limit desc;