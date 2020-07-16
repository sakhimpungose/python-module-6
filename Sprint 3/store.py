import matplotlib.pyplot as plt
import numpy as np
import pymysql

db = pymysql.connect(user='root', password='Qq123456', host='127.0.0.1',database='store')

cursor = db.cursor()

# Adding more fields to the product table
sql = ("ALTER TABLE product ADD COLUMN IF NOT EXISTS product_description VARCHAR(255) NULL,"
       "ADD  COLUMN IF NOT EXISTS product_avg_cost DECIMAL(6,2) NOT NULL default (product_price * 0.75)")

cursor.execute(sql)


# sql statement for creating chips table
sql2 = ("CREATE TABLE IF NOT EXISTS chips("
       "chips_id INT NOT NULL primary key auto_increment,"
       "chips_name VARCHAR(64) NOT NULL UNIQUE,"
       "chips_description VARCHAR(255) NOT NULL,"
       "chips_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql2)

# sql statement for creating cooldrink table
sql3 = ("CREATE TABLE IF NOT EXISTS cooldrink("
       "cooldrink_id INT NOT NULL primary key auto_increment,"
       "cooldrink_name VARCHAR(64) NOT NULL UNIQUE,"
       "cooldrink_description VARCHAR(255) NOT NULL,"
       "cooldrink_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql3)

# sql statement for creating pie table
sql4 = ("CREATE TABLE IF NOT EXISTS pie("
       "pie_id INT NOT NULL primary key auto_increment,"
       "pie_name VARCHAR(64) NOT NULL UNIQUE,"
       "pie_description VARCHAR(255) NOT NULL,"
       "pie_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql4)

# sql statement for creating fruit table
sql5 = ("CREATE TABLE IF NOT EXISTS fruit("
       "fruit_id INT NOT NULL primary key auto_increment,"
       "fruit_name VARCHAR(64) NOT NULL UNIQUE,"
       "fruit_description VARCHAR(255) NOT NULL,"
       "fruit_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql5)

# sql statement for creating cupcake table
sql6 = ("CREATE TABLE IF NOT EXISTS cupcake("
       "cupcake_id INT NOT NULL primary key auto_increment,"
       "cupcake_name VARCHAR(64) NOT NULL UNIQUE,"
       "cupcake_description VARCHAR(255) NOT NULL,"
       "cupcake_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql6)

# sql statement for creating vegetable table
sql7 = ("CREATE TABLE IF NOT EXISTS vegetable("
       "vegetable_id INT NOT NULL primary key auto_increment,"
       "vegetable_name VARCHAR(64) NOT NULL UNIQUE,"
       "vegetable_description VARCHAR(255) NOT NULL,"
       "vegetable_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql7)

# sql statement for creating soap table
sql8 = ("CREATE TABLE IF NOT EXISTS soap("
       "soap_id INT NOT NULL primary key auto_increment,"
       "soap_name VARCHAR(64) NOT NULL UNIQUE,"
       "soap_description VARCHAR(255) NOT NULL,"
       "soap_price DECIMAL(6,2) NOT NULL)")

cursor.execute(sql8)

#delete all data in all tables
sql9 = "TRUNCATE TABLE chips;"
sql10 = "TRUNCATE TABLE cooldrink;"
sql11 = "TRUNCATE TABLE pie;"
sql12 = "TRUNCATE TABLE fruit;"
sql13 = "TRUNCATE TABLE cupcake;"
sql14 = "TRUNCATE TABLE vegetable;"
sql15 = "TRUNCATE TABLE soap;"

cursor.execute(sql9)
cursor.execute(sql10)
cursor.execute(sql11)
cursor.execute(sql12)
cursor.execute(sql13)
cursor.execute(sql14)
cursor.execute(sql15)

#chips
sql16 = ("INSERT INTO chips(chips_id, chips_name, chips_description, chips_price) "
         "VALUES (NULL, 'Simba', 'Simba Chips is a popular South African brand of potato crisps', 13.75),"
         "(NULL, 'Lays', \"We pack them with the utmost care to create the superb quality chips you have come to expect from Lay's\", 21.50);")

cursor.execute(sql16)

#cooldrink
sql17 = ("INSERT INTO cooldrink(cooldrink_id, cooldrink_name, cooldrink_description, cooldrink_price) "
         "VALUES (NULL, 'Coke', 'Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company', 11.00),"
         "(NULL, 'Fata', 'Fanta is a brand of fruit-flavored carbonated drinks created by Coca-Cola Deutschland under the leadership of German businessman Max Keith.', 11.00),"
         "(NULL, 'Sprite', 'Sprite is a colorless, lemon and lime-flavored soft drink created by The Coca-Cola Company', 11.00);")

cursor.execute(sql17)

#pie
sql18 = ("INSERT INTO pie(pie_id, pie_name, pie_description, pie_price) "
         "VALUES (NULL, 'Simba', 'Simba Chips is a popular South African brand of potato crisps', 23.50),"
         "(NULL, 'Chicken', 'Chicken Pie', 23.50),"
         "(NULL, 'Pepper Steak', 'Pepper Steak Pie', 23.50),"
         "(NULL, 'Steak and Kidney', 'Steak and Kidney Pie', 23.50),"
         "(NULL, 'Salami and Cheese', 'Salami and Cheese Pie', 23.50),"
         "(NULL, 'Spinach and Feta', 'Spinach and Feta Pie', 23.50),"
         "(NULL, 'Cornish', 'Cornish Pie', 23.50),"
         "(NULL, 'Steak and Onion', 'Steak and Onion Pie', 23.50),"
         "(NULL, 'Sausage Roll', 'Sausage Roll Pie', 23.50),"
         "(NULL, 'Peri Peri Chicken Liver', 'Peri Peri Chicken Liver Pie', 23.50),"
         "(NULL, 'Mutton Curry', 'Mutton Curry Pie', 23.50);")

cursor.execute(sql18)

#fruit
sql19 = ("INSERT INTO fruit(fruit_id, fruit_name, fruit_description, fruit_price) "
         "VALUES (NULL, 'Pear', 'Pear Fruit', 5.00),"
         "(NULL, 'Orange', 'Orange Fruit', 5.00),"
         "(NULL, 'Apple', 'Apple Fruit', 5.00),"
         "(NULL, 'Banana', 'Banana Fruit', 5.00);")

cursor.execute(sql19)


#cupcake
sql20 = ("INSERT INTO cupcake(cupcake_id, cupcake_name, cupcake_description, cupcake_price) "
         "VALUES (NULL, 'Vanilla', 'Vanilla Cupcake', 16.00),"
         "(NULL, 'Chocolate', 'Chocolate Cupcake', 18.00);")

cursor.execute(sql20)

#vegetable
sql21 = ("INSERT INTO vegetable(vegetable_id, vegetable_name, vegetable_description, vegetable_price) "
         "VALUES (NULL, 'Spinach', 'Spinach is a leafy green flowering plant native to central and western Asia', 12.00),"
         "(NULL, 'Cabbage', 'Cabbage is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads.', 10.90);")

cursor.execute(sql21)

#soap
sql22 = ("INSERT INTO soap(soap_id, soap_name, soap_description, soap_price) "
         "VALUES (NULL, 'Sunlight', 'Sunlight Soap', 7.50),"
         "(NULL, 'OMO', 'OMO Soap', 18.00);")

cursor.execute(sql22)

db.commit()

db.close()
