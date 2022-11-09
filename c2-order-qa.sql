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

DROP INDEX public.index_versions_on_item_type_and_item_id;
DROP INDEX public.index_variant_snapshots_on_order_item_id;
DROP INDEX public.index_preference_item_snapshots_on_order_item_id;
DROP INDEX public.index_payments_on_user_id;
DROP INDEX public.index_payments_on_order_id;
DROP INDEX public.index_orders_on_user_id;
DROP INDEX public.index_order_items_on_order_id;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.variant_snapshots DROP CONSTRAINT variant_snapshots_pkey;
ALTER TABLE ONLY public.user_views DROP CONSTRAINT user_views_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.preference_item_snapshots DROP CONSTRAINT preference_item_snapshots_pkey;
ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
ALTER TABLE ONLY public.payment_settings DROP CONSTRAINT payment_settings_pkey;
ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE public.versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variant_snapshots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.preference_item_snapshots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.payments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.payment_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.order_items ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.versions_id_seq;
DROP TABLE public.versions;
DROP SEQUENCE public.variant_snapshots_id_seq;
DROP TABLE public.variant_snapshots;
DROP SEQUENCE public.user_views_id_seq;
DROP TABLE public.user_views;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.preference_item_snapshots_id_seq;
DROP TABLE public.preference_item_snapshots;
DROP SEQUENCE public.payments_id_seq;
DROP TABLE public.payments;
DROP SEQUENCE public.payment_settings_id_seq;
DROP TABLE public.payment_settings;
DROP SEQUENCE public.orders_id_seq;
DROP TABLE public.orders;
DROP SEQUENCE public.order_items_id_seq;
DROP TABLE public.order_items;
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
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id integer,
    product_id integer,
    stock_type character varying,
    stock_id integer,
    master_stock_ref character varying,
    sellable_id integer,
    sellable_type character varying,
    sellable_name jsonb,
    sellable_image_url character varying,
    quantity integer,
    amount_per_item numeric(10,2) DEFAULT 0.0,
    bundle_item_id integer,
    bundle_id integer,
    bundle_name jsonb,
    bundle_image_url character varying,
    preference_amount_per_item integer,
    outlet_id integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_id_seq OWNER TO postgres;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    user_id integer,
    order_no character varying,
    shop_id integer,
    shop_name jsonb,
    shop_icon_url character varying,
    channel_id integer,
    channel_name character varying,
    channel_key character varying,
    subtotal numeric(10,2) DEFAULT 0.0,
    payable_amount numeric(10,2) DEFAULT 0.0,
    status integer,
    fulfillment_type integer,
    receiver_name character varying,
    receiver_phone_number character varying,
    receiver_email character varying,
    fulfillment_time_start timestamp(6) without time zone,
    fulfillment_time_end timestamp(6) without time zone,
    gst_inclusive boolean,
    gst_amount numeric(10,2) DEFAULT 0.0,
    fulfillment_amount numeric(10,2) DEFAULT 0.0,
    fulfillment_surcharge numeric(10,2) DEFAULT 0.0,
    address_line_1 character varying,
    address_line_2 character varying,
    address_line_3 character varying,
    address_postal_code character varying,
    user_remarks character varying,
    admin_remarks character varying,
    auto_confirm boolean,
    tracking_no character varying,
    delivery_company character varying,
    fulfillment_time_slot_id integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payment_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_settings (
    id bigint NOT NULL,
    support_cash boolean,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.payment_settings OWNER TO postgres;

--
-- Name: payment_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_settings_id_seq OWNER TO postgres;

--
-- Name: payment_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_settings_id_seq OWNED BY public.payment_settings.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    user_id integer,
    order_id integer,
    amount numeric(10,2) DEFAULT 0.0,
    mode integer,
    status integer,
    payment_no character varying,
    gateway_payment_ref character varying,
    voucher_id integer,
    voucher_name jsonb,
    paid_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_id_seq OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: preference_item_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preference_item_snapshots (
    id bigint NOT NULL,
    order_item_id integer,
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
    order_item_id integer,
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
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payment_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_settings ALTER COLUMN id SET DEFAULT nextval('public.payment_settings_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: preference_item_snapshots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_item_snapshots ALTER COLUMN id SET DEFAULT nextval('public.preference_item_snapshots_id_seq'::regclass);


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
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2022-08-26 15:43:39.938624	2022-08-26 15:43:39.938624
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (id, order_id, product_id, stock_type, stock_id, master_stock_ref, sellable_id, sellable_type, sellable_name, sellable_image_url, quantity, amount_per_item, bundle_item_id, bundle_id, bundle_name, bundle_image_url, preference_amount_per_item, outlet_id, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, user_id, order_no, shop_id, shop_name, shop_icon_url, channel_id, channel_name, channel_key, subtotal, payable_amount, status, fulfillment_type, receiver_name, receiver_phone_number, receiver_email, fulfillment_time_start, fulfillment_time_end, gst_inclusive, gst_amount, fulfillment_amount, fulfillment_surcharge, address_line_1, address_line_2, address_line_3, address_postal_code, user_remarks, admin_remarks, auto_confirm, tracking_no, delivery_company, fulfillment_time_slot_id, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: payment_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_settings (id, support_cash, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, user_id, order_id, amount, mode, status, payment_no, gateway_payment_ref, voucher_id, voucher_name, paid_at, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: preference_item_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preference_item_snapshots (id, order_item_id, preference_group_id, preference_item_id, preference_group_name, preference_item_name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20220803031004
20220803031009
20220803031016
20220803031033
20220803031118
20220803031150
20220824093426
20220824094037
20220902132847
\.


--
-- Data for Name: user_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_views (id, user_id, name, email, phone_number, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
\.


--
-- Data for Name: variant_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variant_snapshots (id, order_item_id, variation_id, variation_name, variant_id, variant_name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, item_type, item_id, event, whodunnit, object_changes, created_at) FROM stdin;
\.


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: payment_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_settings_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: preference_item_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preference_item_snapshots_id_seq', 1, false);


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
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payment_settings payment_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_settings
    ADD CONSTRAINT payment_settings_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: preference_item_snapshots preference_item_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_item_snapshots
    ADD CONSTRAINT preference_item_snapshots_pkey PRIMARY KEY (id);


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
-- Name: index_order_items_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_items_on_order_id ON public.order_items USING btree (order_id);


--
-- Name: index_orders_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_user_id ON public.orders USING btree (user_id);


--
-- Name: index_payments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_payments_on_order_id ON public.payments USING btree (order_id);


--
-- Name: index_payments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_payments_on_user_id ON public.payments USING btree (user_id);


--
-- Name: index_preference_item_snapshots_on_order_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_item_snapshots_on_order_item_id ON public.preference_item_snapshots USING btree (order_item_id);


--
-- Name: index_variant_snapshots_on_order_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_variant_snapshots_on_order_item_id ON public.variant_snapshots USING btree (order_item_id);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_item_type_and_item_id ON public.versions USING btree (item_type, item_id);


--
-- PostgreSQL database dump complete
--

