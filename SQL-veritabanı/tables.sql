CREATE TABLE "books"(
    "id" SERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "page_count" INTEGER NOT NULL,
    "price" DECIMAL(10, 2) NOT NULL,
    "published_year" DATE NOT NULL,
    "isbn" VARCHAR(255) NOT NULL,
    "author_id" INTEGER NOT NULL
);
ALTER TABLE
    "books" ADD PRIMARY KEY("id");
CREATE TABLE "categories"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "categories" ADD PRIMARY KEY("id");
CREATE TABLE "authors"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "surname" VARCHAR(255) NOT NULL,
    "birth_date" DATE NOT NULL,
    "bio" TEXT NOT NULL
);
ALTER TABLE
    "authors" ADD PRIMARY KEY("id");
CREATE TABLE "books_categories"(
    "id" SERIAL NOT NULL,
    "book_id" INTEGER NOT NULL,
    "category_id" INTEGER NOT NULL
);
ALTER TABLE
    "books_categories" ADD PRIMARY KEY("id");
ALTER TABLE
    "books" ADD CONSTRAINT "books_author_id_foreign" FOREIGN KEY("author_id") REFERENCES "authors"("id");
ALTER TABLE
    "books_categories" ADD CONSTRAINT "books_categories_category_id_foreign" FOREIGN KEY("category_id") REFERENCES "categories"("id");
ALTER TABLE
    "books_categories" ADD CONSTRAINT "books_categories_book_id_foreign" FOREIGN KEY("book_id") REFERENCES "books"("id");