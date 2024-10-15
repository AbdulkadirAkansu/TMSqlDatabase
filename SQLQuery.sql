
USE MASTER
GO
CREATE DATABASE Teknoloji_magazasi_DB
GO
USE Teknoloji_magazasi_DB
GO
CREATE TABLE Markalar 
(
marka_id INT PRIMARY KEY IDENTITY,
marka_ad NVARCHAR(50)
)
GO
CREATE TABLE Kategoriler
(
    kat_id    INT PRIMARY KEY IDENTITY,
    kat_ad    NVARCHAR(50)
)
GO
CREATE TABLE Satislar
(
   satis_id INT PRIMARY KEY IDENTITY,
   satis_ad NVARCHAR(50),
   satis_adet INT,
   satis_barkod INT,
)
GO
CREATE TABLE Urunler
(

urun_id INT PRIMARY KEY IDENTITY,
model_ad NVARCHAR(50),
marka_id INT,
satis_fiyati MONEY,
adet INT,
barkod INT,
kat_id INT,
CONSTRAINT fk_urun_markalar_to_urunler FOREIGN KEY (marka_id) REFERENCES Markalar(marka_id) ON DELETE CASCADE,
CONSTRAINT fk_urun_kategoriler_to_urunler FOREIGN KEY (kat_id) REFERENCES Kategoriler(kat_id) ON DELETE CASCADE

)
GO

CREATE TABLE Musteriler
(
mus_id INT PRIMARY KEY IDENTITY,
mus_ad NVARCHAR(50),
mus_soyad NVARCHAR(50),
mus_sehir NVARCHAR(20),
mus_ilce NVARCHAR(20),
mus_dtarih DATETIME,
tel_no NVARCHAR(14),
mus_cins NVARCHAR(1)
)
GO
CREATE TABLE Personeller
(
personel_id INT PRIMARY KEY IDENTITY,
personel_tc NVARCHAR(11),
personel_ad NVARCHAR(50),
personel_soyad NVARCHAR(50),
personel_cins NVARCHAR(1),
personel_dogumt DATETIME,
medeni_durum  NVARCHAR(6)
)
GO
CREATE TABLE PersonelBilgi
(
	eposta		NVARCHAR(50) PRIMARY KEY,
	parola		NVARCHAR(50),
	per_ad		NVARCHAR(50),
	per_soyad	NVARCHAR(50)
)

--Insert Into Sorgusu

INSERT INTO Satislar VALUES ('Monster NoteBook K775AC',300,1000005)
INSERT INTO Satislar VALUES ('ONVO OV42250',157,1000010)
INSERT INTO Satislar VALUES ('Sapphire Radeon RX 6500 XT',130,1000006)
INSERT INTO Satislar VALUES ('MSI GEFORCE RTX 3050 GAMING X',110,1000007)
INSERT INTO Satislar VALUES ('Antech Rgb Düz Siyah',130,1000008)
INSERT INTO Satislar Values ('Samsung 85QN900A',234,1000009)
INSERT INTO Satislar Values ('Karaca Vantuz',214,1000013)
INSERT INTO Satislar Values ('Nikon D3200',132,1000034)
INSERT INTO Satislar Values ('Gaming RTG7989',133,1000008)
INSERT INTO Satislar Values ('Arçelik A32',100,1000012)
INSERT INTO Satislar Values ('Tefal UW3719',32,1000014)
INSERT INTO Satislar Values ('Fakir Rody',12,1000015)
INSERT INTO Satislar Values ('Philips FC9323',232,1000016)
INSERT INTO Satislar Values ('Polosmart PGM11',432,1000017)
INSERT INTO Satislar Values ('Rampage KB-RX77',532,1000018)
INSERT INTO Satislar Values ('James Donkey 619S',632,1000019)
INSERT INTO Satislar Values ('Wozlo Wz-801',162,1000020)
INSERT INTO Satislar Values ('Razer Viper Mini',152,1000021)
INSERT INTO Satislar Values ('GAMEPOWER BANE',122,1000022)


INSERT INTO Markalar VALUES ('Casper')
INSERT INTO Markalar VALUES ('Acer Nitro')
INSERT INTO Markalar VALUES ('Lenovo')
INSERT INTO Markalar VALUES ('HP')
INSERT INTO Markalar VALUES ('Monster')
INSERT INTO Markalar VALUES ('Apple')
INSERT INTO Markalar VALUES ('Samsung')
INSERT INTO Markalar VALUES ('Dell')

INSERT INTO Markalar VALUES ('Samsung ')
INSERT INTO Markalar VALUES ('ONVO')
INSERT INTO Markalar VALUES ('Dijitsu')
INSERT INTO Markalar VALUES ('Arçelik ')
INSERT INTO Markalar VALUES ('Karaca ')
INSERT INTO Markalar VALUES ('Tefal ')
INSERT INTO Markalar VALUES ('Fakir')
INSERT INTO Markalar VALUES ('Philips')

INSERT INTO Markalar VALUES ('Polosmart ')
INSERT INTO Markalar VALUES ('Rampage ')
INSERT INTO Markalar VALUES ('James ')
INSERT INTO Markalar VALUES ('Wozlo ')
INSERT INTO Markalar VALUES ('Razer ')
INSERT INTO Markalar VALUES ('GAMEPOWER ')
INSERT INTO Markalar VALUES ('Hp ')
INSERT INTO Markalar VALUES ('Hytech ')

INSERT INTO Markalar VALUES ('Viewsonic ')
INSERT INTO Markalar VALUES ('AOC ')
INSERT INTO Markalar VALUES ('IZOLY ')
INSERT INTO Markalar VALUES ('DRAGOS ')
INSERT INTO Markalar VALUES ('Tenda ')
INSERT INTO Markalar VALUES ('ARTDÝJÝTAL ')
INSERT INTO Markalar VALUES ('ASUS ')
INSERT INTO Markalar VALUES ('TP-LINK ')

INSERT INTO Markalar VALUES ('Xiaomi ')
INSERT INTO Markalar VALUES ('Nokia ')
INSERT INTO Markalar VALUES ('Oppo')
INSERT INTO Markalar VALUES ('POCO ')
INSERT INTO Markalar VALUES ('Vivo ')
INSERT INTO Markalar VALUES ('Honor ')
INSERT INTO Markalar VALUES ('Hikýng ')
INSERT INTO Markalar VALUES ('Won Telefon M11')

INSERT INTO Markalar VALUES ('Antech Rgb Düz Siyah')
INSERT INTO Markalar VALUES ('SteelSeries Qck')

INSERT INTO Markalar VALUES ('Pullsar')
INSERT INTO Markalar VALUES ('Tx Red Alert')

INSERT INTO Markalar VALUES ('Nikon')
INSERT INTO Markalar VALUES ('Canon')
INSERT INTO Markalar VALUES ('Sony')

INSERT INTO Markalar VALUES ('WIFI')
INSERT INTO Markalar VALUES ('Panasonic')

INSERT INTO Markalar VALUES ('MATEO')
INSERT INTO Markalar VALUES ('M4')

INSERT INTO Markalar VALUES ('Aden')
INSERT INTO Markalar VALUES ('Corby')

INSERT INTO Markalar VALUES ('Sapphire Radeon')
INSERT INTO Markalar VALUES ('MSI GEFORCE')
INSERT INTO Markalar VALUES ('GAINWARD')
INSERT INTO Markalar VALUES ('EVGA')

INSERT INTO Kategoriler VALUES ('Bilgisayar')
INSERT INTO Kategoriler VALUES ('TV')
INSERT INTO Kategoriler VALUES ('Süpürge')
INSERT INTO Kategoriler VALUES ('Klavye')
INSERT INTO Kategoriler VALUES ('Mouse')
INSERT INTO Kategoriler VALUES ('Monitör')
INSERT INTO Kategoriler VALUES ('Modem')
INSERT INTO Kategoriler VALUES ('Telefon')
INSERT INTO Kategoriler VALUES ('Mouse Pad')
INSERT INTO Kategoriler VALUES ('Notebook Soðutucusu')
INSERT INTO Kategoriler VALUES ('Fotoðraf Makinesi')
INSERT INTO Kategoriler VALUES ('Video Kamera')
INSERT INTO Kategoriler VALUES ('Akýllý Saat')
INSERT INTO Kategoriler VALUES ('Drone')
INSERT INTO Kategoriler VALUES ('Ekran Kartý')


INSERT INTO Urunler VALUES ('Excalibur',1,18000,5000,1000001,1)
INSERT INTO Urunler VALUES ('Nitro',2,11500,6000,1000002,1)
INSERT INTO Urunler VALUES ('92k200k2tx',3,8000,2000,1000003,1)
INSERT INTO Urunler VALUES ('Pavilion Gaming',4,8300,6000,1000004,1)
INSERT INTO Urunler VALUES ('NoteBook K775AC',5,11500,3000,1000005,1)
INSERT INTO Urunler VALUES ('MacBook AKT5456',6,15000,1000,1000006,1)
INSERT INTO Urunler VALUES ('R540',7,'15000',1000,1000007,1)
INSERT INTO Urunler VALUES ('Gaming RTG7989',8,18000,5000,1000008,1)

INSERT INTO Urunler VALUES ('85QN900A',9,22000,5000,1000009,2)
INSERT INTO Urunler VALUES ('OV42250',10,26500,6000,1000010,2)
INSERT INTO Urunler VALUES ('43D8000',11,10000,500,1000011,2)
INSERT INTO Urunler VALUES ('A32',12,8750,1500,1000012,2)
INSERT INTO Urunler VALUES ('Vantuz',13,2250,3000,1000013,3)
INSERT INTO Urunler VALUES ('UW3719',14,1199,10000,1000014,3)
INSERT INTO Urunler VALUES ('Rody',15,2500,9000,1000015,3)
INSERT INTO Urunler VALUES ('FC9323',16,3299,7000,1000016,3)

INSERT INTO Urunler VALUES ('PGM11',17,750,2000,1000017,4)
INSERT INTO Urunler VALUES ('KB-RX77',18,270,10000,1000018,4)
INSERT INTO Urunler VALUES ('Donkey 619S',19,359,5000,1000019,4)
INSERT INTO Urunler VALUES ('Wz-801',20,580,7500,1000020,4)

INSERT INTO Urunler VALUES ('Viper Mini',21,300,8000,1000021,5)
INSERT INTO Urunler VALUES ('BANE',22,169,2500,1000022,5)
INSERT INTO Urunler VALUES ('M160',23,120,10000,1000023,5)
INSERT INTO Urunler VALUES ('HY-X6',24,430,800,1000024,5)

INSERT INTO Urunler VALUES ('23.6 Vx2458',25,3000,10000,1000025,6)
INSERT INTO Urunler VALUES ('C24G1',26,2779,10000,1000026,6)
INSERT INTO Urunler VALUES ('19',27,3500,7000,1000027,6)
INSERT INTO Urunler VALUES ('Pallnero',28,5700,6000,1000028,6)

INSERT INTO Urunler VALUES ('V12',29,300,1000,1000029,7)
INSERT INTO Urunler VALUES ('Tp-link',30,500,10000,1000030,7)
INSERT INTO Urunler VALUES ('DSL',31,55,8000 ,1000031,7)
INSERT INTO Urunler VALUES ('TD',32,780,7000,1000032,7)

INSERT INTO Urunler VALUES ('Redmi',33,2000,10000,1000033,8)
INSERT INTO Urunler VALUES ('2',34,2550,10000,1000034,8)
INSERT INTO Urunler VALUES ('Oppo',35,3000,10000,1000035,8)
INSERT INTO Urunler VALUES ('M4 Pro',36,3750,8000,1000036,8)
INSERT INTO Urunler VALUES ('Y53S',37,3550,5000,1000037,8)
INSERT INTO Urunler VALUES ('50',38,7800,2000,1000038,8)
INSERT INTO Urunler VALUES ('A26',39,11500,1500,1000039,8)
INSERT INTO Urunler VALUES ('H4KYTI4',40,18650,1000,1000040,8)

INSERT INTO Urunler VALUES ('ZAFTK43',41,120,10000,1000041,9)
INSERT INTO Urunler VALUES ('RAZZ5455',42,400,5000,1000042,9)

INSERT INTO Urunler VALUES ('YTP5635',43,300,5500,1000043,10)
INSERT INTO Urunler VALUES ('LPT3235',44,150,10000,1000044,10)

INSERT INTO Urunler VALUES ('D3200',45,6000,2000,1000045,11)
INSERT INTO Urunler VALUES ('Eos 2000D',46,7900,1000,1000046,11)
INSERT INTO Urunler VALUES ('DSC-W830',47,12500,500,1000047,11)

INSERT INTO Urunler VALUES ('HTK 30MP 4K',48,1500,6000,1000048,12)
INSERT INTO Urunler VALUES ('HC-VXF990',49,2500,2500,1000049,12)


INSERT INTO Urunler VALUES ('AKT6K4345',50,3000,10000,1000050,13)
INSERT INTO Urunler VALUES ('SFT4K56',51,2000,15000,1000051,13)

INSERT INTO Urunler VALUES ('E58',52,16000,1000,1000052,14)
INSERT INTO Urunler VALUES ('SD03',53,12000,1300,1000053,14)

INSERT INTO Urunler VALUES ('RX 6500 XT',54,12000,2000,1000054,15)
INSERT INTO Urunler VALUES ('RTX 3050 GAMING X',55,8000,5000,1000055,15)
INSERT INTO Urunler VALUES ('GeForce GTX 1650',56,18000,7000,1000056,15)
INSERT INTO Urunler VALUES ('GeForce RTX 3090 Ti',57,13000,8000,1000057,15)

INSERT INTO Personeller VALUES ('47263234407','Mustafa','Sevik','E','02.04.2002','Bekar')
INSERT INTO Personeller VALUES ('15431657013','Buðra Kaðan','Kýlýçkaya','E','07.05.2015','Evli')
INSERT INTO Personeller VALUES ('89737226408','Abdulkadir','Akansu','E','12.08.1990','Bekar')
INSERT INTO Personeller VALUES ('60918918797','Tuba','Kýlýçkaya Pala','K','07.05.1987','Evli')
INSERT INTO Personeller VALUES ('17203821482','Yeliz','Yýldýrým','K','09.05.2004','Bekar')
INSERT INTO Personeller VALUES ('98457695114','Þükrü','Koç','E','07.10.1999','Bekar')
INSERT INTO Personeller VALUES ('87906982993','Mehmet','Þimþir','E','03.05.1989','Bekar')
INSERT INTO Personeller VALUES ('72748213736','Yeþim','Mart','K','05.31.1969','Evli')
INSERT INTO Personeller VALUES ('91760105575','Yaðmur','Nur','K','09.04.1985','Bekar')
INSERT INTO Personeller VALUES ('67104946350','Berra','Mayýs','K','07.03.1969','Evli')
INSERT INTO Personeller VALUES ('75778769601','Deniz','Mavi','K','11.02.1970','Bekar')
INSERT INTO Personeller VALUES ('45598475903','Tuðrul','Siyah','E','10.02.1978','Bekar')
INSERT INTO Personeller VALUES ('21278244037','Elvin','Körpe','K','12.06.1999','Evli')
INSERT INTO Personeller VALUES ('83808285559','Ayten','Maynuk','K','10.12.1993','Evli')


INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Sudenaz', 'TASDEMIR','Þýrnak','Beytüþþebap','1990-10-29 00:00:00.000','216 3488055','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Azat', ' AYNAOÐLU','Malatya','Malatya Merkez','1978-10-23 00:00:00.000','312 3532077','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Erol ', 'SANHAL','Bilecik','Osmaneli','1957-09-23 00:00:00.000','232 4451930','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Çiðdem', ' KARADAYI','Van','Gevaþ','1970-09-23 00:00:00.000','232 2757415','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Hüseyin', ' VOLKAN','Ýstanbul','Esenler','1958-08-14 00:00:00.000','332 2338623','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Zeki', ' BÝRÝCÝKLÝOÐLU','Kütahya','Gediz','1995-01-16 00:00:00.000','312 3703819','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Fikret', ' ÞÝRAY','Ýzmir','Kiraz','1981-03-12 00:00:00.000','212 5192044','E')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Sami', ' ALEMDAROÐLU','Ýstanbul','Avcýlar','1949-06-13 00:00:00.000','332 7453663','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Demet', ' EVGÝN','Zonguldak','Zonguldak Merkez','1947-08-07 00:00:00.000','232 4585353','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Tuncay', ' ÖZÐÜ','Hatay','Antakya','1940-10-15 00:00:00.000','193 91775591','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Neslihan', ' KARAKOSE','Eskiþehir','Han','1945-01-15 00:00:00.000','571 79137175','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nazife', ' MÝRZALI','Tokat','Baþçiftlik','1982-07-18 00:00:00.000','395 15111151','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Umut', ' SAFALTIN','Antalya','Gazipaþa','1952-08-16 00:00:00.000','399 31157395','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Leyla', ' AYLANC','Aksaray','Eskil','1992-04-12 00:00:00.000','151 11131957','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Taner', ' KARACASULU','Muþ','Hasköy','1986-12-16 00:00:00.000','917 75331199','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Abdurrahman', ' ALTINGÖZ','Düzce','Gölyaka','1999-08-07 00:00:00.000','319 79759931','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Aslýhan', ' DOLAY','Konya','Hadim','1957-01-08 00:00:00.000','751 91391313','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Güler', ' NURKAN','Rize','Hemþin','1987-03-21 00:00:00.000','137 15317191','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Emel', ' ALSAN','Çanakkale','Çan','1972-08-10 00:00:00.000','199 71951715','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Naz', ' Sener','Gaziantep','Karkamýþ','1977-02-12 00:00:00.000','193 11111757','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Þengül', ' ADACAN','Malatya','Yazýhan','1944-06-14 00:00:00.000','371 77791111','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Naciye', ' ALNIAÇIK','Siirt','Kurtalan','1963-05-03 00:00:00.000','539 35911135','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ada', ' VAPUR','Rize','Derepazarý','1949-01-18 00:00:00.000','311 11771911','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ýsa', ' BÖLÜK','Ordu','Perþembe','1976-08-17 00:00:00.000','575 91577193','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Barýþ', ' ÖZÇAÐLI','Erzurum','Palandöken','1956-10-29 00:00:00.000','199 91593793','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Mira', ' TÜTER','Kars','Susuz','1967-08-10 00:00:00.000','713 55599531','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Azra', ' TÜTNCÜ','Denizli','Pamukkale','1977-01-01 00:00:00.000','353 55771919','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Baran', ' SALPAL','Antalya','Manavgat','1965-03-04 00:00:00.000','137 59315351','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Canan', ' KÖKSALICI','Hatay','Hassa','1976-06-11 00:00:00.000','953 35153979','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Naciye', ' ÝNAT','Ýzmir','Foça','1946-05-06 00:00:00.000','595 57911333','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nisanur', ' DUYSAK','Ýzmir','Bayraklý','1974-11-19 00:00:00.000','957 59195115','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Necdet', ' ERÇAM','Bayburt','Bayburt Merkez','1986-05-22 00:00:00.000','191 11913353','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ahmet', ' ÝNCÝKAPI','Muðla','Fethiye','1991-05-28 00:00:00.000','193 91775591','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Arif', ' TEMELOÐLU','Kütahya','Hisarcýk','1967-12-11 00:00:00.000','151 17911353','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Elif', ' ÖZÇELÝKBAÞ','Hatay','Hatay Merkez','1993-06-06 00:00:00.000','393 31117711','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ali Eymen', ' DEVE','Ordu','Çaybaþý','1985-01-23 00:00:00.000','331 39359177','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Muhammed Ali', ' ABDULLAH','Çankýrý','Kurþunlu','1987-05-07 00:00:00.000','779 15153337','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nazife', ' DEVE','Sakarya','Sapanca','1967-10-13 00:00:00.000','191 57311311','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Cuma', ' KAZIKLI','Muðla','Dalaman','1971-03-13 00:00:00.000','139 51311573','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ýhsan', ' HAVAS','Hatay','Hassa','1955-04-12 00:00:00.000','937 11551737','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Dilan', ' DOKUYUCU','Ardahan','Posof','1993-01-21 00:00:00.000','179 11951931','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Selim', 'ÖZBAY','Sivas',' Sivas/Altýnyayla','1992-10-02 00:00:00.000','513 79917399','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Yasin', ' AÐAGÜL','Balýkesir','Bigadiç','1979-10-19 00:00:00.000','393 31117711','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Mehmet', ' Emir', 'Manisa','Saruhanlý','1997-08-29 00:00:00.000','331 39359177','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ömer', ' Faruk','Malatya','Malatya Merkez','1952-08-11 00:00:00.000','779 15153337','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Özcan', ' KÜÇÜKÝRAVUL','Amasya','Amasya Merkez','1971-10-08 00:00:00.000','191 57311311','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Volkan','ÇEKÝP','Bartýn','Kurucaþile','1997-10-24 00:00:00.000','312 4663008','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Irmak', ' TAHSÝNOÐLU','Erzincan','Çayýrlý','1940-06-23 00:00:00.000','312 4182661','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Yaþar', ' SAVURGAN','Isparta','Gelendost','1991-08-07 00:00:00.000','232 4634944','E')		 
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Remzi', ' ELYÝÐÝT','Giresun','Çanakçý','1953-09-14 00:00:00.000','462 2301130','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Mehmet', ' Akif','Bitlis','Mutki','1992-12-25 00:00:00.000','265 4363265','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Salih', ' FAYDALI','Ordu','Çatalpýnar','1996-08-03 00:00:00.000','265 4366255','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Münevver', ' AYAOKU','Artvin','Artvin Merkez','1954-04-25 00:00:00.000','265 4463265','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Muhammet', ' KUZUCUOÐLU','Aydýn','Germencik','1989-07-10 00:00:00.000','242 5120544','E')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nazlýcan', ' ÖZSÝMÝTÇÝ','Þanlýurfa','Viranþehir','1951-12-29 00:00:00.000','212 2820569','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Arya', ' UNLUMAMULERÝ','Samsun','Terme','1957-03-25 00:00:00.000','312 4671845','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Döne', ' GURBETOÐLU','Kütahya','Emet','1986-08-10 00:00:00.000','236 2320068','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Emirhan', ' SELÝM','Samsun','Ladik','1993-01-21 00:00:00.000','232 4213680','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Berkay', ' PÝRÝNÇAL','Sivas','Akýncýlar','1963-08-06 00:00:00.000','212 5804727','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Songül', ' TÜKEZÝM','Burdur','Burdur Merkez','1983-01-28 00:00:00.000','312 4251162','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Onur', ' KIRIT','Kýrýkkale','Balýþeyh','1972-02-25 00:00:00.000','216 3134416','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Aykut', ' SUYUR','Rize','Rize Merkez','1964-05-17 00:00:00.000','312 4840301','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Hazal', ' ÜREGÝL','Tunceli','Tunceli Merkez','1999-10-19 00:00:00.000','312 4333760','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ezgi', ' ÝBUKÜRTÜNCÜ','Çanakkale','Gökçeada','1985-02-16 00:00:00.000','212 5205161','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Çetin', ' BÖRKLÜ','Eskiþehir','Çifteler','1946-09-28 00:00:00.000','352 2233542','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Soner', ' ÜLGEN','Elazýð','Alacakaya','1940-12-30 00:00:00.000','312 4284250','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Çetin', ' BÖRKLÜ','Eskiþehir','Çifteler','1946-09-28 00:00:00.000','212 2128891','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ezgi', ' ÝBUKÜRTÜNCÜ','Çanakkale','Gökçeada','1985-02-16 00:00:00.000','312 3223011','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Hazal', ' ÜREGÝL','Tunceli','Tunceli Merkez','1999-10-19 00:00:00.000','232 4896305','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Aykut', ' SUYUR','Rize','Rize Merkez','1964-05-17 00:00:00.000','312 4195656','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Onur', ' KIRIT','Kýrýkkale','Balýþeyh','1972-02-25 00:00:00.000','274 2242916','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Songül', ' TÜKEZÝM','Burdur','Burdur Merkez','1983-01-28 00:00:00.000','312 4337595','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Berkay', ' PÝRÝNÇAL','Sivas','Akýncýlar','1963-08-06 00:00:00.000','224 5134505','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Anýl', ' GÜLDÜ','Antalya','Gündoðmuþ','1941-12-06 00:00:00.000','442 2344870','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Pýnar', ' SAN.TÝC.A.Þ.','Çorum','Oðuzlar','1986-12-20 00:00:00.000','312 2101300','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Sami', ' ÖKÇE','Diyarbakýr','Bismil','1993-04-03 00:00:00.000','212 3252865','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Muzaffer', ' AÐAÇKESEN','Adana','Feke','1950-04-28 00:00:00.000','232 3768390','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nimet', ' HAYDARV','Isparta','Gelendost','1963-09-04 00:00:00.000','232 4838354','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Mina', ' KALO','Kars','Susuz','1987-04-01 00:00:00.000','242 5122289','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Müzeyyen', ' KATLAN','Muðla','Bodrum','1983-04-24 00:00:00.000','222 2314033','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Sabri', ' KARÝMAN','Ardahan','Damal','1952-05-06 00:00:00.000','266 5162975','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Irmak', ' HAMÝDÝ','Balýkesir','Manyas','1973-11-13 00:00:00.000','212 3611818','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Sebahat', ' ÞERALI','Muþ','Hasköy','1943-06-11 00:00:00.000','212 2850452','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Sevda', ' AKÇAN','Sakarya','Geyve','1964-05-12 00:00:00.000','256 7116364','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Emin', ' ATEÞELÝ','Rize','Fýndýklý','1965-11-27 00:00:00.000','342 4641431','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Hamdi', ' KÖKBULAK','Osmaniye','Kadirli','1946-09-30 00:00:00.000','212 2695763','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Gülsüm', ' BÝKEÇ','Adana','Seyhan','1970-07-22 00:00:00.000','224 2536013','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Birsen', ' AKKOR','Zonguldak','Çaycuma','1950-06-01 00:00:00.000','212 2413691','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Eymen', ' PALABIYIK','Kýrklareli','Demirköy','1951-02-22 00:00:00.000','322 4571133','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Elif', 'PLAKET','Yozgat','Sarýkaya','1970-09-01 00:00:00.000','312 4684344','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Deniz', ' BENDER','Hatay','Arsuz','1986-04-04 00:00:00.000','256 3131355','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Gökçe', ' FERAK','Aksaray','Aðaçören','1952-06-23 00:00:00.000','312 3855444','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nazmiye', ' TÜRKSARI','Siirt','Tillo','1964-07-17 00:00:00.000','212 2881161','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Naz', ' SAHAN','Ýzmir','Ödemiþ','1975-10-21 00:00:00.000','212 5205161 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Eren', 'CANLI','Þanlýurfa','Siverek','1970-01-06 00:00:00.000','216 4648591','E')	 	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Kübra', ' SUNGURLU','Burdur','Yeþilova','1985-02-11 00:00:00.000','212 2194348 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Onur', ' EYYÜBOÐLU','Erzincan','Refahiye','1945-09-29 00:00:00.000','212 2521977 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Mete', ' MADENÜS','Ýzmir','Torbalý','1972-01-21 00:00:00.000','312 4192375','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Muhammed Emin', ' SARIGÖL','Ýstanbul','Kaðýthane','1985-06-26 00:00:00.000','312 4320472 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Demet', ' BARIÞÇAKIR','Sivas','Ýmranlý','1996-08-30 00:00:00.000','312 3485516 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Habibe', ' BABAN','Kars','Kaðýzman','1948-01-27 00:00:00.000','282 6862102 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Cengiz', ' KAHVECÝLER','Samsun','Terme','1973-02-17 00:00:00.000','312 4470263 ','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Pakize', ' BAÞARA','Siirt','Siirt Merkez','1959-10-22 00:00:00.000','312 4178575 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Savaþ', ' NEYAL','Kahramanmaraþ','Dulkadiroðlu','1963-07-02 00:00:00.000','236 4147271 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Bülent', ' KAÇAROÐLU','Manisa','Turgutlu','1995-01-09 00:00:00.000','232 4834128 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Helin', ' TERKES','Rize','Fýndýklý','1975-12-16 00:00:00.000','312 2305044 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Zekiye', ' HATAY','Balýkesir','Susurluk','1989-04-23 00:00:00.000','232 2591131 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Arya', ' KÝSE','Nevþehir','Kozaklý','1994-05-25 00:00:00.000','312 3546990 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nimet', ' ÇITIRAK','Konya','Karapýnar','1964-08-08 00:00:00.000','322 3596811 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Ela', ' SEREK','Kýrýkkale','Kýrýkkale Merkez','1994-01-11 00:00:00.000','312 4469486 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES  ('Ayhan', ' ÖZÇÝL','Kütahya','Pazarlar','1963-11-08 00:00:00.000','232 4252034 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Azad', ' ÖNÜR','Adana','Karataþ','1989-03-23 00:00:00.000','212 2372633 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Sude', ' KAMURAN','Van','Ýpekyolu','1967-12-23 00:00:00.000','362 4326779','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Özkan', ' DERÝLÝOÐLU','Kütahya','Altýntaþ','1996-06-02 00:00:00.000','256 6144971 ','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Can', ' DOLAR','Aksaray','Aðaçören','1986-05-20 00:00:00.000','312 3540671 ','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Haydar', ' DEMÝRKAPI','Yozgat','Sorgun','1944-09-12 00:00:00.000','232 4636221 ','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Emrah', ' KARAAT','Bursa','Gemlik','1990-12-28 00:00:00.000','212 2753271 ','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Birgül', ' ALÝMÝNYUM','Trabzon','Sürmene','1979-08-10 00:00:00.000','312 3540189 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Zahide', ' BAÞSAKA','Bayburt','Demirözü','1972-09-16 00:00:00.000','312 3115770','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Tansu', ' KAFE','Malatya','Hekimhan','1941-05-08 00:00:00.000','224 2431215','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nisa', ' TÜZÜN','Aydýn','Germencik','1988-09-01 00:00:00.000','222 3351051','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Yaðýz', ' BEÐENDÝ','Rize','Rize Merkez','1980-10-15 00:00:00.000','312 2213711','E')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Orhan', ' ISIÞ','Gaziantep','Nizip','1984-04-20 00:00:00.000','212 6395012 ','E')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES('Rümeysa', ' ÝNCEDAL','Ýstanbul','Beylikdüzü','1998-03-18 00:00:00.000','282 6556378 ','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Mücahit', ' KARÝP','Tunceli','Ovacýk / Tunceli','1980-06-30 00:00:00.000','312 4330895 ','E')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Sebahattin', ' SUKUSTURAN','Uþak','Sivaslý','1951-01-09 00:00:00.000','232 4839718 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Defne', ' ENGÜZEL','Uþak','Sivaslý','1972-09-21 00:00:00.000','312 3503479 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Suat', ' GÝRÝGN','Batman','Sason','1976-12-17 00:00:00.000','312 3246181 ','E')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Sabri', ' DÖJME','Samsun','Ladik','1981-05-15 00:00:00.000','212 2352433 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Berna', ' EFENDÝOGLU','Sakarya','Sapanca','1950-08-07 00:00:00.000','212 5132363 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Efe', ' BÝRSAN','Yalova','Termal','1960-05-04 00:00:00.000','232 4255787 ','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Raziye', ' ERGÜZER','Kahramanmaraþ','Onikiþubat','1971-02-06 00:00:00.000','324 2341423 ','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Nihal', ' KAYAR','Diyarbakýr','Çýnar','1951-10-09 00:00:00.000','342 2311649 ','K')		
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Serap', ' TATLIOÐLU','Uþak','Uþak Merkez','1953-07-07 00:00:00.000','312 4358151 ','K')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Gamze', ' ADAL','Aksaray','Ortaköy / Aksaray','1991-01-17 00:00:00.000','232 4585574','K')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Özcan', ' ELEKTÝRÝK','Ordu','Akkuþ','1960-02-26 00:00:00.000','312 3842843','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Muhammed', 'ORUC','Ardahan','Ardahan Merkez','1996-10-19 00:00:00.000','212 4226604 ','E')	
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Eymen', ' PALABIYIK','Kýrklareli','Demirköy','1951-02-22 00:00:00.000','262 6438272','E')
INSERT INTO Musteriler(mus_ad,mus_soyad,mus_sehir,mus_ilce,mus_dtarih,tel_no,mus_cins) VALUES ('Elif', ' PLAKET','Yozgat','Sarýkaya','1970-09-01 00:00:00.000','262 3219128','K')



INSERT INTO PersonelBilgi
VALUES(LOWER('mstfsvk507@gmail.com'), '1234', 'Mustafa', 'Þevik')
INSERT INTO PersonelBilgi
VALUES(LOWER('bugrakkaya@gmail.com'), '4321', 'Buðra', 'Kýlýçkaya')
INSERT INTO PersonelBilgi
VALUES(LOWER('akadirakans@gmail.com'), '4685', 'Abdulkadir', 'Akansu')
INSERT INTO PersonelBilgi
VALUES(LOWER('tubakýlýckaya@gmail.com'), '9632', 'Tuba', 'Kýlýçkaya pala')
INSERT INTO PersonelBilgi
VALUES(LOWER('yelizyýl@gmail.com'), '2145', 'Yeliz', 'Yýldýrým')
INSERT INTO PersonelBilgi
VALUES(LOWER('sükrükoc@gmail.com'), '8745', 'Þükrü', 'Koç')
INSERT INTO PersonelBilgi
VALUES(LOWER('mehmetsimsir@gmail.com'), '4569', 'Mehmet', 'Þimþir')
INSERT INTO PersonelBilgi
VALUES(LOWER('yesimmart@gmail.com'), '8745', 'Yeþim', 'Mart')
INSERT INTO PersonelBilgi
VALUES(LOWER('yagmurnur@gmail.com'), '2597', 'Yaðmur', 'Nur')
INSERT INTO PersonelBilgi
VALUES(LOWER('berramayýs@gmail.com'), '1398', 'Berra', 'Mayýs')
INSERT INTO PersonelBilgi
VALUES(LOWER('denizmavi@gmail.com'), '1984', 'Deniz', 'Mavi')
INSERT INTO PersonelBilgi
VALUES(LOWER('tugrulsiyah@gmail.com'), '1978', 'Tuðrul', 'Siyah')
INSERT INTO PersonelBilgi
VALUES(LOWER('elvinkörpe@gmail.com'), '2002', 'Elvin', 'Körpe')
INSERT INTO PersonelBilgi
VALUES(LOWER('aytenmanyuk@gmail.com'), '7777', 'Ayten', 'Maynuk')



SELECT * FROM Musteriler
SELECT * FROM Personeller
SELECT * FROM Urunler
SELECT * FROM Markalar
SELECT * FROM Kategoriler
SELECT * FROM Satislar
SELECT * FROM PersonelBilgi

-----------------
SELECT mus_ad,mus_soyad,mus_sehir FROM Musteriler
SELECT * FROM Musteriler Where mus_sehir='Düzce'
SELECT * FROM Musteriler WHERE mus_ilce='Gölyaka' AND mus_sehir='Düzce'
SELECT * FROM Personeller WHERE personel_ad='Tuba' OR personel_soyad='Kýlýçkaya'
------------------
GO

SELECT	mus_id,
		mus_ad + ' ' + mus_soyad AS mus_adsoyad,
		mus_sehir,
		mus_ilce,
		mus_dtarih,
		tel_no,
		mus_cins
from Musteriler


GO
---------------------------------





IF((SELECT COUNT(*) FROM PersonelBilgi 
WHERE eposta = RTRIM('mstfsvk507@gmail.com ') AND parola ='1234') > 0)
	SELECT 1 
ELSE
	SELECT 0 


--------------------------yanlýþ-----------------------------
IF((SELECT COUNT(*) FROM PersonelBilgi 
WHERE eposta = RTRIM('akadirakans@gmail.com') AND parola ='4684') > 0)
	SELECT 1 
ELSE
	SELECT 0 

GO
------------------
SELECT COUNT(*) FROM Musteriler
SELECT *FROM Musteriler ORDER BY tel_no
SELECT *FROM Musteriler ORDER BY tel_no DESC
SELECT *FROM Urunler ORDER BY adet ASC
----------------------------
SELECT
		(SELECT marka_ad FROM Markalar WHERE marka_id = u.marka_id) AS marka_ad,		
* FROM Urunler u
------------------------------
DELETE FROM Markalar WHERE marka_id = 1
----------------------------------

SELECT	u.urun_id,
		u.model_ad,
		u.marka_id,
		m.marka_ad
FROM Urunler u
INNER JOIN Markalar m ON m.marka_id = u.marka_id

GO
----------------------------------------------------
SELECT	u.urun_id,
		u.model_ad,
		u.marka_id,
		m.marka_ad
FROM Urunler u
FULL JOIN Markalar m ON m.marka_id = u.marka_id

GO
---------------------------------------------------------

SELECT * FROM Markalar WHERE marka_id = 1 OR marka_id = 2 OR marka_id = 3 OR marka_id = 4
SELECt * FROM Markalar WHERE marka_id IN(1, 2, 3)
SELECT * FROM Markalar WHERE marka_id NOT IN(1,2,3)

----------------------------------------------------------------------
GO

SELECT  mus_ad AS ad, 
        mus_soyad AS soyad, 
        mus_cins AS eposta, 
        mus_dtarih AS telno,
        'Müþteri' AS tip
FROM Musteriler
UNION
SELECT    personel_ad, 
        personel_soyad, 
        personel_cins, 
        personel_dogumt,
        'Personel' AS tip
FROM Personeller


-----------------------------------------------------------
GO

CREATE VIEW vw_Personeller
       AS 
	   SELECT personel_id,personel_tc,personel_ad,personel_soyad,personel_cins,personel_dogumt,medeni_durum
	   FROM Personeller




	   SELECT * FROM vw_Personeller
GO

CREATE VIEW vw_Urunler
AS
	SELECT	u.urun_id,
			u.model_ad,
			u.adet,
			u.marka_id,
			m.marka_ad,
			u.kat_id,
			k.kat_ad,
			u.satis_fiyati
	FROM Urunler u
	INNER JOIN Kategoriler k ON k.kat_id = u.kat_id
	INNER JOIN Markalar m ON m.marka_id = u.marka_id
GO

ALTER VIEW vw_Urunler
WITH ENCRYPTION
AS
	SELECT	u.urun_id,
			u.model_ad,
			u.adet,
			u.marka_id,
			m.marka_ad,
			u.kat_id,
			k.kat_ad,
			u.satis_fiyati
	FROM Urunler u
	INNER JOIN Kategoriler k ON k.kat_id = u.kat_id
	INNER JOIN Markalar m ON m.marka_id = u.marka_id

GO

CREATE PROCEDURE sp_Musteriler
AS
	SELECT * FROM Musteriler
        
		GO
    CREATE PROCEDURE sp_kisi_ekle
	@mus_ad		NVARCHAR(50),
	@mus_soyad	NVARCHAR(50),
	@mus_sehir NVARCHAR(50),
	@mus_ilce NVARCHAR(50),
	@mus_dtarih DATETIME,
	@tel_no	NVARCHAR(50),
	@mus_cins NVARCHAR(1)
AS
	INSERT INTO Musteriler VALUES(@mus_ad, @mus_soyad, @mus_sehir, @mus_ilce, @mus_dtarih, @tel_no, @mus_cins)
	SELECT @@IDENTITY

	GO

		CREATE PROCEDURE sp_kisi_guncelle
	@mus_id		INT,
	@mus_ad		NVARCHAR(50),
	@mus_soyad	NVARCHAR(50),
	@mus_sehir nvarchar(50),
    @mus_ilce nvarchar(50),
	
	@tel_no	NVARCHAR(50)
AS
	UPDATE Musteriler 
	SET mus_ad = @mus_ad, mus_soyad = @mus_soyad,mus_sehir = @mus_sehir,mus_ilce = @mus_ilce,tel_no = @tel_no
	WHERE mus_id = @mus_id

select * from Musteriler

	GO

	CREATE TRIGGER trg_Markalar
ON Markalar
AFTER INSERT
AS
    DECLARE @marka_id INT, @marka_ad NVARCHAR(50)
    PRINT 'Yeni Kayýt Eklendi...'
    SELECT @marka_id = marka_id, @marka_ad = marka_ad FROM INSERTED
    PRINT 'id    = ' + CAST(@marka_id AS NVARCHAR)
    PRINT 'ad    = ' + @marka_ad

	
	go

	CREATE TRIGGER trg_Markalar2
ON Markalar
AFTER DELETE
AS
	DECLARE @marka_id INT, @marka_ad NVARCHAR(50)
	PRINT 'Bir Kayýt Silindi...'
	SELECT @marka_id = marka_id, @marka_ad = marka_ad FROM DELETED
	PRINT 'id    = ' + CAST(@marka_id AS NVARCHAR)
	PRINT 'ad    = ' + @marka_ad
	
	go


		CREATE TRIGGER trg_Markalar3
ON Markalar
AFTER UPDATE
AS
    DECLARE @marka_id INT, @marka_ad NVARCHAR(50)
    PRINT 'Bir Kayýt Güncellendi...'
    SELECT @marka_id = marka_id, @marka_ad = marka_ad FROM DELETED
    PRINT ' Eski Kayýt '
    PRINT 'id    = ' + CAST(@marka_id AS NVARCHAR)
    PRINT 'ad    = ' + @marka_ad

    SELECT @marka_id = marka_id, @marka_ad = marka_ad FROM INSERTED
    PRINT ' Güncel Kayýt '
    PRINT 'id    = ' + CAST(@marka_id AS NVARCHAR)
    PRINT 'ad    = ' + @marka_ad

	go

CREATE FUNCTION GetFullName(@mus_id INT)
RETURNS NVARCHAR(100)
AS
BEGIN
	RETURN (SELECT mus_ad+' '+mus_soyad FROM Musteriler
	WHERE mus_id = @mus_id)
END
	go

	CREATE PROCEDURE dp_musteri_listele
AS
	SELECT	mus_id,
			mus_ad,
			mus_soyad,
			mus_sehir,
			mus_ilce,
			mus_dtarih,
			dbo.GetFullName(mus_id) AS fullName,
			tel_no,
			mus_cins
	FROM Musteriler
	
GO
		
BEGIN TRY
	PRINT 3/0		
END TRY
BEGIN CATCH
	PRINT 'Catch bloðunun içi';
	PRINT ERROR_NUMBER();
	PRINT ERROR_MESSAGE();
	PRINT ERROR_NUMBER();
END CATCH
PRINT 'Catch bloðunun dýþý'
PRINT ERROR_NUMBER()
go


		BEGIN TRANSACTION
BEGIN TRY
INSERT INTO Satislar VALUES ('Powertech LK7980',150,10000060)
INSERT INTO Satislar VALUES ('Owertech LSTU23',100,1000061)
	PRINT 2/0
	
	COMMIT 
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE()
	ROLLBACK 
END CATCH

SELECT * FROm Satislar

go

