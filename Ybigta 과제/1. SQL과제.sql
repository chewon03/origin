# 1
select country, offices as 'office의 수', employeeNumber as 'employee의 수'
from offices join employees on offices.officeCode = employees.officeCode
group by offices.country;

#2
select * from customers
where contactFirstname like 'R%';

#3
select * 
from orders join customers on orders.customerNumber =customers.customernumber
where orders.status in ('Cancelled', 'On Hold') 
group by 1;

#4
select officeCode
from employees, COUNT(customers.customerNumber)
left join customers on employees.employeeNumber = customers.salesRepEmployeeNumber
	on offices.officeCode = employees.officeCode
group by officeCode
order by customerNumber desc;

#6
select max(ship_days) as 최대값, min(ship_days) as 최소값
from orders 
	where extract(year from orders.orderDate) = 2005 
		and extract(month from orders.orderDate) = 1;
