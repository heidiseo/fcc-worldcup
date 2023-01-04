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
    round character varying(20) NOT NULL,
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
    name character(20) NOT NULL
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

INSERT INTO public.games VALUES (97, 2018, 'Final', 474, 475, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 476, 477, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 475, 477, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 474, 476, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 475, 478, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 477, 479, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 476, 480, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 474, 481, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 477, 482, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 479, 483, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 476, 484, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 480, 485, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 475, 486, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 478, 487, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 481, 488, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 474, 489, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 490, 489, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 491, 480, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 489, 491, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 490, 480, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 491, 492, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 489, 476, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 480, 482, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 490, 474, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 480, 493, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 482, 481, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 474, 494, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 490, 495, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 491, 485, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 492, 496, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 489, 483, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 476, 497, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (474, 'France              ');
INSERT INTO public.teams VALUES (475, 'Croatia             ');
INSERT INTO public.teams VALUES (476, 'Belgium             ');
INSERT INTO public.teams VALUES (477, 'England             ');
INSERT INTO public.teams VALUES (478, 'Russia              ');
INSERT INTO public.teams VALUES (479, 'Sweden              ');
INSERT INTO public.teams VALUES (480, 'Brazil              ');
INSERT INTO public.teams VALUES (481, 'Uruguay             ');
INSERT INTO public.teams VALUES (482, 'Colombia            ');
INSERT INTO public.teams VALUES (483, 'Switzerland         ');
INSERT INTO public.teams VALUES (484, 'Japan               ');
INSERT INTO public.teams VALUES (485, 'Mexico              ');
INSERT INTO public.teams VALUES (486, 'Denmark             ');
INSERT INTO public.teams VALUES (487, 'Spain               ');
INSERT INTO public.teams VALUES (488, 'Portugal            ');
INSERT INTO public.teams VALUES (489, 'Argentina           ');
INSERT INTO public.teams VALUES (490, 'Germany             ');
INSERT INTO public.teams VALUES (491, 'Netherlands         ');
INSERT INTO public.teams VALUES (492, 'Costa Rica          ');
INSERT INTO public.teams VALUES (493, 'Chile               ');
INSERT INTO public.teams VALUES (494, 'Nigeria             ');
INSERT INTO public.teams VALUES (495, 'Algeria             ');
INSERT INTO public.teams VALUES (496, 'Greece              ');
INSERT INTO public.teams VALUES (497, 'United States       ');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 497, true);


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

