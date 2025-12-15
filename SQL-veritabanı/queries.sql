
-- kategorileri Dram Felsefe ve Roman olan ve sayfa sayısı 150 ile 250 arasında olan kitaplları listeleyiniz.

select * from books where categories in ('Dram','Felsefe','Roman') and (pages_count between 150 and 250);


-- like ve ilike komutu : metnin içerisinde arama işlemi
-- like ve ilike arasında ki fark like büyük küçük harf duyarlıdır.

-- kitap başlığı sonu lı ile biten tüm kitapları listeleyiniz.
select * from books where title like '%lı' ;

-- kitap başlığı sonu lar ile biten tüm kitapları listeleyiniz.
select * from books where title like '%lar' ;

-- kitap başlığı alanı F harfi ile başlayan bütün kitapları listeleyiniz.
select * from books where title ilike 'f%';


-- kitap başlığı içerisinde metnin herhangi bir yerinde zur karakterleri geçen kitapları listeleyiniz.
select * from books where title ilike '%az%'


 --silme işlemleri
 --DELETE FROM tablo_adi where koşul;

DELETE FROM books where title = 'AbasıYanık';

DELETE FROM books where id = 104


-- Güncelleme işlemleri

-- Update tablo_Adi set kolon1=değer1, kolon2=değer2 where koşul

-- İd si 97 olan kaydın fiyatı 105.00 olsun ve sayfa sayısı ise 147 olsun.
update books set salary = 105.00 , pages_count = 147 where id = 97;

select * from books where id = 97;

-- fiyat alanında tüm kitapların fiyatına kdv yi de ekleyiniz.
update books set salary = salary *1.2;


insert into books(title,author,category,published_year,pages_count,salary,isbn)
values('Dönüşüm 1','franz kafka','edebiyat','1935-01-01',250,125.65,'978-975-08-1990-7');


-- Kategorisi edebiyat olan kitapları listeleyiniz.
select * from books where category = 'Edebiyat';


-- One to Many
-- Many to Many
-- One to one


-- 1 kitabın 1 tane yazarı olur.(tane kelimesinin sağında ki tablonun id kolonunu sol tarafa ekliyoruz.) bir
-- 1 yazarın birden fazla kitabı olabilir.(Göz ardı edin.) fazla

-- bire fazla
-- one to many



-- 1 Kategoride 1 den fazla kitap olabilir. (çok)
-- 1 kitap 1 den fazla kategoride de olabilir. (çok)
-- Junction table
-- çoka çok -> many to many
