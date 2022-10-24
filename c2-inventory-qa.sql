--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.4

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

DROP INDEX public.voucher_applicable_index;
DROP INDEX public.index_voucher_applicable_targets_on_voucher_sku_id;
DROP INDEX public.index_versions_on_item_type_and_item_id;
DROP INDEX public.index_outlet_skus_on_sku_id;
DROP INDEX public.index_outlet_skus_on_outlet_id;
DROP INDEX public.index_mobility_text_translations_on_translatable_attribute;
DROP INDEX public.index_mobility_text_translations_on_keys;
DROP INDEX public.index_mobility_string_translations_on_translatable_attribute;
DROP INDEX public.index_mobility_string_translations_on_query_keys;
DROP INDEX public.index_mobility_string_translations_on_keys;
DROP INDEX public.index_inventory_timeslots_on_inventory_date_id;
DROP INDEX public.index_inventory_dates_on_sku_type_and_sku_id;
DROP INDEX public.index_images_on_target_type_and_target_id;
DROP INDEX public.index_custom_attributes_on_attributable;
ALTER TABLE ONLY public.voucher_skus DROP CONSTRAINT voucher_skus_pkey;
ALTER TABLE ONLY public.voucher_applicable_targets DROP CONSTRAINT voucher_applicable_targets_pkey;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.skus DROP CONSTRAINT skus_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.outlets DROP CONSTRAINT outlets_pkey;
ALTER TABLE ONLY public.outlet_skus DROP CONSTRAINT outlet_skus_pkey;
ALTER TABLE ONLY public.mobility_text_translations DROP CONSTRAINT mobility_text_translations_pkey;
ALTER TABLE ONLY public.mobility_string_translations DROP CONSTRAINT mobility_string_translations_pkey;
ALTER TABLE ONLY public.inventory_timeslots DROP CONSTRAINT inventory_timeslots_pkey;
ALTER TABLE ONLY public.inventory_dates DROP CONSTRAINT inventory_dates_pkey;
ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
ALTER TABLE ONLY public.custom_attributes DROP CONSTRAINT custom_attributes_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE public.voucher_skus ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.voucher_applicable_targets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.skus ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.outlets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.outlet_skus ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.mobility_text_translations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.mobility_string_translations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inventory_timeslots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inventory_dates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.custom_attributes ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.voucher_skus_id_seq;
DROP TABLE public.voucher_skus;
DROP SEQUENCE public.voucher_applicable_targets_id_seq;
DROP TABLE public.voucher_applicable_targets;
DROP SEQUENCE public.versions_id_seq;
DROP TABLE public.versions;
DROP SEQUENCE public.skus_id_seq;
DROP TABLE public.skus;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.outlets_id_seq;
DROP TABLE public.outlets;
DROP SEQUENCE public.outlet_skus_id_seq;
DROP TABLE public.outlet_skus;
DROP SEQUENCE public.mobility_text_translations_id_seq;
DROP TABLE public.mobility_text_translations;
DROP SEQUENCE public.mobility_string_translations_id_seq;
DROP TABLE public.mobility_string_translations;
DROP SEQUENCE public.inventory_timeslots_id_seq;
DROP TABLE public.inventory_timeslots;
DROP SEQUENCE public.inventory_dates_id_seq;
DROP TABLE public.inventory_dates;
DROP SEQUENCE public.images_id_seq;
DROP TABLE public.images;
DROP SEQUENCE public.custom_attributes_id_seq;
DROP TABLE public.custom_attributes;
DROP TABLE public.ar_internal_metadata;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: custom_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_attributes (
    id bigint NOT NULL,
    attributable_id integer,
    attributable_type character varying,
    name jsonb,
    value jsonb,
    overwritten timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.custom_attributes OWNER TO postgres;

--
-- Name: custom_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_attributes_id_seq OWNER TO postgres;

--
-- Name: custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_attributes_id_seq OWNED BY public.custom_attributes.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    image character varying,
    target_id integer,
    target_type character varying,
    tag character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: inventory_dates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory_dates (
    id bigint NOT NULL,
    date date,
    price numeric(10,2) DEFAULT 0.0,
    sku_id integer,
    sku_type character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.inventory_dates OWNER TO postgres;

--
-- Name: inventory_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventory_dates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_dates_id_seq OWNER TO postgres;

--
-- Name: inventory_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventory_dates_id_seq OWNED BY public.inventory_dates.id;


--
-- Name: inventory_timeslots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory_timeslots (
    id bigint NOT NULL,
    inventory_date_id integer,
    start_time timestamp(6) without time zone,
    end_time timestamp(6) without time zone,
    quantity integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.inventory_timeslots OWNER TO postgres;

--
-- Name: inventory_timeslots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventory_timeslots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_timeslots_id_seq OWNER TO postgres;

--
-- Name: inventory_timeslots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventory_timeslots_id_seq OWNED BY public.inventory_timeslots.id;


--
-- Name: mobility_string_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mobility_string_translations (
    id bigint NOT NULL,
    locale character varying NOT NULL,
    key character varying NOT NULL,
    value character varying,
    translatable_type character varying,
    translatable_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.mobility_string_translations OWNER TO postgres;

--
-- Name: mobility_string_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mobility_string_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobility_string_translations_id_seq OWNER TO postgres;

--
-- Name: mobility_string_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mobility_string_translations_id_seq OWNED BY public.mobility_string_translations.id;


--
-- Name: mobility_text_translations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mobility_text_translations (
    id bigint NOT NULL,
    locale character varying NOT NULL,
    key character varying NOT NULL,
    value text,
    translatable_type character varying,
    translatable_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.mobility_text_translations OWNER TO postgres;

--
-- Name: mobility_text_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mobility_text_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mobility_text_translations_id_seq OWNER TO postgres;

--
-- Name: mobility_text_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mobility_text_translations_id_seq OWNED BY public.mobility_text_translations.id;


--
-- Name: outlet_skus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.outlet_skus (
    id bigint NOT NULL,
    outlet_id integer,
    sku_id integer,
    quantity integer DEFAULT 0,
    reserved_quantity integer DEFAULT 0,
    allocated_quantity integer DEFAULT 0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.outlet_skus OWNER TO postgres;

--
-- Name: outlet_skus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outlet_skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outlet_skus_id_seq OWNER TO postgres;

--
-- Name: outlet_skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outlet_skus_id_seq OWNED BY public.outlet_skus.id;


--
-- Name: outlets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.outlets (
    id bigint NOT NULL,
    master_outlet_ref character varying,
    name jsonb,
    address jsonb,
    short_desc jsonb,
    "desc" jsonb,
    operation_time_start timestamp(6) without time zone,
    operation_time_end timestamp(6) without time zone,
    phone_number character varying,
    whatsapp_number character varying,
    email character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.outlets OWNER TO postgres;

--
-- Name: outlets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outlets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outlets_id_seq OWNER TO postgres;

--
-- Name: outlets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outlets_id_seq OWNED BY public.outlets.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: skus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skus (
    id bigint NOT NULL,
    master_sku_ref character varying,
    name jsonb,
    recommended_price numeric(10,2) DEFAULT 0.0,
    cost_price numeric(10,2) DEFAULT 0.0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.skus OWNER TO postgres;

--
-- Name: skus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skus_id_seq OWNER TO postgres;

--
-- Name: skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skus_id_seq OWNED BY public.skus.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versions (
    id bigint NOT NULL,
    item_type character varying NOT NULL,
    item_id bigint NOT NULL,
    event character varying NOT NULL,
    whodunnit character varying,
    object_changes text,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.versions_id_seq OWNED BY public.versions.id;


--
-- Name: voucher_applicable_targets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voucher_applicable_targets (
    id bigint NOT NULL,
    voucher_sku_id integer,
    voucher_applicable_id integer,
    voucher_applicable_type character varying,
    voucher_applicable_name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.voucher_applicable_targets OWNER TO postgres;

--
-- Name: voucher_applicable_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voucher_applicable_targets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voucher_applicable_targets_id_seq OWNER TO postgres;

--
-- Name: voucher_applicable_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voucher_applicable_targets_id_seq OWNED BY public.voucher_applicable_targets.id;


--
-- Name: voucher_skus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voucher_skus (
    id bigint NOT NULL,
    name jsonb,
    quantity integer DEFAULT 0,
    recommended_price numeric(10,2) DEFAULT 0.0,
    value_amount numeric(10,2) DEFAULT 0.0,
    min_spend numeric(10,2) DEFAULT 0.0,
    reserved_quantity integer DEFAULT 0,
    allocated_quantity integer DEFAULT 0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.voucher_skus OWNER TO postgres;

--
-- Name: voucher_skus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voucher_skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voucher_skus_id_seq OWNER TO postgres;

--
-- Name: voucher_skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voucher_skus_id_seq OWNED BY public.voucher_skus.id;


--
-- Name: custom_attributes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_attributes ALTER COLUMN id SET DEFAULT nextval('public.custom_attributes_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: inventory_dates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory_dates ALTER COLUMN id SET DEFAULT nextval('public.inventory_dates_id_seq'::regclass);


--
-- Name: inventory_timeslots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory_timeslots ALTER COLUMN id SET DEFAULT nextval('public.inventory_timeslots_id_seq'::regclass);


--
-- Name: mobility_string_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobility_string_translations ALTER COLUMN id SET DEFAULT nextval('public.mobility_string_translations_id_seq'::regclass);


--
-- Name: mobility_text_translations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobility_text_translations ALTER COLUMN id SET DEFAULT nextval('public.mobility_text_translations_id_seq'::regclass);


--
-- Name: outlet_skus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlet_skus ALTER COLUMN id SET DEFAULT nextval('public.outlet_skus_id_seq'::regclass);


--
-- Name: outlets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlets ALTER COLUMN id SET DEFAULT nextval('public.outlets_id_seq'::regclass);


--
-- Name: skus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skus ALTER COLUMN id SET DEFAULT nextval('public.skus_id_seq'::regclass);


--
-- Name: versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions ALTER COLUMN id SET DEFAULT nextval('public.versions_id_seq'::regclass);


--
-- Name: voucher_applicable_targets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_applicable_targets ALTER COLUMN id SET DEFAULT nextval('public.voucher_applicable_targets_id_seq'::regclass);


--
-- Name: voucher_skus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_skus ALTER COLUMN id SET DEFAULT nextval('public.voucher_skus_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2022-08-26 15:44:53.693256	2022-08-26 15:44:53.693256
\.


--
-- Data for Name: custom_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_attributes (id, attributable_id, attributable_type, name, value, overwritten, deleted_at, created_at, updated_at) FROM stdin;
3	1	Sku	{"en": "brown", "zh-CN": "棕色"}	{"en": "small", "zh-CN": "小号"}	\N	\N	2022-09-08 06:57:20.805366	2022-09-08 06:57:20.805366
4	2	Sku	{"en": "gery", "zh-CN": "灰色"}	{"en": "large", "zh-CN": "大号"}	\N	\N	2022-09-08 06:59:50.810391	2022-09-08 06:59:50.810391
5	3	Sku	{"en": "medium", "zh-CN": "中号"}	{"en": "yellow", "zh-CN": "黄色"}	\N	\N	2022-09-08 07:00:48.223434	2022-09-08 07:00:48.223434
2	50	Sku	{"en": "12", "zh-CN": "34"}	{"en": "45", "zh-CN": "56"}	2022-09-08 09:22:29.253273	\N	2022-09-08 06:19:39.501645	2022-09-08 09:22:29.253541
1	50	Sku	{"en": "color", "zh-CN": "颜色1"}	{"en": "blue", "zh-CN": "蓝"}	2022-09-09 01:53:53.721373	\N	2022-09-08 06:19:17.649164	2022-09-09 01:53:53.721995
6	4	Sku	{"en": "anverage", "zh-CN": "均码"}	{"en": "colorful", "zh-CN": "彩色"}	2022-09-09 02:30:23.101969	\N	2022-09-09 02:28:11.285027	2022-09-09 02:30:23.102319
8	7	Sku	{"en": "large", "zh-CN": "大份"}	{"en": "colorful", "zh-CN": "彩色"}	\N	\N	2022-09-09 02:32:11.047078	2022-09-09 02:32:11.047078
9	8	Sku	{"en": "small", "zh-CN": "小份"}	{"en": "colorful", "zh-CN": "彩色"}	\N	\N	2022-09-09 02:32:43.662843	2022-09-09 02:32:43.662843
10	16	Sku	{"en": "same capacity", "zh-CN": "相同容量"}	{"en": "pink", "zh-CN": "粉色"}	\N	\N	2022-09-09 02:34:43.376544	2022-09-09 02:34:43.376544
11	17	Sku	{"en": "same capacity", "zh-CN": "相同容量"}	{"en": "Purple", "zh-CN": "紫色"}	2022-09-09 02:36:30.882124	\N	2022-09-09 02:35:30.490584	2022-09-09 02:36:30.882549
12	18	Sku	{"en": "small", "zh-CN": "x小号"}	{"en": "pink", "zh-CN": "粉色"}	\N	\N	2022-09-09 02:37:47.102005	2022-09-09 02:37:47.102005
13	19	Sku	{"en": "large", "zh-CN": "大号"}	{"en": "pink", "zh-CN": "粉色"}	\N	\N	2022-09-09 02:38:20.575113	2022-09-09 02:38:20.575113
14	20	Sku	{"en": "same size", "zh-CN": "相同大小"}	{"en": "pink and white", "zh-CN": "粉白色"}	\N	\N	2022-09-09 02:39:27.328384	2022-09-09 02:39:27.328384
15	21	Sku	{"en": "small", "zh-CN": "小尺寸"}	{"en": "colorful", "zh-CN": "彩色"}	\N	\N	2022-09-09 02:40:11.155748	2022-09-09 02:40:11.155748
16	22	Sku	{"en": "medium", "zh-CN": "中尺寸"}	{"en": "colorful", "zh-CN": "彩色"}	\N	\N	2022-09-09 02:40:45.885049	2022-09-09 02:40:45.885049
17	23	Sku	{"en": "large", "zh-CN": "大尺寸"}	{"en": "colorful", "zh-CN": "彩色"}	\N	\N	2022-09-09 02:41:43.938174	2022-09-09 02:41:43.938174
18	24	Sku	{"en": "large", "zh-CN": "大号"}	{"en": "blue", "zh-CN": "蓝色"}	\N	\N	2022-09-09 02:42:15.673975	2022-09-09 02:42:15.673975
19	25	Sku	{"en": "medium", "zh-CN": "中号"}	{"en": "red", "zh-CN": "红色"}	\N	\N	2022-09-09 02:42:40.562917	2022-09-09 02:42:40.562917
20	26	Sku	{"en": "small", "zh-CN": "小号"}	{"en": "white", "zh-CN": "白色"}	\N	\N	2022-09-09 02:43:48.757029	2022-09-09 02:43:48.757029
21	34	Sku	{"en": "large", "zh-CN": "大号"}	{"en": "yellow", "zh-CN": "黄色"}	\N	\N	2022-09-09 02:44:34.338855	2022-09-09 02:44:34.338855
22	35	Sku	{"en": "small", "zh-CN": "小号"}	{"en": "yellow", "zh-CN": "黄色"}	\N	\N	2022-09-09 02:44:57.777114	2022-09-09 02:44:57.777114
23	36	Sku	{"en": "medium", "zh-CN": "中号"}	{"en": "yellow", "zh-CN": "黄色"}	\N	\N	2022-09-09 02:45:24.507776	2022-09-09 02:45:24.507776
24	42	Sku	{"en": "small", "zh-CN": "小号"}	{"en": "black and white", "zh-CN": "黑白相间"}	\N	\N	2022-09-09 02:46:18.972008	2022-09-09 02:46:18.972008
25	43	Sku	{"en": "large", "zh-CN": "大号"}	{"en": "black and white", "zh-CN": "黑白相间"}	\N	\N	2022-09-09 02:46:45.901984	2022-09-09 02:46:45.901984
26	44	Sku	{"en": "average", "zh-CN": "均码"}	{"en": " black and white", "zh-CN": "黑白相间"}	\N	\N	2022-09-09 02:47:16.231453	2022-09-09 02:47:16.231453
27	45	Sku	{"en": "small", "zh-CN": "小号"}	{"en": "brown", "zh-CN": "棕色"}	\N	\N	2022-09-09 02:47:49.311039	2022-09-09 02:47:49.311039
28	46	Sku	{"en": "large", "zh-CN": "大号"}	{"en": "brown", "zh-CN": "棕色"}	\N	\N	2022-09-09 02:48:27.46749	2022-09-09 02:48:27.46749
29	47	Sku	{"en": "average", "zh-CN": "均码"}	{"en": "green and white", "zh-CN": "绿白色"}	\N	\N	2022-09-09 02:49:18.720683	2022-09-09 02:49:18.720683
30	49	Sku	{"en": "average", "zh-CN": "均码"}	{"en": "blue and white", "zh-CN": "蓝白相间"}	\N	\N	2022-09-09 02:50:01.313883	2022-09-09 02:50:01.313883
7	5	Sku	{"en": "average", "zh-CN": "均码"}	{"en": "gery", "zh-CN": "灰色"}	2022-09-09 06:25:53.116823	\N	2022-09-09 02:30:03.508261	2022-09-09 06:25:53.117231
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, image, target_id, target_type, tag, deleted_at, created_at, updated_at) FROM stdin;
1	kangaroo_doll.png	\N	\N	\N	\N	2022-08-31 02:13:48.964557	2022-08-31 02:13:48.964557
2	kangaroo_doll.jpeg	\N	\N	\N	\N	2022-08-31 02:16:23.874646	2022-08-31 02:16:23.874646
3	kangaroo_doll.jpeg	1	Sku	\N	\N	2022-08-31 03:16:55.520952	2022-08-31 03:18:10.628878
4	_kangaroo_doll_grey_.png	2	Sku	\N	\N	2022-08-31 03:23:10.582046	2022-08-31 03:25:31.548904
5	giraffe_pillow.png	3	Sku	\N	\N	2022-08-31 03:29:11.196621	2022-08-31 03:30:30.346361
6	Zebra_badge.png	4	Sku	\N	\N	2022-08-31 03:38:21.9923	2022-08-31 03:39:26.604227
7	Elephant_Keychain.png	5	Sku	\N	\N	2022-08-31 03:44:35.778353	2022-08-31 03:45:21.962773
8	牛肉拉面.jpeg	\N	\N	\N	\N	2022-08-31 06:42:06.447326	2022-08-31 06:42:06.447326
9	牛肉拉面.jpeg	6	Sku	\N	\N	2022-08-31 06:43:58.790527	2022-08-31 06:46:28.44584
10	beef_hamburger.png	7	Sku	\N	\N	2022-08-31 06:48:19.87201	2022-08-31 06:50:11.303629
11	beef_hamburger.png	\N	\N	\N	\N	2022-08-31 07:28:13.332017	2022-08-31 07:36:01.079738
12	bh_小份_.png	8	Sku	\N	\N	2022-08-31 07:36:12.371963	2022-08-31 07:36:13.977934
13	cola.png	9	Sku	\N	\N	2022-08-31 08:59:25.37882	2022-08-31 08:59:39.250432
14	cola.png	10	Sku	\N	\N	2022-08-31 09:02:22.776144	2022-08-31 09:02:37.375021
15	fries.png	11	Sku	\N	\N	2022-08-31 09:07:07.87299	2022-08-31 09:09:58.584377
16	小份薯条.png	12	Sku	\N	\N	2022-08-31 09:13:14.780786	2022-08-31 09:14:04.359302
17	印度黄姜饭.png	13	Sku	\N	\N	2022-08-31 09:18:01.344681	2022-08-31 09:19:13.427856
18	鸡饭.png	14	Sku	\N	\N	2022-08-31 09:21:25.477863	2022-08-31 09:22:55.030772
19	烤鸡.png	15	Sku	\N	\N	2022-08-31 09:24:33.612139	2022-08-31 09:25:21.846627
20	西柚汁.png	16	Sku	\N	\N	2022-08-31 09:28:41.475434	2022-08-31 09:29:35.49646
21	葡萄汁.png	17	Sku	\N	\N	2022-08-31 09:33:11.311023	2022-08-31 09:33:24.175352
22	火烈鸟体恤衫.npg.jpeg	18	Sku	\N	\N	2022-08-31 14:32:33.265782	2022-08-31 14:35:07.893475
23	火烈鸟体恤衫.npg.jpeg	19	Sku	\N	\N	2022-08-31 14:38:26.278903	2022-08-31 14:39:15.651955
24	火烈鸟杯子.png	20	Sku	\N	\N	2022-08-31 15:06:02.785539	2022-08-31 15:07:26.692688
25	qie.png	21	Sku	\N	\N	2022-09-01 01:11:45.029928	2022-09-01 01:13:58.272209
26	qie.png	22	Sku	\N	\N	2022-09-01 01:15:34.771925	2022-09-01 01:16:16.807356
27	qie.png	23	Sku	\N	\N	2022-09-01 01:17:40.362104	2022-09-01 01:18:14.43563
28	yingwu.blue.png	24	Sku	\N	\N	2022-09-01 01:23:35.596146	2022-09-01 01:24:47.974882
29	yingwu_red.png	25	Sku	\N	\N	2022-09-01 01:26:03.967562	2022-09-01 01:26:40.590732
30	yingwuwhite.png	26	Sku	\N	\N	2022-09-01 01:27:25.918685	2022-09-01 01:28:10.669091
31	ym.png	\N	\N	\N	\N	2022-09-01 01:58:55.126781	2022-09-01 01:58:55.126781
32	ym.png	\N	\N	\N	\N	2022-09-01 02:02:06.572924	2022-09-01 02:02:06.572924
33	意大利面.png	27	Sku	\N	\N	2022-09-01 02:02:37.755942	2022-09-01 02:04:40.753647
34	香草.png	28	Sku	\N	\N	2022-09-01 02:06:45.390614	2022-09-01 02:07:50.089055
35	榴莲.png	29	Sku	\N	\N	2022-09-01 02:09:55.326202	2022-09-01 02:11:42.773684
36	榴莲.png	30	Sku	\N	\N	2022-09-01 02:13:47.443672	2022-09-01 02:14:12.991811
37	海鲜.png	31	Sku	\N	\N	2022-09-01 02:17:02.70543	2022-09-01 02:18:45.155983
38	海鲜.png	32	Sku	\N	\N	2022-09-01 02:19:42.619891	2022-09-01 02:20:24.092514
39	黑椒牛排.png	33	Sku	\N	\N	2022-09-01 02:22:52.180143	2022-09-01 02:23:36.369536
40	狮子.png	34	Sku	\N	\N	2022-09-01 02:47:41.940262	2022-09-01 02:49:30.234631
41	狮子.png	35	Sku	\N	\N	2022-09-01 02:52:19.551866	2022-09-01 02:52:42.644181
42	狮子.png	36	Sku	\N	\N	2022-09-01 03:12:17.117518	2022-09-01 03:12:58.353404
43	手抓饭.png	37	Sku	\N	\N	2022-09-01 03:26:48.717953	2022-09-01 03:28:13.639396
44	飞饼.png	38	Sku	\N	\N	2022-09-01 03:31:14.976926	2022-09-01 03:31:43.302093
45	咖喱鸡饭.png	39	Sku	\N	\N	2022-09-01 03:34:50.51461	2022-09-01 03:36:03.448439
46	咖喱鸡饭.png	40	Sku	\N	\N	2022-09-01 03:38:08.746791	2022-09-01 03:38:18.593933
47	红豆冰.png	41	Sku	\N	\N	2022-09-01 03:39:49.300201	2022-09-01 03:40:36.316843
48	panda_s.png	42	Sku	\N	\N	2022-09-01 06:11:40.391168	2022-09-01 06:12:32.621296
49	pandal.png	43	Sku	\N	\N	2022-09-01 06:21:15.441415	2022-09-01 06:21:40.944299
50	panda_hat_.png	44	Sku	\N	\N	2022-09-01 06:22:45.112822	2022-09-01 06:23:37.52171
51	水獭s.png	45	Sku	\N	\N	2022-09-01 06:31:33.340652	2022-09-01 06:31:51.525683
52	水獭l.png	46	Sku	\N	\N	2022-09-01 06:34:37.045764	2022-09-01 06:35:24.374572
53	shuatabeigreen.png	47	Sku	\N	\N	2022-09-01 06:52:01.778497	2022-09-01 06:52:21.644961
54	水獭杯blue.png	48	Sku	\N	\N	2022-09-01 06:53:40.493578	2022-09-01 06:53:57.120514
55	水獭杯blue.png	\N	\N	\N	\N	2022-09-06 09:12:25.623216	2022-09-06 09:12:25.623216
56	水獭杯blue.png	\N	\N	\N	\N	2022-09-06 09:13:38.020139	2022-09-06 09:13:38.020139
57	水獭杯blue.png	49	Sku	\N	\N	2022-09-06 09:19:24.632832	2022-09-06 09:19:50.639466
58	panda_hat_.png	\N	\N	\N	\N	2022-09-08 03:53:01.404211	2022-09-08 03:53:01.404211
\.


--
-- Data for Name: inventory_dates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory_dates (id, date, price, sku_id, sku_type, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: inventory_timeslots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory_timeslots (id, inventory_date_id, start_time, end_time, quantity, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: mobility_string_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mobility_string_translations (id, locale, key, value, translatable_type, translatable_id, created_at, updated_at) FROM stdin;
6	en	name	Singapore Zoo Gift Shop	Outlet	3	2022-08-31 03:16:08.349509	2022-08-31 03:16:08.349509
7	zh-CN	name	新加坡动物园礼品店	Outlet	3	2022-08-31 03:16:08.35202	2022-08-31 03:16:08.35202
8	en	address	Entrance to Singapore Zoo	Outlet	3	2022-08-31 03:16:08.357813	2022-08-31 03:16:08.357813
9	zh-CN	address	新加坡动物园入口处	Outlet	3	2022-08-31 03:16:08.362355	2022-08-31 03:16:08.362355
15	zh-CN	name	长劲鹿抱枕	Sku	3	2022-08-31 03:30:30.330272	2022-08-31 03:30:30.330272
16	en	name	Zebra Badge	Sku	4	2022-08-31 03:39:26.575935	2022-08-31 03:39:26.575935
17	zh-CN	name	斑马徽章	Sku	4	2022-08-31 03:39:26.578701	2022-08-31 03:39:26.578701
18	en	name	Elephant Keychain	Sku	5	2022-08-31 03:45:21.943514	2022-08-31 03:45:21.943514
19	zh-CN	name	大象钥匙扣	Sku	5	2022-08-31 03:45:21.945257	2022-08-31 03:45:21.945257
14	en	name	Giraffe Pillow M	Sku	3	2022-08-31 03:30:30.327276	2022-08-31 04:24:37.059661
12	en	name	Kangaroo Doll Gery L	Sku	2	2022-08-31 03:25:31.533461	2022-08-31 04:25:41.595617
13	zh-CN	name	大号灰色袋鼠玩偶	Sku	2	2022-08-31 03:25:31.53569	2022-08-31 04:25:41.597796
10	en	name	Kangaroo Doll Brown S	Sku	1	2022-08-31 03:18:10.613901	2022-08-31 04:26:55.789022
11	zh-CN	name	小号棕色袋鼠玩偶	Sku	1	2022-08-31 03:18:10.616315	2022-08-31 04:26:55.790863
20	en	name	KFC	Outlet	4	2022-08-31 06:46:06.48676	2022-08-31 06:46:06.48676
21	zh-CN	name	肯德基	Outlet	4	2022-08-31 06:46:06.495092	2022-08-31 06:46:06.495092
22	en	address	Entrance to Singapore Zoo	Outlet	4	2022-08-31 06:46:06.497445	2022-08-31 06:46:06.497445
23	zh-CN	address	新加坡动物园入口处	Outlet	4	2022-08-31 06:46:06.499787	2022-08-31 06:46:06.499787
26	en	name	Beef Hamburger L	Sku	7	2022-08-31 06:50:11.288449	2022-08-31 06:50:11.288449
28	en	name	Beef Hamburger S	Sku	8	2022-08-31 07:29:23.71858	2022-08-31 07:29:23.71858
29	zh-CN	name	小份牛肉汉堡	Sku	8	2022-08-31 07:29:23.722468	2022-08-31 07:29:23.722468
30	en	name	Ah Meng Restaurant 	Outlet	5	2022-08-31 07:50:17.218549	2022-08-31 07:50:17.218549
31	zh-CN	name	阿明餐厅	Outlet	5	2022-08-31 07:50:17.220852	2022-08-31 07:50:17.220852
32	en	address	Inside the Singapore Zoo	Outlet	5	2022-08-31 07:50:17.224271	2022-08-31 07:50:17.224271
33	zh-CN	address	新加坡动物园区内	Outlet	5	2022-08-31 07:50:17.2268	2022-08-31 07:50:17.2268
27	zh-CN	name	大份牛肉汉堡	Sku	7	2022-08-31 06:50:11.290457	2022-08-31 08:49:16.269329
34	en	name	Coke Large	Sku	9	2022-08-31 08:59:39.233418	2022-08-31 08:59:39.233418
35	zh-CN	name	大份可乐	Sku	9	2022-08-31 08:59:39.236718	2022-08-31 08:59:39.236718
36	en	name	Member Voucher	VoucherSku	1	2022-08-31 09:01:02.418807	2022-08-31 09:01:02.418807
37	zh-CN	name	会员优惠券	VoucherSku	1	2022-08-31 09:01:02.420896	2022-08-31 09:01:02.420896
38	en	name	Ranger Buddy Voucher	VoucherSku	2	2022-08-31 09:02:02.715117	2022-08-31 09:02:02.715117
39	zh-CN	name	游侠好友优惠券	VoucherSku	2	2022-08-31 09:02:02.721244	2022-08-31 09:02:02.721244
40	en	name	Coke Small	Sku	10	2022-08-31 09:02:37.35265	2022-08-31 09:02:37.35265
41	zh-CN	name	小份可乐	Sku	10	2022-08-31 09:02:37.361145	2022-08-31 09:02:37.361145
42	en	name	Family Voucher	VoucherSku	3	2022-08-31 09:04:19.921325	2022-08-31 09:04:19.921325
43	zh-CN	name	家庭优惠券	VoucherSku	3	2022-08-31 09:04:19.925188	2022-08-31 09:04:19.925188
44	en	name	 Fries Large	Sku	11	2022-08-31 09:09:58.570841	2022-08-31 09:09:58.570841
45	zh-CN	name	大份薯条	Sku	11	2022-08-31 09:09:58.573569	2022-08-31 09:09:58.573569
46	en	name	Cash Voucher	VoucherSku	4	2022-08-31 09:11:19.809609	2022-08-31 09:11:19.809609
47	zh-CN	name	现金券	VoucherSku	4	2022-08-31 09:11:19.812112	2022-08-31 09:11:19.812112
48	en	name	Fries Small	Sku	12	2022-08-31 09:14:04.335913	2022-08-31 09:14:04.335913
49	zh-CN	name	小份薯条	Sku	12	2022-08-31 09:14:04.339027	2022-08-31 09:14:04.339027
52	en	name	 Indian Turmeric Rice 	Sku	13	2022-08-31 09:19:13.410406	2022-08-31 09:19:13.410406
53	zh-CN	name	印度黄姜饭	Sku	13	2022-08-31 09:19:13.41323	2022-08-31 09:19:13.41323
54	en	voucher_applicable_name	KFC	VoucherApplicableTarget	1	2022-08-31 09:21:45.052535	2022-08-31 09:21:45.052535
55	en	voucher_applicable_name	Singapore Zoo Gift E-shop	VoucherApplicableTarget	2	2022-08-31 09:21:45.068842	2022-08-31 09:21:45.068842
56	en	name	Hainan Chicken Rice	Sku	14	2022-08-31 09:22:55.014475	2022-08-31 09:22:55.014475
57	zh-CN	name	海南鸡饭	Sku	14	2022-08-31 09:22:55.017572	2022-08-31 09:22:55.017572
58	en	name	Roast Chicken	Sku	15	2022-08-31 09:25:21.828414	2022-08-31 09:25:21.828414
59	zh-CN	name	烤鸡	Sku	15	2022-08-31 09:25:21.831417	2022-08-31 09:25:21.831417
60	en	name	Grapefruit Guice	Sku	16	2022-08-31 09:29:35.475587	2022-08-31 09:29:35.475587
61	zh-CN	name	鲜榨西柚汁	Sku	16	2022-08-31 09:29:35.477764	2022-08-31 09:29:35.477764
62	en	name	Grape Guice	Sku	17	2022-08-31 09:33:24.162354	2022-08-31 09:33:24.162354
63	zh-CN	name	鲜榨葡萄汁	Sku	17	2022-08-31 09:33:24.164336	2022-08-31 09:33:24.164336
64	en	name	Feather House Gift Shop	Outlet	6	2022-08-31 14:27:39.413988	2022-08-31 14:27:39.413988
65	zh-CN	name	羽毛屋礼品店	Outlet	6	2022-08-31 14:27:39.416737	2022-08-31 14:27:39.416737
66	en	address	Bird Park Entrance	Outlet	6	2022-08-31 14:27:39.41851	2022-08-31 14:27:39.41851
67	zh-CN	address	飞禽公园入口	Outlet	6	2022-08-31 14:27:39.420326	2022-08-31 14:27:39.420326
71	zh-CN	name	大号火烈鸟体恤衫	Sku	19	2022-08-31 14:39:15.64173	2022-08-31 14:39:15.64173
69	zh-CN	name	小号火烈鸟T恤衫	Sku	18	2022-08-31 14:35:07.881687	2022-08-31 14:39:37.544516
72	en	name	Flamingo Water Cup	Sku	20	2022-08-31 15:07:26.669856	2022-08-31 15:07:26.669856
73	zh-CN	name	火烈鸟水杯	Sku	20	2022-08-31 15:07:26.672376	2022-08-31 15:07:26.672376
68	en	name	Flamingo T-Shirt Pink S	Sku	18	2022-08-31 14:35:07.880248	2022-09-01 01:08:05.7235
70	en	name	Flamingo T-Shirt Pink L	Sku	19	2022-08-31 14:39:15.639974	2022-09-01 01:08:42.214522
74	en	name	Penguin Doll S	Sku	21	2022-09-01 01:13:58.256667	2022-09-01 01:13:58.256667
76	en	name	 Penguin Doll M	Sku	22	2022-09-01 01:16:16.796036	2022-09-01 01:16:16.796036
77	zh-CN	name	中号企鹅玩偶	Sku	22	2022-09-01 01:16:16.797689	2022-09-01 01:16:16.797689
75	zh-CN	name	小号企鹅玩偶	Sku	21	2022-09-01 01:13:58.259068	2022-09-01 01:16:38.784395
78	en	name	Penguin Doll L	Sku	23	2022-09-01 01:18:14.419043	2022-09-01 01:18:14.419043
79	zh-CN	name	大号企鹅玩偶	Sku	23	2022-09-01 01:18:14.420931	2022-09-01 01:18:14.420931
80	en	name	Parrot Doll Blue L	Sku	24	2022-09-01 01:24:47.960402	2022-09-01 01:24:47.960402
81	zh-CN	name	大号蓝色鹦鹉玩偶	Sku	24	2022-09-01 01:24:47.962407	2022-09-01 01:24:47.962407
82	en	name	 Parrot Doll Red M	Sku	25	2022-09-01 01:26:40.567132	2022-09-01 01:26:40.567132
83	zh-CN	name	中号红色鹦鹉玩偶	Sku	25	2022-09-01 01:26:40.569478	2022-09-01 01:26:40.569478
84	en	name	 Parrot Doll White S	Sku	26	2022-09-01 01:28:10.634743	2022-09-01 01:28:10.634743
85	zh-CN	name	小号白色鹦鹉玩偶	Sku	26	2022-09-01 01:28:10.636555	2022-09-01 01:28:10.636555
86	en	name	Pizza Hut 	Outlet	7	2022-09-01 01:56:01.447869	2022-09-01 01:56:01.447869
87	zh-CN	name	必胜客	Outlet	7	2022-09-01 01:56:01.451073	2022-09-01 01:56:01.451073
88	en	address	Inside Jurong Bird Park	Outlet	7	2022-09-01 01:56:01.453554	2022-09-01 01:56:01.453554
89	zh-CN	address	裕廊飞禽公园内	Outlet	7	2022-09-01 01:56:01.455469	2022-09-01 01:56:01.455469
90	en	name	Tomato Pasta	Sku	27	2022-09-01 02:04:40.738435	2022-09-01 02:04:40.738435
91	zh-CN	name	番茄意大利面	Sku	27	2022-09-01 02:04:40.740721	2022-09-01 02:04:40.740721
92	en	name	Vanilla Anchovy Shrimp	Sku	28	2022-09-01 02:07:50.073795	2022-09-01 02:07:50.073795
93	zh-CN	name	香草凤尾虾	Sku	28	2022-09-01 02:07:50.076086	2022-09-01 02:07:50.076086
94	en	name	Durian Pizza S	Sku	29	2022-09-01 02:11:42.753095	2022-09-01 02:11:42.753095
96	en	name	Durian Pizza L	Sku	30	2022-09-01 02:14:12.954876	2022-09-01 02:14:12.954876
97	zh-CN	name	大号榴莲披萨	Sku	30	2022-09-01 02:14:12.959607	2022-09-01 02:14:12.959607
95	zh-CN	name	小号榴莲披萨	Sku	29	2022-09-01 02:11:42.75612	2022-09-01 02:14:30.452826
98	en	name	Seafood Pizza S	Sku	31	2022-09-01 02:18:45.137135	2022-09-01 02:18:45.137135
99	zh-CN	name	小号海鲜披萨	Sku	31	2022-09-01 02:18:45.139847	2022-09-01 02:18:45.139847
100	en	name	Seafood Pizza L	Sku	32	2022-09-01 02:20:24.074882	2022-09-01 02:20:24.074882
101	zh-CN	name	大号海鲜披萨	Sku	32	2022-09-01 02:20:24.076852	2022-09-01 02:20:24.076852
102	en	name	Black Pepper Steak	Sku	33	2022-09-01 02:23:36.346334	2022-09-01 02:23:36.346334
103	zh-CN	name	黑椒牛排	Sku	33	2022-09-01 02:23:36.348987	2022-09-01 02:23:36.348987
104	en	name	Night Safari Gift Shop	Outlet	8	2022-09-01 02:41:03.109816	2022-09-01 02:41:03.109816
105	zh-CN	name	夜间野生动物园礼品店	Outlet	8	2022-09-01 02:41:03.114728	2022-09-01 02:41:03.114728
106	en	address	Night Safari Entrance	Outlet	8	2022-09-01 02:41:03.119123	2022-09-01 02:41:03.119123
107	zh-CN	address	野生动物园入口	Outlet	8	2022-09-01 02:41:03.12345	2022-09-01 02:41:03.12345
108	en	name	Lion Toy L	Sku	34	2022-09-01 02:49:30.218487	2022-09-01 02:49:30.218487
110	en	name	Lion Toy S	Sku	35	2022-09-01 02:52:42.626009	2022-09-01 02:52:42.626009
111	zh-CN	name	小号狮子玩具	Sku	35	2022-09-01 02:52:42.627704	2022-09-01 02:52:42.627704
109	zh-CN	name	大号狮子玩具	Sku	34	2022-09-01 02:49:30.220458	2022-09-01 02:53:00.296232
112	en	name	Lion Toy M	Sku	36	2022-09-01 03:12:58.324224	2022-09-01 03:12:58.324224
113	zh-CN	name	中号狮子玩具	Sku	36	2022-09-01 03:12:58.327892	2022-09-01 03:12:58.327892
114	en	name	Ulu Ulu Wild Restaurant	Outlet	9	2022-09-01 03:24:01.782166	2022-09-01 03:24:01.782166
115	zh-CN	name	乌鲁乌鲁野生餐厅	Outlet	9	2022-09-01 03:24:01.792175	2022-09-01 03:24:01.792175
116	en	address	Night Safari Entrance	Outlet	9	2022-09-01 03:24:01.794031	2022-09-01 03:24:01.794031
117	zh-CN	address	夜间野生动物园入口	Outlet	9	2022-09-01 03:24:01.795974	2022-09-01 03:24:01.795974
118	en	name	Indian Pilaf	Sku	37	2022-09-01 03:28:13.623703	2022-09-01 03:28:13.623703
119	zh-CN	name	印度手抓饭	Sku	37	2022-09-01 03:28:13.626735	2022-09-01 03:28:13.626735
120	en	name	Indian Pancakes	Sku	38	2022-09-01 03:31:43.284721	2022-09-01 03:31:43.284721
121	zh-CN	name	印度飞饼	Sku	38	2022-09-01 03:31:43.28934	2022-09-01 03:31:43.28934
122	en	name	Curry Chicken Rice S	Sku	39	2022-09-01 03:36:03.420254	2022-09-01 03:36:03.420254
123	zh-CN	name	小份咖喱鸡肉饭	Sku	39	2022-09-01 03:36:03.422294	2022-09-01 03:36:03.422294
124	en	name	Curry Chicken Rices L	Sku	40	2022-09-01 03:38:18.579401	2022-09-01 03:38:18.579401
125	zh-CN	name	大份咖喱鸡肉饭	Sku	40	2022-09-01 03:38:18.581716	2022-09-01 03:38:18.581716
126	en	name	Red Bean Ice	Sku	41	2022-09-01 03:40:36.297729	2022-09-01 03:40:36.297729
127	zh-CN	name	红豆冰	Sku	41	2022-09-01 03:40:36.30011	2022-09-01 03:40:36.30011
128	en	name	River Wonders Gift Shop	Outlet	10	2022-09-01 06:00:52.723462	2022-09-01 06:00:52.723462
129	zh-CN	name	河川生态园礼品店	Outlet	10	2022-09-01 06:00:52.725391	2022-09-01 06:00:52.725391
130	en	address	Inside River Wonders	Outlet	10	2022-09-01 06:00:52.726741	2022-09-01 06:00:52.726741
131	zh-CN	address	河川生态园内	Outlet	10	2022-09-01 06:00:52.728058	2022-09-01 06:00:52.728058
132	en	name	Panda Doll S	Sku	42	2022-09-01 06:12:32.604418	2022-09-01 06:12:32.604418
133	zh-CN	name	小号熊猫玩偶	Sku	42	2022-09-01 06:12:32.606715	2022-09-01 06:12:32.606715
134	en	name	Education Voucher	VoucherSku	6	2022-09-01 06:17:03.064259	2022-09-01 06:17:03.064259
135	zh-CN	name	教育券	VoucherSku	6	2022-09-01 06:17:03.0666	2022-09-01 06:17:03.0666
136	en	name	Panda Doll L	Sku	43	2022-09-01 06:21:40.924359	2022-09-01 06:21:40.924359
137	zh-CN	name	大号熊猫玩具	Sku	43	2022-09-01 06:21:40.926348	2022-09-01 06:21:40.926348
138	en	name	Panda Hat	Sku	44	2022-09-01 06:23:37.48193	2022-09-01 06:23:37.48193
139	zh-CN	name	熊猫帽子	Sku	44	2022-09-01 06:23:37.491996	2022-09-01 06:23:37.491996
140	en	name	Otter Doll S	Sku	45	2022-09-01 06:31:51.507564	2022-09-01 06:31:51.507564
141	zh-CN	name	小号水獭公仔	Sku	45	2022-09-01 06:31:51.509628	2022-09-01 06:31:51.509628
142	en	name	Holiday Voucher	VoucherSku	7	2022-09-01 06:34:23.226082	2022-09-01 06:34:23.226082
143	zh-CN	name	节日券	VoucherSku	7	2022-09-01 06:34:23.227802	2022-09-01 06:34:23.227802
144	en	name	Otter Doll L	Sku	46	2022-09-01 06:35:24.341469	2022-09-01 06:35:24.341469
145	zh-CN	name	大号水獭公仔	Sku	46	2022-09-01 06:35:24.345252	2022-09-01 06:35:24.345252
146	en	name	Brand Voucher	VoucherSku	8	2022-09-01 06:35:50.836624	2022-09-01 06:35:50.836624
147	zh-CN	name	品牌券	VoucherSku	8	2022-09-01 06:35:50.849466	2022-09-01 06:35:50.849466
148	en	name	Otter Cup Green	Sku	47	2022-09-01 06:52:21.618505	2022-09-01 06:52:21.618505
149	zh-CN	name	绿色水獭杯子	Sku	47	2022-09-01 06:52:21.621065	2022-09-01 06:52:21.621065
150	en	name	Otter Cup Blue	Sku	48	2022-09-01 06:53:57.088686	2022-09-01 06:53:57.088686
151	zh-CN	name	蓝色水獭杯	Sku	48	2022-09-01 06:53:57.093662	2022-09-01 06:53:57.093662
153	zh-CN	name	折扣券	VoucherSku	9	2022-09-01 09:02:36.438826	2022-09-01 09:02:36.438826
152	en	name	Discount Voucher	VoucherSku	9	2022-09-01 09:02:36.436939	2022-09-01 09:03:11.344617
\.


--
-- Data for Name: mobility_text_translations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mobility_text_translations (id, locale, key, value, translatable_type, translatable_id, created_at, updated_at) FROM stdin;
1	en	short_desc	Stop by any of our gift shops and buy a few as souvenirs for your visit to the Singapore Zoo. 	Outlet	3	2022-08-31 03:16:08.364605	2022-08-31 03:16:08.364605
2	zh-CN	short_desc	到我们的任何一家礼品店逛逛，买几个可作为游览新加坡动物园的纪念礼品。	Outlet	3	2022-08-31 03:16:08.367438	2022-08-31 03:16:08.367438
3	en	desc	You can add S$1.00 for a small reusable non-woven shopping bag or S$1.50 for a medium shopping bag before payment. Your little effort will help reduce plastic waste and fund our wildlife conservation efforts in the region	Outlet	3	2022-08-31 03:16:08.372491	2022-08-31 03:16:08.372491
4	zh-CN	desc	付款前您可以添加新币$1.00购买可重复使用的小号非编织购物袋，或添加新币$1.50购买一个中号购物袋。您的举手之劳将帮助减少塑料废弃物，并且资助我们在该区域的野生动物保育工作	Outlet	3	2022-08-31 03:16:08.374697	2022-08-31 03:16:08.374697
5	en	short_desc	With a casual atmosphere and a variety of food to choose from, Ah Meng Restaurant is the perfect food stop. 	Outlet	5	2022-08-31 07:50:17.229026	2022-08-31 07:50:17.229026
6	zh-CN	short_desc	轻松惬意的就餐氛围，琳琅满目的美食选择，让阿明餐厅成为理想的就餐地点。	Outlet	5	2022-08-31 07:50:17.230698	2022-08-31 07:50:17.230698
7	en	desc	Enjoy local and western delights such as chicken rice, BBQ Half Spring Chicken, briyani and more!	Outlet	5	2022-08-31 07:50:17.232469	2022-08-31 07:50:17.232469
8	zh-CN	desc	中西经典美食如鸡饭、烧烤童子鸡、印度黄姜饭等一应俱全	Outlet	5	2022-08-31 07:50:17.234408	2022-08-31 07:50:17.234408
9	en	short_desc	Shop for bird-themed plush toys and other meaningful souvenirs like dolls and t-shirts.	Outlet	6	2022-08-31 14:27:39.421897	2022-09-01 01:35:00.207954
10	zh-CN	short_desc	选购飞禽主题的毛绒玩具以及其他意义非凡的纪念品，例如玩偶和T恤。	Outlet	6	2022-08-31 14:27:39.423743	2022-09-01 01:35:00.210078
11	en	desc	Pizza Hut has dozens of delicious pizzas, and the waiting time for a freshly baked pizza is never more than 15 minutes, and the pizzas you taste everywhere are exactly the same.	Outlet	7	2022-09-01 01:56:01.457469	2022-09-01 01:56:01.457469
12	zh-CN	desc	必胜客的美味比萨有数十种之多，而等待一份比萨新鲜出炉的时间永远不会超过15分钟，并且你在各地的必胜客，品尝到的比萨口味都完全一致。	Outlet	7	2022-09-01 01:56:01.45932	2022-09-01 01:56:01.45932
13	en	short_desc	Night Safari shopping options are dazzling, and bring home the unique plush animals of the night! Plus, buy chocolates, cookies, and local favorite kaya as souvenirs at the Village Shop.	Outlet	8	2022-09-01 02:41:03.128222	2022-09-01 02:41:03.128222
14	zh-CN	short_desc	夜间野生动物园购物选择琳琅满目，将独特的夜间动物毛绒玩具带回家！此外，还可以在 Village Shop 购买巧克力、饼干和当地最受欢迎的咖椰酱等食品作为纪念。	Outlet	8	2022-09-01 02:41:03.144666	2022-09-01 02:41:03.144666
15	en	desc	Enjoy Singapore's favourites such as chicken rice, pilaf, roti chicken and red bean ice in a charming rural setting. This is a dining experience full of warmth and nostalgia, perfect to start or end an unforgettable evening.	Outlet	9	2022-09-01 03:24:01.797764	2022-09-01 03:24:01.797764
16	zh-CN	desc	在迷人的乡村环境中享用新加坡最受欢迎的美食，如鸡饭、印度手抓饭、印度式烤鸡和红豆冰等。这是一个充满温暖和怀旧的用餐体验，绝对是开始或结束一个难忘夜晚的完美选择。	Outlet	9	2022-09-01 03:24:01.799918	2022-09-01 03:24:01.799918
17	en	short_desc	Don't forget to stop by our gift shop and bring some beautiful and meaningful keepsakes for your loved ones or for yourself.	Outlet	10	2022-09-01 06:00:52.729712	2022-09-01 06:00:52.729712
18	zh-CN	short_desc	别忘了到我们的礼品店逛一逛，为您的亲人或为自己带上几件漂亮且富有意义的纪念品。	Outlet	10	2022-09-01 06:00:52.731384	2022-09-01 06:00:52.731384
\.


--
-- Data for Name: outlet_skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.outlet_skus (id, outlet_id, sku_id, quantity, reserved_quantity, allocated_quantity, deleted_at, created_at, updated_at) FROM stdin;
2	3	2	1000	0	0	\N	2022-08-31 03:25:31.538241	2022-08-31 03:25:31.538241
3	3	3	500	0	0	\N	2022-08-31 03:30:30.33445	2022-08-31 03:30:30.33445
4	3	4	2000	0	0	\N	2022-08-31 03:39:26.582531	2022-08-31 03:39:26.582531
5	3	5	2000	0	0	\N	2022-08-31 03:45:21.949032	2022-08-31 03:45:21.949032
6	4	7	200	0	0	\N	2022-08-31 06:50:11.292168	2022-08-31 06:50:11.292168
7	4	8	200	0	0	\N	2022-08-31 07:29:23.726165	2022-08-31 07:29:23.726165
8	4	9	1000	0	0	\N	2022-08-31 08:59:39.23903	2022-08-31 08:59:39.23903
9	4	10	500	0	0	\N	2022-08-31 09:02:37.363127	2022-08-31 09:02:37.363127
10	4	11	500	0	0	\N	2022-08-31 09:09:58.576186	2022-08-31 09:09:58.576186
11	4	12	200	0	0	\N	2022-08-31 09:14:04.341385	2022-08-31 09:14:04.341385
12	5	13	100	0	0	\N	2022-08-31 09:19:13.416068	2022-08-31 09:19:13.416068
13	5	14	100	0	0	\N	2022-08-31 09:22:55.020233	2022-08-31 09:22:55.020233
14	5	15	50	0	0	\N	2022-08-31 09:25:21.834048	2022-08-31 09:25:21.834048
15	5	16	50	0	0	\N	2022-08-31 09:29:35.480215	2022-08-31 09:29:35.480215
16	5	17	50	0	0	\N	2022-08-31 09:33:24.166295	2022-08-31 09:33:24.166295
17	6	18	500	0	0	\N	2022-08-31 14:35:07.883226	2022-08-31 14:35:07.883226
18	6	19	500	0	0	\N	2022-08-31 14:39:15.643469	2022-08-31 14:39:15.643469
19	6	20	100	0	0	\N	2022-08-31 15:07:26.674364	2022-08-31 15:07:26.674364
20	6	21	100	0	0	\N	2022-09-01 01:13:58.261541	2022-09-01 01:13:58.261541
21	6	22	100	0	0	\N	2022-09-01 01:16:16.799358	2022-09-01 01:16:16.799358
22	6	23	100	0	0	\N	2022-09-01 01:18:14.422809	2022-09-01 01:18:14.422809
23	6	24	50	0	0	\N	2022-09-01 01:24:47.964369	2022-09-01 01:24:47.964369
24	6	25	50	0	0	\N	2022-09-01 01:26:40.572436	2022-09-01 01:26:40.572436
25	6	26	50	0	0	\N	2022-09-01 01:28:10.638524	2022-09-01 01:28:10.638524
26	7	27	100	0	0	\N	2022-09-01 02:04:40.742893	2022-09-01 02:04:40.742893
27	7	28	50	0	0	\N	2022-09-01 02:07:50.077864	2022-09-01 02:07:50.077864
28	7	29	50	0	0	\N	2022-09-01 02:11:42.759232	2022-09-01 02:11:42.759232
29	7	30	50	0	0	\N	2022-09-01 02:14:12.963317	2022-09-01 02:14:12.963317
30	7	31	100	0	0	\N	2022-09-01 02:18:45.142956	2022-09-01 02:18:45.142956
31	7	32	50	0	0	\N	2022-09-01 02:20:24.079936	2022-09-01 02:20:24.079936
32	7	33	100	0	0	\N	2022-09-01 02:23:36.35243	2022-09-01 02:23:36.35243
33	8	34	100	0	0	\N	2022-09-01 02:49:30.222731	2022-09-01 02:49:30.222731
34	8	35	100	0	0	\N	2022-09-01 02:52:42.629624	2022-09-01 02:52:42.629624
35	8	36	50	0	0	\N	2022-09-01 03:12:58.338856	2022-09-01 03:12:58.338856
36	9	37	30	0	0	\N	2022-09-01 03:28:13.62871	2022-09-01 03:28:13.62871
37	9	38	30	0	0	\N	2022-09-01 03:31:43.292081	2022-09-01 03:31:43.292081
38	9	39	30	0	0	\N	2022-09-01 03:36:03.434508	2022-09-01 03:36:03.434508
39	9	40	30	0	0	\N	2022-09-01 03:38:18.583825	2022-09-01 03:38:18.583825
40	9	41	30	0	0	\N	2022-09-01 03:40:36.302253	2022-09-01 03:40:36.302253
41	10	42	100	0	0	\N	2022-09-01 06:12:32.609025	2022-09-01 06:12:32.609025
42	10	43	100	0	0	\N	2022-09-01 06:21:40.928469	2022-09-01 06:21:40.928469
43	10	44	100	0	0	\N	2022-09-01 06:23:37.495125	2022-09-01 06:23:37.495125
44	10	45	50	0	0	\N	2022-09-01 06:31:51.51168	2022-09-01 06:31:51.51168
45	10	46	100	0	0	\N	2022-09-01 06:35:24.353838	2022-09-01 06:35:24.353838
46	10	47	100	0	0	\N	2022-09-01 06:52:21.626511	2022-09-01 06:52:21.626511
47	10	48	100	0	0	\N	2022-09-01 06:53:57.096619	2022-09-01 06:53:57.096619
48	3	48	0	0	0	\N	2022-09-06 08:12:03.933387	2022-09-06 09:09:30.369845
50	3	44	200	0	0	\N	2022-09-08 03:56:37.36045	2022-09-08 03:56:37.36045
51	3	50	10	0	0	\N	2022-09-08 06:19:17.585426	2022-09-08 06:19:17.585426
1	3	1	100	0	0	\N	2022-08-31 03:18:25.65093	2022-09-08 06:53:28.755721
49	10	49	100	0	0	\N	2022-09-06 09:19:50.57965	2022-09-09 09:15:36.678597
52	7	52	222	0	0	\N	2022-09-13 03:05:59.539341	2022-09-13 03:05:59.539341
54	7	50	100	0	0	\N	2022-09-13 06:21:01.733323	2022-09-13 06:21:01.733323
53	10	50	102	0	0	\N	2022-09-13 06:20:01.586502	2022-09-13 06:27:23.917046
55	6	50	4	0	0	\N	2022-09-13 06:28:17.132951	2022-09-13 06:28:54.251298
\.


--
-- Data for Name: outlets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.outlets (id, master_outlet_ref, name, address, short_desc, "desc", operation_time_start, operation_time_end, phone_number, whatsapp_number, email, deleted_at, created_at, updated_at) FROM stdin;
1	ns-retail-gs	\N	\N	\N	\N	\N	\N				2022-08-30 03:13:41.618521	2022-08-30 03:11:47.706491	2022-08-30 03:13:41.618533
2		\N	\N	\N	\N	\N	\N				2022-08-31 03:12:31.202811	2022-08-31 03:12:25.19921	2022-08-31 03:12:31.202822
7	BP-F&B-PH	{"en": "Pizza Hut", "zh-CN": "必胜客"}	{"en": "Jurong Bird Park Entrance", "zh-CN": "裕廊飞禽公园入口处"}	{}	{}	2022-09-09 00:30:00	2022-09-09 04:30:00	0000000	898000	PH@FOOYO.SG	\N	2022-09-01 01:56:01.439079	2022-09-09 01:51:07.761052
6	BP-Retail-GS	{"en": "Jurong Bird Park Gift Shop", "zh-CN": "裕廊飞禽公园礼品店"}	{"en": "Jurong Bird Park Entrance", "zh-CN": "裕廊飞禽公园入口处"}	{}	{}	2022-09-08 17:31:00	2022-09-08 23:31:00	334455	345345	fhgs@fooyo.sg	\N	2022-08-31 14:27:39.404321	2022-09-09 01:51:17.683578
5	SZ-F&B- Restaurant 	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	{"en": "Entrance to Singapore Zoo", "zh-CN": "新加坡动物园入口处"}	{}	{}	2022-09-09 01:30:00	2022-09-09 10:30:00			szamr@fooyo.sg	\N	2022-08-31 07:50:17.210859	2022-09-09 01:51:36.411468
4	SZ-F&B-Restaurant 	{"en": "KFC", "zh-CN": "肯德基"}	{"en": "Inside the Singapore Zoo", "zh-CN": "新加坡动物园内"}	{}	{}	2022-09-09 01:00:00	2022-09-09 05:00:00	223344	234234	szkfc@fooyo.sg	\N	2022-08-31 06:46:06.480064	2022-09-09 01:51:53.407319
3	SZ-Retail-GS	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	{"en": "Entrance to Singapore Zoo", "zh-CN": "新加坡动物园入口处"}	{"en": "Here you can buy Singapore Zoo souvenirs", "zh-CN": "在这里你可以购买新加坡动物园纪念品"}	{"en": "If you love animals, welcome to buy our products", "zh-CN": "如果您喜爱动物，欢迎购买我店产品"}	2022-09-09 00:00:00	2022-09-09 10:00:00	11223344	12341234	szgs@fooyo.sg	\N	2022-08-31 03:16:08.339126	2022-09-09 01:52:14.956586
10	RW-Retail-GS	{"en": "Rriver Wonders Gift Shop", "zh-CN": "河川生态公园礼品店"}	{"en": "Inside the Rriver Wonders", "zh-CN": "河川公园内"}	{"en": "Here you can buy special souvenirs in the Rriver Wonders", "zh-CN": "在这里你可以购买河川生态公园内的特色纪念品"}	{}	2022-09-09 01:00:00	2022-09-09 12:00:00	890890	8899900	rwgs@fooyo.sg	\N	2022-09-01 06:00:52.717072	2022-09-09 01:50:24.161605
9	NS-F&B-UU	{"en": "Ulu Ulu Wild Restaurant", "zh-CN": "乌鲁乌鲁野生餐厅"}	{"en": "Entrance to Night Safari", "zh-CN": "夜间野生动物园入口处"}	{}	{}	2022-09-09 06:30:00	2022-09-09 14:24:00	789789	778899	uuwr@fooyo.sg	\N	2022-09-01 03:24:01.775915	2022-09-09 01:50:37.75291
8	NS-Retail-GS	{"en": "Night Safari Gift Shop", "zh-CN": "夜间野生动物园纪念品店"}	{"en": "Inside the Night Safari", "zh-CN": "夜间野生动物园内"}	{}	{}	2022-09-09 07:27:00	2022-09-09 14:27:00	556677	567567	nsgs@fooyo.sg	\N	2022-09-01 02:41:03.084095	2022-09-09 01:50:52.521993
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20220802021021
20220802021028
20220802021034
20220802021044
20220802021052
20220802021119
20220802021131
20220802021203
20220802021222
20220802021232
20220809030832
20220906071336
\.


--
-- Data for Name: skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.skus (id, master_sku_ref, name, recommended_price, cost_price, deleted_at, created_at, updated_at) FROM stdin;
6	mf-xx-beef-ramen	\N	28.80	3.10	2022-09-01 07:09:10.105254	2022-08-31 06:46:28.428735	2022-09-01 07:09:10.105263
15	SZ-AMR-Roast Chicken-A	{"en": "Roast Chicken", "zh-CN": "烤鸡"}	20.00	10.00	\N	2022-08-31 09:25:21.823007	2022-09-09 07:22:51.10443
35	NS-GS-Lion Toy-S	{"en": "Small Lion Toy", "zh-CN": "小号狮子玩具"}	12.00	10.00	\N	2022-09-01 02:52:42.620567	2022-09-06 10:13:30.053469
16	SZ-AMR-Grapefruit Guice-A	{"en": "Grapefruit Guice", "zh-CN": "鲜榨西柚汁"}	3.00	2.00	\N	2022-08-31 09:29:35.469132	2022-09-09 07:23:20.258536
17	SZ-AMR-Grape Guice-A	{"en": "Grape Guice", "zh-CN": "鲜榨葡萄汁"}	4.00	3.00	\N	2022-08-31 09:33:24.157862	2022-09-09 07:23:42.82002
27	BP-PH-Tomato Pasta-A	{"en": "Tomato Pasta", "zh-CN": "番茄意面"}	10.00	8.00	\N	2022-09-01 02:04:40.730046	2022-09-09 07:24:24.990792
18	BP-FHGS-Flamingo T-Shirt-P-S	{"en": "Small Flamingo T-Shirt", "zh-CN": "小号火烈鸟体恤衫"}	10.00	5.50	\N	2022-08-31 14:35:07.87464	2022-09-06 09:49:57.307087
50	12345	{"en": "test", "zh-CN": "测试"}	15.00	10.00	\N	2022-09-08 06:19:17.563266	2022-09-08 06:19:17.563266
2	SZ-GS-Kangaroo Doll-Gr-L	{"en": "Grey Large Kangaroo Doll", "zh-CN": "灰色大号袋鼠玩偶"}	11.00	5.00	\N	2022-08-31 03:25:31.527628	2022-09-06 08:18:56.785302
19	BP-FHGS-Flamingo T-Shirt-P-L	{"en": "Large Flamingo T-Shirt", "zh-CN": "大号火烈鸟体恤衫"}	10.00	5.50	\N	2022-08-31 14:39:15.63464	2022-09-06 09:50:41.129949
5	SZ-GS-Elephant Keychain-G-A	{"en": "Elephant Keychain", "zh-CN": "大象钥匙扣"}	5.00	2.00	\N	2022-08-31 03:45:21.936837	2022-09-09 06:25:53.088081
13	SZ-AMR- Indian Turmeric Rice-A	{"en": "Indian Turmeric Rice", "zh-CN": "印度黄姜炒饭"}	10.00	8.00	\N	2022-08-31 09:19:13.404008	2022-09-09 07:18:54.796275
48	RW-GS-Otter Cup-Bl	{"en": "Blue Otter Cup ", "zh-CN": "蓝色水獭杯"}	40.00	20.00	2022-09-06 09:10:46.044582	2022-09-01 06:53:57.07657	2022-09-06 09:10:46.044601
49	RW-GS-Otter Cup-Bl-A	{"en": "Blue Otter Cup", "zh-CN": "蓝色水獭杯"}	20.00	10.00	\N	2022-09-06 09:19:50.570469	2022-09-09 07:28:31.9829
7	SZ-KFC-Beef Hamburger-L	{"en": "Large Beef Burger", "zh-CN": "大号牛肉汉堡"}	15.00	10.00	\N	2022-08-31 06:50:11.280645	2022-09-06 09:37:41.293443
8	SZ-KFC-Beef Hamburger-S	{"en": "Small Beef Burger", "zh-CN": "小份牛肉汉堡"}	10.00	8.00	\N	2022-08-31 07:29:23.711314	2022-09-06 09:38:26.908212
28	BP-PH-Vanilla Anchovy Shrimp-A	{"en": "Vanilla Anchovy Shrimp", "zh-CN": "香草凤尾虾"}	3.60	2.50	\N	2022-09-01 02:07:50.067805	2022-09-09 07:26:09.148449
10	SZ-KFC-Coke-S	{"en": "Small Coke", "zh-CN": "小杯可乐"}	2.00	1.00	\N	2022-08-31 09:02:37.346324	2022-09-06 09:40:36.764046
11	SZ-GS- Fries-L	{"en": "Large Fries", "zh-CN": "大份薯条"}	4.00	2.00	\N	2022-08-31 09:09:58.565574	2022-09-06 09:42:01.091314
9	SZ-KFC-Coke-L	{"en": "Large Coke", "zh-CN": "大杯可乐"}	5.00	2.00	\N	2022-08-31 08:59:39.227858	2022-09-06 09:42:14.592942
4	SZ-GS-Zebra Badge-O-A	{"en": "Zebra Badge", "zh-CN": "斑马徽章"}	5.00	2.00	\N	2022-08-31 03:39:26.569512	2022-09-09 06:21:59.096645
14	SZ-AMR-Hainan Chicken Rice-A	{"en": "Hainan Chicken Rice", "zh-CN": "海南鸡肉饭"}	8.00	5.00	\N	2022-08-31 09:22:55.007793	2022-09-09 07:19:16.575968
21	BP-FHGS-Penguin Doll-S	{"en": "Small Penguin Doll", "zh-CN": "小号企鹅公仔"}	5.00	4.50	\N	2022-09-01 01:13:58.249622	2022-09-06 10:00:05.972374
22	BP-FHGS-Penguin Doll-M	{"en": "Medium Penguin Doll", "zh-CN": "中号企鹅公仔"}	6.00	5.00	\N	2022-09-01 01:16:16.791007	2022-09-06 10:02:16.673063
23	BP-FHGS-Penguin Doll-L	{"en": "Large Penguin Doll", "zh-CN": "大号企鹅公仔"}	8.00	6.00	\N	2022-09-01 01:18:14.413016	2022-09-06 10:02:50.739618
24	BP-FHGS-Parrot Doll-B-L	{"en": "Large Blue Parrot Doll", "zh-CN": "大号蓝色鹦鹉玩偶"}	10.00	8.00	\N	2022-09-01 01:24:47.954557	2022-09-06 10:04:45.602512
25	BP-FHGS-Parrot Doll-R-M	{"en": "Medium Red Parrot Doll", "zh-CN": "中号红色鹦鹉玩偶"}	9.00	7.00	\N	2022-09-01 01:26:40.556956	2022-09-06 10:05:46.584817
26	BP-FHGS-Parrot Doll-W-S	{"en": "Small White Parrot Doll", "zh-CN": "小号白色鹦鹉玩偶"}	6.00	5.00	\N	2022-09-01 01:28:10.627032	2022-09-06 10:06:45.008377
20	BP-FHGS-Flamingo Water Cup-A	{"en": "Flamingo Water Cup", "zh-CN": "火烈鸟水杯"}	10.00	6.00	\N	2022-08-31 15:07:26.664506	2022-09-09 07:25:49.237358
46	RW-GS-Otter Doll-L	{"en": "Large Otter Doll", "zh-CN": "大号水獭公仔"}	25.00	20.00	\N	2022-09-01 06:35:24.309354	2022-09-06 10:07:42.765306
45	RW-GS-Otter Doll-S	{"en": "Small Otter Doll", "zh-CN": "小号水獭公仔"}	18.80	12.00	\N	2022-09-01 06:31:51.501148	2022-09-06 10:08:13.626054
47	RW-GS-Otter Cup-Gr-A	{"en": "Green Otter Cup", "zh-CN": "绿色水獭杯"}	40.00	20.00	\N	2022-09-01 06:52:21.609662	2022-09-09 07:28:21.146296
43	RW-GS-Panda Doll-L	{"en": "Large Panda Doll", "zh-CN": "大号熊猫玩具"}	25.00	20.00	\N	2022-09-01 06:21:40.911358	2022-09-06 10:09:14.009147
42	RW-GS-Panda Doll-S	{"en": "Small Panda Doll", "zh-CN": "小号熊猫玩具"}	20.00	10.00	\N	2022-09-01 06:12:32.598998	2022-09-06 10:09:47.430977
44	RW-GS-Panda Hat-A	{"en": "Panda Hat", "zh-CN": "熊猫帽"}	12.50	10.00	\N	2022-09-01 06:23:37.450002	2022-09-09 07:27:46.697872
40	NS-UUR-Curry Chicken Rices-L	{"en": "Large Curry Chicken Rices", "zh-CN": "大份咖喱鸡肉饭"}	12.00	10.00	\N	2022-09-01 03:38:18.570611	2022-09-06 10:10:53.684452
39	 NS-UUR-Curry Chicken Rices-S	{"en": "Small Curry Chicken Rices", "zh-CN": "小份咖喱鸡肉饭"}	8.00	6.00	\N	2022-09-01 03:36:03.408058	2022-09-06 10:11:21.77017
38	NS-UUR-Indian Pancakes-A	{"en": "Indian Pancakes", "zh-CN": "印度甩饼"}	5.00	2.00	\N	2022-09-01 03:31:43.278562	2022-09-09 07:27:03.114245
41	NS-UUR-Red Bean Ice-A	{"en": "Red Bean Ice", "zh-CN": "红豆冰"}	3.00	1.11	\N	2022-09-01 03:40:36.291998	2022-09-09 07:27:22.892818
36	 NS-GS-Lion Toy-M	{"en": "Medium Lion Toy", "zh-CN": "中号狮子玩具"}	13.00	11.00	\N	2022-09-01 03:12:58.317501	2022-09-06 10:12:58.315608
34	NS-GS-Lion Toy-L	{"en": "Large Lion Toy", "zh-CN": "大号狮子玩具"}	15.00	12.00	\N	2022-09-01 02:49:30.21305	2022-09-06 10:14:29.651968
37	NS-UUR-Indian Pilaf-A	{"en": "Indian Pilaf", "zh-CN": "印度手抓饭"}	20.00	14.00	\N	2022-09-01 03:28:13.618045	2022-09-09 07:26:43.564021
32	BP-PH-Seafood Pizza-L	{"en": "Large Seafood Pizza", "zh-CN": "大份海鲜披萨"}	20.00	15.00	\N	2022-09-01 02:20:24.066705	2022-09-06 10:15:26.285136
31	BP-PH-Seafood Pizza-S	{"en": "Small Seafood Pizza", "zh-CN": "小份海鲜披萨"}	15.00	10.00	\N	2022-09-01 02:18:45.129796	2022-09-06 10:16:11.24931
30	BP-PH-Durian Pizza-L	{"en": "Large Durian Pizza", "zh-CN": "大份榴莲披萨"}	30.00	25.00	\N	2022-09-01 02:14:12.942125	2022-09-06 10:16:41.934472
29	BP-PH-Durian Pizza-S	{"en": "Small Durian Pizza", "zh-CN": "小份榴莲披萨"}	25.00	20.00	\N	2022-09-01 02:11:42.745806	2022-09-06 10:17:14.218528
33	BP-PH-Black Pepper Steak-A	{"en": "Black Pepper Steak", "zh-CN": "黑椒牛排"}	15.00	12.50	\N	2022-09-01 02:23:36.337697	2022-09-09 07:26:28.534237
1	SZ-GS-Kangaroo Doll-Br-S	{"en": "Brown Small Kangaroo Doll", "zh-CN": "棕色小号袋鼠玩偶"}	10.00	5.00	\N	2022-08-31 03:18:10.606701	2022-09-08 02:50:11.106779
12	SZ-KFC-Fries-S	{"en": "Small Fries", "zh-CN": "小份薯条"}	2.00	1.00	\N	2022-08-31 09:14:04.325877	2022-09-09 06:21:11.258065
51		{"en": "2", "zh-CN": "22"}	\N	\N	2022-09-09 09:40:33.356599	2022-09-09 09:40:22.528351	2022-09-09 09:40:33.35661
52	22	{"en": "test2", "zh-CN": "test2"}	20.00	20.00	2022-09-13 03:07:55.129754	2022-09-13 03:05:59.526374	2022-09-13 03:07:55.129767
3	SZ-GS-Giraffe Pillow-Y-M	{"en": "Medium Giraffe Pillow", "zh-CN": "中号长劲鹿抱枕"}	15.00	10.00	\N	2022-08-31 03:30:30.319715	2022-09-13 03:33:43.039976
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, item_type, item_id, event, whodunnit, object_changes, created_at) FROM stdin;
1	Outlet	1	create	0qa(1)	---\nid:\n- \n- 1\nmaster_outlet_ref:\n- \n- ns-retail-gs\nphone_number:\n- \n- ''\nwhatsapp_number:\n- \n- ''\nemail:\n- \n- ''\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-30 03:11:47.706491000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-30 03:11:47.706491000 Z\nname_en:\n- \n- NS Gift Shop\nname_zh_cn:\n- \n- NS Gift Shop\naddress_en:\n- \n- Night Safari park entrance.\n	2022-08-30 03:11:47.706491
2	Image	1	create	0qa(1)	---\nid:\n- \n- 1\nimage:\n- \n- kangaroo_doll.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 02:13:48.964557000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 02:13:48.964557000 Z\n	2022-08-31 02:13:48.964557
3	Image	2	create	0qa(1)	---\nid:\n- \n- 2\nimage:\n- \n- kangaroo_doll.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 02:16:23.874646000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 02:16:23.874646000 Z\n	2022-08-31 02:16:23.874646
4	Outlet	2	create	0qa(1)	---\nid:\n- \n- 2\nmaster_outlet_ref:\n- \n- ''\nphone_number:\n- \n- ''\nwhatsapp_number:\n- \n- ''\nemail:\n- \n- ''\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:12:25.199210000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:12:25.199210000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '1'\n	2022-08-31 03:12:25.19921
5	Outlet	3	create	0qa(1)	---\nid:\n- \n- 3\nmaster_outlet_ref:\n- \n- SZ-Retail-GS\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 19:00:00.000000000 Z\nphone_number:\n- \n- '11223344'\nwhatsapp_number:\n- \n- '12341234'\nemail:\n- \n- szgs@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:16:08.339126000 Z\n  zone: *1\n  time: 2022-08-31 03:16:08.339126000 Z\nname_en:\n- \n- Singapore Zoo Gift Shop\nname_zh_cn:\n- \n- 新加坡动物园礼品店\naddress_en:\n- \n- Entrance to Singapore Zoo\naddress_zh_cn:\n- \n- 新加坡动物园入口处\nshort_desc_en:\n- \n- 'Stop by any of our gift shops and buy a few as souvenirs for your visit to the\n  Singapore Zoo. '\nshort_desc_zh_cn:\n- \n- 到我们的任何一家礼品店逛逛，买几个可作为游览新加坡动物园的纪念礼品。\ndesc_en:\n- \n- You can add S$1.00 for a small reusable non-woven shopping bag or S$1.50 for a medium\n  shopping bag before payment. Your little effort will help reduce plastic waste and\n  fund our wildlife conservation efforts in the region\ndesc_zh_cn:\n- \n- 付款前您可以添加新币$1.00购买可重复使用的小号非编织购物袋，或添加新币$1.50购买一个中号购物袋。您的举手之劳将帮助减少塑料废弃物，并且资助我们在该区域的野生动物保育工作\n	2022-08-31 03:16:08.339126
6	Image	3	create	0qa(1)	---\nid:\n- \n- 3\nimage:\n- \n- kangaroo_doll.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:16:55.520952000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:16:55.520952000 Z\n	2022-08-31 03:16:55.520952
7	Sku	1	create	0qa(1)	---\nid:\n- \n- 1\nmaster_sku_ref:\n- \n- SZ-GS-Kangaroo Doll-Br-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:18:10.606701000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:18:10.606701000 Z\nname_en:\n- \n- Kangaroo Doll\nname_zh_cn:\n- \n- 袋鼠玩偶\n	2022-08-31 03:18:10.606701
8	Image	3	update	0qa(1)	---\ntarget_id:\n- \n- 1\ntarget_type:\n- \n- Sku\n	2022-08-31 03:18:10.628878
9	OutletSku	1	create	0qa(1)	---\nid:\n- \n- 1\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 1\nquantity:\n- 0\n- 1000\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:18:25.650930000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:18:25.650930000 Z\n	2022-08-31 03:18:25.65093
10	Image	4	create	0qa(1)	---\nid:\n- \n- 4\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:23:10.582046000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:23:10.582046000 Z\n	2022-08-31 03:23:10.582046
11	Sku	2	create	0qa(1)	---\nid:\n- \n- 2\nmaster_sku_ref:\n- \n- SZ-GS-Kangaroo Doll-Gr-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:25:31.527628000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:25:31.527628000 Z\nname_en:\n- \n- Kangaroo Doll\nname_zh_cn:\n- \n- 袋鼠玩偶\n	2022-08-31 03:25:31.527628
12	OutletSku	2	create	0qa(1)	---\nid:\n- \n- 2\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 2\nquantity:\n- 0\n- 1000\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:25:31.538241000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:25:31.538241000 Z\n	2022-08-31 03:25:31.538241
13	Image	4	update	0qa(1)	---\ntarget_id:\n- \n- 2\ntarget_type:\n- \n- Sku\n	2022-08-31 03:25:31.548904
14	Sku	2	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Kangaroo Doll-Gr-L\n- SZ-GS-Kangaroo Doll-Gr-S\n	2022-08-31 03:25:47.324164
15	Image	5	create	0qa(1)	---\nid:\n- \n- 5\nimage:\n- \n- giraffe_pillow.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:29:11.196621000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:29:11.196621000 Z\n	2022-08-31 03:29:11.196621
16	Sku	3	create	0qa(1)	---\nid:\n- \n- 3\nmaster_sku_ref:\n- \n- SZ-GS-Giraffe Pillow-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:30:30.319715000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:30:30.319715000 Z\nname_en:\n- \n- Giraffe Pillow\nname_zh_cn:\n- \n- 长劲鹿抱枕\n	2022-08-31 03:30:30.319715
17	OutletSku	3	create	0qa(1)	---\nid:\n- \n- 3\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 3\nquantity:\n- 0\n- 500\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:30:30.334450000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:30:30.334450000 Z\n	2022-08-31 03:30:30.33445
18	Image	5	update	0qa(1)	---\ntarget_id:\n- \n- 3\ntarget_type:\n- \n- Sku\n	2022-08-31 03:30:30.346361
19	Sku	2	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Kangaroo Doll-Gr-S\n- SZ-GS-Kangaroo Doll-Gr-L\n	2022-08-31 03:30:53.431603
20	Sku	3	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Giraffe Pillow-S\n- SZ-GS-Giraffe Pillow-M\n	2022-08-31 03:32:57.244502
306	Sku	20	update	0qa(1)	---\nname:\n- \n- '{"en":"Flamingo Water Cup","zh-CN":"火烈鸟水杯"}'\nname_en:\n- \n- Flamingo Water Cup\nname_zh_cn:\n- \n- 火烈鸟水杯\n	2022-09-06 09:51:23.629601
21	Image	6	create	0qa(1)	---\nid:\n- \n- 6\nimage:\n- \n- Zebra_badge.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:38:21.992300000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:38:21.992300000 Z\n	2022-08-31 03:38:21.9923
22	Sku	4	create	0qa(1)	---\nid:\n- \n- 4\nmaster_sku_ref:\n- \n- SZ-GS-Zebra Badge-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:39:26.569512000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:39:26.569512000 Z\nname_en:\n- \n- Zebra Badge\nname_zh_cn:\n- \n- 斑马徽章\n	2022-08-31 03:39:26.569512
23	OutletSku	4	create	0qa(1)	---\nid:\n- \n- 4\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 4\nquantity:\n- 0\n- 2000\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:39:26.582531000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:39:26.582531000 Z\n	2022-08-31 03:39:26.582531
24	Image	6	update	0qa(1)	---\ntarget_id:\n- \n- 4\ntarget_type:\n- \n- Sku\n	2022-08-31 03:39:26.604227
25	Sku	4	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Zebra Badge-S\n- SZ-GS-Zebra Badge\n	2022-08-31 03:41:33.082872
26	Image	7	create	0qa(1)	---\nid:\n- \n- 7\nimage:\n- \n- Elephant_Keychain.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:44:35.778353000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:44:35.778353000 Z\n	2022-08-31 03:44:35.778353
27	Sku	5	create	0qa(1)	---\nid:\n- \n- 5\nmaster_sku_ref:\n- \n- SZ-GS-Elephant Keychain\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:45:21.936837000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:45:21.936837000 Z\nname_en:\n- \n- Elephant Keychain\nname_zh_cn:\n- \n- 大象钥匙扣\n	2022-08-31 03:45:21.936837
28	OutletSku	5	create	0qa(1)	---\nid:\n- \n- 5\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 5\nquantity:\n- 0\n- 2000\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:45:21.949032000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:45:21.949032000 Z\n	2022-08-31 03:45:21.949032
29	Image	7	update	0qa(1)	---\ntarget_id:\n- \n- 5\ntarget_type:\n- \n- Sku\n	2022-08-31 03:45:21.962773
30	Sku	3	update	0qa(1)	---\nname_en:\n- Giraffe Pillow\n- Giraffe Pillow M\n	2022-08-31 04:24:37.05379
31	Sku	2	update	0qa(1)	---\nname_en:\n- Kangaroo Doll\n- Kangaroo Doll Gery L\nname_zh_cn:\n- 袋鼠玩偶\n- 大号灰色袋鼠玩偶\n	2022-08-31 04:25:41.590168
32	Sku	1	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Kangaroo Doll-Br-L\n- SZ-GS-Kangaroo Doll-Br-S\nname_en:\n- Kangaroo Doll\n- Kangaroo Doll Brown S\nname_zh_cn:\n- 袋鼠玩偶\n- 小号棕色袋鼠玩偶\n	2022-08-31 04:26:55.784359
33	Image	8	create	0qa(1)	---\nid:\n- \n- 8\nimage:\n- \n- 牛肉拉面.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:42:06.447326000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:42:06.447326000 Z\n	2022-08-31 06:42:06.447326
34	Image	9	create	0qa(1)	---\nid:\n- \n- 9\nimage:\n- \n- 牛肉拉面.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:43:58.790527000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:43:58.790527000 Z\n	2022-08-31 06:43:58.790527
35	Outlet	4	create	0qa(1)	---\nid:\n- \n- 4\nmaster_outlet_ref:\n- \n- 'SZ-F&B-Restaurant '\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 19:00:00.000000000 Z\nphone_number:\n- \n- '223344'\nwhatsapp_number:\n- \n- '234234'\nemail:\n- \n- szkfc@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:46:06.480064000 Z\n  zone: *1\n  time: 2022-08-31 06:46:06.480064000 Z\nname_en:\n- \n- KFC\nname_zh_cn:\n- \n- 肯德基\naddress_en:\n- \n- Entrance to Singapore Zoo\naddress_zh_cn:\n- \n- 新加坡动物园入口处\n	2022-08-31 06:46:06.480064
36	Sku	6	create	0qa(1)	---\nid:\n- \n- 6\nmaster_sku_ref:\n- \n- mf-xx-beef-ramen\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.288e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.31e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:46:28.428735000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:46:28.428735000 Z\nname_en:\n- \n- Beef Ramen\nname_zh_cn:\n- \n- 牛肉拉面\n	2022-08-31 06:46:28.428735
37	Image	9	update	0qa(1)	---\ntarget_id:\n- \n- 6\ntarget_type:\n- \n- Sku\n	2022-08-31 06:46:28.44584
38	Image	10	create	0qa(1)	---\nid:\n- \n- 10\nimage:\n- \n- beef_hamburger.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:48:19.872010000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:48:19.872010000 Z\n	2022-08-31 06:48:19.87201
39	Sku	7	create	0qa(1)	---\nid:\n- \n- 7\nmaster_sku_ref:\n- \n- SZ-KFC-Beef Hamburger-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:50:11.280645000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:50:11.280645000 Z\nname_en:\n- \n- Beef Hamburger L\nname_zh_cn:\n- \n- 牛肉汉堡\n	2022-08-31 06:50:11.280645
40	OutletSku	6	create	0qa(1)	---\nid:\n- \n- 6\noutlet_id:\n- \n- 4\nsku_id:\n- \n- 7\nquantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:50:11.292168000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:50:11.292168000 Z\n	2022-08-31 06:50:11.292168
41	Image	10	update	0qa(1)	---\ntarget_id:\n- \n- 7\ntarget_type:\n- \n- Sku\n	2022-08-31 06:50:11.303629
42	Image	11	create	0qa(1)	---\nid:\n- \n- 11\nimage:\n- \n- beef_hamburger.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:28:13.332017000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:28:13.332017000 Z\n	2022-08-31 07:28:13.332017
43	Sku	8	create	0qa(1)	---\nid:\n- \n- 8\nmaster_sku_ref:\n- \n- SZ-KFC-Beef Hamburger-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:29:23.711314000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:29:23.711314000 Z\nname_en:\n- \n- Beef Hamburger S\nname_zh_cn:\n- \n- 小份牛肉汉堡\n	2022-08-31 07:29:23.711314
44	OutletSku	7	create	0qa(1)	---\nid:\n- \n- 7\noutlet_id:\n- \n- 4\nsku_id:\n- \n- 8\nquantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:29:23.726165000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:29:23.726165000 Z\n	2022-08-31 07:29:23.726165
45	Image	11	update	0qa(1)	---\ntarget_id:\n- \n- 8\ntarget_type:\n- \n- Sku\n	2022-08-31 07:29:23.736928
46	Sku	7	update	0qa(1)	---\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.2e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-08-31 07:29:51.534636
47	Image	11	update	0qa(1)	---\ntarget_id:\n- 8\n- \ntarget_type:\n- Sku\n- \n	2022-08-31 07:36:01.079738
48	Image	12	create	0qa(1)	---\nid:\n- \n- 12\nimage:\n- \n- bh_小份_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:36:12.371963000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:36:12.371963000 Z\n	2022-08-31 07:36:12.371963
49	Image	12	update	0qa(1)	---\ntarget_id:\n- \n- 8\ntarget_type:\n- \n- Sku\n	2022-08-31 07:36:13.977934
50	Outlet	5	create	0qa(1)	---\nid:\n- \n- 5\nmaster_outlet_ref:\n- \n- 'SZ-F&B- Restaurant '\nphone_number:\n- \n- ''\nwhatsapp_number:\n- \n- ''\nemail:\n- \n- szamr@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:50:17.210859000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:50:17.210859000 Z\nname_en:\n- \n- 'Ah Meng Restaurant '\nname_zh_cn:\n- \n- 阿明餐厅\naddress_en:\n- \n- Inside the Singapore Zoo\naddress_zh_cn:\n- \n- 新加坡动物园区内\nshort_desc_en:\n- \n- 'With a casual atmosphere and a variety of food to choose from, Ah Meng Restaurant\n  is the perfect food stop. '\nshort_desc_zh_cn:\n- \n- 轻松惬意的就餐氛围，琳琅满目的美食选择，让阿明餐厅成为理想的就餐地点。\ndesc_en:\n- \n- Enjoy local and western delights such as chicken rice, BBQ Half Spring Chicken,\n  briyani and more!\ndesc_zh_cn:\n- \n- 中西经典美食如鸡饭、烧烤童子鸡、印度黄姜饭等一应俱全\n	2022-08-31 07:50:17.210859
51	Outlet	5	update	0qa(1)	---\nwhatsapp_number:\n- ''\n- '444444'\n	2022-08-31 07:52:09.111358
52	Outlet	5	update	0qa(1)	---\nwhatsapp_number:\n- '444444'\n- ''\n	2022-08-31 07:52:21.999691
53	Sku	7	update	0qa(1)	---\nname_zh_cn:\n- 牛肉汉堡\n- 大份牛肉汉堡\n	2022-08-31 08:49:16.262414
54	Image	13	create	0qa(1)	---\nid:\n- \n- 13\nimage:\n- \n- cola.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 08:59:25.378820000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 08:59:25.378820000 Z\n	2022-08-31 08:59:25.37882
55	Sku	9	create	0qa(1)	---\nid:\n- \n- 9\nmaster_sku_ref:\n- \n- SZ-KFC-Coke Large-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 08:59:39.227858000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 08:59:39.227858000 Z\nname_en:\n- \n- Coke Large\nname_zh_cn:\n- \n- 大份可乐\n	2022-08-31 08:59:39.227858
56	OutletSku	8	create	0qa(1)	---\nid:\n- \n- 8\noutlet_id:\n- \n- 4\nsku_id:\n- \n- 9\nquantity:\n- 0\n- 1000\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 08:59:39.239030000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 08:59:39.239030000 Z\n	2022-08-31 08:59:39.23903
57	Image	13	update	0qa(1)	---\ntarget_id:\n- \n- 9\ntarget_type:\n- \n- Sku\n	2022-08-31 08:59:39.250432
58	VoucherSku	1	create	0qa(1)	---\nid:\n- \n- 1\nquantity:\n- 0\n- 100\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:01:02.410542000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:01:02.410542000 Z\nname_en:\n- \n- Member Voucher\nname_zh_cn:\n- \n- 会员优惠券\n	2022-08-31 09:01:02.410542
59	VoucherSku	2	create	0qa(1)	---\nid:\n- \n- 2\nquantity:\n- 0\n- 500\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.18e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:02:02.707987000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:02:02.707987000 Z\nname_en:\n- \n- Ranger Buddy Voucher\nname_zh_cn:\n- \n- 游侠好友优惠券\n	2022-08-31 09:02:02.707987
60	Image	14	create	0qa(1)	---\nid:\n- \n- 14\nimage:\n- \n- cola.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:02:22.776144000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:02:22.776144000 Z\n	2022-08-31 09:02:22.776144
61	Sku	10	create	0qa(1)	---\nid:\n- \n- 10\nmaster_sku_ref:\n- \n- SZ-KFC-Coke-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:02:37.346324000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:02:37.346324000 Z\nname_en:\n- \n- Coke Small\nname_zh_cn:\n- \n- 小份可乐\n	2022-08-31 09:02:37.346324
62	OutletSku	9	create	0qa(1)	---\nid:\n- \n- 9\noutlet_id:\n- \n- 4\nsku_id:\n- \n- 10\nquantity:\n- 0\n- 500\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:02:37.363127000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:02:37.363127000 Z\n	2022-08-31 09:02:37.363127
63	Image	14	update	0qa(1)	---\ntarget_id:\n- \n- 10\ntarget_type:\n- \n- Sku\n	2022-08-31 09:02:37.375021
64	Sku	9	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-KFC-Coke Large-L\n- SZ-KFC-Coke-L\n	2022-08-31 09:02:57.593709
65	VoucherSku	3	create	0qa(1)	---\nid:\n- \n- 3\nquantity:\n- 0\n- 50\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.88e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:04:19.904218000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:04:19.904218000 Z\nname_en:\n- \n- Family Voucher\nname_zh_cn:\n- \n- 家庭优惠券\n	2022-08-31 09:04:19.904218
66	Image	15	create	0qa(1)	---\nid:\n- \n- 15\nimage:\n- \n- fries.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:07:07.872990000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:07:07.872990000 Z\n	2022-08-31 09:07:07.87299
110	Image	24	create	0qa(1)	---\nid:\n- \n- 24\nimage:\n- \n- 火烈鸟杯子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 15:06:02.785539000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 15:06:02.785539000 Z\n	2022-08-31 15:06:02.785539
67	Sku	11	create	0qa(1)	---\nid:\n- \n- 11\nmaster_sku_ref:\n- \n- SZ-GS- Fries-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:09:58.565574000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:09:58.565574000 Z\nname_en:\n- \n- " Fries Large"\nname_zh_cn:\n- \n- 大份薯条\n	2022-08-31 09:09:58.565574
68	OutletSku	10	create	0qa(1)	---\nid:\n- \n- 10\noutlet_id:\n- \n- 4\nsku_id:\n- \n- 11\nquantity:\n- 0\n- 500\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:09:58.576186000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:09:58.576186000 Z\n	2022-08-31 09:09:58.576186
69	Image	15	update	0qa(1)	---\ntarget_id:\n- \n- 11\ntarget_type:\n- \n- Sku\n	2022-08-31 09:09:58.584377
70	VoucherSku	4	create	0qa(1)	---\nid:\n- \n- 4\nquantity:\n- 0\n- 100\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.48e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:11:19.801013000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:11:19.801013000 Z\nname_en:\n- \n- Cash Voucher\nname_zh_cn:\n- \n- 现金券\n	2022-08-31 09:11:19.801013
71	Image	16	create	0qa(1)	---\nid:\n- \n- 16\nimage:\n- \n- 小份薯条.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:13:14.780786000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:13:14.780786000 Z\n	2022-08-31 09:13:14.780786
72	Sku	12	create	0qa(1)	---\nid:\n- \n- 12\nmaster_sku_ref:\n- \n- SZ-KFC-Fries-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:14:04.325877000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:14:04.325877000 Z\nname_en:\n- \n- Fries Small\nname_zh_cn:\n- \n- 小份薯条\n	2022-08-31 09:14:04.325877
73	OutletSku	11	create	0qa(1)	---\nid:\n- \n- 11\noutlet_id:\n- \n- 4\nsku_id:\n- \n- 12\nquantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:14:04.341385000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:14:04.341385000 Z\n	2022-08-31 09:14:04.341385
74	Image	16	update	0qa(1)	---\ntarget_id:\n- \n- 12\ntarget_type:\n- \n- Sku\n	2022-08-31 09:14:04.359302
75	VoucherSku	5	create	0qa(1)	---\nid:\n- \n- 5\nquantity:\n- 0\n- 50\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.899e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:15:05.158503000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:15:05.158503000 Z\nname_en:\n- \n- gift voucher\nname_zh_cn:\n- \n- 礼品优惠券\n	2022-08-31 09:15:05.158503
76	Image	17	create	0qa(1)	---\nid:\n- \n- 17\nimage:\n- \n- 印度黄姜饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:18:01.344681000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:18:01.344681000 Z\n	2022-08-31 09:18:01.344681
77	Sku	13	create	0qa(1)	---\nid:\n- \n- 13\nmaster_sku_ref:\n- \n- SZ-AMR- Indian Turmeric Rice\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:19:13.404008000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:19:13.404008000 Z\nname_en:\n- \n- " Indian Turmeric Rice "\nname_zh_cn:\n- \n- 印度黄姜饭\n	2022-08-31 09:19:13.404008
78	OutletSku	12	create	0qa(1)	---\nid:\n- \n- 12\noutlet_id:\n- \n- 5\nsku_id:\n- \n- 13\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:19:13.416068000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:19:13.416068000 Z\n	2022-08-31 09:19:13.416068
79	Image	17	update	0qa(1)	---\ntarget_id:\n- \n- 13\ntarget_type:\n- \n- Sku\n	2022-08-31 09:19:13.427856
80	Image	18	create	0qa(1)	---\nid:\n- \n- 18\nimage:\n- \n- 鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:21:25.477863000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:21:25.477863000 Z\n	2022-08-31 09:21:25.477863
81	VoucherApplicableTarget	1	create	0qa(1)	---\nid:\n- \n- 1\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:21:45.045898000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:21:45.045898000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-08-31 09:21:45.045898
82	VoucherApplicableTarget	2	create	0qa(1)	---\nid:\n- \n- 2\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_id:\n- \n- 1\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:21:45.061942000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:21:45.061942000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-08-31 09:21:45.061942
83	Sku	14	create	0qa(1)	---\nid:\n- \n- 14\nmaster_sku_ref:\n- \n- SZ-AMR-Hainan Chicken Rice\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:22:55.007793000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:22:55.007793000 Z\nname_en:\n- \n- Hainan Chicken Rice\nname_zh_cn:\n- \n- 海南鸡饭\n	2022-08-31 09:22:55.007793
84	OutletSku	13	create	0qa(1)	---\nid:\n- \n- 13\noutlet_id:\n- \n- 5\nsku_id:\n- \n- 14\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:22:55.020233000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:22:55.020233000 Z\n	2022-08-31 09:22:55.020233
85	Image	18	update	0qa(1)	---\ntarget_id:\n- \n- 14\ntarget_type:\n- \n- Sku\n	2022-08-31 09:22:55.030772
86	Image	19	create	0qa(1)	---\nid:\n- \n- 19\nimage:\n- \n- 烤鸡.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:24:33.612139000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:24:33.612139000 Z\n	2022-08-31 09:24:33.612139
135	OutletSku	24	create	0qa(1)	---\nid:\n- \n- 24\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 25\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:26:40.572436000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:26:40.572436000 Z\n	2022-09-01 01:26:40.572436
87	Sku	15	create	0qa(1)	---\nid:\n- \n- 15\nmaster_sku_ref:\n- \n- SZ-AMR-Roast Chicken\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:25:21.823007000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:25:21.823007000 Z\nname_en:\n- \n- Roast Chicken\nname_zh_cn:\n- \n- 烤鸡\n	2022-08-31 09:25:21.823007
88	OutletSku	14	create	0qa(1)	---\nid:\n- \n- 14\noutlet_id:\n- \n- 5\nsku_id:\n- \n- 15\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:25:21.834048000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:25:21.834048000 Z\n	2022-08-31 09:25:21.834048
89	Image	19	update	0qa(1)	---\ntarget_id:\n- \n- 15\ntarget_type:\n- \n- Sku\n	2022-08-31 09:25:21.846627
90	Image	20	create	0qa(1)	---\nid:\n- \n- 20\nimage:\n- \n- 西柚汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:28:41.475434000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:28:41.475434000 Z\n	2022-08-31 09:28:41.475434
91	Sku	16	create	0qa(1)	---\nid:\n- \n- 16\nmaster_sku_ref:\n- \n- SZ-AMR-Grapefruit Guice\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:29:35.469132000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:29:35.469132000 Z\nname_en:\n- \n- Grapefruit Guice\nname_zh_cn:\n- \n- 鲜榨西柚汁\n	2022-08-31 09:29:35.469132
92	OutletSku	15	create	0qa(1)	---\nid:\n- \n- 15\noutlet_id:\n- \n- 5\nsku_id:\n- \n- 16\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:29:35.480215000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:29:35.480215000 Z\n	2022-08-31 09:29:35.480215
93	Image	20	update	0qa(1)	---\ntarget_id:\n- \n- 16\ntarget_type:\n- \n- Sku\n	2022-08-31 09:29:35.49646
94	Image	21	create	0qa(1)	---\nid:\n- \n- 21\nimage:\n- \n- 葡萄汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:33:11.311023000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:33:11.311023000 Z\n	2022-08-31 09:33:11.311023
95	Sku	17	create	0qa(1)	---\nid:\n- \n- 17\nmaster_sku_ref:\n- \n- SZ-AMR-Grape Guice\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:33:24.157862000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:33:24.157862000 Z\nname_en:\n- \n- Grape Guice\nname_zh_cn:\n- \n- 鲜榨葡萄汁\n	2022-08-31 09:33:24.157862
96	OutletSku	16	create	0qa(1)	---\nid:\n- \n- 16\noutlet_id:\n- \n- 5\nsku_id:\n- \n- 17\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:33:24.166295000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:33:24.166295000 Z\n	2022-08-31 09:33:24.166295
97	Image	21	update	0qa(1)	---\ntarget_id:\n- \n- 17\ntarget_type:\n- \n- Sku\n	2022-08-31 09:33:24.175352
98	Outlet	6	create	0qa(1)	---\nid:\n- \n- 6\nmaster_outlet_ref:\n- \n- BP-Retail-GS\nphone_number:\n- \n- '334455'\nwhatsapp_number:\n- \n- '345345'\nemail:\n- \n- fhgs@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:27:39.404321000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:27:39.404321000 Z\nname_en:\n- \n- Feather House Gift Shop\nname_zh_cn:\n- \n- 羽毛屋礼品店\naddress_en:\n- \n- Bird Park Entrance\naddress_zh_cn:\n- \n- 飞禽公园入口\nshort_desc_en:\n- \n- Shop for bird-themed plush toys and other meaningful souvenirs like hats and t-shirts.\nshort_desc_zh_cn:\n- \n- 选购飞禽主题的毛绒玩具以及其他意义非凡的纪念品，例如帽子和 T 恤。\n	2022-08-31 14:27:39.404321
99	Image	22	create	0qa(1)	---\nid:\n- \n- 22\nimage:\n- \n- 火烈鸟体恤衫.npg.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:32:33.265782000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:32:33.265782000 Z\n	2022-08-31 14:32:33.265782
100	Sku	18	create	0qa(1)	---\nid:\n- \n- 18\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo T-Shirt-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.55e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:35:07.874640000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:35:07.874640000 Z\nname_en:\n- \n- Flamingo T-Shirt  S\nname_zh_cn:\n- \n- 火烈鸟T恤衫\n	2022-08-31 14:35:07.87464
101	OutletSku	17	create	0qa(1)	---\nid:\n- \n- 17\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 18\nquantity:\n- 0\n- 500\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:35:07.883226000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:35:07.883226000 Z\n	2022-08-31 14:35:07.883226
102	Image	22	update	0qa(1)	---\ntarget_id:\n- \n- 18\ntarget_type:\n- \n- Sku\n	2022-08-31 14:35:07.893475
103	Image	23	create	0qa(1)	---\nid:\n- \n- 23\nimage:\n- \n- 火烈鸟体恤衫.npg.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:38:26.278903000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:38:26.278903000 Z\n	2022-08-31 14:38:26.278903
104	Sku	19	create	0qa(1)	---\nid:\n- \n- 19\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo T-Shirt-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.55e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:39:15.634640000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:39:15.634640000 Z\nname_en:\n- \n- Flamingo T-Shirt L\nname_zh_cn:\n- \n- 大号火烈鸟体恤衫\n	2022-08-31 14:39:15.63464
105	OutletSku	18	create	0qa(1)	---\nid:\n- \n- 18\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 19\nquantity:\n- 0\n- 500\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:39:15.643469000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:39:15.643469000 Z\n	2022-08-31 14:39:15.643469
106	Image	23	update	0qa(1)	---\ntarget_id:\n- \n- 19\ntarget_type:\n- \n- Sku\n	2022-08-31 14:39:15.651955
107	Sku	18	update	0qa(1)	---\nname_zh_cn:\n- 火烈鸟T恤衫\n- 小号火烈鸟T恤衫\n	2022-08-31 14:39:37.539912
108	Sku	19	update	0qa(1)	---\nmaster_sku_ref:\n- BP-FHGS-Flamingo T-Shirt-L\n- BP-FHGS-Flamingo T-Shirt-Pink-L\n	2022-08-31 14:40:25.994325
109	Sku	18	update	0qa(1)	---\nmaster_sku_ref:\n- BP-FHGS-Flamingo T-Shirt-S\n- BP-FHGS-Flamingo T-Shirt-Pink-S\n	2022-08-31 14:40:50.364682
136	Image	29	update	0qa(1)	---\ntarget_id:\n- \n- 25\ntarget_type:\n- \n- Sku\n	2022-09-01 01:26:40.590732
111	Sku	20	create	0qa(1)	---\nid:\n- \n- 20\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo Water Cup\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 15:07:26.664506000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 15:07:26.664506000 Z\nname_en:\n- \n- Flamingo Water Cup\nname_zh_cn:\n- \n- 火烈鸟水杯\n	2022-08-31 15:07:26.664506
112	OutletSku	19	create	0qa(1)	---\nid:\n- \n- 19\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 20\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 15:07:26.674364000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 15:07:26.674364000 Z\n	2022-08-31 15:07:26.674364
113	Image	24	update	0qa(1)	---\ntarget_id:\n- \n- 20\ntarget_type:\n- \n- Sku\n	2022-08-31 15:07:26.692688
114	Sku	18	update	0qa(1)	---\nmaster_sku_ref:\n- BP-FHGS-Flamingo T-Shirt-Pink-S\n- BP-FHGS-Flamingo T-Shirt-P-S\nname_en:\n- Flamingo T-Shirt  S\n- Flamingo T-Shirt Pink S\n	2022-09-01 01:08:05.718311
115	Sku	19	update	0qa(1)	---\nmaster_sku_ref:\n- BP-FHGS-Flamingo T-Shirt-Pink-L\n- BP-FHGS-Flamingo T-Shirt-P-L\nname_en:\n- Flamingo T-Shirt L\n- Flamingo T-Shirt Pink L\n	2022-09-01 01:08:42.20757
116	Image	25	create	0qa(1)	---\nid:\n- \n- 25\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:11:45.029928000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:11:45.029928000 Z\n	2022-09-01 01:11:45.029928
117	Sku	21	create	0qa(1)	---\nid:\n- \n- 21\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.45e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:13:58.249622000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:13:58.249622000 Z\nname_en:\n- \n- Penguin Doll S\nname_zh_cn:\n- \n- 企鹅玩偶\n	2022-09-01 01:13:58.249622
118	OutletSku	20	create	0qa(1)	---\nid:\n- \n- 20\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 21\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:13:58.261541000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:13:58.261541000 Z\n	2022-09-01 01:13:58.261541
119	Image	25	update	0qa(1)	---\ntarget_id:\n- \n- 21\ntarget_type:\n- \n- Sku\n	2022-09-01 01:13:58.272209
120	Image	26	create	0qa(1)	---\nid:\n- \n- 26\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:15:34.771925000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:15:34.771925000 Z\n	2022-09-01 01:15:34.771925
121	Sku	22	create	0qa(1)	---\nid:\n- \n- 22\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-M\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:16:16.791007000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:16:16.791007000 Z\nname_en:\n- \n- " Penguin Doll M"\nname_zh_cn:\n- \n- 中号企鹅玩偶\n	2022-09-01 01:16:16.791007
122	OutletSku	21	create	0qa(1)	---\nid:\n- \n- 21\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 22\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:16:16.799358000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:16:16.799358000 Z\n	2022-09-01 01:16:16.799358
123	Image	26	update	0qa(1)	---\ntarget_id:\n- \n- 22\ntarget_type:\n- \n- Sku\n	2022-09-01 01:16:16.807356
124	Sku	21	update	0qa(1)	---\nname_zh_cn:\n- 企鹅玩偶\n- 小号企鹅玩偶\n	2022-09-01 01:16:38.778481
125	Image	27	create	0qa(1)	---\nid:\n- \n- 27\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:17:40.362104000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:17:40.362104000 Z\n	2022-09-01 01:17:40.362104
126	Sku	23	create	0qa(1)	---\nid:\n- \n- 23\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:18:14.413016000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:18:14.413016000 Z\nname_en:\n- \n- Penguin Doll L\nname_zh_cn:\n- \n- 大号企鹅玩偶\n	2022-09-01 01:18:14.413016
127	OutletSku	22	create	0qa(1)	---\nid:\n- \n- 22\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 23\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:18:14.422809000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:18:14.422809000 Z\n	2022-09-01 01:18:14.422809
128	Image	27	update	0qa(1)	---\ntarget_id:\n- \n- 23\ntarget_type:\n- \n- Sku\n	2022-09-01 01:18:14.43563
129	Image	28	create	0qa(1)	---\nid:\n- \n- 28\nimage:\n- \n- yingwu.blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:23:35.596146000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:23:35.596146000 Z\n	2022-09-01 01:23:35.596146
130	Sku	24	create	0qa(1)	---\nid:\n- \n- 24\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-B-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.7e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:24:47.954557000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:24:47.954557000 Z\nname_en:\n- \n- Parrot Doll Blue L\nname_zh_cn:\n- \n- 大号蓝色鹦鹉玩偶\n	2022-09-01 01:24:47.954557
131	OutletSku	23	create	0qa(1)	---\nid:\n- \n- 23\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 24\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:24:47.964369000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:24:47.964369000 Z\n	2022-09-01 01:24:47.964369
132	Image	28	update	0qa(1)	---\ntarget_id:\n- \n- 24\ntarget_type:\n- \n- Sku\n	2022-09-01 01:24:47.974882
133	Image	29	create	0qa(1)	---\nid:\n- \n- 29\nimage:\n- \n- yingwu_red.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:26:03.967562000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:26:03.967562000 Z\n	2022-09-01 01:26:03.967562
134	Sku	25	create	0qa(1)	---\nid:\n- \n- 25\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-R-M\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.9e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.7e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:26:40.556956000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:26:40.556956000 Z\nname_en:\n- \n- " Parrot Doll Red M"\nname_zh_cn:\n- \n- 中号红色鹦鹉玩偶\n	2022-09-01 01:26:40.556956
137	Image	30	create	0qa(1)	---\nid:\n- \n- 30\nimage:\n- \n- yingwuwhite.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:27:25.918685000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:27:25.918685000 Z\n	2022-09-01 01:27:25.918685
138	Sku	26	create	0qa(1)	---\nid:\n- \n- 26\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-W-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:28:10.627032000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:28:10.627032000 Z\nname_en:\n- \n- " Parrot Doll White S"\nname_zh_cn:\n- \n- 小号白色鹦鹉玩偶\n	2022-09-01 01:28:10.627032
139	OutletSku	25	create	0qa(1)	---\nid:\n- \n- 25\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 26\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:28:10.638524000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:28:10.638524000 Z\n	2022-09-01 01:28:10.638524
140	Image	30	update	0qa(1)	---\ntarget_id:\n- \n- 26\ntarget_type:\n- \n- Sku\n	2022-09-01 01:28:10.669091
141	Sku	24	update	0qa(1)	---\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.7e1\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.8e1\n	2022-09-01 01:28:29.194077
142	Outlet	6	update	0qa(1)	---\nshort_desc_en:\n- Shop for bird-themed plush toys and other meaningful souvenirs like hats and t-shirts.\n- Shop for bird-themed plush toys and other meaningful souvenirs like dolls and t-shirts.\nshort_desc_zh_cn:\n- 选购飞禽主题的毛绒玩具以及其他意义非凡的纪念品，例如帽子和 T 恤。\n- 选购飞禽主题的毛绒玩具以及其他意义非凡的纪念品，例如玩偶和T恤。\n	2022-09-01 01:35:00.202989
143	Outlet	7	create	0qa(1)	---\nid:\n- \n- 7\nmaster_outlet_ref:\n- \n- BP-F&B-PH\nphone_number:\n- \n- ''\nwhatsapp_number:\n- \n- ''\nemail:\n- \n- ''\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:56:01.439079000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:56:01.439079000 Z\nname_en:\n- \n- 'Pizza Hut '\nname_zh_cn:\n- \n- 必胜客\naddress_en:\n- \n- Inside Jurong Bird Park\naddress_zh_cn:\n- \n- 裕廊飞禽公园内\ndesc_en:\n- \n- Pizza Hut has dozens of delicious pizzas, and the waiting time for a freshly baked\n  pizza is never more than 15 minutes, and the pizzas you taste everywhere are exactly\n  the same.\ndesc_zh_cn:\n- \n- 必胜客的美味比萨有数十种之多，而等待一份比萨新鲜出炉的时间永远不会超过15分钟，并且你在各地的必胜客，品尝到的比萨口味都完全一致。\n	2022-09-01 01:56:01.439079
144	Image	31	create	0qa(1)	---\nid:\n- \n- 31\nimage:\n- \n- ym.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:58:55.126781000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:58:55.126781000 Z\n	2022-09-01 01:58:55.126781
145	Image	32	create	0qa(1)	---\nid:\n- \n- 32\nimage:\n- \n- ym.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:02:06.572924000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:02:06.572924000 Z\n	2022-09-01 02:02:06.572924
146	Image	33	create	0qa(1)	---\nid:\n- \n- 33\nimage:\n- \n- 意大利面.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:02:37.755942000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:02:37.755942000 Z\n	2022-09-01 02:02:37.755942
147	Sku	27	create	0qa(1)	---\nid:\n- \n- 27\nmaster_sku_ref:\n- \n- BP-PH-Tomato Pasta\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:04:40.730046000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:04:40.730046000 Z\nname_en:\n- \n- Tomato Pasta\nname_zh_cn:\n- \n- 番茄意大利面\n	2022-09-01 02:04:40.730046
148	OutletSku	26	create	0qa(1)	---\nid:\n- \n- 26\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 27\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:04:40.742893000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:04:40.742893000 Z\n	2022-09-01 02:04:40.742893
149	Image	33	update	0qa(1)	---\ntarget_id:\n- \n- 27\ntarget_type:\n- \n- Sku\n	2022-09-01 02:04:40.753647
150	Image	34	create	0qa(1)	---\nid:\n- \n- 34\nimage:\n- \n- 香草.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:06:45.390614000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:06:45.390614000 Z\n	2022-09-01 02:06:45.390614
151	Sku	28	create	0qa(1)	---\nid:\n- \n- 28\nmaster_sku_ref:\n- \n- BP-PH-Vanilla Anchovy Shrimp\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.36e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.25e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:07:50.067805000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:07:50.067805000 Z\nname_en:\n- \n- Vanilla Anchovy Shrimp\nname_zh_cn:\n- \n- 香草凤尾虾\n	2022-09-01 02:07:50.067805
152	OutletSku	27	create	0qa(1)	---\nid:\n- \n- 27\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 28\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:07:50.077864000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:07:50.077864000 Z\n	2022-09-01 02:07:50.077864
153	Image	34	update	0qa(1)	---\ntarget_id:\n- \n- 28\ntarget_type:\n- \n- Sku\n	2022-09-01 02:07:50.089055
154	Image	35	create	0qa(1)	---\nid:\n- \n- 35\nimage:\n- \n- 榴莲.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:09:55.326202000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:09:55.326202000 Z\n	2022-09-01 02:09:55.326202
155	Sku	29	create	0qa(1)	---\nid:\n- \n- 29\nmaster_sku_ref:\n- \n- BP-PH-Durian Pizza-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:11:42.745806000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:11:42.745806000 Z\nname_en:\n- \n- Durian Pizza S\nname_zh_cn:\n- \n- 榴莲披萨\n	2022-09-01 02:11:42.745806
156	OutletSku	28	create	0qa(1)	---\nid:\n- \n- 28\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 29\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:11:42.759232000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:11:42.759232000 Z\n	2022-09-01 02:11:42.759232
157	Image	35	update	0qa(1)	---\ntarget_id:\n- \n- 29\ntarget_type:\n- \n- Sku\n	2022-09-01 02:11:42.773684
307	Sku	21	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Penguin Doll","zh-CN":"小号企鹅公仔"}'\nname_en:\n- \n- Small Penguin Doll\nname_zh_cn:\n- \n- 小号企鹅公仔\n	2022-09-06 10:00:05.972374
158	Image	36	create	0qa(1)	---\nid:\n- \n- 36\nimage:\n- \n- 榴莲.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:13:47.443672000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:13:47.443672000 Z\n	2022-09-01 02:13:47.443672
159	Sku	30	create	0qa(1)	---\nid:\n- \n- 30\nmaster_sku_ref:\n- \n- BP-PH-Durian Pizza-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:14:12.942125000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:14:12.942125000 Z\nname_en:\n- \n- Durian Pizza L\nname_zh_cn:\n- \n- 大号榴莲披萨\n	2022-09-01 02:14:12.942125
160	OutletSku	29	create	0qa(1)	---\nid:\n- \n- 29\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 30\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:14:12.963317000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:14:12.963317000 Z\n	2022-09-01 02:14:12.963317
161	Image	36	update	0qa(1)	---\ntarget_id:\n- \n- 30\ntarget_type:\n- \n- Sku\n	2022-09-01 02:14:12.991811
162	Sku	29	update	0qa(1)	---\nname_zh_cn:\n- 榴莲披萨\n- 小号榴莲披萨\n	2022-09-01 02:14:30.448641
163	Image	37	create	0qa(1)	---\nid:\n- \n- 37\nimage:\n- \n- 海鲜.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:17:02.705430000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:17:02.705430000 Z\n	2022-09-01 02:17:02.70543
164	Sku	31	create	0qa(1)	---\nid:\n- \n- 31\nmaster_sku_ref:\n- \n- BP-PH-Seafood Pizza-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:18:45.129796000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:18:45.129796000 Z\nname_en:\n- \n- Seafood Pizza S\nname_zh_cn:\n- \n- 小号海鲜披萨\n	2022-09-01 02:18:45.129796
165	OutletSku	30	create	0qa(1)	---\nid:\n- \n- 30\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 31\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:18:45.142956000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:18:45.142956000 Z\n	2022-09-01 02:18:45.142956
166	Image	37	update	0qa(1)	---\ntarget_id:\n- \n- 31\ntarget_type:\n- \n- Sku\n	2022-09-01 02:18:45.155983
167	Image	38	create	0qa(1)	---\nid:\n- \n- 38\nimage:\n- \n- 海鲜.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:19:42.619891000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:19:42.619891000 Z\n	2022-09-01 02:19:42.619891
168	Sku	32	create	0qa(1)	---\nid:\n- \n- 32\nmaster_sku_ref:\n- \n- BP-PH-Seafood Pizza-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:20:24.066705000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:20:24.066705000 Z\nname_en:\n- \n- Seafood Pizza L\nname_zh_cn:\n- \n- 大号海鲜披萨\n	2022-09-01 02:20:24.066705
169	OutletSku	31	create	0qa(1)	---\nid:\n- \n- 31\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 32\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:20:24.079936000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:20:24.079936000 Z\n	2022-09-01 02:20:24.079936
170	Image	38	update	0qa(1)	---\ntarget_id:\n- \n- 32\ntarget_type:\n- \n- Sku\n	2022-09-01 02:20:24.092514
171	Image	39	create	0qa(1)	---\nid:\n- \n- 39\nimage:\n- \n- 黑椒牛排.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:22:52.180143000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:22:52.180143000 Z\n	2022-09-01 02:22:52.180143
172	Sku	33	create	0qa(1)	---\nid:\n- \n- 33\nmaster_sku_ref:\n- \n- BP-PH-Black Pepper Steak\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:23:36.337697000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:23:36.337697000 Z\nname_en:\n- \n- Black Pepper Steak\nname_zh_cn:\n- \n- 黑椒牛排\n	2022-09-01 02:23:36.337697
173	OutletSku	32	create	0qa(1)	---\nid:\n- \n- 32\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 33\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:23:36.352430000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:23:36.352430000 Z\n	2022-09-01 02:23:36.35243
174	Image	39	update	0qa(1)	---\ntarget_id:\n- \n- 33\ntarget_type:\n- \n- Sku\n	2022-09-01 02:23:36.369536
175	Outlet	8	create	0qa(1)	---\nid:\n- \n- 8\nmaster_outlet_ref:\n- \n- NS-Retail-GS\nphone_number:\n- \n- '556677'\nwhatsapp_number:\n- \n- '567567'\nemail:\n- \n- nsgs@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:41:03.084095000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:41:03.084095000 Z\nname_en:\n- \n- Night Safari Gift Shop\nname_zh_cn:\n- \n- 夜间野生动物园礼品店\naddress_en:\n- \n- Night Safari Entrance\naddress_zh_cn:\n- \n- 野生动物园入口\nshort_desc_en:\n- \n- Night Safari shopping options are dazzling, and bring home the unique plush animals\n  of the night! Plus, buy chocolates, cookies, and local favorite kaya as souvenirs\n  at the Village Shop.\nshort_desc_zh_cn:\n- \n- 夜间野生动物园购物选择琳琅满目，将独特的夜间动物毛绒玩具带回家！此外，还可以在 Village Shop 购买巧克力、饼干和当地最受欢迎的咖椰酱等食品作为纪念。\n	2022-09-01 02:41:03.084095
176	Image	40	create	0qa(1)	---\nid:\n- \n- 40\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:47:41.940262000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:47:41.940262000 Z\n	2022-09-01 02:47:41.940262
177	Sku	34	create	0qa(1)	---\nid:\n- \n- 34\nmaster_sku_ref:\n- \n- NS-GS-Lion Toy- L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:49:30.213050000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:49:30.213050000 Z\nname_en:\n- \n- Lion Toy L\nname_zh_cn:\n- \n- 狮子玩具\n	2022-09-01 02:49:30.21305
178	OutletSku	33	create	0qa(1)	---\nid:\n- \n- 33\noutlet_id:\n- \n- 8\nsku_id:\n- \n- 34\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:49:30.222731000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:49:30.222731000 Z\n	2022-09-01 02:49:30.222731
179	Image	40	update	0qa(1)	---\ntarget_id:\n- \n- 34\ntarget_type:\n- \n- Sku\n	2022-09-01 02:49:30.234631
180	Image	41	create	0qa(1)	---\nid:\n- \n- 41\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:52:19.551866000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:52:19.551866000 Z\n	2022-09-01 02:52:19.551866
181	Sku	35	create	0qa(1)	---\nid:\n- \n- 35\nmaster_sku_ref:\n- \n- NS-GS-Lion Toy- S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:52:42.620567000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:52:42.620567000 Z\nname_en:\n- \n- Lion Toy S\nname_zh_cn:\n- \n- 小号狮子玩具\n	2022-09-01 02:52:42.620567
182	OutletSku	34	create	0qa(1)	---\nid:\n- \n- 34\noutlet_id:\n- \n- 8\nsku_id:\n- \n- 35\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:52:42.629624000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:52:42.629624000 Z\n	2022-09-01 02:52:42.629624
183	Image	41	update	0qa(1)	---\ntarget_id:\n- \n- 35\ntarget_type:\n- \n- Sku\n	2022-09-01 02:52:42.644181
184	Sku	34	update	0qa(1)	---\nname_zh_cn:\n- 狮子玩具\n- 大号狮子玩具\n	2022-09-01 02:53:00.289691
185	Image	42	create	0qa(1)	---\nid:\n- \n- 42\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:12:17.117518000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:12:17.117518000 Z\n	2022-09-01 03:12:17.117518
186	Sku	36	create	0qa(1)	---\nid:\n- \n- 36\nmaster_sku_ref:\n- \n- " NS-GS-Lion Toy-M"\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.13e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:12:58.317501000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:12:58.317501000 Z\nname_en:\n- \n- Lion Toy M\nname_zh_cn:\n- \n- 中号狮子玩具\n	2022-09-01 03:12:58.317501
187	OutletSku	35	create	0qa(1)	---\nid:\n- \n- 35\noutlet_id:\n- \n- 8\nsku_id:\n- \n- 36\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:12:58.338856000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:12:58.338856000 Z\n	2022-09-01 03:12:58.338856
188	Image	42	update	0qa(1)	---\ntarget_id:\n- \n- 36\ntarget_type:\n- \n- Sku\n	2022-09-01 03:12:58.353404
189	Sku	35	update	0qa(1)	---\nmaster_sku_ref:\n- NS-GS-Lion Toy- S\n- NS-GS-Lion Toy-S\n	2022-09-01 03:13:24.34346
190	Sku	34	update	0qa(1)	---\nmaster_sku_ref:\n- NS-GS-Lion Toy- L\n- NS-GS-Lion Toy-L\n	2022-09-01 03:13:35.687596
191	Outlet	9	create	0qa(1)	---\nid:\n- \n- 9\nmaster_outlet_ref:\n- \n- NS-F&B-UU\nphone_number:\n- \n- '789789'\nwhatsapp_number:\n- \n- '778899'\nemail:\n- \n- uuwr@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:24:01.775915000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:24:01.775915000 Z\nname_en:\n- \n- Ulu Ulu Wild Restaurant\nname_zh_cn:\n- \n- 乌鲁乌鲁野生餐厅\naddress_en:\n- \n- Night Safari Entrance\naddress_zh_cn:\n- \n- 夜间野生动物园入口\ndesc_en:\n- \n- Enjoy Singapore's favourites such as chicken rice, pilaf, roti chicken and red bean\n  ice in a charming rural setting. This is a dining experience full of warmth and\n  nostalgia, perfect to start or end an unforgettable evening.\ndesc_zh_cn:\n- \n- 在迷人的乡村环境中享用新加坡最受欢迎的美食，如鸡饭、印度手抓饭、印度式烤鸡和红豆冰等。这是一个充满温暖和怀旧的用餐体验，绝对是开始或结束一个难忘夜晚的完美选择。\n	2022-09-01 03:24:01.775915
192	Image	43	create	0qa(1)	---\nid:\n- \n- 43\nimage:\n- \n- 手抓饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:26:48.717953000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:26:48.717953000 Z\n	2022-09-01 03:26:48.717953
193	Sku	37	create	0qa(1)	---\nid:\n- \n- 37\nmaster_sku_ref:\n- \n- NS-UUR-Indian Pilaf\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.14e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:28:13.618045000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:28:13.618045000 Z\nname_en:\n- \n- Indian Pilaf\nname_zh_cn:\n- \n- 印度手抓饭\n	2022-09-01 03:28:13.618045
194	OutletSku	36	create	0qa(1)	---\nid:\n- \n- 36\noutlet_id:\n- \n- 9\nsku_id:\n- \n- 37\nquantity:\n- 0\n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:28:13.628710000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:28:13.628710000 Z\n	2022-09-01 03:28:13.62871
195	Image	43	update	0qa(1)	---\ntarget_id:\n- \n- 37\ntarget_type:\n- \n- Sku\n	2022-09-01 03:28:13.639396
196	Image	44	create	0qa(1)	---\nid:\n- \n- 44\nimage:\n- \n- 飞饼.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:31:14.976926000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:31:14.976926000 Z\n	2022-09-01 03:31:14.976926
197	Sku	38	create	0qa(1)	---\nid:\n- \n- 38\nmaster_sku_ref:\n- \n- NS-UUR-Indian Pancakes\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:31:43.278562000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:31:43.278562000 Z\nname_en:\n- \n- Indian Pancakes\nname_zh_cn:\n- \n- 印度飞饼\n	2022-09-01 03:31:43.278562
198	OutletSku	37	create	0qa(1)	---\nid:\n- \n- 37\noutlet_id:\n- \n- 9\nsku_id:\n- \n- 38\nquantity:\n- 0\n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:31:43.292081000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:31:43.292081000 Z\n	2022-09-01 03:31:43.292081
199	Image	44	update	0qa(1)	---\ntarget_id:\n- \n- 38\ntarget_type:\n- \n- Sku\n	2022-09-01 03:31:43.302093
200	Image	45	create	0qa(1)	---\nid:\n- \n- 45\nimage:\n- \n- 咖喱鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:34:50.514610000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:34:50.514610000 Z\n	2022-09-01 03:34:50.51461
201	Sku	39	create	0qa(1)	---\nid:\n- \n- 39\nmaster_sku_ref:\n- \n- " NS-UUR-Indian Pancakes-S"\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:36:03.408058000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:36:03.408058000 Z\nname_en:\n- \n- Curry Chicken Rice S\nname_zh_cn:\n- \n- 小份咖喱鸡肉饭\n	2022-09-01 03:36:03.408058
202	OutletSku	38	create	0qa(1)	---\nid:\n- \n- 38\noutlet_id:\n- \n- 9\nsku_id:\n- \n- 39\nquantity:\n- 0\n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:36:03.434508000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:36:03.434508000 Z\n	2022-09-01 03:36:03.434508
203	Image	45	update	0qa(1)	---\ntarget_id:\n- \n- 39\ntarget_type:\n- \n- Sku\n	2022-09-01 03:36:03.448439
204	Sku	39	update	0qa(1)	---\nmaster_sku_ref:\n- " NS-UUR-Indian Pancakes-S"\n- " NS-UUR-Curry Chicken Rices-S"\n	2022-09-01 03:37:14.204086
205	Image	46	create	0qa(1)	---\nid:\n- \n- 46\nimage:\n- \n- 咖喱鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:38:08.746791000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:38:08.746791000 Z\n	2022-09-01 03:38:08.746791
206	Sku	40	create	0qa(1)	---\nid:\n- \n- 40\nmaster_sku_ref:\n- \n- NS-UUR-Curry Chicken Rices-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:38:18.570611000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:38:18.570611000 Z\nname_en:\n- \n- Curry Chicken Rices L\nname_zh_cn:\n- \n- 大份咖喱鸡肉饭\n	2022-09-01 03:38:18.570611
207	OutletSku	39	create	0qa(1)	---\nid:\n- \n- 39\noutlet_id:\n- \n- 9\nsku_id:\n- \n- 40\nquantity:\n- 0\n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:38:18.583825000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:38:18.583825000 Z\n	2022-09-01 03:38:18.583825
208	Image	46	update	0qa(1)	---\ntarget_id:\n- \n- 40\ntarget_type:\n- \n- Sku\n	2022-09-01 03:38:18.593933
209	Image	47	create	0qa(1)	---\nid:\n- \n- 47\nimage:\n- \n- 红豆冰.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:39:49.300201000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:39:49.300201000 Z\n	2022-09-01 03:39:49.300201
210	Sku	41	create	0qa(1)	---\nid:\n- \n- 41\nmaster_sku_ref:\n- \n- NS-UUR-Red Bean Ice\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:40:36.291998000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:40:36.291998000 Z\nname_en:\n- \n- Red Bean Ice\nname_zh_cn:\n- \n- 红豆冰\n	2022-09-01 03:40:36.291998
211	OutletSku	40	create	0qa(1)	---\nid:\n- \n- 40\noutlet_id:\n- \n- 9\nsku_id:\n- \n- 41\nquantity:\n- 0\n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:40:36.302253000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:40:36.302253000 Z\n	2022-09-01 03:40:36.302253
212	Image	47	update	0qa(1)	---\ntarget_id:\n- \n- 41\ntarget_type:\n- \n- Sku\n	2022-09-01 03:40:36.316843
213	Outlet	10	create	0qa(1)	---\nid:\n- \n- 10\nmaster_outlet_ref:\n- \n- RW-Retail-GS\nphone_number:\n- \n- '890890'\nwhatsapp_number:\n- \n- '8899900'\nemail:\n- \n- rwgs@fooyo.sg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:00:52.717072000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:00:52.717072000 Z\nname_en:\n- \n- River Wonders Gift Shop\nname_zh_cn:\n- \n- 河川生态园礼品店\naddress_en:\n- \n- Inside River Wonders\naddress_zh_cn:\n- \n- 河川生态园内\nshort_desc_en:\n- \n- Don't forget to stop by our gift shop and bring some beautiful and meaningful keepsakes\n  for your loved ones or for yourself.\nshort_desc_zh_cn:\n- \n- 别忘了到我们的礼品店逛一逛，为您的亲人或为自己带上几件漂亮且富有意义的纪念品。\n	2022-09-01 06:00:52.717072
214	Image	48	create	0qa(1)	---\nid:\n- \n- 48\nimage:\n- \n- panda_s.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:11:40.391168000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:11:40.391168000 Z\n	2022-09-01 06:11:40.391168
215	Sku	42	create	0qa(1)	---\nid:\n- \n- 42\nmaster_sku_ref:\n- \n- RW-GS-Panda Doll-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:12:32.598998000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:12:32.598998000 Z\nname_en:\n- \n- Panda Doll S\nname_zh_cn:\n- \n- 小号熊猫玩偶\n	2022-09-01 06:12:32.598998
216	OutletSku	41	create	0qa(1)	---\nid:\n- \n- 41\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 42\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:12:32.609025000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:12:32.609025000 Z\n	2022-09-01 06:12:32.609025
217	Image	48	update	0qa(1)	---\ntarget_id:\n- \n- 42\ntarget_type:\n- \n- Sku\n	2022-09-01 06:12:32.621296
218	VoucherSku	6	create	0qa(1)	---\nid:\n- \n- 6\nquantity:\n- 0\n- 20\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.189e3\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:17:03.054447000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:17:03.054447000 Z\nname_en:\n- \n- Education Voucher\nname_zh_cn:\n- \n- 教育券\n	2022-09-01 06:17:03.054447
219	Image	49	create	0qa(1)	---\nid:\n- \n- 49\nimage:\n- \n- pandal.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:21:15.441415000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:21:15.441415000 Z\n	2022-09-01 06:21:15.441415
220	Sku	43	create	0qa(1)	---\nid:\n- \n- 43\nmaster_sku_ref:\n- \n- RW-GS-Panda Doll-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:21:40.911358000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:21:40.911358000 Z\nname_en:\n- \n- Panda Doll L\nname_zh_cn:\n- \n- 大号熊猫玩具\n	2022-09-01 06:21:40.911358
221	OutletSku	42	create	0qa(1)	---\nid:\n- \n- 42\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 43\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:21:40.928469000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:21:40.928469000 Z\n	2022-09-01 06:21:40.928469
222	Image	49	update	0qa(1)	---\ntarget_id:\n- \n- 43\ntarget_type:\n- \n- Sku\n	2022-09-01 06:21:40.944299
223	Image	50	create	0qa(1)	---\nid:\n- \n- 50\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:22:45.112822000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:22:45.112822000 Z\n	2022-09-01 06:22:45.112822
224	Sku	44	create	0qa(1)	---\nid:\n- \n- 44\nmaster_sku_ref:\n- \n- RW-GS-Panda Hat\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:23:37.450002000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:23:37.450002000 Z\nname_en:\n- \n- Panda Hat\nname_zh_cn:\n- \n- 熊猫帽子\n	2022-09-01 06:23:37.450002
225	OutletSku	43	create	0qa(1)	---\nid:\n- \n- 43\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 44\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:23:37.495125000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:23:37.495125000 Z\n	2022-09-01 06:23:37.495125
226	Image	50	update	0qa(1)	---\ntarget_id:\n- \n- 44\ntarget_type:\n- \n- Sku\n	2022-09-01 06:23:37.52171
227	Image	51	create	0qa(1)	---\nid:\n- \n- 51\nimage:\n- \n- 水獭s.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:31:33.340652000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:31:33.340652000 Z\n	2022-09-01 06:31:33.340652
228	Sku	45	create	0qa(1)	---\nid:\n- \n- 45\nmaster_sku_ref:\n- \n- RW-GS-Otter Doll-S\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.188e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:31:51.501148000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:31:51.501148000 Z\nname_en:\n- \n- Otter Doll S\nname_zh_cn:\n- \n- 小号水獭公仔\n	2022-09-01 06:31:51.501148
229	OutletSku	44	create	0qa(1)	---\nid:\n- \n- 44\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 45\nquantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:31:51.511680000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:31:51.511680000 Z\n	2022-09-01 06:31:51.51168
230	Image	51	update	0qa(1)	---\ntarget_id:\n- \n- 45\ntarget_type:\n- \n- Sku\n	2022-09-01 06:31:51.525683
231	VoucherSku	7	create	0qa(1)	---\nid:\n- \n- 7\nquantity:\n- 0\n- 50\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.288e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.99e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:34:23.220466000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:34:23.220466000 Z\nname_en:\n- \n- Holiday Voucher\nname_zh_cn:\n- \n- 节日券\n	2022-09-01 06:34:23.220466
232	Image	52	create	0qa(1)	---\nid:\n- \n- 52\nimage:\n- \n- 水獭l.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:34:37.045764000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:34:37.045764000 Z\n	2022-09-01 06:34:37.045764
233	Sku	46	create	0qa(1)	---\nid:\n- \n- 46\nmaster_sku_ref:\n- \n- RW-GS-Otter Doll-L\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:35:24.309354000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:35:24.309354000 Z\nname_en:\n- \n- Otter Doll L\nname_zh_cn:\n- \n- 大号水獭公仔\n	2022-09-01 06:35:24.309354
234	OutletSku	45	create	0qa(1)	---\nid:\n- \n- 45\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 46\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:35:24.353838000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:35:24.353838000 Z\n	2022-09-01 06:35:24.353838
235	Image	52	update	0qa(1)	---\ntarget_id:\n- \n- 46\ntarget_type:\n- \n- Sku\n	2022-09-01 06:35:24.374572
236	VoucherSku	8	create	0qa(1)	---\nid:\n- \n- 8\nquantity:\n- 0\n- 50\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.99e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.219e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:35:50.813586000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:35:50.813586000 Z\nname_en:\n- \n- Brand Voucher\nname_zh_cn:\n- \n- 品牌券\n	2022-09-01 06:35:50.813586
237	Image	53	create	0qa(1)	---\nid:\n- \n- 53\nimage:\n- \n- shuatabeigreen.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:52:01.778497000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:52:01.778497000 Z\n	2022-09-01 06:52:01.778497
238	Sku	47	create	0qa(1)	---\nid:\n- \n- 47\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Gr\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:52:21.609662000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:52:21.609662000 Z\nname_en:\n- \n- Otter Cup Green\nname_zh_cn:\n- \n- 绿色水獭杯子\n	2022-09-01 06:52:21.609662
239	OutletSku	46	create	0qa(1)	---\nid:\n- \n- 46\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 47\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:52:21.626511000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:52:21.626511000 Z\n	2022-09-01 06:52:21.626511
240	Image	53	update	0qa(1)	---\ntarget_id:\n- \n- 47\ntarget_type:\n- \n- Sku\n	2022-09-01 06:52:21.644961
241	Image	54	create	0qa(1)	---\nid:\n- \n- 54\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:53:40.493578000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:53:40.493578000 Z\n	2022-09-01 06:53:40.493578
242	Sku	48	create	0qa(1)	---\nid:\n- \n- 48\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Bl\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:53:57.076570000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:53:57.076570000 Z\nname_en:\n- \n- Otter Cup Blue\nname_zh_cn:\n- \n- 蓝色水獭杯\n	2022-09-01 06:53:57.07657
243	OutletSku	47	create	0qa(1)	---\nid:\n- \n- 47\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 48\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:53:57.096619000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:53:57.096619000 Z\n	2022-09-01 06:53:57.096619
244	Image	54	update	0qa(1)	---\ntarget_id:\n- \n- 48\ntarget_type:\n- \n- Sku\n	2022-09-01 06:53:57.120514
263	Outlet	3	update	0qa(1)	---\nname:\n- '{"en":"1","zh-CN":"11"}'\n- '{"en":"8888","zh-CN":"11"}'\nshort_desc:\n- '{"en":"222","zh-CN":"22"}'\n- '{"en":"8888","zh-CN":"22"}'\nname_en:\n- '1'\n- '8888'\nshort_desc_en:\n- '222'\n- '8888'\n	2022-09-06 07:59:02.687101
245	VoucherSku	9	create	0qa(1)	---\nid:\n- \n- 9\nquantity:\n- 0\n- 50\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e3\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.369e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:02:36.429207000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:02:36.429207000 Z\nname_en:\n- \n- Free Food Voucher\nname_zh_cn:\n- \n- 折扣券\n	2022-09-01 09:02:36.429207
246	VoucherSku	9	update	0qa(1)	---\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.3e3\n- !ruby/object:BigDecimal 18:0.299e3\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.66e2\nname_en:\n- Free Food Voucher\n- Discount Voucher\n	2022-09-01 09:03:11.339342
247	Sku	41	update	\N	---\nname:\n- \n- '{"en":"dd"}'\nname_en:\n- \n- dd\n	2022-09-05 07:44:20.477006
248	Sku	48	update	0qa(1)	---\nname:\n- \n- '{"en":"en","zh-CN":"cn"}'\nname_en:\n- \n- en\nname_zh_cn:\n- \n- cn\n	2022-09-05 07:53:39.998637
249	Outlet	10	update	0qa(1)	---\nname:\n- \n- "{}"\naddress:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 11:02:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 11:02:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 13:02:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 13:02:00.000000000 Z\n	2022-09-06 03:02:45.762236
250	Outlet	3	update	0qa(1)	---\nname:\n- \n- "{}"\naddress:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 10:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 19:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 20:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 20:00:00.000000000 Z\n	2022-09-06 03:07:08.935809
251	Outlet	3	update	0qa(1)	---\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 12:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 12:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 20:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 20:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 22:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 22:00:00.000000000 Z\n	2022-09-06 03:09:11.678435
252	Sku	47	update	0qa(1)	---\nname:\n- \n- "{}"\n	2022-09-06 03:15:28.442675
253	Sku	47	update	0qa(1)	---\nname:\n- \n- '{"en":"coffee cup","zh-CN":"咖啡杯"}'\nname_en:\n- \n- coffee cup\nname_zh_cn:\n- \n- 咖啡杯\n	2022-09-06 04:03:12.102574
254	VoucherSku	10	create	0huyang(2)	---\nid:\n- \n- 10\nname:\n- \n- '{"en":"oucher SKU","zh-CN":"撒打算大的"}'\nquantity:\n- 0\n- 20\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- \nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.13e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.13e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 05:08:02.561300000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 05:08:02.561300000 Z\nname_en:\n- \n- oucher SKU\nname_zh_cn:\n- \n- 撒打算大的\n	2022-09-06 05:08:02.5613
255	VoucherApplicableTarget	3	create	0huyang(2)	---\nid:\n- \n- 3\nvoucher_sku_id:\n- \n- 10\nvoucher_applicable_id:\n- \n- 8\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- "{}"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 05:08:02.573248000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 05:08:02.573248000 Z\n	2022-09-06 05:08:02.573248
256	VoucherApplicableTarget	4	create	0huyang(2)	---\nid:\n- \n- 4\nvoucher_sku_id:\n- \n- 10\nvoucher_applicable_id:\n- \n- 7\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ulu Ulu Wild Restaurant E-shop","zh-CN":"乌鲁乌鲁野生餐厅网店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 05:08:02.580118000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 05:08:02.580118000 Z\nvoucher_applicable_name_en:\n- \n- Ulu Ulu Wild Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 乌鲁乌鲁野生餐厅网店\n	2022-09-06 05:08:02.580118
257	Outlet	10	update	0qa(1)	---\nname:\n- \n- '{"en":"outlet name","zh-CN":"线下肯德基"}'\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 11:02:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 11:02:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 09:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 13:02:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 13:02:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 19:00:00.000000000 Z\nname_en:\n- \n- outlet name\nname_zh_cn:\n- \n- 线下肯德基\n	2022-09-06 07:28:21.598313
258	Outlet	10	update	0qa(1)	---\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 12:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 12:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 19:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 22:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 22:00:00.000000000 Z\n	2022-09-06 07:31:39.096378
259	Outlet	9	update	0qa(1)	---\nname:\n- \n- '{"en":"test","zh-CN":"测试"}'\naddress:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nname_en:\n- \n- test\nname_zh_cn:\n- \n- 测试\n	2022-09-06 07:33:31.228509
260	Outlet	9	update	0qa(1)	---\naddress:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- '{"en":"1","zh-CN":"1"}'\ndesc:\n- \n- '{"en":"1","zh-CN":"1"}'\naddress_en:\n- \n- '1'\naddress_zh_cn:\n- \n- '1'\nshort_desc_en:\n- \n- '1'\nshort_desc_zh_cn:\n- \n- '1'\ndesc_en:\n- \n- '1'\ndesc_zh_cn:\n- \n- '1'\n	2022-09-06 07:33:53.936315
261	Outlet	3	update	0qa(1)	---\nname:\n- \n- '{"en":"test three","zh-CN":"测试三"}'\nname_en:\n- \n- test three\nname_zh_cn:\n- \n- 测试三\n	2022-09-06 07:57:07.87021
262	Outlet	3	update	0qa(1)	---\nname:\n- '{"en":"test three","zh-CN":"测试三"}'\n- '{"en":"1","zh-CN":"11"}'\naddress:\n- \n- '{"en":"22","zh-CN":"22"}'\nshort_desc:\n- \n- '{"en":"222","zh-CN":"22"}'\ndesc:\n- \n- '{"en":"333","zh-CN":"44"}'\nname_en:\n- test three\n- '1'\nname_zh_cn:\n- 测试三\n- '11'\naddress_en:\n- \n- '22'\naddress_zh_cn:\n- \n- '22'\nshort_desc_en:\n- \n- '222'\nshort_desc_zh_cn:\n- \n- '22'\ndesc_en:\n- \n- '333'\ndesc_zh_cn:\n- \n- '44'\n	2022-09-06 07:58:36.157668
264	Outlet	3	update	0qa(1)	---\nname:\n- '{"en":"8888","zh-CN":"11"}'\n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\naddress:\n- '{"en":"22","zh-CN":"22"}'\n- '{"en":"Entrance to Singapore Zoo","zh-CN":"新加坡动物园入口处"}'\nshort_desc:\n- '{"en":"8888","zh-CN":"22"}'\n- '{"en":"Here you can buy Singapore Zoo souvenirs","zh-CN":"在这里你可以购买新加坡动物园纪念品"}'\ndesc:\n- '{"en":"333","zh-CN":"44"}'\n- '{"en":"Lf you love animals, welcome to buy our products","zh-CN":"如果您喜爱动物，欢迎购买我店产品"}'\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 12:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 12:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 07:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 07:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 22:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 22:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 21:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 21:00:00.000000000 Z\nname_en:\n- '8888'\n- Singapore Zoo Gift Shop\nname_zh_cn:\n- '11'\n- 新加坡动物园礼品店\naddress_en:\n- '22'\n- Entrance to Singapore Zoo\naddress_zh_cn:\n- '22'\n- 新加坡动物园入口处\nshort_desc_en:\n- '8888'\n- Here you can buy Singapore Zoo souvenirs\nshort_desc_zh_cn:\n- '22'\n- 在这里你可以购买新加坡动物园纪念品\ndesc_en:\n- '333'\n- Lf you love animals, welcome to buy our products\ndesc_zh_cn:\n- '44'\n- 如果您喜爱动物，欢迎购买我店产品\n	2022-09-06 08:08:32.383357
265	Sku	48	update	0qa(1)	---\nname:\n- '{"en":"en","zh-CN":"cn"}'\n- '{"en":"Blue Otter Cup ","zh-CN":"蓝色水獭杯"}'\nname_en:\n- en\n- 'Blue Otter Cup '\nname_zh_cn:\n- cn\n- 蓝色水獭杯\n	2022-09-06 08:12:03.90136
266	OutletSku	48	create	0qa(1)	---\nid:\n- \n- 48\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 48\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 08:12:03.933387000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 08:12:03.933387000 Z\n	2022-09-06 08:12:03.933387
267	Sku	1	update	0qa(1)	---\nname:\n- \n- '{"en":"Brown Small Kangaroo Doll","zh-CN":"棕色小号袋鼠玩偶"}'\nname_en:\n- \n- Brown Small Kangaroo Doll\nname_zh_cn:\n- \n- 棕色小号袋鼠玩偶\n	2022-09-06 08:16:48.524355
268	Sku	2	update	0qa(1)	---\nname:\n- \n- '{"en":"Grey Large Kangaroo Doll","zh-CN":"灰色大号袋鼠玩偶"}'\nname_en:\n- \n- Grey Large Kangaroo Doll\nname_zh_cn:\n- \n- 灰色大号袋鼠玩偶\n	2022-09-06 08:18:56.785302
269	Sku	3	update	0qa(1)	---\nname:\n- \n- '{"en":"Medium Giraffe Cushion Pillow","zh-CN":"中号长劲鹿抱枕"}'\nname_en:\n- \n- Medium Giraffe Cushion Pillow\nname_zh_cn:\n- \n- 中号长劲鹿抱枕\n	2022-09-06 08:20:03.046038
270	Sku	4	update	0qa(1)	---\nname:\n- \n- '{"en":"Zebra Badge","zh-CN":"斑马徽章"}'\nname_en:\n- \n- Zebra Badge\nname_zh_cn:\n- \n- 斑马徽章\n	2022-09-06 08:20:41.753258
271	Sku	3	update	0qa(1)	---\nname:\n- '{"en":"Medium Giraffe Cushion Pillow","zh-CN":"中号长劲鹿抱枕"}'\n- '{"en":"Medium Giraffe Pillow","zh-CN":"中号长劲鹿抱枕"}'\nname_en:\n- Medium Giraffe Cushion Pillow\n- Medium Giraffe Pillow\n	2022-09-06 08:21:11.16248
272	Sku	5	update	0qa(1)	---\nname:\n- \n- '{"en":"Elephant Keychain","zh-CN":"大象钥匙扣"}'\nname_en:\n- \n- Elephant Keychain\nname_zh_cn:\n- \n- 大象钥匙扣\n	2022-09-06 08:21:48.826979
273	OutletSku	1	update	0qa(1)	---\nquantity:\n- 1000\n- 0\n	2022-09-06 08:38:40.816228
274	OutletSku	48	update	0qa(1)	---\nquantity:\n- 100\n- 0\n	2022-09-06 09:09:30.369845
275	Image	55	create	0qa(1)	---\nid:\n- \n- 55\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:12:25.623216000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:12:25.623216000 Z\n	2022-09-06 09:12:25.623216
276	Image	56	create	0qa(1)	---\nid:\n- \n- 56\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:13:38.020139000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:13:38.020139000 Z\n	2022-09-06 09:13:38.020139
277	Outlet	10	update	0qa(1)	---\nname:\n- '{"en":"outlet name","zh-CN":"线下肯德基"}'\n- '{"en":"Rriver Wonders Gift Shop","zh-CN":"河川生态公园礼品店"}'\naddress:\n- \n- '{"en":"Inside the Rriver Wonders","zh-CN":"河川公园内"}'\nshort_desc:\n- \n- '{"en":"Here you can buy special souvenirs in the Rriver Wonders","zh-CN":"在这里你可以购买河川生态公园内的特色纪念品"}'\nname_en:\n- outlet name\n- Rriver Wonders Gift Shop\nname_zh_cn:\n- 线下肯德基\n- 河川生态公园礼品店\naddress_en:\n- \n- Inside the Rriver Wonders\naddress_zh_cn:\n- \n- 河川公园内\nshort_desc_en:\n- \n- Here you can buy special souvenirs in the Rriver Wonders\nshort_desc_zh_cn:\n- \n- 在这里你可以购买河川生态公园内的特色纪念品\n	2022-09-06 09:18:41.667185
278	Image	57	create	0qa(1)	---\nid:\n- \n- 57\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:19:24.632832000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:19:24.632832000 Z\n	2022-09-06 09:19:24.632832
279	Sku	49	create	0qa(1)	---\nid:\n- \n- 49\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Bl\nname:\n- \n- '{"en":"Blue Otter Cup","zh-CN":"蓝色水獭杯"}'\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:19:50.570469000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:19:50.570469000 Z\nname_en:\n- \n- Blue Otter Cup\nname_zh_cn:\n- \n- 蓝色水獭杯\n	2022-09-06 09:19:50.570469
280	OutletSku	49	create	0qa(1)	---\nid:\n- \n- 49\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 49\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:19:50.579650000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:19:50.579650000 Z\n	2022-09-06 09:19:50.57965
281	Image	57	update	0qa(1)	---\ntarget_id:\n- \n- 49\ntarget_type:\n- \n- Sku\n	2022-09-06 09:19:50.639466
282	Sku	47	update	0qa(1)	---\nname:\n- '{"en":"coffee cup","zh-CN":"咖啡杯"}'\n- '{"en":"Green Otter Cup","zh-CN":"绿色水獭杯"}'\nname_en:\n- coffee cup\n- Green Otter Cup\nname_zh_cn:\n- 咖啡杯\n- 绿色水獭杯\n	2022-09-06 09:20:46.044134
302	Sku	16	update	0qa(1)	---\nname:\n- \n- '{"en":"Grapefruit Guice","zh-CN":"鲜榨西柚汁"}'\nname_en:\n- \n- Grapefruit Guice\nname_zh_cn:\n- \n- 鲜榨西柚汁\n	2022-09-06 09:48:31.970825
303	Sku	17	update	0qa(1)	---\nname:\n- \n- '{"en":"Grape Guice","zh-CN":"鲜榨葡萄汁"}'\nname_en:\n- \n- Grape Guice\nname_zh_cn:\n- \n- 鲜榨葡萄汁\n	2022-09-06 09:48:56.597236
304	Sku	18	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Flamingo T-Shirt","zh-CN":"小号火烈鸟体恤衫"}'\nname_en:\n- \n- Small Flamingo T-Shirt\nname_zh_cn:\n- \n- 小号火烈鸟体恤衫\n	2022-09-06 09:49:57.307087
305	Sku	19	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Flamingo T-Shirt","zh-CN":"大号火烈鸟体恤衫"}'\nname_en:\n- \n- Large Flamingo T-Shirt\nname_zh_cn:\n- \n- 大号火烈鸟体恤衫\n	2022-09-06 09:50:41.129949
283	Outlet	9	update	0qa(1)	---\nname:\n- '{"en":"test","zh-CN":"测试"}'\n- '{"en":"Ulu Ulu Wild Restaurant","zh-CN":"乌鲁乌鲁野生餐厅"}'\naddress:\n- '{"en":"1","zh-CN":"1"}'\n- '{"en":"Entrance to Night Safari","zh-CN":"夜间野生动物园入口处"}'\nshort_desc:\n- '{"en":"1","zh-CN":"1"}'\n- "{}"\ndesc:\n- '{"en":"1","zh-CN":"1"}'\n- "{}"\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 06:30:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 06:30:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 23:24:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 23:24:00.000000000 Z\nname_en:\n- test\n- Ulu Ulu Wild Restaurant\nname_zh_cn:\n- 测试\n- 乌鲁乌鲁野生餐厅\naddress_en:\n- '1'\n- Entrance to Night Safari\naddress_zh_cn:\n- '1'\n- 夜间野生动物园入口处\nshort_desc_en:\n- '1'\n- \nshort_desc_zh_cn:\n- '1'\n- \ndesc_en:\n- '1'\n- \ndesc_zh_cn:\n- '1'\n- \n	2022-09-06 09:25:02.168329
284	Outlet	8	update	0qa(1)	---\nname:\n- \n- '{"en":"Night Safari Gift Shop","zh-CN":"夜间野生动物园纪念品店"}'\naddress:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 07:27:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 07:27:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 19:27:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 19:27:00.000000000 Z\nname_en:\n- \n- Night Safari Gift Shop\nname_zh_cn:\n- \n- 夜间野生动物园纪念品店\n	2022-09-06 09:27:17.831305
285	Outlet	8	update	0qa(1)	---\naddress:\n- \n- '{"en":"Inside the Night Safari","zh-CN":"夜间野生动物园内"}'\naddress_en:\n- \n- Inside the Night Safari\naddress_zh_cn:\n- \n- 夜间野生动物园内\n	2022-09-06 09:27:56.646586
286	Outlet	7	update	0qa(1)	---\nname:\n- \n- '{"en":"Pizza Hut","zh-CN":"必胜客"}'\naddress:\n- \n- '{"en":"Jurong Bird Park Entrance","zh-CN":"裕廊飞禽公园入口处"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 06:30:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 06:30:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 17:30:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 17:30:00.000000000 Z\nphone_number:\n- ''\n- '0000000'\nwhatsapp_number:\n- ''\n- '898000'\nemail:\n- ''\n- PH@FOOYO.SG\nname_en:\n- \n- Pizza Hut\nname_zh_cn:\n- \n- 必胜客\naddress_en:\n- \n- Jurong Bird Park Entrance\naddress_zh_cn:\n- \n- 裕廊飞禽公园入口处\n	2022-09-06 09:30:44.666299
287	Outlet	6	update	0qa(1)	---\nname:\n- \n- '{"en":"Jurong Bird Park Gift Shop","zh-CN":"裕廊飞禽公园礼品店"}'\naddress:\n- \n- '{"en":"Jurong Bird Park Entrance","zh-CN":"裕廊飞禽公园入口处"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 17:31:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 17:31:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 23:31:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 23:31:00.000000000 Z\nname_en:\n- \n- Jurong Bird Park Gift Shop\nname_zh_cn:\n- \n- 裕廊飞禽公园礼品店\naddress_en:\n- \n- Jurong Bird Park Entrance\naddress_zh_cn:\n- \n- 裕廊飞禽公园入口处\n	2022-09-06 09:32:02.679451
288	Outlet	4	update	0qa(1)	---\nname:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\naddress:\n- \n- '{"en":"Inside the Singapore Zoo","zh-CN":"新加坡动物园内"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 09:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 19:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 19:00:00.000000000 Z\nname_en:\n- \n- KFC\nname_zh_cn:\n- \n- 肯德基\naddress_en:\n- \n- Inside the Singapore Zoo\naddress_zh_cn:\n- \n- 新加坡动物园内\n	2022-09-06 09:32:56.678588
289	Outlet	5	update	0qa(1)	---\nname:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\naddress:\n- \n- '{"en":"Entrance to Singapore Zoo","zh-CN":"新加坡动物园入口处"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nname_en:\n- \n- Ah Meng Restaurant\nname_zh_cn:\n- \n- 阿明饭店\naddress_en:\n- \n- Entrance to Singapore Zoo\naddress_zh_cn:\n- \n- 新加坡动物园入口处\n	2022-09-06 09:36:04.093872
290	Outlet	5	update	0qa(1)	---\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 06:36:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 06:36:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 19:36:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 19:36:00.000000000 Z\n	2022-09-06 09:36:22.548072
291	Sku	7	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Beef Burger","zh-CN":"大号牛肉汉堡"}'\nname_en:\n- \n- Large Beef Burger\nname_zh_cn:\n- \n- 大号牛肉汉堡\n	2022-09-06 09:37:41.293443
292	Sku	8	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Beef Burger","zh-CN":"小份牛肉汉堡"}'\nname_en:\n- \n- Small Beef Burger\nname_zh_cn:\n- \n- 小份牛肉汉堡\n	2022-09-06 09:38:26.908212
293	Sku	9	update	0qa(1)	---\nname:\n- \n- '{"en":"large Coke","zh-CN":"大杯可乐"}'\nname_en:\n- \n- large Coke\nname_zh_cn:\n- \n- 大杯可乐\n	2022-09-06 09:39:34.576913
294	Outlet	3	update	0qa(1)	---\ndesc:\n- '{"en":"Lf you love animals, welcome to buy our products","zh-CN":"如果您喜爱动物，欢迎购买我店产品"}'\n- '{"en":"If you love animals, welcome to buy our products","zh-CN":"如果您喜爱动物，欢迎购买我店产品"}'\ndesc_en:\n- Lf you love animals, welcome to buy our products\n- If you love animals, welcome to buy our products\n	2022-09-06 09:40:01.410284
295	Sku	10	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Coke","zh-CN":"小杯可乐"}'\nname_en:\n- \n- Small Coke\nname_zh_cn:\n- \n- 小杯可乐\n	2022-09-06 09:40:36.764046
296	Sku	11	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Fries","zh-CN":"大份薯条"}'\nname_en:\n- \n- Large Fries\nname_zh_cn:\n- \n- 大份薯条\n	2022-09-06 09:42:01.091314
297	Sku	9	update	0qa(1)	---\nname:\n- '{"en":"large Coke","zh-CN":"大杯可乐"}'\n- '{"en":"Large Coke","zh-CN":"大杯可乐"}'\nname_en:\n- large Coke\n- Large Coke\n	2022-09-06 09:42:14.592942
298	Sku	12	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Fries-","zh-CN":"小份薯条"}'\nname_en:\n- \n- Small Fries-\nname_zh_cn:\n- \n- 小份薯条\n	2022-09-06 09:42:50.491786
299	Sku	13	update	0qa(1)	---\nname:\n- \n- '{"en":"Indian Turmeric Rice","zh-CN":"印度黄姜炒饭"}'\nname_en:\n- \n- Indian Turmeric Rice\nname_zh_cn:\n- \n- 印度黄姜炒饭\n	2022-09-06 09:45:01.430499
300	Sku	14	update	0qa(1)	---\nname:\n- \n- '{"en":"Hainan Chicken Rice","zh-CN":"海南鸡肉饭"}'\nname_en:\n- \n- Hainan Chicken Rice\nname_zh_cn:\n- \n- 海南鸡肉饭\n	2022-09-06 09:46:41.904584
301	Sku	15	update	0qa(1)	---\nname:\n- \n- '{"en":"Roast Chicken","zh-CN":"烤鸡"}'\nname_en:\n- \n- Roast Chicken\nname_zh_cn:\n- \n- 烤鸡\n	2022-09-06 09:48:06.57033
308	Sku	22	update	0qa(1)	---\nname:\n- \n- '{"en":"Medium Penguin Doll","zh-CN":"中号企鹅公仔"}'\nname_en:\n- \n- Medium Penguin Doll\nname_zh_cn:\n- \n- 中号企鹅公仔\n	2022-09-06 10:02:16.673063
309	Sku	23	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Penguin Doll","zh-CN":"大号企鹅公仔"}'\nname_en:\n- \n- Large Penguin Doll\nname_zh_cn:\n- \n- 大号企鹅公仔\n	2022-09-06 10:02:50.739618
310	Sku	24	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Blue Parrot Doll","zh-CN":"大号蓝色鹦鹉玩偶"}'\nname_en:\n- \n- Large Blue Parrot Doll\nname_zh_cn:\n- \n- 大号蓝色鹦鹉玩偶\n	2022-09-06 10:04:45.602512
311	Sku	25	update	0qa(1)	---\nname:\n- \n- '{"en":"Medium Red Parrot Doll","zh-CN":"中号红色鹦鹉玩偶"}'\nname_en:\n- \n- Medium Red Parrot Doll\nname_zh_cn:\n- \n- 中号红色鹦鹉玩偶\n	2022-09-06 10:05:46.584817
312	Sku	26	update	0qa(1)	---\nname:\n- \n- '{"en":"Small White Parrot Doll","zh-CN":"小号白色鹦鹉玩偶"}'\nname_en:\n- \n- Small White Parrot Doll\nname_zh_cn:\n- \n- 小号白色鹦鹉玩偶\n	2022-09-06 10:06:45.008377
313	Sku	27	update	0qa(1)	---\nname:\n- \n- '{"en":"Tomato Pasta","zh-CN":"番茄意面"}'\nname_en:\n- \n- Tomato Pasta\nname_zh_cn:\n- \n- 番茄意面\n	2022-09-06 10:07:07.991795
314	Sku	46	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Otter Doll","zh-CN":"大号水獭公仔"}'\nname_en:\n- \n- Large Otter Doll\nname_zh_cn:\n- \n- 大号水獭公仔\n	2022-09-06 10:07:42.765306
315	Sku	45	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Otter Doll","zh-CN":"小号水獭公仔"}'\nname_en:\n- \n- Small Otter Doll\nname_zh_cn:\n- \n- 小号水獭公仔\n	2022-09-06 10:08:13.626054
316	Sku	44	update	0qa(1)	---\nname:\n- \n- '{"en":"Panda Hat","zh-CN":"熊猫帽"}'\nname_en:\n- \n- Panda Hat\nname_zh_cn:\n- \n- 熊猫帽\n	2022-09-06 10:08:41.118972
317	Sku	43	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Panda Doll","zh-CN":"大号熊猫玩具"}'\nname_en:\n- \n- Large Panda Doll\nname_zh_cn:\n- \n- 大号熊猫玩具\n	2022-09-06 10:09:14.009147
318	Sku	42	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Panda Doll","zh-CN":"小号熊猫玩具"}'\nname_en:\n- \n- Small Panda Doll\nname_zh_cn:\n- \n- 小号熊猫玩具\n	2022-09-06 10:09:47.430977
319	Sku	41	update	0qa(1)	---\nname:\n- '{"en":"dd"}'\n- '{"en":"Red Bean Ice","zh-CN":"红豆冰"}'\nname_en:\n- dd\n- Red Bean Ice\nname_zh_cn:\n- \n- 红豆冰\n	2022-09-06 10:10:07.609585
320	Sku	40	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Curry Chicken Rices","zh-CN":"大份咖喱鸡肉饭"}'\nname_en:\n- \n- Large Curry Chicken Rices\nname_zh_cn:\n- \n- 大份咖喱鸡肉饭\n	2022-09-06 10:10:53.684452
321	Sku	39	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Curry Chicken Rices","zh-CN":"小份咖喱鸡肉饭"}'\nname_en:\n- \n- Small Curry Chicken Rices\nname_zh_cn:\n- \n- 小份咖喱鸡肉饭\n	2022-09-06 10:11:21.77017
322	Sku	38	update	0qa(1)	---\nname:\n- \n- '{"en":"Indian Pancakes","zh-CN":"印度手抓饼"}'\nname_en:\n- \n- Indian Pancakes\nname_zh_cn:\n- \n- 印度手抓饼\n	2022-09-06 10:11:49.25745
323	Sku	37	update	0qa(1)	---\nname:\n- \n- '{"en":"Indian Pilaf","zh-CN":"印度手抓饭"}'\nname_en:\n- \n- Indian Pilaf\nname_zh_cn:\n- \n- 印度手抓饭\n	2022-09-06 10:12:11.507295
324	Sku	38	update	0qa(1)	---\nname:\n- '{"en":"Indian Pancakes","zh-CN":"印度手抓饼"}'\n- '{"en":"Indian Pancakes","zh-CN":"印度甩饼"}'\nname_zh_cn:\n- 印度手抓饼\n- 印度甩饼\n	2022-09-06 10:12:27.146052
325	Sku	36	update	0qa(1)	---\nname:\n- \n- '{"en":"Medium Lion Toy","zh-CN":"中号狮子玩具"}'\nname_en:\n- \n- Medium Lion Toy\nname_zh_cn:\n- \n- 中号狮子玩具\n	2022-09-06 10:12:58.315608
326	Sku	35	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Lion Toy","zh-CN":"小号狮子玩具"}'\nname_en:\n- \n- Small Lion Toy\nname_zh_cn:\n- \n- 小号狮子玩具\n	2022-09-06 10:13:30.053469
327	Sku	34	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Lion Toy","zh-CN":"大号狮子玩具"}'\nname_en:\n- \n- Large Lion Toy\nname_zh_cn:\n- \n- 大号狮子玩具\n	2022-09-06 10:14:29.651968
328	Sku	33	update	0qa(1)	---\nname:\n- \n- '{"en":"Black Pepper Steak","zh-CN":"黑椒牛排"}'\nname_en:\n- \n- Black Pepper Steak\nname_zh_cn:\n- \n- 黑椒牛排\n	2022-09-06 10:14:53.657097
329	Sku	32	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Seafood Pizza","zh-CN":"大份海鲜披萨"}'\nname_en:\n- \n- Large Seafood Pizza\nname_zh_cn:\n- \n- 大份海鲜披萨\n	2022-09-06 10:15:26.285136
330	Sku	31	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Seafood Pizza","zh-CN":"小份海鲜披萨"}'\nname_en:\n- \n- Small Seafood Pizza\nname_zh_cn:\n- \n- 小份海鲜披萨\n	2022-09-06 10:16:11.24931
331	Sku	30	update	0qa(1)	---\nname:\n- \n- '{"en":"Large Durian Pizza","zh-CN":"大份榴莲披萨"}'\nname_en:\n- \n- Large Durian Pizza\nname_zh_cn:\n- \n- 大份榴莲披萨\n	2022-09-06 10:16:41.934472
332	Sku	29	update	0qa(1)	---\nname:\n- \n- '{"en":"Small Durian Pizza","zh-CN":"小份榴莲披萨"}'\nname_en:\n- \n- Small Durian Pizza\nname_zh_cn:\n- \n- 小份榴莲披萨\n	2022-09-06 10:17:14.218528
333	Sku	28	update	0qa(1)	---\nname:\n- \n- '{"en":"Vanilla Anchovy Shrimp","zh-CN":"香草凤尾虾"}'\nname_en:\n- \n- Vanilla Anchovy Shrimp\nname_zh_cn:\n- \n- 香草凤尾虾\n	2022-09-06 10:18:00.281005
334	VoucherApplicableTarget	1	update	0qa(1)	---\nvoucher_applicable_name:\n- \n- "{}"\n	2022-09-06 10:26:13.091175
335	VoucherApplicableTarget	2	update	0qa(1)	---\nvoucher_applicable_name:\n- \n- "{}"\n	2022-09-06 10:26:13.104383
336	VoucherApplicableTarget	5	create	0qa(1)	---\nid:\n- \n- 5\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:27:18.024229000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:27:18.024229000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-06 10:27:18.024229
337	VoucherApplicableTarget	6	create	0qa(1)	---\nid:\n- \n- 6\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:27:48.117290000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:27:48.117290000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-06 10:27:48.11729
338	VoucherApplicableTarget	7	create	0qa(1)	---\nid:\n- \n- 7\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_id:\n- \n- 7\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ulu Ulu Wild Restaurant E-shop","zh-CN":"乌鲁乌鲁野生餐厅网店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:29:59.154202000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:29:59.154202000 Z\nvoucher_applicable_name_en:\n- \n- Ulu Ulu Wild Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 乌鲁乌鲁野生餐厅网店\n	2022-09-06 10:29:59.154202
339	VoucherApplicableTarget	8	create	0qa(1)	---\nid:\n- \n- 8\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_id:\n- \n- 1\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop","zh-CN":"新加坡动物园线上礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:36:56.565174000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:36:56.565174000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园线上礼品店\n	2022-09-06 10:36:56.565174
340	VoucherApplicableTarget	9	create	0qa(1)	---\nid:\n- \n- 9\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:36:56.574876000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:36:56.574876000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-06 10:36:56.574876
341	VoucherApplicableTarget	9	update	0qa(1)	---\nvoucher_applicable_id:\n- 3\n- 1\nvoucher_applicable_type:\n- Outlet\n- Shop\nvoucher_applicable_name:\n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\n- '{"en":"Singapore Zoo Gift E-shop","zh-CN":"新加坡动物园线上礼品店"}'\nvoucher_applicable_name_en:\n- Singapore Zoo Gift Shop\n- Singapore Zoo Gift E-shop\nvoucher_applicable_name_zh_cn:\n- 新加坡动物园礼品店\n- 新加坡动物园线上礼品店\n	2022-09-06 10:39:29.313677
342	VoucherApplicableTarget	10	create	0qa(1)	---\nid:\n- \n- 10\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 10:42:15.565323000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 10:42:15.565323000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-06 10:42:15.565323
343	VoucherSku	9	update	0qa(1)	---\nname:\n- \n- '{"en":"test","zh-CN":"测试"}'\nname_en:\n- \n- test\nname_zh_cn:\n- \n- 测试\n	2022-09-06 15:56:28.97016
344	VoucherSku	1	update	0qa(1)	---\nname:\n- \n- '{"en":"test one","zh-CN":"测试一"}'\nname_en:\n- \n- test one\nname_zh_cn:\n- \n- 测试一\n	2022-09-06 15:58:14.822295
345	VoucherApplicableTarget	1	update	0qa(1)	---\nvoucher_applicable_id:\n- 2\n- 3\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店线上店\n	2022-09-06 16:08:47.636522
346	VoucherApplicableTarget	2	update	0qa(1)	---\nvoucher_applicable_id:\n- 1\n- 5\nvoucher_applicable_name:\n- \n- '{"en":"Pizza Hut E-shop","zh-CN":"必胜客线上店"}'\nvoucher_applicable_name_en:\n- \n- Pizza Hut E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 必胜客线上店\n	2022-09-06 16:08:47.646247
347	VoucherSku	1	update	0qa(1)	---\nname:\n- '{"en":"test one","zh-CN":"测试一"}'\n- '{"en":"KFC Member Voucher","zh-CN":"KFC会员优惠券"}'\nname_en:\n- test one\n- KFC Member Voucher\nname_zh_cn:\n- 测试一\n- KFC会员优惠券\n	2022-09-07 01:37:36.945716
348	VoucherApplicableTarget	7	update	0qa(1)	---\nvoucher_applicable_id:\n- 7\n- 2\nvoucher_applicable_name:\n- '{"en":"Ulu Ulu Wild Restaurant E-shop","zh-CN":"乌鲁乌鲁野生餐厅网店"}'\n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\nvoucher_applicable_name_en:\n- Ulu Ulu Wild Restaurant E-shop\n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- 乌鲁乌鲁野生餐厅网店\n- 肯德基线上店\n	2022-09-07 01:37:36.972562
349	VoucherApplicableTarget	11	create	0qa(1)	---\nid:\n- \n- 11\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 01:37:36.985564000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 01:37:36.985564000 Z\nvoucher_applicable_name_en:\n- \n- KFC\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基\n	2022-09-07 01:37:36.985564
350	VoucherSku	11	create	0qa(1)	---\nid:\n- \n- 11\nname:\n- \n- '{"en":"SZ Member Voucher","zh-CN":"新加坡动物园会员优惠券"}'\nquantity:\n- 0\n- 100\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:19:45.732415000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:19:45.732415000 Z\nname_en:\n- \n- SZ Member Voucher\nname_zh_cn:\n- \n- 新加坡动物园会员优惠券\n	2022-09-07 03:19:45.732415
351	VoucherApplicableTarget	12	create	0qa(1)	---\nid:\n- \n- 12\nvoucher_sku_id:\n- \n- 11\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:19:45.755801000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:19:45.755801000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-07 03:19:45.755801
352	VoucherApplicableTarget	13	create	0qa(1)	---\nid:\n- \n- 13\nvoucher_sku_id:\n- \n- 11\nvoucher_applicable_id:\n- \n- 1\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop","zh-CN":"新加坡动物园线上礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:20:34.782265000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:20:34.782265000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园线上礼品店\n	2022-09-07 03:20:34.782265
353	VoucherSku	2	update	0qa(1)	---\nname:\n- \n- '{"en":"SZ Member Shop Voucher","zh-CN":"新加坡动物园会员优惠券"}'\nname_en:\n- \n- SZ Member Shop Voucher\nname_zh_cn:\n- \n- 新加坡动物园会员优惠券\n	2022-09-07 03:25:00.050665
354	VoucherSku	3	update	0qa(1)	---\nname:\n- \n- '{"en":"KFC Family Voucher","zh-CN":"肯德基家庭优惠券"}'\nname_en:\n- \n- KFC Family Voucher\nname_zh_cn:\n- \n- 肯德基家庭优惠券\n	2022-09-07 06:00:59.174437
355	VoucherApplicableTarget	14	create	0qa(1)	---\nid:\n- \n- 14\nvoucher_sku_id:\n- \n- 3\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:00:59.211769000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:00:59.211769000 Z\nvoucher_applicable_name_en:\n- \n- KFC\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基\n	2022-09-07 06:00:59.211769
356	VoucherSku	1	update	0qa(1)	---\nname:\n- '{"en":"KFC Member Voucher","zh-CN":"KFC会员优惠券"}'\n- '{"en":"KFC Member Voucher","zh-CN":"肯德基会员优惠券"}'\nname_zh_cn:\n- KFC会员优惠券\n- 肯德基会员优惠券\n	2022-09-07 06:01:16.890055
357	VoucherSku	4	update	0qa(1)	---\nname:\n- \n- '{"en":"KFC Holiday Voucher","zh-CN":"肯德基假期优惠券"}'\nname_en:\n- \n- KFC Holiday Voucher\nname_zh_cn:\n- \n- 肯德基假期优惠券\n	2022-09-07 06:03:21.517652
358	VoucherApplicableTarget	15	create	0qa(1)	---\nid:\n- \n- 15\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:03:21.541759000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:03:21.541759000 Z\nvoucher_applicable_name_en:\n- \n- KFC\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基\n	2022-09-07 06:03:21.541759
359	VoucherApplicableTarget	16	create	0qa(1)	---\nid:\n- \n- 16\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:03:21.551652000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:03:21.551652000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-07 06:03:21.551652
360	VoucherSku	6	update	0qa(1)	---\nname:\n- \n- '{"en":"cash ","zh-CN":"现金"}'\nname_en:\n- \n- 'cash '\nname_zh_cn:\n- \n- 现金\n	2022-09-07 06:33:29.574208
361	VoucherSku	7	update	0qa(1)	---\nname:\n- \n- '{"en":"KFC Holiday Voucher","zh-CN":"肯德基节日优惠券"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.5e2\nname_en:\n- \n- KFC Holiday Voucher\nname_zh_cn:\n- \n- 肯德基节日优惠券\n	2022-09-07 06:45:50.396081
362	VoucherApplicableTarget	17	create	0qa(1)	---\nid:\n- \n- 17\nvoucher_sku_id:\n- \n- 7\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:45:50.429975000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:45:50.429975000 Z\nvoucher_applicable_name_en:\n- \n- KFC\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基\n	2022-09-07 06:45:50.429975
363	VoucherApplicableTarget	18	create	0qa(1)	---\nid:\n- \n- 18\nvoucher_sku_id:\n- \n- 7\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:45:50.444826000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:45:50.444826000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-07 06:45:50.444826
364	VoucherSku	9	update	0qa(1)	---\nname:\n- '{"en":"test","zh-CN":"测试"}'\n- '{"en":"SZ Family Voucher","zh-CN":"新加坡动物园家庭优惠券"}'\nmin_spend:\n- !ruby/object:BigDecimal 18:0.66e2\n- !ruby/object:BigDecimal 18:0.8e3\nname_en:\n- test\n- SZ Family Voucher\nname_zh_cn:\n- 测试\n- 新加坡动物园家庭优惠券\n	2022-09-07 06:52:43.402774
365	VoucherApplicableTarget	6	update	0qa(1)	---\nvoucher_applicable_id:\n- 2\n- 3\nvoucher_applicable_type:\n- Shop\n- Outlet\nvoucher_applicable_name:\n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\nvoucher_applicable_name_en:\n- 'E-KFC '\n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- 肯德基线上店\n- 新加坡动物园礼品店\n	2022-09-07 06:52:43.458765
366	VoucherApplicableTarget	19	create	0qa(1)	---\nid:\n- \n- 19\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.470130000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:52:43.470130000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店\n	2022-09-07 06:52:43.47013
367	VoucherApplicableTarget	20	create	0qa(1)	---\nid:\n- \n- 20\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.482364000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:52:43.482364000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-07 06:52:43.482364
368	VoucherSku	9	update	0qa(1)	---\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.299e3\n- !ruby/object:BigDecimal 18:0.199e3\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.369e3\n- !ruby/object:BigDecimal 18:0.299e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.8e3\n- !ruby/object:BigDecimal 18:0.3e3\n	2022-09-07 06:53:16.096742
369	VoucherSku	8	update	0qa(1)	---\nname:\n- \n- '{"en":"AMR Discount Voucher","zh-CN":"阿明餐厅折扣券"}'\nname_en:\n- \n- AMR Discount Voucher\nname_zh_cn:\n- \n- 阿明餐厅折扣券\n	2022-09-07 06:55:17.290755
370	VoucherSku	4	update	0qa(1)	---\nname:\n- '{"en":"KFC Holiday Voucher","zh-CN":"肯德基假期优惠券"}'\n- '{"en":"KFC Cash Voucher","zh-CN":"肯德基现金优惠券"}'\nname_en:\n- KFC Holiday Voucher\n- KFC Cash Voucher\nname_zh_cn:\n- 肯德基假期优惠券\n- 肯德基现金优惠券\n	2022-09-07 06:59:21.445455
371	VoucherSku	12	create	0qa(1)	---\nid:\n- \n- 12\nname:\n- \n- '{"en":"SZ Holiday Voucher","zh-CN":"新加坡动物园假日优惠券"}'\nquantity:\n- 0\n- 100\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.286801000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.286801000 Z\nname_en:\n- \n- SZ Holiday Voucher\nname_zh_cn:\n- \n- 新加坡动物园假日优惠券\n	2022-09-07 07:02:53.286801
372	VoucherApplicableTarget	21	create	0qa(1)	---\nid:\n- \n- 21\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.293210000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.293210000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-07 07:02:53.29321
373	VoucherApplicableTarget	22	create	0qa(1)	---\nid:\n- \n- 22\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_id:\n- \n- 1\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop","zh-CN":"新加坡动物园线上礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.297849000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.297849000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园线上礼品店\n	2022-09-07 07:02:53.297849
374	VoucherApplicableTarget	23	create	0qa(1)	---\nid:\n- \n- 23\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.304261000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.304261000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店\n	2022-09-07 07:02:53.304261
375	VoucherApplicableTarget	24	create	0qa(1)	---\nid:\n- \n- 24\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.311957000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.311957000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店线上店\n	2022-09-07 07:02:53.311957
376	VoucherApplicableTarget	25	create	0qa(1)	---\nid:\n- \n- 25\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.317706000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.317706000 Z\nvoucher_applicable_name_en:\n- \n- KFC\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基\n	2022-09-07 07:02:53.317706
377	VoucherApplicableTarget	26	create	0qa(1)	---\nid:\n- \n- 26\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.323393000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.323393000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-07 07:02:53.323393
378	VoucherSku	6	update	0qa(1)	---\nname:\n- '{"en":"cash ","zh-CN":"现金"}'\n- '{"en":"BP Cash Voucher","zh-CN":"裕廊飞禽公园现金优惠券"}'\nname_en:\n- 'cash '\n- BP Cash Voucher\nname_zh_cn:\n- 现金\n- 裕廊飞禽公园现金优惠券\n	2022-09-07 07:06:10.587547
379	VoucherApplicableTarget	27	create	0qa(1)	---\nid:\n- \n- 27\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_id:\n- \n- 7\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Pizza Hut","zh-CN":"必胜客"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:06:10.630694000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:06:10.630694000 Z\nvoucher_applicable_name_en:\n- \n- Pizza Hut\nvoucher_applicable_name_zh_cn:\n- \n- 必胜客\n	2022-09-07 07:06:10.630694
380	VoucherApplicableTarget	28	create	0qa(1)	---\nid:\n- \n- 28\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Pizza Hut E-shop","zh-CN":"必胜客线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:06:10.642816000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:06:10.642816000 Z\nvoucher_applicable_name_en:\n- \n- Pizza Hut E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 必胜客线上店\n	2022-09-07 07:06:10.642816
381	VoucherApplicableTarget	29	create	0qa(1)	---\nid:\n- \n- 29\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_id:\n- \n- 6\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Jurong Bird Park Gift Shop","zh-CN":"裕廊飞禽公园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:06:10.653498000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:06:10.653498000 Z\nvoucher_applicable_name_en:\n- \n- Jurong Bird Park Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 裕廊飞禽公园礼品店\n	2022-09-07 07:06:10.653498
382	VoucherApplicableTarget	30	create	0qa(1)	---\nid:\n- \n- 30\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":" Feather House Gift E-shop","zh-CN":"羽毛屋礼品店网店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:06:10.663132000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:06:10.663132000 Z\nvoucher_applicable_name_en:\n- \n- " Feather House Gift E-shop"\nvoucher_applicable_name_zh_cn:\n- \n- 羽毛屋礼品店网店\n	2022-09-07 07:06:10.663132
383	VoucherSku	6	update	0qa(1)	---\nname:\n- '{"en":"BP Cash Voucher","zh-CN":"裕廊飞禽公园现金优惠券"}'\n- '{"en":" AMR Cash Voucher","zh-CN":"阿明餐厅现金优惠券"}'\nname_en:\n- BP Cash Voucher\n- " AMR Cash Voucher"\nname_zh_cn:\n- 裕廊飞禽公园现金优惠券\n- 阿明餐厅现金优惠券\n	2022-09-07 07:09:10.542594
384	VoucherApplicableTarget	31	create	0qa(1)	---\nid:\n- \n- 31\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.584622000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.584622000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店\n	2022-09-07 07:09:10.584622
385	VoucherApplicableTarget	32	create	0qa(1)	---\nid:\n- \n- 32\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.595600000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.595600000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店线上店\n	2022-09-07 07:09:10.5956
386	VoucherSku	13	create	0qa(1)	---\nid:\n- \n- 13\nname:\n- \n- '{"en":"SZ Cash Voucher","zh-CN":"新加坡动物园现金优惠券"}'\nquantity:\n- 0\n- 100\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e2\nmin_spend:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.031150000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.031150000 Z\nname_en:\n- \n- SZ Cash Voucher\nname_zh_cn:\n- \n- 新加坡动物园现金优惠券\n	2022-09-07 07:15:53.03115
387	VoucherApplicableTarget	33	create	0qa(1)	---\nid:\n- \n- 33\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.038082000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.038082000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-07 07:15:53.038082
388	VoucherApplicableTarget	34	create	0qa(1)	---\nid:\n- \n- 34\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 1\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop","zh-CN":"新加坡动物园线上礼品店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.043483000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.043483000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 新加坡动物园线上礼品店\n	2022-09-07 07:15:53.043483
389	VoucherApplicableTarget	35	create	0qa(1)	---\nid:\n- \n- 35\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.051994000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.051994000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店\n	2022-09-07 07:15:53.051994
390	VoucherApplicableTarget	36	create	0qa(1)	---\nid:\n- \n- 36\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.056432000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.056432000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店线上店\n	2022-09-07 07:15:53.056432
391	VoucherApplicableTarget	37	create	0qa(1)	---\nid:\n- \n- 37\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 4\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.062522000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.062522000 Z\nvoucher_applicable_name_en:\n- \n- KFC\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基\n	2022-09-07 07:15:53.062522
392	VoucherApplicableTarget	38	create	0qa(1)	---\nid:\n- \n- 38\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.066540000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.066540000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-07 07:15:53.06654
393	VoucherApplicableTarget	39	create	0qa(1)	---\nid:\n- \n- 39\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_id:\n- \n- 2\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.070367000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.070367000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\nvoucher_applicable_name_zh_cn:\n- \n- 肯德基线上店\n	2022-09-07 07:15:53.070367
394	VoucherApplicableTarget	40	create	0qa(1)	---\nid:\n- \n- 40\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:18:42.832638000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:18:42.832638000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店\n	2022-09-07 07:18:42.832638
395	VoucherApplicableTarget	41	create	0qa(1)	---\nid:\n- \n- 41\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:18:42.842130000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:18:42.842130000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店线上店\n	2022-09-07 07:18:42.84213
396	VoucherApplicableTarget	42	create	0qa(1)	---\nid:\n- \n- 42\nvoucher_sku_id:\n- \n- 8\nvoucher_applicable_id:\n- \n- 5\nvoucher_applicable_type:\n- \n- Outlet\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:19:32.084873000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:19:32.084873000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店\n	2022-09-07 07:19:32.084873
397	VoucherApplicableTarget	43	create	0qa(1)	---\nid:\n- \n- 43\nvoucher_sku_id:\n- \n- 8\nvoucher_applicable_id:\n- \n- 3\nvoucher_applicable_type:\n- \n- Shop\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:19:32.097236000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:19:32.097236000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\nvoucher_applicable_name_zh_cn:\n- \n- 阿明饭店线上店\n	2022-09-07 07:19:32.097236
398	Image	58	create	0qa(1)	---\nid:\n- \n- 58\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:53:01.404211000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:53:01.404211000 Z\n	2022-09-08 03:53:01.404211
399	OutletSku	50	create	0qa(1)	---\nid:\n- \n- 50\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 44\nquantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:56:37.360450000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:56:37.360450000 Z\n	2022-09-08 03:56:37.36045
400	Outlet	10	update	\N	---\ndesc:\n- \n- \n	2022-09-06 09:18:41.667185
401	Outlet	9	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-06 09:25:02.168329
402	Outlet	8	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-06 09:27:56.646586
403	Outlet	7	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-06 09:30:44.666299
404	Outlet	6	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-06 09:32:02.679451
405	Outlet	4	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-06 09:32:56.678588
406	Outlet	5	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-06 09:36:22.548072
407	Sku	50	create	0qa(1)	---\nid:\n- \n- 50\nmaster_sku_ref:\n- \n- '12345'\nname:\n- \n- '{"en":"test","zh-CN":"测试"}'\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.563266000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:17.563266000 Z\nname_en:\n- \n- test\nname_zh_cn:\n- \n- 测试\n	2022-09-08 06:19:17.563266
408	OutletSku	51	create	0qa(1)	---\nid:\n- \n- 51\noutlet_id:\n- \n- 3\nsku_id:\n- \n- 50\nquantity:\n- 0\n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.585426000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:17.585426000 Z\n	2022-09-08 06:19:17.585426
409	CustomAttribute	1	create	0qa(1)	---\nid:\n- \n- 1\nattributable_id:\n- \n- 50\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"color","zh-CN":"颜色"}'\nvalue:\n- \n- '{"en":"blue","zh-CN":"蓝"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.649164000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:17.649164000 Z\nname_en:\n- \n- color\nname_zh_cn:\n- \n- 颜色\nvalue_en:\n- \n- blue\nvalue_zh_cn:\n- \n- 蓝\n	2022-09-08 06:19:17.649164
410	CustomAttribute	2	create	0qa(1)	---\nid:\n- \n- 2\nattributable_id:\n- \n- 50\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"12","zh-CN":"34"}'\nvalue:\n- \n- '{"en":"45","zh-CN":"56"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:39.501645000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:39.501645000 Z\nname_en:\n- \n- '12'\nname_zh_cn:\n- \n- '34'\nvalue_en:\n- \n- '45'\nvalue_zh_cn:\n- \n- '56'\n	2022-09-08 06:19:39.501645
411	CustomAttribute	1	update	0qa(1)	---\nname:\n- '{"en":"color","zh-CN":"颜色"}'\n- '{"en":"color","zh-CN":"颜色1"}'\noverwritten:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:39:39.489473000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:39:39.489473000 Z\nname_zh_cn:\n- 颜色\n- 颜色1\n	2022-09-08 06:39:39.489838
412	CustomAttribute	1	update	0qa(1)	---\nname:\n- '{"en":"color","zh-CN":"颜色1"}'\n- '{"en":"color1","zh-CN":"颜色1"}'\noverwritten:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:39:39.489473000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:39:39.489473000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:40:04.083828000 Z\n  zone: *1\n  time: 2022-09-08 06:40:04.083828000 Z\nname_en:\n- color\n- color1\n	2022-09-08 06:40:04.084173
413	CustomAttribute	2	update	0qa(1)	---\nvalue:\n- '{"en":"45","zh-CN":"56"}'\n- '{"en":"45","zh-CN":"561"}'\noverwritten:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:40:04.093277000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:40:04.093277000 Z\nvalue_zh_cn:\n- '56'\n- '561'\n	2022-09-08 06:40:04.094504
414	OutletSku	1	update	0qa(1)	---\nquantity:\n- 0\n- 100\n	2022-09-08 06:53:28.755721
415	CustomAttribute	3	create	0qa(1)	---\nid:\n- \n- 3\nattributable_id:\n- \n- 1\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\nvalue:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:57:20.805366000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:57:20.805366000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\nvalue_en:\n- \n- small\nvalue_zh_cn:\n- \n- 小号\n	2022-09-08 06:57:20.805366
416	CustomAttribute	4	create	0qa(1)	---\nid:\n- \n- 4\nattributable_id:\n- \n- 2\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"gery","zh-CN":"灰色"}'\nvalue:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:59:50.810391000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:59:50.810391000 Z\nname_en:\n- \n- gery\nname_zh_cn:\n- \n- 灰色\nvalue_en:\n- \n- large\nvalue_zh_cn:\n- \n- 大号\n	2022-09-08 06:59:50.810391
417	CustomAttribute	5	create	0qa(1)	---\nid:\n- \n- 5\nattributable_id:\n- \n- 3\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\nvalue:\n- \n- '{"en":"yellow","zh-CN":"黄色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:48.223434000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:48.223434000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\nvalue_en:\n- \n- yellow\nvalue_zh_cn:\n- \n- 黄色\n	2022-09-08 07:00:48.223434
418	CustomAttribute	1	update	0qa(1)	---\nvalue:\n- '{"en":"blue","zh-CN":"蓝"}'\n- '{"en":"blues","zh-CN":"蓝"}'\noverwritten:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:40:04.083828000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:40:04.083828000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:17.419845000 Z\n  zone: *1\n  time: 2022-09-08 07:15:17.419845000 Z\nvalue_en:\n- blue\n- blues\n	2022-09-08 07:15:17.420225
419	CustomAttribute	1	update	0qa(1)	---\nvalue:\n- '{"en":"blues","zh-CN":"蓝"}'\n- '{"en":"blue","zh-CN":"蓝"}'\noverwritten:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:17.419845000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:17.419845000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:51:07.414001000 Z\n  zone: *1\n  time: 2022-09-08 07:51:07.414001000 Z\nvalue_en:\n- blues\n- blue\n	2022-09-08 07:51:07.414358
420	CustomAttribute	2	update	0qa(1)	---\nvalue:\n- '{"en":"45","zh-CN":"561"}'\n- '{"en":"45","zh-CN":"56"}'\noverwritten:\n- 2022-09-08 06:40:04.093277000 Z\n- 2022-09-08 09:22:29.253273000 Z\nvalue_zh_cn:\n- '561'\n- '56'\n	2022-09-08 09:22:29.253541
421	Outlet	10	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 12:00:00.000000000 Z\n- 2022-09-09 01:00:00.000000000 Z\noperation_time_end:\n- 2022-09-06 22:00:00.000000000 Z\n- 2022-09-09 12:00:00.000000000 Z\n	2022-09-09 01:50:24.161605
422	Outlet	9	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 06:30:00.000000000 Z\n- 2022-09-09 06:30:00.000000000 Z\noperation_time_end:\n- 2022-09-06 23:24:00.000000000 Z\n- 2022-09-09 14:24:00.000000000 Z\n	2022-09-09 01:50:37.75291
423	Outlet	8	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 07:27:00.000000000 Z\n- 2022-09-09 07:27:00.000000000 Z\noperation_time_end:\n- 2022-09-06 19:27:00.000000000 Z\n- 2022-09-09 14:27:00.000000000 Z\n	2022-09-09 01:50:52.521993
424	Outlet	7	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 06:30:00.000000000 Z\n- 2022-09-09 00:30:00.000000000 Z\noperation_time_end:\n- 2022-09-06 17:30:00.000000000 Z\n- 2022-09-09 04:30:00.000000000 Z\n	2022-09-09 01:51:07.761052
425	Outlet	6	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 17:31:00.000000000 Z\n- 2022-09-08 17:31:00.000000000 Z\noperation_time_end:\n- 2022-09-06 23:31:00.000000000 Z\n- 2022-09-08 23:31:00.000000000 Z\n	2022-09-09 01:51:17.683578
426	Outlet	5	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 06:36:00.000000000 Z\n- 2022-09-09 01:30:00.000000000 Z\noperation_time_end:\n- 2022-09-06 19:36:00.000000000 Z\n- 2022-09-09 10:30:00.000000000 Z\n	2022-09-09 01:51:36.411468
427	Outlet	4	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 09:00:00.000000000 Z\n- 2022-09-09 01:00:00.000000000 Z\noperation_time_end:\n- 2022-09-06 19:00:00.000000000 Z\n- 2022-09-09 05:00:00.000000000 Z\n	2022-09-09 01:51:53.407319
428	Outlet	3	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 07:00:00.000000000 Z\n- 2022-09-09 00:00:00.000000000 Z\noperation_time_end:\n- 2022-09-06 21:00:00.000000000 Z\n- 2022-09-09 10:00:00.000000000 Z\n	2022-09-09 01:52:14.956586
429	CustomAttribute	1	update	0qa(1)	---\nname:\n- '{"en":"color1","zh-CN":"颜色1"}'\n- '{"en":"color","zh-CN":"颜色1"}'\noverwritten:\n- 2022-09-08 07:51:07.414001000 Z\n- 2022-09-09 01:53:53.721373000 Z\nname_en:\n- color1\n- color\n	2022-09-09 01:53:53.721995
430	CustomAttribute	6	create	0qa(1)	---\nid:\n- \n- 6\nattributable_id:\n- \n- 4\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"anverage","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":"color","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:28:11.285027000 Z\nname_en:\n- \n- anverage\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- color\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:28:11.285027
431	CustomAttribute	7	create	0qa(1)	---\nid:\n- \n- 7\nattributable_id:\n- \n- 5\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:30:03.508261000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:30:03.508261
432	CustomAttribute	6	update	0qa(1)	---\nvalue:\n- '{"en":"color","zh-CN":"彩色"}'\n- '{"en":"colorful","zh-CN":"彩色"}'\noverwritten:\n- \n- 2022-09-09 02:30:23.101969000 Z\nvalue_en:\n- color\n- colorful\n	2022-09-09 02:30:23.102319
433	CustomAttribute	8	create	0qa(1)	---\nid:\n- \n- 8\nattributable_id:\n- \n- 7\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大份"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:32:11.047078000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大份\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:32:11.047078
434	CustomAttribute	9	create	0qa(1)	---\nid:\n- \n- 9\nattributable_id:\n- \n- 8\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"小份"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:32:43.662843000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小份\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:32:43.662843
435	CustomAttribute	10	create	0qa(1)	---\nid:\n- \n- 10\nattributable_id:\n- \n- 16\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"same capacity","zh-CN":"相同容量"}'\nvalue:\n- \n- '{"en":"pink","zh-CN":"粉色"}'\ncreated_at:\n- \n- 2022-09-09 02:34:43.376544000 Z\nname_en:\n- \n- same capacity\nname_zh_cn:\n- \n- 相同容量\nvalue_en:\n- \n- pink\nvalue_zh_cn:\n- \n- 粉色\n	2022-09-09 02:34:43.376544
436	CustomAttribute	11	create	0qa(1)	---\nid:\n- \n- 11\nattributable_id:\n- \n- 17\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"same capacity","zh-CN":"相同容量"}'\nvalue:\n- \n- '{"en":"Purple","zh-CN":"紫色"}'\ncreated_at:\n- \n- 2022-09-09 02:35:30.490584000 Z\nname_en:\n- \n- same capacity\nname_zh_cn:\n- \n- 相同容量\nvalue_en:\n- \n- Purple\nvalue_zh_cn:\n- \n- 紫色\n	2022-09-09 02:35:30.490584
437	CustomAttribute	11	update	0qa(1)	---\nvalue:\n- '{"en":"Purple","zh-CN":"紫色"}'\n- '{"en":"紫色","zh-CN":"Purple"}'\noverwritten:\n- \n- 2022-09-09 02:36:09.871675000 Z\nvalue_en:\n- Purple\n- 紫色\nvalue_zh_cn:\n- 紫色\n- Purple\n	2022-09-09 02:36:09.871999
438	CustomAttribute	11	update	0qa(1)	---\nvalue:\n- '{"en":"紫色","zh-CN":"Purple"}'\n- '{"en":"Purple","zh-CN":"紫色"}'\noverwritten:\n- 2022-09-09 02:36:09.871675000 Z\n- 2022-09-09 02:36:30.882124000 Z\nvalue_en:\n- 紫色\n- Purple\nvalue_zh_cn:\n- Purple\n- 紫色\n	2022-09-09 02:36:30.882549
439	CustomAttribute	12	create	0qa(1)	---\nid:\n- \n- 12\nattributable_id:\n- \n- 18\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"x小号"}'\nvalue:\n- \n- '{"en":"pink","zh-CN":"粉色"}'\ncreated_at:\n- \n- 2022-09-09 02:37:47.102005000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- x小号\nvalue_en:\n- \n- pink\nvalue_zh_cn:\n- \n- 粉色\n	2022-09-09 02:37:47.102005
440	CustomAttribute	13	create	0qa(1)	---\nid:\n- \n- 13\nattributable_id:\n- \n- 19\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\nvalue:\n- \n- '{"en":"pink","zh-CN":"粉色"}'\ncreated_at:\n- \n- 2022-09-09 02:38:20.575113000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\nvalue_en:\n- \n- pink\nvalue_zh_cn:\n- \n- 粉色\n	2022-09-09 02:38:20.575113
441	CustomAttribute	14	create	0qa(1)	---\nid:\n- \n- 14\nattributable_id:\n- \n- 20\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"same size","zh-CN":"相同大小"}'\nvalue:\n- \n- '{"en":"pink and white","zh-CN":"粉白色"}'\ncreated_at:\n- \n- 2022-09-09 02:39:27.328384000 Z\nname_en:\n- \n- same size\nname_zh_cn:\n- \n- 相同大小\nvalue_en:\n- \n- pink and white\nvalue_zh_cn:\n- \n- 粉白色\n	2022-09-09 02:39:27.328384
442	CustomAttribute	15	create	0qa(1)	---\nid:\n- \n- 15\nattributable_id:\n- \n- 21\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"小尺寸"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:40:11.155748000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小尺寸\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:40:11.155748
443	CustomAttribute	16	create	0qa(1)	---\nid:\n- \n- 16\nattributable_id:\n- \n- 22\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"medium","zh-CN":"中尺寸"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:40:45.885049000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中尺寸\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:40:45.885049
444	CustomAttribute	17	create	0qa(1)	---\nid:\n- \n- 17\nattributable_id:\n- \n- 23\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大尺寸"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 02:41:43.938174000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大尺寸\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 02:41:43.938174
445	CustomAttribute	18	create	0qa(1)	---\nid:\n- \n- 18\nattributable_id:\n- \n- 24\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\nvalue:\n- \n- '{"en":"blue","zh-CN":"蓝色"}'\ncreated_at:\n- \n- 2022-09-09 02:42:15.673975000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\nvalue_en:\n- \n- blue\nvalue_zh_cn:\n- \n- 蓝色\n	2022-09-09 02:42:15.673975
446	CustomAttribute	19	create	0qa(1)	---\nid:\n- \n- 19\nattributable_id:\n- \n- 25\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\nvalue:\n- \n- '{"en":"red","zh-CN":"红色"}'\ncreated_at:\n- \n- 2022-09-09 02:42:40.562917000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\nvalue_en:\n- \n- red\nvalue_zh_cn:\n- \n- 红色\n	2022-09-09 02:42:40.562917
447	CustomAttribute	20	create	0qa(1)	---\nid:\n- \n- 20\nattributable_id:\n- \n- 26\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\nvalue:\n- \n- '{"en":"white","zh-CN":"白色"}'\ncreated_at:\n- \n- 2022-09-09 02:43:48.757029000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\nvalue_en:\n- \n- white\nvalue_zh_cn:\n- \n- 白色\n	2022-09-09 02:43:48.757029
448	CustomAttribute	21	create	0qa(1)	---\nid:\n- \n- 21\nattributable_id:\n- \n- 34\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\nvalue:\n- \n- '{"en":"yellow","zh-CN":"黄色"}'\ncreated_at:\n- \n- 2022-09-09 02:44:34.338855000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\nvalue_en:\n- \n- yellow\nvalue_zh_cn:\n- \n- 黄色\n	2022-09-09 02:44:34.338855
449	CustomAttribute	22	create	0qa(1)	---\nid:\n- \n- 22\nattributable_id:\n- \n- 35\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\nvalue:\n- \n- '{"en":"yellow","zh-CN":"黄色"}'\ncreated_at:\n- \n- 2022-09-09 02:44:57.777114000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\nvalue_en:\n- \n- yellow\nvalue_zh_cn:\n- \n- 黄色\n	2022-09-09 02:44:57.777114
450	CustomAttribute	23	create	0qa(1)	---\nid:\n- \n- 23\nattributable_id:\n- \n- 36\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\nvalue:\n- \n- '{"en":"yellow","zh-CN":"黄色"}'\ncreated_at:\n- \n- 2022-09-09 02:45:24.507776000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\nvalue_en:\n- \n- yellow\nvalue_zh_cn:\n- \n- 黄色\n	2022-09-09 02:45:24.507776
451	CustomAttribute	24	create	0qa(1)	---\nid:\n- \n- 24\nattributable_id:\n- \n- 42\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\nvalue:\n- \n- '{"en":"black and white","zh-CN":"黑白相间"}'\ncreated_at:\n- \n- 2022-09-09 02:46:18.972008000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\nvalue_en:\n- \n- black and white\nvalue_zh_cn:\n- \n- 黑白相间\n	2022-09-09 02:46:18.972008
452	CustomAttribute	25	create	0qa(1)	---\nid:\n- \n- 25\nattributable_id:\n- \n- 43\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\nvalue:\n- \n- '{"en":"black and white","zh-CN":"黑白相间"}'\ncreated_at:\n- \n- 2022-09-09 02:46:45.901984000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\nvalue_en:\n- \n- black and white\nvalue_zh_cn:\n- \n- 黑白相间\n	2022-09-09 02:46:45.901984
453	CustomAttribute	26	create	0qa(1)	---\nid:\n- \n- 26\nattributable_id:\n- \n- 44\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":" black and white","zh-CN":"黑白相间"}'\ncreated_at:\n- \n- 2022-09-09 02:47:16.231453000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- " black and white"\nvalue_zh_cn:\n- \n- 黑白相间\n	2022-09-09 02:47:16.231453
454	CustomAttribute	27	create	0qa(1)	---\nid:\n- \n- 27\nattributable_id:\n- \n- 45\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\nvalue:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\ncreated_at:\n- \n- 2022-09-09 02:47:49.311039000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\nvalue_en:\n- \n- brown\nvalue_zh_cn:\n- \n- 棕色\n	2022-09-09 02:47:49.311039
455	CustomAttribute	28	create	0qa(1)	---\nid:\n- \n- 28\nattributable_id:\n- \n- 46\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\nvalue:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\ncreated_at:\n- \n- 2022-09-09 02:48:27.467490000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\nvalue_en:\n- \n- brown\nvalue_zh_cn:\n- \n- 棕色\n	2022-09-09 02:48:27.46749
456	CustomAttribute	29	create	0qa(1)	---\nid:\n- \n- 29\nattributable_id:\n- \n- 47\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":"green and white","zh-CN":"绿白色"}'\ncreated_at:\n- \n- 2022-09-09 02:49:18.720683000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- green and white\nvalue_zh_cn:\n- \n- 绿白色\n	2022-09-09 02:49:18.720683
457	CustomAttribute	30	create	0qa(1)	---\nid:\n- \n- 30\nattributable_id:\n- \n- 49\nattributable_type:\n- \n- Sku\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":"blue and white","zh-CN":"蓝白相间"}'\ncreated_at:\n- \n- 2022-09-09 02:50:01.313883000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- blue and white\nvalue_zh_cn:\n- \n- 蓝白相间\n	2022-09-09 02:50:01.313883
458	Sku	12	update	0qa(1)	---\nname:\n- '{"en":"Small Fries-","zh-CN":"小份薯条"}'\n- '{"en":"Small Fries","zh-CN":"小份薯条"}'\nname_en:\n- Small Fries-\n- Small Fries\n	2022-09-09 06:21:11.258065
459	Sku	4	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Zebra Badge\n- SZ-GS-Zebra Badge-O-A\n	2022-09-09 06:21:59.096645
460	Sku	5	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Elephant Keychain\n- SZ-GS-Elephant Keychain-G-A\n	2022-09-09 06:25:53.088081
461	CustomAttribute	7	update	0qa(1)	---\nvalue:\n- '{"en":"colorful","zh-CN":"彩色"}'\n- '{"en":"gery","zh-CN":"灰色"}'\noverwritten:\n- \n- 2022-09-09 06:25:53.116823000 Z\nvalue_en:\n- colorful\n- gery\nvalue_zh_cn:\n- 彩色\n- 灰色\n	2022-09-09 06:25:53.117231
462	Sku	13	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-AMR- Indian Turmeric Rice\n- SZ-AMR- Indian Turmeric Rice-A\n	2022-09-09 07:18:54.796275
463	Sku	14	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-AMR-Hainan Chicken Rice\n- SZ-AMR-Hainan Chicken Rice-A\n	2022-09-09 07:19:16.575968
464	Sku	15	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-AMR-Roast Chicken\n- SZ-AMR-Roast Chicken-A\n	2022-09-09 07:22:51.10443
465	Sku	16	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-AMR-Grapefruit Guice\n- SZ-AMR-Grapefruit Guice-A\n	2022-09-09 07:23:20.258536
466	Sku	17	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-AMR-Grape Guice\n- SZ-AMR-Grape Guice-A\n	2022-09-09 07:23:42.82002
467	Sku	27	update	0qa(1)	---\nmaster_sku_ref:\n- BP-PH-Tomato Pasta\n- BP-PH-Tomato Pasta-A\n	2022-09-09 07:24:24.990792
468	Sku	20	update	0qa(1)	---\nmaster_sku_ref:\n- BP-FHGS-Flamingo Water Cup\n- BP-FHGS-Flamingo Water Cup-A\n	2022-09-09 07:25:49.237358
469	Sku	28	update	0qa(1)	---\nmaster_sku_ref:\n- BP-PH-Vanilla Anchovy Shrimp\n- BP-PH-Vanilla Anchovy Shrimp-A\n	2022-09-09 07:26:09.148449
470	Sku	33	update	0qa(1)	---\nmaster_sku_ref:\n- BP-PH-Black Pepper Steak\n- BP-PH-Black Pepper Steak-A\n	2022-09-09 07:26:28.534237
471	Sku	37	update	0qa(1)	---\nmaster_sku_ref:\n- NS-UUR-Indian Pilaf\n- NS-UUR-Indian Pilaf-A\n	2022-09-09 07:26:43.564021
472	Sku	38	update	0qa(1)	---\nmaster_sku_ref:\n- NS-UUR-Indian Pancakes\n- NS-UUR-Indian Pancakes-A\n	2022-09-09 07:27:03.114245
473	Sku	41	update	0qa(1)	---\nmaster_sku_ref:\n- NS-UUR-Red Bean Ice\n- NS-UUR-Red Bean Ice-A\n	2022-09-09 07:27:22.892818
474	Sku	44	update	0qa(1)	---\nmaster_sku_ref:\n- RW-GS-Panda Hat\n- RW-GS-Panda Hat-A\n	2022-09-09 07:27:46.697872
475	Sku	47	update	0qa(1)	---\nmaster_sku_ref:\n- RW-GS-Otter Cup-Gr\n- RW-GS-Otter Cup-Gr-A\n	2022-09-09 07:28:21.146296
476	Sku	49	update	0qa(1)	---\nmaster_sku_ref:\n- RW-GS-Otter Cup-Bl\n- RW-GS-Otter Cup-Bl-A\n	2022-09-09 07:28:31.9829
477	OutletSku	49	update	0qa(1)	---\nquantity:\n- 100\n- 200\n	2022-09-09 09:13:31.872843
478	OutletSku	49	update	0qa(1)	---\nquantity:\n- 200\n- 100\n	2022-09-09 09:15:36.678597
479	VoucherSku	13	update	0qa(1)	---\nquantity:\n- 100\n- 120\n	2022-09-09 09:17:44.392539
480	Sku	51	create	0qa(1)	---\nid:\n- \n- 51\nmaster_sku_ref:\n- \n- ''\nname:\n- \n- '{"en":"2","zh-CN":"22"}'\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- \ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- 2022-09-09 09:40:22.528351000 Z\nname_en:\n- \n- '2'\nname_zh_cn:\n- \n- '22'\n	2022-09-09 09:40:22.528351
481	Sku	52	create	0qa(1)	---\nid:\n- \n- 52\nmaster_sku_ref:\n- \n- '22'\nname:\n- \n- '{"en":"test2","zh-CN":"test2"}'\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncost_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- 2022-09-13 03:05:59.526374000 Z\nname_en:\n- \n- test2\nname_zh_cn:\n- \n- test2\n	2022-09-13 03:05:59.526374
482	OutletSku	52	create	0qa(1)	---\nid:\n- \n- 52\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 52\nquantity:\n- 0\n- 222\ncreated_at:\n- \n- 2022-09-13 03:05:59.539341000 Z\n	2022-09-13 03:05:59.539341
483	Sku	3	update	0qa(1)	---\nmaster_sku_ref:\n- SZ-GS-Giraffe Pillow-M\n- SZ-GS-Giraffe Pillow-Y-M\n	2022-09-13 03:25:55.146145
484	Sku	3	update	0qa(1)	---\nname:\n- '{"en":"Medium Giraffe Pillow","zh-CN":"中号长劲鹿抱枕"}'\n- '{"en":"Medium Giraffe Pillow11","zh-CN":"中号长劲鹿抱枕"}'\nname_en:\n- Medium Giraffe Pillow\n- Medium Giraffe Pillow11\n	2022-09-13 03:32:11.610712
485	Sku	3	update	0qa(1)	---\nname:\n- '{"en":"Medium Giraffe Pillow11","zh-CN":"中号长劲鹿抱枕"}'\n- '{"en":"Medium Giraffe Pillow","zh-CN":"中号长劲鹿抱枕"}'\nname_en:\n- Medium Giraffe Pillow11\n- Medium Giraffe Pillow\n	2022-09-13 03:33:43.039976
486	OutletSku	53	create	0qa(1)	---\nid:\n- \n- 53\noutlet_id:\n- \n- 10\nsku_id:\n- \n- 50\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- 2022-09-13 06:20:01.586502000 Z\n	2022-09-13 06:20:01.586502
487	OutletSku	54	create	0qa(1)	---\nid:\n- \n- 54\noutlet_id:\n- \n- 7\nsku_id:\n- \n- 50\nquantity:\n- 0\n- 100\ncreated_at:\n- \n- 2022-09-13 06:21:01.733323000 Z\n	2022-09-13 06:21:01.733323
488	OutletSku	53	update	0qa(1)	---\nquantity:\n- 100\n- 0\n	2022-09-13 06:24:17.316909
489	OutletSku	53	update	0qa(1)	---\nquantity:\n- 0\n- 1\n	2022-09-13 06:25:34.712798
490	OutletSku	53	update	0qa(1)	---\nquantity:\n- 1\n- 2\n	2022-09-13 06:26:14.585699
491	OutletSku	53	update	0qa(1)	---\nquantity:\n- 2\n- 102\n	2022-09-13 06:27:23.917046
492	OutletSku	55	create	0qa(1)	---\nid:\n- \n- 55\noutlet_id:\n- \n- 6\nsku_id:\n- \n- 50\nquantity:\n- 0\n- 2\ncreated_at:\n- \n- 2022-09-13 06:28:17.132951000 Z\n	2022-09-13 06:28:17.132951
493	OutletSku	55	update	0qa(1)	---\nquantity:\n- 2\n- 4\n	2022-09-13 06:28:54.251298
\.


--
-- Data for Name: voucher_applicable_targets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voucher_applicable_targets (id, voucher_sku_id, voucher_applicable_id, voucher_applicable_type, voucher_applicable_name, deleted_at, created_at, updated_at) FROM stdin;
3	10	8	Outlet	{}	\N	2022-09-06 05:08:02.573248	2022-09-06 05:08:02.573248
4	10	7	Shop	{"en": "Ulu Ulu Wild Restaurant E-shop", "zh-CN": "乌鲁乌鲁野生餐厅网店"}	\N	2022-09-06 05:08:02.580118	2022-09-06 05:08:02.580118
42	8	5	Outlet	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-07 07:19:32.084873	2022-09-07 07:19:32.084873
43	8	3	Shop	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	\N	2022-09-07 07:19:32.097236	2022-09-07 07:19:32.097236
5	9	3	Outlet	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-06 10:27:18.024229	2022-09-06 10:27:18.024229
8	\N	1	Shop	{"en": "Singapore Zoo Gift E-shop", "zh-CN": "新加坡动物园线上礼品店"}	\N	2022-09-06 10:36:56.565174	2022-09-06 10:36:56.565174
9	2	1	Shop	{"en": "Singapore Zoo Gift E-shop", "zh-CN": "新加坡动物园线上礼品店"}	\N	2022-09-06 10:36:56.574876	2022-09-06 10:39:29.313677
10	2	3	Outlet	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-06 10:42:15.565323	2022-09-06 10:42:15.565323
7	1	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-06 10:29:59.154202	2022-09-07 01:37:36.972562
11	1	4	Outlet	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-07 01:37:36.985564	2022-09-07 01:37:36.985564
1	\N	3	Shop	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	\N	2022-08-31 09:21:45.045898	2022-09-06 16:08:47.636522
2	\N	5	Shop	{"en": "Pizza Hut E-shop", "zh-CN": "必胜客线上店"}	\N	2022-08-31 09:21:45.061942	2022-09-06 16:08:47.646247
12	11	3	Outlet	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-07 03:19:45.755801	2022-09-07 03:19:45.755801
13	11	1	Shop	{"en": "Singapore Zoo Gift E-shop", "zh-CN": "新加坡动物园线上礼品店"}	\N	2022-09-07 03:20:34.782265	2022-09-07 03:20:34.782265
14	3	4	Outlet	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-07 06:00:59.211769	2022-09-07 06:00:59.211769
15	4	4	Outlet	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-07 06:03:21.541759	2022-09-07 06:03:21.541759
16	4	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-07 06:03:21.551652	2022-09-07 06:03:21.551652
17	7	4	Outlet	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-07 06:45:50.429975	2022-09-07 06:45:50.429975
18	7	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-07 06:45:50.444826	2022-09-07 06:45:50.444826
6	9	3	Outlet	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-06 10:27:48.11729	2022-09-07 06:52:43.458765
19	\N	5	Outlet	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-07 06:52:43.47013	2022-09-07 06:52:43.47013
20	\N	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-07 06:52:43.482364	2022-09-07 06:52:43.482364
21	12	3	Outlet	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-07 07:02:53.29321	2022-09-07 07:02:53.29321
22	12	1	Shop	{"en": "Singapore Zoo Gift E-shop", "zh-CN": "新加坡动物园线上礼品店"}	\N	2022-09-07 07:02:53.297849	2022-09-07 07:02:53.297849
23	12	5	Outlet	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-07 07:02:53.304261	2022-09-07 07:02:53.304261
24	12	3	Shop	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	\N	2022-09-07 07:02:53.311957	2022-09-07 07:02:53.311957
25	12	4	Outlet	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-07 07:02:53.317706	2022-09-07 07:02:53.317706
26	12	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-07 07:02:53.323393	2022-09-07 07:02:53.323393
31	6	5	Outlet	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-07 07:09:10.584622	2022-09-07 07:09:10.584622
32	6	3	Shop	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	\N	2022-09-07 07:09:10.5956	2022-09-07 07:09:10.5956
27	\N	7	Outlet	{"en": "Pizza Hut", "zh-CN": "必胜客"}	\N	2022-09-07 07:06:10.630694	2022-09-07 07:06:10.630694
28	\N	5	Shop	{"en": "Pizza Hut E-shop", "zh-CN": "必胜客线上店"}	\N	2022-09-07 07:06:10.642816	2022-09-07 07:06:10.642816
29	\N	6	Outlet	{"en": "Jurong Bird Park Gift Shop", "zh-CN": "裕廊飞禽公园礼品店"}	\N	2022-09-07 07:06:10.653498	2022-09-07 07:06:10.653498
30	\N	4	Shop	{"en": " Feather House Gift E-shop", "zh-CN": "羽毛屋礼品店网店"}	\N	2022-09-07 07:06:10.663132	2022-09-07 07:06:10.663132
33	13	3	Outlet	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-07 07:15:53.038082	2022-09-07 07:15:53.038082
34	13	1	Shop	{"en": "Singapore Zoo Gift E-shop", "zh-CN": "新加坡动物园线上礼品店"}	\N	2022-09-07 07:15:53.043483	2022-09-07 07:15:53.043483
35	13	5	Outlet	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-07 07:15:53.051994	2022-09-07 07:15:53.051994
36	13	3	Shop	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	\N	2022-09-07 07:15:53.056432	2022-09-07 07:15:53.056432
37	13	4	Outlet	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-07 07:15:53.062522	2022-09-07 07:15:53.062522
38	13	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-07 07:15:53.06654	2022-09-07 07:15:53.06654
39	13	2	Shop	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	\N	2022-09-07 07:15:53.070367	2022-09-07 07:15:53.070367
40	9	5	Outlet	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-07 07:18:42.832638	2022-09-07 07:18:42.832638
41	9	3	Shop	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	\N	2022-09-07 07:18:42.84213	2022-09-07 07:18:42.84213
\.


--
-- Data for Name: voucher_skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voucher_skus (id, name, quantity, recommended_price, value_amount, min_spend, reserved_quantity, allocated_quantity, deleted_at, created_at, updated_at) FROM stdin;
5	\N	50	89.90	100.00	300.00	0	0	2022-08-31 09:40:20.602144	2022-08-31 09:15:05.158503	2022-08-31 09:40:20.602156
10	{"en": "oucher SKU", "zh-CN": "撒打算大的"}	20	\N	13.00	13.00	0	0	2022-09-06 08:24:21.818843	2022-09-06 05:08:02.5613	2022-09-06 08:24:21.818863
11	{"en": "SZ Member Voucher", "zh-CN": "新加坡动物园会员优惠券"}	100	8.00	10.00	20.00	0	0	2022-09-07 03:24:05.696512	2022-09-07 03:19:45.732415	2022-09-07 03:24:05.696523
2	{"en": "SZ Member Shop Voucher", "zh-CN": "新加坡动物园会员优惠券"}	500	18.00	20.00	100.00	0	0	\N	2022-08-31 09:02:02.707987	2022-09-07 03:25:00.050665
3	{"en": "KFC Family Voucher", "zh-CN": "肯德基家庭优惠券"}	50	88.00	100.00	200.00	0	0	\N	2022-08-31 09:04:19.904218	2022-09-07 06:00:59.174437
1	{"en": "KFC Member Voucher", "zh-CN": "肯德基会员优惠券"}	100	8.00	10.00	100.00	0	0	\N	2022-08-31 09:01:02.410542	2022-09-07 06:01:16.890055
7	{"en": "KFC Holiday Voucher", "zh-CN": "肯德基节日优惠券"}	50	28.80	99.00	50.00	0	0	\N	2022-09-01 06:34:23.220466	2022-09-07 06:45:50.396081
9	{"en": "SZ Family Voucher", "zh-CN": "新加坡动物园家庭优惠券"}	50	199.00	299.00	300.00	0	0	\N	2022-09-01 09:02:36.429207	2022-09-07 06:53:16.096742
8	{"en": "AMR Discount Voucher", "zh-CN": "阿明餐厅折扣券"}	50	99.00	219.00	500.00	0	0	\N	2022-09-01 06:35:50.813586	2022-09-07 06:55:17.290755
4	{"en": "KFC Cash Voucher", "zh-CN": "肯德基现金优惠券"}	100	48.00	50.00	120.00	0	0	\N	2022-08-31 09:11:19.801013	2022-09-07 06:59:21.445455
12	{"en": "SZ Holiday Voucher", "zh-CN": "新加坡动物园假日优惠券"}	100	20.00	50.00	100.00	0	0	\N	2022-09-07 07:02:53.286801	2022-09-07 07:02:53.286801
6	{"en": " AMR Cash Voucher", "zh-CN": "阿明餐厅现金优惠券"}	20	189.00	200.00	500.00	0	0	\N	2022-09-01 06:17:03.054447	2022-09-07 07:09:10.542594
13	{"en": "SZ Cash Voucher", "zh-CN": "新加坡动物园现金优惠券"}	120	30.00	50.00	60.00	0	0	\N	2022-09-07 07:15:53.03115	2022-09-09 09:17:44.392539
\.


--
-- Name: custom_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_attributes_id_seq', 30, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 58, true);


--
-- Name: inventory_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventory_dates_id_seq', 1, false);


--
-- Name: inventory_timeslots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventory_timeslots_id_seq', 1, false);


--
-- Name: mobility_string_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mobility_string_translations_id_seq', 153, true);


--
-- Name: mobility_text_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mobility_text_translations_id_seq', 18, true);


--
-- Name: outlet_skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outlet_skus_id_seq', 55, true);


--
-- Name: outlets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outlets_id_seq', 10, true);


--
-- Name: skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skus_id_seq', 52, true);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.versions_id_seq', 493, true);


--
-- Name: voucher_applicable_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voucher_applicable_targets_id_seq', 43, true);


--
-- Name: voucher_skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voucher_skus_id_seq', 13, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: custom_attributes custom_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_attributes
    ADD CONSTRAINT custom_attributes_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: inventory_dates inventory_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory_dates
    ADD CONSTRAINT inventory_dates_pkey PRIMARY KEY (id);


--
-- Name: inventory_timeslots inventory_timeslots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory_timeslots
    ADD CONSTRAINT inventory_timeslots_pkey PRIMARY KEY (id);


--
-- Name: mobility_string_translations mobility_string_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobility_string_translations
    ADD CONSTRAINT mobility_string_translations_pkey PRIMARY KEY (id);


--
-- Name: mobility_text_translations mobility_text_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobility_text_translations
    ADD CONSTRAINT mobility_text_translations_pkey PRIMARY KEY (id);


--
-- Name: outlet_skus outlet_skus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlet_skus
    ADD CONSTRAINT outlet_skus_pkey PRIMARY KEY (id);


--
-- Name: outlets outlets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlets
    ADD CONSTRAINT outlets_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: skus skus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skus
    ADD CONSTRAINT skus_pkey PRIMARY KEY (id);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: voucher_applicable_targets voucher_applicable_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_applicable_targets
    ADD CONSTRAINT voucher_applicable_targets_pkey PRIMARY KEY (id);


--
-- Name: voucher_skus voucher_skus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_skus
    ADD CONSTRAINT voucher_skus_pkey PRIMARY KEY (id);


--
-- Name: index_custom_attributes_on_attributable; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_attributes_on_attributable ON public.custom_attributes USING btree (attributable_type, attributable_id);


--
-- Name: index_images_on_target_type_and_target_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_images_on_target_type_and_target_id ON public.images USING btree (target_type, target_id);


--
-- Name: index_inventory_dates_on_sku_type_and_sku_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventory_dates_on_sku_type_and_sku_id ON public.inventory_dates USING btree (sku_type, sku_id);


--
-- Name: index_inventory_timeslots_on_inventory_date_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventory_timeslots_on_inventory_date_id ON public.inventory_timeslots USING btree (inventory_date_id);


--
-- Name: index_mobility_string_translations_on_keys; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_mobility_string_translations_on_keys ON public.mobility_string_translations USING btree (translatable_id, translatable_type, locale, key);


--
-- Name: index_mobility_string_translations_on_query_keys; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_mobility_string_translations_on_query_keys ON public.mobility_string_translations USING btree (translatable_type, key, value, locale);


--
-- Name: index_mobility_string_translations_on_translatable_attribute; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_mobility_string_translations_on_translatable_attribute ON public.mobility_string_translations USING btree (translatable_id, translatable_type, key);


--
-- Name: index_mobility_text_translations_on_keys; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_mobility_text_translations_on_keys ON public.mobility_text_translations USING btree (translatable_id, translatable_type, locale, key);


--
-- Name: index_mobility_text_translations_on_translatable_attribute; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_mobility_text_translations_on_translatable_attribute ON public.mobility_text_translations USING btree (translatable_id, translatable_type, key);


--
-- Name: index_outlet_skus_on_outlet_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_outlet_skus_on_outlet_id ON public.outlet_skus USING btree (outlet_id);


--
-- Name: index_outlet_skus_on_sku_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_outlet_skus_on_sku_id ON public.outlet_skus USING btree (sku_id);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_item_type_and_item_id ON public.versions USING btree (item_type, item_id);


--
-- Name: index_voucher_applicable_targets_on_voucher_sku_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_voucher_applicable_targets_on_voucher_sku_id ON public.voucher_applicable_targets USING btree (voucher_sku_id);


--
-- Name: voucher_applicable_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX voucher_applicable_index ON public.voucher_applicable_targets USING btree (voucher_applicable_type, voucher_applicable_id);


--
-- PostgreSQL database dump complete
--

