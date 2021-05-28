

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2021-04-20 05:45:17', '21-04-2021', '24-04-2021', 3000, 3000, 0),
(2, 2, 2, '2021-04-21 05:46:04', '21-04-2021', '23-04-2021', 6000, 0, 1),
(3, 3, 2, '2021-04-19 06:49:19', '19-04-2021', '25-04-2021', 6000, 6000, 0),
(4, 4, 7, '2021-04-19 06:50:24', '20-04-2021', '23-04-2021', 10000, 10000, 0),
(5, 5, 13, '2021-04-20 06:59:10', '20-04-2021', '25-04-2021', 12000, 0, 1);





CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Ravi Kumar ', 8775566122, '201452019@dtu.ac.in', 1, '422510099122', 'Bahadurgarh'),
(2, 'Aniket Raj', 9887778878, '201452042@dtu.ac.in', 2, '422510099122', 'Haryana'),
(3, 'Sunny Sunny', 9887665441, 'ajitkumarjain123@gmail.com', 1, '422510099122', 'Delhi'),
(4, 'Uday  Kumar', 9888755544, '201452018@dtu.ac.in', 3, '0', 'Gujarat'),
(5, 'Mahi Saini', 9887554425, 'mahisaini779@gmail.com', 1, '422510099122', 'Rohtak');





CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2020-11-13 05:39:06', '2020-11-15 02:22:26', '2020-11-13 05:39:06'),
(2, 2, 3, '2020-11-13 05:39:39', '2020-11-15 02:22:43', '2020-11-13 05:39:39'),
(3, 3, 1, '2020-11-13 05:40:18', '2020-11-15 02:22:49', '2020-11-13 05:40:18'),
(4, 4, 1, '2020-11-13 05:40:56', '2020-11-15 02:22:35', '2020-11-13 05:40:56'),
(5, 5, 1, '2020-11-13 05:41:31', NULL, '2020-11-13 05:41:31'),
(6, 6, 3, '2020-11-13 05:42:03', NULL, '2020-11-13 05:42:03'),
(7, 7, 4, '2020-11-13 05:42:35', '2020-11-18 02:35:02', '2020-11-13 05:42:35'),
(8, 8, 3, '2020-11-13 05:43:13', '2020-11-18 02:32:26', '2020-11-13 05:43:13'),
(9, 9, 2, '2020-11-13 05:43:49', NULL, '2020-11-13 05:43:49'),
(10, 10, 1, '2020-11-13 06:30:45', '2020-11-18 02:34:28', '2020-11-13 06:30:45'),
(11, 1, 2, '2020-11-15 06:52:26', '2020-11-17 02:23:05', '2020-11-15 06:52:26'),
(12, 4, 3, '2020-11-15 06:52:35', NULL, '2020-11-15 06:52:35'),
(13, 2, 3, '2020-11-15 06:52:43', NULL, '2020-11-15 06:52:43'),
(14, 3, 3, '2020-11-15 06:52:49', NULL, '2020-11-15 06:52:49'),
(15, 1, 3, '2020-11-17 06:53:05', NULL, '2020-11-17 06:53:05'),
(16, 8, 1, '2020-11-18 07:02:26', NULL, '2020-11-18 07:02:26'),
(17, 11, 2, '2020-11-18 07:04:03', NULL, '2020-11-18 07:04:03'),
(18, 10, 2, '2020-11-18 07:04:28', NULL, '2020-11-18 07:04:28'),
(19, 7, 2, '2020-11-18 07:05:02', NULL, '2020-11-18 07:05:02');



CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'Aadhar Card'),
(2, 'Voter Id Card'),
(3, 'Pan Card'),
(4, 'Driving License');



CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(1, 2, 'A-101', NULL, 0, 0, 1),
(2, 2, 'A-102', 1, 0, 1, 0),
(3, 3, 'A-103', NULL, 0, 0, 0),
(4, 4, 'A-104', NULL, 0, 0, 0),
(5, 1, 'B-101', 1, 0, 0, 0),
(6, 2, 'B-102', NULL, 0, 0, 0),
(7, 3, 'B-103', 1, 0, 0, 0),
(8, 4, 'B-104', NULL, 0, 0, 0),
(9, 1, 'C-101', NULL, 0, 0, 0),
(10, 2, 'C-102', NULL, 0, 0, 0),
(11, 3, 'C-103', NULL, 0, 0, 0),
(12, 4, 'C-104', NULL, 0, 0, 0),
(13, 4, 'D-101', NULL, 0, 1, 0);



CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Triple', 2000, 3),
(4, 'Family', 3000, 2);



CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '4:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 4:00AM');



CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'Muskan Sharma', 1, 3, 1, '422510099122', 'Bahadurgarh,Haryana', 987554425, 100000, '2020-11-13 05:39:06', '2020-11-17 06:53:05'),
(2, 'Naman Gupta', 1, 1, 4, '0', 'Ap #897-1459 Quam Avenue', 976543456, 100000, '2020-11-13 05:43:13', '2020-11-18 07:02:26'),
(3, 'Ajit Kumar Jain', 2, 3, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 976543111, 10000, '2020-11-13 05:40:18', '2020-11-15 06:52:49'),
(4, 'Deepak Goyal', 2, 3, 2, '0', 'Ap #897-1459 Quam Avenue', 987654321, 100000, '2020-11-13 05:40:55', '2020-11-15 06:52:35'),
(5, 'Sharad Patel', 4, 1, 1, '12345341212', 'Ap #897-1459 Quam Avenue', 9876543212, 10000, '2020-11-13 05:41:31', '2020-11-13 05:41:31'),
(6, 'Vijay Anand', 3, 3, 3, '0', 'Ap #897-1459 Quam Avenue', 1234567890, 100000, '2020-11-13 05:42:03', '2020-11-13 05:42:03'),
(7, 'Lalit  Kumar', 2, 2, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 12322332231, 100000, '2020-11-13 05:42:35', '2020-11-18 07:05:02'),
(8, 'Rajiv Kumar', 3, 3, 1, '422510099122', 'New Delhi', 976543211, 10000, '0000-00-00 00:00:00', '2020-11-13 05:44:10'),
(9, 'Himanshu  Soni', 3, 2, 4, '0', 'Ap #897-1459 Quam Avenue', 98765432123, 100000, '2020-11-13 05:43:49', '2020-11-13 05:43:49'),
(10, 'Sandeep Merutha', 5, 2, 1, '422510099122', 'Ap #897-1459 Quam Avenue', 9887665534, 1000, '2020-11-13 06:30:45', '2020-11-18 07:04:28'),
(11, 'Aniket Raj', 3, 2, 1, '0', 'Ap #897-1459 Quam Avenue', 9887556655, 10000, '2020-11-18 07:04:03', '2020-11-18 07:04:03');



CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Cleaning'),
(3, 'Reception'),
(4, 'Cook'),
(5, 'Waiter');



CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Muskan Sharma', 'm_sharma', 'muskankalonia@gmail.com', '123muskan', '2020-11-12 10:04:03'),
(2, 'Naman Gupta', 'n_gupta', 'naman_gupta2k19_it_085@dtu.ac.in', '123naman', '2020-11-12 12:49:22');



ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);





ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);


ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);


ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);


ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);


ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);


ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);


ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);


ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;





ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;


ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);


ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);


ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);


ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);


ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;


