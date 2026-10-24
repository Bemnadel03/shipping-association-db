-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 10:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL,
  `branch_location` varchar(100) NOT NULL,
  `branch_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_location`, `branch_name`) VALUES
(1, 'Cairo, Egypt', 'Downtown Branch'),
(2, 'Giza, Egypt', 'Giza Branch'),
(3, 'Alexandria, Egypt', 'Alex Branch'),
(4, 'Tanta, Egypt', 'Tanta Branch'),
(5, 'Sharm El Sheikh, Egypt', 'Sharm Branch'),
(6, 'Hurghada, Egypt', 'Hurghada Branch'),
(7, 'Aswan, Egypt', 'Aswan Branch'),
(8, 'Luxor, Egypt', 'Luxor Branch'),
(9, 'Port Said, Egypt', 'Port Said Branch'),
(10, 'Suez, Egypt', 'Suez Branch'),
(11, 'Mansoura, Egypt', 'Mansoura Branch'),
(12, 'Ismailia, Egypt', 'Ismailia Branch'),
(13, 'Fayoum, Egypt', 'Fayoum Branch'),
(14, 'Minya, Egypt', 'Minya Branch'),
(15, 'Damanhour, Egypt', 'Damanhour Branch'),
(16, 'Beni Suef, Egypt', 'Beni Suef Branch'),
(17, 'Shibin El Kom, Egypt', 'Shibin El Kom Branch'),
(18, 'Kafr El Sheikh, Egypt', 'Kafr El Sheikh Branch'),
(19, 'Damietta, Egypt', 'Damietta Branch'),
(20, 'Marsa Matruh, Egypt', 'Marsa Matruh Branch');

-- --------------------------------------------------------

--
-- Table structure for table `city_rate`
--

CREATE TABLE `city_rate` (
  `status_id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `city_rate` decimal(10,2) NOT NULL,
  `city2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_rate`
--

INSERT INTO `city_rate` (`status_id`, `city`, `city_rate`, `city2`) VALUES
(1, 'Cairo', 50.00, 'Giza'),
(2, 'Alexandria', 100.00, 'Cairo'),
(3, 'Tanta', 30.00, 'Giza'),
(4, 'Sharm El Sheikh', 150.00, 'Cairo'),
(5, 'Giza', 40.00, 'Alexandria'),
(6, 'Hurghada', 80.00, 'Aswan'),
(7, 'Aswan', 120.00, 'Hurghada'),
(8, 'Luxor', 70.00, 'Tanta'),
(9, 'Port Said', 90.00, 'Suez'),
(10, 'Suez', 110.00, 'Port Said'),
(11, 'Mansoura', 60.00, 'Ismailia'),
(12, 'Ismailia', 100.00, 'Mansoura'),
(13, 'Fayoum', 40.00, 'Minya'),
(14, 'Minya', 120.00, 'Fayoum'),
(15, 'Damanhour', 50.00, 'Beni Suef'),
(16, 'Beni Suef', 150.00, 'Damanhour'),
(17, 'Shibin El Kom', 75.00, 'Kafr El Sheikh'),
(18, 'Kafr El Sheikh', 90.00, 'Shibin El Kom'),
(19, 'Damietta', 80.00, 'Marsa Matruh'),
(20, 'Marsa Matruh', 130.00, 'Damietta');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_ssn` varchar(20) NOT NULL,
  `client_address` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `clients_phone1` varchar(15) NOT NULL,
  `clients_phone2` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_ssn`, `client_address`, `client_name`, `clients_phone1`, `clients_phone2`) VALUES
(1, '1231231230', 'Cairo, Egypt', 'Client One', '0103000001', '0104000001'),
(2, '2231231230', 'Giza, Egypt', 'Client Two', '0103000002', '0104000002'),
(3, '3231231230', 'Alexandria, Egypt', 'Client Three', '0103000003', '0104000003'),
(4, '4231231230', 'Tanta, Egypt', 'Client Four', '0103000004', '0104000004'),
(5, '5231231230', 'Sharm El Sheikh, Egypt', 'Client Five', '0103000005', '0104000005'),
(6, '6231231230', 'Hurghada, Egypt', 'Client Six', '0103000006', '0104000006'),
(7, '7231231230', 'Aswan, Egypt', 'Client Seven', '0103000007', '0104000007'),
(8, '8231231230', 'Luxor, Egypt', 'Client Eight', '0103000008', '0104000008'),
(9, '9231231230', 'Port Said, Egypt', 'Client Nine', '0103000009', '0104000009'),
(10, '1031231230', 'Suez, Egypt', 'Client Ten', '0103000010', '0104000010'),
(11, '1131231230', 'Mansoura, Egypt', 'Client Eleven', '0103000011', '0104000011'),
(12, '1231231231', 'Ismailia, Egypt', 'Client Twelve', '0103000012', '0104000012'),
(13, '1331231231', 'Fayoum, Egypt', 'Client Thirteen', '0103000013', '0104000013'),
(14, '1431231231', 'Minya, Egypt', 'Client Fourteen', '0103000014', '0104000014'),
(15, '1531231231', 'Damanhour, Egypt', 'Client Fifteen', '0103000015', '0104000015'),
(16, '1631231231', 'Beni Suef, Egypt', 'Client Sixteen', '0103000016', '0104000016'),
(17, '1731231231', 'Shibin El Kom, Egypt', 'Client Seventeen', '0103000017', '0104000017'),
(18, '1831231231', 'Kafr El Sheikh, Egypt', 'Client Eighteen', '0103000018', '0104000018'),
(19, '1931231231', 'Damietta, Egypt', 'Client Nineteen', '0103000019', '0104000019'),
(20, '2031231231', 'Marsa Matruh, Egypt', 'Client Twenty', '0103000020', '0104000020');

-- --------------------------------------------------------

--
-- Table structure for table `client_packages`
--

CREATE TABLE `client_packages` (
  `package_id` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `total_bill` decimal(10,2) NOT NULL,
  `receiving_date` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_packages`
--

INSERT INTO `client_packages` (`package_id`, `notes`, `total_bill`, `receiving_date`, `emp_id`, `receiver_id`, `rate_id`, `client_id`) VALUES
(1, 'Urgent delivery', 100.00, '2024-12-15', 1, 1, 1, 1),
(2, 'Standard delivery', 50.00, '2024-12-16', 2, 2, 2, 2),
(3, 'Fast delivery', 75.00, '2024-12-17', 3, 3, 3, 3),
(4, 'Large package', 150.00, '2024-12-18', 4, 4, 4, 4),
(5, 'Light item', 30.00, '2024-12-19', 5, 5, 5, 5),
(6, 'Heavy delivery', 200.00, '2024-12-20', 6, 6, 6, 6),
(7, 'Fragile item', 80.00, '2024-12-21', 7, 7, 7, 7),
(8, 'Overnight shipping', 120.00, '2024-12-22', 8, 8, 8, 8),
(9, 'Priority delivery', 100.00, '2024-12-23', 9, 9, 9, 9),
(10, 'Bulk delivery', 300.00, '2024-12-24', 10, 10, 10, 10),
(11, 'Eco-friendly package', 60.00, '2024-12-25', 11, 11, 11, 11),
(12, 'Express delivery', 90.00, '2024-12-26', 12, 12, 12, 12),
(13, 'Heavy duty', 250.00, '2024-12-27', 13, 13, 13, 13),
(14, 'Small package', 40.00, '2024-12-28', 14, 14, 14, 14),
(15, 'Custom delivery', 110.00, '2024-12-29', 15, 15, 15, 15),
(16, 'Low priority', 25.00, '2024-12-30', 16, 16, 16, 16),
(17, 'Fragile and urgent', 140.00, '2024-12-31', 17, 17, 17, 17),
(18, 'Extra light', 20.00, '2024-01-01', 18, 18, 18, 18),
(19, 'Heavy weight package', 180.00, '2024-01-02', 19, 19, 19, 19),
(20, 'Regular delivery', 70.00, '2024-01-03', 20, 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `emp_id` int(11) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `location` varchar(100) NOT NULL,
  `vehicle_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`emp_id`, `shift`, `location`, `vehicle_no`) VALUES
(1, 'Morning', 'Cairo', 101),
(2, 'Afternoon', 'Giza', 102),
(3, 'Night', 'Alexandria', 103),
(4, 'Morning', 'Tanta', 104),
(5, 'Afternoon', 'Sharm El Sheikh', 105),
(6, 'Night', 'Hurghada', 106),
(7, 'Morning', 'Aswan', 107),
(8, 'Afternoon', 'Luxor', 108),
(9, 'Night', 'Port Said', 109),
(10, 'Morning', 'Suez', 110),
(11, 'Afternoon', 'Mansoura', 111),
(12, 'Night', 'Ismailia', 112),
(13, 'Morning', 'Fayoum', 113),
(14, 'Afternoon', 'Minya', 114),
(15, 'Night', 'Damanhour', 115),
(16, 'Morning', 'Beni Suef', 116),
(17, 'Afternoon', 'Shibin El Kom', 117),
(18, 'Night', 'Kafr El Sheikh', 118),
(19, 'Morning', 'Damietta', 119),
(20, 'Afternoon', 'Marsa Matruh', 120);

-- --------------------------------------------------------

--
-- Table structure for table `courier_package_receiver_deliver`
--

CREATE TABLE `courier_package_receiver_deliver` (
  `emp_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courier_package_receiver_deliver`
--

INSERT INTO `courier_package_receiver_deliver` (`emp_id`, `package_id`, `receiver_id`, `delivery_date`) VALUES
(1, 1, 1, '2024-12-15'),
(2, 2, 2, '2024-12-16'),
(3, 3, 3, '2024-12-17'),
(4, 4, 4, '2024-12-18'),
(5, 5, 5, '2024-12-19'),
(6, 6, 6, '2024-12-20'),
(7, 7, 7, '2024-12-21'),
(8, 8, 8, '2024-12-22'),
(9, 9, 9, '2024-12-23'),
(10, 10, 10, '2024-12-24'),
(11, 11, 11, '2024-12-25'),
(12, 12, 12, '2024-12-26'),
(13, 13, 13, '2024-12-27'),
(14, 14, 14, '2024-12-28'),
(15, 15, 15, '2024-12-29'),
(16, 16, 16, '2024-12-30'),
(17, 17, 17, '2024-12-31'),
(18, 18, 18, '2024-01-01'),
(19, 19, 19, '2024-01-02'),
(20, 20, 20, '2024-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_ssn` varchar(20) NOT NULL,
  `emp_job` varchar(50) NOT NULL,
  `emp_phone1` varchar(15) NOT NULL,
  `emp_phone2` varchar(15) DEFAULT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_ssn`, `emp_job`, `emp_phone1`, `emp_phone2`, `branch_id`) VALUES
(1, 'Omar Gamal', '1234567890', 'Courier', '0103000001', '0104000001', 1),
(2, 'Heba Youssef', '2234567890', 'Manager', '0103000002', '0104000002', 2),
(3, 'Ahmed Magdy', '3234567890', 'Driver', '0103000003', '0104000003', 3),
(4, 'Fatma Salah', '4234567890', 'Assistant', '0103000004', '0104000004', 4),
(5, 'Mona Zaki', '5234567890', 'Supervisor', '0103000005', '0104000005', 5),
(6, 'Tamer Hossam', '6234567890', 'Driver', '0103000006', '0104000006', 6),
(7, 'Ali Ahmed', '7234567890', 'Courier', '0103000007', '0104000007', 7),
(8, 'Reem Khaled', '8234567890', 'Manager', '0103000008', '0104000008', 8),
(9, 'Ghada Ali', '9234567890', 'Driver', '0103000009', '0104000009', 9),
(10, 'Mohamed Shaker', '1034567890', 'Assistant', '0103000010', '0104000010', 10),
(11, 'Sara Mostafa', '1134567890', 'Supervisor', '0103000011', '0104000011', 11),
(12, 'Noura Saad', '1234567891', 'Driver', '0103000012', '0104000012', 12),
(13, 'Khaled Mahmoud', '1334567891', 'Courier', '0103000013', '0104000013', 13),
(14, 'Hossam Ibrahim', '1434567891', 'Manager', '0103000014', '0104000014', 14),
(15, 'Maha Fathy', '1534567891', 'Assistant', '0103000015', '0104000015', 15),
(16, 'Mahmoud Zaki', '1634567891', 'Supervisor', '0103000016', '0104000016', 16),
(17, 'Ali Gamal', '1734567891', 'Driver', '0103000017', '0104000017', 17),
(18, 'Rania Tamer', '1834567891', 'Courier', '0103000018', '0104000018', 18),
(19, 'Fady Khaled', '1934567891', 'Manager', '0103000019', '0104000019', 19),
(20, 'Mohamed Salah', '2034567891', 'Supervisor', '0103000020', '0104000020', 20);

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary`
--

CREATE TABLE `emp_salary` (
  `emp_id` int(11) NOT NULL,
  `emp_salary` decimal(10,2) NOT NULL,
  `salary_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_salary`
--

INSERT INTO `emp_salary` (`emp_id`, `emp_salary`, `salary_date`) VALUES
(1, 5000.00, '2024-01-01'),
(2, 5500.00, '2024-01-02'),
(3, 6000.00, '2024-01-03'),
(4, 6500.00, '2024-01-04'),
(5, 7000.00, '2024-01-05'),
(6, 7500.00, '2024-01-06'),
(7, 8000.00, '2024-01-07'),
(8, 8500.00, '2024-01-08'),
(9, 9000.00, '2024-01-09'),
(10, 9500.00, '2024-01-10'),
(11, 10000.00, '2024-01-11'),
(12, 10500.00, '2024-01-12'),
(13, 11000.00, '2024-01-13'),
(14, 11500.00, '2024-01-14'),
(15, 12000.00, '2024-01-15'),
(16, 12500.00, '2024-01-16'),
(17, 13000.00, '2024-01-17'),
(18, 13500.00, '2024-01-18'),
(19, 14000.00, '2024-01-19'),
(20, 14500.00, '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `include`
--

CREATE TABLE `include` (
  `rate_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `include`
--

INSERT INTO `include` (`rate_id`, `status_id`) VALUES
(1, 1),
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
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `mng_start`
--

CREATE TABLE `mng_start` (
  `emp_manager_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mng_start`
--

INSERT INTO `mng_start` (`emp_manager_id`, `branch_id`, `start_date`) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 6, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 8, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 10, '2024-01-10'),
(11, 11, '2024-01-11'),
(12, 12, '2024-01-12'),
(13, 13, '2024-01-13'),
(14, 14, '2024-01-14'),
(15, 15, '2024-01-15'),
(16, 16, '2024-01-16'),
(17, 17, '2024-01-17'),
(18, 18, '2024-01-18'),
(19, 19, '2024-01-19'),
(20, 20, '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `no_of_emp`
--

CREATE TABLE `no_of_emp` (
  `no_of_emp` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `no_of_emp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `no_of_emp`
--

INSERT INTO `no_of_emp` (`no_of_emp`, `branch_id`, `no_of_emp_date`) VALUES
(10, 1, '2024-01-01'),
(15, 2, '2024-01-02'),
(20, 3, '2024-01-03'),
(25, 4, '2024-01-04'),
(30, 5, '2024-01-05'),
(35, 6, '2024-01-06'),
(40, 7, '2024-01-07'),
(45, 8, '2024-01-08'),
(50, 9, '2024-01-09'),
(55, 10, '2024-01-10'),
(60, 11, '2024-01-11'),
(65, 12, '2024-01-12'),
(70, 13, '2024-01-13'),
(75, 14, '2024-01-14'),
(80, 15, '2024-01-15'),
(85, 16, '2024-01-16'),
(90, 17, '2024-01-17'),
(95, 18, '2024-01-18'),
(100, 19, '2024-01-19'),
(105, 20, '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `package_state`
--

CREATE TABLE `package_state` (
  `package_id` int(11) NOT NULL,
  `package_state` varchar(50) NOT NULL,
  `package_status_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_state`
--

INSERT INTO `package_state` (`package_id`, `package_state`, `package_status_date`) VALUES
(1, 'Shipped', '2024-12-15'),
(2, 'In Transit', '2024-12-16'),
(3, 'Delivered', '2024-12-17'),
(4, 'Shipped', '2024-12-18'),
(5, 'In Transit', '2024-12-19'),
(6, 'Delivered', '2024-12-20'),
(7, 'Shipped', '2024-12-21'),
(8, 'In Transit', '2024-12-22'),
(9, 'Delivered', '2024-12-23'),
(10, 'Shipped', '2024-12-24'),
(11, 'In Transit', '2024-12-25'),
(12, 'Delivered', '2024-12-26'),
(13, 'Shipped', '2024-12-27'),
(14, 'In Transit', '2024-12-28'),
(15, 'Delivered', '2024-12-29'),
(16, 'Shipped', '2024-12-30'),
(17, 'In Transit', '2024-12-31'),
(18, 'Delivered', '2024-01-01'),
(19, 'Shipped', '2024-01-02'),
(20, 'In Transit', '2024-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `rate_id` int(11) NOT NULL,
  `rate_type` varchar(50) NOT NULL,
  `weight` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`rate_id`, `rate_type`, `weight`) VALUES
(1, 'Standard', 5.00),
(2, 'Express', 10.00),
(3, 'Heavy', 15.00),
(4, 'Light', 2.00),
(5, 'Overnight', 8.00),
(6, 'Urgent', 12.00),
(7, 'Bulk', 50.00),
(8, 'Small', 1.00),
(9, 'Medium', 7.00),
(10, 'Large', 20.00),
(11, 'Fragile', 10.00),
(12, 'Heavy Duty', 30.00),
(13, 'Extra Light', 0.50),
(14, 'Fast', 9.00),
(15, 'Super Fast', 14.00),
(16, 'Low Priority', 4.00),
(17, 'Eco-Friendly', 6.00),
(18, 'Regular', 3.00),
(19, 'Custom', 11.00),
(20, 'Priority', 18.00);

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `receiver_id` int(11) NOT NULL,
  `receiver_name` varchar(100) NOT NULL,
  `receiver_address` varchar(100) NOT NULL,
  `receiver_phone1` varchar(15) NOT NULL,
  `receiver_phone2` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receiver`
--

INSERT INTO `receiver` (`receiver_id`, `receiver_name`, `receiver_address`, `receiver_phone1`, `receiver_phone2`) VALUES
(1, 'Ahmed Ali', 'Cairo, Egypt', '0101000001', '0102000001'),
(2, 'Sara Khaled', 'Giza, Egypt', '0101000002', '0102000002'),
(3, 'Mohamed Hassan', 'Alexandria, Egypt', '0101000003', '0102000003'),
(4, 'Mona Fathy', 'Tanta, Egypt', '0101000004', '0102000004'),
(5, 'Ali Hassan', 'Sharm El Sheikh, Egypt', '0101000005', '0102000005'),
(6, 'Omar Gamal', 'Hurghada, Egypt', '0101000006', '0102000006'),
(7, 'Noura Tamer', 'Aswan, Egypt', '0101000007', '0102000007'),
(8, 'Yasser Ahmed', 'Luxor, Egypt', '0101000008', '0102000008'),
(9, 'Hossam Hany', 'Port Said, Egypt', '0101000009', '0102000009'),
(10, 'Fatma Tamer', 'Suez, Egypt', '0101000010', '0102000010'),
(11, 'Reem Khalil', 'Mansoura, Egypt', '0101000011', '0102000011'),
(12, 'Ghada Adel', 'Ismailia, Egypt', '0101000012', '0102000012'),
(13, 'Mohamed Fathi', 'Fayoum, Egypt', '0101000013', '0102000013'),
(14, 'Ali Youssef', 'Minya, Egypt', '0101000014', '0102000014'),
(15, 'Mona Ali', 'Damanhour, Egypt', '0101000015', '0102000015'),
(16, 'Tamer Magdy', 'Beni Suef, Egypt', '0101000016', '0102000016'),
(17, 'Rania Khaled', 'Shibin El Kom, Egypt', '0101000017', '0102000017'),
(18, 'Sami Hassan', 'Kafr El Sheikh, Egypt', '0101000018', '0102000018'),
(19, 'Heba Ahmed', 'Damietta, Egypt', '0101000019', '0102000019'),
(20, 'Mohamed Khalil', 'Marsa Matruh, Egypt', '0101000020', '0102000020');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `vehicle_no` int(11) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_model` varchar(50) NOT NULL,
  `vehicle_color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`vehicle_no`, `vehicle_name`, `vehicle_model`, `vehicle_color`) VALUES
(101, 'Toyota Corolla', '2020', 'White'),
(102, 'Honda Civic', '2022', 'Black'),
(103, 'Ford Focus', '2021', 'Blue'),
(104, 'BMW X5', '2019', 'Silver'),
(105, 'Mercedes-Benz C-Class', '2023', 'Red'),
(106, 'Chevrolet Malibu', '2021', 'Green'),
(107, 'Nissan Altima', '2022', 'Yellow'),
(108, 'Audi Q7', '2020', 'Gray'),
(109, 'Tesla Model 3', '2024', 'White'),
(110, 'Hyundai Sonata', '2021', 'Black'),
(111, 'Kia Optima', '2020', 'Blue'),
(112, 'Volkswagen Passat', '2022', 'Silver'),
(113, 'Mazda 6', '2023', 'Red'),
(114, 'Subaru Outback', '2021', 'Green'),
(115, 'Ford Escape', '2020', 'Yellow'),
(116, 'Honda Accord', '2022', 'Gray'),
(117, 'Chevrolet Equinox', '2021', 'White'),
(118, 'BMW 3 Series', '2023', 'Black'),
(119, 'Jaguar F-Pace', '2021', 'Blue'),
(120, 'Audi A4', '2024', 'Silver');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `city_rate`
--
ALTER TABLE `city_rate`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_ssn` (`client_ssn`),
  ADD UNIQUE KEY `clients_phone1` (`clients_phone1`),
  ADD UNIQUE KEY `clients_phone2` (`clients_phone2`);

--
-- Indexes for table `client_packages`
--
ALTER TABLE `client_packages`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `rate_id` (`rate_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `vehicle_no` (`vehicle_no`);

--
-- Indexes for table `courier_package_receiver_deliver`
--
ALTER TABLE `courier_package_receiver_deliver`
  ADD PRIMARY KEY (`emp_id`,`package_id`,`receiver_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_ssn` (`emp_ssn`),
  ADD UNIQUE KEY `emp_phone1` (`emp_phone1`),
  ADD UNIQUE KEY `emp_phone2` (`emp_phone2`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `emp_salary`
--
ALTER TABLE `emp_salary`
  ADD PRIMARY KEY (`emp_id`,`salary_date`);

--
-- Indexes for table `include`
--
ALTER TABLE `include`
  ADD PRIMARY KEY (`rate_id`,`status_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `mng_start`
--
ALTER TABLE `mng_start`
  ADD PRIMARY KEY (`emp_manager_id`,`branch_id`,`start_date`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `no_of_emp`
--
ALTER TABLE `no_of_emp`
  ADD PRIMARY KEY (`branch_id`,`no_of_emp_date`);

--
-- Indexes for table `package_state`
--
ALTER TABLE `package_state`
  ADD PRIMARY KEY (`package_id`,`package_status_date`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`receiver_id`),
  ADD UNIQUE KEY `receiver_phone1` (`receiver_phone1`),
  ADD UNIQUE KEY `receiver_phone2` (`receiver_phone2`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`vehicle_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_packages`
--
ALTER TABLE `client_packages`
  ADD CONSTRAINT `client_packages_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `client_packages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `receiver` (`receiver_id`),
  ADD CONSTRAINT `client_packages_ibfk_3` FOREIGN KEY (`rate_id`) REFERENCES `rates` (`rate_id`),
  ADD CONSTRAINT `client_packages_ibfk_4` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);

--
-- Constraints for table `couriers`
--
ALTER TABLE `couriers`
  ADD CONSTRAINT `couriers_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `couriers_ibfk_2` FOREIGN KEY (`vehicle_no`) REFERENCES `transport` (`vehicle_no`);

--
-- Constraints for table `courier_package_receiver_deliver`
--
ALTER TABLE `courier_package_receiver_deliver`
  ADD CONSTRAINT `courier_package_receiver_deliver_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `couriers` (`emp_id`),
  ADD CONSTRAINT `courier_package_receiver_deliver_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `client_packages` (`package_id`),
  ADD CONSTRAINT `courier_package_receiver_deliver_ibfk_3` FOREIGN KEY (`receiver_id`) REFERENCES `receiver` (`receiver_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`);

--
-- Constraints for table `emp_salary`
--
ALTER TABLE `emp_salary`
  ADD CONSTRAINT `emp_salary_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`);

--
-- Constraints for table `include`
--
ALTER TABLE `include`
  ADD CONSTRAINT `include_ibfk_1` FOREIGN KEY (`rate_id`) REFERENCES `rates` (`rate_id`),
  ADD CONSTRAINT `include_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `city_rate` (`status_id`);

--
-- Constraints for table `mng_start`
--
ALTER TABLE `mng_start`
  ADD CONSTRAINT `mng_start_ibfk_1` FOREIGN KEY (`emp_manager_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `mng_start_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`);

--
-- Constraints for table `no_of_emp`
--
ALTER TABLE `no_of_emp`
  ADD CONSTRAINT `no_of_emp_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`);

--
-- Constraints for table `package_state`
--
ALTER TABLE `package_state`
  ADD CONSTRAINT `package_state_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `client_packages` (`package_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
