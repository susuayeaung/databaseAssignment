-- Su Su Aye Aung (101296632)

show databases;
use schema101296632;
select * from branches;
select * from clients;
select * from couriers;
select * from employees;

-- number 1
select client_name, client_address, receiver_name, receiver_address, number_of_packages, courier_name
from clients;

-- number 2
select total_packages_delivered, delivery_date
from couriers
where delivery_date between '2019-12-01' and '2019-12-07';

-- number 3
select branch_name, total_packages, date, fees
from branches
where date between '2019-12-01' and '2019-12-31';

-- number 4
select employee_name, working_hour, date
from employees
where date between '2019-12-01' and '2019-12-07';

-- number 5
CREATE TABLE MailLabels
  AS (SELECT clients.client_name, clients.client_address, employees.employee_name, employees.employee_address, couriers.courier_name, couriers.couriers_address
      FROM clients, employees, couriers);
select * from MailLabels;