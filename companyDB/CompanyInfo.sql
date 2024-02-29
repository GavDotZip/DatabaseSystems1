SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `department` (
  `dnumber` int(20) NOT NULL PRIMARY KEY,
  `dname` varchar(50) DEFAULT NULL,
  `mgrssn` bigint(20) DEFAULT NULL,
  `mgrstartdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `dependent` (
  `essn` bigint(20) NOT NULL,
  `dependent_name` varchar(50) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
   PRIMARY KEY (`essn`,`dependent_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `department` (`dnumber`, `dname`, `mgrssn`, `mgrstartdate`) VALUES
(1, 'Headquarters', 888665555, '2019-06-19'),
(4, 'Administration', 987654321, '2015-01-01'),
(5, 'Research', 333445555, '2018-05-22');

INSERT INTO `dependent` (`essn`, `dependent_name`, `gender`, `bdate`, `relationship`) VALUES
(123456789, 'Alice', 'Woman', '2008-12-30', 'Daughter'),
(123456789, 'Elizabeth', 'Woman', '1976-05-05', 'Spouse'),
(123456789, 'Michael', 'Man', '2011-01-04', 'Son'),
(333445555, 'Alice', 'Woman', '2010-04-05', 'Daughter'),
(333445555, 'Joy', 'Woman', '1981-05-03', 'Spouse'),
(333445555, 'Theodore', 'Man', '2014-10-25', 'Son'),
(987654321, 'Abner', 'Woman', '1992-02-28', 'Spouse');