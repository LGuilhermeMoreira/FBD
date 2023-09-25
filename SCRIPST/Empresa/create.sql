--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2022-05-12 18:34:39

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
-- TOC entry 7 (class 2615 OID 9351254)
-- Name: empresa; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA empresa;


ALTER SCHEMA empresa OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 9351273)
-- Name: departamento; Type: TABLE; Schema: empresa; Owner: postgres
--

CREATE TABLE empresa.departamento (
    dnome character varying(30),
    dnumero integer NOT NULL,
    cpf_gerente character varying(11),
    data_inicio_gerente date
);


ALTER TABLE empresa.departamento OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 9351291)
-- Name: dependente; Type: TABLE; Schema: empresa; Owner: postgres
--

CREATE TABLE empresa.dependente (
    fcpf character varying(11),
    nome_dependente character varying(30),
    sexo character varying(1),
    datanasc date,
    parentesco character varying(30)
);


ALTER TABLE empresa.dependente OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 9351258)
-- Name: funcionario; Type: TABLE; Schema: empresa; Owner: postgres
--

CREATE TABLE empresa.funcionario (
    pnome character varying(30) NOT NULL,
    minicial character varying(30),
    unome character varying(30) NOT NULL,
    cpf character varying(11) NOT NULL,
    datanasc date,
    endereco character varying(30) NOT NULL,
    sexo character varying(1),
    salario numeric,
    cpf_supervisor character varying(11),
    dnr integer,
    rg character varying(30)
);


ALTER TABLE empresa.funcionario OWNER TO postgres;




CREATE VIEW empresa.funcionario_dep AS
 SELECT (((f.pnome)::text || ' '::text) || (f.unome)::text) AS nome,
    d.dnome AS depart
   FROM (empresa.funcionario f
     JOIN empresa.departamento d ON ((f.dnr = d.dnumero)));


ALTER TABLE empresa.funcionario_dep OWNER TO postgres;

--


CREATE TABLE empresa.localizacoes_dep (
    dnumero integer,
    dlocal character varying(30)
);


ALTER TABLE empresa.localizacoes_dep OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 9351278)
-- Name: projeto; Type: TABLE; Schema: empresa; Owner: postgres
--

CREATE TABLE empresa.projeto (
    projnome character varying(50),
    projnumero integer NOT NULL,
    projlocal character varying(50),
    dnum integer
);


ALTER TABLE empresa.projeto OWNER TO postgres;




CREATE TABLE empresa.trabalha_em (
    fcpf character varying(11),
    pnr integer,
    horas integer
);


ALTER TABLE empresa.trabalha_em OWNER TO postgres;


