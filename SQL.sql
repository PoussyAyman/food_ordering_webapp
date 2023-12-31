USE the_final;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
	customer_name VARCHAR(20),
	email CHAR(40),
	the_Address VARCHAR(30),
	phone_number INT,
	the_Password  CHAR(30)
);
INSERT INTO customer (customer_id, customer_name, email, the_Address, phone_number, the_Password)
VALUES
    (2, 'Jane Smith', 'jane.smith@email.com', '456 Oak St', 5555678, 'password2'),
    (3, 'Bob Johnson', 'bob.johnson@email.com', '789 Elm St', 55591011, 'password3'),
    (4, 'Alice Williams', 'alice.williams@email.com', '321 Maple St', 5551213, 'password4'),
    (5, 'Charlie Brown', 'charlie.brown@email.com', '654 Pine St', 5551415, 'password5'),
    (6, 'Eva Davis', 'eva.davis@email.com', '987 Cedar St', 5551617, 'password6'),
    (7, 'Frank Miller', 'frank.miller@email.com', '234 Birch St', 5551819, 'password7'),
    (8, 'Grace Wilson', 'grace.wilson@email.com', '567 Walnut St', 5552021, 'password8'),
    (9, 'Henry Lee', 'henry.lee@email.com', '890 Spruce St', 5552223, 'password9'),
    (10, 'Ivy Taylor', 'ivy.taylor@email.com', '123 Pineapple St', 5552425, 'password10'),
	(11, 'Jack Anderson', 'jack.anderson@email.com', '456 Orange St', 5552627, 'password11'),
    (12, 'Kelly White', 'kelly.white@email.com', '789 Lemon St', 5552829, 'password12'),
    (13, 'Leo Martinez', 'leo.martinez@email.com', '321 Lime St', 5553031, 'password13'),
    (14, 'Mia Garcia', 'mia.garcia@email.com', '654 Cherry St', 5553233, 'password14'),
    (15, 'Noah Taylor', 'noah.taylor@email.com', '987 Strawberry St', 5553435, 'password15'),
    (16, 'Olivia Brown', 'olivia.brown@email.com', '234 Blueberry St', 5553637, 'password16'),
    (17, 'Peter Smith', 'peter.smith@email.com', '567 Raspberry St', 5553839, 'password17'),
    (18, 'Quinn Johnson', 'quinn.johnson@email.com', '890 Blackberry St', 5554041, 'password18'),
    (19, 'Rachel Davis', 'rachel.davis@email.com', '123 Grape St', 5554243, 'password19'),
    (20, 'Samuel Wilson', 'samuel.wilson@email.com', '456 Kiwi St', 5554445, 'password20'),
    (21, 'Tessa Miller', 'tessa.miller@email.com', '789 Banana St', 5554647, 'password21'),
    (22, 'Ulysses Nelson', 'ulysses.nelson@email.com', '321 Orange St', 5554849, 'password22'),
    (23, 'Victoria Perez', 'victoria.perez@email.com', '654 Strawberry St', 5555051, 'password23'),
    (24, 'William Davis', 'william.davis@email.com', '987 Kiwi St', 5555253, 'password24'),
    (25, 'Ximena Rivera', 'ximena.rivera@email.com', '234 Grape St', 5555455, 'password25'),
    (26, 'Yusuf Khan', 'yusuf.khan@email.com', '567 Blueberry St', 5555657, 'password26'),
    (27, 'Zara Patel', 'zara.patel@email.com', '890 Raspberry St', 5555859, 'password27'),
    (28, 'Aaron Smith', 'aaron.smith@email.com', '123 Blackberry St', 5556061, 'password28'),
    (29, 'Bella White', 'bella.white@email.com', '456 Cherry St', 5556263, 'password29'),
    (30, 'Caleb Taylor', 'caleb.taylor@email.com', '789 Apple St', 5556465, 'password30'),
	(31, 'John Doe', 'john.doe@email.com', '123 Main St', 5551234, 'password1');
	drop table Customer
	----------------------------------------------------------------------------------------
	CREATE TABLE users (
    users_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO users (users_id, customer_id)
VALUES
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27),
    (28, 28),
    (29, 29),
    (30, 30),
    (1, 31);
	drop table users
	----------------------------------------------
	CREATE TABLE administrator (
    admin_id INT PRIMARY KEY,
    admin_name CHAR(20),
    email CHAR(40),
    phone_number INT,
    the_password CHAR(10),
    users_id INT,  
    FOREIGN KEY (users_id) REFERENCES users(users_id)
);
INSERT INTO administrator (admin_id, admin_name, email, phone_number, the_password, users_id)
VALUES
    (1, 'Admin1', 'admin1@email.com', 05551111, 'pass1234', 1);
	drop table administrator
	-------------------------------------------------------------------
CREATE TABLE menu(
    price INT,
	manu_name VARCHAR(50),
	category char(20),
	admin_id INT,  
    FOREIGN KEY (admin_id) REFERENCES administrator(admin_id)
);
INSERT INTO menu (price, manu_name, category, admin_id)
VALUES
    (75, 'Fresh Pasta', 'Pasta', 1),
    (350, 'Grilled Chicken', 'Meat', 1),
    (200, 'Cheese Grilled Chicken', 'Meat', 1),
    (100, 'Bashamel Macrona', 'Pasta', 1),
    (20, 'Kebda', 'Meat', 1),
    (30, 'Organic Juice', 'Juice', 1),
    (20, 'Sodas', 'Juice', 1),
    (30, 'Koshary', 'Main Course', 1),
    (95, 'Mahshy', 'Main Course', 1),
    (17.50, 'Pineapple Juice', 'Juice', 1),
    (7.99, 'Green Juice', 'Juice', 1),
    (12.99, 'Soft Drinks', 'Juice', 1),
    (12.99, 'Carlo Rosee Drinks', 'Juice', 1),
    (200, 'Beef Steak', 'Steak', 1),
    (69.99, 'Tomato with Chicken', 'Main Course', 1),
    (119.99, 'Sausages from Italy', 'Main Course', 1),
    (119.99, 'Beef Grilled', 'Main Course', 1),
    (40, 'Kofta', 'Meat', 1),
    (60, 'Ful Medames', 'Main Course', 1),
    (25, 'Hawawshi', 'Meat', 1),
    (90, 'Molokhia', 'Main Course', 1),
    (45, 'Chicken Liver', 'Meat', 1),
    (15, 'Taameya', 'Appetizer', 1),
    (50, 'Fattah', 'Main Course', 1),
    (18, 'Qamar El Din Juice', 'Juice', 1),
    (22, 'Sobia Drink', 'Juice', 1),
    (120, 'Stuffed Pigeon', 'Main Course', 1),
    (80, 'Mulukhiya with Rabbit', 'Main Course', 1),
    (45, 'Chicken Liver', 'Meat', 1),
    (55, 'Mesaaa', 'Main Course', 1);
	drop table menu
	--------------------------------------------------
CREATE TABLE payment(
    amount int,
	code INT,
	Type Char(20),
	coupon_id INT,
	The_type Char(20),
	customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES  Customer(customer_id),
	FOREIGN KEY (coupon_id) REFERENCES promotion(coupon_id)
);
INSERT INTO payment (amount, code, coupon_id, The_type, customer_id)
VALUES
    (30, 789012, 200, 'Cash', 2),
    (25, 345678, 301, 'Credit Card', 3),
    (40, 901234, 400, 'Cash', 4),
    (15, 567890, 500, 'Credit Card', 5),
    (60, 123111, 600, 'Cash', 6),
    (35, 222333, 700, 'Credit Card', 7),
    (42, 444555, 800, 'Cash', 8),
    (18, 666777, 900, 'Credit Card', 9),
    (48, 888999, 1000, 'Cash', 10),
    (22, 999000, 110, 'Credit Card', 11),
    (33, 111222, 120, 'Cash', 12),
    (27, 333444, 130, 'Credit Card', 13),
    (38, 555666, 140, 'Cash', 14),
    (12, 777888, 150, 'Credit Card', 15),
    (55, 999111, 160, 'Cash', 16),
    (20, 111333, 170, 'Credit Card', 17),
    (45, 222444, 180, 'Cash', 18),
    (32, 444555, 190, 'Credit Card', 19),
    (28, 666777, 2000, 'Cash', 20),
    (40, 777888, 210, 'Credit Card', 21),
    (15, 888999, 220, 'Cash', 22),
    (50, 999000, 230, 'Credit Card', 23),
    (37, 111222, 240, 'Cash', 24),
    (24, 333444, 250, 'Credit Card', 25),
    (42, 555666, 260, 'Cash', 26),
    (19, 777888, 270, 'Credit Card', 27),
    (48, 999111, 280, 'Cash', 28),
    (26, 111333, 290, 'Credit Card', 29),
    (50, 123456, 100, 'Credit Card', 30),
    (36, 222444, 300, 'Cash', 31);

	drop table payment
	-------------------------------------------------------
	CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
	order_item_id INT,
	item_amount INT,
	total_price INT
);
INSERT INTO cart (cart_id, order_item_id, item_amount, total_price)
VALUES
    (1000, 1111, 2, 20),
    (2001, 1222, 1, 15),
    (3000, 1333, 3, 24),
    (4000, 1444, 2, 40),
    (5000, 1555, 1, 15),
    (6000, 1666, 4, 72),
    (7000, 1777, 2, 14),
    (8000, 1888, 3, 42),
    (9000, 1999, 1, 18),
    (1040, 1110, 2, 48),
    (1100, 1211, 1, 22),
    (1200, 1312, 2, 34),
    (1300, 1413, 3, 27),
    (1400, 1514, 1, 38),
    (1500, 1615, 2, 30),
    (1600, 1716, 1, 55),
    (1700, 1817, 3, 20),
    (1800, 1918, 2, 45),
    (1900, 1019, 1, 32),
    (2000, 1120, 2, 28),
    (2100, 1221, 1, 40),
    (2200, 1322, 3, 15),
    (2300, 1423, 2, 50),
    (2400, 1524, 1, 37),
    (2500, 1625, 2, 24),
    (2600, 1726, 3, 42),
    (2700, 1827, 1, 19),
    (2800, 1928, 2, 48),
    (2900, 1129, 1, 26),
    (3001, 1130, 2, 36);
	drop table cart
	---------------------------------------
	CREATE TABLE the_order (
    order_id INT Primary KEY,	
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    Status CHAR(20),
    total_price DECIMAL(10, 5),
    OrderDateTime DATE
);
INSERT INTO the_order (order_id, customer_id, status, total_price, OrderDateTime)
VALUES
    (62, 2, 'Processing', 40.50, '2023-01-02'),
    (63, 3, 'Shipped', 15.75, '2023-01-03'),
    (64, 4, 'Delivered', 60.25, '2023-01-04'),
    (65, 5, 'Pending', 18.50, '2023-01-05'),
    (66, 6, 'Processing', 35.75, '2023-01-06'),
    (67, 7, 'Shipped', 22.00, '2023-01-07'),
    (68, 8, 'Delivered', 48.90, '2023-01-08'),
    (69, 9, 'Pending', 12.25, '2023-01-09'),
    (101, 10, 'Processing', 30.00, '2023-01-10'),
    (111, 11, 'Shipped', 42.75, '2023-01-11'),
    (121, 12, 'Delivered', 17.80, '2023-01-12'),
    (131, 13, 'Pending', 55.00, '2023-01-13'),
    (141, 14, 'Processing', 26.50, '2023-01-14'),
    (151, 15, 'Shipped', 38.25, '2023-01-15'),
    (161, 16, 'Delivered', 20.00, '2023-01-16'),
    (171, 17, 'Pending', 44.50, '2023-01-17'),
    (181, 18, 'Processing', 33.75, '2023-01-18'),
    (191, 19, 'Shipped', 19.00, '2023-01-19'),
    (211, 20, 'Delivered', 27.30, '2023-01-20'),
    (212, 21, 'Pending', 38.50, '2023-01-21'),
    (223, 22, 'Processing', 15.75, '2023-01-22'),
    (234, 23, 'Shipped', 50.25, '2023-01-23'),
    (245, 24, 'Delivered', 37.80, '2023-01-24'),
    (256, 25, 'Pending', 24.00, '2023-01-25'),
    (267, 26, 'Processing', 42.50, '2023-01-26'),
    (278, 27, 'Shipped', 18.25, '2023-01-27'),
    (289, 28, 'Delivered', 48.00, '2023-01-28'),
    (290, 29, 'Pending', 26.75, '2023-01-29'),
    (301, 30, 'Processing', 36.50, '2023-01-30'),
    (61, 31, 'Pending', 25.00, '2023-02-01');
	------------------------------------------------------
	CREATE TABLE promotion (
    coupon_id INT primary key, 
    code VARCHAR(20),	 
    discount_Percentage FLOAT,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES the_order(order_id)
);
INSERT INTO promotion (coupon_id, code, discount_percentage, order_id)
VALUES
    (100, 'CODE1', 10.0, 61),
    (200, 'CODE2', 15.0, 62),
    (301, 'CODE3', 20.0, 63),
    (400, 'CODE4', 25.0, 64),
    (500, 'CODE5', 5.0, 65),
    (600, 'CODE6', 18.0, 66),
    (700, 'CODE7', 12.0, 67),
    (800, 'CODE8', 30.0, 68),
    (900, 'CODE9', 8.0, 69),
    (1000, 'CODE10', 22.0, 101),
    (110, 'CODE11', 15.0, 111),
    (120, 'CODE12', 10.0, 121),
    (130, 'CODE13', 20.0, 131),
    (140, 'CODE14', 25.0, 141),
    (150, 'CODE15', 5.0, 151),
    (160, 'CODE16', 18.0, 161),
    (170, 'CODE17', 12.0, 171),
    (180, 'CODE18', 30.0, 181),
    (190, 'CODE19', 8.0, 191),
    (2000, 'CODE20', 22.0, 211),
    (210, 'CODE21', 15.0, 212),
    (220, 'CODE22', 10.0, 223),
    (230, 'CODE23', 20.0, 234),
    (240, 'CODE24', 25.0, 245),
    (250, 'CODE25', 5.0, 256),
    (260, 'CODE26', 18.0, 267),
    (270, 'CODE27', 12.0, 278),
    (280, 'CODE28', 30.0, 289),
    (290, 'CODE29', 8.0, 290),
    (300, 'CODE30', 22.0, 301);
	---------------------------------------------------
	CREATE TABLE review (
 review_id int primary key,
 rate int,
 comment varchar(30),
 the_date DATE
);
INSERT INTO review (review_id, rate, comment, the_date)
VALUES
    (1, 4, 'Good product', '2023-03-01'),
    (2, 3, 'Average experience', '2023-03-02'),
    (3, 5, 'Excellent service!', '2023-03-03'),
    (4, 2, 'Not satisfied', '2023-03-04'),
    (5, 4, 'Impressed with the quality', '2023-03-05'),
    (6, 5, 'Top-notch product', '2023-03-06'),
    (7, 3, 'Could be better', '2023-03-07'),
    (8, 4, 'Satisfied with the purchase', '2023-03-08'),
    (9, 5, 'Fantastic service!', '2023-03-09'),
    (10, 2, 'Disappointed with the product', '2023-03-10'),
    (11, 4, 'Happy with the experience', '2023-03-11'),
    (12, 3, 'Needs improvement', '2023-03-12'),
    (13, 5, 'Outstanding quality', '2023-03-13'),
    (14, 4, 'Great value for money', '2023-03-14'),
    (15, 3, 'Decent experience', '2023-03-15'),
    (16, 4, 'Very satisfied', '2023-03-16'),
    (17, 5, 'Exceptional service', '2023-03-17'),
    (18, 3, 'Average product', '2023-03-18'),
    (19, 4, 'Impressed with the support', '2023-03-19'),
    (20, 5, 'Great value', '2023-03-20'),
    (21, 4, 'Good overall', '2023-03-21'),
    (22, 3, 'Not bad', '2023-03-22'),
    (23, 5, 'Excellent product!', '2023-03-23'),
    (24, 4, 'Very happy customer', '2023-03-24'),
    (25, 3, 'Satisfactory', '2023-03-25'),
    (26, 4, 'Highly satisfied', '2023-03-26'),
    (27, 5, 'Fantastic experience', '2023-03-27'),
    (28, 3, 'Could be improved', '2023-03-28'),
    (29, 4, 'Pleased with the service', '2023-03-29'),
    (30, 5, 'Amazing!', '2023-03-30');
	--------------------------------------------------------
CREATE TABLE CustomerReviews (
    review_id INT,
    customer_id INT,
    FOREIGN KEY (review_id) REFERENCES review(review_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO CustomerReviews (review_id, customer_id)
VALUES
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27),
    (28, 28),
    (29, 29), 
    (30, 30),
	(1, 31);
	-----------------------------------------------------------------
CREATE TABLE CustomerPayments (
    coupon_id INT,
    customer_id INT,
    FOREIGN KEY (coupon_id) REFERENCES promotion(coupon_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
INSERT INTO CustomerPayments (coupon_id, customer_id)
VALUES
    (200, 2),
    (301, 3),
    (400, 4),
    (500, 5),
    (600, 6),
    (700, 7),
    (800, 8),
    (900, 9),
    (1000,10),
    (110, 11),
    (120, 12),
    (130, 13),
    (140, 14),
    (150, 15),
    (160, 16),
    (170, 17),
    (180, 18),
    (190, 19),
    (2000,20),
    (210, 21),
    (220, 22),
    (230, 23),
    (240, 24),
    (250, 25),
    (260, 26),
    (270, 27),
    (280, 28),
    (290, 29),
    (300, 30),
	(400, 31);
--------------------------------------------------------------
CREATE TABLE order_items(
	image_url varchar(30),
	order_item_id int primary key,
	cart_id int,
	items_id int,
	users_id int,
	FOREIGN KEY (cart_id) REFERENCES cart(cart_id)
);
INSERT INTO order_items (image_url, order_item_id, cart_id, items_id, users_id)
VALUES
    ('7awawshy.jpg', 31, 1000, 1101, 31),
    ('fatta.jpg', 32, 2000, 1102, 2),
    ('feteer.jpg', 33, 3000, 1103, 3),
    ('kebda.jpg', 34, 4000, 1104, 4),
    ('koshary.jpg', 35, 5000, 1105, 5),
    ('ma7shy.jpg', 36, 6000, 1106, 6),
    ('macronaBsdhamel.jpg', 37, 7000, 1107, 7),
    ('res_img_1.jpg', 38, 8000, 1108, 8),
    ('res_img_2.jpg', 39, 9000, 1109, 9),
    ('res_img_3.jpg', 40, 1000, 1110, 10),
    ('res_img_4.jpg', 41, 1100, 1111, 11),
    ('res_img_5.jpg', 42, 1200, 1112, 12),
    ('res_img_6.jpg', 43, 1300, 1113, 13),
    ('res_img_7.jpg', 44, 1400, 1114, 14),
    ('res_img_8.jpg', 45, 1500, 1115, 15),
    ('slide_1.jpg', 46, 1600, 1116, 16),
    ('slide_2.jpg', 47, 1700, 1117, 17),
    ('slide_3.jpg', 48, 1800, 1118, 18),
    ('type-1.jpg', 49, 1900, 1119, 19),
    ('type-2.jpg', 50, 2000, 1120, 20),
    ('type-3.jpg', 51, 2100, 1121, 21),
    ('type-4.jpg', 52, 2200, 1122, 22),
    ('wood_1.jpg', 53, 2300, 1123, 23),
    ('item24.jpg', 54, 2400, 1124, 24),
    ('item25.jpg', 55, 2500, 1125, 25),
    ('item26.jpg', 56, 2600, 1126, 26),
    ('item27.jpg', 57, 2700, 1127, 27),
    ('item28.jpg', 58, 2800, 1128, 28),
    ('item29.jpg', 59, 2900, 1129, 29),
    ('item30.jpg', 60, 3000, 1130, 30);
	------------------------------------------------------------
CREATE TABLE Has_order(
order_item_id INT, FOREIGN KEY (order_item_id) REFERENCES order_items(order_item_id),
order_id INT, FOREIGN KEY (order_id) REFERENCES the_order(order_id),
);
INSERT INTO Has_order(order_item_id, order_id)
VALUES
    (31,61),
    (32,62),
    (33,63),
    (34,64),
    (35,65),
    (36,66),
    (37,67),
    (38,68),
    (39,69),
    (40,101),
    (41,111),
    (42,121),
    (43,131),
    (44,141),
    (45,151),
    (46,161),
    (47,171),
    (48,181),
    (49,191),
    (50,211),
    (51,212),
    (52,223),
    (53,234),
    (54,245), 
    (55,256),
    (56,267),
    (57,278),
    (58,289),
    (59,290),
    (60,301); 
-------------------------------------------
CREATE table customizations (
customization_id int primary key,
price DECIMAL(10,5),
the_description VARCHAR(30),
availibility char(20)
);
INSERT INTO customizations (customization_id, price, the_description, availibility)
VALUES
    (15, 5.00, 'Extra Cheese', 'Available'),
    (25, 2.50, 'Spicy Sauce', 'Available'),
    (35, 1.00, 'Garlic Butter', 'Not Available'),
    (45, 3.50, 'Mushrooms', 'Available'),
    (55, 2.00, 'Bacon Bits', 'Available'),
    (65, 4.00, 'Onions', 'Not Available'),
    (75, 1.50, 'Pepperoni', 'Available'),
    (85, 2.50, 'Olives', 'Available'),
    (95, 3.00, 'Green Peppers', 'Not Available'),
    (555, 1.50, 'Jalapenos', 'Available'),
    (115, 4.50, 'Ham', 'Available'),
    (125, 2.00, 'Pineapple', 'Not Available'),
    (135, 3.00, 'Tomatoes', 'Available'),
    (145, 1.00, 'Basil', 'Available'),
    (155, 2.00, 'Feta Cheese', 'Not Available'),
    (165, 4.00, 'Sausage', 'Available'),
    (175, 1.50, 'Red Onions', 'Available'),
    (185, 2.50, 'Broccoli', 'Not Available'),
    (195, 3.50, 'Spinach', 'Available'),
    (205, 1.00, 'Artichokes', 'Available'),
    (215, 5.00, 'Extra Sauce', 'Not Available'),
    (225, 2.50, 'Black Olives', 'Available'),
    (235, 1.00, 'Anchovies', 'Available'),
    (245, 3.00, 'Buffalo Sauce', 'Not Available'),
    (255, 2.00, 'BBQ Sauce', 'Available'),
    (265, 4.00, 'Sun-dried Tomatoes', 'Available'),
    (275, 1.50, 'Pesto', 'Not Available'),
    (285, 2.50, 'Parmesan Cheese', 'Available'),
    (295, 3.50, 'Shrimp', 'Available'),
    (300, 1.00, 'Cilantro', 'Not Available');
	-------------------------------------------------------------
Create table OrderItemCustmization(
order_item_id INT,
FOREIGN KEY (order_item_id) REFERENCES order_items(order_item_id),
customization_id INT,
FOREIGN KEY (customization_id) REFERENCES customizations(customization_id)
);
INSERT INTO OrderItemCustmization (order_item_id, customization_id)
VALUES
    (31, 15),
    (32, 25),
    (33, 35),
    (34, 45),
    (35, 55),
    (36, 65),
    (37, 75),
    (38, 85),
    (39, 95),
    (40, 555),
    (41, 115),
    (42, 125),
    (43, 135),
    (44, 145),
    (45, 155),
    (46, 165),
    (47, 175),
    (48, 185),
    (49, 195),
    (50, 205),
    (51, 215),
    (52, 225),
    (53, 235),
    (54, 245),
    (55, 255),
    (56, 265),
    (57, 275),
    (58, 285),
    (59, 295),
    (60, 300);
----------------------------------------------------------------------
