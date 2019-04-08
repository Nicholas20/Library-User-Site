USE `nor2`;

DROP TABLE IF EXISTS `patrons`;

CREATE TABLE  `patrons` (
  `cardNumber` int(8) DEFAULT NULL,
  `fname` varchar(15) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `booksCheckedOut` varchar(100) DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `booksOnOrder` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cardNumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patrons`
--

INSERT INTO `patrons` (`cardNumber`, `fname`, `lname`, `email`, `booksCheckedOut`, `dueDate`, `booksOnOrder`) VALUES
('10757821', 'Belinda',      'Love',          'clkao@att.net',                 'Elevation by Stephen King 2, Ambush by James Patterson 5',                  '2019-01-15',       'Educated by Tara Westover'),
('10594425', 'Eugene',       'Fields',      'kildjean@icloud.com',       'The Reckoning by John Grisham 1, The Prince by Niccolo Machiavelli 9',    '2019-02-03',       'Smile by Roddy Doyle'),
('11943562', 'Stanley',      'Matthews',    'lstein@aol.com',                'The Art of War by Sun Tzu 8, The Reckoning by John Grisham 1',              '2019-01-05',         'Grant by Ron Chernow, The Reckoning by John Grisham'),
('17437667', 'Teresa',       'Medina',      'noneme@me.com',                   'Smile by Roddy Doyle 6, Holy Ghost by John Sandford 3',                       '2019-04-15',         'Smile by Roddy Doyle, Ambush by James Patterson'),
('14283909', 'Clay',           'Tyler',         'openldap@icloud.com',       'Educated by Tara Westover 10',                                                              '2019-02-25',         'Underworld by Don DeLillo'),
('17714791', 'Dwayne',       'Chambers',    'drjlaw@sbcglobal.net',      'The Prince by Niccolo Machiavelli 9, Educated by Tara Westover 10',     '2019-05-21',         'The Prince by Niccolo Machiavelli'),
('12202254', 'Monique',      'Peters',      'geekoid@mac.com',               'Smile by Roddy Doyle 6',                                                                      '2019-08-18',       'The Art of War by Sun Tzu'),
('19629376', 'Marcus',       'Delgado',     'pgottsch@verizon.net',      'Elevation by Stephen King 2, Smile by Roddy Doyle 6',                             '2019-09-11',       'Grant by Ron Chernow'),
('15720656', 'Mercedes',     'Moran',       'codex@att.net',                   'Smile by Roddy Doyle 6',                                                                        '2019-12-1',          'Ambush by James Patterson, Smile by Roddy Doyle'),
('19913145', 'Carroll',      'Watkins',     'curly@live.com',                'Holy Ghost by John Sandford 3',                                                           '2019-07-18',       'Underworld by Don DeLillo, The Art of War by Sun Tzu'),
('11712732', 'Alexandra',    'Goss',          'barnett@icloud.com',          'The Art of War by Sun Tzu 8',                                                                 '2019-08-14',       'The Reckoning by John Grisham'),
('13503255', 'Douglas',      'Watson',      'quinn@msn.com',                   'Holy Ghost by John Sandford 3, Elevation by Stephen King 2',                  '2019-01-04',         'Smile by Roddy Doyle, Educated by Tara Westover'),
('12060616', 'Damon',          'Little',        'novanet@outlook.com',       'The Art of War by Sun Tzu 8',                                                                 '2019-02-05',       'Ambush by James Patterson'),
('13590172', 'Lela',           'Bryant',        'claesjac@yahoo.ca',             'Elevation by Stephen King 2, The Prince by Niccolo Machiavelli 9',        '2019-06-04',       'Educated by Tara Westover'),
('15461561', 'Genevieve',    'Horton',      'smcnabb@aol.com',               'The Prince by Niccolo Machiavelli 9',                                                                     '2019-09-02',       'Underworld by Don DeLillo, Grant by Ron Chernow'),
('16477981', 'Bradley',      'Brown',       'pressoff@yahoo.ca',             'The Reckoning by John Grisham 1, Educated by Tara Westover 10',           '2019-01-16',       'The Reckoning by John Grisham'),
('19100677', 'Gloria',       'Rose',          'timtroyr@att.net',            'Smile by Roddy Doyle 6, The Art of War by Sun Tzu 8',                             '2019-11-28',     'Smile by Roddy Doyle, The Art of War by Sun Tzu'),
('11711614', 'Candace',      'Carpenter',   'storerm@outlook.com',       'The Art of War by Sun Tzu 8, The Reckoning by John Grisham 1',              '2019-10-11',       'Educated by Tara Westover'),
('15315421', 'Hope',           'Hamilton',  'multiplx@sbcglobal.net',  'Underworld by Don DeLillo 4',                                                               '2019-09-12',       'Underworld by Don DeLillo'),
('12745352', 'Neil',           'Gonzalez',  'alhajj@hotmail.com',        'The Reckoning by John Grisham 1, Elevation by Stephen King 2',              '2019-07-05',         'Ambush by James Patterson'),
('10602071', 'Joann',          'Riley',         'citadel@hotmail.com',       'Elevation by Stephen King 2, The Art of War by Sun Tzu 8',                    '2019-04-02',       'The Reckoning by John Grisham'),
('17550881', 'Frederick',    'Spencer',     'willg@msn.com',                   'The Prince by Niccolo Machiavelli 9',                                                                   '2019-03-12',       'Smile by Roddy Doyle, Ambush by James Patterson'),
('15715481', 'Terry',          'Todd',        'grady@aol.com',                 'Smile by Roddy Doyle 6, The Prince by Niccolo Machiavelli 9',               '2019-02-15',       'The Reckoning by John Grisham'),
('19760652', 'Ora',            'Buchanan',  'jmcnamara@optonline.net', 'Ambush by James Patterson 5',                                                               '2019-02-13',       'Grant by Ron Chernow'),
('15857611', 'Jonathan',     'Hardy',       'andrei@gmail.com',              'Holy Ghost by John Sandford 3',                                                           '2019-07-18',       'Underworld by Don DeLillo, Smile by Roddy Doyle'),
('14090209', 'Jean',           'Ryan',        'martink@optonline.net',   'The Art of War by Sun Tzu 8',                                                                 '2019-12-20',     'The Reckoning by John Grisham'),
('13160915', 'Rudy',           'West',        'conteb@aol.com',                  'Elevation by Stephen King 2, Smile by Roddy Doyle 6',                             '2019-11-22',      'Smile by Roddy Doyle'),
('16994722', 'Raquel',       'George',      'moinefou@gmail.com',        'The Reckoning by John Grisham 1',                                                           '2019-05-06',         'Grant by Ron Chernow'),
('15388200', 'Antoinette', 'Fox',         'jeteve@comcast.net',          'Smile by Roddy Doyle 6, The Reckoning by John Grisham 1',                       '2019-01-19',         'Educated by Tara Westover, The Reckoning by John Grisham'),
('17003061', 'Clint',          'Flores',        'marioph@me.com',                'Elevation by Stephen King 2, The Prince by Niccolo Machiavelli 9',        '2019-05-11',       'Underworld by Don DeLillo, Smile by Roddy Doyle');


-- --------------------------------------------------------

--      
-- Table structure for table `books`
--
DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `callNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookTitle` varchar(60) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`callNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`callNumber`, `bookTitle`, `author`) VALUES
(1, 'The Reckoning', 'John Grisham'),
(2, 'Elevation', 'Stephen King'),
(3, 'Holy Ghost', 'John Sandford'),
(4, 'Underworld', 'Don DeLillo'),
(5, 'Ambush', 'James Patterson'),
(6, 'Smile', 'Roddy Doyle'),
(7, 'Grant', 'Ron Chernow'),
(8, 'The Art of War', 'Sun Tzu'),
(9, 'The Prince', 'Niccolo Machiavelli'),
(10, 'Educated', 'Tara Westover');

DROP TABLE IF EXISTS `booksCheckedOut`;

CREATE TABLE `booksCheckedOut` (
  `patronID`    int(8) unsigned NOT NULL AUTO_INCREMENT,
  `bookOneID`   int(10) DEFAULT NULL,
  `bookTwoID`   int(10) DEFAULT NULL,
  `bookThreeID` int(10) DEFAULT NULL,
  `bookFourID`  int(10) DEFAULT NULL,
  `bookFiveID`  int(10) DEFAULT NULL,
  PRIMARY KEY (`patronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booksCheckedOut`
--

INSERT INTO `booksCheckedOut`
(patronID, bookOneID, bookTwoID, bookThreeID, bookFourID, bookFiveID) 
VALUES
(10757821, 2,5,NULL,NULL,NULL),
(10594425, 1,9,NULL,NULL,NULL),
(11943562, 8,1,NULL,NULL,NULL),
(17437667, 6,3,NULL,NULL,NULL),
(14283909, 10,NULL,NULL,NULL,NULL),
(17714791, 9,10,NULL,NULL,NULL),
(12202254, 6,NULL,NULL,NULL,NULL),
(19626376, 2,6,NULL,NULL,NULL),
(15720656, 6,NULL,NULL,NULL,NULL),
(19913145, 3,NULL,NULL,NULL,NULL),
(11712732, 8,NULL,NULL,NULL,NULL),
(13503255, 3,2,NULL,NULL,NULL),
(12060616, 8,NULL,NULL,NULL,NULL),
(13590172, 2,9,NULL,NULL,NULL),
(15461561, 9,NULL,NULL,NULL,NULL),
(16477981, 1,10,NULL,NULL,NULL),
(19100677, 6,8,NULL,NULL,NULL),
(11711614, 8,1,NULL,NULL,NULL),
(15315421, 4,NULL,NULL,NULL,NULL),
(12745352, 1,2,NULL,NULL,NULL),
(10602071, 2,8,NULL,NULL,NULL),
(17550881, 9,NULL,NULL,NULL,NULL),
(15715481, 6,9,NULL,NULL,NULL),
(19760652, 5,NULL,NULL,NULL,NULL),
(15857611, 3,NULL,NULL,NULL,NULL),
(14090209, 8,NULL,NULL,NULL,NULL),
(13160915, 2,6,NULL,NULL,NULL),
(16994722, 1,NULL,NULL,NULL,NULL),
(15388200, 6,1,NULL,NULL,NULL),
(17003061, 2,9,NULL,NULL,NULL);



DROP TABLE IF EXISTS `booksOnOrder`;

CREATE TABLE `booksOnOrder` (
  `patronID` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `bookOneID` int(10) DEFAULT NULL,
  `bookTwoID` int(10) DEFAULT NULL,
  PRIMARY KEY (`patronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booksOnOrder`
--

INSERT INTO `booksOnOrder` 
(patronID, bookOneID, bookTwoID) 
VALUES
(10757821,2,NULL),
(10594425,6,NULL),
(11943562,7,1),
(17437667,6,5),
(14283909,4,NULL),
(17714791,9,NULL),
(12202254,8,NULL),
(19626376,7,NULL),
(15720656,5,6),
(19913145,4,8),
(11712732,1,NULL),
(13503255,6,10),
(12060616,5,NULL),
(13590172,10,NULL),
(15461561,4,7),
(16477981,1,NULL),
(19100677,6,8),
(11711614,10,NULL),
(15315421,4,NULL),
(12745352,5,NULL),
(10602071,1,NULL),
(17550881,6,5),
(15715481,1,NULL),
(19760652,7,NULL),
(15857611,4,6),
(14090209,1,NULL),
(13160915,6,NULL),
(16994722,7,NULL),
(15388200,10,1),
(17003061,4,6);