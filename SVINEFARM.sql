CREATE DATABASE DBFarm
USE DBFarm;

CREATE TABLE Owners(
	CVR INTEGER NOT NULL,
	Email VARCHAR(255),
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	PRIMARY KEY (CVR)
);


CREATE TABLE OwnerPhone(
	OwnerCVR INTEGER,
	PhoneNo VARCHAR(255) NOT NULL,
	PRIMARY KEY (PhoneNo),
	FOREIGN KEY (OwnerCVR) REFERENCES Owners(CVR)
);


CREATE TABLE Farms(
	ChrNo INTEGER,
	ProductionNumber INTEGER,
	Name VARCHAR(255),
	OwnerCVR INTEGER,
	PRIMARY KEY(ProductionNumber),
	FOREIGN KEY (OwnerCVR) REFERENCES Owners(CVR)
);


CREATE TABLE OwnerAddress(
	StreetNo INTEGER,
	StreetName VARCHAR(255),
	Postcode INTEGER,
	CityName VARCHAR(255),
	OwnerCVR INTEGER,
	FOREIGN KEY (OwnerCVR) REFERENCES Owners(CVR)
);


CREATE TABLE FarmAddress(
	StreetNo INTEGER,
	StreetName VARCHAR(255),
	Postcode INTEGER,
	CityName VARCHAR(255),
	FarmProNo INTEGER,
	FOREIGN KEY (FarmProNo) REFERENCES Farms(ProductionNumber)
);


CREATE TABLE FarmChrNo(
	FarmProNo INTEGER,
	ChrNo INTEGER,
	PRIMARY KEY(ChrNo),
	FOREIGN KEY (FarmProno) REFERENCES Farms(ProductionNumber)
);


CREATE TABLE Stall(
	StallNo INTEGER,
	FarmProNo INTEGER,
	PRIMARY KEY (StallNo),
	FOREIGN KEY (FarmProNo) REFERENCES Farms(ProductionNumber)
);


CREATE TABLE Smartunit(
	MacAddress VARCHAR(255),
	IpAddress VARCHAR(255),
	SerielNumber INTEGER,
	Type VARCHAR(255),
	PRIMARY KEY (SerielNumber)
);


CREATE TABLE StallSmartunitTabel(
	StallNo INTEGER,
	SmartunitSerNO INTEGER,
	FOREIGN KEY (StallNo) REFERENCES Stall(StallNo),
	FOREIGN KEY (SmartunitSerNO) REFERENCES Smartunit(SerielNumber)
);



CREATE TABLE State(
	Severity VARCHAR(255),
	Id INTEGER,
	PRIMARY KEY (Id)
);


CREATE TABLE SmartunitStateTable(
	SmartunitSer INTEGER,
	StateId INTEGER,
	Time DATETIME,
	FOREIGN KEY (SmartunitSer) REFERENCES Smartunit(SerielNumber),
	FOREIGN KEY (StateId) REFERENCES State(Id)
);


CREATE TABLE Box(
	BoxNo INTEGER,
	Outdoor BIT,
	Type VARCHAR(255),
	StallNo INTEGER,
	PRIMARY KEY (BoxNo),
	FOREIGN KEY (StallNo) REFERENCES Stall(StallNo)
);


CREATE TABLE BoxSmartunitTable(
	BoxNo INTEGER,
	SmartunitSer INTEGER,
	Value Decimal,
	Time DATETIME,
	FOREIGN KEY (BoxNo) REFERENCES Box(BoxNo),
	FOREIGN KEY (SmartunitSer) REFERENCES Smartunit(SerielNumber)
);


CREATE TABLE Earmark(
	Id INTEGER,
	Color VARCHAR(255),
	ChrNo INTEGER,
	PRIMARY KEY (Id)
);


CREATE TABLE Animal(
	Death DATETIME,
	Birth DATETIME,
	Age INTEGER,
	Sex VARCHAR(255),
	Type VARCHAR(255),
	Id INTEGER,
	PRIMARY KEY (Id),
	FOREIGN KEY (Id) REFERENCES Earmark(Id)
);


CREATE TABLE AnimalBoxTable(
	BoxNo INTEGER,
	AnimalId INTEGER,
	MoveInTime DATETIME,
	MoveOutTime DATETIME,
	FOREIGN KEY (BoxNo) REFERENCES Box(BoxNo),
	FOREIGN KEY (AnimalId) REFERENCES Animal(Id)
);

