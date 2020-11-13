USE DBFarm

INSERT INTO Owners
VALUES (11111111, 'LarsTyndskid@gmail.com', 'Lars', 'Tyndskid');

INSERT INTO OwnerPhone
VALUES (11111111, '+45 11111111');

INSERT INTO OwnerAddress
VALUES (1, 'Bræmsesporet', 1111, 'Underbukseby', 11111111);

INSERT INTO Farms
VALUES (1, 11111, 'Tyndskidsfarm', 11111111);

INSERT INTO FarmAddress
VALUES (1, 'Tyndskidsvej', 1111, 'Underbukseby', 11111);

INSERT INTO FarmChrNo
VALUES (1, 11111);

INSERT INTO Stall
VALUES (1, 11111);

INSERT INTO Box
VALUES (1, 0, 'KoBox', 1);

INSERT INTO Smartunit
VALUES ('11:22:33:44:55:66', '172.16.2.45', 123456789, 'Varmeunit');

INSERT INTO StallSmartunitTabel
VALUES (1, 123456789);

INSERT INTO BoxSmartunitTable
VALUES (1, 123456789, 1.1, '2020-11-13 8:19:22');

INSERT INTO State
VALUES ('Severe', 1);

INSERT INTO SmartunitStateTable
VALUES (123456789, 1,'2020-11-13 8:40:10');

INSERT INTO Earmark
VALUES (1, 'Red', 1);

INSERT INTO Animal
VALUES ('2020-11-13 9:45:10', '2020-11-13 9:45:00', 0, 'Male', 'Ko', 1);

INSERT INTO AnimalBoxTable
VALUES (1, 1, '2020-11-13', '2020-11-13');

