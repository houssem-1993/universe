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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30),
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_infos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_infos (
    more_infos_id integer NOT NULL,
    object_id integer NOT NULL,
    name character varying(30),
    description text
);


ALTER TABLE public.more_infos OWNER TO freecodecamp;

--
-- Name: more_infos_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_infos_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_infos_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_infos_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_infos_info_id_seq OWNED BY public.more_infos.more_infos_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30),
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_infos more_infos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_infos ALTER COLUMN more_infos_id SET DEFAULT nextval('public.more_infos_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'galaxy_1', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.galaxy VALUES (2, 2, 'galaxy_2', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.galaxy VALUES (3, 3, 'galaxy_3', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.galaxy VALUES (4, 4, 'galaxy_4', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.galaxy VALUES (5, 5, 'galaxy_5', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.galaxy VALUES (6, 6, 'galaxy_6', 500, 400, 1000.5, 'description', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon_1', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (2, 2, 'moon_2', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (3, 3, 'moon_3', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (4, 4, 'moon_4', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (5, 5, 'moon_5', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (6, 6, 'moon_6', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (7, 7, 'moon_7', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (8, 8, 'moon_8', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (9, 9, 'moon_9', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (10, 10, 'moon_10', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (11, 11, 'moon_11', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (12, 11, 'moon_12', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (13, 11, 'moon_13', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (14, 11, 'moon_14', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (15, 11, 'moon_15', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (16, 11, 'moon_16', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (17, 11, 'moon_17', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (18, 11, 'moon_18', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (19, 11, 'moon_19', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.moon VALUES (20, 11, 'moon_20', 500, 400, 1000.5, 'description', true, true);


--
-- Data for Name: more_infos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_infos VALUES (1, 1, 'info1', 'azer');
INSERT INTO public.more_infos VALUES (2, 2, 'info2', 'azer');
INSERT INTO public.more_infos VALUES (3, 3, 'info3', 'azer');
INSERT INTO public.more_infos VALUES (4, 4, 'info4', 'azer');
INSERT INTO public.more_infos VALUES (5, 5, 'info5', 'azer');
INSERT INTO public.more_infos VALUES (6, 6, 'info6', 'azer');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'planet_1', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (2, 2, 2, 'planet2', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (3, 3, 3, 'plane_3', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (4, 4, 4, 'planet_4', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (5, 5, 5, 'planet_5', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (7, 6, 7, 'planet_7', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (8, 6, 8, 'planet_8', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (9, 6, 9, 'planet_9', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (10, 6, 10, 'planet_10', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (11, 6, 11, 'planet_11', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (12, 6, 12, 'planet_12', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.planet VALUES (6, 6, 6, 'planet_6', 500, 400, 1000.5, 'description', true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'star_1', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.star VALUES (2, 2, 2, 'star_2', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.star VALUES (3, 3, 3, 'star_3', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.star VALUES (4, 4, 4, 'star4', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.star VALUES (5, 5, 5, 'star_5', 500, 400, 1000.5, 'description', true, true);
INSERT INTO public.star VALUES (6, 6, 6, 'star_6', 500, 400, 1000.5, 'description', true, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_infos_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_infos_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_infos more_infos_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_infos
    ADD CONSTRAINT more_infos_name_key UNIQUE (name);


--
-- Name: more_infos more_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_infos
    ADD CONSTRAINT more_infos_pkey PRIMARY KEY (more_infos_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

