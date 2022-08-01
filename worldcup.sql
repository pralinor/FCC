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
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 91, 92, 2, 4);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 93, 94, 0, 2);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 92, 94, 1, 2);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 91, 93, 0, 1);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 92, 95, 2, 3);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 94, 96, 0, 2);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 93, 97, 1, 2);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 91, 98, 0, 2);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 94, 99, 1, 2);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 96, 100, 0, 1);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 93, 101, 2, 3);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 97, 102, 0, 2);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 92, 103, 1, 2);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 95, 104, 1, 2);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 98, 105, 1, 2);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 91, 106, 3, 4);
INSERT INTO public.games VALUES (49, 2014, 'Final', 107, 106, 0, 1);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 108, 97, 0, 3);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 106, 108, 0, 1);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 107, 97, 1, 7);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 108, 109, 0, 1);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 106, 93, 0, 1);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 97, 99, 1, 2);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 107, 91, 0, 1);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 97, 110, 1, 2);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 99, 98, 0, 2);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 91, 111, 0, 2);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 107, 112, 1, 2);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 108, 102, 1, 2);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 109, 113, 1, 2);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 106, 100, 0, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 93, 114, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (91, 'France');
INSERT INTO public.teams VALUES (92, 'Croatia');
INSERT INTO public.teams VALUES (93, 'Belgium');
INSERT INTO public.teams VALUES (94, 'England');
INSERT INTO public.teams VALUES (95, 'Russia');
INSERT INTO public.teams VALUES (96, 'Sweden');
INSERT INTO public.teams VALUES (97, 'Brazil');
INSERT INTO public.teams VALUES (98, 'Uruguay');
INSERT INTO public.teams VALUES (99, 'Colombia');
INSERT INTO public.teams VALUES (100, 'Switzerland');
INSERT INTO public.teams VALUES (101, 'Japan');
INSERT INTO public.teams VALUES (102, 'Mexico');
INSERT INTO public.teams VALUES (103, 'Denmark');
INSERT INTO public.teams VALUES (104, 'Spain');
INSERT INTO public.teams VALUES (105, 'Portugal');
INSERT INTO public.teams VALUES (106, 'Argentina');
INSERT INTO public.teams VALUES (107, 'Germany');
INSERT INTO public.teams VALUES (108, 'Netherlands');
INSERT INTO public.teams VALUES (109, 'Costa Rica');
INSERT INTO public.teams VALUES (110, 'Chile');
INSERT INTO public.teams VALUES (111, 'Nigeria');
INSERT INTO public.teams VALUES (112, 'Algeria');
INSERT INTO public.teams VALUES (113, 'Greece');
INSERT INTO public.teams VALUES (114, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 114, true);


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

