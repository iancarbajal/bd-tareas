/*Cómo obtenemos todos los nombres y correos de nuestros clientes canadienses para una campaña?*/
select c.first_name||' '||c.last_name as name, c.email 
from customer c join address a using (address_id)
join city c2 on a.city_id =c2.city_id 
join country c3 on c2.country_id=c3.country_id 
where c3.country='Canada';

/*Qué cliente ha rentado más de nuestra sección de adultos?*/
select 	c.first_name||' '||c.last_name as name, count(*) as num
from rental r join customer c on r.customer_id = c.customer_id
join inventory i on r.inventory_id=i.inventory_id join film f on i.film_id =f.film_id 
group by name, f.rating 
having f.rating ='NC-17' order by num desc limit 1;

/*Qué películas son las más rentadas en todas nuestras stores?*/
select f.title, count(f.title)
from film f join inventory i using (film_id)
join rental using (inventory_id) join store using (store_id)
group by f.title order by count(f.title) desc limit 1;

/*Cuál es nuestro revenue por store?*/
select s.store_id , sum(p.amount)
from store s join inventory i using (store_id) join rental r using (inventory_id)
join payment p using (customer_id) group by s.store_id;

