--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: characters; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.characters (
    id bigint NOT NULL,
    name character varying,
    type character varying,
    hp integer,
    damage integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.characters OWNER TO "Guest";

--
-- Name: characters_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.characters_id_seq OWNER TO "Guest";

--
-- Name: characters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.characters_id_seq OWNED BY public.characters.id;


--
-- Name: enemies; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.enemies (
    id bigint NOT NULL,
    name character varying,
    hp integer,
    damage integer,
    location_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.enemies OWNER TO "Guest";

--
-- Name: enemies_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.enemies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enemies_id_seq OWNER TO "Guest";

--
-- Name: enemies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.enemies_id_seq OWNED BY public.enemies.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    name character varying,
    effect character varying,
    value integer,
    imageable_type character varying,
    imageable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.items OWNER TO "Guest";

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO "Guest";

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.locations (
    id bigint NOT NULL,
    room character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    door character varying
);


ALTER TABLE public.locations OWNER TO "Guest";

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO "Guest";

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: users; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    admin boolean DEFAULT false,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO "Guest";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "Guest";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: characters id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.characters ALTER COLUMN id SET DEFAULT nextval('public.characters_id_seq'::regclass);


--
-- Name: enemies id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.enemies ALTER COLUMN id SET DEFAULT nextval('public.enemies_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: locations id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-01-22 22:21:00.944842	2020-01-22 22:21:00.944842
\.


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.characters (id, name, type, hp, damage, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: enemies; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.enemies (id, name, hp, damage, location_id, created_at, updated_at) FROM stdin;
1	Space Slug	3	3	7	2020-01-22 23:58:33.590261	2020-01-22 23:58:33.590261
2	Space Slug	3	3	7	2020-01-23 00:06:32.620768	2020-01-23 00:06:32.620768
3	Space Rat	2	1	6	2020-01-23 00:08:25.756377	2020-01-23 00:08:25.756377
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.items (id, name, effect, value, imageable_type, imageable_id, created_at, updated_at) FROM stdin;
1	Health vial	hp	2	Location	2	2020-01-22 23:35:32.843237	2020-01-22 23:35:32.843237
2	Heath Pack	hp	4	Location	10	2020-01-22 23:49:25.893295	2020-01-22 23:49:25.893295
3	Health Pack	hp	4	Location	7	2020-01-22 23:51:34.787784	2020-01-22 23:51:34.787784
4	Health vial	hp	2	Location	7	2020-01-22 23:51:54.379256	2020-01-22 23:51:54.379256
5	Health vial	hp	2	Location	11	2020-01-22 23:52:38.386388	2020-01-22 23:52:38.386388
6	BIG Roids	damage	4	Location	4	2020-01-22 23:53:44.498773	2020-01-22 23:53:44.498773
7	Small Roids	damage	2	Location	11	2020-01-22 23:54:06.538166	2020-01-22 23:54:17.499118
8	Small Roids	damage	2	Location	12	2020-01-22 23:54:45.913851	2020-01-22 23:54:45.913851
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.locations (id, room, description, created_at, updated_at, door) FROM stdin;
2	Airlock	Here you enter..	2020-01-22 21:51:46.994197	2020-01-22 21:51:46.994197	1,3,5
3	Hallway	It's a hall!	2020-01-22 21:52:25.640531	2020-01-22 21:52:25.640531	2,6
4	Mess Hall	Chairs and rotten food...	2020-01-22 21:53:32.768617	2020-01-22 21:53:32.768617	1,7,8,9
5	Floating in space	You dead	2020-01-22 21:54:37.137914	2020-01-22 21:54:37.137914	
6	Crew Quarters	Bunk beds and dirty clothes	2020-01-22 21:55:59.840355	2020-01-22 21:55:59.840355	3,10,11
7	Med Lab	I don't know what any of this does...	2020-01-22 21:58:04.296816	2020-01-22 21:58:04.296816	4,12
8	Floating in space	You dead	2020-01-22 21:58:26.864201	2020-01-22 21:58:26.864201	
9	Engine Room	Loud and hot	2020-01-22 21:59:07.081673	2020-01-22 21:59:07.081673	4,12,13
10	Capitan's Quarters	Fancy!	2020-01-22 21:59:42.097035	2020-01-22 21:59:42.097035	6
11	Shower Room	Not really the time for a shower	2020-01-22 22:00:23.481581	2020-01-22 22:00:23.481581	6
12	Science Lab	Test Tubes EVERYWHERE!!!	2020-01-22 22:01:16.937051	2020-01-22 22:01:16.937051	7,9
13	The Bridge	This is it!!!	2020-01-22 22:01:41.912358	2020-01-22 22:01:41.912358	9
1	Storage Room	You wake in a storage room, with a massive headache...	2020-01-22 21:49:44.621614	2020-01-22 22:02:48.369506	2,4
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20200122175639
20200122180207
20200122180445
20200122180621
20200122182617
20200122212553
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.users (id, email, encrypted_password, admin, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	admin@admin.com	$2a$11$v3/G0zIuuH2lJYK6UcZfWeFinuGqzQgJMTHBKBXbQ6JyakdD.9avi	t	\N	\N	\N	2020-01-22 22:29:12.106299	2020-01-22 22:29:12.106299
2	saul@gmail.com	$2a$11$AZuOUB1b3c.SQsbrj87kiuE1IoYYsdj1LqbQUFWKLKtdSpEJNGc46	f	\N	\N	\N	2020-01-22 22:52:49.281744	2020-01-22 22:52:49.281744
\.


--
-- Name: characters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.characters_id_seq', 1, false);


--
-- Name: enemies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.enemies_id_seq', 3, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.items_id_seq', 8, true);


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.locations_id_seq', 13, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: characters characters_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);


--
-- Name: enemies enemies_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.enemies
    ADD CONSTRAINT enemies_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_enemies_on_location_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_enemies_on_location_id ON public.enemies USING btree (location_id);


--
-- Name: index_items_on_imageable_type_and_imageable_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_items_on_imageable_type_and_imageable_id ON public.items USING btree (imageable_type, imageable_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: Guest
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: Guest
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: enemies fk_rails_c70b51c4de; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.enemies
    ADD CONSTRAINT fk_rails_c70b51c4de FOREIGN KEY (location_id) REFERENCES public.locations(id);


--
-- PostgreSQL database dump complete
--

