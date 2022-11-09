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
DROP INDEX public.index_vouchers_on_voucher_product_id;
DROP INDEX public.index_vouchers_on_user_id;
DROP INDEX public.index_vouchers_on_order_item_id;
DROP INDEX public.index_vouchers_on_order_id;
DROP INDEX public.index_vouchers_on_code;
DROP INDEX public.index_versions_on_item_type_and_item_id;
DROP INDEX public.index_variant_snapshots_on_redemption_coupon_id;
DROP INDEX public.index_redemption_coupons_on_order_item_id;
DROP INDEX public.index_redemption_coupons_on_order_id;
DROP INDEX public.index_redemption_coupons_on_code;
DROP INDEX public.index_preference_item_snapshots_on_redemption_coupon_id;
DROP INDEX public.index_preference_item_snapshots_on_delivery_order_item_id;
DROP INDEX public.index_delivery_orders_on_order_id;
DROP INDEX public.index_delivery_orders_on_delivery_order_no;
DROP INDEX public.index_delivery_order_items_on_delivery_order_id;
DROP INDEX public.index_applicable_target_snapshots_on_applicable_target_id;
ALTER TABLE ONLY public.vouchers DROP CONSTRAINT vouchers_pkey;
ALTER TABLE ONLY public.voucher_applicable_snapshots DROP CONSTRAINT voucher_applicable_snapshots_pkey;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.variant_snapshots DROP CONSTRAINT variant_snapshots_pkey;
ALTER TABLE ONLY public.user_views DROP CONSTRAINT user_views_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.redemption_coupons DROP CONSTRAINT redemption_coupons_pkey;
ALTER TABLE ONLY public.preference_item_snapshots DROP CONSTRAINT preference_item_snapshots_pkey;
ALTER TABLE ONLY public.delivery_orders DROP CONSTRAINT delivery_orders_pkey;
ALTER TABLE ONLY public.delivery_order_items DROP CONSTRAINT delivery_order_items_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE ONLY public.applicable_target_snapshots DROP CONSTRAINT applicable_target_snapshots_pkey;
ALTER TABLE public.vouchers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.voucher_applicable_snapshots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variant_snapshots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.redemption_coupons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.preference_item_snapshots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delivery_orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delivery_order_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.applicable_target_snapshots ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.vouchers_id_seq;
DROP TABLE public.vouchers;
DROP SEQUENCE public.voucher_applicable_snapshots_id_seq;
DROP TABLE public.voucher_applicable_snapshots;
DROP SEQUENCE public.versions_id_seq;
DROP TABLE public.versions;
DROP SEQUENCE public.variant_snapshots_id_seq;
DROP TABLE public.variant_snapshots;
DROP SEQUENCE public.user_views_id_seq;
DROP TABLE public.user_views;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.redemption_coupons_id_seq;
DROP TABLE public.redemption_coupons;
DROP SEQUENCE public.preference_item_snapshots_id_seq;
DROP TABLE public.preference_item_snapshots;
DROP SEQUENCE public.delivery_orders_id_seq;
DROP TABLE public.delivery_orders;
DROP SEQUENCE public.delivery_order_items_id_seq;
DROP TABLE public.delivery_order_items;
DROP TABLE public.ar_internal_metadata;
DROP SEQUENCE public.applicable_target_snapshots_id_seq;
DROP TABLE public.applicable_target_snapshots;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: applicable_target_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicable_target_snapshots (
    id bigint NOT NULL,
    voucher_id integer,
    applicable_target_id integer,
    applicable_target_type character varying,
    applicable_target_name character varying,
    image_url character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.applicable_target_snapshots OWNER TO postgres;

--
-- Name: applicable_target_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicable_target_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicable_target_snapshots_id_seq OWNER TO postgres;

--
-- Name: applicable_target_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicable_target_snapshots_id_seq OWNED BY public.applicable_target_snapshots.id;


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
-- Name: delivery_order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery_order_items (
    id bigint NOT NULL,
    delivery_order_id integer,
    quantity integer,
    master_sku_ref character varying,
    sku_name jsonb,
    sku_id integer,
    sku_image_url character varying,
    outlet_id integer,
    outlet_name character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.delivery_order_items OWNER TO postgres;

--
-- Name: delivery_order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delivery_order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delivery_order_items_id_seq OWNER TO postgres;

--
-- Name: delivery_order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delivery_order_items_id_seq OWNED BY public.delivery_order_items.id;


--
-- Name: delivery_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery_orders (
    id bigint NOT NULL,
    delivery_order_no character varying,
    order_id integer,
    order_no character varying,
    channel_id integer,
    channel_name character varying,
    channel_key character varying,
    user_remarks character varying,
    admin_remarks character varying,
    delivery_company character varying,
    tracking_no character varying,
    status integer,
    receiver_name character varying,
    receiver_phone_number character varying,
    receiver_email character varying,
    delivery_date date,
    delivery_time_start timestamp(6) without time zone,
    delivery_time_end timestamp(6) without time zone,
    address_postal_code character varying,
    address_line_1 character varying,
    address_line_2 character varying,
    address_line_3 character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.delivery_orders OWNER TO postgres;

--
-- Name: delivery_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delivery_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delivery_orders_id_seq OWNER TO postgres;

--
-- Name: delivery_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delivery_orders_id_seq OWNED BY public.delivery_orders.id;


--
-- Name: preference_item_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preference_item_snapshots (
    id bigint NOT NULL,
    redemption_coupon_id integer,
    delivery_order_item_id integer,
    preference_group_id integer,
    preference_item_id integer,
    preference_group_name jsonb,
    preference_item_name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.preference_item_snapshots OWNER TO postgres;

--
-- Name: preference_item_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preference_item_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preference_item_snapshots_id_seq OWNER TO postgres;

--
-- Name: preference_item_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preference_item_snapshots_id_seq OWNED BY public.preference_item_snapshots.id;


--
-- Name: redemption_coupons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.redemption_coupons (
    id bigint NOT NULL,
    order_item_id integer,
    order_id integer,
    order_no character varying,
    channel_id integer,
    channel_name character varying,
    channel_key character varying,
    user_id integer,
    expiration_time timestamp(6) without time zone,
    quantity integer,
    code character varying,
    redeemed_by_ref character varying,
    redemption_location_ref character varying,
    redemption_remark character varying,
    redemption_time timestamp(6) without time zone,
    status integer,
    master_sku_ref character varying,
    sku_name jsonb,
    sku_id integer,
    outlet_id integer,
    outlet_name character varying,
    master_outlet_ref character varying,
    image_url character varying,
    product_id integer,
    product_name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.redemption_coupons OWNER TO postgres;

--
-- Name: redemption_coupons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.redemption_coupons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.redemption_coupons_id_seq OWNER TO postgres;

--
-- Name: redemption_coupons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.redemption_coupons_id_seq OWNED BY public.redemption_coupons.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: user_views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_views (
    id bigint NOT NULL,
    user_id integer,
    name character varying,
    email character varying,
    phone_number character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.user_views OWNER TO postgres;

--
-- Name: user_views_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_views_id_seq OWNER TO postgres;

--
-- Name: user_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_views_id_seq OWNED BY public.user_views.id;


--
-- Name: variant_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variant_snapshots (
    id bigint NOT NULL,
    redemption_coupon_id integer,
    variation_id integer,
    variation_name jsonb,
    variant_id integer,
    variant_name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.variant_snapshots OWNER TO postgres;

--
-- Name: variant_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.variant_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variant_snapshots_id_seq OWNER TO postgres;

--
-- Name: variant_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.variant_snapshots_id_seq OWNED BY public.variant_snapshots.id;


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
-- Name: voucher_applicable_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voucher_applicable_snapshots (
    id bigint NOT NULL,
    voucher_id integer,
    voucher_applicable_id integer,
    voucher_applicable_type character varying,
    voucher_applicable_name jsonb,
    image_url character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.voucher_applicable_snapshots OWNER TO postgres;

--
-- Name: voucher_applicable_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voucher_applicable_snapshots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voucher_applicable_snapshots_id_seq OWNER TO postgres;

--
-- Name: voucher_applicable_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voucher_applicable_snapshots_id_seq OWNED BY public.voucher_applicable_snapshots.id;


--
-- Name: vouchers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vouchers (
    id bigint NOT NULL,
    order_id integer,
    order_item_id integer,
    order_no character varying,
    channel_id integer,
    channel_name character varying,
    channel_key character varying,
    user_id integer,
    expiration_time timestamp(6) without time zone,
    redemption_time timestamp(6) without time zone,
    code character varying,
    redemption_location_id integer,
    redemption_location_type character varying,
    redemption_remark character varying,
    redemption_order_ref character varying,
    status integer,
    voucher_sku_id integer,
    voucher_sku_name jsonb,
    image_url character varying,
    value_amount numeric(10,2) DEFAULT 0.0,
    voucher_product_id integer,
    voucher_product_name jsonb,
    min_spend numeric(10,2) DEFAULT 0.0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.vouchers OWNER TO postgres;

--
-- Name: vouchers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vouchers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vouchers_id_seq OWNER TO postgres;

--
-- Name: vouchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vouchers_id_seq OWNED BY public.vouchers.id;


--
-- Name: applicable_target_snapshots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicable_target_snapshots ALTER COLUMN id SET DEFAULT nextval('public.applicable_target_snapshots_id_seq'::regclass);


--
-- Name: delivery_order_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_order_items ALTER COLUMN id SET DEFAULT nextval('public.delivery_order_items_id_seq'::regclass);


--
-- Name: delivery_orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_orders ALTER COLUMN id SET DEFAULT nextval('public.delivery_orders_id_seq'::regclass);


--
-- Name: preference_item_snapshots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_item_snapshots ALTER COLUMN id SET DEFAULT nextval('public.preference_item_snapshots_id_seq'::regclass);


--
-- Name: redemption_coupons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redemption_coupons ALTER COLUMN id SET DEFAULT nextval('public.redemption_coupons_id_seq'::regclass);


--
-- Name: user_views id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_views ALTER COLUMN id SET DEFAULT nextval('public.user_views_id_seq'::regclass);


--
-- Name: variant_snapshots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variant_snapshots ALTER COLUMN id SET DEFAULT nextval('public.variant_snapshots_id_seq'::regclass);


--
-- Name: versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions ALTER COLUMN id SET DEFAULT nextval('public.versions_id_seq'::regclass);


--
-- Name: voucher_applicable_snapshots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_applicable_snapshots ALTER COLUMN id SET DEFAULT nextval('public.voucher_applicable_snapshots_id_seq'::regclass);


--
-- Name: vouchers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vouchers ALTER COLUMN id SET DEFAULT nextval('public.vouchers_id_seq'::regclass);


--
-- Data for Name: applicable_target_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicable_target_snapshots (id, voucher_id, applicable_target_id, applicable_target_type, applicable_target_name, image_url, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2022-08-26 14:08:24.340872	2022-08-26 14:08:24.340872
\.


--
-- Data for Name: delivery_order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery_order_items (id, delivery_order_id, quantity, master_sku_ref, sku_name, sku_id, sku_image_url, outlet_id, outlet_name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: delivery_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery_orders (id, delivery_order_no, order_id, order_no, channel_id, channel_name, channel_key, user_remarks, admin_remarks, delivery_company, tracking_no, status, receiver_name, receiver_phone_number, receiver_email, delivery_date, delivery_time_start, delivery_time_end, address_postal_code, address_line_1, address_line_2, address_line_3, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: preference_item_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preference_item_snapshots (id, redemption_coupon_id, delivery_order_item_id, preference_group_id, preference_item_id, preference_group_name, preference_item_name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: redemption_coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.redemption_coupons (id, order_item_id, order_id, order_no, channel_id, channel_name, channel_key, user_id, expiration_time, quantity, code, redeemed_by_ref, redemption_location_ref, redemption_remark, redemption_time, status, master_sku_ref, sku_name, sku_id, outlet_id, outlet_name, master_outlet_ref, image_url, product_id, product_name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20220803031150
20220803081128
20220803081139
20220816031525
20220816031529
20220816031606
20220824133702
20220824134241
20220825092308
20220902111227
\.


--
-- Data for Name: user_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_views (id, user_id, name, email, phone_number, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
\.


--
-- Data for Name: variant_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variant_snapshots (id, redemption_coupon_id, variation_id, variation_name, variant_id, variant_name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, item_type, item_id, event, whodunnit, object_changes, created_at) FROM stdin;
\.


--
-- Data for Name: voucher_applicable_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voucher_applicable_snapshots (id, voucher_id, voucher_applicable_id, voucher_applicable_type, voucher_applicable_name, image_url, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: vouchers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vouchers (id, order_id, order_item_id, order_no, channel_id, channel_name, channel_key, user_id, expiration_time, redemption_time, code, redemption_location_id, redemption_location_type, redemption_remark, redemption_order_ref, status, voucher_sku_id, voucher_sku_name, image_url, value_amount, voucher_product_id, voucher_product_name, min_spend, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: applicable_target_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicable_target_snapshots_id_seq', 1, false);


--
-- Name: delivery_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delivery_order_items_id_seq', 1, false);


--
-- Name: delivery_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delivery_orders_id_seq', 1, false);


--
-- Name: preference_item_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preference_item_snapshots_id_seq', 1, false);


--
-- Name: redemption_coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.redemption_coupons_id_seq', 1, false);


--
-- Name: user_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_views_id_seq', 1, false);


--
-- Name: variant_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.variant_snapshots_id_seq', 1, false);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.versions_id_seq', 1, false);


--
-- Name: voucher_applicable_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voucher_applicable_snapshots_id_seq', 1, false);


--
-- Name: vouchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vouchers_id_seq', 1, false);


--
-- Name: applicable_target_snapshots applicable_target_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicable_target_snapshots
    ADD CONSTRAINT applicable_target_snapshots_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: delivery_order_items delivery_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_order_items
    ADD CONSTRAINT delivery_order_items_pkey PRIMARY KEY (id);


--
-- Name: delivery_orders delivery_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_orders
    ADD CONSTRAINT delivery_orders_pkey PRIMARY KEY (id);


--
-- Name: preference_item_snapshots preference_item_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_item_snapshots
    ADD CONSTRAINT preference_item_snapshots_pkey PRIMARY KEY (id);


--
-- Name: redemption_coupons redemption_coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.redemption_coupons
    ADD CONSTRAINT redemption_coupons_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: user_views user_views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_views
    ADD CONSTRAINT user_views_pkey PRIMARY KEY (id);


--
-- Name: variant_snapshots variant_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variant_snapshots
    ADD CONSTRAINT variant_snapshots_pkey PRIMARY KEY (id);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: voucher_applicable_snapshots voucher_applicable_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_applicable_snapshots
    ADD CONSTRAINT voucher_applicable_snapshots_pkey PRIMARY KEY (id);


--
-- Name: vouchers vouchers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT vouchers_pkey PRIMARY KEY (id);


--
-- Name: index_applicable_target_snapshots_on_applicable_target_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicable_target_snapshots_on_applicable_target_id ON public.applicable_target_snapshots USING btree (applicable_target_id);


--
-- Name: index_delivery_order_items_on_delivery_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_delivery_order_items_on_delivery_order_id ON public.delivery_order_items USING btree (delivery_order_id);


--
-- Name: index_delivery_orders_on_delivery_order_no; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_delivery_orders_on_delivery_order_no ON public.delivery_orders USING btree (delivery_order_no);


--
-- Name: index_delivery_orders_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_delivery_orders_on_order_id ON public.delivery_orders USING btree (order_id);


--
-- Name: index_preference_item_snapshots_on_delivery_order_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_item_snapshots_on_delivery_order_item_id ON public.preference_item_snapshots USING btree (delivery_order_item_id);


--
-- Name: index_preference_item_snapshots_on_redemption_coupon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_item_snapshots_on_redemption_coupon_id ON public.preference_item_snapshots USING btree (redemption_coupon_id);


--
-- Name: index_redemption_coupons_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_redemption_coupons_on_code ON public.redemption_coupons USING btree (code);


--
-- Name: index_redemption_coupons_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_redemption_coupons_on_order_id ON public.redemption_coupons USING btree (order_id);


--
-- Name: index_redemption_coupons_on_order_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_redemption_coupons_on_order_item_id ON public.redemption_coupons USING btree (order_item_id);


--
-- Name: index_variant_snapshots_on_redemption_coupon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_variant_snapshots_on_redemption_coupon_id ON public.variant_snapshots USING btree (redemption_coupon_id);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_item_type_and_item_id ON public.versions USING btree (item_type, item_id);


--
-- Name: index_vouchers_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vouchers_on_code ON public.vouchers USING btree (code);


--
-- Name: index_vouchers_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vouchers_on_order_id ON public.vouchers USING btree (order_id);


--
-- Name: index_vouchers_on_order_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vouchers_on_order_item_id ON public.vouchers USING btree (order_item_id);


--
-- Name: index_vouchers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vouchers_on_user_id ON public.vouchers USING btree (user_id);


--
-- Name: index_vouchers_on_voucher_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vouchers_on_voucher_product_id ON public.vouchers USING btree (voucher_product_id);


--
-- Name: voucher_applicable_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX voucher_applicable_index ON public.voucher_applicable_snapshots USING btree (voucher_applicable_type, voucher_applicable_id);


--
-- PostgreSQL database dump complete
--

