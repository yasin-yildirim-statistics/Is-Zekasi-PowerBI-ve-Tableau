/* 1. ADIM: Tabloları temizle ve ID sayaçlarını (Sequence) sıfırla */
TRUNCATE TABLE "books_categories", "books", "authors", "categories" RESTART IDENTITY CASCADE;

/* 2. ADIM: Kategorileri Ekle */
INSERT INTO "categories" ("name", "description") VALUES
('Roman', 'Kurgusal olayları ve karakterleri konu alan uzun edebi yazı türü.'),
('Bilim Kurgu', 'Gelecek, uzay, teknoloji ve dünya dışı yaşam gibi konuları ele alan tür.'),
('Fantastik', 'Büyü, doğaüstü olaylar ve hayali dünyaları konu alan tür.'),
('Polisiye', 'Suç, dedektiflik ve gizem çözme üzerine kurulu edebi tür.'),
('Klasik', 'Edebiyat dünyasında kalıcı değer kazanmış, evrensel nitelikli eserler.'),
('Tarih', 'Geçmişteki gerçek olayları ve dönemleri konu alan eserler.'),
('Korku/Gerilim', 'Okuyucuda korku ve heyecan uyandırmayı amaçlayan tür.'),
('Felsefe', 'Varoluş, bilgi, gerçeklik ve adalet gibi konuları irdeleyen eserler.'),
('Distopya', 'Baskıcı ve kontrolcü bir gelecek toplumunu tasvir eden tür.'),
('Biyografi', 'Gerçek kişilerin hayat hikayelerini anlatan eserler.');

/* 3. ADIM: Yazarları Ekle (Toplam 20 Yazar) */
INSERT INTO "authors" ("name", "surname", "birth_date", "bio") VALUES
('Sabahattin', 'Ali', '1907-02-25', 'Türk yazar ve şair. Toplumcu gerçekçi eserleriyle tanınır.'),
('George', 'Orwell', '1903-06-25', 'İngiliz yazar. Bin Dokuz Yüz Seksen Dört ve Hayvan Çiftliği ile bilinir.'),
('J.K.', 'Rowling', '1965-07-31', 'İngiliz yazar. Harry Potter serisinin yaratıcısıdır.'),
('J.R.R.', 'Tolkien', '1892-01-03', 'İngiliz yazar ve filolog. Yüzüklerin Efendisi serisinin yazarı.'),
('Fyodor', 'Dostoyevski', '1821-11-11', 'Rus roman yazarı. Psikolojik tahlilleriyle ünlüdür.'),
('Agatha', 'Christie', '1890-09-15', 'İngiliz polisiye yazarı. Dedektif Hercule Poirot''nun yaratıcısı.'),
('Stefan', 'Zweig', '1881-11-28', 'Avusturyalı yazar. Satranç ve biyografileriyle tanınır.'),
('Yaşar', 'Kemal', '1923-10-06', 'Kürt kökenli Türk yazar. İnce Memed serisiyle dünyaca tanınır.'),
('Frank', 'Herbert', '1920-10-08', 'Amerikalı bilim kurgu yazarı. Dune serisinin yaratıcısı.'),
('Oğuz', 'Atay', '1934-10-12', 'Türk roman ve öykü yazarı. Tutunamayanlar ile post-modernizmin öncüsüdür.'),
('Franz', 'Kafka', '1883-07-03', 'Bohemyalı yazar. Yabancılaşma temalı eserleriyle bilinir.'),
('Stephen', 'King', '1947-09-21', 'Amerikalı korku ve gerilim yazarı.'),
('Victor', 'Hugo', '1802-02-26', 'Fransız yazar. Sefiller ve Notre Dame''ın Kamburu''nun yazarı.'),
('İhsan Oktay', 'Anar', '1960-11-21', 'Türk felsefeci ve yazar. Puslu Kıtalar Atlası ile bilinir.'),
('Ursula K.', 'Le Guin', '1929-10-21', 'Amerikalı bilim kurgu ve fantastik yazar.'),
('Dan', 'Brown', '1964-06-22', 'Amerikalı yazar. Da Vinci Şifresi ile ünlenmiştir.'),
('Zülfü', 'Livaneli', '1946-06-20', 'Türk yazar ve müzisyen. Serenad ve Huzursuzluk gibi eserleri vardır.'),
('Jack', 'London', '1876-01-12', 'Amerikalı yazar. Vahşetin Çağrısı ve Martin Eden ile bilinir.'),
('Lev', 'Tolstoy', '1828-09-09', 'Rus yazar. Savaş ve Barış ile Anna Karenina''nın yazarı.'),
('Isaac', 'Asimov', '1920-01-02', 'Amerikalı yazar ve biyokimyacı. Robot ve Vakıf serileriyle tanınır.');

/* 4. ADIM: Kitapları Ekle (100 Adet) */
/* Not: published_year DATE tipinde olduğu için YYYY-01-01 formatı kullanıldı */
INSERT INTO "books" ("title", "page_count", "price", "published_year", "isbn", "author_id") VALUES
-- Sabahattin Ali (ID: 1)
('Kürk Mantolu Madonna', 160, 45.50, '1943-01-01', '9789753638029', 1),
('Kuyucaklı Yusuf', 220, 50.00, '1937-01-01', '9789753638050', 1),
('İçimizdeki Şeytan', 260, 55.00, '1940-01-01', '9789753638036', 1),
('Sırça Köşk', 140, 40.00, '1947-01-01', '9789753638043', 1),
('Değirmen', 120, 35.00, '1935-01-01', '9789753638067', 1),

-- George Orwell (ID: 2)
('1984', 350, 60.00, '1949-06-08', '9789750718533', 2),
('Hayvan Çiftliği', 150, 35.00, '1945-08-17', '9789750719387', 2),
('Paris ve Londra''da Beş Parasız', 280, 50.00, '1933-01-01', '9789750719394', 2),
('Katalonya''ya Selam', 300, 55.00, '1938-01-01', '9789750719400', 2),
('Aspidistra', 320, 58.00, '1936-01-01', '9789750719417', 2),

-- J.K. Rowling (ID: 3)
('Harry Potter ve Felsefe Taşı', 223, 75.00, '1997-06-26', '9789750802942', 3),
('Harry Potter ve Sırlar Odası', 251, 80.00, '1998-07-02', '9789750802959', 3),
('Harry Potter ve Azkaban Tutsağı', 317, 85.00, '1999-07-08', '9789750802966', 3),
('Harry Potter ve Ateş Kadehi', 636, 110.00, '2000-07-08', '9789750802973', 3),
('Harry Potter ve Zümrüdüanka Yoldaşlığı', 766, 120.00, '2003-06-21', '9789750802980', 3),
('Harry Potter ve Melez Prens', 607, 105.00, '2005-07-16', '9789750802997', 3),
('Harry Potter ve Ölüm Yadigarları', 607, 105.00, '2007-07-21', '9789750803000', 3),

-- J.R.R. Tolkien (ID: 4)
('Yüzüklerin Efendisi: Yüzük Kardeşliği', 480, 130.00, '1954-07-29', '9789753420001', 4),
('Yüzüklerin Efendisi: İki Kule', 400, 125.00, '1954-11-11', '9789753420002', 4),
('Yüzüklerin Efendisi: Kralın Dönüşü', 450, 130.00, '1955-10-20', '9789753420003', 4),
('Hobbit', 310, 90.00, '1937-09-21', '9789753420004', 4),
('Silmarillion', 420, 115.00, '1977-09-15', '9789753420005', 4),

-- Fyodor Dostoyevski (ID: 5)
('Suç ve Ceza', 650, 85.00, '1866-01-01', '9789750719001', 5),
('Karamazov Kardeşler', 840, 95.00, '1880-01-01', '9789750719002', 5),
('Yeraltından Notlar', 140, 40.00, '1864-01-01', '9789750719003', 5),
('Kumarbaz', 180, 50.00, '1867-01-01', '9789750719004', 5),
('Budala', 700, 90.00, '1869-01-01', '9789750719005', 5),

-- Agatha Christie (ID: 6)
('On Kişiydiler', 220, 60.00, '1939-11-06', '9789752630010', 6),
('Doğu Ekspresinde Cinayet', 250, 65.00, '1934-01-01', '9789752630011', 6),
('Nil''de Ölüm', 280, 65.00, '1937-11-01', '9789752630012', 6),
('Roger Ackroyd Cinayeti', 260, 60.00, '1926-06-01', '9789752630013', 6),
('ABC Cinayetleri', 230, 60.00, '1936-01-06', '9789752630014', 6),

-- Stefan Zweig (ID: 7)
('Satranç', 90, 30.00, '1942-01-01', '9789750710001', 7),
('Bilinmeyen Bir Kadının Mektubu', 80, 25.00, '1922-01-01', '9789750710002', 7),
('Korku', 95, 30.00, '1925-01-01', '9789750710003', 7),
('Amok Koşucusu', 85, 28.00, '1922-01-01', '9789750710004', 7),
('Olağanüstü Bir Gece', 100, 32.00, '1922-01-01', '9789750710005', 7),

-- Yaşar Kemal (ID: 8)
('İnce Memed 1', 436, 85.00, '1955-01-01', '9789750807001', 8),
('İnce Memed 2', 450, 85.00, '1969-01-01', '9789750807002', 8),
('İnce Memed 3', 480, 90.00, '1984-01-01', '9789750807003', 8),
('İnce Memed 4', 500, 95.00, '1987-01-01', '9789750807004', 8),
('Yer Demir Gök Bakır', 380, 75.00, '1963-01-01', '9789750807005', 8),

-- Frank Herbert (ID: 9)
('Dune', 700, 140.00, '1965-08-01', '9786053750001', 9),
('Dune Mesihi', 300, 80.00, '1969-01-01', '9786053750002', 9),
('Dune Çocukları', 500, 110.00, '1976-01-01', '9786053750003', 9),
('Dune Tanrı İmparatoru', 550, 120.00, '1981-01-01', '9786053750004', 9),
('Dune Sapkınları', 600, 130.00, '1984-01-01', '9786053750005', 9),

-- Oğuz Atay (ID: 10)
('Tutunamayanlar', 724, 125.00, '1972-01-01', '9789754700001', 10),
('Tehlikeli Oyunlar', 480, 95.00, '1973-01-01', '9789754700002', 10),
('Bir Bilim Adamının Romanı', 280, 65.00, '1975-01-01', '9789754700003', 10),
('Korkuyu Beklerken', 200, 55.00, '1975-01-01', '9789754700004', 10),
('Eylembilim', 180, 50.00, '1998-01-01', '9789754700005', 10),

-- Franz Kafka (ID: 11)
('Dönüşüm', 100, 35.00, '1915-01-01', '9789750719500', 11),
('Dava', 250, 55.00, '1925-01-01', '9789750719501', 11),
('Şato', 300, 60.00, '1926-01-01', '9789750719502', 11),

-- Stephen King (ID: 12)
('O (It)', 1100, 200.00, '1986-09-15', '9789752110001', 12),
('Medyum', 500, 110.00, '1977-01-28', '9789752110002', 12),
('Yeşil Yol', 400, 90.00, '1996-01-01', '9789752110003', 12),
('Hayvan Mezarlığı', 450, 95.00, '1983-11-14', '9789752110004', 12),
('Mahşer', 1200, 220.00, '1978-10-03', '9789752110005', 12),

-- Victor Hugo (ID: 13)
('Sefiller', 1500, 180.00, '1862-01-01', '9789750730001', 13),
('Notre Dame''ın Kamburu', 600, 100.00, '1831-01-01', '9789750730002', 13),

-- İhsan Oktay Anar (ID: 14)
('Puslu Kıtalar Atlası', 238, 70.00, '1995-01-01', '9789754704001', 14),
('Kitab-ül Hiyel', 180, 60.00, '1996-01-01', '9789754704002', 14),
('Suskunlar', 270, 75.00, '2007-01-01', '9789754704003', 14),
('Amat', 250, 70.00, '2005-01-01', '9789754704004', 14),
('Yedinci Gün', 240, 68.00, '2012-01-01', '9789754704005', 14),

-- Ursula K. Le Guin (ID: 15)
('Mülksüzler', 400, 90.00, '1974-01-01', '9789753421001', 15),
('Yerdeniz Büyücüsü', 250, 65.00, '1968-01-01', '9789753421002', 15),
('Karanlığın Sol Eli', 300, 80.00, '1969-01-01', '9789753421003', 15),
('Atuan Mezarları', 200, 60.00, '1971-01-01', '9789753421004', 15),

-- Dan Brown (ID: 16)
('Da Vinci Şifresi', 550, 100.00, '2003-03-18', '9789752100001', 16),
('Melekler ve Şeytanlar', 580, 105.00, '2000-05-01', '9789752100002', 16),
('Cehennem', 520, 95.00, '2013-05-14', '9789752100003', 16),
('Kayıp Sembol', 540, 98.00, '2009-09-15', '9789752100004', 16),

-- Zülfü Livaneli (ID: 17)
('Serenad', 484, 85.00, '2011-01-01', '9786050900001', 17),
('Kardeşimin Hikayesi', 330, 70.00, '2013-01-01', '9786050900002', 17),
('Huzursuzluk', 160, 50.00, '2017-01-01', '9786050900003', 17),
('Son Ada', 200, 55.00, '2008-01-01', '9786050900004', 17),

-- Jack London (ID: 18)
('Martin Eden', 450, 75.00, '1909-09-01', '9789750719600', 18),
('Vahşetin Çağrısı', 120, 35.00, '1903-01-01', '9789750719601', 18),
('Beyaz Diş', 250, 55.00, '1906-05-01', '9789750719602', 18),
('Demir Ökçe', 320, 65.00, '1908-01-01', '9789750719603', 18),

-- Lev Tolstoy (ID: 19)
('Savaş ve Barış', 1200, 180.00, '1869-01-01', '9789750719700', 19),
('Anna Karenina', 1000, 160.00, '1877-01-01', '9789750719701', 19),
('İnsan Ne İle Yaşar', 90, 25.00, '1885-01-01', '9789750719702', 19),
('İvan İlyiç''in Ölümü', 100, 30.00, '1886-01-01', '9789750719703', 19),

-- Isaac Asimov (ID: 20)
('Vakıf', 300, 75.00, '1951-01-01', '9786053752001', 20),
('Ben, Robot', 250, 65.00, '1950-12-02', '9786053752002', 20),
('Vakıf ve İmparatorluk', 320, 80.00, '1952-01-01', '9786053752003', 20),
('İkinci Vakıf', 310, 78.00, '1953-01-01', '9786053752004', 20),
('Çelik Mağaralar', 280, 70.00, '1954-01-01', '9786053752005', 20);

/* 5. ADIM: Kitap - Kategori Eşleştirmeleri */
/* Kategori ID Referansları:
   1: Roman, 2: Bilim Kurgu, 3: Fantastik, 4: Polisiye, 5: Klasik
   6: Tarih, 7: Korku/Gerilim, 8: Felsefe, 9: Distopya, 10: Biyografi
*/

INSERT INTO "books_categories" ("book_id", "category_id") VALUES
-- Sabahattin Ali (Roman, Klasik)
(1, 1), (1, 5), (2, 1), (2, 5), (3, 1), (4, 1), (5, 1),
-- George Orwell (Distopya, Roman)
(6, 9), (6, 1), (7, 9), (7, 1), (8, 10), (9, 6), (10, 1),
-- J.K. Rowling (Fantastik)
(11, 3), (12, 3), (13, 3), (14, 3), (15, 3), (16, 3), (17, 3),
-- J.R.R. Tolkien (Fantastik)
(18, 3), (19, 3), (20, 3), (21, 3), (22, 3),
-- Fyodor Dostoyevski (Klasik, Roman)
(23, 5), (23, 1), (24, 5), (25, 8), (25, 5), (26, 1), (27, 5),
-- Agatha Christie (Polisiye)
(28, 4), (29, 4), (30, 4), (31, 4), (32, 4),
-- Stefan Zweig (Roman, Klasik)
(33, 1), (33, 5), (34, 1), (35, 1), (36, 1), (37, 1),
-- Yaşar Kemal (Roman, Klasik)
(38, 1), (38, 5), (39, 1), (40, 1), (41, 1), (42, 1),
-- Frank Herbert (Bilim Kurgu)
(43, 2), (44, 2), (45, 2), (46, 2), (47, 2),
-- Oğuz Atay (Roman, Felsefe)
(48, 1), (48, 8), (49, 1), (50, 10), (51, 1), (52, 1),
-- Franz Kafka (Klasik, Distopya)
(53, 5), (53, 9), (54, 5), (54, 9), (55, 5),
-- Stephen King (Korku/Gerilim)
(56, 7), (57, 7), (58, 7), (59, 7), (60, 7), (60, 9),
-- Victor Hugo (Klasik, Tarih)
(61, 5), (61, 6), (62, 5), (62, 6),
-- İhsan Oktay Anar (Roman, Tarih, Fantastik)
(63, 1), (63, 3), (63, 6), (64, 1), (65, 1), (66, 1), (67, 1),
-- Ursula K. Le Guin (Bilim Kurgu, Fantastik, Distopya)
(68, 2), (68, 9), (69, 3), (70, 2), (71, 3),
-- Dan Brown (Polisiye, Gerilim)
(72, 4), (72, 7), (73, 4), (74, 4), (75, 4),
-- Zülfü Livaneli (Roman)
(76, 1), (77, 1), (78, 1), (79, 1),
-- Jack London (Klasik, Roman)
(80, 5), (80, 1), (81, 1), (82, 1), (83, 9), (83, 1),
-- Lev Tolstoy (Klasik, Tarih)
(84, 5), (84, 6), (85, 5), (86, 5), (86, 8), (87, 5),
-- Isaac Asimov (Bilim Kurgu)
(88, 2), (89, 2), (90, 2), (91, 2), (92, 2);

/* İşlem Tamamlandı */