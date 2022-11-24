CREATE database if not exists Project;
use `Project`;

DROP TABLE IF EXISTS `adminsystem`;
DROP TABLE IF EXISTS `login`;

Create table `adminsystem`(
	`No.` int,
	`Username` varchar(50) NOT NULL primary key,
	`Firstname` varchar(50),
	`Lastname` varchar(50),
	`Phone` varchar(10),
	`Email` varchar(100),
	`Password` varchar(50)
);

Insert into `adminsystem` values (1,'useradmin1','Jirapat','Suwanlamai','0955555551','Jirapat.sua@student.mahidol.edu','sunny5630'),
(2,'useradmin2','Panpasa','Areewongsatit','0972998174','panpasa.are@student.mahidol.edu','Apapasa321'),
(3,'useradmin3','Ravipitch','Laosaengchaiyawat','0942915497','Ravipitch.lao@student.mahidol.edu','yuyulao4321'),
(4,'useradmin4','Sirada','Namboot','0839201832','sirada.nam@student.mahidol.edu','Sirada6695');


Create table `login`(
    `Email` varchar(100) NOT NULL primary key,
	`Username` varchar(50),
	`Password` varchar(50)
);

Insert into `login` values ('Somjai@gmail.com','somjai','somjai123'),
('Peter@gmail.com','peter','peter123'),
('JeongJaehyun@kwangya.com','Jay','14021997'),
('Somruk@kwangya.com','SomInwza','Inwza1234');

