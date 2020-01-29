-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 07:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `on_hold`
--

CREATE TABLE `on_hold` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(13) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `expire_date` date NOT NULL,
  `qty` bigint(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `cost` bigint(11) NOT NULL,
  `amount` bigint(11) NOT NULL,
  `discount_amount` int(11) NOT NULL,
  `profit_amount` bigint(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `discount_rate` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `on_hold`
--

INSERT INTO `on_hold` (`id`, `invoice_number`, `medicine_name`, `category`, `expire_date`, `qty`, `type`, `cost`, `amount`, `discount_amount`, `profit_amount`, `date`, `discount_rate`) VALUES
(1, 'RS-9390009', 'Biogessic', 'Painkiller', '2020-03-31', 1, 'Stp', 500, 500, 0, 100, '02/22/2019', 0),
(2, 'RS-2200239', 'Biogessic', 'Painkiller', '2020-03-31', 298, 'Stp', 500, 149000, 0, 29800, '02/22/2019', 0),
(4, 'RS-2099902', 'Paracetemol', 'Painkiller', '2019-08-15', 1, 'Bot', 500, 500, 0, 100, '02/27/2019', 0),
(7, 'RS-2922209', 'Paracetemol', 'Painkiller', '2019-08-15', 3, 'Bot', 500, 1500, 0, 300, '02/27/2019', 0),
(17, 'RS-3920020', 'Paracetemol', 'Painkiller', '2019-02-28', 10, 'Bot', 700, 7000, 0, 2000, '02/28/2019', 0),
(18, 'RS-9009003', 'Paracetemol', 'Painkiller', '2019-02-28', 3, 'Bot', 700, 2100, 0, 600, '02/28/2019', 0),
(19, 'RS-9092090', 'Paracetemol', 'Painkiller', '2019-02-28', 2, 'Bot', 700, 1400, 0, 400, '02/28/2019', 0),
(20, 'RS-9220309', 'Paracetemol', 'Painkiller', '2019-02-28', 2, 'Bot', 700, 1400, 0, 400, '03/01/2019', 0),
(21, 'RS-0322209', 'Paracetemol', 'Painkiller', '2019-02-28', 93, 'Bot', 700, 65100, 0, 18600, '03/01/2019', 0),
(22, 'RS-2990220', 'Paracetemol', 'Painkiller', '2019-02-28', 8, 'Bot', 700, 5600, 0, 1600, '03/01/2019', 0),
(23, 'RS-0939993', 'Paracetemol', 'Painkiller', '2019-02-28', 1, 'Bot', 700, 700, 0, 200, '03/02/2019', 0),
(24, 'RS-9900203', 'Biogessic', 'Painkiller', '2019-11-14', 1, 'Sachet', 600, 600, 0, 100, '03/02/2019', 0),
(25, 'RS-9900203', 'Paracetemol', 'Painkiller', '2019-09-19', 2, 'Stp', 600, 1200, 0, 200, '03/02/2019', 0),
(26, 'RS-9090000', 'Biogessic', 'Painkiller', '2019-11-14', 2, 'Sachet', 600, 1200, 0, 200, '03/02/2019', 0),
(27, 'RS-2233020', 'Biogessic', 'Painkiller', '2020-03-13', 5, 'Unit', 400, 2000, 0, 500, '03/02/2019', 0),
(29, 'RS-9292200', 'Biogessic', 'Painkiller', '2019-04-25', 1, 'Bot', 400, 400, 0, 100, '03/02/2019', 0),
(30, 'RS-3009023', 'Paracetemol', 'Painkiller', '2019-08-14', 3, 'Unit', 400, 1200, 0, 300, '03/02/2019', 0),
(35, 'RS-0900090', 'Paracetemol', 'Painkiller', '2019-08-14', 2, 'Bot', 400, 800, 0, 200, '03/02/2019', 0),
(37, 'RS-2099202', 'Paracetemol', 'painkiller', '2011-12-19', 1, 'Bot', 599, 599, 0, 100, '03/04/2019', 0),
(51, 'RS-9292203', 'Paracetemol', 'Painkiller', '2019-08-03', 3, 'Stp', 500, 1500, 0, 300, '03/05/2019', 0),
(61, 'RS-0000032', 'Paracetemol', 'Painkiller', '2019-10-01', 5, 'Bot', 500, 2500, 0, 500, '03/05/2019', 0),
(62, 'RS-0000032', 'Biogessic', 'Painkiller', '2020-03-06', 4, 'Bot', 700, 2800, 0, 800, '03/05/2019', 0),
(63, 'RS-2909290', 'Paracetemol', 'Painkiller', '2019-10-01', 10, 'Bot', 500, 5000, 0, 1000, '03/05/2019', 0),
(64, 'RS-3209302', 'Napa', 'Painkiller', '2020-05-28', 20, 'Tab', 2, 40, 0, 20, '05/26/2019', 0),
(65, 'RS-9009033', 'Napa', 'Painkiller', '2020-05-28', 10, 'Tab', 2, 20, 0, 10, '05/26/2019', 0),
(66, 'RS-9022390', 'Progut 20mg', 'Acidity', '2021-04-07', 10, 'Tab', 7, 70, 0, 20, '05/26/2019', 0),
(69, 'RS-0902902', 'Seclo', 'Acidity', '2020-05-26', 10, 'Tab', 5, 50, 0, 20, '05/26/2019', 0),
(70, 'RS-9900929', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 5, 'Tab', 27, 135, 0, 25, '07/09/2019', 0),
(71, 'RS-9900929', '', '', '0000-00-00', 1, '', 0, 0, 0, 0, '07/09/2019', 0),
(75, 'RS-0209392', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 5, 'Tab', 25, 125, 113, 25, '08/25/2019', 0),
(76, 'RS-9093290', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 5, 'Tab', 25, 125, 125, 25, '08/27/2019', 0),
(78, 'RS-3099999', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 5, 'Tab', 25, 125, 113, 25, '09/14/2019', 10),
(82, 'RS-2009200', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 5, 'Tab', 25, 125, 100, 25, '09/14/2019', 20),
(83, 'RS-3903299', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 5, 'Tab', 25, 125, 100, 25, '09/14/2019', 20),
(85, 'RS-0909900', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 10, 'Tab', 25, 250, 200, 50, '09/14/2019', 20),
(86, 'RS-9900221', 'Amlopin', 'Acidity', '2022-11-19', 101, 'Tab', 10, 1010, 1010, 404, '11/19/2019', 0),
(87, 'RS-9900222', 'Napa', 'Painkiller', '2020-05-28', 1, 'Tab', 2, 2, 2, 1, '11/19/2019', 1),
(88, 'RS-9900223', 'Napa', 'Painkiller', '2020-05-28', 2, 'Tab', 2, 4, 4, 2, '11/19/2019', 0),
(89, 'RS-9900224', 'Amlopin', 'Acidity', '2022-11-19', 10, 'Tab', 10, 100, 100, 40, '11/19/2019', 0),
(90, 'RS-9900225', 'Amlopin', 'Acidity', '2022-11-19', 11, 'Tab', 10, 110, 110, 44, '11/19/2019', 0),
(91, 'RS-9900226', 'Maxpro', 'Acidity', '2021-11-19', 10, 'Cap', 10, 100, 100, 50, '11/19/2019', 0),
(93, 'RS-9900227', 'Maxpro', 'Acidity', '2021-11-19', 10, 'Cap', 10, 100, 100, 100, '11/19/2019', 0),
(94, 'RS-9900227', 'Napa', 'Painkiller', '2020-05-28', 10, 'Tab', 2, 20, 20, 10, '11/19/2019', 0),
(95, 'RS-9900228', 'Maxpro', 'Acidity', '2021-11-19', 10, 'Cap', 10, 100, 100, 100, '11/19/2019', 0),
(96, 'RS-9900228', 'Napa', 'Painkiller', '2020-05-28', 10, 'Tab', 2, 20, 20, 20, '11/19/2019', 0),
(97, 'RS-9900228', 'Seclo', 'Acidity', '2021-11-19', 10, 'Tab', 10, 100, 100, 40, '11/19/2019', 0),
(98, 'RS-9900229', 'Amlopin', 'Acidity', '2022-11-19', 5, 'Tab', 10, 50, 50, 20, '12/07/2019', 0),
(99, 'RS-9900230', 'Amlopin', 'Acidity', '2022-11-19', 7, 'Tab', 10, 70, 70, 28, '12/07/2019', 0),
(100, 'RS-9900231', 'Toramex 10mg', 'PAINKILLER', '2020-05-26', 6, 'Tab', 25, 150, 150, 30, '12/08/2019', 0),
(102, 'RS-9900232', 'Napa', 'Painkiller', '2020-05-28', 10, 'Tab', 2, 20, 20, 10, '12/08/2019', 0),
(103, 'RS-9900233', 'Maxpro', 'Acidity', '2021-11-19', 20, 'Cap', 10, 200, 200, 100, '12/08/2019', 0),
(105, 'RS-9900234', 'Napa', 'Painkiller', '2020-05-28', 10, 'Tab', 2, 20, 20, 10, '12/08/2019', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(13) NOT NULL,
  `medicines` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `total_amount` bigint(11) NOT NULL,
  `total_profit` bigint(11) NOT NULL,
  `Date` date NOT NULL,
  `discount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_number`, `medicines`, `quantity`, `total_amount`, `total_profit`, `Date`, `discount`) VALUES
(1, 'RS-9390009', 'Biogessic', '1(Stp)', 500, 100, '2019-02-22', 0),
(2, 'RS-0900090', 'Biogessic', '1(Stp)', 500, 100, '2019-02-27', 0),
(3, 'RS-2099902', 'Paracetemol', '1(Bot)', 500, 100, '2019-02-27', 0),
(4, 'RS-2922209', 'Paracetemol', '3(Bot)', 1500, 300, '2019-02-27', 0),
(5, 'RS-3920020', 'Paracetemol', '10(Bot)', 7000, 2000, '2019-02-28', 0),
(6, 'RS-9009003', 'Paracetemol', '3(Bot)', 2100, 600, '2019-02-28', 0),
(7, 'RS-9220309', 'Paracetemol', '2(Bot)', 1400, 400, '2019-03-01', 0),
(8, 'RS-0322209', 'Paracetemol', '93(Bot)', 65100, 18600, '2019-03-01', 0),
(9, 'RS-0939993', 'Paracetemol', '1(Bot)', 700, 200, '2019-03-02', 0),
(10, 'RS-9900203', 'Biogessic,Paracetemol', '1(Sachet),2(Stp)', 1800, 300, '2019-03-02', 0),
(11, 'RS-2233020', 'Biogessic', '5(Unit)', 2000, 500, '2019-03-02', 0),
(12, 'RS-9292200', 'Biogessic', '1(Bot)', 400, 100, '2019-03-02', 0),
(13, 'RS-2099202', 'Paracetemol', '1(Bot)', 599, 100, '2019-03-04', 0),
(14, 'RS-9292203', 'Paracetemol', '3(Stp)', 1500, 300, '2019-03-05', 0),
(15, 'RS-0000032', 'Paracetemol,Biogessic', '5(Bot),4(Bot)', 5300, 1300, '2019-03-05', 0),
(16, 'RS-9009033', 'Napa', '10(Tab)', 20, 10, '2019-05-26', 0),
(17, 'RS-9022390', 'Progut 20mg', '10(Tab)', 70, 20, '2019-05-26', 0),
(18, 'RS-0902902', 'Seclo', '10(Tab)', 50, 20, '2019-05-26', 0),
(19, 'RS-2009200', 'Toramex 10mg', '5(Tab)', 125, 25, '2019-09-14', 100),
(20, 'RS-3903299', 'Toramex 10mg', '5(Tab)', 125, 25, '2019-09-14', 100),
(21, 'RS-0909900', 'Toramex 10mg', '10(Tab)', 250, 50, '2019-09-14', 200),
(22, 'RS-9900221', 'Amlopin', '101(Tab)', 1010, 404, '2019-11-19', 1010),
(23, 'RS-9900222', 'Napa', '1(Tab)', 2, 1, '2019-11-19', 2),
(24, 'RS-9900223', 'Napa', '2(Tab)', 4, 2, '2019-11-19', 4),
(25, 'RS-9900224', 'Amlopin', '10(Tab)', 100, 40, '2019-11-19', 100),
(26, 'RS-9900225', 'Amlopin', '11(Tab)', 110, 44, '2019-11-19', 110),
(27, 'RS-9900226', 'Maxpro', '10(Cap)', 100, 50, '2019-11-19', 100),
(28, 'RS-9900227', 'Maxpro,Napa', '10(Cap),10(Tab)', 120, 110, '2019-11-19', 120),
(29, 'RS-9900228', 'Maxpro,Napa,Seclo', '10(Cap),10(Tab),10(Tab)', 220, 160, '2019-11-19', 220),
(30, 'RS-9900229', 'Amlopin', '5(Tab)', 50, 20, '2019-12-07', 50),
(31, 'RS-9900230', 'Amlopin', '7(Tab)', 70, 28, '2019-12-07', 70),
(32, 'RS-9900231', 'Toramex 10mg', '6(Tab)', 150, 30, '2019-12-08', 150),
(33, 'RS-9900232', 'Napa', '10(Tab)', 20, 10, '2019-12-08', 20),
(34, 'RS-9900233', 'Maxpro', '20(Cap)', 200, 100, '2019-12-08', 200),
(35, 'RS-9900234', 'Napa', '10(Tab)', 20, 10, '2019-12-08', 20);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(100) NOT NULL,
  `bar_code` varchar(255) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `used_quantity` int(100) NOT NULL,
  `remain_quantity` int(100) NOT NULL,
  `act_remain_quantity` int(10) NOT NULL,
  `register_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `company` varchar(100) NOT NULL,
  `sell_type` varchar(100) NOT NULL,
  `actual_price` int(100) NOT NULL,
  `selling_price` int(100) NOT NULL,
  `profit_price` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `bar_code`, `medicine_name`, `category`, `quantity`, `used_quantity`, `remain_quantity`, `act_remain_quantity`, `register_date`, `expire_date`, `company`, `sell_type`, `actual_price`, `selling_price`, `profit_price`, `status`) VALUES
(24, '1', 'Napa', 'Painkiller', 100, 73, 27, 27, '2019-05-26', '2020-05-28', 'Beximco', 'Tab', 1, 2, '1(100%)', 'Available'),
(25, '100', 'Toramex 10mg', 'PAINKILLER', 100, 56, 44, 44, '2019-05-26', '2020-05-26', 'Popular', 'Tab', 22, 25, '5(23%)', 'Available'),
(31, '200', 'Napa', 'Acidity', 3, 0, 3, 3, '2019-07-12', '2019-07-23', 'Popular', 'Bot', 2, 4, '2(100%)', 'Available'),
(32, '400', 'Seclo', 'Acidity', 2000, 10, 1990, 2000, '2019-11-19', '2021-11-19', 'Popular', 'Tab', 6, 10, '4(67%)', 'Available'),
(33, '500', 'Maxpro', 'Acidity', 3000, 50, 2950, 2950, '2019-11-19', '2021-11-19', 'Beximco', 'Cap', 5, 10, '5(100%)', 'Available'),
(34, '600', 'Amlopin', 'Acidity', 4000, 134, 3866, 3866, '2019-11-19', '2022-11-19', 'Popular', 'Tab', 6, 10, '4(67%)', 'Available'),
(35, '300', 'Cartilex plus', 'Calcium', 100, 0, 100, 100, '2019-12-08', '2020-10-12', 'ACI', 'Bot', 10, 20, '10(100%)', 'Available'),
(36, '700', 'Coral Caldi', 'Calcium', 500, 0, 500, 500, '2019-12-08', '2021-10-20', 'Radiant', 'Tab', 5, 20, '15(300%)', 'Available'),
(37, '900', 'Surgel', 'Acidity', 1000, 0, 1000, 1000, '2019-12-08', '2021-12-22', 'Beximco', 'Tab', 10, 20, '10(100%)', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(1, 'someone', '123'),
(0, 'admin', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `on_hold`
--
ALTER TABLE `on_hold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bar_code` (`bar_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `on_hold`
--
ALTER TABLE `on_hold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
