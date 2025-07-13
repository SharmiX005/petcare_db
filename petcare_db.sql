--Database:petcare_db
create database petcare;
use petcare;
--table 1:customer
create table customers(customer_id int primary key,customer_name varchar(50),email varchar(50),phone_no varchar(15), city varchar(20));
--data insertion
insert into customers values(1,'gopal','gopal12@gmail.com','9562735645','chennai'),
(2, 'Bhavya', 'bhavya@gmail.com', '9876543211', 'Bangalore'),
(3, 'Chandru', 'chandru@gmail.com', '9876543212', 'Madurai'),
(4, 'Deepika', 'deepika@gmail.com', '9876543213', 'Hyderabad'),
(5, 'Eshwar', 'eshwar@gmail.com', '9876543214', 'Coimbatore'),
(6, 'Farzana', 'farzana@gmail.com', '9876543215', 'Pune'),
(7, 'Gokul', 'gokul@gmail.com', '9876543216', 'Trichy'),
(8, 'Harini', 'harini@gmail.com', '9876543217', 'Chennai'),
(9, 'Indrajith', 'indrajith@gmail.com', '9876543218', 'Mumbai'),
(10, 'Jayashree', 'jayashree@gmail.com', '9876543219', 'Delhi'),
(11, 'Karthik', 'karthik@gmail.com', '9876543220', 'Chennai'),
(12, 'Lavanya', 'lavanya@gmail.com', '9876543221', 'Pune'),
(13, 'Manoj', 'manoj@gmail.com', '9876543222', 'Hyderabad'),
(14, 'Nandhini', 'nandhini@gmail.com', '9876543223', 'Chennai'),
(15, 'Omprakash', 'om@gmail.com', '9876543224', 'Delhi'),
(16, 'Priya', 'priya@gmail.com', '9876543225', 'Bangalore'),
(17, 'Qureshi', 'qureshi@gmail.com', '9876543226', 'Mumbai'),
(18, 'Ravi', 'ravi@gmail.com', '9876543227', 'Chennai'),
(19, 'Sneha', 'sneha@gmail.com', '9876543228', 'Coimbatore'),
(20, 'Tarun', 'tarun@gmail.com', '9876543229', 'Madurai'),
(21, 'Usha', 'usha@gmail.com', '9876543230', 'Pune'),
(22, 'Vikram', 'vikram@gmail.com', '9876543231', 'Hyderabad'),
(23, 'Wendy', 'wendy@gmail.com', '9876543232', 'Goa'),
(24, 'Xavier', 'xavier@gmail.com', '9876543233', 'Chennai'),
(25, 'Yamini', 'yamini@gmail.com', '9876543234', 'Trichy');
select * from customers;
--table 2: pets
create table pets(petid int primary key,customer_id int, petname varchar(20),pet_type varchar(30), breed varchar(50), age int, foreign key(customer_id) references customers(customer_id));
--data insertion
insert into pets values(101,1,'blacky','cat','persian',2),
(102, 2, 'Kitty', 'Cat', 'Persian', 2),
(103, 3, 'Bruno', 'Dog', 'Beagle', 5),
(104, 4, 'Milo', 'Dog', 'Pug', 3),
(105, 5, 'Simba', 'Cat', 'Siamese', 2),
(106, 6, 'Lassie', 'Dog', 'German Shepherd', 6),
(107, 7, 'Nemo', 'Fish', 'Goldfish', 1),
(108, 8, 'Muffin', 'Rabbit', 'Angora', 2),
(109, 9, 'Rocky', 'Dog', 'Bulldog', 4),
(110, 10, 'Coco', 'Cat', 'Bengal', 3),
(111, 11, 'Snowy', 'Dog', 'Husky', 2),
(112, 12, 'Teddy', 'Dog', 'Shih Tzu', 5),
(113, 13, 'Buddy', 'Dog', 'Golden Retriever', 3),
(114, 14, 'Ginger', 'Cat', 'Tabby', 4),
(115, 15, 'Zuzu', 'Parrot', 'Macaw', 2),
(116, 16, 'Rex', 'Dog', 'Doberman', 6),
(117, 17, 'Choco', 'Dog', 'Pomeranian', 3),
(118, 18, 'Kittu', 'Cat', 'Persian', 2),
(119, 19, 'Bubbles', 'Fish', 'Betta', 1),
(120, 20, 'Oscar', 'Dog', 'Boxer', 5),
(121, 21, 'Lulu', 'Rabbit', 'Mini Lop', 2),
(122, 22, 'Fluffy', 'Dog', 'Cocker Spaniel', 4),
(123, 23, 'Leo', 'Cat', 'British Shorthair', 3),
(124, 24, 'Jack', 'Dog', 'Rottweiler', 6),
(125, 25, 'Peppy', 'Dog', 'Dalmatian', 4);
select * from pets;
--table 3:services
CREATE TABLE services (service_id INT PRIMARY KEY,service_name VARCHAR(100),service_cost DECIMAL(10,2));
--data insertion
INSERT INTO services VALUES
(4001, 'Vaccination', 800.00),
(4002, 'Grooming', 1200.00),
(4003, 'Health Checkup', 600.00),
(4004, 'Dental Cleaning', 1000.00),
(4005, 'Nail Trimming', 300.00),
(4006, 'Flea Treatment', 700.00),
(4007, 'Haircut', 900.00),
(4008, 'Bath and Blowdry', 850.00),
(4009, 'De-worming', 500.00),
(4010,'X-ray scan',1500.00);
select * from services;

--table4:employee
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  ename VARCHAR(50),
  position VARCHAR(30),
  contact_email VARCHAR(100)
);
--data insertion
INSERT INTO employees VALUES
(3001, 'Dr. Priya', 'Vet Doctor', 'priya@petcare.com'),
(3002, 'Suresh', 'Groomer', 'suresh@petcare.com'),
(3003, 'Dr. Kiran', 'Vet Doctor', 'kiran@petcare.com'),
(3004, 'Meena', 'Receptionist', 'meena@petcare.com'),
(3005, 'Varun', 'Cleaner', 'varun@petcare.com'),
(3006, 'Ayesha', 'Vet Assistant', 'ayesha@petcare.com'),
(3007, 'Deepak', 'Trainer', 'deepak@petcare.com'),
(3008, 'Rajesh', 'Delivery Staff', 'rajesh@petcare.com');
select * from employees;
--table5:appointments
CREATE TABLE appointments (
  appointment_id INT PRIMARY KEY,
  customer_id INT,
  petid INT,
  employee_id INT,
  service_id INT,
  appointment_date DATE,
  status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (petid) REFERENCES pets(petid),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  FOREIGN KEY (service_id) REFERENCES services(service_id)
);
--data insertion
INSERT INTO appointments VALUES
(5001, 1, 101, 3001, 4001, '2025-07-01', 'Completed'),
(5002, 2, 102, 3002, 4002, '2025-07-02', 'Completed'),
(5003, 3, 103, 3003, 4003, '2025-07-02', 'Completed'),
(5004, 4, 104, 3002, 4004, '2025-07-03', 'Completed'),
(5005, 5, 105, 3001, 4005, '2025-07-03', 'Completed'),
(5006, 6, 106, 3003, 4006, '2025-07-04', 'Completed'),
(5007, 7, 107, 3003, 4002, '2025-07-04', 'Completed'),
(5008, 8, 108, 3002, 4007, '2025-07-05', 'Completed'),
(5009, 9, 109, 3001, 4001, '2025-07-05', 'Completed'),
(5010, 10, 110, 3003, 4003, '2025-07-06', 'Completed'),
(5011, 11, 111, 3001, 4004, '2025-07-06', 'Completed'),
(5012, 12, 112, 3002, 4005, '2025-07-06', 'Completed'),
(5013, 13, 113, 3003, 4002, '2025-07-07', 'Completed'),
(5014, 14, 114, 3001, 4006, '2025-07-07', 'Completed'),
(5015, 15, 115, 3003, 4003, '2025-07-08', 'Completed'),
(5016, 16, 116, 3001, 4001, '2025-07-08', 'Completed'),
(5017, 17, 117, 3002, 4002, '2025-07-08', 'Completed'),
(5018, 18, 118, 3003, 4009, '2025-07-09', 'Completed'),
(5019, 19, 119, 3001, 4010, '2025-07-09', 'Completed'),
(5020, 20, 120, 3002, 4002, '2025-07-13', 'inCompleted'),
(5021, 21, 121, 3003, 4004, '2025-07-13', 'inCompleted'),
(5022, 22, 122, 3002, 4001, '2025-07-14', 'inCompleted'),
(5023, 23, 123, 3001, 4005, '2025-07-14', 'inCompleted'),
(5024,24,124,3003,4006,'2025-07-15','incompleted');
select * from appointments;
--table6:payments
CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  appointment_id INT,
  customer_id INT,
  amount DECIMAL(10,2),
  payment_date DATE,
  payment_method VARCHAR(20),
  FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
--data insertion
INSERT INTO payments VALUES
(1, 5001, 1, 800.00, '2025-07-01', 'Cash'),
(2, 5002, 2, 1200.00, '2025-07-02', 'Card'),
(3, 5003, 3, 600.00, '2025-07-02', 'UPI'),
(4, 5004, 4, 1000.00, '2025-07-03', 'Card'),
(5, 5005, 5, 300.00, '2025-07-03', 'Cash'),
(6, 5006, 6, 700.00, '2025-07-04', 'UPI'),
(7, 5007, 7, 1200.00, '2025-07-04', 'Card'),
(8, 5008, 8, 900.00, '2025-07-05', 'UPI'),
(9, 5009, 9, 800.00, '2025-07-05', 'Cash'),
(10, 5010, 10, 600.00, '2025-07-06', 'Card'),
(11, 5011, 11, 1000.00, '2025-07-06', 'UPI'),
(12, 5012, 12, 300.00, '2025-07-06', 'Card'),
(13, 5013, 13, 1200.00, '2025-07-07', 'UPI'),
(14, 5014, 14, 700.00, '2025-07-07', 'Cash'),
(15, 5015, 15, 600.00, '2025-07-08', 'Card'),
(16, 5016, 16, 800.00, '2025-07-08', 'UPI'),
(17, 5017, 17, 1200.00, '2025-07-08', 'Card'),
(18, 5018, 18, 500.00, '2025-07-09', 'UPI'),
(19, 5019, 19, 1500.00, '2025-07-09', 'Card'),
(20, 5020, 20, 1200.00, '2025-07-13', 'Cash'),
(21, 5021, 21, 1000.00, '2025-07-13', 'UPI'),
(22, 5022, 22, 800.00, '2025-07-14', 'Card'),
(23, 5023, 23, 300.00, '2025-07-14', 'UPI'),
(24,5024,24,700.00,'2025-07-15','cash');
select * from  payments;
--stored Procedure 1: get employees appointments
DELIMITER $$

CREATE PROCEDURE GetEmployeeAppoinments(IN emp_id INT)
BEGIN
    SELECT 
        e.ename AS employee_name,
        COUNT(a.appointment_id) AS total_appointments
    FROM employees e
    JOIN appointments a ON e.employee_id = a.employee_id
    WHERE e.employee_id = emp_id
    GROUP BY e.ename;
END $$
DELIMITER ;
--calling GetEmployeeAppoinments data
call GetEmployeeApp(3001);
--stored procedure 2: adding new services
DELIMITER $$
CREATE PROCEDURE AddNewService(
    IN sid INT,
    IN sname VARCHAR(100),
    IN scost DECIMAL(10,2)
)
BEGIN
    INSERT INTO services(service_id, service_name, service_cost)
    VALUES (sid, sname, scost);
END $$
DELIMITER ;
--calling AddNewServices
call AddNewService(4011,'tick removal',550.00);
select*from services;
--stored procedure 3: getting daily revenues
DELIMITER $$
CREATE DEFINER=root@localhost PROCEDURE GetDailyRevenue(IN pdate Date)
BEGIN
     select pdate As payment_date, count(*)as total_trans,Sum(amount)as Total_collected from payments where payment_date=pdate;
END $$
DELIMITER ;
--calling GetDailyRevenue data
call GetDailyRevenue('2025-07-07');
--tored procedure 4: for service revenue report
DELIMITER $$
CREATE PROCEDURE ServiceRevenueReport()
BEGIN
    SELECT 
        s.service_id, 
        s.service_name,
        COUNT(a.appointment_id) AS total_appointments,
        SUM(s.service_cost) AS estimated_revenue
    FROM services s
    JOIN appointments a ON s.service_id = a.service_id
    GROUP BY s.service_id, s.service_name;
END $$
DELIMITER ;
--calling ServiceRevenueReport
call ServiceRevenueReport();

--1.view for total revenue by paymentmethod
CREATE VIEW TotalRevenueByPaymentMethod AS
SELECT 
    payment_method,
    SUM(amount) AS total_collected
FROM payments
group by payment_method;
select * from TotalRevenueByPaymentMethod;

--2.view for customerordersummary
CREATE VIEW CustomerOrderSummary AS
SELECT 
    C.customer_id,
    C.customer_name,
    COUNT(A.appointment_id) AS total_appointments,
    SUM(P.amount) AS total_spent
FROM customers C
JOIN appointments A ON C.customer_id = A.customer_id
JOIN payments P ON A.appointment_id = P.appointment_id
GROUP BY C.customer_id, C.customer_name;

select * from CustomerOrdersummary;

--.view for employee appointment count
CREATE VIEW EmployeeAppointmentCount AS
SELECT 
    E.employee_id,
    E.ename AS employee_name,
    COUNT(A.appointment_id) AS total_appointments_handled
FROM employees E
JOIN appointments A ON E.employee_id = A.employee_id
Group by E.employee_id,E.ename;
select * from EmployeeAppointmentCount;

--4.view for service Revenue report
CREATE VIEW ServiceRevenueReport AS
SELECT 
    S.service_id,
    S.service_name,
    COUNT(A.appointment_id) AS total_appointments,
    SUM(S.service_cost) AS estimated_revenue
FROM services S
JOIN appointments A ON S.service_id = A.service_id
GROUP BY S.service_id,S.service_name;
select * from ServiceRevenueReport;
