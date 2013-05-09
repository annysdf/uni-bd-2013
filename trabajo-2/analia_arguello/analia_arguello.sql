--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: analia_arguello; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA analia_arguello;


ALTER SCHEMA analia_arguello OWNER TO postgres;

SET search_path = analia_arguello, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: analia_arguello; Owner: postgres; Tablespace: 
--

CREATE TABLE books (
    id integer NOT NULL,
    title character varying(25)
);


ALTER TABLE analia_arguello.books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: analia_arguello; Owner: postgres
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE analia_arguello.books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: analia_arguello; Owner: postgres
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: members; Type: TABLE; Schema: analia_arguello; Owner: postgres; Tablespace: 
--

CREATE TABLE members (
    id integer NOT NULL,
    name character varying(25)
);


ALTER TABLE analia_arguello.members OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: analia_arguello; Owner: postgres
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE analia_arguello.members_id_seq OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: analia_arguello; Owner: postgres
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: id; Type: DEFAULT; Schema: analia_arguello; Owner: postgres
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: analia_arguello; Owner: postgres
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: analia_arguello; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: analia_arguello; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

