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
-- Name: playerinfo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.playerinfo (
    username character varying(22),
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer
);


ALTER TABLE public.playerinfo OWNER TO freecodecamp;

--
-- Data for Name: playerinfo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.playerinfo VALUES ('user_1715125450452', 2, 705);
INSERT INTO public.playerinfo VALUES ('user_1715125691951', 2, 304);
INSERT INTO public.playerinfo VALUES ('user_1715125450453', 5, 423);
INSERT INTO public.playerinfo VALUES ('user_1715125691952', 5, 55);
INSERT INTO public.playerinfo VALUES ('user_1715125472987', 2, 904);
INSERT INTO public.playerinfo VALUES ('user_1715125472988', 5, 82);
INSERT INTO public.playerinfo VALUES ('user_1715125702353', 2, 333);
INSERT INTO public.playerinfo VALUES ('user_1715125491960', 2, 747);
INSERT INTO public.playerinfo VALUES ('user_1715125702354', 5, 143);
INSERT INTO public.playerinfo VALUES ('user_1715125491961', 5, 268);
INSERT INTO public.playerinfo VALUES ('user_1715125578321', 2, 801);
INSERT INTO public.playerinfo VALUES ('user_1715125730899', 2, 137);
INSERT INTO public.playerinfo VALUES ('user_1715125578322', 5, 79);
INSERT INTO public.playerinfo VALUES ('user_1715125730900', 5, 182);
INSERT INTO public.playerinfo VALUES ('user_1715125622413', 2, 408);
INSERT INTO public.playerinfo VALUES ('user_1715125622414', 5, 112);
INSERT INTO public.playerinfo VALUES ('user_1715125759576', 2, 590);
INSERT INTO public.playerinfo VALUES ('user_1715125759577', 5, 67);
INSERT INTO public.playerinfo VALUES ('user_1715125631424', 2, 780);
INSERT INTO public.playerinfo VALUES ('user_1715125631425', 5, 95);
INSERT INTO public.playerinfo VALUES ('user_1715125650021', 2, 284);
INSERT INTO public.playerinfo VALUES ('user_1715125650022', 5, 41);


--
-- PostgreSQL database dump complete
--

