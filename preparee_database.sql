create table users
(
    id serial primary key,
    last_login_time timestamp,
    name            varchar(255) not null,
    password        varchar(255) not null,
    username        varchar(255) not null
);

create table orders
(
    id           serial primary key,
    created_date timestamp default CURRENT_TIMESTAMP,
    status       integer default 0
);
comment on column orders.status is 'has value {0, NEW}, {1, CANCELED}, {2, CONFIRMED}, {3, COOKED}, {4, DONE}';

create table pizza_sizes
(
    type text primary key
);

create table pizza_crusts
(
    type text primary key
);

create table pizzas
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

create table pizza_order_items
(
    pizza_id    integer not null references pizzas(id),
    order_id    integer not null references orders(id),
    size        text    default 'medium' not null references pizza_sizes(type),
    crust       text    default 'thick' not null references pizza_crusts(type),
    quantity    integer default 0 not null,
    constraint pizza_order_item_pk primary key (pizza_id, order_id)
);

create table drinks
(
    id serial primary key,
    name        text              not null,
    description text,
    price       integer default 0 not null
);

insert into drinks(name, price) values ('Cola', 2);
insert into drinks(name, price) values ('Pepsi', 1);

create table public.drink_order_items
(
    drink_id    integer not null references drinks(id),
    order_id    integer not null references orders(id),
    description text,
    quantity    integer default 0 not null,
    constraint drink_order_items_pk primary key (drink_id, order_id)
);
