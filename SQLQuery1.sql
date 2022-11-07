create table Groups
(
	Id INT not null,
	[Group] nvarchar(60) not null
)
INSERT INTO Groups values(1, 'Animal')
INSERT INTO Groups values(2, 'Cars')

create table Products
(
	Id INT not null,
	[Name] nvarchar(60) not null,
	[Group] nvarchar(60)
)

INSERT INTO Products values(1, 'Cat', 'Animal')
INSERT INTO Products values(2, 'Elephant', 'Animal')
INSERT INTO Products values(3, 'Lion', 'Animal')
INSERT INTO Products values(4, 'IPhone', null)
INSERT INTO Products values(5, 'Samsung', null)
INSERT INTO Products values(6, 'Volvo', 'Cars')
INSERT INTO Products values(7, 'Mersedes', 'Cars')

select p.id, p.Name, p.[Group] from Products p
left join Groups g
on p.[Group] = g.[Group]
where p.[Group] = 'Cars' or p.[Group] is null

drop table Products
drop table Groups