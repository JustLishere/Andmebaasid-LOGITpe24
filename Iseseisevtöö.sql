--Iseseisvalt: vali tabel ja kirjuta 3 protseduuri, käivita!
-- protseduur, mis täidab tabeli
create procedure lisaBrand
@nimi varchar(15)
AS
BEGIN
	INSERT INTO brands
	VALUES (@nimi);
	select * from brands;
END
--kutse
EXEC lisaBrand 'Alebo';


--protseduur, mis kustutab tabelist id järgi
create procedure brandKustutamine
@id int
AS
BEGIN
	SELECT * FROM brands;
	Delete from brands where brand_id=@id;
	SELECT * FROM brands;
END
-- kutse
EXEC brandKustutamine 6;


--protseduur, mis uuendab nimed sisestatud id järgi
create procedure uuendaBrandi
@id int,
@uuendatudNimi varchar(20)
AS
BEGIN
	select * from brands;
	UPDATE brands set brand_name=@uuendatudNimi
	where brand_id=@id;
	select * from brands;
END
--kutse
EXEC uuendaBrandi 6, 'Kolla'
