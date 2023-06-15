--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 31, 9);
INSERT INTO public.games VALUES (2, 794, 10);
INSERT INTO public.games VALUES (3, 168, 10);
INSERT INTO public.games VALUES (4, 829, 11);
INSERT INTO public.games VALUES (5, 285, 11);
INSERT INTO public.games VALUES (6, 121, 10);
INSERT INTO public.games VALUES (7, 210, 10);
INSERT INTO public.games VALUES (8, 169, 10);
INSERT INTO public.games VALUES (9, 609, 12);
INSERT INTO public.games VALUES (10, 743, 12);
INSERT INTO public.games VALUES (11, 208, 13);
INSERT INTO public.games VALUES (12, 872, 13);
INSERT INTO public.games VALUES (13, 659, 12);
INSERT INTO public.games VALUES (14, 582, 12);
INSERT INTO public.games VALUES (15, 824, 12);
INSERT INTO public.games VALUES (16, 519, 14);
INSERT INTO public.games VALUES (17, 706, 14);
INSERT INTO public.games VALUES (18, 444, 15);
INSERT INTO public.games VALUES (19, 686, 15);
INSERT INTO public.games VALUES (20, 426, 14);
INSERT INTO public.games VALUES (21, 113, 14);
INSERT INTO public.games VALUES (22, 783, 14);
INSERT INTO public.games VALUES (23, 437, 16);
INSERT INTO public.games VALUES (24, 513, 16);
INSERT INTO public.games VALUES (25, 947, 17);
INSERT INTO public.games VALUES (26, 643, 17);
INSERT INTO public.games VALUES (27, 309, 16);
INSERT INTO public.games VALUES (28, 945, 16);
INSERT INTO public.games VALUES (29, 799, 16);
INSERT INTO public.games VALUES (30, 322, 18);
INSERT INTO public.games VALUES (31, 806, 18);
INSERT INTO public.games VALUES (32, 628, 19);
INSERT INTO public.games VALUES (33, 170, 19);
INSERT INTO public.games VALUES (34, 501, 18);
INSERT INTO public.games VALUES (35, 561, 18);
INSERT INTO public.games VALUES (36, 769, 18);
INSERT INTO public.games VALUES (37, 527, 20);
INSERT INTO public.games VALUES (38, 196, 20);
INSERT INTO public.games VALUES (39, 436, 21);
INSERT INTO public.games VALUES (40, 881, 21);
INSERT INTO public.games VALUES (41, 931, 20);
INSERT INTO public.games VALUES (42, 133, 20);
INSERT INTO public.games VALUES (43, 617, 20);
INSERT INTO public.games VALUES (44, 968, 22);
INSERT INTO public.games VALUES (45, 505, 22);
INSERT INTO public.games VALUES (46, 381, 23);
INSERT INTO public.games VALUES (47, 662, 23);
INSERT INTO public.games VALUES (48, 202, 22);
INSERT INTO public.games VALUES (49, 483, 22);
INSERT INTO public.games VALUES (50, 831, 22);
INSERT INTO public.games VALUES (51, 430, 24);
INSERT INTO public.games VALUES (52, 746, 24);
INSERT INTO public.games VALUES (53, 907, 25);
INSERT INTO public.games VALUES (54, 852, 25);
INSERT INTO public.games VALUES (55, 858, 24);
INSERT INTO public.games VALUES (56, 242, 24);
INSERT INTO public.games VALUES (57, 806, 24);
INSERT INTO public.games VALUES (58, 972, 26);
INSERT INTO public.games VALUES (59, 550, 26);
INSERT INTO public.games VALUES (60, 710, 27);
INSERT INTO public.games VALUES (61, 101, 27);
INSERT INTO public.games VALUES (62, 227, 26);
INSERT INTO public.games VALUES (63, 592, 26);
INSERT INTO public.games VALUES (64, 971, 26);
INSERT INTO public.games VALUES (65, 78, 28);
INSERT INTO public.games VALUES (66, 960, 28);
INSERT INTO public.games VALUES (67, 534, 29);
INSERT INTO public.games VALUES (68, 340, 29);
INSERT INTO public.games VALUES (69, 919, 28);
INSERT INTO public.games VALUES (70, 64, 28);
INSERT INTO public.games VALUES (71, 740, 28);
INSERT INTO public.games VALUES (72, 168, 30);
INSERT INTO public.games VALUES (73, 202, 30);
INSERT INTO public.games VALUES (74, 631, 31);
INSERT INTO public.games VALUES (75, 910, 31);
INSERT INTO public.games VALUES (76, 560, 30);
INSERT INTO public.games VALUES (77, 194, 30);
INSERT INTO public.games VALUES (78, 633, 30);
INSERT INTO public.games VALUES (79, 467, 32);
INSERT INTO public.games VALUES (80, 846, 32);
INSERT INTO public.games VALUES (81, 362, 33);
INSERT INTO public.games VALUES (82, 304, 33);
INSERT INTO public.games VALUES (83, 551, 32);
INSERT INTO public.games VALUES (84, 797, 32);
INSERT INTO public.games VALUES (85, 603, 32);
INSERT INTO public.games VALUES (86, 74, 34);
INSERT INTO public.games VALUES (87, 237, 34);
INSERT INTO public.games VALUES (88, 409, 35);
INSERT INTO public.games VALUES (89, 192, 35);
INSERT INTO public.games VALUES (90, 912, 34);
INSERT INTO public.games VALUES (91, 953, 34);
INSERT INTO public.games VALUES (92, 94, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'hihi');
INSERT INTO public.users VALUES (2, 'user_1686787610834');
INSERT INTO public.users VALUES (3, 'user_1686787610833');
INSERT INTO public.users VALUES (4, 'user_1686788172710');
INSERT INTO public.users VALUES (5, 'user_1686788172709');
INSERT INTO public.users VALUES (6, 'user_1686788402071');
INSERT INTO public.users VALUES (7, 'user_1686788402070');
INSERT INTO public.users VALUES (8, 'Overlord');
INSERT INTO public.users VALUES (9, 'overlord');
INSERT INTO public.users VALUES (10, 'user_1686789007249');
INSERT INTO public.users VALUES (11, 'user_1686789007248');
INSERT INTO public.users VALUES (12, 'user_1686789074664');
INSERT INTO public.users VALUES (13, 'user_1686789074663');
INSERT INTO public.users VALUES (14, 'user_1686789132125');
INSERT INTO public.users VALUES (15, 'user_1686789132124');
INSERT INTO public.users VALUES (16, 'user_1686789193196');
INSERT INTO public.users VALUES (17, 'user_1686789193195');
INSERT INTO public.users VALUES (18, 'user_1686789318275');
INSERT INTO public.users VALUES (19, 'user_1686789318274');
INSERT INTO public.users VALUES (20, 'user_1686789451245');
INSERT INTO public.users VALUES (21, 'user_1686789451244');
INSERT INTO public.users VALUES (22, 'user_1686789580508');
INSERT INTO public.users VALUES (23, 'user_1686789580507');
INSERT INTO public.users VALUES (24, 'user_1686789702044');
INSERT INTO public.users VALUES (25, 'user_1686789702043');
INSERT INTO public.users VALUES (26, 'user_1686789726337');
INSERT INTO public.users VALUES (27, 'user_1686789726336');
INSERT INTO public.users VALUES (28, 'user_1686789766249');
INSERT INTO public.users VALUES (29, 'user_1686789766248');
INSERT INTO public.users VALUES (30, 'user_1686789825920');
INSERT INTO public.users VALUES (31, 'user_1686789825919');
INSERT INTO public.users VALUES (32, 'user_1686789838583');
INSERT INTO public.users VALUES (33, 'user_1686789838582');
INSERT INTO public.users VALUES (34, 'user_1686789941139');
INSERT INTO public.users VALUES (35, 'user_1686789941138');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 92, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

