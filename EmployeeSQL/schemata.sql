--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-08 19:37:46 CDT

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
-- TOC entry 200 (class 1259 OID 16547)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying(20) NOT NULL,
    dept_name character varying(50) NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16550)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no integer,
    dept_no character varying(20) NOT NULL
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16553)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying(20) NOT NULL,
    emp_no integer
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16556)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer,
    emp_title_id character varying(20) NOT NULL,
    birth_date date,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    sex character varying(1) NOT NULL,
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16559)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer,
    salary integer
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16562)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying(20),
    title character varying(30)
);


ALTER TABLE public.titles OWNER TO postgres;

-- Completed on 2021-05-08 19:37:47 CDT

--
-- PostgreSQL database dump complete
--

