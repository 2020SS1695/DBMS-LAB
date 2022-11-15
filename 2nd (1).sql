use insurance079;

update participated
set damage_amount=25000
where report_num=05 AND reg_num=12349;

select*
from participated;

select*
from person;

select*
from owns;

select*
from accident;

select*
from car;

insert into person
values("ka01a16","lingaraj","hanuman nagar");

insert into accident
values (06,01,"mysore");

select*
from car
order by year asc;

select count(participated.report_num)
from car,participated
where car.reg_num=participated.reg_num AND car.model="honda";
 
select count(person.driver_id)
from car,participated,person
where car.reg_num=participated.reg_num
AND participated.driver_id=person.driver_id
 AND car.year=2004;
 
 select count(owns.driver_id)
from car,participated,owns
where car.reg_num=participated.reg_num
AND participated.driver_id=owns.driver_id
 AND car.year=2004;
 
 select avg(damage_amount)
 from participated;
 
 delete from participated
 where damage_amount<125000;
 
 
 

 

