-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 10:41 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bioskop`
--

CREATE TABLE `bioskop` (
  `bioskopID` int(11) NOT NULL,
  `adresa` varchar(250) NOT NULL,
  `naziv` varchar(250) NOT NULL,
  `gradID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bioskop`
--

INSERT INTO `bioskop` (`bioskopID`, `adresa`, `naziv`, `gradID`) VALUES
(1, 'Milana Obrenovica 211', '\"Sineplex Kragujevac\"', 2),
(2, 'Kumodraska 111', '\"Akcioni bioskop\"', 1),
(3, 'Srpskih vladara 2', '\"Centar\"', 1);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `filmID` int(11) NOT NULL,
  `godina` int(11) DEFAULT NULL,
  `naziv` varchar(250) DEFAULT NULL,
  `trajanje` varchar(250) DEFAULT NULL,
  `opis` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`filmID`, `godina`, `naziv`, `trajanje`, `opis`) VALUES
(1, 2016, 'Deadpool ', '120', 'Komedija/Akcija'),
(2, 2019, 'Deadpool 2', '120', 'Komedija'),
(3, 2010, 'Fast Five', '120', 'Akcija'),
(4, 1998, 'Lavirint', '150', 'Drama, Misterija\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `gradID` int(11) NOT NULL,
  `naziv` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`gradID`, `naziv`) VALUES
(1, 'Novi Sad'),
(2, 'Beograd');

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `klubID` int(11) NOT NULL,
  `naziv` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`klubID`, `naziv`) VALUES
(1, 'Gold'),
(2, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnikid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `ime` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `prezime` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnikid`, `email`, `ime`, `password`, `prezime`, `username`) VALUES
(1, 'korisnik1@gmailc.com', 'Marko', '12345', 'Markovic', 'mare'),
(2, 'korisnik2@gmail.com', 'Jovan', '12345', 'Jovanovic', 'jovan'),
(3, 'korisnik3@gmail.com', 'Petar', '12345', 'Petrovic', 'peca'),
(4, 'korisnik4@gmail.com', 'Milos', '12345', 'Milosevic', 'misa');

-- --------------------------------------------------------

--
-- Table structure for table `projekcija`
--

CREATE TABLE `projekcija` (
  `projekcijaID` int(11) NOT NULL,
  `bioskopID` int(11) NOT NULL,
  `filmID` int(11) NOT NULL,
  `salaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projekcija`
--

INSERT INTO `projekcija` (`projekcijaID`, `bioskopID`, `filmID`, `salaID`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `regi`
--

CREATE TABLE `regi` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regi`
--

INSERT INTO `regi` (`username`, `password`, `utype`, `userID`) VALUES
('admin', '12345', 'admin', 1),
('menager', '12345', 'menager', 2),
('nikola', '12345', 'client', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `rezervacijaID` int(11) NOT NULL,
  `korisnikID` int(11) NOT NULL,
  `projekcijaID` int(11) NOT NULL,
  `sedista` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`rezervacijaID`, `korisnikID`, `projekcijaID`, `sedista`) VALUES
(1, 1, 1, 'a1'),
(2, 2, 1, 'a2'),
(3, 1, 1, ' a1  a2 '),
(4, 2, 3, ' a9  a9 '),
(22, 1, 1, ' a1 ');

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `salaID` int(11) NOT NULL,
  `naziv` varchar(250) DEFAULT NULL,
  `bioskopID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`salaID`, `naziv`, `bioskopID`) VALUES
(1, 'Velika sala', 1),
(2, 'Mala sala', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD PRIMARY KEY (`bioskopID`),
  ADD KEY `gradID` (`gradID`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`filmID`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`gradID`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`klubID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnikid`);

--
-- Indexes for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD PRIMARY KEY (`projekcijaID`),
  ADD KEY `bioskopID` (`bioskopID`),
  ADD KEY `filmID` (`filmID`),
  ADD KEY `salaID` (`salaID`);

--
-- Indexes for table `regi`
--
ALTER TABLE `regi`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`rezervacijaID`),
  ADD KEY `korisnikID` (`korisnikID`),
  ADD KEY `projekcijaID` (`projekcijaID`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`salaID`),
  ADD KEY `bioskopID` (`bioskopID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnikid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD CONSTRAINT `bioskop_ibfk_1` FOREIGN KEY (`gradID`) REFERENCES `grad` (`gradID`);

--
-- Constraints for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD CONSTRAINT `projekcija_ibfk_1` FOREIGN KEY (`bioskopID`) REFERENCES `bioskop` (`bioskopID`),
  ADD CONSTRAINT `projekcija_ibfk_2` FOREIGN KEY (`filmID`) REFERENCES `film` (`filmID`),
  ADD CONSTRAINT `projekcija_ibfk_3` FOREIGN KEY (`salaID`) REFERENCES `sala` (`salaID`);

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `rezervacija_ibfk_1` FOREIGN KEY (`korisnikID`) REFERENCES `korisnik` (`korisnikid`),
  ADD CONSTRAINT `rezervacija_ibfk_2` FOREIGN KEY (`projekcijaID`) REFERENCES `projekcija` (`projekcijaID`);

--
-- Constraints for table `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`bioskopID`) REFERENCES `bioskop` (`bioskopID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
