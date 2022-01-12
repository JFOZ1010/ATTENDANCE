--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE attendance;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:ttDe/Z93W4zQNA4RS1wMZg==$BpJL2PPkee05c+1/KfDELgcCKlHD39W9k8qxBAJyXEA=:bUeg8F8ulEM4JJ+qOB4FDTEzO6s5Vve5+U4DPfN1UnE=';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "attendance" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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

--
-- Name: attendance; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE attendance WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE attendance OWNER TO postgres;

\connect attendance

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
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrador (
    id_administrador integer NOT NULL,
    nombre character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    tipo_user integer NOT NULL
);


ALTER TABLE public.administrador OWNER TO postgres;

--
-- Name: administrador_id_administrador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administrador_id_administrador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administrador_id_administrador_seq OWNER TO postgres;

--
-- Name: administrador_id_administrador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administrador_id_administrador_seq OWNED BY public.administrador.id_administrador;


--
-- Name: cursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cursos (
    id_curso integer NOT NULL,
    nombre character varying(100) NOT NULL,
    num_creditos integer NOT NULL,
    id_profesor integer NOT NULL,
    id_admin integer NOT NULL
);


ALTER TABLE public.cursos OWNER TO postgres;

--
-- Name: cursos_id_curso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cursos_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cursos_id_curso_seq OWNER TO postgres;

--
-- Name: cursos_id_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cursos_id_curso_seq OWNED BY public.cursos.id_curso;


--
-- Name: estudiante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiante (
    idestudiante integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    cursomatriculado character varying(100) NOT NULL,
    id_admin integer NOT NULL,
    id_sede integer NOT NULL,
    id_loginuser integer NOT NULL
);


ALTER TABLE public.estudiante OWNER TO postgres;

--
-- Name: estudiante_idestudiante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudiante_idestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estudiante_idestudiante_seq OWNER TO postgres;

--
-- Name: estudiante_idestudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudiante_idestudiante_seq OWNED BY public.estudiante.idestudiante;


--
-- Name: loginuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loginuser (
    iduser integer NOT NULL,
    nombre character varying(100),
    tipo integer NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.loginuser OWNER TO postgres;

--
-- Name: loginuser_iduser_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loginuser_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loginuser_iduser_seq OWNER TO postgres;

--
-- Name: loginuser_iduser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loginuser_iduser_seq OWNED BY public.loginuser.iduser;


--
-- Name: personal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal (
    nombre character varying(100) NOT NULL,
    salario integer NOT NULL,
    direccion character varying(100) NOT NULL,
    eps character varying(100) NOT NULL,
    arl character varying(100) NOT NULL,
    id_loginuser integer NOT NULL,
    id_sede integer NOT NULL,
    id_profesor integer NOT NULL,
    id_admin integer NOT NULL
);


ALTER TABLE public.personal OWNER TO postgres;

--
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesor (
    idprofesor integer NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.profesor OWNER TO postgres;

--
-- Name: profesor_idprofesor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesor_idprofesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profesor_idprofesor_seq OWNER TO postgres;

--
-- Name: profesor_idprofesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesor_idprofesor_seq OWNED BY public.profesor.idprofesor;


--
-- Name: sedes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sedes (
    idsedes integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion character varying(100) NOT NULL,
    id_admin integer NOT NULL
);


ALTER TABLE public.sedes OWNER TO postgres;

--
-- Name: sedes_idsedes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sedes_idsedes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sedes_idsedes_seq OWNER TO postgres;

--
-- Name: sedes_idsedes_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sedes_idsedes_seq OWNED BY public.sedes.idsedes;


--
-- Name: administrador id_administrador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador ALTER COLUMN id_administrador SET DEFAULT nextval('public.administrador_id_administrador_seq'::regclass);


--
-- Name: cursos id_curso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos ALTER COLUMN id_curso SET DEFAULT nextval('public.cursos_id_curso_seq'::regclass);


--
-- Name: estudiante idestudiante; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante ALTER COLUMN idestudiante SET DEFAULT nextval('public.estudiante_idestudiante_seq'::regclass);


--
-- Name: loginuser iduser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loginuser ALTER COLUMN iduser SET DEFAULT nextval('public.loginuser_iduser_seq'::regclass);


--
-- Name: profesor idprofesor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor ALTER COLUMN idprofesor SET DEFAULT nextval('public.profesor_idprofesor_seq'::regclass);


--
-- Name: sedes idsedes; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sedes ALTER COLUMN idsedes SET DEFAULT nextval('public.sedes_idsedes_seq'::regclass);


--
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.administrador (id_administrador, nombre, password, tipo_user) FROM stdin;
2	Carlos Mario	CarlosM21	1
3	Fernando Mauricio	FernanCross1998	1
4	Maria Camila	Cam12	1
5	Paola Diaz	Pao502	1
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursos (id_curso, nombre, num_creditos, id_profesor, id_admin) FROM stdin;
1	Arquitectura C II	3	1	2
2	Bases Datos I	4	2	3
3	Desarrollo S I	3	3	4
4	Constitucion Politica	2	4	5
\.


--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiante (idestudiante, nombre, direccion, cursomatriculado, id_admin, id_sede, id_loginuser) FROM stdin;
4	Maria Camila	AV 6ta - calle 24N barrio campina	710193	2	2	3
5	Carlos Andres Bello	Calle 23 Nte - casa #124	750030	3	3	3
6	René martinez Dubeq	KM 3 corregimiento la castilla	750091	4	4	3
7	Juan Fernando Sanchez	Calle 5ta norte - Mira Flores	730069	5	5	3
\.


--
-- Data for Name: loginuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loginuser (iduser, nombre, tipo, password) FROM stdin;
3	Cami23	3	realMadrid2005
4	Japeto10	2	JapetoA
1	CarlosM97	1	CarlosM21
2	EnriqueC10	2	ContraProfe123
\.


--
-- Data for Name: personal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal (nombre, salario, direccion, eps, arl, id_loginuser, id_sede, id_profesor, id_admin) FROM stdin;
Enrique Castrillon	3500000	Km 3 vda las palmas casa 129	Comfenalco	Colmena Seguros	2	3	2	3
Jefferson Amado Pena	3500000	Cra 12A #23-32 Calle 45 Porvenir	Comfenalco	Colmena Seguros	4	5	4	5
Carlos Mario C	4230000	Av 4ta carrera 12 calle 23	SURA	Colmena Seguros	1	2	1	2
\.


--
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesor (idprofesor, password) FROM stdin;
1	profe
2	Contraprofe123
3	colombiaTierraquerida20
4	Ajedrez_manzana23
\.


--
-- Data for Name: sedes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sedes (idsedes, nombre, ubicacion, id_admin) FROM stdin;
2	Melendez	Sur - Cali	2
3	San fernando	Sur - Cali	3
5	Farallones	Sur - Cali	5
4	Centro	Sur - Cali	4
6	Pance	Sur - Cali	2
\.


--
-- Name: administrador_id_administrador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administrador_id_administrador_seq', 5, true);


--
-- Name: cursos_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursos_id_curso_seq', 4, true);


--
-- Name: estudiante_idestudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiante_idestudiante_seq', 7, true);


--
-- Name: loginuser_iduser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loginuser_iduser_seq', 4, true);


--
-- Name: profesor_idprofesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesor_idprofesor_seq', 4, true);


--
-- Name: sedes_idsedes_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sedes_idsedes_seq', 6, true);


--
-- Name: administrador administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);


--
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id_curso);


--
-- Name: estudiante estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (idestudiante);


--
-- Name: loginuser loginuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loginuser
    ADD CONSTRAINT loginuser_pkey PRIMARY KEY (iduser);


--
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (idprofesor);


--
-- Name: sedes sedes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT sedes_pkey PRIMARY KEY (idsedes);


--
-- Name: administrador administrador_id_loginuser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_id_loginuser_fkey FOREIGN KEY (tipo_user) REFERENCES public.loginuser(iduser);


--
-- Name: cursos cursos_id_admin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_admin_fkey FOREIGN KEY (id_admin) REFERENCES public.administrador(id_administrador);


--
-- Name: cursos cursos_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesor(idprofesor);


--
-- Name: estudiante estudiante_id_admin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_id_admin_fkey FOREIGN KEY (id_admin) REFERENCES public.administrador(id_administrador);


--
-- Name: estudiante estudiante_id_loginuser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_id_loginuser_fkey FOREIGN KEY (id_loginuser) REFERENCES public.loginuser(iduser);


--
-- Name: estudiante estudiante_id_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_id_sede_fkey FOREIGN KEY (id_sede) REFERENCES public.sedes(idsedes);


--
-- Name: personal personal_id_admin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_id_admin_fkey FOREIGN KEY (id_admin) REFERENCES public.administrador(id_administrador);


--
-- Name: personal personal_id_loginuser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_id_loginuser_fkey FOREIGN KEY (id_loginuser) REFERENCES public.loginuser(iduser);


--
-- Name: personal personal_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesor(idprofesor);


--
-- Name: personal personal_id_sede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_id_sede_fkey FOREIGN KEY (id_sede) REFERENCES public.sedes(idsedes);


--
-- Name: sedes sedes_id_admin_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sedes
    ADD CONSTRAINT sedes_id_admin_fkey FOREIGN KEY (id_admin) REFERENCES public.administrador(id_administrador);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

