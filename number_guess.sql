--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1755130063841', 0, NULL);
INSERT INTO public.users VALUES (2, 'user_1755130063840', 0, NULL);
INSERT INTO public.users VALUES (3, 'user_1755130200147', 0, NULL);
INSERT INTO public.users VALUES (4, 'user_1755130200146', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1755130317237', 0, NULL);
INSERT INTO public.users VALUES (6, 'user_1755130317236', 0, NULL);
INSERT INTO public.users VALUES (7, 'user_1755130409934', 0, NULL);
INSERT INTO public.users VALUES (8, 'user_1755130409933', 0, NULL);
INSERT INTO public.users VALUES (9, 'user_1755130539318', 0, NULL);
INSERT INTO public.users VALUES (10, 'user_1755130539317', 0, NULL);
INSERT INTO public.users VALUES (11, 'user_1755130576777', 0, NULL);
INSERT INTO public.users VALUES (12, 'user_1755130576776', 0, NULL);
INSERT INTO public.users VALUES (13, 'user_1755130725977', 0, NULL);
INSERT INTO public.users VALUES (14, 'user_1755130725976', 0, NULL);
INSERT INTO public.users VALUES (15, 'user_1755130860711', 0, NULL);
INSERT INTO public.users VALUES (16, 'user_1755130860710', 0, NULL);
INSERT INTO public.users VALUES (17, 'user_1755130973737', 0, NULL);
INSERT INTO public.users VALUES (18, 'user_1755130973736', 0, NULL);
INSERT INTO public.users VALUES (19, 'user_1755131113250', 0, NULL);
INSERT INTO public.users VALUES (20, 'user_1755131113249', 0, NULL);
INSERT INTO public.users VALUES (21, 'user_1755131196597', 0, NULL);
INSERT INTO public.users VALUES (22, 'user_1755131196596', 0, NULL);
INSERT INTO public.users VALUES (24, 'user_1755131348515', 2, 0);
INSERT INTO public.users VALUES (23, 'user_1755131348516', 5, 0);
INSERT INTO public.users VALUES (25, 'user_1755131418509', 0, NULL);
INSERT INTO public.users VALUES (26, 'user_1755131418508', 0, NULL);
INSERT INTO public.users VALUES (27, 'user_1755131464504', 0, NULL);
INSERT INTO public.users VALUES (28, 'user_1755131464503', 0, NULL);
INSERT INTO public.users VALUES (29, 'user_1755131565086', 0, NULL);
INSERT INTO public.users VALUES (30, 'user_1755131565085', 0, NULL);
INSERT INTO public.users VALUES (31, 'user_1755131588020', 0, NULL);
INSERT INTO public.users VALUES (32, 'user_1755131588019', 0, NULL);
INSERT INTO public.users VALUES (33, 'user_1755131598950', 0, NULL);
INSERT INTO public.users VALUES (34, 'user_1755131598949', 0, NULL);
INSERT INTO public.users VALUES (35, 'user_1755131950800', 0, NULL);
INSERT INTO public.users VALUES (36, 'user_1755131950799', 0, NULL);
INSERT INTO public.users VALUES (38, 'user_1755132072552', 2, 37);
INSERT INTO public.users VALUES (37, 'user_1755132072553', 5, 346);
INSERT INTO public.users VALUES (40, 'user_1755132121178', 2, 450);
INSERT INTO public.users VALUES (39, 'user_1755132121179', 5, 43);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

