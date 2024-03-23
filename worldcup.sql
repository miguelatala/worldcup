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
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 406, 407, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 408, 409, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 407, 409, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 406, 408, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 407, 410, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 409, 411, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 408, 412, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 406, 413, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 409, 414, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 411, 415, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 408, 416, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 412, 417, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 407, 418, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 410, 419, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 413, 420, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 406, 421, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 422, 421, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 423, 412, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 421, 423, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 422, 412, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 423, 424, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 421, 408, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 412, 414, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 422, 406, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 412, 425, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 414, 413, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 406, 426, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 422, 427, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 423, 417, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 424, 428, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 421, 415, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 408, 429, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (406, 'France');
INSERT INTO public.teams VALUES (407, 'Croatia');
INSERT INTO public.teams VALUES (408, 'Belgium');
INSERT INTO public.teams VALUES (409, 'England');
INSERT INTO public.teams VALUES (410, 'Russia');
INSERT INTO public.teams VALUES (411, 'Sweden');
INSERT INTO public.teams VALUES (412, 'Brazil');
INSERT INTO public.teams VALUES (413, 'Uruguay');
INSERT INTO public.teams VALUES (414, 'Colombia');
INSERT INTO public.teams VALUES (415, 'Switzerland');
INSERT INTO public.teams VALUES (416, 'Japan');
INSERT INTO public.teams VALUES (417, 'Mexico');
INSERT INTO public.teams VALUES (418, 'Denmark');
INSERT INTO public.teams VALUES (419, 'Spain');
INSERT INTO public.teams VALUES (420, 'Portugal');
INSERT INTO public.teams VALUES (421, 'Argentina');
INSERT INTO public.teams VALUES (422, 'Germany');
INSERT INTO public.teams VALUES (423, 'Netherlands');
INSERT INTO public.teams VALUES (424, 'Costa Rica');
INSERT INTO public.teams VALUES (425, 'Chile');
INSERT INTO public.teams VALUES (426, 'Nigeria');
INSERT INTO public.teams VALUES (427, 'Algeria');
INSERT INTO public.teams VALUES (428, 'Greece');
INSERT INTO public.teams VALUES (429, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 429, true);


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
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

