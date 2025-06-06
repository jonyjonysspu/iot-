Practical 6:
Title: Installing MySQL Database on Raspberry Pi and Performing SQL Queries
Aim: To install the MySQL database server on a Raspberry Pi, perform SQL operations and run basic queries (SELECT, UPDATE, DELETE).

Tools and Resources Used:
Hardware:
1. Raspberry Pi
2. Power supply
3. MicroSD card
4. Keyboard, Mouse
5. HDMI monitor

Software:
1. Raspbian OS
2. MySQL Server
3. MySQL Client

Theory/Concept:
MySQL is an open-source relational database management system used for storing and managing structured data. In IoT and embedded applications, using a database like MySQL on Raspberry Pi allows local data storage and retrieval, which is useful for offline analytics or logging. SQL (Structured Query Language) is the standard language for querying and modifying data in a relational database


Procedure:
1. Update the Raspberry Pi:
sudo apt update
sudo apt upgrade

2. Install MySQL Server:
sudo apt-get install mariadb-server -y

3. Start MySQL Service:
sudo systemctl start mysql
sudo systemctl enable mysql

4. Secure MySQL Installation:
sudo mysql_secure_installation
Set root password
Y
Remove anonymous users
Y
Disallow root login remotely
Y
Remove test database
Y
5. Login to MySQL Command Line:
sudo mysql -u root -p

6. Create a Database and Table:
CREATE DATABASE studentDB;
USE studentDB;

CREATE TABLE Students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  grade INT
);

7. Insert Records:
INSERT INTO Students (name, grade) VALUES ('Alice', 85);
INSERT INTO Students (name, grade) VALUES ('Bob', 90);

8. Run Basic SQL Queries:
Select Data:
SELECT * FROM Students;
Update Data:
UPDATE Students SET grade = 88 WHERE name = 'Alice';

Delete Data:
DELETE FROM Students WHERE name = 'Bob';

Count Records:
SELECT COUNT(*) FROM Students;

9. Exit MySQL:
exit;

Observations:
MySQL service starts and runs without errors.
SQL queries execute successfully and affect the database as expected.
The table stores and displays correct data.
Data manipulation (update, delete) reflects instantly.

Result:
MySQL Server was successfully installed on the Raspberry Pi.
A new database studentDB was created and populated.
Basic SQL operations (SELECT, INSERT, UPDATE, DELETE) were performed successfully.

Conclusion:
This practical demonstrates the Raspberry Pi's capability to act as a mini-database server using MySQL. It helps us understand how to store, manage, and query data locally, which is useful in IoT or data logging projects.
