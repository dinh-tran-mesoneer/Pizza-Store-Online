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
    name                text not null,
    phone_number        text not null,
    delivery_address    text not null
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

INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (1, 'medium', 'thick', 'Pizza Hai Mặt', 10, 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Rau_Cu_400x275.jpg', 'Pizza Hai Mặt');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (1, 'medium', 'thick', 'Pizza Hai Mặt', 10, 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Rau_Cu_400x275.jpg', 'Pizza Hai Mặt');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (5, 'medium', 'thick', 'Pizza Hải Sản Xốt Cà Chua', 8, 'https://img.dominos.vn/Pizza-Hai-San-Xot-Ca-Chua-Seafood-Delight.jpg', 'Pizza Hải Sản Xốt Cà Chua');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (3, 'medium', 'thick', 'Pizza Thập Cẩm Thượng Hạng', 20, 'https://img.dominos.vn/Pizza-Thap-Cam-Thuong-Hang-Extravaganza.jpg', 'Pizza Thập Cẩm Thượng Hạng');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (2, 'medium', 'thick', 'Pizza Hải Sản Xốt Pesto', 12, 'https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Hai_San_Xot_Pesto_400x275.jpg', 'Pizza Hải Sản Xốt Pesto');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (4, 'medium', 'thick', 'Pizza Lạp Xưởng Trứng Muối', 6, 'https://img.dominos.vn/pizza-lap-xuong-2k.jpg', 'Pizza Lạp Xưởng Trứng Muối');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (6, 'medium', 'thick', 'Pizza Hải Sản Xốt Mayonnaise', 5, 'https://img.dominos.vn/Pizza-Hai-San-Xot-Mayonnaise-Ocean-Mania.jpg', 'Pizza Hải Sản Xốt Mayonnaise');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (7, 'medium', 'thick', 'Pizza Bò Tôm Nướng Kiểu Mỹ', 15, 'https://img.dominos.vn/Surf-turf-Pizza-Bo-Tom-Nuong-Kieu-My-1.jpg', 'Pizza Bò Tôm Nướng Kiểu Mỹ');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (8, 'medium', 'thick', 'Pizza Bánh Xèo Nhật', 3, 'https://img.dominos.vn/Okonomiyaki-banh-xeo-nhat.jpg', 'Pizza Bánh Xèo Nhật');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (9, 'medium', 'thick', 'Pizza Hải Sản Nhiệt Đới Xốt Tiêu', 11, 'https://img.dominos.vn/Pizzaminsea-Hai-San-Nhiet-Doi-Xot-Tieu.jpg', 'Pizza Hải Sản Nhiệt Đới Xốt Tiêu');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (10, 'medium', 'thick', 'Half half', 14, 'https://img.dominos.vn/Half-Half.jpg', 'Half half');
INSERT INTO pizzas (id, size, crust, description, price, image_link, name) VALUES (11, 'medium', 'thick', 'Pizza 5 Loại Thịt Thượng Hạng', 21, 'https://img.dominos.vn/Meat-lover-Pizza-5-Loai-Thit-Thuong-Hang.jpg', 'Pizza 5 Loại Thịt Thượng Hạng');

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
