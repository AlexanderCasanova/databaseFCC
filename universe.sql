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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age integer,
    mass integer,
    length numeric,
    extinct boolean
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    age integer,
    length numeric,
    extinct boolean,
    mass integer,
    name character varying NOT NULL
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
    name character varying NOT NULL,
    description text,
    age integer,
    mass integer,
    length numeric,
    extinct boolean,
    planet_id integer NOT NULL
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
    name character varying NOT NULL,
    description text,
    age integer,
    mass integer,
    length numeric,
    extinct boolean,
    star_id integer NOT NULL
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
    name character varying NOT NULL,
    description text,
    age integer,
    mass integer,
    length numeric,
    extinct boolean,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'bh1', 'description1', 10, 100, 100.5, true);
INSERT INTO public.blackhole VALUES (2, 'bh2', 'description1', 10, 100, 100.5, true);
INSERT INTO public.blackhole VALUES (3, 'bh3', 'description1', 10, 100, 100.5, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'description1', 10, 100.5, true, 100, 'galaxy1');
INSERT INTO public.galaxy VALUES (2, 'description2', 10, 100.5, true, 100, 'galaxy2');
INSERT INTO public.galaxy VALUES (3, 'description3', 10, 100.5, true, 100, 'galaxy3');
INSERT INTO public.galaxy VALUES (4, 'description4', 10, 100.5, true, 100, 'galaxy4');
INSERT INTO public.galaxy VALUES (5, 'description5', 10, 100.5, true, 100, 'galaxy5');
INSERT INTO public.galaxy VALUES (6, 'description6', 10, 100.5, true, 100, 'galaxy6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'description1', 10, 100, 100.5, false, 3);
INSERT INTO public.moon VALUES (2, 'moon2', 'description1', 10, 100, 100.5, false, 3);
INSERT INTO public.moon VALUES (3, 'moon3', 'description1', 10, 100, 100.5, false, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'description1', 10, 100, 100.5, false, 3);
INSERT INTO public.moon VALUES (5, 'moon5', 'description1', 10, 100, 100.5, false, 3);
INSERT INTO public.moon VALUES (6, 'moon6', 'description1', 10, 100, 100.5, false, 3);
INSERT INTO public.moon VALUES (7, 'moon7', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (8, 'moon8', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (9, 'moon9', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (10, 'moon10', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (11, 'moon11', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (12, 'moon12', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (13, 'moon13', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (14, 'moon14', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (15, 'moon15', 'description1', 10, 100, 100.5, false, 4);
INSERT INTO public.moon VALUES (16, 'moon16', 'description1', 10, 100, 100.5, false, 5);
INSERT INTO public.moon VALUES (17, 'moon17', 'description1', 10, 100, 100.5, false, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 'description1', 10, 100, 100.5, false, 5);
INSERT INTO public.moon VALUES (19, 'moon19', 'description1', 10, 100, 100.5, false, 5);
INSERT INTO public.moon VALUES (20, 'moon20', 'description1', 10, 100, 100.5, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'description6', 10, 100, 100.5, false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'description6', 10, 100, 100.5, false, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 'description6', 10, 100, 100.5, false, 1);
INSERT INTO public.planet VALUES (4, 'planet4', 'description6', 10, 100, 100.5, false, 1);
INSERT INTO public.planet VALUES (5, 'planet5', 'description6', 10, 100, 100.5, false, 1);
INSERT INTO public.planet VALUES (6, 'planet6', 'description6', 10, 100, 100.5, false, 1);
INSERT INTO public.planet VALUES (7, 'planet7', 'description6', 10, 100, 100.5, false, 2);
INSERT INTO public.planet VALUES (8, 'planet8', 'description6', 10, 100, 100.5, false, 2);
INSERT INTO public.planet VALUES (9, 'planet9', 'description6', 10, 100, 100.5, false, 2);
INSERT INTO public.planet VALUES (10, 'planet10', 'description6', 10, 100, 100.5, false, 2);
INSERT INTO public.planet VALUES (11, 'planet11', 'description6', 10, 100, 100.5, false, 2);
INSERT INTO public.planet VALUES (12, 'planet12', 'description6', 10, 100, 100.5, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'planet1', 'description1', 10, 100, 100.5, false, 1);
INSERT INTO public.star VALUES (2, 'planet2', 'description2', 10, 100, 100.5, false, 2);
INSERT INTO public.star VALUES (3, 'planet3', 'description3', 10, 100, 100.5, false, 3);
INSERT INTO public.star VALUES (4, 'planet4', 'description4', 10, 100, 100.5, false, 4);
INSERT INTO public.star VALUES (5, 'planet5', 'description4', 10, 100, 100.5, false, 5);
INSERT INTO public.star VALUES (6, 'planet6', 'description6', 10, 100, 100.5, false, 6);


--
-- Name: blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
