drop schema netology2 CASCADE ;


create schema netology2;

create table netology2.customers
(
    id           int primary key,
    name         varchar(255),
    surname      varchar(255),
    age          int,
    phone_number varchar(255)
);

insert into netology2.customers
values
(1, 'Alexey','Ivanov', 25, 9022342323),
(2, 'Sergey','Ivanov', 55, 9022342093),
(3, 'Alexey','Smirnov', 45, 9022982323),
(4, 'Dmitriy','Orlov', 34, 9022432323),
(5, 'Oleg','Maslov', 43, 9022365323);

create table netology2.orders
(
    id int  primary key,
    date DATE,
    customer_id int,
    product_name varchar(255),
    amount int,
    FOREIGN KEY (customer_id) REFERENCES netology2.customers(id)
);

insert into netology2.orders
values
(1, '2024-01-02 16:02:34', 3, 'toy bear', 55),
(2, '2024-01-02 16:12:34', 2, 'toy fly', 100),
(3, '2024-01-02 16:22:34', 1, 'toy bee', 155),
(4, '2024-01-02 16:32:34', 5, 'toy board', 115),
(5, '2024-01-02 16:42:34', 4, 'toy rabbit', 79);

select product_name from netology2.orders
join netology2.customers on customers.id = orders.customer_id
where upper(customers.name) = upper('alexey');