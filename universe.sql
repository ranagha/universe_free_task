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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius integer,
    distance integer,
    weight numeric,
    type text NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius_in_ly integer,
    number_of_stars integer,
    weight numeric,
    official_name text NOT NULL,
    is_neighbord boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius integer,
    distance integer,
    weight numeric,
    type text NOT NULL,
    is_moon boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius integer,
    distance integer,
    weight numeric,
    type text NOT NULL,
    is_solar boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius_in_ly integer,
    distance integer,
    weight numeric,
    type text NOT NULL,
    is_sun boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'halley', 1, 5, 5, 'big');
INSERT INTO public.comet VALUES (2, 'invented', 1, 5, 5, 'normal');
INSERT INTO public.comet VALUES (3, 'end', 1, 5, 5, 'small');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', 1, 1000000, 5554, 'CGP1100', true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 2, 2000000, 35554, 'CGP1200', true);
INSERT INTO public.galaxy VALUES (3, 'magallanes', 1, 500000, 554, 'CGP1300', true);
INSERT INTO public.galaxy VALUES (4, 'orion city', 10, 50000000, 500554, 'CGP1400', false);
INSERT INTO public.galaxy VALUES (5, 'gishiman', 100, 500000000, 5000554, 'CGP1500', false);
INSERT INTO public.galaxy VALUES (6, 'fatgalaxy', 1000, 500000000, 50000554, 'CGP1600', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 10, 500, 500, 'moony', true, 3);
INSERT INTO public.moon VALUES (2, 'phobos', 10, 500, 500, 'small', false, 4);
INSERT INTO public.moon VALUES (3, 'deimos', 10, 500, 500, 'small', false, 4);
INSERT INTO public.moon VALUES (4, 'io', 10, 500, 500, 'moony', false, 5);
INSERT INTO public.moon VALUES (5, 'europa', 10, 500, 500, 'moony', false, 5);
INSERT INTO public.moon VALUES (6, 'ganimedes', 10, 500, 500, 'moony', false, 5);
INSERT INTO public.moon VALUES (7, 'calixto', 10, 500, 500, 'moony', false, 5);
INSERT INTO public.moon VALUES (8, 'triton', 10, 500, 500, 'moony', false, 6);
INSERT INTO public.moon VALUES (9, 'titan', 10, 500, 500, 'moony', false, 7);
INSERT INTO public.moon VALUES (10, 'lick', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (11, 'my', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (12, 'name', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (13, 'of', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (15, 'may', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (16, 'planet', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (17, 'tortilla', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (18, 'panceta', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (19, 'cocretas', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (20, 'varsas', 10, 500, 500, 'moony', false, 12);
INSERT INTO public.moon VALUES (21, 'other', 10, 500, 500, 'moony', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 500, 50, 'small', true, 1);
INSERT INTO public.planet VALUES (2, 'venus', 10, 500, 500, 'terran', true, 1);
INSERT INTO public.planet VALUES (3, 'earth', 10, 500, 500, 'terran', true, 1);
INSERT INTO public.planet VALUES (4, 'mars', 10, 500, 500, 'terran', true, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 100, 5000, 5000, 'gigant', true, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 100, 5000, 5000, 'gigant', true, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 100, 5000, 5000, 'gigant', true, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 100, 5000, 5000, 'gigant', true, 1);
INSERT INTO public.planet VALUES (9, 'orbital', 100, 5000, 5000, 'gigant', false, 2);
INSERT INTO public.planet VALUES (10, 'macaco', 100, 5000, 5000, 'gigant', false, 2);
INSERT INTO public.planet VALUES (11, 'patata', 100, 5000, 5000, 'gigant', false, 3);
INSERT INTO public.planet VALUES (12, 'brillantbutt', 100, 5000, 5000, 'gigant', false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 500, 5004, 'orange', true, 1);
INSERT INTO public.star VALUES (2, 'orion', 40, 5000, 5003, 'white', false, 1);
INSERT INTO public.star VALUES (3, 'sirius', 400, 500, 503, 'yellow', false, 1);
INSERT INTO public.star VALUES (4, 'cygnus', 4000, 5000, 5003, 'red', false, 1);
INSERT INTO public.star VALUES (5, 'altea', 4, 5, 5, 'brown', false, 1);
INSERT INTO public.star VALUES (6, 'sgra', 1, 500, 500000, 'black', false, 1);


--
-- Name: comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: comet comet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--


