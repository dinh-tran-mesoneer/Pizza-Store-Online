create table products
(
    id serial primary key,
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
    id serial primary key,
    last_login_time timestamp,
    name            varchar(255) not null,
    password        varchar(255) not null,
    username        varchar(255) not null
);

create table public.orders
(
    id           serial primary key,
    created_date timestamp default CURRENT_TIMESTAMP,
    status       integer default 0
);
comment on column orders.status is 'has value {0, NEW}, {1, CANCELED}, {2, CONFIRMED}, {3, COOKED}, {4, DONE}';

create table public.pizza_sizes
(
    type text primary key
);

create table public.pizza_crusts
(
    type text primary key
);

create table public.pizzas
(
    id          serial primary key,
    name        text not null,
    size        text    default 'medium' not null references pizza_sizes(type),
    crust       text    default 'thick' not null references pizza_crusts(type),
    description text,
    price       integer default 0        not null,
    image_link  text
);

insert into pizzas(name, size, crust, price, description, image_link)
values ('Pizza Hai Mat', 'medium', 'thick', 120000, 'Pizza Hai Mat', 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Rau_Cu_400x275.jpg');

insert into pizzas(name, size, crust, price, description, image_link)
values ('Pizza Hai San Sot Pesto', 'medium', 'thick', 200000, 'Pizza Hai San Sot Pesto', 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Hai_San_Xot_Pesto_400x275.jpg');

create table public.pizza_order_items
(
    pizza_id    integer not null references pizzas(id),
    order_id    integer not null references orders(id),
    size        text    default 'medium' not null references pizza_sizes(type),
    crust       text    default 'thick' not null references pizza_crusts(type),
    quantity    integer default 0 not null,
    constraint pizza_order_item_pk primary key (pizza_id, order_id)
);

