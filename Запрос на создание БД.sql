 Create table Articles -- Статьи
 (
	id UNIQUEIDENTIFIER primary key,
	authorId UNIQUEIDENTIFIER not null,
	categoryId UNIQUEIDENTIFIER not null,
	content nvarchar(max)  null
 );


 Create table Categories
 (
	id UNIQUEIDENTIFIER primary key,
	[name] nvarchar(200) not null
 );

Create table Authors
(
	id UNIQUEIDENTIFIER primary key,
	[name] nvarchar(200) not null
);

ALTER TABLE Articles
ADD FOREIGN KEY (authorId) REFERENCES Authors(id);

ALTER TABLE Articles
ADD FOREIGN KEY (categoryId) REFERENCES Categories(id);

insert into Authors values(NEWID(),'Пушной И.А.');
insert into Authors values(NEWID(),'Штрудгерт Б.А.');
insert into Authors values(NEWID(),'Шпиц Р.М.');
insert into Authors values(NEWID(),'Гольц Р.У.');
insert into Authors values(NEWID(),'Герстуберг Н.Б.');

insert into Categories values(NEWID(),'Инструкция');
insert into Categories values(NEWID(),'Обзор');
insert into Categories values(NEWID(),'Ошибки');
insert into Categories values(NEWID(),'Специальные');
insert into Categories values(NEWID(),'Новости');
insert into Categories values(NEWID(),'Руководства');


insert into Articles (id,authorId, categoryId) values(NEWID(),'7BCF3A08-0655-48DA-88C0-8532436A8C66','C6BD7006-B922-4270-BBC8-4CF36D97458B');
insert into Articles (id,authorId, categoryId) values(NEWID(),'E107C425-A4FD-41B4-A46C-889DE095EE91','C6BD7006-B922-4270-BBC8-4CF36D97458B');
insert into Articles (id,authorId, categoryId) values(NEWID(),'6DCA7D54-3AC1-4CAB-8DB4-B98FCFF72B3A','F70D39FE-C33E-4E12-881B-9335E5F8823C');
insert into Articles (id,authorId, categoryId) values(NEWID(),'81D5CEA0-D095-428A-91C1-EDFDACFC663D','63FFD044-5816-430A-984C-F19EFB2ED34D');

select * from Authors
select * from Categories
select * from Articles

--UNIQUEIDENTIFIER




