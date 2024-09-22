create table admin(
	id int not null unique IDENTITY(1,1),
	FullName varchar(255) Default NULL,
	AdminEmail varchar(255) Default NULL,
	UserName varchar(255) not null,
	Password varchar(255) not null,
	updationDate datetime,
	 PRIMARY KEY (id),
);

create table overdue(
	StudentID varchar(255) not null,
	StudentName varchar(255) not null,
	MobNumber varchar(11) not null,
	Fine int not null DEFAULT 0,
);

create table tblauthors(
	id int not null unique IDENTITY(1,1),
	AuthorName varchar(255),
	creationDate DATETIME DEFAULT GETDATE(),
	UpdationDate datetime,
	 PRIMARY KEY (id),
);

create table tblbooks(
	id int not null unique IDENTITY(1,1),
	BookName varchar(255),
	Copies int not null DEFAULT 0,
	IssuedCopies int not null DEFAULT 0,
	CatId int,
	AuthorId int,
	ISBNNumber int,
	BookPrice int,
	RegDate DATETIME DEFAULT GETDATE(),
	UpdationDate DATETIME,
	PRIMARY KEY (id),
);

create table tblcategory(
	id int not null unique IDENTITY(1,1),
	CategoryName varchar(255),
	Status int,
	CreationDate DATETIME DEFAULT GETDATE(),
	UpdationDate datetime,
	primary key(id)
);

create table tblfine(
	fine int not null DEFAULT 0,
);

create table tblissuedbookdetails(
	id int not null unique IDENTITY(1,1),
	BookId int DEFAULT NULL,
	StudentID varchar(255) DEFAULT NULL,
	IssuesDate DATETIME DEFAULT GETDATE(),
	ReturnDate Datetime DEFAULT NULL,
	ReturnStatus int not null DEFAULT 1,
	fine int DEFAULT 0,
	primary key (id),
);

create table tblrequestedbookdetails(
	StudentID varchar(255) not null,
	StudName varchar(255) not null,
	BookName varchar(255) not null,
	CategoryName varchar(255) not null,
	AuthorName varchar(255) not null,
	ISBNNumber int not null,
	BookPrice int not null,
);

create table tblstudents(
	id int not null unique IDENTITY(1,1),
	StudentId varchar(255),
	FullName varchar(255),
	EmailId varchar(255),
	MobileNumber varchar(255),
	Password varchar(255),
	Status int,
	RegDate DATETIME DEFAULT GETDATE(),
	UpdationDate DATETIME,
);