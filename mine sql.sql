-- selecting all records

select * from projectportfolio.automobile
order by 1,3;

-- number cars by country
select origin,count(name) as number_of_cars from automobile
group by origin;

-- cars with the highest horsepower
select name,weight, horsepower from automobile
where horsepower > 89
order by horsepower desc;

-- average Mile Per Gallon
select round(avg(mpg)) as average_mpg from automobile; 


select name, avg(mpg) from automobile
group by name
having avg(mpg)=23;
 
 
-- cars below average Mile per gallon and its cylinder
select name,mpg,cylinders from automobile where mpg < (select avg(mpg) from automobile) 
order by 1,3;

-- cars above average Mile per gallon and its cylinder
select name,mpg,cylinders from automobile where mpg > (select avg(mpg) from automobile) 
order by 1,3;

-- average acceleration 

select avg(acceleration) as average_speed from automobile;


-- cars above average speed

select name,weight,acceleration from automobile where acceleration >(select avg(acceleration) from automobile);


-- cars below average speed

select name,weight,acceleration from automobile where acceleration <(select avg(acceleration) from automobile);

-- cars with average acceleration

select name, avg(acceleration) from automobile
group by name
having avg(acceleration)=15.5






  


