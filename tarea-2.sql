--/* ¿Qué contactos de proveedores tienen la posición de sales representative?
select contact_name from northwind.suppliers s where s.contact_title = 'Sales Representative';
--/* ¿Qué contactos de proveedores no son marketing managers?
select contact_name from northwind.suppliers s where s.contact_title != 'Marketing Manager';
--/* ¿Cuales órdenes no vienen de clientes en Estados Unidos?
select * from northwind.orders o 
where o.ship_country !='USA';
--/* ¿Qué productos de los que transportamos son quesos?
select product_id, product_name from northwind.products p 
where p.category_id = (select category_id from categories c where c.category_name='Dairy Products');
--/* ¿Qué ordenes van a Bélgica o Francia?
select * from northwind.orders o 
where o.ship_country = 'Belgium' or o.ship_country ='France';
--/* ¿Qué órdenes van a LATAM?
select * from northwind.orders o 
where o.ship_country in ('Brazil','Mexico','Argentina','Venezuela');
--/* ¿Qué órdenes no van a LATAM?
select * from northwind.orders o 
where o.ship_country not in ('Brazil','Mexico','Argentina','Venezuela');
--/* Nombres completos de los empleados, nombres y apellidos unidos en un mismo registro.
select employee_id, first_name||' '||last_name as full_name from employees e;
--/* ¿Cuánta lana tenemos en inventario?
select sum(unit_price*units_in_stock)::numeric::money as Lana_en_inventario from products p;
--/* ¿Cuantos clientes tenemos de cada país?
select country ,count(customer_id) as num_clientes from northwind.customers c group by c.country ;
