-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2023 at 09:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xtreme`
--
CREATE DATABASE IF NOT EXISTS `xtreme` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `xtreme`;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(10) NOT NULL,
  `serialNo` varchar(50) NOT NULL,
  `medicine` text NOT NULL,
  `medicineInfo` text NOT NULL,
  `type` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `serialNo`, `medicine`, `medicineInfo`, `type`, `price`, `quantity`) VALUES
(1, '12345', 'Aspirin', 'Pain reliever', 'Tablet', 10.99, 92),
(2, '23456', 'Amoxicillin', 'Antibiotic', 'Capsule', 15.99, 12),
(3, '34567', 'Lisinopril', 'Blood pressure medication', 'Tablet', 20.99, 12),
(4, '45678', 'Metformin', 'Diabetes medication', 'Tablet', 12.99, 12),
(5, '56789', 'Atorvastatin', 'Cholesterol medication', 'Tablet', 18.99, 6),
(6, '67890', 'Cetirizine', 'Antihistamine', 'Tablet', 8.99, -28),
(7, '78901', 'Ibuprofen', 'Pain reliever', 'Capsule', 9.99, 12),
(8, '89012', 'Simvastatin', 'Cholesterol medication', 'Tablet', 22.99, 12),
(9, '90123', 'Warfarin', 'Blood thinner', 'Tablet', 16.99, 9),
(10, '10234', 'Levothyroxine', 'Thyroid medication', 'Tablet', 11.99, 12),
(11, '21345', 'Lorazepam', 'Anti-anxiety medication', 'Tablet', 17.99, 12),
(12, '32456', 'Ciprofloxacin', 'Antibiotic', 'Tablet', 14.99, 16),
(13, '43567', 'Omeprazole', 'Acid reducer', 'Capsule', 13.99, 12),
(14, '54678', 'Ranitidine', 'Acid reducer', 'Tablet', 9.99, 12),
(15, '65789', 'Furosemide', 'Diuretic', 'Tablet', 12.99, 12),
(16, '76890', 'Hydrochlorothiazide', 'Diuretic', 'Tablet', 19.99, 12),
(17, '87901', 'Pantoprazole', 'Acid reducer', 'Tablet', 15.99, 12),
(18, '98012', 'Gabapentin', 'Seizure medication', 'Capsule', 10.99, 12),
(19, '10923', 'Bupropion', 'Antidepressant', 'Tablet', 21.99, 12),
(20, '21034', 'Fluoxetine', 'Antidepressant', 'Capsule', 16.99, 12),
(22, '23456', 'Amoxicillin', 'Antibiotic', 'Capsule', 15.99, 5),
(23, '34567', 'Lisinopril', 'Blood pressure medication', 'Tablet', 20.99, 12),
(24, '45678', 'Metformin', 'Diabetes medication', 'Tablet', 12.99, -3),
(28, '89012', 'Simvastatin', 'Cholesterol medication', 'Tablet', 22.99, 3),
(30, '10234', 'Levothyroxine', 'Thyroid medication', 'Tablet', 11.99, 5),
(31, '21345', 'Lorazepam', 'Anti-anxiety medication', 'Tablet', 17.99, 2),
(32, '32456', 'Ciprofloxacin', 'Antibiotic', 'Tablet', 14.99, 16),
(33, '43567', 'Omeprazole', 'Acid reducer', 'Capsule', 13.99, 1),
(34, '54678', 'Ranitidine', 'Acid reducer', 'Tablet', 9.99, 3),
(36, '76890', 'Hydrochlorothiazide', 'Diuretic', 'Tablet', 19.99, 8),
(37, '87901', 'Pantoprazole', 'Acid reducer', 'Tablet', 15.99, 3),
(38, '98012', 'Gabapentin', 'Seizure medication', 'Capsule', 10.99, 9),
(39, '10923', 'Bupropion', 'Antidepressant', 'Tablet', 21.99, 3),
(40, '21034', 'Fluoxetine', 'Antidepressant', 'Capsule', 16.99, 9),
(41, '32145', 'Celecoxib', 'Pain reliever', 'Capsule', 17.99, 12),
(42, '43256', 'Losartan', 'Blood pressure medication', 'Tablet', 24.99, 12),
(43, '54367', 'Hydroxyzine', 'Antihistamine', 'Tablet', 11.99, 12),
(44, '65478', 'Trazodone', 'Antidepressant', 'Tablet', 20.99, 12),
(45, '76589', 'Montelukast', 'Asthma medication', 'Tablet', 16.99, 11),
(46, '87690', 'Propranolol', 'Beta blocker', 'Tablet', 14.99, 12),
(47, '98701', 'Rosuvastatin', 'Cholesterol medication', 'Tablet', 23.99, 12),
(48, '19802', 'Doxycycline', 'Antibiotic', 'Capsule', 12.99, 12),
(49, '21903', 'Escitalopram', 'Antidepressant', 'Tablet', 18.99, 12),
(51, '21128', 'Tropitor', 'Muscle relaxant', 'Tablet', 90, 40);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyStock`
--

CREATE TABLE `pharmacyStock` (
  `id` int(10) NOT NULL,
  `serialNo` varchar(50) NOT NULL,
  `medicine` text NOT NULL,
  `medicineInfo` text NOT NULL,
  `type` text NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL,
  `expiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacyStock`
--

INSERT INTO `pharmacyStock` (`id`, `serialNo`, `medicine`, `medicineInfo`, `type`, `price`, `amount`, `expiryDate`) VALUES
(1, '12345', 'Aspirin', 'Pain reliever', 'Tablet', 12.99, 221, '2024-04-30'),
(2, '23456', 'Amoxicillin', 'Antibiotic', 'Capsule', 15.99, 30, '2023-12-31'),
(3, '34567', 'Lisinopril', 'Blood pressure medication', 'Tablet', 20.99, 30, '2022-11-30'),
(4, '45678', 'Metformin', 'Diabetes medication', 'Tablet', 12.99, 15, '2022-06-30'),
(5, '56789', 'Atorvastatin', 'Cholesterol medication', 'Tablet', 18.99, 443, '2023-09-30'),
(6, '67890', 'Cetirizine', 'Antihistamine', 'Tablet', 8.99, 60, '2023-06-30'),
(7, '78901', 'Ibuprofen', 'Pain reliever', 'Capsule', 9.99, 124, '2024-10-31'),
(8, '89012', 'Simvastatin', 'Cholesterol medication', 'Tablet', 22.99, 11, '2022-05-31'),
(9, '90123', 'Warfarin', 'Blood thinner', 'Tablet', 16.99, 15, '2023-03-31'),
(10, '10234', 'Levothyroxine', 'Thyroid medication', 'Tablet', 11.99, 45, '2022-08-31'),
(11, '21345', 'Lorazepam', 'Anti-anxiety medication', 'Tablet', 17.99, 20, '2024-02-28'),
(12, '32456', 'Ciprofloxacin', 'Antibiotic', 'Tablet', 14.99, 21, '2022-12-31'),
(13, '43567', 'Omeprazole', 'Acid reducer', 'Capsule', 13.99, 30, '2023-07-31'),
(14, '54678', 'Ranitidine', 'Acid reducer', 'Tablet', 9.99, 40, '2023-05-31'),
(15, '65789', 'Furosemide', 'Diuretic', 'Tablet', 12.99, 50, '2022-09-30'),
(16, '76890', 'Hydrochlorothiazide', 'Diuretic', 'Tablet', 19.99, 20, '2024-01-31'),
(17, '87901', 'Pantoprazole', 'Acid reducer', 'Tablet', 15.99, 25, '2023-08-31'),
(19, '10923', 'Bupropion', 'Antidepressant', 'Tablet', 21.99, 15, '2023-04-30'),
(20, '21034', 'Fluoxetine', 'Antidepressant', 'Capsule', 16.99, 30, '2022-07-31'),
(21, '98765', 'Diazepam', 'Anti-anxiety medication', 'Tablet', 12.99, 250, '2023-11-30'),
(22, '87654', 'Naproxen', 'Pain reliever', 'Tablet', 9.99, 300, '2024-05-31'),
(23, '76543', 'Losartan', 'Blood pressure medication', 'Tablet', 14.99, 400, '2023-10-31'),
(24, '65432', 'Propranolol', 'Beta blocker', 'Tablet', 8.99, 450, '2024-09-30'),
(25, '54321', 'Tramadol', 'Pain reliever', 'Capsule', 11.99, 350, '2022-12-31'),
(26, '43210', 'Lamotrigine', 'Seizure medication', 'Tablet', 19.99, 250, '2023-05-31'),
(27, '32109', 'Fexofenadine', 'Antihistamine', 'Tablet', 7.99, 300, '2024-02-28'),
(28, '21098', 'Ceftriaxone', 'Antibiotic', 'Injection', 25.99, 200, '2022-09-30'),
(29, '19876', 'Morphine', 'Pain reliever', 'Injection', 20.99, 450, '2023-06-30'),
(30, '18765', 'Codeine', 'Cough suppressant', 'Tablet', 14.99, 250, '2024-01-31'),
(31, '17654', 'Naltrexone', 'Alcohol dependence medication', 'Tablet', 18.99, 350, '2023-08-31'),
(32, '16543', 'Clomipramine', 'Antidepressant', 'Capsule', 15.99, 400, '2022-11-30'),
(33, '15432', 'Gabapentin', 'Neuropathic pain medication', 'Tablet', 11.99, 300, '2024-04-30'),
(34, '14321', 'Amlodipine', 'Blood pressure medication', 'Tablet', 12.99, 200, '2023-09-30'),
(35, '13210', 'Carvedilol', 'Beta blocker', 'Tablet', 8.99, 450, '2022-06-30'),
(36, '12109', 'Pregabalin', 'Neuropathic pain medication', 'Capsule', 16.99, 350, '2023-03-31'),
(37, '11098', 'Clozapine', 'Antipsychotic', 'Tablet', 21.99, 250, '2024-06-30'),
(38, '11987', 'Hydromorphone', 'Pain reliever', 'Injection', 19.99, 300, '2022-10-31'),
(39, '12876', 'Methadone', 'Opioid addiction medication', 'Tablet', 15.99, 400, '2023-07-31'),
(40, '13765', 'Citalopram', 'Antidepressant', 'Tablet', 9.99, 200, '2024-03-31'),
(41, '21111', 'Flarizona', 'Allergy relief', 'Tablet', 7.99, 485, '2024-11-30'),
(42, '21112', 'Zenidon', 'Antidepressant', 'Capsule', 15.99, 320, '2024-05-31'),
(43, '21113', 'Neogran', 'Pain reliever', 'Tablet', 9.99, 390, '2025-02-28'),
(44, '21114', 'Alevon', 'Anti-inflammatory', 'Capsule', 12.99, 265, '2024-09-30'),
(45, '21115', 'Lunetor', 'Sleep aid', 'Tablet', 19.99, 300, '2023-12-31'),
(46, '21116', 'Vertilox', 'Nausea medication', 'Tablet', 8.99, 455, '2025-08-31'),
(47, '21117', 'Cardis', 'Heart medication', 'Tablet', 22.99, 205, '2023-06-30'),
(48, '21118', 'Zolamax', 'Antihistamine', 'Capsule', 10.99, 450, '2025-10-31'),
(49, '21119', 'Celetric', 'Pain reliever', 'Tablet', 11.99, 370, '2024-03-31'),
(50, '21120', 'Artizon', 'Arthritis medication', 'Tablet', 14.99, 375, '2024-08-31'),
(51, '21121', 'Xylomate', 'Cough syrup', 'Liquid', 7.99, 425, '2026-01-31'),
(52, '21122', 'Nevotil', 'Antipsychotic', 'Tablet', 18.99, 215, '2023-10-31'),
(53, '21123', 'Levodex', 'Parkinson’s medication', 'Tablet', 16.99, 295, '2024-02-29'),
(54, '21124', 'Gastrone', 'Acid reducer', 'Capsule', 13.99, 255, '2025-03-31'),
(55, '21125', 'Azelicor', 'Acne medication', 'Cream', 25.99, 220, '2025-06-30'),
(56, '21126', 'Migristat', 'Migraine medication', 'Tablet', 21.99, 235, '2023-11-30'),
(57, '21127', 'Chloraxone', 'Antibiotic', 'Tablet', 14.99, 405, '2024-07-31'),
(58, '21128', 'Tropitor', 'Muscle relaxant', 'Tablet', 17.99, 240, '2025-09-30'),
(59, '21129', 'Lecitrex', 'Cholesterol medication', 'Tablet', 12.99, 420, '2023-09-30'),
(60, '21130', 'Galvapen', 'Antibiotic', 'Capsule', 16.99, 355, '2024-06-30'),
(61, '21131', 'Exidon', 'Antidiarrheal', 'Tablet', 8.99, 480, '2026-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `serialNumber` varchar(24) NOT NULL,
  `prescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`serialNumber`, `prescription`) VALUES
('SN-644eb3dfbf223-2023', '\nBupropion 2  X 4\nLorazepam 2  X 2\nLorazepam 2  X 2'),
('SN-644eb476d180b-2023', '\nAtorvastatin, Before every meal\nOmeprazole, Before every meal'),
('SN-644ec2fc76925-2023', '\nOmeprazole, 2*1\nSimvastatin, 2*1');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `serialNumber` varchar(24) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date_sold` date NOT NULL DEFAULT current_timestamp(),
  `total_cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `serialNumber`, `medicine_name`, `quantity_sold`, `price`, `date_sold`, `total_cost`) VALUES
(1, 'SN-644e7eb107fc1-2023', 'Aspirin', 3, 10.99, '2023-04-25', 32.97),
(2, 'SN-644e7eb107fc1-2023', 'Amoxicillin', 4, 15.99, '2023-04-26', 63.96),
(3, 'SN-644e7eb107fc1-2023', 'Metformin', 4, 12.99, '2023-04-26', 51.96),
(4, 'SN-644e7eb107fc1-2023', 'Levothyroxine', 4, 11.99, '2023-04-27', 47.96),
(5, 'SN-644e7eb107fc1-2023', 'Hydrochlorothiazide', 4, 19.99, '2023-04-30', 79.96),
(6, 'SN-644e7eb107fc1-2023', 'Omeprazole', 2, 13.99, '2023-04-30', 27.98),
(7, 'SN-644e7ef74b1c9-2023', 'Lorazepam', 1, 17.99, '2023-04-30', 17.99),
(8, 'SN-644e7ef74b1c9-2023', 'Montelukast', 1, 16.99, '2023-04-30', 16.99),
(9, 'SN-644eac0e5b658-2023', 'Aspirin', 3, 10.99, '2023-04-30', 32.97),
(10, 'SN-644eac0e5b658-2023', 'Lorazepam', 3, 17.99, '2023-04-30', 53.97),
(11, 'SN-644eacb653f08-2023', 'Lorazepam', 3, 17.99, '2023-04-30', 53.97),
(12, 'SN-644eacb653f08-2023', 'Lorazepam', 3, 17.99, '2023-04-30', 53.97),
(13, 'SN-644eacd537795-2023', 'Fluoxetine', 3, 16.99, '2023-04-30', 50.97),
(14, 'SN-644eacf224445-2023', 'Ranitidine', 3, 9.99, '2023-04-30', 29.97),
(15, 'SN-644eacf224445-2023', 'Ranitidine', 3, 9.99, '2023-04-30', 29.97),
(16, 'SN-644eadc5c100c-2023', 'Pantoprazole', 3, 15.99, '2023-04-30', 47.97),
(17, 'SN-644eadc5c100c-2023', 'Pantoprazole', 3, 15.99, '2023-04-30', 47.97),
(18, 'SN-644eadc5c100c-2023', 'Pantoprazole', 3, 15.99, '2023-04-30', 47.97),
(19, 'SN-644eae2bb39f7-2023', 'Ranitidine', 3, 9.99, '2023-04-30', 29.97),
(20, 'SN-644eae504c82e-2023', 'Amoxicillin', 3, 15.99, '2023-04-30', 47.97),
(21, 'SN-644eae8ff3182-2023', 'Omeprazole', 3, 13.99, '2023-04-30', 41.97),
(22, 'SN-644eaeaa56d78-2023', 'Gabapentin', 3, 10.99, '2023-04-30', 32.97),
(23, 'SN-644eaeaa56d78-2023', 'Warfarin', 3, 16.99, '2023-04-30', 50.97),
(24, 'SN-644eaf21a5103-2023', 'Bupropion', 3, 21.99, '2023-04-30', 65.97),
(25, 'SN-644eaf21a5103-2023', 'Bupropion', 3, 21.99, '2023-04-30', 65.97),
(26, 'SN-644eaf21a5103-2023', 'Bupropion', 3, 21.99, '2023-04-30', 65.97),
(27, 'SN-644eb42406c88-2023', 'Levothyroxine', 3, 11.99, '2023-04-30', 35.97),
(28, 'SN-644eb42406c88-2023', 'Atorvastatin', 3, 18.99, '2023-04-30', 56.97),
(29, 'SN-644eb476d180b-2023', 'Atorvastatin', 3, 18.99, '2023-04-30', 56.97),
(30, 'SN-644eb476d180b-2023', 'Omeprazole', 3, 13.99, '2023-04-30', 41.97),
(31, 'SN-644ec2fc76925-2023', 'Simvastatin', 3, 22.99, '2023-04-30', 68.97);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacyStock`
--
ALTER TABLE `pharmacyStock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`serialNumber`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pharmacyStock`
--
ALTER TABLE `pharmacyStock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
