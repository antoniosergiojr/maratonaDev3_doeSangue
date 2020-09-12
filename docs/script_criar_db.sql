-- Database: doe

-- DROP DATABASE IF EXISTS doe;

/*CREATE DATABASE doe
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1; */

-- Table: public.donors

DROP TABLE IF EXISTS public.donors;
	
CREATE TABLE public.donors (
    id serial NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    blood text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT donors_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.donors
    OWNER to postgres;
    
INSERT INTO public.donors(name, email, blood)
VALUES ('Doador 1', 'teste@email.com', 'O+'),
       ('Doador 2', 'teste@email.com', 'A+'),
       ('Doador 3', 'teste@email.com', 'O-'),
       ('Doador 4', 'teste@email.com', 'A-');