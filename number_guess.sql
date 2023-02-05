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
    score integer NOT NULL,
    user_id integer NOT NULL
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 10, 1);
INSERT INTO public.games VALUES (3, 317, 20);
INSERT INTO public.games VALUES (4, 965, 20);
INSERT INTO public.games VALUES (5, 573, 21);
INSERT INTO public.games VALUES (6, 165, 21);
INSERT INTO public.games VALUES (7, 533, 20);
INSERT INTO public.games VALUES (8, 335, 20);
INSERT INTO public.games VALUES (9, 463, 20);
INSERT INTO public.games VALUES (10, 9, 1);
INSERT INTO public.games VALUES (11, 8, 1);
INSERT INTO public.games VALUES (12, 774, 22);
INSERT INTO public.games VALUES (13, 855, 22);
INSERT INTO public.games VALUES (14, 682, 23);
INSERT INTO public.games VALUES (15, 117, 23);
INSERT INTO public.games VALUES (16, 143, 22);
INSERT INTO public.games VALUES (17, 634, 22);
INSERT INTO public.games VALUES (18, 75, 22);
INSERT INTO public.games VALUES (19, 235, 24);
INSERT INTO public.games VALUES (20, 680, 24);
INSERT INTO public.games VALUES (21, 337, 25);
INSERT INTO public.games VALUES (22, 982, 25);
INSERT INTO public.games VALUES (23, 407, 24);
INSERT INTO public.games VALUES (24, 619, 24);
INSERT INTO public.games VALUES (25, 711, 24);
INSERT INTO public.games VALUES (26, 143, 26);
INSERT INTO public.games VALUES (27, 814, 26);
INSERT INTO public.games VALUES (28, 273, 27);
INSERT INTO public.games VALUES (29, 49, 27);
INSERT INTO public.games VALUES (30, 25, 26);
INSERT INTO public.games VALUES (31, 203, 26);
INSERT INTO public.games VALUES (32, 268, 26);
INSERT INTO public.games VALUES (33, 396, 28);
INSERT INTO public.games VALUES (34, 896, 28);
INSERT INTO public.games VALUES (35, 85, 29);
INSERT INTO public.games VALUES (36, 516, 29);
INSERT INTO public.games VALUES (37, 583, 28);
INSERT INTO public.games VALUES (38, 285, 28);
INSERT INTO public.games VALUES (39, 446, 28);
INSERT INTO public.games VALUES (40, 306, 30);
INSERT INTO public.games VALUES (41, 695, 30);
INSERT INTO public.games VALUES (42, 195, 31);
INSERT INTO public.games VALUES (43, 963, 31);
INSERT INTO public.games VALUES (44, 380, 30);
INSERT INTO public.games VALUES (45, 474, 30);
INSERT INTO public.games VALUES (46, 208, 30);
INSERT INTO public.games VALUES (47, 634, 32);
INSERT INTO public.games VALUES (48, 253, 32);
INSERT INTO public.games VALUES (49, 515, 33);
INSERT INTO public.games VALUES (50, 902, 33);
INSERT INTO public.games VALUES (51, 305, 32);
INSERT INTO public.games VALUES (52, 367, 32);
INSERT INTO public.games VALUES (53, 109, 32);
INSERT INTO public.games VALUES (54, 169, 34);
INSERT INTO public.games VALUES (55, 796, 34);
INSERT INTO public.games VALUES (56, 203, 35);
INSERT INTO public.games VALUES (57, 460, 35);
INSERT INTO public.games VALUES (58, 436, 34);
INSERT INTO public.games VALUES (59, 469, 34);
INSERT INTO public.games VALUES (60, 327, 34);
INSERT INTO public.games VALUES (61, 76, 36);
INSERT INTO public.games VALUES (62, 208, 36);
INSERT INTO public.games VALUES (63, 479, 37);
INSERT INTO public.games VALUES (64, 964, 37);
INSERT INTO public.games VALUES (65, 1000, 36);
INSERT INTO public.games VALUES (66, 889, 36);
INSERT INTO public.games VALUES (67, 485, 36);
INSERT INTO public.games VALUES (68, 635, 38);
INSERT INTO public.games VALUES (69, 216, 38);
INSERT INTO public.games VALUES (70, 375, 39);
INSERT INTO public.games VALUES (71, 914, 39);
INSERT INTO public.games VALUES (72, 454, 38);
INSERT INTO public.games VALUES (73, 283, 38);
INSERT INTO public.games VALUES (74, 513, 38);
INSERT INTO public.games VALUES (75, 334, 40);
INSERT INTO public.games VALUES (76, 861, 40);
INSERT INTO public.games VALUES (77, 543, 41);
INSERT INTO public.games VALUES (78, 489, 41);
INSERT INTO public.games VALUES (79, 270, 40);
INSERT INTO public.games VALUES (80, 595, 40);
INSERT INTO public.games VALUES (81, 256, 40);
INSERT INTO public.games VALUES (82, 806, 42);
INSERT INTO public.games VALUES (83, 179, 42);
INSERT INTO public.games VALUES (84, 417, 43);
INSERT INTO public.games VALUES (85, 67, 43);
INSERT INTO public.games VALUES (86, 648, 42);
INSERT INTO public.games VALUES (87, 803, 42);
INSERT INTO public.games VALUES (88, 953, 42);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Dan');
INSERT INTO public.users VALUES (2, 'Libby');
INSERT INTO public.users VALUES (3, 'user_1675592360034');
INSERT INTO public.users VALUES (4, 'user_1675592360033');
INSERT INTO public.users VALUES (5, 'user_1675592386566');
INSERT INTO public.users VALUES (6, 'user_1675592386565');
INSERT INTO public.users VALUES (7, 'user_1675592424605');
INSERT INTO public.users VALUES (8, 'user_1675592424604');
INSERT INTO public.users VALUES (9, 'user_1675592482588');
INSERT INTO public.users VALUES (10, 'user_1675592482587');
INSERT INTO public.users VALUES (11, 'user_1675593111853');
INSERT INTO public.users VALUES (12, 'user_1675593111852');
INSERT INTO public.users VALUES (13, 'user_1675593887134');
INSERT INTO public.users VALUES (14, 'user_1675593887133');
INSERT INTO public.users VALUES (15, '1');
INSERT INTO public.users VALUES (16, 'user_1675594475717');
INSERT INTO public.users VALUES (17, 'user_1675594475716');
INSERT INTO public.users VALUES (18, 'user_1675594506979');
INSERT INTO public.users VALUES (19, 'user_1675594506978');
INSERT INTO public.users VALUES (20, 'user_1675594745405');
INSERT INTO public.users VALUES (21, 'user_1675594745404');
INSERT INTO public.users VALUES (22, 'user_1675594959405');
INSERT INTO public.users VALUES (23, 'user_1675594959404');
INSERT INTO public.users VALUES (24, 'user_1675594975884');
INSERT INTO public.users VALUES (25, 'user_1675594975883');
INSERT INTO public.users VALUES (26, 'user_1675594984997');
INSERT INTO public.users VALUES (27, 'user_1675594984996');
INSERT INTO public.users VALUES (28, 'user_1675595016945');
INSERT INTO public.users VALUES (29, 'user_1675595016944');
INSERT INTO public.users VALUES (30, 'user_1675595055507');
INSERT INTO public.users VALUES (31, 'user_1675595055506');
INSERT INTO public.users VALUES (32, 'user_1675595059247');
INSERT INTO public.users VALUES (33, 'user_1675595059246');
INSERT INTO public.users VALUES (34, 'user_1675595062579');
INSERT INTO public.users VALUES (35, 'user_1675595062578');
INSERT INTO public.users VALUES (36, 'user_1675595066788');
INSERT INTO public.users VALUES (37, 'user_1675595066787');
INSERT INTO public.users VALUES (38, 'user_1675595073502');
INSERT INTO public.users VALUES (39, 'user_1675595073501');
INSERT INTO public.users VALUES (40, 'user_1675595114484');
INSERT INTO public.users VALUES (41, 'user_1675595114483');
INSERT INTO public.users VALUES (42, 'user_1675595223174');
INSERT INTO public.users VALUES (43, 'user_1675595223173');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 88, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

