CREATE TABLE customers (
                           id SERIAL PRIMARY KEY,
                           customer_name VARCHAR(255),
                           contact_name VARCHAR(255),
                           address VARCHAR(255),
                           city VARCHAR(255),
                           postal_code VARCHAR(20),
                           country VARCHAR(255)
);

CREATE TABLE categories (
                            id SERIAL PRIMARY KEY,
                            category_name VARCHAR(255),
                            description TEXT
);

CREATE TABLE employees (
                           id SERIAL PRIMARY KEY,
                           last_name VARCHAR(255),
                           first_name VARCHAR(255),
                           birth_date DATE,
                           photo VARCHAR,
                           notes TEXT
);

CREATE TABLE suppliers (
                           id SERIAL PRIMARY KEY,
                           supplier_name VARCHAR(255),
                           contact_name VARCHAR(255),
                           address VARCHAR(255),
                           city VARCHAR(255),
                           postal_code VARCHAR(20),
                           country VARCHAR(255),
                           phone VARCHAR(20)
);

CREATE TABLE shippers (
                          id SERIAL PRIMARY KEY,
                          shipper_name VARCHAR(255),
                          phone VARCHAR(20)
);

CREATE TABLE products (
                          id SERIAL PRIMARY KEY,
                          product_name VARCHAR(255),
                          unit VARCHAR(20),
                          price DECIMAL(10,2),
                          supplier_id INTEGER REFERENCES suppliers(id),
                          category_id INTEGER REFERENCES categories(id)
);

CREATE TABLE orders (
                        id SERIAL PRIMARY KEY,
                        order_date DATE,
                        customer_id INTEGER REFERENCES customers(id),
                        employee_id INTEGER REFERENCES employees(id),
                        shipper_id INTEGER REFERENCES shippers(id)
);

CREATE TABLE orderDetails (
                              id SERIAL PRIMARY KEY,
                              order_id INTEGER REFERENCES orders(id),
                              product_id INTEGER REFERENCES products(id),
                              quantity INTEGER
);

--  61 DATA
INSERT INTO customers (customer_name, contact_name, address, city, postal_code, country)
VALUES
    ('ABC Corp', 'John Johnson', '123 Business St', 'Metropolis', '54321', 'USA'),
    ('Tech Solutions Ltd.', 'Alice Adams', '456 Tech Ave', 'Techville', '98765', 'Canada'),
    ('Global Ventures', 'Bob Roberts', '789 Venture Ln', 'Cityburg', '12345', 'UK'),
    ('Innovate Innovations', 'Charlie Chang', '101 Innovation Rd', 'Techtopia', '67890', 'Australia'),
    ('Eco-Friendly Goods', 'Eva Green', '202 Green St', 'Greenburg', '23456', 'Germany'),
    ('Sunrise Retail', 'Grace Turner', '303 Sunrise Blvd', 'Sunrise City', '34567', 'France'),
    ('Peak Solutions', 'Hank Peak', '404 Summit Ave', 'Summitville', '78901', 'Italy'),
    ('Everlasting Supplies', 'Ivy Everlasting', '505 Eternal Dr', 'Timeless Town', '89012', 'Spain'),
    ('FashionHouse Creations', 'Linda Designer', '606 Trendy Rd', 'Styleville', '90123', 'France'),
    ('Gourmet Delights', 'Oliver Gourmet', '707 Culinary St', 'Gourmetburg', '11234', 'USA'),
    ('TechWiz Innovations', 'Wendy Techie', '808 Tech Ln', 'Techtopolis', '22345', 'Germany'),
    ('HomeDecor Haven', 'Harry Decorator', '909 Elegance Ave', 'Elegantville', '33456', 'Italy'),
    ('OrganicLife Market', 'Olivia Organic', '111 Organic Blvd', 'Organicburg', '44567', 'Spain'),
    ('PetParadise', 'Paula Petlover', '222 Pet Ln', 'Petville', '55678', 'Canada'),
    ('FitnessFocus', 'Frank Fitness', '333 Gym Rd', 'FitCity', '66789', 'Australia'),
    ('GadgetGenius', 'Gina Gadget', '444 Tech Blvd', 'Gadgettown', '77890', 'UK'),
    ('Wanderlust Explorers', 'Eddie Explorer', '555 Adventure Ave', 'Adventureville', '88901', 'USA'),
    ('CozyComfort Furnishings', 'Carla Comfort', '666 Comfort Ln', 'Comfortburg', '99012', 'France'),
    ('LuxuryLifestyle Creations', 'Leo Luxury', '777 Opulence St', 'Luxuryville', '00123', 'Italy'),
    ('GreenHarvest Organics', 'Hannah Green', '888 Harvest Rd', 'Harvesttown', '11234', 'Spain'),
    ('BookWorm Library', 'Brian Bookworm', '999 Library Ave', 'Booksville', '22345', 'Germany'),
    ('FashionFiesta Styles', 'Fiona Fashionista', '101 Glamour Blvd', 'GlamCity', '33456', 'Canada'),
    ('HealthyHabit Organics', 'Henry Habit', '202 Wellness Ln', 'Wellnesstown', '44567', 'USA'),
    ('TechTrend Innovations', 'Tina Trend', '303 Trendsetter St', 'Trendtopia', '55678', 'Australia'),
    ('ChicCouture Boutique', 'Charles Couture', '404 Chic Rd', 'Chicville', '66789', 'UK'),
    ('PetPamper Supplies', 'Penny Pamper', '505 Pet Blvd', 'Pettopia', '77890', 'Italy'),
    ('AdventureGear Pro', 'Aaron Adventurer', '606 Outdoor Ave', 'Adventureburg', '88901', 'Spain'),
    ('GourmetGrove Market', 'Georgia Gourmet', '707 Culinary Blvd', 'Culinaryville', '99012', 'France'),
    ('TechSavvy Solutions', 'Sam Savvy', '808 Tech Rd', 'TechCity', '00123', 'Italy'),
    ('NatureNest Home', 'Nina Nature', '909 Nature Ln', 'Natureburg', '11234', 'Spain'),
    ('PetParlour', 'Peter Petlover', '111 Pet Rd', 'Petville', '22345', 'Germany'),
    ('FitnessFusion', 'Faye Fitness', '222 Gym Blvd', 'FitCity', '33456', 'Canada'),
    ('GadgetGuru', 'Gary Gadget', '333 Tech Ln', 'Gadgettopia', '44567', 'USA'),
    ('Wanderlust Trekkers', 'Tracy Trekker', '444 Adventure St', 'Adventuretown', '55678', 'Australia'),
    ('ComfortCraft Furnishings', 'Cody Comfort', '555 Comfort Rd', 'Comfortville', '66789', 'UK'),
    ('LuxuryLiving Creations', 'Lola Luxury', '666 Luxury Ave', 'Luxuryburg', '77890', 'Italy'),
    ('GreenGrove Organics', 'Greg Green', '777 Grove Ln', 'Grovetown', '88901', 'Spain'),
    ('BookBuff Library', 'Brenda Bookbuff', '888 Book Blvd', 'Booksville', '99012', 'France'),
    ('FashionFiesta Boutique', 'Fred Fashionista', '999 Trendy Rd', 'Trendytown', '00123', 'Italy'),
    ('HealthyHabits Organics', 'Heather Habit', '101 Wellness Ave', 'Wellnesstown', '11234', 'Spain'),
    ('TechTonic Innovations', 'Tom Tonic', '202 Tech Blvd', 'Techtopia', '22345', 'Germany'),
    ('ChicCraze Boutique', 'Cathy Craze', '303 Chic St', 'Chicville', '33456', 'Canada'),
    ('PetParade Supplies', 'Patrick Parade', '404 Pet Ave', 'Pettopolis', '44567', 'USA'),
    ('AdventureGear Pro', 'Amy Adventurer', '505 Outdoor Blvd', 'Adventuretown', '55678', 'Australia'),
    ('GourmetGourmet Market', 'Gavin Gourmet', '606 Culinary Rd', 'Culinaryburg', '66789', 'UK'),
    ('TechTricks Solutions', 'Tiffany Tricks', '707 Tech Ln', 'TechCity', '77890', 'Italy'),
    ('NatureNook Home', 'Nick Nook', '808 Nature Blvd', 'Naturetown', '88901', 'Spain'),
    ('PetPleasure', 'Pam Petlover', '909 Pet Rd', 'Pettopia', '99012', 'France'),
    ('FitnessFiesta', 'Finn Fitness', '111 Gym Ave', 'FitCity', '00123', 'Italy'),
    ('GadgetGizmo', 'Grace Gizmo', '222 Tech St', 'Gadgettopia', '11234', 'Spain'),
    ('Wanderlust Trailblazers', 'Tyler Trailblazer', '333 Adventure Ave', 'Adventureville', '22345', 'Germany'),
    ('ComfortCraft Furnishings', 'Claire Craft', '444 Comfort Blvd', 'Comfortville', '33456', 'Canada'),
    ('LuxuryLiving Creations', 'Larry Luxury', '555 Luxury Rd', 'Luxurytown', '44567', 'USA'),
    ('GreenGrove Organics', 'Gina Green', '666 Grove St', 'Grovetown', '55678', 'Australia'),
    ('BookBliss Library', 'Brett Bliss', '777 Book Blvd', 'Booksville', '66789', 'UK'),
    ('FashionFiesta Boutique', 'Fiona Fashionista', '888 Trendy Ave', 'Trendytown', '77890', 'Italy'),
    ('HealthyHabits Organics', 'Harry Habit', '999 Wellness Blvd', 'Wellnesstown', '88901', 'Spain'),
    ('TechTrek Innovations', 'Tara Trek', '101 Tech St', 'Techtopia', '99012', 'France'),
    ('ChicCharm Boutique', 'Charlie Charm', '202 Chic Ave', 'Chicville', '00123', 'Italy'),
    ('PetPalooza Supplies', 'Penny Palooza', '303 Pet Ln', 'Pettopolis', '11234', 'Spain'),
    ('AdventureGear Pro', 'Andy Adventurer', '404 Outdoor Blvd', 'Adventuretown', '22345', 'Germany');

-- 10 DATA
INSERT INTO categories (category_name, description)
VALUES
    ('Electronics', 'Products related to electronic devices and accessories.'),
    ('Clothing', 'A variety of apparel and fashion accessories.'),
    ('Home and Garden', 'Items for home improvement and gardening.'),
    ('Books', 'Books covering various genres and topics.'),
    ('Sports and Outdoors', 'Equipment and gear for various sports and outdoor activities.'),
    ('Toys and Games', 'Playful items for entertainment and recreation.'),
    ('Health and Beauty', 'Products related to personal care and well-being.'),
    ('Furniture', 'Furnishings and decor for home and office.'),
    ('Automotive', 'Parts and accessories for vehicles.'),
    ('Food and Beverages', 'A selection of food items and beverages.');

-- 15 DATA
INSERT INTO employees (last_name, first_name, birth_date, photo, notes)
VALUES
    ('Smith', 'John', '1980-05-15', 'john_smith.jpg', 'Experienced professional with a focus on teamwork.'),
    ('Johnson', 'Alice', '1985-08-22', 'alice_johnson.jpg', 'Detail-oriented and highly motivated individual.'),
    ('Brown', 'Robert', '1977-03-10', 'robert_brown.jpg', 'Creative thinker with a passion for innovation.'),
    ('Chang', 'Emily', '1990-12-05', 'emily_chang.jpg', 'Energetic and adaptable team player.'),
    ('Garcia', 'Carlos', '1982-06-18', 'carlos_garcia.jpg', 'Dedicated and results-driven professional.'),
    ('Miller', 'Grace', '1988-09-30', 'grace_miller.jpg', 'Customer-focused with excellent communication skills.'),
    ('Turner', 'Daniel', '1975-11-25', 'daniel_turner.jpg', 'Proactive problem solver with strong analytical skills.'),
    ('Patel', 'Zara', '1983-04-12', 'zara_patel.jpg', 'Tech enthusiast and continuous learner.'),
    ('Wang', 'Li', '1992-01-08', 'li_wang.jpg', 'Multilingual and culturally aware individual.'),
    ('Kim', 'Seung', '1986-07-20', 'seung_kim.jpg', 'Detail-oriented and highly organized professional.'),
    ('Fisher', 'Emma', '1989-02-14', 'emma_fisher.jpg', 'Passionate about fostering a positive work environment.'),
    ('Nguyen', 'Minh', '1981-10-01', 'minh_nguyen.jpg', 'Adaptable and collaborative team member.'),
    ('Gupta', 'Amit', '1978-12-17', 'amit_gupta.jpg', 'Experienced leader with a focus on mentorship.'),
    ('Cohen', 'Rachel', '1995-06-28', 'rachel_cohen.jpg', 'Creative problem solver with excellent communication skills.'),
    ('Mendoza', 'Carlos', '1984-03-08', 'carlos_mendoza.jpg', 'Detail-oriented and result-driven professional.');


-- 29 Data
INSERT INTO suppliers (supplier_name, contact_name, address, city, postal_code, country, phone)
VALUES
    ('TechCom Solutions', 'John Supplier', '123 Tech St', 'Techville', '54321', 'USA', '+1 555-1234'),
    ('Fashion Trends Ltd.', 'Alice Fashion', '456 Chic Ave', 'Style City', '98765', 'Canada', '+1 555-5678'),
    ('GreenGarden Supplies', 'Bob Green', '789 Nature Ln', 'EcoTown', '12345', 'UK', '+44 20 1234 5678'),
    ('Book Haven Publishers', 'Charlie Author', '101 Story Rd', 'Literaryville', '67890', 'Australia', '+61 2 9876 5432'),
    ('SportsGear Pro', 'Eva Sporty', '202 Fitness Blvd', 'Activeburg', '23456', 'Germany', '+49 1234 5678'),
    ('ElectroTech Innovations', 'Rob Innovator', '303 Circuit Ave', 'Techtopia', '34567', 'USA', '+1 555-9876'),
    ('FashionHouse Creations', 'Linda Designer', '404 Runway Blvd', 'Fashion City', '45678', 'Italy', '+39 02 3456 7890'),
    ('GreenThumb Gardening', 'Gary Gardner', '505 Meadow Ln', 'Greenburg', '56789', 'Canada', '+1 555-8765'),
    ('BookWorm Publishers', 'Emily Writer', '606 Library St', 'Booksville', '67890', 'UK', '+44 20 5678 1234'),
    ('SportsPro Equipment', 'Max Athlete', '707 Stadium Rd', 'Athlete City', '78901', 'USA', '+1 555-2345'),
    ('TechGlobe Solutions', 'Sara Techie', '808 Innovation Ave', 'Techtown', '89012', 'Germany', '+49 1234 6789'),
    ('ChicCouture Styles', 'Chris Stylist', '909 Trendy Blvd', 'Styleburg', '90123', 'Italy', '+39 02 6789 0123'),
    ('NatureHarmony Eco', 'Olivia Eco', '101 Green Rd', 'EcoCity', '11223', 'Australia', '+61 2 3456 7890'),
    ('AdventureGear Pro', 'Alex Explorer', '202 Summit Ln', 'Adventureburg', '33445', 'Canada', '+1 555-3456'),
    ('TechSavvy Innovations', 'Tony Tech', '303 Silicon St', 'Techville', '55667', 'USA', '+1 555-6789'),
    ('CasaDecor Furnishings', 'Maria Decorator', '404 Elegance Ave', 'Elegantburg', '77889', 'Spain', '+34 91 2345 6789'),
    ('GreenLife Organic', 'Lucas Green', '505 Organic Blvd', 'Organictown', '99001', 'Germany', '+49 1234 5678'),
    ('CulinaryDelights', 'Sophia Chef', '606 Gourmet St', 'Culinary City', '11223', 'France', '+33 1 2345 6789'),
    ('GizmoTech Solutions', 'Peter Gizmo', '707 Innovation Ln', 'Gadgetburg', '44556', 'Italy', '+39 02 7890 1234'),
    ('FashionFiesta Styles', 'Emma Fashionista', '808 Glamour Rd', 'GlamCity', '66778', 'Spain', '+34 91 3456 7890'),
    ('HealthyHarvest Organics', 'Leo Organic', '909 Harvest Blvd', 'Harvestburg', '11223', 'USA', '+1 555-1234'),
    ('FitnessGear Pro', 'Nina Fitness', '101 Gym Ave', 'FitCity', '33445', 'Canada', '+1 555-5678'),
    ('TechInnovate Solutions', 'Mike Inventor', '202 Tech Blvd', 'Innovationtown', '55667', 'UK', '+44 20 6789 0123'),
    ('HomeBliss Furnishings', 'Laura Bliss', '303 Comfort St', 'Comfortville', '77889', 'Germany', '+49 1234 5678'),
    ('OrganicDelights', 'Daniel Farmer', '404 Organic Rd', 'Organicburg', '99001', 'Italy', '+39 02 7890 1234'),
    ('PetPalace Supplies', 'Mia Petlover', '505 Pet Ln', 'Petville', '11223', 'France', '+33 1 2345 6789'),
    ('TechGenius Innovations', 'Ryan Genius', '606 Tech Blvd', 'Techtopolis', '44556', 'Spain', '+34 91 3456 7890'),
    ('Wanderlust Outfitters', 'Lily Explorer', '707 Adventure Ave', 'Adventuretown', '66778', 'Germany', '+49 1234 5678');

-- 5 Data
INSERT INTO shippers (shipper_name, phone)
VALUES
    ('FastCourier Express', '+1 555-1234'),
    ('SwiftShipping Services', '+1 555-5678'),
    ('RapidLogistics Co.', '+44 20 1234 5678'),
    ('QuickCargo Solutions', '+61 2 9876 5432'),
    ('SpeedyFreight Express', '+49 1234 5678');

--  76 DATA
INSERT INTO products (product_name, supplier_id, category_id, unit, price)
VALUES
    ('Chais', 1, 1, '10 boxes x 20 bags', 18),
    ('Chang', 1, 1, '24 - 12 oz bottles', 19),
    ('Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
    ('Chef Anton\ Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
    ('Chef Anton\ Gumbo Mix', 2, 2, '36 boxes', 21.35),
    ('Grandma\Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25),
    ('Uncle Bob Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30),
    ('Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40),
    ('Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97),
    ('Ikura', 4, 8, '12 - 200 ml jars', 31),
    ('Queso Cabrales', 5, 4, '1 kg pkg.', 21),
    ('Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38),
    ('Konbu', 6, 8, '2 kg box', 6),
    ('Tofu', 6, 7, '40 - 100 g pkgs.', 23.25),
    ('Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.5),
    ('Pavlova', 7, 3, '32 - 500 g boxes', 17.45),
    ('Alice Mutton', 7, 6, '20 - 1 kg tins', 39),
    ('Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5),
    ('Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2),
    ('Sir Rodney\ Marmalade', 8, 3, '30 gift boxes', 81),
    ('Sir Rodney\ Scones', 8, 3, '24 pkgs. x 4 pieces', 10),
    ('Gustaf\ Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21),
    ('Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9),
    ('Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.5),
    ('NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14),
    ('Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23),
    ('Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9),
    ('Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6),
    ('Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79),
    ('Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89),
    ('Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5),
    ('Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32),
    ('Geitost', 15, 4, '500 g', 2.5),
    ('Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14),
    ('Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18),
    ('Inlagd Sill', 17, 8, '24 - 250 g jars', 19),
    ('Gravad lax', 17, 8, '12 - 500 g pkgs.', 26),
    ('Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5),
    ('Chartreuse verte', 18, 1, '750 cc per bottle', 18),
    ('Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4),
    ('Jack\ New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65),
    ('Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14),
    ('Ipoh Coffee', 20, 1, '16 - 500 g tins', 46),
    ('Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45),
    ('Røgede sild', 21, 8, '1k pkg.', 9.5),
    ('Spegesild', 21, 8, '4 - 450 g glasses', 12),
    ('Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5),
    ('Chocolade', 22, 3, '10 pkgs.', 12.75),
    ('Maxilaku', 23, 3, '24 - 50 g pkgs.', 20),
    ('Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25),
    ('Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53),
    ('Filo Mix', 24, 5, '16 - 2 kg boxes', 7),
    ('Perth Pasties', 24, 6, '48 pieces', 32.8),
    ('Tourtière', 25, 6, '16 pies', 7.45),
    ('Pâté chinois', 25, 6, '24 boxes x 2 pies', 24),
    ('Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38),
    ('Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5),
    ('Escargots de Bourgogne', 27, 8, '24 pieces', 13.25),
    ('Raclette Courdavault', 28, 4, '5 kg pkg.', 55),
    ('Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34),
    ('Sirop d\érable', 22, 2, '24 - 500 ml bottles', 28.5),
    ('Tarte au sucre', 25, 3, '48 pies', 49.3),
    ('Vegie-spread', 7, 2, '15 - 625 g jars', 43.9),
    ('Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25),
    ('Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05),
    ('Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17),
    ('Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14),
    ('Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5),
    ('Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36),
    ('Outback Lager', 7, 1, '24 - 355 ml bottles', 15),
    ('Fløtemysost', 15, 4, '10 - 500 g pkgs.', 21.5),
    ('Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8),
    ('Röd Kaviar', 17, 8, '24 - 150 g jars', 15),
    ('Longlife Tofu', 4, 7, '5 kg pkg.', 10),
    ('Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75),
    ('Lakkalikööri', 23, 1, '500 ml', 18),
    ('Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13);

-- 100 DATA
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-05-26', 28, 1, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-04-17', 18, 2, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-02-13', 6, 3, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-08-18', 5, 10, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-10-14', 15, 11, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-11-08', 60, 15, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-07-02', 44, 13, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-10-02', 27, 4, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-08-08', 18, 12, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-10-06', 54, 13, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-11-14', 56, 13, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-06-20', 34, 5, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-02-27', 28, 8, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-05-27', 15, 8, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-09-10', 37, 9, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-03-02', 44, 15, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2024-01-13', 61, 4, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-02-14', 21, 11, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2024-01-06', 52, 1, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-08-17', 22, 15, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-12-18', 44, 4, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-10-29', 44, 11, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-03-10', 60, 7, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-05-01', 60, 8, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-10-03', 5, 7, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-08-27', 20, 5, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-09-21', 43, 6, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-05-13', 32, 12, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-11-12', 50, 13, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-01-27', 9, 3, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-07-14', 8, 8, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-08-09', 58, 10, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-03-07', 51, 7, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-05-27', 30, 14, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-02-29', 7, 12, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-08-20', 52, 14, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-01-06', 39, 1, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-11-20', 60, 6, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-09-11', 56, 4, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-11-15', 56, 13, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-03-24', 48, 1, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-08-29', 47, 7, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-05-29', 56, 14, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-02-13', 58, 11, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-06-06', 13, 9, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-05-14', 12, 13, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-06-03', 41, 3, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-01-29', 24, 6, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2024-01-03', 54, 13, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-01-18', 35, 3, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-10-13', 3, 4, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-11-03', 40, 8, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-11-15', 50, 11, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-01-06', 50, 5, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-05-08', 30, 3, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-03-16', 33, 7, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-02-24', 42, 4, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-06-14', 13, 7, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-04-20', 21, 2, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-08-11', 9, 14, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-01-06', 3, 12, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-07-10', 50, 4, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-04-07', 8, 11, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-11-03', 11, 15, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-05-06', 61, 5, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-08-31', 61, 14, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-12-31', 59, 8, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-11-30', 60, 8, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-08-06', 61, 8, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-10-10', 52, 13, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-11-21', 6, 3, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-07-30', 8, 7, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-10-14', 42, 1, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-04-19', 59, 4, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-09-16', 24, 11, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-02-10', 44, 3, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-05-11', 1, 8, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-12-30', 6, 3, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-01-10', 8, 5, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-08-29', 32, 7, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-09-05', 60, 11, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-12-22', 40, 11, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-11-16', 9, 9, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-06-07', 3, 6, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-11-19', 35, 9, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-03-18', 38, 1, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-09-27', 13, 6, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-11-13', 11, 10, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-08-17', 17, 3, 4);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-12-09', 53, 15, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-01-11', 49, 15, 3);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-04-17', 12, 8, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-04-21', 60, 8, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-04-09', 17, 1, 1);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-03-16', 28, 4, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-12-10', 61, 7, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2021-05-21', 9, 11, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2022-09-30', 19, 12, 5);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2020-03-23', 57, 6, 2);
insert into orders (order_date, customer_id, employee_id, shipper_id) values ('2023-03-19', 16, 14, 3);

-- 100 DATA
insert into orderdetails (order_id, product_id, quantity) values (49, 40, 29);
insert into orderdetails (order_id, product_id, quantity) values (71, 47, 143);
insert into orderdetails (order_id, product_id, quantity) values (11, 74, 122);
insert into orderdetails (order_id, product_id, quantity) values (21, 18, 63);
insert into orderdetails (order_id, product_id, quantity) values (6, 75, 81);
insert into orderdetails (order_id, product_id, quantity) values (75, 51, 115);
insert into orderdetails (order_id, product_id, quantity) values (62, 72, 5);
insert into orderdetails (order_id, product_id, quantity) values (73, 43, 107);
insert into orderdetails (order_id, product_id, quantity) values (38, 52, 21);
insert into orderdetails (order_id, product_id, quantity) values (2, 38, 93);
insert into orderdetails (order_id, product_id, quantity) values (75, 47, 101);
insert into orderdetails (order_id, product_id, quantity) values (35, 40, 97);
insert into orderdetails (order_id, product_id, quantity) values (49, 70, 87);
insert into orderdetails (order_id, product_id, quantity) values (95, 23, 3);
insert into orderdetails (order_id, product_id, quantity) values (79, 44, 144);
insert into orderdetails (order_id, product_id, quantity) values (92, 21, 145);
insert into orderdetails (order_id, product_id, quantity) values (50, 65, 109);
insert into orderdetails (order_id, product_id, quantity) values (97, 1, 93);
insert into orderdetails (order_id, product_id, quantity) values (69, 76, 6);
insert into orderdetails (order_id, product_id, quantity) values (24, 44, 71);
insert into orderdetails (order_id, product_id, quantity) values (73, 57, 64);
insert into orderdetails (order_id, product_id, quantity) values (1, 34, 64);
insert into orderdetails (order_id, product_id, quantity) values (82, 56, 149);
insert into orderdetails (order_id, product_id, quantity) values (2, 63, 106);
insert into orderdetails (order_id, product_id, quantity) values (95, 27, 65);
insert into orderdetails (order_id, product_id, quantity) values (25, 45, 33);
insert into orderdetails (order_id, product_id, quantity) values (63, 39, 100);
insert into orderdetails (order_id, product_id, quantity) values (87, 74, 89);
insert into orderdetails (order_id, product_id, quantity) values (70, 10, 63);
insert into orderdetails (order_id, product_id, quantity) values (80, 12, 54);
insert into orderdetails (order_id, product_id, quantity) values (99, 38, 79);
insert into orderdetails (order_id, product_id, quantity) values (72, 74, 29);
insert into orderdetails (order_id, product_id, quantity) values (9, 35, 85);
insert into orderdetails (order_id, product_id, quantity) values (80, 33, 102);
insert into orderdetails (order_id, product_id, quantity) values (49, 8, 135);
insert into orderdetails (order_id, product_id, quantity) values (40, 9, 36);
insert into orderdetails (order_id, product_id, quantity) values (67, 50, 46);
insert into orderdetails (order_id, product_id, quantity) values (4, 59, 146);
insert into orderdetails (order_id, product_id, quantity) values (22, 35, 25);
insert into orderdetails (order_id, product_id, quantity) values (97, 52, 73);
insert into orderdetails (order_id, product_id, quantity) values (88, 53, 42);
insert into orderdetails (order_id, product_id, quantity) values (11, 15, 145);
insert into orderdetails (order_id, product_id, quantity) values (46, 43, 137);
insert into orderdetails (order_id, product_id, quantity) values (59, 15, 113);
insert into orderdetails (order_id, product_id, quantity) values (20, 5, 20);
insert into orderdetails (order_id, product_id, quantity) values (79, 55, 109);
insert into orderdetails (order_id, product_id, quantity) values (46, 44, 27);
insert into orderdetails (order_id, product_id, quantity) values (53, 72, 51);
insert into orderdetails (order_id, product_id, quantity) values (55, 38, 13);
insert into orderdetails (order_id, product_id, quantity) values (51, 58, 45);
insert into orderdetails (order_id, product_id, quantity) values (38, 15, 10);
insert into orderdetails (order_id, product_id, quantity) values (26, 7, 53);
insert into orderdetails (order_id, product_id, quantity) values (76, 48, 109);
insert into orderdetails (order_id, product_id, quantity) values (81, 11, 103);
insert into orderdetails (order_id, product_id, quantity) values (78, 1, 99);
insert into orderdetails (order_id, product_id, quantity) values (88, 39, 92);
insert into orderdetails (order_id, product_id, quantity) values (72, 68, 44);
insert into orderdetails (order_id, product_id, quantity) values (67, 39, 34);
insert into orderdetails (order_id, product_id, quantity) values (34, 45, 122);
insert into orderdetails (order_id, product_id, quantity) values (39, 26, 63);
insert into orderdetails (order_id, product_id, quantity) values (14, 62, 90);
insert into orderdetails (order_id, product_id, quantity) values (24, 71, 10);
insert into orderdetails (order_id, product_id, quantity) values (100, 32, 126);
insert into orderdetails (order_id, product_id, quantity) values (52, 67, 147);
insert into orderdetails (order_id, product_id, quantity) values (48, 55, 45);
insert into orderdetails (order_id, product_id, quantity) values (16, 25, 120);
insert into orderdetails (order_id, product_id, quantity) values (30, 36, 4);
insert into orderdetails (order_id, product_id, quantity) values (75, 10, 27);
insert into orderdetails (order_id, product_id, quantity) values (61, 45, 142);
insert into orderdetails (order_id, product_id, quantity) values (4, 75, 108);
insert into orderdetails (order_id, product_id, quantity) values (72, 46, 127);
insert into orderdetails (order_id, product_id, quantity) values (81, 66, 138);
insert into orderdetails (order_id, product_id, quantity) values (55, 60, 5);
insert into orderdetails (order_id, product_id, quantity) values (69, 56, 26);
insert into orderdetails (order_id, product_id, quantity) values (82, 71, 58);
insert into orderdetails (order_id, product_id, quantity) values (99, 30, 4);
insert into orderdetails (order_id, product_id, quantity) values (90, 24, 38);
insert into orderdetails (order_id, product_id, quantity) values (90, 74, 36);
insert into orderdetails (order_id, product_id, quantity) values (84, 56, 79);
insert into orderdetails (order_id, product_id, quantity) values (77, 62, 18);
insert into orderdetails (order_id, product_id, quantity) values (100, 16, 27);
insert into orderdetails (order_id, product_id, quantity) values (74, 7, 105);
insert into orderdetails (order_id, product_id, quantity) values (50, 63, 29);
insert into orderdetails (order_id, product_id, quantity) values (58, 26, 144);
insert into orderdetails (order_id, product_id, quantity) values (38, 17, 142);
insert into orderdetails (order_id, product_id, quantity) values (52, 25, 32);
insert into orderdetails (order_id, product_id, quantity) values (29, 56, 40);
insert into orderdetails (order_id, product_id, quantity) values (69, 74, 53);
insert into orderdetails (order_id, product_id, quantity) values (89, 38, 70);
insert into orderdetails (order_id, product_id, quantity) values (72, 53, 106);
insert into orderdetails (order_id, product_id, quantity) values (84, 36, 132);
insert into orderdetails (order_id, product_id, quantity) values (23, 46, 5);
insert into orderdetails (order_id, product_id, quantity) values (56, 57, 108);
insert into orderdetails (order_id, product_id, quantity) values (42, 59, 96);
insert into orderdetails (order_id, product_id, quantity) values (68, 62, 92);
insert into orderdetails (order_id, product_id, quantity) values (86, 57, 135);
insert into orderdetails (order_id, product_id, quantity) values (3, 65, 69);
insert into orderdetails (order_id, product_id, quantity) values (37, 77, 116);
insert into orderdetails (order_id, product_id, quantity) values (84, 17, 107);
insert into orderdetails (order_id, product_id, quantity) values (89, 75, 98);


