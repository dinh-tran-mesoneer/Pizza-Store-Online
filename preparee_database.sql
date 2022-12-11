create table products
(
    id serial,
    image_link varchar(255),
    name       varchar(255) not null,
    price      integer
);

insert into products(name, price, image_link)
values ('Pizza Hai Mat', 120000, 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Rau_Cu_400x275.jpg');

insert into products(name, price, image_link)
values ('Pizza Hai San Sot Pesto', 200000, 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Hai_San_Xot_Pesto_400x275.jpg');

create table public.users
(
    id serial,
    last_login_time timestamp,
    name            varchar(255) not null,
    password        varchar(255) not null,
    username        varchar(255) not null
);

create table public.orders
(
    id           serial,
    product_id   integer references products(id),
    created_date timestamp default CURRENT_TIMESTAMP
);
comment on column orders.status is 'has value {0, NEW}, {1, CANCELED}, {2, CONFIRMED}, {3, COOKED}, {4, DONE}';