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
    id                  serial primary key,
    created_date        timestamp default CURRENT_TIMESTAMP,
    status              integer default 0,
    name                text,
    phone_number        text,
    delivery_address    text
);
comment on column orders.status is 'has value {0, NEW}, {1, CANCELED}, {2, CONFIRMED}, {3, COOKED}, {4, DONE}';

CREATE TABLE pizza_sizes
(
    type TEXT PRIMARY KEY
);
INSERT INTO pizza_sizes(type) VALUES ('small');
INSERT INTO pizza_sizes(type) VALUES ('medium');
INSERT INTO pizza_sizes(type) VALUES ('large');

CREATE TABLE pizza_crusts
(
    type TEXT PRIMARY KEY
);
INSERT INTO pizza_crusts(type) VALUES ('thin');
INSERT INTO pizza_crusts(type) VALUES ('thick');
INSERT INTO pizza_crusts(type) VALUES ('cruspy');

CREATE TABLE pizzas
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
values ('Pizza Hai Mat', 'medium', 'thick', 12, 'Pizza Hai Mat', 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Rau_Cu_400x275.jpg');

insert into pizzas(name, size, crust, price, description, image_link)
values ('Pizza Hai San Sot Pesto', 'medium', 'thick', 20, 'Pizza Hai San Sot Pesto', 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Hai_San_Xot_Pesto_400x275.jpg');

insert into pizzas(name, size, crust, price, description, image_link)
values ('Pizza Pepperoni', 'medium', 'thick', 11, 'Pizza Pepperoni', 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Xuc_Xich_Nuong_400x275.jpg');

insert into pizzas(name, size, crust, price, description, image_link)
values ('Pizza Hai San Cocktail', 'medium', 'thick', 13, 'Pizza Hai San Cocktail', 'https://thepizzacompany.vn/images/thumbs/000/0002212_sf-cocktail_500.png');

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
    price       integer default 0 not null,
    image_link  text
);

insert into drinks(name, price, image_link) values ('Cola', 2, 'https://cdn.shopify.com/s/files/1/0578/8362/3632/products/coco_cola_330ml_a044fb03-a4b9-4ebe-83fd-69f3071faeda_1024x1024@2x.jpg');
insert into drinks(name, price, image_link) values ('Pepsi', 1, 'https://m.media-amazon.com/images/I/61zdLq3yhSL._SL1080_.jpg');

create table drink_order_items
(
    drink_id    integer not null references drinks(id),
    order_id    integer not null references orders(id),
    description text,
    quantity    integer default 0 not null,
    constraint drink_order_items_pk primary key (drink_id, order_id)
);
