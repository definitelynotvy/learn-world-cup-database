--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    round character varying(50) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 4, 2, 87, 88, 'Final');
INSERT INTO public.games VALUES (2, 2018, 2, 0, 89, 90, 'Third Place');
INSERT INTO public.games VALUES (3, 2018, 2, 1, 88, 90, 'Semi-Final');
INSERT INTO public.games VALUES (4, 2018, 1, 0, 87, 89, 'Semi-Final');
INSERT INTO public.games VALUES (5, 2018, 3, 2, 88, 91, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 2018, 2, 0, 90, 92, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 2018, 2, 1, 89, 93, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 2018, 2, 0, 87, 94, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 2018, 2, 1, 90, 95, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 2018, 1, 0, 92, 96, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 2018, 3, 2, 89, 97, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 2018, 2, 0, 93, 98, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 2018, 2, 1, 88, 99, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 2018, 2, 1, 91, 100, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 2018, 2, 1, 94, 101, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 2018, 4, 3, 87, 102, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 2014, 1, 0, 103, 102, 'Final');
INSERT INTO public.games VALUES (18, 2014, 3, 0, 104, 93, 'Third Place');
INSERT INTO public.games VALUES (19, 2014, 1, 0, 102, 104, 'Semi-Final');
INSERT INTO public.games VALUES (20, 2014, 7, 1, 103, 93, 'Semi-Final');
INSERT INTO public.games VALUES (21, 2014, 1, 0, 104, 105, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 2014, 1, 0, 102, 89, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 2014, 2, 1, 93, 95, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 2014, 1, 0, 103, 87, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 2014, 2, 1, 93, 106, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 2014, 2, 0, 95, 94, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 2014, 2, 0, 87, 107, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 2014, 2, 1, 103, 108, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 2014, 2, 1, 104, 98, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 2014, 2, 1, 105, 109, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 2014, 1, 0, 102, 96, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 2014, 2, 1, 89, 110, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (87, 'France');
INSERT INTO public.teams VALUES (88, 'Croatia');
INSERT INTO public.teams VALUES (89, 'Belgium');
INSERT INTO public.teams VALUES (90, 'England');
INSERT INTO public.teams VALUES (91, 'Russia');
INSERT INTO public.teams VALUES (92, 'Sweden');
INSERT INTO public.teams VALUES (93, 'Brazil');
INSERT INTO public.teams VALUES (94, 'Uruguay');
INSERT INTO public.teams VALUES (95, 'Colombia');
INSERT INTO public.teams VALUES (96, 'Switzerland');
INSERT INTO public.teams VALUES (97, 'Japan');
INSERT INTO public.teams VALUES (98, 'Mexico');
INSERT INTO public.teams VALUES (99, 'Denmark');
INSERT INTO public.teams VALUES (100, 'Spain');
INSERT INTO public.teams VALUES (101, 'Portugal');
INSERT INTO public.teams VALUES (102, 'Argentina');
INSERT INTO public.teams VALUES (103, 'Germany');
INSERT INTO public.teams VALUES (104, 'Netherlands');
INSERT INTO public.teams VALUES (105, 'Costa Rica');
INSERT INTO public.teams VALUES (106, 'Chile');
INSERT INTO public.teams VALUES (107, 'Nigeria');
INSERT INTO public.teams VALUES (108, 'Algeria');
INSERT INTO public.teams VALUES (109, 'Greece');
INSERT INTO public.teams VALUES (110, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 110, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

