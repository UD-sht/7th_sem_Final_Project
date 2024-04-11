

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `dob`, `relationship`, `department`, `address`, `mobile`, `login_id`, `pwd`, `lastlogin`) VALUES
(1, 'admin', 'M', '2000-05-21', 'unmarried', 'developer', 'Lokanthali-1, Bhaktapur', '9800001111', 'admin', 'admin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

DROP TABLE IF EXISTS `atm`;
CREATE TABLE IF NOT EXISTS `atm` (
`id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `atm`
--



-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

DROP TABLE IF EXISTS `beneficiary1`;
CREATE TABLE IF NOT EXISTS `beneficiary1` (
`id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `reciever_name` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dumping data for table `beneficiary1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

DROP TABLE IF EXISTS `cheque_book`;
CREATE TABLE IF NOT EXISTS `cheque_book` (
`id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dumping data for table `cheque_book`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `nominee` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `accstatus` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer`
--



-- --------------------------------------------------------

--
-- Table structure for table `passbook1`
--

DROP TABLE IF EXISTS `passbook1`;
CREATE TABLE IF NOT EXISTS `passbook1` (
`transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dumping data for table `passbook1`
--

INSERT INTO `passbook1` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2024-01-08', 'Ram Shrestha', 'KATHMANDU', 'K421A', 13000, 0, 13000.00, 'Account Open');

-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
`id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`login_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `passbook34`
--
ALTER TABLE `passbook1`
 ADD PRIMARY KEY (`transactionid`);


--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--

--

--
ALTER TABLE `staff`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
