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

DROP INDEX public.index_voucher_products_on_voucher_sku_id;
DROP INDEX public.index_voucher_products_on_shop_id;
DROP INDEX public.index_voucher_products_on_deleted_at;
DROP INDEX public.index_versions_on_item_type_and_item_id;
DROP INDEX public.index_variations_on_product_id;
DROP INDEX public.index_variations_on_deleted_at;
DROP INDEX public.index_variants_on_variation_id;
DROP INDEX public.index_variants_on_deleted_at;
DROP INDEX public.index_users_on_reset_password_token;
DROP INDEX public.index_users_on_phone_number;
DROP INDEX public.index_users_on_email;
DROP INDEX public.index_users_on_device_key;
DROP INDEX public.index_users_on_deleted_at;
DROP INDEX public.index_user_groups_on_deleted_at;
DROP INDEX public.index_user_group_members_on_user_group_id;
DROP INDEX public.index_user_group_members_on_deleted_at;
DROP INDEX public.index_shops_on_deleted_at;
DROP INDEX public.index_quotations_on_user_id;
DROP INDEX public.index_products_on_shop_id;
DROP INDEX public.index_products_on_deleted_at;
DROP INDEX public.index_product_skus_on_product_id;
DROP INDEX public.index_product_skus_on_deleted_at;
DROP INDEX public.index_preference_items_on_preference_group_id;
DROP INDEX public.index_preference_items_on_deleted_at;
DROP INDEX public.index_preference_groups_on_product_id;
DROP INDEX public.index_preference_groups_on_deleted_at;
DROP INDEX public.index_no_fulfillment_dates_on_shop_id;
DROP INDEX public.index_images_on_target_type_and_target_id;
DROP INDEX public.index_fulfillment_time_slots_on_shop_id;
DROP INDEX public.index_delivery_fee_tiers_on_shop_id;
DROP INDEX public.index_custom_attributes_on_attributable;
DROP INDEX public.index_channels_on_shop_id;
DROP INDEX public.index_channel_sellables_on_sellable_id_and_sellable_type;
DROP INDEX public.index_cart_items_on_user_id;
DROP INDEX public.index_cart_items_on_deleted_at;
DROP INDEX public.index_cart_items_on_cartable_id_and_cartable_type;
DROP INDEX public.index_bundles_on_shop_id;
DROP INDEX public.index_bundles_on_deleted_at;
DROP INDEX public.index_bundle_items_on_deleted_at;
DROP INDEX public.index_bundle_items_on_bundleable_type_and_bundleable_id;
DROP INDEX public.index_bundle_items_on_bundle_id;
DROP INDEX public.index_admin_users_on_phone_number;
DROP INDEX public.index_admin_users_on_email;
ALTER TABLE ONLY public.voucher_sku_views DROP CONSTRAINT voucher_sku_views_pkey;
ALTER TABLE ONLY public.voucher_products DROP CONSTRAINT voucher_products_pkey;
ALTER TABLE ONLY public.voucher_applicable_target_views DROP CONSTRAINT voucher_applicable_target_views_pkey;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.variations DROP CONSTRAINT variations_pkey;
ALTER TABLE ONLY public.variants DROP CONSTRAINT variants_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_pkey;
ALTER TABLE ONLY public.user_group_members DROP CONSTRAINT user_group_members_pkey;
ALTER TABLE ONLY public.sku_views DROP CONSTRAINT sku_views_pkey;
ALTER TABLE ONLY public.shops DROP CONSTRAINT shops_pkey;
ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
ALTER TABLE ONLY public.quotations DROP CONSTRAINT quotations_pkey;
ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
ALTER TABLE ONLY public.product_skus DROP CONSTRAINT product_skus_pkey;
ALTER TABLE ONLY public.preference_items DROP CONSTRAINT preference_items_pkey;
ALTER TABLE ONLY public.preference_groups DROP CONSTRAINT preference_groups_pkey;
ALTER TABLE ONLY public.outlet_views DROP CONSTRAINT outlet_views_pkey;
ALTER TABLE ONLY public.outlet_sku_views DROP CONSTRAINT outlet_sku_views_pkey;
ALTER TABLE ONLY public.no_fulfillment_dates DROP CONSTRAINT no_fulfillment_dates_pkey;
ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
ALTER TABLE ONLY public.fulfillment_time_slots DROP CONSTRAINT fulfillment_time_slots_pkey;
ALTER TABLE ONLY public.fulfillment_instances DROP CONSTRAINT fulfillment_instances_pkey;
ALTER TABLE ONLY public.delivery_fee_tiers DROP CONSTRAINT delivery_fee_tiers_pkey;
ALTER TABLE ONLY public.custom_attributes DROP CONSTRAINT custom_attributes_pkey;
ALTER TABLE ONLY public.channels DROP CONSTRAINT channels_pkey;
ALTER TABLE ONLY public.channel_sellables DROP CONSTRAINT channel_sellables_pkey;
ALTER TABLE ONLY public.cart_items DROP CONSTRAINT cart_items_pkey;
ALTER TABLE ONLY public.bundles DROP CONSTRAINT bundles_pkey;
ALTER TABLE ONLY public.bundle_items DROP CONSTRAINT bundle_items_pkey;
ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
ALTER TABLE public.voucher_sku_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.voucher_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.voucher_applicable_target_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variants ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_group_members ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sku_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.shops ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.quotations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_skus ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.preference_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.preference_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.outlet_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.outlet_sku_views ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.no_fulfillment_dates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fulfillment_time_slots ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fulfillment_instances ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delivery_fee_tiers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.custom_attributes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.channels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.channel_sellables ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cart_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bundles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bundle_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.voucher_sku_views_id_seq;
DROP TABLE public.voucher_sku_views;
DROP SEQUENCE public.voucher_products_id_seq;
DROP TABLE public.voucher_products;
DROP SEQUENCE public.voucher_applicable_target_views_id_seq;
DROP TABLE public.voucher_applicable_target_views;
DROP SEQUENCE public.versions_id_seq;
DROP TABLE public.versions;
DROP SEQUENCE public.variations_id_seq;
DROP TABLE public.variations;
DROP SEQUENCE public.variants_id_seq;
DROP TABLE public.variants;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.user_groups_id_seq;
DROP TABLE public.user_groups;
DROP SEQUENCE public.user_group_members_id_seq;
DROP TABLE public.user_group_members;
DROP SEQUENCE public.sku_views_id_seq;
DROP TABLE public.sku_views;
DROP SEQUENCE public.shops_id_seq;
DROP TABLE public.shops;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.quotations_id_seq;
DROP TABLE public.quotations;
DROP SEQUENCE public.products_id_seq;
DROP TABLE public.products;
DROP SEQUENCE public.product_skus_id_seq;
DROP TABLE public.product_skus;
DROP SEQUENCE public.preference_items_id_seq;
DROP TABLE public.preference_items;
DROP SEQUENCE public.preference_groups_id_seq;
DROP TABLE public.preference_groups;
DROP SEQUENCE public.outlet_views_id_seq;
DROP TABLE public.outlet_views;
DROP SEQUENCE public.outlet_sku_views_id_seq;
DROP TABLE public.outlet_sku_views;
DROP SEQUENCE public.no_fulfillment_dates_id_seq;
DROP TABLE public.no_fulfillment_dates;
DROP SEQUENCE public.images_id_seq;
DROP TABLE public.images;
DROP SEQUENCE public.fulfillment_time_slots_id_seq;
DROP TABLE public.fulfillment_time_slots;
DROP SEQUENCE public.fulfillment_instances_id_seq;
DROP TABLE public.fulfillment_instances;
DROP SEQUENCE public.delivery_fee_tiers_id_seq;
DROP TABLE public.delivery_fee_tiers;
DROP SEQUENCE public.custom_attributes_id_seq;
DROP TABLE public.custom_attributes;
DROP SEQUENCE public.channels_id_seq;
DROP TABLE public.channels;
DROP SEQUENCE public.channel_sellables_id_seq;
DROP TABLE public.channel_sellables;
DROP SEQUENCE public.cart_items_id_seq;
DROP TABLE public.cart_items;
DROP SEQUENCE public.bundles_id_seq;
DROP TABLE public.bundles;
DROP SEQUENCE public.bundle_items_id_seq;
DROP TABLE public.bundle_items;
DROP TABLE public.ar_internal_metadata;
DROP SEQUENCE public.admin_users_id_seq;
DROP TABLE public.admin_users;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id bigint NOT NULL,
    email character varying,
    phone_number character varying,
    name character varying,
    encrypted_password character varying,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


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
-- Name: bundle_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bundle_items (
    id bigint NOT NULL,
    bundle_id integer,
    bundleable_id integer,
    bundleable_type character varying,
    bundle_price numeric(10,2) DEFAULT 0.0,
    baseline_price numeric(10,2) DEFAULT 0.0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.bundle_items OWNER TO postgres;

--
-- Name: bundle_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bundle_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bundle_items_id_seq OWNER TO postgres;

--
-- Name: bundle_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bundle_items_id_seq OWNED BY public.bundle_items.id;


--
-- Name: bundles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bundles (
    id bigint NOT NULL,
    shop_id integer,
    price_low numeric(10,2) DEFAULT 0.0,
    price_high numeric(10,2) DEFAULT 0.0,
    name jsonb,
    "desc" jsonb,
    short_desc jsonb,
    active boolean DEFAULT true,
    ranking integer DEFAULT 0,
    searchable boolean DEFAULT true,
    open_for_sale_at timestamp(6) without time zone,
    initial_sold_quantity integer DEFAULT 0,
    actual_sold_quantity integer DEFAULT 0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.bundles OWNER TO postgres;

--
-- Name: bundles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bundles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bundles_id_seq OWNER TO postgres;

--
-- Name: bundles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bundles_id_seq OWNED BY public.bundles.id;


--
-- Name: cart_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_items (
    id bigint NOT NULL,
    user_id integer,
    channel_id integer,
    status integer,
    cartable_id integer,
    cartable_type character varying,
    quantity integer,
    preference_item_ids integer[] DEFAULT '{}'::integer[],
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.cart_items OWNER TO postgres;

--
-- Name: cart_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_items_id_seq OWNER TO postgres;

--
-- Name: cart_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_items_id_seq OWNED BY public.cart_items.id;


--
-- Name: channel_sellables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channel_sellables (
    id bigint NOT NULL,
    channel_id integer,
    sellable_id integer,
    sellable_type character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.channel_sellables OWNER TO postgres;

--
-- Name: channel_sellables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.channel_sellables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channel_sellables_id_seq OWNER TO postgres;

--
-- Name: channel_sellables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.channel_sellables_id_seq OWNED BY public.channel_sellables.id;


--
-- Name: channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channels (
    id bigint NOT NULL,
    shop_id integer,
    name character varying,
    key character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.channels OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channels_id_seq OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.channels_id_seq OWNED BY public.channels.id;


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
-- Name: delivery_fee_tiers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery_fee_tiers (
    id bigint NOT NULL,
    shop_id integer,
    tier_type integer,
    start_value numeric(10,2) DEFAULT 0.0,
    end_value numeric(10,2) DEFAULT 0.0,
    fee numeric(10,2) DEFAULT 0.0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.delivery_fee_tiers OWNER TO postgres;

--
-- Name: delivery_fee_tiers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delivery_fee_tiers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delivery_fee_tiers_id_seq OWNER TO postgres;

--
-- Name: delivery_fee_tiers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delivery_fee_tiers_id_seq OWNED BY public.delivery_fee_tiers.id;


--
-- Name: fulfillment_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fulfillment_instances (
    id bigint NOT NULL,
    fulfillment_type integer,
    fulfillment_date date,
    fulfillment_time_slot_id integer,
    count integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.fulfillment_instances OWNER TO postgres;

--
-- Name: fulfillment_instances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fulfillment_instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fulfillment_instances_id_seq OWNER TO postgres;

--
-- Name: fulfillment_instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fulfillment_instances_id_seq OWNED BY public.fulfillment_instances.id;


--
-- Name: fulfillment_time_slots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fulfillment_time_slots (
    id bigint NOT NULL,
    fulfillment_type integer,
    shop_id integer,
    start_time time without time zone,
    end_time time without time zone,
    cutoff integer,
    limited_quota boolean DEFAULT false,
    quota integer,
    warning_quota integer,
    days_of_week integer[] DEFAULT '{}'::integer[],
    surcharge character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.fulfillment_time_slots OWNER TO postgres;

--
-- Name: fulfillment_time_slots_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fulfillment_time_slots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fulfillment_time_slots_id_seq OWNER TO postgres;

--
-- Name: fulfillment_time_slots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fulfillment_time_slots_id_seq OWNED BY public.fulfillment_time_slots.id;


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
-- Name: no_fulfillment_dates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.no_fulfillment_dates (
    id bigint NOT NULL,
    fulfillment_type integer,
    shop_id integer,
    start_date date,
    end_date date,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.no_fulfillment_dates OWNER TO postgres;

--
-- Name: no_fulfillment_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.no_fulfillment_dates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.no_fulfillment_dates_id_seq OWNER TO postgres;

--
-- Name: no_fulfillment_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.no_fulfillment_dates_id_seq OWNED BY public.no_fulfillment_dates.id;


--
-- Name: outlet_sku_views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.outlet_sku_views (
    id bigint NOT NULL,
    outlet_sku_id integer,
    quantity integer,
    sku_id integer,
    outlet_id integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.outlet_sku_views OWNER TO postgres;

--
-- Name: outlet_sku_views_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outlet_sku_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outlet_sku_views_id_seq OWNER TO postgres;

--
-- Name: outlet_sku_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outlet_sku_views_id_seq OWNED BY public.outlet_sku_views.id;


--
-- Name: outlet_views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.outlet_views (
    id bigint NOT NULL,
    outlet_id integer,
    master_outlet_ref character varying,
    name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.outlet_views OWNER TO postgres;

--
-- Name: outlet_views_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outlet_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outlet_views_id_seq OWNER TO postgres;

--
-- Name: outlet_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outlet_views_id_seq OWNED BY public.outlet_views.id;


--
-- Name: preference_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preference_groups (
    id bigint NOT NULL,
    product_id integer,
    name jsonb,
    min_selection integer DEFAULT 1,
    max_selection integer DEFAULT 1,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.preference_groups OWNER TO postgres;

--
-- Name: preference_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preference_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preference_groups_id_seq OWNER TO postgres;

--
-- Name: preference_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preference_groups_id_seq OWNED BY public.preference_groups.id;


--
-- Name: preference_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preference_items (
    id bigint NOT NULL,
    preference_group_id integer,
    name jsonb,
    surcharge numeric(10,2) DEFAULT 0.0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.preference_items OWNER TO postgres;

--
-- Name: preference_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preference_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preference_items_id_seq OWNER TO postgres;

--
-- Name: preference_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preference_items_id_seq OWNED BY public.preference_items.id;


--
-- Name: product_skus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_skus (
    id bigint NOT NULL,
    shop_id integer,
    outlet_sku_id integer,
    master_sku_ref character varying,
    price numeric(10,2) DEFAULT 0.0,
    quantity integer DEFAULT 0,
    variant_ids integer[] DEFAULT '{}'::integer[],
    product_id integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.product_skus OWNER TO postgres;

--
-- Name: product_skus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_skus_id_seq OWNER TO postgres;

--
-- Name: product_skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_skus_id_seq OWNED BY public.product_skus.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    shop_id integer,
    name jsonb,
    short_desc jsonb,
    "desc" jsonb,
    price_low numeric(10,2) DEFAULT 0.0,
    price_high numeric(10,2) DEFAULT 0.0,
    variant_sku_mapping jsonb DEFAULT '"{}"'::jsonb NOT NULL,
    open_for_sale_at timestamp(6) without time zone,
    active boolean DEFAULT true,
    ranking integer DEFAULT 0,
    searchable boolean DEFAULT true,
    initial_sold_quantity integer DEFAULT 0,
    actual_sold_quantity integer DEFAULT 0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: quotations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quotations (
    id bigint NOT NULL,
    user_id integer,
    content jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.quotations OWNER TO postgres;

--
-- Name: quotations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quotations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotations_id_seq OWNER TO postgres;

--
-- Name: quotations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quotations_id_seq OWNED BY public.quotations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: shops; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shops (
    id bigint NOT NULL,
    name jsonb,
    active boolean DEFAULT true,
    searchable boolean DEFAULT true,
    ranking integer DEFAULT 0,
    charge_gst_separately boolean DEFAULT false,
    automated_order_confirmation boolean DEFAULT true,
    operation_time_start timestamp(6) without time zone,
    operation_time_end timestamp(6) without time zone,
    phone_number character varying,
    email character varying,
    whatsapp_number character varying,
    "desc" jsonb,
    short_desc jsonb,
    outlet_id integer,
    support_delivery boolean DEFAULT false,
    delivery_type integer DEFAULT 0,
    min_delivery_amount numeric(10,2),
    free_delivery_amount numeric(10,2),
    delivery_source_location_lat numeric(12,8),
    delivery_source_location_lon numeric(12,8),
    delivery_date_display_mode integer,
    delivery_number_of_days integer,
    delivery_cutoff_date date,
    delivery_tips jsonb,
    delivery_fee_calculation_method integer,
    support_pickup boolean,
    pickup_type integer,
    pickup_date_display_mode integer,
    coupon_expiration_days integer DEFAULT 0,
    self_pickup_tips jsonb,
    pickup_number_of_days integer,
    pickup_cutoff_date date,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.shops OWNER TO postgres;

--
-- Name: shops_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_id_seq OWNER TO postgres;

--
-- Name: shops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shops_id_seq OWNED BY public.shops.id;


--
-- Name: sku_views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sku_views (
    id bigint NOT NULL,
    sku_id integer,
    master_sku_ref character varying,
    name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.sku_views OWNER TO postgres;

--
-- Name: sku_views_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sku_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sku_views_id_seq OWNER TO postgres;

--
-- Name: sku_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sku_views_id_seq OWNED BY public.sku_views.id;


--
-- Name: user_group_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_group_members (
    id bigint NOT NULL,
    user_group_id integer,
    user_id integer,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.user_group_members OWNER TO postgres;

--
-- Name: user_group_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_group_members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_group_members_id_seq OWNER TO postgres;

--
-- Name: user_group_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_group_members_id_seq OWNED BY public.user_group_members.id;


--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_groups (
    id bigint NOT NULL,
    name character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.user_groups OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_id_seq OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_groups_id_seq OWNED BY public.user_groups.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    name character varying,
    user_type integer,
    phone_number character varying,
    device_key character varying,
    encrypted_password character varying,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variants (
    id bigint NOT NULL,
    variation_id integer,
    name jsonb,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.variants OWNER TO postgres;

--
-- Name: variants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variants_id_seq OWNER TO postgres;

--
-- Name: variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.variants_id_seq OWNED BY public.variants.id;


--
-- Name: variations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variations (
    id bigint NOT NULL,
    product_id integer,
    name jsonb,
    ranking integer DEFAULT 0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.variations OWNER TO postgres;

--
-- Name: variations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.variations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variations_id_seq OWNER TO postgres;

--
-- Name: variations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.variations_id_seq OWNED BY public.variations.id;


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
-- Name: voucher_applicable_target_views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voucher_applicable_target_views (
    id bigint NOT NULL,
    voucher_sku_id integer,
    voucher_applicable_name jsonb,
    voucher_applicable_id character varying,
    voucher_applicable_type character varying,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.voucher_applicable_target_views OWNER TO postgres;

--
-- Name: voucher_applicable_target_views_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voucher_applicable_target_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voucher_applicable_target_views_id_seq OWNER TO postgres;

--
-- Name: voucher_applicable_target_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voucher_applicable_target_views_id_seq OWNED BY public.voucher_applicable_target_views.id;


--
-- Name: voucher_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voucher_products (
    id bigint NOT NULL,
    shop_id integer,
    voucher_sku_id integer,
    price numeric(10,2) DEFAULT 0.0,
    value_amount numeric(10,2) DEFAULT 0.0,
    min_spend numeric(10,2) DEFAULT 0.0,
    quantity integer DEFAULT 0,
    name jsonb,
    "desc" jsonb,
    short_desc jsonb,
    active boolean DEFAULT true,
    searchable boolean DEFAULT true,
    ranking integer DEFAULT 0,
    open_for_sale_at timestamp(6) without time zone,
    initial_sold_quantity integer DEFAULT 0,
    actual_sold_quantity integer DEFAULT 0,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.voucher_products OWNER TO postgres;

--
-- Name: voucher_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voucher_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voucher_products_id_seq OWNER TO postgres;

--
-- Name: voucher_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voucher_products_id_seq OWNED BY public.voucher_products.id;


--
-- Name: voucher_sku_views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voucher_sku_views (
    id bigint NOT NULL,
    voucher_sku_id integer,
    value_amount numeric(10,2),
    quantity integer,
    name jsonb,
    min_spend numeric(10,2),
    recommended_price numeric(10,2),
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    last_event_time timestamp(6) without time zone DEFAULT '2022-09-01 00:00:00'::timestamp without time zone
);


ALTER TABLE public.voucher_sku_views OWNER TO postgres;

--
-- Name: voucher_sku_views_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voucher_sku_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voucher_sku_views_id_seq OWNER TO postgres;

--
-- Name: voucher_sku_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voucher_sku_views_id_seq OWNED BY public.voucher_sku_views.id;


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: bundle_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundle_items ALTER COLUMN id SET DEFAULT nextval('public.bundle_items_id_seq'::regclass);


--
-- Name: bundles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundles ALTER COLUMN id SET DEFAULT nextval('public.bundles_id_seq'::regclass);


--
-- Name: cart_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items ALTER COLUMN id SET DEFAULT nextval('public.cart_items_id_seq'::regclass);


--
-- Name: channel_sellables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channel_sellables ALTER COLUMN id SET DEFAULT nextval('public.channel_sellables_id_seq'::regclass);


--
-- Name: channels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels ALTER COLUMN id SET DEFAULT nextval('public.channels_id_seq'::regclass);


--
-- Name: custom_attributes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_attributes ALTER COLUMN id SET DEFAULT nextval('public.custom_attributes_id_seq'::regclass);


--
-- Name: delivery_fee_tiers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_fee_tiers ALTER COLUMN id SET DEFAULT nextval('public.delivery_fee_tiers_id_seq'::regclass);


--
-- Name: fulfillment_instances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fulfillment_instances ALTER COLUMN id SET DEFAULT nextval('public.fulfillment_instances_id_seq'::regclass);


--
-- Name: fulfillment_time_slots id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fulfillment_time_slots ALTER COLUMN id SET DEFAULT nextval('public.fulfillment_time_slots_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: no_fulfillment_dates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.no_fulfillment_dates ALTER COLUMN id SET DEFAULT nextval('public.no_fulfillment_dates_id_seq'::regclass);


--
-- Name: outlet_sku_views id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlet_sku_views ALTER COLUMN id SET DEFAULT nextval('public.outlet_sku_views_id_seq'::regclass);


--
-- Name: outlet_views id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlet_views ALTER COLUMN id SET DEFAULT nextval('public.outlet_views_id_seq'::regclass);


--
-- Name: preference_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_groups ALTER COLUMN id SET DEFAULT nextval('public.preference_groups_id_seq'::regclass);


--
-- Name: preference_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_items ALTER COLUMN id SET DEFAULT nextval('public.preference_items_id_seq'::regclass);


--
-- Name: product_skus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_skus ALTER COLUMN id SET DEFAULT nextval('public.product_skus_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: quotations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotations ALTER COLUMN id SET DEFAULT nextval('public.quotations_id_seq'::regclass);


--
-- Name: shops id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shops_id_seq'::regclass);


--
-- Name: sku_views id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sku_views ALTER COLUMN id SET DEFAULT nextval('public.sku_views_id_seq'::regclass);


--
-- Name: user_group_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_group_members ALTER COLUMN id SET DEFAULT nextval('public.user_group_members_id_seq'::regclass);


--
-- Name: user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_groups_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: variants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variants ALTER COLUMN id SET DEFAULT nextval('public.variants_id_seq'::regclass);


--
-- Name: variations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variations ALTER COLUMN id SET DEFAULT nextval('public.variations_id_seq'::regclass);


--
-- Name: versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions ALTER COLUMN id SET DEFAULT nextval('public.versions_id_seq'::regclass);


--
-- Name: voucher_applicable_target_views id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_applicable_target_views ALTER COLUMN id SET DEFAULT nextval('public.voucher_applicable_target_views_id_seq'::regclass);


--
-- Name: voucher_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_products ALTER COLUMN id SET DEFAULT nextval('public.voucher_products_id_seq'::regclass);


--
-- Name: voucher_sku_views id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_sku_views ALTER COLUMN id SET DEFAULT nextval('public.voucher_sku_views_id_seq'::regclass);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, email, phone_number, name, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, deleted_at, created_at, updated_at) FROM stdin;
1	qa@fooyo.sg	19983141600	qa	$2a$12$KXS4QOI3ceicCYCeTJCFu.O8GBC4RtiWLxsqIcz1ZLS6rjt7XVDUi	\N	\N	\N	\N	2022-08-29 16:48:53.201821	2022-08-29 16:48:53.201821
2	huyang@fooyo.sg	12345678	huyang	$2a$12$PtG6hPZDN0TFrJRpbBC7bOCDhfamW.MO9dMJAmqXz3H22GzCMlSsu	\N	\N	\N	\N	2022-09-06 03:14:14.796225	2022-09-06 03:14:14.796225
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2022-08-26 14:07:26.046761	2022-08-26 14:07:26.046761
\.


--
-- Data for Name: bundle_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bundle_items (id, bundle_id, bundleable_id, bundleable_type, bundle_price, baseline_price, deleted_at, created_at, updated_at) FROM stdin;
1	1	2	Product	29.00	20.00	\N	2022-09-01 09:37:00.575741	2022-09-01 09:37:00.575741
2	1	6	Product	18.00	15.00	\N	2022-09-01 09:37:00.611204	2022-09-01 09:37:00.611204
3	1	2	Product	25.00	20.00	\N	2022-09-01 09:37:00.64335	2022-09-01 09:37:00.64335
4	2	7	Product	29.00	25.00	\N	2022-09-01 09:39:13.621575	2022-09-01 09:39:13.621575
5	2	6	Product	21.00	20.00	\N	2022-09-01 09:39:13.64826	2022-09-01 09:39:13.64826
6	3	2	Product	35.00	30.00	\N	2022-09-01 09:41:06.541732	2022-09-01 09:41:06.541732
7	3	2	Product	23.00	25.00	\N	2022-09-01 09:41:06.558215	2022-09-01 09:41:06.558215
8	3	7	Product	29.00	29.00	\N	2022-09-01 09:41:06.575626	2022-09-01 09:41:06.575626
9	3	6	Product	16.80	15.00	\N	2022-09-01 09:41:06.592102	2022-09-01 09:41:06.592102
10	4	2	Product	38.80	35.00	\N	2022-09-01 09:50:20.348922	2022-09-01 09:50:20.348922
11	4	7	Product	22.00	20.00	\N	2022-09-01 09:50:20.373154	2022-09-01 09:50:20.373154
13	5	4	Product	18.90	15.00	\N	2022-09-01 09:57:55.074724	2022-09-01 09:57:55.074724
14	5	5	Product	38.90	36.00	\N	2022-09-01 09:57:55.089035	2022-09-01 09:57:55.089035
15	6	4	Product	64.00	60.00	\N	2022-09-01 10:01:42.414319	2022-09-01 10:01:42.414319
16	6	3	Product	19.90	18.00	\N	2022-09-01 10:01:42.442575	2022-09-01 10:01:42.442575
17	7	8	Product	5.00	4.00	\N	2022-09-01 10:04:27.32525	2022-09-01 10:04:27.32525
18	7	11	Product	6.00	5.00	\N	2022-09-01 10:04:27.34444	2022-09-01 10:04:27.34444
20	8	3	Product	30.00	30.00	\N	2022-09-01 10:05:41.327422	2022-09-01 10:05:41.327422
21	9	3	Product	33.00	30.00	\N	2022-09-01 10:11:14.792157	2022-09-01 10:11:14.792157
22	9	5	Product	22.00	21.00	\N	2022-09-01 10:11:14.809432	2022-09-01 10:11:14.809432
24	10	6	Product	1.00	3.00	2022-09-08 07:01:22.604802	2022-09-08 07:00:25.872533	2022-09-08 07:01:22.604811
12	5	3	Product	23.00	23.00	\N	2022-09-01 09:57:55.05917	2022-09-09 08:42:56.78786
19	8	68	Product	28.80	28.00	\N	2022-09-01 10:05:41.308694	2022-09-09 08:49:48.858018
23	9	5	Product	199.90	180.00	\N	2022-09-01 10:11:14.825003	2022-09-09 08:50:19.571875
25	11	70	Product	11.00	111.00	2022-09-09 09:01:44.093947	2022-09-09 09:01:34.450632	2022-09-09 09:01:44.093958
\.


--
-- Data for Name: bundles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bundles (id, shop_id, price_low, price_high, name, "desc", short_desc, active, ranking, searchable, open_for_sale_at, initial_sold_quantity, actual_sold_quantity, deleted_at, created_at, updated_at) FROM stdin;
1	2	72.00	17.00	{"en": "Valentine‘s Day Bundle", "zh-CN": "情人节套餐"}	{"en": "KFC Valentine‘s Day Bundle", "zh-CN": "肯德基 情人节套餐"}	{"en": "Valentines Day bundle", "zh-CN": "情人节套餐"}	t	50	t	2022-09-09 08:31:39	111	0	\N	2022-09-01 09:37:00.49096	2022-09-09 08:35:49.437992
2	2	50.00	5.00	{"en": "DOU shots Bundle", "zh-CN": "DOU shots 套餐"}	{"en": " KFC DOU shots bundle", "zh-CN": "KFC DOU shots 套餐"}	{"en": "DOU shots bundle", "zh-CN": "DOU shots 套餐"}	t	49	f	2022-09-09 08:34:08	33	0	\N	2022-09-01 09:39:13.602107	2022-09-09 08:36:02.398515
3	2	103.80	4.80	{"en": "Father’s day Bundle", "zh-CN": "父亲节套餐"}	{"en": " KFC Father’s day bundle", "zh-CN": "肯德基 父亲节套餐"}	{"en": "Father’s day bundle", "zh-CN": "父亲节套餐"}	f	48	t	2022-09-09 08:36:17	200	0	\N	2022-09-01 09:41:06.530261	2022-09-09 08:37:03.593026
11	1	11.00	-100.00	{"en": "11", "zh-CN": "11"}	{}	{}	f	\N	f	\N	\N	0	2022-09-09 09:01:44.097059	2022-09-09 09:01:34.437156	2022-09-09 09:01:44.097071
4	2	60.80	5.80	{"en": "Family Bundle", "zh-CN": "家庭套餐"}	{"en": "KFC Family bundle", "zh-CN": "肯德基家庭套餐"}	{"en": "Family bundle", "zh-CN": "家庭套餐"}	t	47	t	2022-09-09 08:37:25	50	0	\N	2022-09-01 09:50:20.322803	2022-09-09 08:42:12.277468
5	1	80.80	6.80	{"en": "Souvenir Bundle", "zh-CN": "纪念套餐"}	{"en": "Singapore Zoo Gift E-shop Souvenir bundle", "zh-CN": "新加坡动物园线上礼品店 纪念套餐"}	{"en": "Souvenir Bundle", "zh-CN": "纪念套餐"}	t	50	t	2022-09-09 08:43:09	20	0	\N	2022-09-01 09:57:55.04815	2022-09-09 08:43:10.884033
6	1	83.90	5.90	{"en": "Weekend Bundle", "zh-CN": "周末套餐"}	{"en": "Singapore Zoo Gift E-shop Weekend Bundle", "zh-CN": "新加坡动物园线上礼品店 周末套餐"}	{"en": "Weekend Bundle", "zh-CN": "周末套餐"}	t	49	t	\N	45	0	\N	2022-09-01 10:01:42.368655	2022-09-09 08:43:56.486677
7	3	11.00	2.00	{"en": "Single Bundle", "zh-CN": "单人套餐"}	{}	{"en": "One person use", "zh-CN": "一人份使用"}	t	1	t	2022-09-01 17:52:17	\N	0	\N	2022-09-01 10:04:27.274192	2022-09-01 10:04:27.356562
8	1	58.80	0.80	{"en": "Summer Bundle", "zh-CN": "夏日套餐"}	{"en": "Singapore Zoo Gift E-shop Summer Bundle", "zh-CN": "新加坡动物园 线上礼品店 夏日套餐"}	{"en": "Summer Bundle", "zh-CN": "夏日套餐"}	t	48	t	\N	35	0	\N	2022-09-01 10:05:41.275683	2022-09-09 08:49:48.845737
9	1	254.90	23.90	{"en": "Festive Bundle", "zh-CN": "节日套餐"}	{"en": "Singapore Zoo Gift E-shop Festive Bundle", "zh-CN": "新加坡动物园线上礼品店 节日套餐"}	{"en": "Festive Bundle", "zh-CN": "节日套餐"}	t	47	f	\N	50	0	\N	2022-09-01 10:11:14.76137	2022-09-09 08:50:19.546454
10	2	1.00	-2.00	{"en": "1", "zh-CN": "1"}	{}	{}	t	\N	f	\N	\N	0	2022-09-08 07:01:22.610374	2022-09-08 07:00:25.844471	2022-09-08 07:01:22.610385
\.


--
-- Data for Name: cart_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_items (id, user_id, channel_id, status, cartable_id, cartable_type, quantity, preference_item_ids, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: channel_sellables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channel_sellables (id, channel_id, sellable_id, sellable_type, deleted_at, created_at, updated_at) FROM stdin;
1	4	2	Product	\N	2022-08-31 07:34:33.559793	2022-08-31 07:34:33.559793
2	5	2	Product	\N	2022-08-31 07:34:33.567825	2022-08-31 07:34:33.567825
3	4	2	VoucherProduct	\N	2022-08-31 09:39:27.752045	2022-08-31 09:39:27.752045
4	1	3	VoucherProduct	\N	2022-08-31 09:55:01.592816	2022-08-31 09:55:01.592816
5	4	4	VoucherProduct	\N	2022-08-31 10:03:51.621444	2022-08-31 10:03:51.621444
6	1	3	Product	\N	2022-09-01 07:05:29.156689	2022-09-01 07:05:29.156689
7	3	3	Product	\N	2022-09-01 07:05:29.164107	2022-09-01 07:05:29.164107
9	1	4	Product	\N	2022-09-01 07:06:46.38428	2022-09-01 07:06:46.38428
10	4	5	VoucherProduct	\N	2022-09-01 07:07:12.16697	2022-09-01 07:07:12.16697
11	5	5	VoucherProduct	\N	2022-09-01 07:07:12.177029	2022-09-01 07:07:12.177029
13	3	5	Product	\N	2022-09-01 07:08:14.527287	2022-09-01 07:08:14.527287
14	4	6	Product	\N	2022-09-01 07:16:11.654306	2022-09-01 07:16:11.654306
15	5	6	Product	\N	2022-09-01 07:16:11.661283	2022-09-01 07:16:11.661283
16	4	7	Product	\N	2022-09-01 07:23:04.584175	2022-09-01 07:23:04.584175
17	5	7	Product	\N	2022-09-01 07:23:04.592651	2022-09-01 07:23:04.592651
18	6	8	Product	\N	2022-09-01 07:26:20.636043	2022-09-01 07:26:20.636043
19	7	8	Product	\N	2022-09-01 07:26:20.644574	2022-09-01 07:26:20.644574
20	1	7	VoucherProduct	\N	2022-09-01 07:26:33.713902	2022-09-01 07:26:33.713902
21	3	7	VoucherProduct	\N	2022-09-01 07:26:33.721245	2022-09-01 07:26:33.721245
22	6	9	Product	\N	2022-09-01 07:28:39.180101	2022-09-01 07:28:39.180101
23	7	9	Product	\N	2022-09-01 07:28:39.188662	2022-09-01 07:28:39.188662
24	6	10	Product	\N	2022-09-01 07:30:09.365635	2022-09-01 07:30:09.365635
25	7	10	Product	\N	2022-09-01 07:30:09.384045	2022-09-01 07:30:09.384045
26	6	11	Product	\N	2022-09-01 08:11:30.072471	2022-09-01 08:11:30.072471
27	7	11	Product	\N	2022-09-01 08:11:30.080381	2022-09-01 08:11:30.080381
28	7	12	Product	\N	2022-09-01 08:15:33.091602	2022-09-01 08:15:33.091602
29	6	12	Product	\N	2022-09-01 08:15:33.115427	2022-09-01 08:15:33.115427
30	3	8	VoucherProduct	\N	2022-09-01 08:19:05.017577	2022-09-01 08:19:05.017577
31	6	13	Product	\N	2022-09-01 08:21:58.875598	2022-09-01 08:21:58.875598
32	9	13	Product	\N	2022-09-01 08:21:58.88543	2022-09-01 08:21:58.88543
33	8	13	Product	\N	2022-09-01 08:21:58.893905	2022-09-01 08:21:58.893905
34	3	9	VoucherProduct	\N	2022-09-01 08:22:06.953837	2022-09-01 08:22:06.953837
35	1	9	VoucherProduct	\N	2022-09-01 08:22:06.963979	2022-09-01 08:22:06.963979
36	9	14	Product	\N	2022-09-01 08:24:28.931049	2022-09-01 08:24:28.931049
37	10	14	Product	\N	2022-09-01 08:24:28.945433	2022-09-01 08:24:28.945433
38	9	15	Product	\N	2022-09-01 08:29:53.366766	2022-09-01 08:29:53.366766
39	10	15	Product	\N	2022-09-01 08:29:53.381024	2022-09-01 08:29:53.381024
40	8	15	Product	\N	2022-09-01 08:29:53.39285	2022-09-01 08:29:53.39285
41	7	10	VoucherProduct	\N	2022-09-01 08:34:22.981668	2022-09-01 08:34:22.981668
42	8	16	Product	\N	2022-09-01 08:37:44.84383	2022-09-01 08:37:44.84383
43	9	16	Product	\N	2022-09-01 08:37:44.852207	2022-09-01 08:37:44.852207
44	10	16	Product	\N	2022-09-01 08:37:44.859887	2022-09-01 08:37:44.859887
45	7	11	VoucherProduct	\N	2022-09-01 08:39:35.573535	2022-09-01 08:39:35.573535
46	6	11	VoucherProduct	\N	2022-09-01 08:39:35.582523	2022-09-01 08:39:35.582523
47	11	17	Product	\N	2022-09-01 08:42:35.54528	2022-09-01 08:42:35.54528
48	12	17	Product	\N	2022-09-01 08:42:35.555042	2022-09-01 08:42:35.555042
49	11	18	Product	\N	2022-09-01 08:48:48.368542	2022-09-01 08:48:48.368542
50	12	18	Product	\N	2022-09-01 08:48:48.378668	2022-09-01 08:48:48.378668
51	12	19	Product	\N	2022-09-01 08:54:44.498764	2022-09-01 08:54:44.498764
52	11	19	Product	\N	2022-09-01 08:54:44.506797	2022-09-01 08:54:44.506797
53	12	20	Product	\N	2022-09-01 08:57:35.876786	2022-09-01 08:57:35.876786
54	11	20	Product	\N	2022-09-01 08:57:35.92712	2022-09-01 08:57:35.92712
55	7	12	VoucherProduct	\N	2022-09-01 09:04:50.748176	2022-09-01 09:04:50.748176
56	12	21	Product	\N	2022-09-01 09:05:42.169707	2022-09-01 09:05:42.169707
57	11	21	Product	\N	2022-09-01 09:05:42.176684	2022-09-01 09:05:42.176684
58	14	22	Product	\N	2022-09-01 09:09:04.429699	2022-09-01 09:09:04.429699
59	13	22	Product	\N	2022-09-01 09:09:04.438823	2022-09-01 09:09:04.438823
60	16	23	Product	\N	2022-09-01 09:11:35.337524	2022-09-01 09:11:35.337524
61	15	23	Product	\N	2022-09-01 09:11:35.348525	2022-09-01 09:11:35.348525
62	16	24	Product	\N	2022-09-01 09:13:37.490517	2022-09-01 09:13:37.490517
63	15	24	Product	\N	2022-09-01 09:13:37.498278	2022-09-01 09:13:37.498278
64	16	25	Product	\N	2022-09-01 09:16:26.00827	2022-09-01 09:16:26.00827
65	15	25	Product	\N	2022-09-01 09:16:26.021217	2022-09-01 09:16:26.021217
66	16	26	Product	\N	2022-09-01 09:21:40.766032	2022-09-01 09:21:40.766032
67	15	26	Product	\N	2022-09-01 09:21:40.774572	2022-09-01 09:21:40.774572
68	17	27	Product	\N	2022-09-01 09:28:12.213419	2022-09-01 09:28:12.213419
69	18	27	Product	\N	2022-09-01 09:28:12.22166	2022-09-01 09:28:12.22166
70	19	27	Product	\N	2022-09-01 09:28:12.229692	2022-09-01 09:28:12.229692
71	18	28	Product	\N	2022-09-01 09:30:31.290025	2022-09-01 09:30:31.290025
72	17	28	Product	\N	2022-09-01 09:30:31.301845	2022-09-01 09:30:31.301845
73	19	28	Product	\N	2022-09-01 09:30:31.316652	2022-09-01 09:30:31.316652
74	17	29	Product	\N	2022-09-01 09:36:11.942824	2022-09-01 09:36:11.942824
75	18	29	Product	\N	2022-09-01 09:36:11.952464	2022-09-01 09:36:11.952464
76	19	29	Product	\N	2022-09-01 09:36:11.960177	2022-09-01 09:36:11.960177
77	4	1	Bundle	\N	2022-09-01 09:37:00.515031	2022-09-01 09:37:00.515031
78	5	1	Bundle	\N	2022-09-01 09:37:00.526907	2022-09-01 09:37:00.526907
82	4	2	Bundle	\N	2022-09-01 09:45:25.419269	2022-09-01 09:45:25.419269
83	5	3	Bundle	\N	2022-09-01 09:45:33.706792	2022-09-01 09:45:33.706792
84	5	4	Bundle	\N	2022-09-01 09:50:20.34001	2022-09-01 09:50:20.34001
85	1	6	Bundle	\N	2022-09-01 10:01:42.384571	2022-09-01 10:01:42.384571
86	3	6	Bundle	\N	2022-09-01 10:01:42.394816	2022-09-01 10:01:42.394816
87	6	7	Bundle	\N	2022-09-01 10:04:27.305211	2022-09-01 10:04:27.305211
88	7	7	Bundle	\N	2022-09-01 10:04:27.313981	2022-09-01 10:04:27.313981
89	1	8	Bundle	\N	2022-09-01 10:05:41.288509	2022-09-01 10:05:41.288509
90	3	8	Bundle	\N	2022-09-01 10:05:41.297787	2022-09-01 10:05:41.297787
91	3	9	Bundle	\N	2022-09-01 10:11:14.773419	2022-09-01 10:11:14.773419
92	1	9	Bundle	\N	2022-09-01 10:11:14.783116	2022-09-01 10:11:14.783116
93	1	1	Product	2022-09-06 01:28:28.828214	2022-09-05 11:15:08.93122	2022-09-06 01:28:28.828245
94	3	1	Product	2022-09-06 01:28:28.829575	2022-09-05 11:15:08.95282	2022-09-06 01:28:28.829582
95	4	6	VoucherProduct	\N	2022-09-06 01:54:49.867182	2022-09-06 01:54:49.867182
96	5	6	VoucherProduct	\N	2022-09-06 01:54:49.87541	2022-09-06 01:54:49.87541
176	17	13	VoucherProduct	\N	2022-09-08 06:52:39.343743	2022-09-08 06:52:39.343743
177	18	13	VoucherProduct	\N	2022-09-08 06:52:39.355254	2022-09-08 06:52:39.355254
178	4	10	Bundle	2022-09-08 07:01:22.607515	2022-09-08 07:00:25.856113	2022-09-08 07:01:22.607523
179	5	10	Bundle	2022-09-08 07:01:22.608705	2022-09-08 07:00:25.863917	2022-09-08 07:01:22.608711
180	1	56	Product	2022-09-08 07:13:21.85468	2022-09-08 07:12:57.29045	2022-09-08 07:13:21.854688
181	3	56	Product	2022-09-08 07:13:21.856006	2022-09-08 07:12:57.296541	2022-09-08 07:13:21.856012
182	20	56	Product	2022-09-08 07:13:21.859913	2022-09-08 07:12:57.302733	2022-09-08 07:13:21.859925
183	21	56	Product	2022-09-08 07:13:21.861371	2022-09-08 07:12:57.30949	2022-09-08 07:13:21.861378
79	18	30	Product	2022-09-06 09:10:37.423765	2022-09-01 09:40:17.369315	2022-09-06 09:10:37.423773
80	17	30	Product	2022-09-06 09:10:37.424809	2022-09-01 09:40:17.377946	2022-09-06 09:10:37.424815
81	19	30	Product	2022-09-06 09:10:37.425617	2022-09-01 09:40:17.385216	2022-09-06 09:10:37.425624
184	22	56	Product	2022-09-08 07:13:21.862592	2022-09-08 07:12:57.318623	2022-09-08 07:13:21.862599
115	17	34	Product	2022-09-07 06:26:01.199818	2022-09-07 06:25:41.511641	2022-09-07 06:26:01.199829
185	1	58	Product	2022-09-08 07:37:41.813187	2022-09-08 07:15:51.30937	2022-09-08 07:37:41.813198
8	3	4	Product	2022-09-13 02:21:08.071781	2022-09-01 07:06:46.374121	2022-09-13 02:21:08.071794
12	1	5	Product	2022-09-13 02:22:00.78348	2022-09-01 07:08:14.520841	2022-09-13 02:22:00.783489
127	1	38	Product	2022-09-08 04:02:14.257988	2022-09-08 03:57:56.283329	2022-09-08 04:02:14.257999
128	3	38	Product	2022-09-08 04:02:14.260558	2022-09-08 03:57:56.292354	2022-09-08 04:02:14.260566
129	20	38	Product	2022-09-08 04:02:14.261785	2022-09-08 03:57:56.300796	2022-09-08 04:02:14.261794
130	21	38	Product	2022-09-08 04:02:14.264713	2022-09-08 03:57:56.309275	2022-09-08 04:02:14.264724
131	22	38	Product	2022-09-08 04:02:14.267712	2022-09-08 03:57:56.318422	2022-09-08 04:02:14.267724
132	1	39	Product	2022-09-08 04:03:21.010732	2022-09-08 04:03:02.316162	2022-09-08 04:03:21.010964
133	3	39	Product	2022-09-08 04:03:21.013181	2022-09-08 04:03:02.335938	2022-09-08 04:03:21.013189
134	20	39	Product	2022-09-08 04:03:21.014503	2022-09-08 04:03:02.346616	2022-09-08 04:03:21.014509
135	21	39	Product	2022-09-08 04:03:21.015362	2022-09-08 04:03:02.356797	2022-09-08 04:03:21.015368
136	22	39	Product	2022-09-08 04:03:21.016216	2022-09-08 04:03:02.36519	2022-09-08 04:03:21.016222
190	1	59	Product	2022-09-08 07:29:54.793762	2022-09-08 07:27:31.170171	2022-09-08 07:29:54.793771
191	3	59	Product	2022-09-08 07:29:54.795169	2022-09-08 07:27:31.180366	2022-09-08 07:29:54.795229
192	20	59	Product	2022-09-08 07:29:54.796557	2022-09-08 07:27:31.190252	2022-09-08 07:29:54.796573
193	21	59	Product	2022-09-08 07:29:54.797711	2022-09-08 07:27:31.203965	2022-09-08 07:29:54.797717
194	22	59	Product	2022-09-08 07:29:54.798649	2022-09-08 07:27:31.214294	2022-09-08 07:29:54.798655
195	1	60	Product	2022-09-08 07:37:37.649636	2022-09-08 07:28:07.945936	2022-09-08 07:37:37.649645
196	3	60	Product	2022-09-08 07:37:37.650805	2022-09-08 07:28:07.955698	2022-09-08 07:37:37.650811
197	20	60	Product	2022-09-08 07:37:37.651819	2022-09-08 07:28:07.967003	2022-09-08 07:37:37.651825
198	21	60	Product	2022-09-08 07:37:37.652641	2022-09-08 07:28:07.986851	2022-09-08 07:37:37.652647
199	22	60	Product	2022-09-08 07:37:37.653469	2022-09-08 07:28:07.996253	2022-09-08 07:37:37.653478
186	3	58	Product	2022-09-08 07:37:41.814482	2022-09-08 07:15:51.319626	2022-09-08 07:37:41.81449
187	20	58	Product	2022-09-08 07:37:41.815712	2022-09-08 07:15:51.330194	2022-09-08 07:37:41.815722
188	21	58	Product	2022-09-08 07:37:41.816805	2022-09-08 07:15:51.340193	2022-09-08 07:37:41.816813
159	17	46	Product	2022-09-08 06:15:56.978892	2022-09-08 06:06:12.96117	2022-09-08 06:15:56.978903
189	22	58	Product	2022-09-08 07:37:41.817856	2022-09-08 07:15:51.350421	2022-09-08 07:37:41.817864
200	1	60	Product	\N	2022-09-08 07:48:38.819253	2022-09-08 07:48:38.819253
201	3	60	Product	\N	2022-09-08 07:48:38.827368	2022-09-08 07:48:38.827368
202	20	60	Product	\N	2022-09-08 07:48:38.834405	2022-09-08 07:48:38.834405
203	21	60	Product	\N	2022-09-08 07:48:38.840576	2022-09-08 07:48:38.840576
204	22	60	Product	\N	2022-09-08 07:48:38.846545	2022-09-08 07:48:38.846545
165	5	49	Product	2022-09-08 09:22:12.326873	2022-09-08 06:22:18.79723	2022-09-08 09:22:12.326882
225	1	68	Product	\N	2022-09-08 09:24:16.510424	2022-09-08 09:24:16.510424
226	3	68	Product	\N	2022-09-08 09:24:16.516567	2022-09-08 09:24:16.516567
227	20	68	Product	\N	2022-09-08 09:24:16.52251	2022-09-08 09:24:16.52251
228	21	68	Product	\N	2022-09-08 09:24:16.528528	2022-09-08 09:24:16.528528
229	22	68	Product	\N	2022-09-08 09:24:16.534982	2022-09-08 09:24:16.534982
220	1	67	Product	2022-09-08 09:25:04.099976	2022-09-08 09:21:56.540616	2022-09-08 09:25:04.099983
221	3	67	Product	2022-09-08 09:25:04.100918	2022-09-08 09:21:56.547061	2022-09-08 09:25:04.100926
222	20	67	Product	2022-09-08 09:25:04.101712	2022-09-08 09:21:56.553986	2022-09-08 09:25:04.101718
223	21	67	Product	2022-09-08 09:25:04.10249	2022-09-08 09:21:56.560284	2022-09-08 09:25:04.102495
224	22	67	Product	2022-09-08 09:25:04.103326	2022-09-08 09:21:56.567151	2022-09-08 09:25:04.103332
230	1	69	Product	2022-09-08 10:07:10.091504	2022-09-08 09:57:31.367525	2022-09-08 10:07:10.091514
231	3	69	Product	2022-09-08 10:07:10.092866	2022-09-08 09:57:31.374642	2022-09-08 10:07:10.092876
232	20	69	Product	2022-09-08 10:07:10.093925	2022-09-08 09:57:31.382499	2022-09-08 10:07:10.093931
233	21	69	Product	2022-09-08 10:07:10.094752	2022-09-08 09:57:31.390096	2022-09-08 10:07:10.094759
234	22	69	Product	2022-09-08 10:07:10.095825	2022-09-08 09:57:31.397295	2022-09-08 10:07:10.095833
240	21	4	Product	\N	2022-09-13 02:21:08.027747	2022-09-13 02:21:08.027747
241	21	5	Product	\N	2022-09-13 02:22:00.770186	2022-09-13 02:22:00.770186
242	22	5	Product	\N	2022-09-13 02:22:00.777633	2022-09-13 02:22:00.777633
243	11	71	Product	2022-09-13 03:07:45.366352	2022-09-13 03:07:18.624783	2022-09-13 03:07:45.366361
244	12	71	Product	2022-09-13 03:07:45.367664	2022-09-13 03:07:18.641533	2022-09-13 03:07:45.367687
245	17	72	Product	\N	2022-09-13 04:15:39.964859	2022-09-13 04:15:39.964859
246	18	72	Product	\N	2022-09-13 04:15:39.974699	2022-09-13 04:15:39.974699
247	19	72	Product	\N	2022-09-13 04:15:39.98159	2022-09-13 04:15:39.98159
248	21	73	Product	\N	2022-09-13 06:07:02.705678	2022-09-13 06:07:02.705678
249	20	73	Product	\N	2022-09-13 06:07:02.72158	2022-09-13 06:07:02.72158
235	1	70	Product	2022-09-13 06:11:27.102513	2022-09-08 10:09:31.708963	2022-09-13 06:11:27.102527
236	3	70	Product	2022-09-13 06:11:27.103971	2022-09-08 10:09:31.714674	2022-09-13 06:11:27.103981
237	20	70	Product	2022-09-13 06:11:27.105166	2022-09-08 10:09:31.720404	2022-09-13 06:11:27.105176
238	21	70	Product	2022-09-13 06:11:27.108179	2022-09-08 10:09:31.726342	2022-09-13 06:11:27.10819
239	22	70	Product	2022-09-13 06:11:27.109185	2022-09-08 10:09:31.733223	2022-09-13 06:11:27.109194
250	23	6	Product	\N	2022-09-13 06:11:51.86182	2022-09-13 06:11:51.86182
251	24	6	Product	\N	2022-09-13 06:11:51.878418	2022-09-13 06:11:51.878418
252	23	7	Product	\N	2022-09-13 06:12:04.110207	2022-09-13 06:12:04.110207
\.


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channels (id, shop_id, name, key, deleted_at, created_at, updated_at) FROM stdin;
1	1	POS	9X1tR7uauolCRapFoU3GstlnyOjJr4Zi	\N	2022-08-31 07:14:44.335813	2022-08-31 07:14:44.335813
2	1	Self-service kiosks	ayYCJGyknllVIwwUvM2QDWO4LlmNWg7I	2022-08-31 07:16:18.393189	2022-08-31 07:15:33.655537	2022-08-31 07:16:18.393198
3	1	MiniApp	dzbBTRAKV905LdmMCiBhWYg0klxbNEXO	\N	2022-08-31 07:17:09.99509	2022-08-31 07:17:09.99509
4	2	Self-service Kiosks	anEExskQdLwOO481W5EvOFKtrzViLheI	\N	2022-08-31 07:17:36.815064	2022-08-31 07:17:36.815064
5	2	 MiniApp	ezbIXnpqTg7Y18fPqelefATe4uEJocmm	\N	2022-08-31 07:18:20.313709	2022-08-31 07:18:20.313709
6	3	MiniApp	SwXa0PObQtbgRzSyqzHU1QZNrrAW1ZrZ	\N	2022-09-01 01:39:19.080874	2022-09-01 01:39:19.080874
7	3	POS	Yxn5zxnT48bvEhQuQQwa7VQszfYpSd1w	\N	2022-09-01 01:39:46.784496	2022-09-01 01:39:46.784496
8	4	 iPad	icHa4icR2tTSTIIBCSKAlT6h5M0MsKKp	\N	2022-09-01 01:40:12.894034	2022-09-01 01:40:12.894034
9	4	 Self-service Kiosks	JjYBJIA6prc2jtbzqxWEBmpHUrX8dWz9	\N	2022-09-01 01:40:46.053149	2022-09-01 01:40:46.053149
10	4	POS	S5WD9i1prWVhJVUw5ZESgYfKB4gX1Gy2	\N	2022-09-01 01:41:01.85428	2022-09-01 01:41:01.85428
11	5	 MiniApp	pHyrOyCdviMHrSrjn70BCQrIYJWQO9Hf	\N	2022-09-01 02:32:29.116224	2022-09-01 02:32:29.116224
12	5	App	Wnr0zYl8xzamfAbz7litcSCEu8GEAZBr	\N	2022-09-01 02:32:50.146197	2022-09-01 02:32:50.146197
13	6	POS	2ktFfsTG1kD3ADvHDHuBzbFu507sdbWe	\N	2022-09-01 03:54:25.036078	2022-09-01 03:54:25.036078
14	6	Self-service Kiosks	jhA1kmaYF87tI6NHqFjq3TYhmpjSQTRb	\N	2022-09-01 03:54:41.768013	2022-09-01 03:54:41.768013
15	7	POS	smRM9m64iJCRAiJJhMvOvnhC4AaO219r	\N	2022-09-01 03:58:43.484649	2022-09-01 03:58:43.484649
16	7	 MiniApp	HnEtDLrDBqnrEZ67faEv1kgEPehXuBNg	\N	2022-09-01 03:58:59.198335	2022-09-01 03:58:59.198335
17	8	POS	Yu812VnQ8v55yIi3VvHDGDC2BFetunas	\N	2022-09-01 07:00:21.329634	2022-09-01 07:00:21.329634
18	8	MiniApp	zcCBlYVi1I5I0tsLMhCxHZHnXAvSw3M7	\N	2022-09-01 07:00:35.172179	2022-09-01 07:00:35.172179
19	8	Self-service Kiosks	GP4AC5iKBu5xabbORGhdzbrUzvo9m7Ty	\N	2022-09-01 07:01:02.872204	2022-09-01 07:01:02.872204
20	1	Self-service Kiosks	1W0cYMrABKJao4E8xc5SdLLjxFvssaJM	\N	2022-09-06 08:27:27.941536	2022-09-06 08:27:27.941536
21	1	iPad	AoMCY1X0pGBLxM9Nopc55E3LEX29y8nJ	\N	2022-09-06 08:28:51.234806	2022-09-06 08:28:51.234806
22	1	App	emTUvDH7IjEwY0QBqPLSotYCPceebKkT	\N	2022-09-06 08:30:11.066205	2022-09-06 08:30:11.066205
23	2	APP	zUt6o689YU8NdCzUkSXhvzGhnd0ZzdVt	\N	2022-09-13 02:29:38.408598	2022-09-13 02:29:38.408598
24	2	POS	WHWFztovOHzItZa0kJ7bf1YDvPEQ2Lp9	\N	2022-09-13 02:29:59.703343	2022-09-13 02:29:59.703343
\.


--
-- Data for Name: custom_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_attributes (id, attributable_id, attributable_type, name, value, overwritten, deleted_at, created_at, updated_at) FROM stdin;
1	49	Product	{"en": "color", "zh-CN": "颜色"}	{"en": "blue", "zh-CN": "蓝"}	\N	\N	2022-09-08 06:22:18.820966	2022-09-08 06:22:18.820966
2	49	Product	{"en": "12", "zh-CN": "34"}	{"en": "45", "zh-CN": "561"}	2022-09-08 06:53:29.062787	\N	2022-09-08 06:22:18.828481	2022-09-08 06:53:29.06309
33	4	Bundle	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Cannot be combined with other offers", "zh-CN": "不可叠加其他优惠"}	\N	\N	2022-09-09 08:39:51.272269	2022-09-09 08:39:51.272269
4	10	Bundle	{"en": "1", "zh-CN": "2"}	{"en": "3", "zh-CN": "41"}	2022-09-08 07:00:44.984044	\N	2022-09-08 07:00:25.889838	2022-09-08 07:00:44.984402
3	\N	\N	{"en": "11", "zh-CN": "2"}	{"en": "3", "zh-CN": "4"}	2022-09-08 06:53:42.490517	\N	2022-09-08 06:52:39.324987	2022-09-08 06:53:42.490861
8	67	Product	{"en": "color1", "zh-CN": "颜色1"}	{"en": "blue", "zh-CN": "蓝"}	\N	\N	2022-09-08 09:21:56.574426	2022-09-08 09:21:56.574426
9	67	Product	{"en": "12", "zh-CN": "34"}	{"en": "45", "zh-CN": "561"}	\N	\N	2022-09-08 09:21:56.580444	2022-09-08 09:21:56.580444
10	68	Product	{"en": "brown", "zh-CN": "棕色"}	{"en": "small", "zh-CN": "小号"}	\N	\N	2022-09-08 09:24:16.542783	2022-09-08 09:24:16.542783
11	68	Product	{"en": "gery", "zh-CN": "灰色"}	{"en": "large", "zh-CN": "大号"}	\N	\N	2022-09-08 09:24:16.549498	2022-09-08 09:24:16.549498
12	69	Product	{"en": "brown", "zh-CN": "棕色"}	{"en": "small", "zh-CN": "小号"}	\N	\N	2022-09-08 09:57:31.406339	2022-09-08 09:57:31.406339
13	69	Product	{"en": "gery", "zh-CN": "灰色"}	{"en": "large", "zh-CN": "大号"}	\N	\N	2022-09-08 09:57:31.415356	2022-09-08 09:57:31.415356
14	70	Product	{"en": "gery", "zh-CN": "灰色"}	{"en": "large", "zh-CN": "大号"}	\N	\N	2022-09-08 10:09:31.741352	2022-09-08 10:09:31.741352
15	70	Product	{"en": "brown", "zh-CN": "棕色"}	{"en": "small", "zh-CN": "小号1"}	2022-09-09 01:53:31.174686	\N	2022-09-08 10:09:31.748853	2022-09-09 01:53:31.174994
16	2	Product	{"en": "Beef Hamburger", "zh-CN": "牛肉汉堡"}	{"en": "beef", "zh-CN": "牛肉"}	\N	\N	2022-09-09 03:35:42.462824	2022-09-09 03:35:42.462824
17	3	Product	{"en": "medium", "zh-CN": "中号"}	{"en": "yellow", "zh-CN": "黄色"}	\N	\N	2022-09-09 03:37:07.622373	2022-09-09 03:37:07.622373
19	5	Product	{"en": "same size", "zh-CN": "相同大小"}	{"en": "grey", "zh-CN": "灰色"}	2022-09-09 06:20:06.46976	\N	2022-09-09 03:43:17.687602	2022-09-09 06:20:06.470291
18	4	Product	{"en": "same size", "zh-CN": "相同大小"}	{"en": "orange", "zh-CN": "橙色"}	2022-09-09 06:48:54.059483	\N	2022-09-09 03:38:42.997332	2022-09-09 06:48:54.059971
20	2	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Valid for KFC members only", "zh-CN": "仅限肯德基会员有效"}	2022-09-09 08:06:58.390631	\N	2022-09-09 03:58:55.322392	2022-09-09 08:06:58.390985
21	4	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Only supports multi-person packages", "zh-CN": "仅支持多人套餐使用"}	\N	\N	2022-09-09 08:12:21.979967	2022-09-09 08:12:21.979967
22	5	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Only supports use on holidays", "zh-CN": "仅支持节假日当天使用"}	\N	\N	2022-09-09 08:13:47.560255	2022-09-09 08:13:47.560255
23	6	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This voucher cannot be used in conjunction with other vouchers", "zh-CN": "本优惠券不同其他优惠券一同使用"}	\N	\N	2022-09-09 08:15:12.441021	2022-09-09 08:15:12.441021
24	7	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This voucher cannot be used in conjunction with other vouchers", "zh-CN": "本优惠券不同其他优惠券一同使用"}	\N	\N	2022-09-09 08:18:43.523909	2022-09-09 08:18:43.523909
25	8	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This voucher can only be used on holidays", "zh-CN": "本优惠券仅限节假日当天使用"}	\N	\N	2022-09-09 08:20:15.578464	2022-09-09 08:20:15.578464
26	9	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This voucher can be used in combination with other vouchers", "zh-CN": "本优惠券可以同其他优惠券叠加使用"}	\N	\N	2022-09-09 08:22:11.522966	2022-09-09 08:22:11.522966
27	10	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This voucher can be used in combination with other vouchers", "zh-CN": "本优惠券可以同其他优惠券叠加使用"}	\N	\N	2022-09-09 08:23:36.873533	2022-09-09 08:23:36.873533
28	11	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Not available during holidays", "zh-CN": "节假日不可用"}	\N	\N	2022-09-09 08:25:13.418781	2022-09-09 08:25:13.418781
29	12	VoucherProduct	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Not available during holidays (excluding weekends)", "zh-CN": "不可在节假日期间使用（不含周末）"}	\N	\N	2022-09-09 08:31:14.736724	2022-09-09 08:31:14.736724
30	1	Bundle	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This bundle is only available during Valentine's Day", "zh-CN": "本套餐仅限情人节时期使用"}	\N	\N	2022-09-09 08:33:38.573141	2022-09-09 08:33:38.573141
31	2	Bundle	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "No other discounts available for this bundle", "zh-CN": "本套餐不能享受其他优惠"}	\N	\N	2022-09-09 08:35:18.017881	2022-09-09 08:35:18.017881
32	3	Bundle	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "This bundle can only be used on Father's Day", "zh-CN": "本套餐仅限父亲节当天使用"}	\N	\N	2022-09-09 08:37:03.617421	2022-09-09 08:37:03.617421
34	72	Product	{"en": "Purchase Notes", "zh-CN": "购买须知"}	{"en": "Limit two purchases per customer", "zh-CN": "每名顾客限购买两个"}	\N	\N	2022-09-13 04:15:39.989668	2022-09-13 04:15:39.989668
35	72	Product	{"en": "average", "zh-CN": "均码"}	{"en": "green and white", "zh-CN": "绿白色"}	\N	\N	2022-09-13 04:15:39.997753	2022-09-13 04:15:39.997753
36	72	Product	{"en": "average", "zh-CN": "均码"}	{"en": "blue and white", "zh-CN": "蓝白相间"}	\N	\N	2022-09-13 04:15:40.004404	2022-09-13 04:15:40.004404
37	73	Product	{"en": "average", "zh-CN": "均码"}	{"en": " black and white", "zh-CN": "黑白相间"}	\N	\N	2022-09-13 06:07:02.747866	2022-09-13 06:07:02.747866
\.


--
-- Data for Name: delivery_fee_tiers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery_fee_tiers (id, shop_id, tier_type, start_value, end_value, fee, deleted_at, created_at, updated_at) FROM stdin;
1	1	10	20.00	30.00	10.00	\N	2022-08-31 04:20:58.676697	2022-08-31 04:20:58.676697
3	3	1	10.00	20.00	5.00	\N	2022-08-31 14:11:07.697524	2022-08-31 14:11:07.697524
4	5	1	1.00	2.00	3.00	\N	2022-09-01 02:31:50.785276	2022-09-01 02:31:50.785276
5	5	1	2.00	3.00	4.00	\N	2022-09-01 02:31:50.794548	2022-09-01 02:31:50.794548
6	5	1	3.00	4.00	5.00	\N	2022-09-01 02:31:50.802324	2022-09-01 02:31:50.802324
7	8	10	10.00	20.00	2.00	\N	2022-09-01 06:59:18.271413	2022-09-01 06:59:18.271413
8	8	10	20.00	30.00	3.00	\N	2022-09-01 06:59:18.278751	2022-09-01 06:59:18.278751
9	8	10	30.00	40.00	4.00	\N	2022-09-01 06:59:18.283871	2022-09-01 06:59:18.283871
2	2	1	0.00	30.00	2.00	\N	2022-08-31 07:02:53.76882	2022-09-09 01:46:46.654648
\.


--
-- Data for Name: fulfillment_instances; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fulfillment_instances (id, fulfillment_type, fulfillment_date, fulfillment_time_slot_id, count, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: fulfillment_time_slots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fulfillment_time_slots (id, fulfillment_type, shop_id, start_time, end_time, cutoff, limited_quota, quota, warning_quota, days_of_week, surcharge, deleted_at, created_at, updated_at) FROM stdin;
1	1	1	09:00:00	13:00:00	10	f	2	1	{1,2,3,4,5}		\N	2022-08-31 04:20:58.640407	2022-09-09 01:40:43.60543
2	1	1	07:30:00	09:00:00	20	f	\N	\N	{6,0}	1	\N	2022-08-31 04:20:58.649974	2022-09-09 01:40:43.612608
3	10	1	05:00:00	09:00:00	10	f	2	0	{1,2,3,4,5,6,0}	\N	\N	2022-08-31 04:20:58.657649	2022-09-09 01:40:43.619625
5	1	3	10:30:00	15:00:00	10	f	\N	\N	{1,2,3,4,5}		\N	2022-08-31 14:11:07.672989	2022-09-09 01:47:35.806982
6	1	3	10:00:00	15:30:00	10	f	\N	\N	{6,0}	2	\N	2022-08-31 14:11:07.684626	2022-09-09 01:47:35.815896
8	10	8	00:58:00	04:58:00	10	f	200	10	{0,1,3,4,2,5,6}	\N	\N	2022-09-01 06:59:18.264392	2022-09-09 01:49:48.477078
9	1	2	01:45:00	02:45:00	20	f	\N	\N	{0,1,2,3,4,5,6}		\N	2022-09-09 01:46:46.62236	2022-09-09 01:55:39.624027
10	1	2	03:46:00	04:46:00	20	f	\N	\N	{6,5,4,3,2,1,0}		\N	2022-09-09 01:46:46.631651	2022-09-09 01:55:39.63026
4	10	2	03:00:00	08:00:00	10	f	\N	\N	{1,2,3,4,5}	\N	\N	2022-08-31 07:04:01.112534	2022-09-09 02:23:25.011201
7	1	5	01:30:00	08:00:00	10	f	\N	\N	{1,2,3,4,5,6,0}	5	\N	2022-09-01 02:31:50.77714	2022-09-09 03:07:49.025641
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, image, target_id, target_type, tag, deleted_at, created_at, updated_at) FROM stdin;
10	member_voucher.jpeg	\N	\N	\N	\N	2022-08-31 09:36:48.507899	2022-09-01 07:16:51.363991
17	必胜.png	5	Shop	icon	\N	2022-09-01 02:26:11.199962	2022-09-01 02:26:11.199962
36	kfc_Member_Voucher.jpeg	2	VoucherProduct	\N	\N	2022-09-01 07:16:57.184817	2022-09-01 07:16:57.184817
2	kangaroo_doll_brown_.jpeg	1	Product	\N	\N	2022-08-31 05:52:02.827102	2022-08-31 05:52:02.827102
3	kangaroo_doll_brown_.jpeg	1	ProductSku	\N	\N	2022-08-31 05:56:47.113479	2022-08-31 05:56:47.113479
111	kfc_family_bundle.jpeg	4	Bundle	\N	\N	2022-09-01 09:49:04.365379	2022-09-01 09:49:04.365379
18	夜间礼.png	6	Shop	icon	\N	2022-09-01 03:44:58.987214	2022-09-01 03:44:58.987214
37	__Fries-pro.png	7	Product	\N	\N	2022-09-01 07:19:09.413392	2022-09-01 07:19:09.413392
39	__Fries小.png	9	ProductSku	\N	\N	2022-09-01 07:22:18.062954	2022-09-01 07:22:18.062954
38	fries.png	10	ProductSku	\N	\N	2022-09-01 07:20:41.769236	2022-09-01 07:20:41.769236
19	uu.png	7	Shop	icon	\N	2022-09-01 03:57:18.876811	2022-09-01 03:57:18.876811
41	印度黄姜饭.png	8	Product	\N	\N	2022-09-01 07:25:41.662953	2022-09-01 07:25:41.662953
42	印度黄姜饭.png	11	ProductSku	\N	\N	2022-09-01 07:26:08.531856	2022-09-01 07:26:08.531856
40	zoo_family_voucher.jpeg	7	VoucherProduct	\N	\N	2022-09-01 07:25:21.108299	2022-09-01 07:25:21.108299
184	giraffe_pillow.png	58	ProductSku	\N	\N	2022-09-09 03:37:03.470542	2022-09-09 03:37:03.470542
43	鸡饭.png	9	Product	\N	\N	2022-09-01 07:28:25.296792	2022-09-01 07:28:25.296792
44	鸡饭.png	12	ProductSku	\N	\N	2022-09-01 07:28:38.394481	2022-09-01 07:28:38.394481
45	烤鸡.png	10	Product	\N	\N	2022-09-01 07:29:55.719642	2022-09-01 07:29:55.719642
46	烤鸡.png	13	ProductSku	\N	\N	2022-09-01 07:30:07.079076	2022-09-01 07:30:07.079076
47	西柚汁.png	\N	\N	\N	\N	2022-09-01 07:31:14.946447	2022-09-01 07:31:14.946447
48	西柚汁.png	\N	\N	\N	\N	2022-09-01 07:31:25.788654	2022-09-01 07:31:25.788654
5	beef_hamburger.png	2	Product	\N	\N	2022-08-31 07:31:21.370746	2022-08-31 07:31:21.370746
6	beef_hamburger.png	2	ProductSku	\N	\N	2022-08-31 07:33:40.439228	2022-08-31 07:33:40.439228
7	bh_小份_.png	3	ProductSku	\N	\N	2022-08-31 07:34:27.321122	2022-08-31 07:34:27.321122
8	member_voucher.jpeg	\N	\N	\N	\N	2022-08-31 09:26:58.031129	2022-08-31 09:26:58.031129
9	visit_voucher.jpeg	1	VoucherProduct	\N	\N	2022-08-31 09:32:25.690012	2022-08-31 09:32:25.690012
49	西柚汁.png	11	Product	\N	\N	2022-09-01 07:59:16.583672	2022-09-01 07:59:16.583672
11	member_voucher2.jpeg	3	VoucherProduct	\N	\N	2022-08-31 09:47:06.695054	2022-08-31 09:47:06.695054
50	西柚汁.png	14	ProductSku	\N	\N	2022-09-01 08:01:22.7277	2022-09-01 08:01:22.7277
13	zoo_family_voucher.jpeg	\N	\N	\N	\N	2022-08-31 10:05:38.245846	2022-08-31 10:05:38.245846
14	阿明餐厅.jpeg	\N	\N	\N	\N	2022-08-31 11:55:22.611575	2022-08-31 11:55:22.611575
51	葡萄汁.png	12	Product	\N	\N	2022-09-01 08:13:55.981631	2022-09-01 08:13:55.981631
52	葡萄汁.png	15	ProductSku	\N	\N	2022-09-01 08:14:48.356972	2022-09-01 08:14:48.356972
53	火烈鸟体恤衫.npg.jpeg	\N	\N	\N	\N	2022-09-01 08:17:20.498337	2022-09-01 08:17:20.498337
54	zoo_holiday_voucher.jpeg	8	VoucherProduct	\N	\N	2022-09-01 08:17:34.782501	2022-09-01 08:17:34.782501
12	家庭.jpeg	\N	\N	\N	\N	2022-08-31 10:01:10.058866	2022-09-01 06:53:33.812036
55	火烈鸟体恤衫.npg.jpeg	13	Product	\N	\N	2022-09-01 08:18:57.786429	2022-09-01 08:18:57.786429
57	火烈鸟体恤衫.npg.jpeg	16	ProductSku	\N	\N	2022-09-01 08:21:45.91154	2022-09-01 08:21:45.91154
58	火烈鸟体恤衫.npg.jpeg	17	ProductSku	\N	\N	2022-09-01 08:21:56.271694	2022-09-01 08:21:56.271694
23	giraffe_pillow.png	3	Product	\N	\N	2022-09-01 07:03:36.095831	2022-09-01 07:03:36.095831
24	giraffe_pillow.png	4	ProductSku	\N	\N	2022-09-01 07:05:20.515659	2022-09-01 07:05:20.515659
56	zoo_cash_voucher.jpeg	9	VoucherProduct	\N	\N	2022-09-01 08:21:09.092849	2022-09-01 08:21:09.092849
25	Zebra_badge.png	4	Product	\N	\N	2022-09-01 07:06:18.94992	2022-09-01 07:06:18.94992
26	Zebra_badge.png	5	ProductSku	\N	\N	2022-09-01 07:06:43.539863	2022-09-01 07:06:43.539863
59	火烈鸟杯子.png	14	Product	\N	\N	2022-09-01 08:24:00.504617	2022-09-01 08:24:00.504617
60	火烈鸟杯子.png	18	ProductSku	\N	\N	2022-09-01 08:24:28.344383	2022-09-01 08:24:28.344383
27	Elephant_Keychain.png	5	Product	\N	\N	2022-09-01 07:07:53.509726	2022-09-01 07:07:53.509726
28	Elephant_Keychain.png	6	ProductSku	\N	\N	2022-09-01 07:08:10.525214	2022-09-01 07:08:10.525214
29	现金券.jpeg	\N	\N	\N	\N	2022-09-01 07:10:26.763902	2022-09-01 07:10:26.763902
30	kfc_Cash_Voucher.jpeg	6	VoucherProduct	\N	\N	2022-09-01 07:11:45.394331	2022-09-01 07:11:45.394331
21	Holiday_Voucher.jpeg	\N	\N	\N	\N	2022-09-01 06:55:28.425111	2022-09-01 07:12:46.823337
31	kfc_holiday_Voucher.jpeg	5	VoucherProduct	\N	\N	2022-09-01 07:12:52.3354	2022-09-01 07:12:52.3354
20	Family_Voucher1.jpeg	\N	\N	\N	\N	2022-09-01 06:53:41.526627	2022-09-01 07:14:08.05597
33	kfc_family_voucher.jpeg	4	VoucherProduct	\N	\N	2022-09-01 07:14:15.711679	2022-09-01 07:14:15.711679
61	qie.png	15	Product	\N	\N	2022-09-01 08:27:32.943702	2022-09-01 08:27:32.943702
62	qie.png	19	ProductSku	\N	\N	2022-09-01 08:29:28.789114	2022-09-01 08:29:28.789114
32	cola.png	6	Product	\N	\N	2022-09-01 07:13:50.958955	2022-09-01 07:13:50.958955
34	cola.png	7	ProductSku	\N	\N	2022-09-01 07:14:58.055586	2022-09-01 07:14:58.055586
35	cola.png	8	ProductSku	\N	\N	2022-09-01 07:15:15.166734	2022-09-01 07:15:15.166734
63	qie.png	20	ProductSku	\N	\N	2022-09-01 08:29:39.59579	2022-09-01 08:29:39.59579
64	qie.png	21	ProductSku	\N	\N	2022-09-01 08:29:48.411644	2022-09-01 08:29:48.411644
66	family_voucher.jpeg	10	VoucherProduct	\N	\N	2022-09-01 08:32:36.571403	2022-09-01 08:32:36.571403
65	鹦鹉-pro.png	16	Product	\N	\N	2022-09-01 08:32:34.298244	2022-09-01 08:32:34.298244
67	yingwu.blue.png	22	ProductSku	\N	\N	2022-09-01 08:37:07.015816	2022-09-01 08:37:07.015816
68	yingwu_red.png	23	ProductSku	\N	\N	2022-09-01 08:37:27.035122	2022-09-01 08:37:27.035122
69	yingwuwhite.png	24	ProductSku	\N	\N	2022-09-01 08:37:42.451385	2022-09-01 08:37:42.451385
70	res_cash_voucer.jpeg	11	VoucherProduct	\N	\N	2022-09-01 08:38:49.249488	2022-09-01 08:38:49.249488
1	SZG_E-SHOP.jpeg	1	Shop	icon	\N	2022-08-31 03:48:49.923086	2022-08-31 03:48:49.923086
71	意大利面.png	17	Product	\N	\N	2022-09-01 08:41:09.0389	2022-09-01 08:41:09.0389
72	番茄意面.png	25	ProductSku	\N	\N	2022-09-01 08:42:27.702786	2022-09-01 08:42:27.702786
4	KFC.png	2	Shop	icon	\N	2022-08-31 06:55:39.976027	2022-08-31 06:55:39.976027
73	香草.png	18	Product	\N	\N	2022-09-01 08:44:26.795758	2022-09-01 08:44:26.795758
74	香草.png	26	ProductSku	\N	\N	2022-09-01 08:46:11.540303	2022-09-01 08:46:11.540303
15	阿明餐厅.jpeg	3	Shop	icon	\N	2022-08-31 14:03:58.034598	2022-08-31 14:03:58.034598
75	榴莲.png	19	Product	\N	\N	2022-09-01 08:51:57.528426	2022-09-01 08:51:57.528426
76	榴莲.png	27	ProductSku	\N	\N	2022-09-01 08:54:30.259375	2022-09-01 08:54:30.259375
77	榴莲.png	28	ProductSku	\N	\N	2022-09-01 08:54:41.682804	2022-09-01 08:54:41.682804
16	yumaowu.png	4	Shop	icon	\N	2022-09-01 01:33:54.195377	2022-09-01 01:33:54.195377
78	海鲜.png	20	Product	\N	\N	2022-09-01 08:55:49.028982	2022-09-01 08:55:49.028982
79	海鲜.png	29	ProductSku	\N	\N	2022-09-01 08:57:24.097486	2022-09-01 08:57:24.097486
80	海鲜.png	30	ProductSku	\N	\N	2022-09-01 08:57:33.255228	2022-09-01 08:57:33.255228
83	Food_voucher.jpeg	12	VoucherProduct	\N	\N	2022-09-01 09:04:43.525762	2022-09-01 09:04:43.525762
81	黑椒牛排.png	21	Product	\N	\N	2022-09-01 08:58:39.401515	2022-09-01 08:58:39.401515
82	黑椒牛排.png	31	ProductSku	\N	\N	2022-09-01 08:59:13.141647	2022-09-01 08:59:13.141647
84	狮子.png	22	Product	\N	\N	2022-09-01 09:07:01.040085	2022-09-01 09:07:01.040085
85	狮子.png	32	ProductSku	\N	\N	2022-09-01 09:08:39.225231	2022-09-01 09:08:39.225231
86	狮子.png	33	ProductSku	\N	\N	2022-09-01 09:08:52.871147	2022-09-01 09:08:52.871147
87	狮子.png	34	ProductSku	\N	\N	2022-09-01 09:09:01.13959	2022-09-01 09:09:01.13959
88	手抓饭.png	23	Product	\N	\N	2022-09-01 09:10:54.883415	2022-09-01 09:10:54.883415
89	手抓饭.png	35	ProductSku	\N	\N	2022-09-01 09:11:32.104527	2022-09-01 09:11:32.104527
90	飞饼.png	24	Product	\N	\N	2022-09-01 09:12:40.657386	2022-09-01 09:12:40.657386
91	飞饼.png	36	ProductSku	\N	\N	2022-09-01 09:13:36.386173	2022-09-01 09:13:36.386173
92	咖喱鸡饭.png	25	Product	\N	\N	2022-09-01 09:14:38.531661	2022-09-01 09:14:38.531661
93	咖喱鸡饭.png	37	ProductSku	\N	\N	2022-09-01 09:16:04.770064	2022-09-01 09:16:04.770064
94	咖喱鸡饭.png	38	ProductSku	\N	\N	2022-09-01 09:16:19.463735	2022-09-01 09:16:19.463735
108	kfc_father_s_day_bundle.jpeg	3	Bundle	\N	\N	2022-09-01 09:39:47.629379	2022-09-01 09:39:47.629379
113	熊猫.jpeg	5	Bundle	\N	\N	2022-09-01 09:56:05.323797	2022-09-01 09:56:05.323797
95	红豆冰.png	26	Product	\N	\N	2022-09-01 09:17:25.984874	2022-09-01 09:17:25.984874
96	红豆冰.png	39	ProductSku	\N	\N	2022-09-01 09:18:05.645346	2022-09-01 09:18:05.645346
114	zoo_weekend_bundle.jpeg	6	Bundle	\N	\N	2022-09-01 10:00:03.203734	2022-09-01 10:00:03.203734
112	单人套餐.png	7	Bundle	\N	\N	2022-09-01 09:51:13.283487	2022-09-01 09:51:13.283487
97	panda-pro.png	27	Product	\N	\N	2022-09-01 09:23:36.99449	2022-09-01 09:23:36.99449
98	panda_s.png	40	ProductSku	\N	\N	2022-09-01 09:27:54.69263	2022-09-01 09:27:54.69263
99	pandal.png	41	ProductSku	\N	\N	2022-09-01 09:28:07.041374	2022-09-01 09:28:07.041374
22	img.jpeg	8	Shop	icon	\N	2022-09-01 06:56:02.811783	2022-09-01 06:56:02.811783
115	zoo_summer_bundle.png	8	Bundle	\N	\N	2022-09-01 10:05:29.413082	2022-09-01 10:05:29.413082
100	panda_hat_.png	28	Product	\N	\N	2022-09-01 09:29:52.758103	2022-09-01 09:29:52.758103
101	panda_hat_.png	42	ProductSku	\N	\N	2022-09-01 09:30:11.874684	2022-09-01 09:30:11.874684
175	_kangaroo_doll_grey_.png	\N	\N	\N	\N	2022-09-08 09:24:13.376667	2022-09-09 03:43:40.239423
116	zoo_festive.jpeg	9	Bundle	\N	\N	2022-09-01 10:09:34.592589	2022-09-01 10:09:34.592589
117	0c608191349640c6b55c30c78e420a60.jpeg	\N	\N	\N	\N	2022-09-05 02:26:31.147965	2022-09-05 02:26:31.147965
118	016e54f1598ed890513f30cba98418bf.jpeg	\N	\N	\N	\N	2022-09-05 02:26:40.531919	2022-09-05 02:26:40.531919
102	shuita-pro.png	29	Product	\N	\N	2022-09-01 09:33:42.767761	2022-09-01 09:33:42.767761
104	水獭s.png	43	ProductSku	\N	\N	2022-09-01 09:35:59.993804	2022-09-01 09:35:59.993804
185	_kangaroo_doll_grey_.png	63	ProductSku	\N	\N	2022-09-09 03:43:54.476688	2022-09-09 03:43:54.476688
103	Kfc-valentine.jpeg	1	Bundle	\N	\N	2022-09-01 09:35:07.042683	2022-09-01 09:35:07.042683
119	水獭green.png	\N	\N	\N	\N	2022-09-06 01:57:41.23158	2022-09-06 01:57:41.23158
120	水獭杯blue.png	\N	\N	\N	\N	2022-09-06 01:57:51.655797	2022-09-06 01:57:51.655797
107	kfc_dou_shots_bundle.jpeg	2	Bundle	\N	\N	2022-09-01 09:38:06.233096	2022-09-01 09:38:06.233096
186	Zebra_badge.png	\N	\N	\N	\N	2022-09-09 06:22:48.068685	2022-09-09 06:22:48.068685
106	水獭杯子product.png	30	Product	\N	\N	2022-09-01 09:37:08.779446	2022-09-01 09:37:08.779446
109	shuatabeigreen.png	45	ProductSku	\N	\N	2022-09-01 09:40:00.065696	2022-09-01 09:40:00.065696
110	水獭杯blue.png	46	ProductSku	\N	\N	2022-09-01 09:40:15.993371	2022-09-01 09:40:15.993371
121	Kangaroo_Doll-_pro.png	\N	\N	\N	\N	2022-09-06 08:33:04.062549	2022-09-06 08:33:04.062549
122	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-06 09:00:57.938807	2022-09-06 09:00:57.938807
123	_kangaroo_doll_grey_.png	\N	\N	\N	\N	2022-09-06 09:01:15.633028	2022-09-06 09:01:15.633028
124	ball.jpeg	\N	\N	\N	\N	2022-09-06 09:11:17.208822	2022-09-06 09:11:17.208822
125	city.jpeg	\N	\N	\N	\N	2022-09-06 09:11:25.187765	2022-09-06 09:11:25.187765
126	水獭green.png	\N	\N	\N	\N	2022-09-06 09:21:31.821621	2022-09-06 09:21:31.821621
127	705d8df8c791fbc856e9bab1f4d151b9.jpeg	47	ProductSku	\N	\N	2022-09-07 06:25:39.555879	2022-09-07 06:25:39.555879
128	Kangaroo_Doll-_pro.png	\N	\N	\N	\N	2022-09-08 02:55:06.343162	2022-09-08 02:55:06.343162
129	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-08 02:56:55.227472	2022-09-08 02:56:55.227472
130	_kangaroo_doll_grey_.png	\N	\N	\N	\N	2022-09-08 02:57:04.934377	2022-09-08 02:57:04.934377
131	de8a7004-0a89-4b50-88d9-89b4c5ec0df1.png	\N	\N	\N	\N	2022-09-08 03:00:27.581676	2022-09-08 03:00:27.581676
132	panda_hat_.png	48	ProductSku	\N	\N	2022-09-08 03:57:45.637567	2022-09-08 03:57:45.637567
133	panda_hat_.png	49	ProductSku	\N	\N	2022-09-08 04:02:54.013779	2022-09-08 04:02:54.013779
134	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-08 04:08:39.621772	2022-09-08 04:08:39.621772
135	_kangaroo_doll_grey_.png	\N	\N	\N	\N	2022-09-08 04:08:42.889467	2022-09-08 04:08:42.889467
136	_kangaroo_doll_grey_.png	\N	\N	\N	\N	2022-09-08 04:08:52.663942	2022-09-08 04:08:52.663942
137	__Fries-pro.png	\N	\N	\N	\N	2022-09-08 04:16:19.385626	2022-09-08 04:16:19.385626
138	a3cf58b4e172040.jpeg	50	ProductSku	\N	\N	2022-09-08 06:02:18.057166	2022-09-08 06:02:18.057166
139	a3cf58b4e172040.jpeg	\N	\N	\N	\N	2022-09-08 06:06:56.802634	2022-09-08 06:06:56.802634
140	_kangaroo_doll_grey_.png	\N	\N	\N	\N	2022-09-08 06:21:21.541527	2022-09-08 06:21:21.541527
141	水獭green.png	\N	\N	\N	\N	2022-09-08 06:21:52.834859	2022-09-08 06:21:52.834859
142	a3cf58b4e172040__1_.jpeg	51	ProductSku	\N	\N	2022-09-08 06:22:07.537948	2022-09-08 06:22:07.537948
143	水獭green.png	\N	\N	\N	\N	2022-09-08 06:25:50.866635	2022-09-08 06:25:50.866635
144	a3cf58b4e172040.jpeg	\N	\N	\N	\N	2022-09-08 06:29:29.538446	2022-09-08 06:29:29.538446
145	__Fries-pro.png	52	ProductSku	\N	\N	2022-09-08 06:34:41.390877	2022-09-08 06:34:41.390877
146	__Fries-pro.png	53	ProductSku	\N	\N	2022-09-08 06:36:38.330675	2022-09-08 06:36:38.330675
147	a3cf58b4e172040__1_.jpeg	13	VoucherProduct	\N	\N	2022-09-08 06:52:23.969389	2022-09-08 06:52:23.969389
148	a3cf58b4e172040__1_.jpeg	\N	\N	\N	\N	2022-09-08 06:54:15.151715	2022-09-08 06:54:15.151715
149	__Fries小.png	\N	\N	\N	\N	2022-09-08 06:58:42.232681	2022-09-08 06:58:42.232681
150	a3cf58b4e172040__1_.jpeg	10	Bundle	\N	\N	2022-09-08 06:59:55.046902	2022-09-08 06:59:55.046902
151	__Fries-pro.png	54	ProductSku	\N	\N	2022-09-08 07:12:53.690878	2022-09-08 07:12:53.690878
152	__Fries-pro.png	55	ProductSku	\N	\N	2022-09-08 07:13:54.555161	2022-09-08 07:13:54.555161
153	__Fries-pro.png	56	ProductSku	\N	\N	2022-09-08 07:27:30.481422	2022-09-08 07:27:30.481422
154	city.jpeg	57	ProductSku	\N	\N	2022-09-08 07:48:36.955559	2022-09-08 07:48:36.955559
155	Kangaroo_Doll-_pro.png	\N	\N	\N	\N	2022-09-08 08:00:51.88077	2022-09-08 08:00:51.88077
156	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-08 08:01:41.098214	2022-09-08 08:01:41.098214
157	a3cf58b4e172040.jpeg	\N	\N	\N	\N	2022-09-08 08:36:08.304291	2022-09-08 08:36:08.304291
158	a3cf58b4e172040__1_.jpeg	\N	\N	\N	\N	2022-09-08 08:36:59.885283	2022-09-08 08:36:59.885283
159	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-08 08:39:47.819185	2022-09-08 08:39:47.819185
160	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-08 08:40:40.222897	2022-09-08 08:40:40.222897
161	a3cf58b4e172040.jpeg	\N	\N	\N	\N	2022-09-08 08:41:58.752117	2022-09-08 08:41:58.752117
162	a3cf58b4e172040.jpeg	\N	\N	\N	\N	2022-09-08 08:42:37.756445	2022-09-08 08:42:37.756445
163	kangaroo_doll_brown_.jpeg	\N	\N	\N	\N	2022-09-08 08:42:37.833084	2022-09-08 08:42:37.833084
164	test.jpg	\N	\N	\N	\N	2022-09-08 08:48:45.358906	2022-09-08 08:48:45.358906
165	test.jpg	\N	\N	\N	\N	2022-09-08 08:50:33.141919	2022-09-08 08:50:33.141919
105	水獭l.png	\N	\N	\N	\N	2022-09-01 09:36:09.290932	2022-09-08 08:51:21.758491
166	test.jpg	\N	\N	\N	\N	2022-09-08 08:51:57.777108	2022-09-08 08:51:57.777108
167	test.jpg	\N	\N	\N	\N	2022-09-08 08:52:30.637896	2022-09-08 08:52:30.637896
168	test.jpg	\N	\N	\N	\N	2022-09-08 09:00:08.157583	2022-09-08 09:00:08.157583
169	test.jpg	\N	\N	\N	\N	2022-09-08 09:00:43.564779	2022-09-08 09:00:43.564779
170	test.jpg	\N	\N	\N	\N	2022-09-08 09:19:52.681696	2022-09-08 09:19:52.681696
171	a3cf58b4e172040__1_.jpeg	60	ProductSku	\N	\N	2022-09-08 09:21:01.134594	2022-09-08 09:21:01.134594
173	de8a7004-0a89-4b50-88d9-89b4c5ec0df1.png	61	ProductSku	\N	\N	2022-09-08 09:21:54.750529	2022-09-08 09:21:54.750529
172	Kangaroo_Doll-_pro.png	68	Product	\N	\N	2022-09-08 09:21:27.92319	2022-09-08 09:21:27.92319
174	kangaroo_doll_brown_.jpeg	62	ProductSku	\N	\N	2022-09-08 09:24:02.405429	2022-09-08 09:24:02.405429
176	Kangaroo_Doll-_pro.png	69	Product	\N	\N	2022-09-08 09:34:14.754841	2022-09-08 09:34:14.754841
177	kangaroo_doll_brown_.jpeg	64	ProductSku	\N	\N	2022-09-08 09:57:12.457626	2022-09-08 09:57:12.457626
178	_kangaroo_doll_grey_.png	65	ProductSku	\N	\N	2022-09-08 09:57:22.635151	2022-09-08 09:57:22.635151
179	a3cf58b4e172040.jpeg	65	ProductSku	\N	\N	2022-09-08 10:01:02.708351	2022-09-08 10:01:02.708351
180	a3cf58b4e172040.jpeg	67	ProductSku	\N	\N	2022-09-08 10:06:41.487336	2022-09-08 10:06:41.487336
181	a3cf58b4e172040.jpeg	68	ProductSku	\N	\N	2022-09-08 10:09:19.892062	2022-09-08 10:09:19.892062
182	a3cf58b4e172040.jpeg	69	ProductSku	\N	\N	2022-09-08 10:09:25.697219	2022-09-08 10:09:25.697219
183	city.jpeg	71	ProductSku	\N	\N	2022-09-09 02:24:43.986901	2022-09-09 02:24:43.986901
187	d1a20cf431adcbef1efc4b47a7af2edda2cc9fa2.jpg	71	ProductSku	\N	\N	2022-09-09 06:39:19.983826	2022-09-09 06:39:19.983826
188	武.jpg	71	ProductSku	\N	\N	2022-09-09 06:47:31.741325	2022-09-09 06:47:31.741325
189	Zebra_badge.png	72	ProductSku	\N	\N	2022-09-09 06:48:50.605285	2022-09-09 06:48:50.605285
190	d1a20cf431adcbef1efc4b47a7af2edda2cc9fa2.jpg	76	ProductSku	\N	\N	2022-09-09 07:02:19.170403	2022-09-09 07:02:19.170403
191	武.jpg	78	ProductSku	\N	\N	2022-09-09 07:02:42.684751	2022-09-09 07:02:42.684751
192	武.jpg	\N	\N	\N	\N	2022-09-09 07:36:29.960575	2022-09-09 07:37:23.893973
193	1632544327_702756.png	81	ProductSku	\N	\N	2022-09-09 07:37:41.619869	2022-09-09 07:37:41.619869
194	武.jpg	84	ProductSku	\N	\N	2022-09-09 07:44:46.485576	2022-09-09 07:44:46.485576
195	武.jpg	\N	\N	\N	\N	2022-09-09 08:20:13.45157	2022-09-09 08:40:11.997047
196	武.jpg	96	ProductSku	\N	\N	2022-09-09 08:40:25.986445	2022-09-09 08:40:25.986445
197	__Fries小.png	11	Bundle	\N	\N	2022-09-09 09:01:33.165333	2022-09-09 09:01:33.165333
198	武.jpg	98	ProductSku	\N	\N	2022-09-09 09:20:10.325146	2022-09-09 09:20:10.325146
199	武.jpg	96	ProductSku	\N	\N	2022-09-09 09:29:51.400064	2022-09-09 09:29:51.400064
200	Elephant_Keychain.png	73	ProductSku	\N	\N	2022-09-13 02:21:56.675768	2022-09-13 02:21:56.675768
201	de8a7004-0a89-4b50-88d9-89b4c5ec0df1.png	102	ProductSku	\N	\N	2022-09-13 02:23:23.396859	2022-09-13 02:23:23.396859
202	水獭l.png	44	ProductSku	\N	\N	2022-09-13 02:24:22.509944	2022-09-13 02:24:22.509944
203	长.JPG	103	ProductSku	\N	\N	2022-09-13 03:07:14.924099	2022-09-13 03:07:14.924099
204	印度黄姜饭.png	75	ProductSku	\N	\N	2022-09-13 03:38:11.695894	2022-09-13 03:38:11.695894
205	鸡饭.png	80	ProductSku	\N	\N	2022-09-13 03:39:44.324912	2022-09-13 03:39:44.324912
206	烤鸡.png	95	ProductSku	\N	\N	2022-09-13 03:50:57.254688	2022-09-13 03:50:57.254688
207	西柚汁.png	94	ProductSku	\N	\N	2022-09-13 03:51:43.67624	2022-09-13 03:51:43.67624
208	葡萄汁.png	92	ProductSku	\N	\N	2022-09-13 03:54:31.190751	2022-09-13 03:54:31.190751
209	火烈鸟杯子.png	93	ProductSku	\N	\N	2022-09-13 03:56:35.265354	2022-09-13 03:56:35.265354
210	番茄意面.png	91	ProductSku	\N	\N	2022-09-13 04:01:03.939199	2022-09-13 04:01:03.939199
211	香草.png	90	ProductSku	\N	\N	2022-09-13 04:01:50.487505	2022-09-13 04:01:50.487505
212	黑椒牛排.png	89	ProductSku	\N	\N	2022-09-13 04:03:36.837486	2022-09-13 04:03:36.837486
213	手抓饭.png	88	ProductSku	\N	\N	2022-09-13 04:04:28.6755	2022-09-13 04:04:28.6755
214	飞饼.png	86	ProductSku	\N	\N	2022-09-13 04:06:10.131551	2022-09-13 04:06:10.131551
215	红豆冰.png	85	ProductSku	\N	\N	2022-09-13 04:07:08.450979	2022-09-13 04:07:08.450979
216	水獭杯子product.png	72	Product	\N	\N	2022-09-13 04:10:20.162903	2022-09-13 04:10:20.162903
218	水獭green.png	104	ProductSku	\N	\N	2022-09-13 04:15:36.962217	2022-09-13 04:15:36.962217
217	水獭杯blue.png	105	ProductSku	\N	\N	2022-09-13 04:15:20.330551	2022-09-13 04:15:20.330551
219	panda_hat_.png	73	Product	\N	\N	2022-09-13 06:04:28.692492	2022-09-13 06:04:28.692492
220	panda_hat_.png	106	ProductSku	\N	\N	2022-09-13 06:06:57.176819	2022-09-13 06:06:57.176819
221	panda_hat_.png	107	ProductSku	\N	\N	2022-09-13 06:11:13.489176	2022-09-13 06:11:13.489176
\.


--
-- Data for Name: no_fulfillment_dates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.no_fulfillment_dates (id, fulfillment_type, shop_id, start_date, end_date, deleted_at, created_at, updated_at) FROM stdin;
1	1	1	2022-08-29	2022-09-04	\N	2022-08-31 04:20:58.607633	2022-08-31 04:20:58.607633
2	10	1	2022-08-29	2022-09-04	\N	2022-08-31 04:20:58.614831	2022-08-31 04:20:58.614831
3	1	2	2022-08-31	2022-09-01	\N	2022-08-31 06:59:53.781798	2022-08-31 06:59:53.781798
5	10	3	2022-08-31	2023-09-01	\N	2022-08-31 14:11:07.661344	2022-08-31 14:11:07.661344
6	1	5	2022-09-01	2022-11-17	\N	2022-09-01 02:31:50.767841	2022-09-01 02:31:50.767841
4	10	2	2022-08-01	2022-09-17	\N	2022-08-31 06:59:53.788442	2022-09-09 02:23:24.996279
\.


--
-- Data for Name: outlet_sku_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.outlet_sku_views (id, outlet_sku_id, quantity, sku_id, outlet_id, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
46	47	100	48	10	\N	2022-09-08 02:54:42.21727	2022-09-08 02:54:42.21727	2022-09-08 02:54:42
48	48	0	48	3	\N	2022-09-08 02:54:42.247298	2022-09-08 02:54:42.247298	2022-09-08 02:54:42
1	2	1000	2	3	\N	2022-09-08 02:54:41.366657	2022-09-08 06:08:11.359486	2022-09-08 06:08:11
2	3	500	3	3	\N	2022-09-08 02:54:41.381231	2022-09-08 06:08:11.395999	2022-09-08 06:08:11
3	4	2000	4	3	\N	2022-09-08 02:54:41.397345	2022-09-08 06:08:11.41408	2022-09-08 06:08:11
4	5	2000	5	3	\N	2022-09-08 02:54:41.416528	2022-09-08 06:08:11.453328	2022-09-08 06:08:11
5	6	200	7	4	\N	2022-09-08 02:54:41.431354	2022-09-08 06:08:11.492163	2022-09-08 06:08:11
6	7	200	8	4	\N	2022-09-08 02:54:41.45622	2022-09-08 06:08:11.521987	2022-09-08 06:08:11
7	8	1000	9	4	\N	2022-09-08 02:54:41.483877	2022-09-08 06:08:11.542182	2022-09-08 06:08:11
8	9	500	10	4	\N	2022-09-08 02:54:41.503435	2022-09-08 06:08:11.563758	2022-09-08 06:08:11
9	10	500	11	4	\N	2022-09-08 02:54:41.527357	2022-09-08 06:08:11.585411	2022-09-08 06:08:11
10	11	200	12	4	\N	2022-09-08 02:54:41.543169	2022-09-08 06:08:11.604435	2022-09-08 06:08:11
11	12	100	13	5	\N	2022-09-08 02:54:41.565411	2022-09-08 06:08:11.624395	2022-09-08 06:08:11
12	13	100	14	5	\N	2022-09-08 02:54:41.584146	2022-09-08 06:08:11.656558	2022-09-08 06:08:11
13	14	50	15	5	\N	2022-09-08 02:54:41.601663	2022-09-08 06:08:11.674813	2022-09-08 06:08:11
14	15	50	16	5	\N	2022-09-08 02:54:41.617874	2022-09-08 06:08:11.692765	2022-09-08 06:08:11
15	16	50	17	5	\N	2022-09-08 02:54:41.633374	2022-09-08 06:08:11.709421	2022-09-08 06:08:11
16	17	500	18	6	\N	2022-09-08 02:54:41.647693	2022-09-08 06:08:11.727285	2022-09-08 06:08:11
17	18	500	19	6	\N	2022-09-08 02:54:41.661777	2022-09-08 06:08:11.749101	2022-09-08 06:08:11
18	19	100	20	6	\N	2022-09-08 02:54:41.680203	2022-09-08 06:08:11.767112	2022-09-08 06:08:11
19	20	100	21	6	\N	2022-09-08 02:54:41.694019	2022-09-08 06:08:11.786778	2022-09-08 06:08:11
20	21	100	22	6	\N	2022-09-08 02:54:41.708847	2022-09-08 06:08:11.804624	2022-09-08 06:08:11
21	22	100	23	6	\N	2022-09-08 02:54:41.722957	2022-09-08 06:08:11.82541	2022-09-08 06:08:11
22	23	50	24	6	\N	2022-09-08 02:54:41.748311	2022-09-08 06:08:11.84277	2022-09-08 06:08:11
23	24	50	25	6	\N	2022-09-08 02:54:41.766722	2022-09-08 06:08:11.897541	2022-09-08 06:08:11
24	25	50	26	6	\N	2022-09-08 02:54:41.794603	2022-09-08 06:08:11.944202	2022-09-08 06:08:11
25	26	100	27	7	\N	2022-09-08 02:54:41.809512	2022-09-08 06:08:11.971743	2022-09-08 06:08:11
26	27	50	28	7	\N	2022-09-08 02:54:41.828572	2022-09-08 06:08:11.989527	2022-09-08 06:08:11
27	28	50	29	7	\N	2022-09-08 02:54:41.847419	2022-09-08 06:08:12.012641	2022-09-08 06:08:11
28	29	50	30	7	\N	2022-09-08 02:54:41.861881	2022-09-08 06:08:12.028773	2022-09-08 06:08:11
29	30	100	31	7	\N	2022-09-08 02:54:41.87927	2022-09-08 06:08:12.045732	2022-09-08 06:08:11
30	31	50	32	7	\N	2022-09-08 02:54:41.937126	2022-09-08 06:08:12.062716	2022-09-08 06:08:12
31	32	100	33	7	\N	2022-09-08 02:54:41.962586	2022-09-08 06:08:12.079489	2022-09-08 06:08:12
32	33	100	34	8	\N	2022-09-08 02:54:41.985953	2022-09-08 06:08:12.096737	2022-09-08 06:08:12
33	34	100	35	8	\N	2022-09-08 02:54:41.998758	2022-09-08 06:08:12.113277	2022-09-08 06:08:12
34	35	50	36	8	\N	2022-09-08 02:54:42.015425	2022-09-08 06:08:12.13433	2022-09-08 06:08:12
35	36	30	37	9	\N	2022-09-08 02:54:42.035221	2022-09-08 06:08:12.151832	2022-09-08 06:08:12
36	37	30	38	9	\N	2022-09-08 02:54:42.052522	2022-09-08 06:08:12.169777	2022-09-08 06:08:12
37	38	30	39	9	\N	2022-09-08 02:54:42.06836	2022-09-08 06:08:12.18797	2022-09-08 06:08:12
38	39	30	40	9	\N	2022-09-08 02:54:42.085107	2022-09-08 06:08:12.204236	2022-09-08 06:08:12
39	40	30	41	9	\N	2022-09-08 02:54:42.097843	2022-09-08 06:08:12.22133	2022-09-08 06:08:12
40	41	100	42	10	\N	2022-09-08 02:54:42.113888	2022-09-08 06:08:12.239105	2022-09-08 06:08:12
41	42	100	43	10	\N	2022-09-08 02:54:42.132759	2022-09-08 06:08:12.258179	2022-09-08 06:08:12
42	43	100	44	10	\N	2022-09-08 02:54:42.155237	2022-09-08 06:08:12.28567	2022-09-08 06:08:12
43	44	50	45	10	\N	2022-09-08 02:54:42.173068	2022-09-08 06:08:12.308443	2022-09-08 06:08:12
44	45	100	46	10	\N	2022-09-08 02:54:42.18651	2022-09-08 06:08:12.323793	2022-09-08 06:08:12
45	46	100	47	10	\N	2022-09-08 02:54:42.201428	2022-09-08 06:08:12.340295	2022-09-08 06:08:12
50	50	200	44	3	\N	2022-09-08 03:56:37.437025	2022-09-08 06:08:12.408378	2022-09-08 06:08:12
51	51	10	50	3	\N	2022-09-08 06:19:17.691383	2022-09-08 06:19:17.691383	2022-09-08 06:19:17
47	1	100	1	3	\N	2022-09-08 02:54:42.231041	2022-09-08 06:53:28.813429	2022-09-08 06:53:28
49	49	100	49	10	\N	2022-09-08 02:54:42.262165	2022-09-09 09:15:36.715438	2022-09-09 09:15:36
52	52	222	52	7	\N	2022-09-13 03:05:59.79293	2022-09-13 03:05:59.79293	2022-09-13 03:05:59
54	54	100	50	7	\N	2022-09-13 06:21:01.790388	2022-09-13 06:21:01.790388	2022-09-13 06:21:01
53	53	102	50	10	\N	2022-09-13 06:20:01.674998	2022-09-13 06:27:23.973231	2022-09-13 06:27:23
55	55	4	50	6	\N	2022-09-13 06:28:17.203459	2022-09-13 06:28:54.607213	2022-09-13 06:28:54
\.


--
-- Data for Name: outlet_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.outlet_views (id, outlet_id, master_outlet_ref, name, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
1	10	RW-Retail-GS	{"en": "Rriver Wonders Gift Shop", "zh-CN": "河川生态公园礼品店"}	\N	2022-09-08 02:52:51.704364	2022-09-09 01:50:24.352036	2022-09-09 01:50:24.283614
2	9	NS-F&B-UU	{"en": "Ulu Ulu Wild Restaurant", "zh-CN": "乌鲁乌鲁野生餐厅"}	\N	2022-09-08 02:52:51.708534	2022-09-09 01:50:37.803199	2022-09-09 01:50:37.791648
3	8	NS-Retail-GS	{"en": "Night Safari Gift Shop", "zh-CN": "夜间野生动物园纪念品店"}	\N	2022-09-08 02:52:51.731311	2022-09-09 01:50:52.561893	2022-09-09 01:50:52.559192
4	7	BP-F&B-PH	{"en": "Pizza Hut", "zh-CN": "必胜客"}	\N	2022-09-08 02:52:51.743773	2022-09-09 01:51:07.805818	2022-09-09 01:51:07.802848
5	6	BP-Retail-GS	{"en": "Jurong Bird Park Gift Shop", "zh-CN": "裕廊飞禽公园礼品店"}	\N	2022-09-08 02:52:51.759604	2022-09-09 01:51:17.726902	2022-09-09 01:51:17.722919
7	5	SZ-F&B- Restaurant 	{"en": "Ah Meng Restaurant", "zh-CN": "阿明饭店"}	\N	2022-09-08 02:52:51.786322	2022-09-09 01:51:36.450366	2022-09-09 01:51:36.447242
6	4	SZ-F&B-Restaurant 	{"en": "KFC", "zh-CN": "肯德基"}	\N	2022-09-08 02:52:51.775096	2022-09-09 01:51:53.441952	2022-09-09 01:51:53.438702
8	3	SZ-Retail-GS	{"en": "Singapore Zoo Gift Shop", "zh-CN": "新加坡动物园礼品店"}	\N	2022-09-08 02:52:51.802955	2022-09-09 01:52:14.99256	2022-09-09 01:52:14.98975
\.


--
-- Data for Name: preference_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preference_groups (id, product_id, name, min_selection, max_selection, deleted_at, created_at, updated_at) FROM stdin;
3	11	{"en": "add sugar ", "zh-CN": "加糖"}	0	1	\N	2022-09-01 08:11:30.088559	2022-09-01 08:11:30.088559
4	11	{"en": " ice", "zh-CN": "冰"}	0	1	\N	2022-09-01 08:11:30.127619	2022-09-01 08:11:30.127619
5	12	{"en": "ice", "zh-CN": "冰"}	0	1	\N	2022-09-01 08:15:33.124653	2022-09-01 08:15:33.124653
6	18	{"en": "sauce", "zh-CN": "酱汁"}	0	1	\N	2022-09-01 08:48:48.396617	2022-09-01 08:48:48.396617
7	21	{"en": "Cooked", "zh-CN": "熟度"}	0	1	\N	2022-09-01 09:05:42.190214	2022-09-01 09:05:42.190214
8	26	{"en": "amount of ice", "zh-CN": "冰量"}	0	1	\N	2022-09-01 09:21:40.783696	2022-09-01 09:21:40.783696
9	26	{"en": "sugar", "zh-CN": "糖"}	0	1	\N	2022-09-01 09:21:40.810446	2022-09-01 09:21:40.810446
1	6	{"en": " Ice", "zh-CN": "冰"}	0	1	\N	2022-09-01 07:16:11.677643	2022-09-08 02:45:51.507702
10	2	{"en": "toppings", "zh-CN": "加料"}	0	2	\N	2022-09-09 03:35:42.421018	2022-09-09 03:35:42.421018
2	7	{"en": "Add Sauce", "zh-CN": "加酱"}	0	1	\N	2022-09-01 07:23:04.60347	2022-09-09 03:53:19.000726
\.


--
-- Data for Name: preference_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preference_items (id, preference_group_id, name, surcharge, deleted_at, created_at, updated_at) FROM stdin;
1	3	{"en": "all sugar", "zh-CN": "全糖"}	2.00	\N	2022-09-01 08:11:30.105763	2022-09-01 08:11:30.105763
2	3	{"en": "half sugar", "zh-CN": "半糖"}	1.00	\N	2022-09-01 08:11:30.114058	2022-09-01 08:11:30.114058
3	3	{"en": "no sugar", "zh-CN": "无糖"}	\N	\N	2022-09-01 08:11:30.120221	2022-09-01 08:11:30.120221
4	4	{"en": "no ice ", "zh-CN": "不加冰"}	\N	\N	2022-09-01 08:11:30.134265	2022-09-01 08:11:30.134265
5	4	{"en": "add ice", "zh-CN": "加冰"}	\N	\N	2022-09-01 08:11:30.140348	2022-09-01 08:11:30.140348
6	5	{"en": "add ice", "zh-CN": "加冰"}	1.00	\N	2022-09-01 08:15:33.133152	2022-09-01 08:15:33.133152
7	5	{"en": "no ice", "zh-CN": "不加冰"}	\N	\N	2022-09-01 08:15:33.139885	2022-09-01 08:15:33.139885
8	6	{"en": "ketchup", "zh-CN": "蕃茄酱"}	1.00	\N	2022-09-01 08:48:48.413444	2022-09-01 08:48:48.413444
9	6	{"en": "salad dressing", "zh-CN": "沙拉酱"}	1.00	\N	2022-09-01 08:48:48.426982	2022-09-01 08:48:48.426982
10	6	{"en": "Honey Mustard Sauce", "zh-CN": "蜂蜜芥末酱"}	2.00	\N	2022-09-01 08:48:48.438695	2022-09-01 08:48:48.438695
11	6	{"en": "hot sauce", "zh-CN": "辣酱"}	3.00	\N	2022-09-01 08:48:48.450252	2022-09-01 08:48:48.450252
12	7	{"en": "well done", "zh-CN": "全熟"}	1.00	\N	2022-09-01 09:05:42.197911	2022-09-01 09:05:42.197911
13	7	{"en": "medium well", "zh-CN": "七分熟"}	1.00	\N	2022-09-01 09:05:42.204104	2022-09-01 09:05:42.204104
14	7	{"en": "medium", "zh-CN": "五分熟"}	1.00	\N	2022-09-01 09:05:42.209662	2022-09-01 09:05:42.209662
15	7	{"en": "medium rare", "zh-CN": "三分熟"}	1.00	\N	2022-09-01 09:05:42.215923	2022-09-01 09:05:42.215923
16	8	{"en": "more ice", "zh-CN": "多冰"}	1.00	\N	2022-09-01 09:21:40.791295	2022-09-01 09:21:40.791295
17	8	{"en": "normal ice", "zh-CN": "正常冰"}	1.00	\N	2022-09-01 09:21:40.797736	2022-09-01 09:21:40.797736
18	8	{"en": "less ice", "zh-CN": "少冰"}	1.00	\N	2022-09-01 09:21:40.803374	2022-09-01 09:21:40.803374
19	9	{"en": "more sugar", "zh-CN": "多糖"}	2.00	\N	2022-09-01 09:21:40.817409	2022-09-01 09:21:40.817409
20	9	{"en": "less sugar ", "zh-CN": "少糖"}	2.00	\N	2022-09-01 09:21:40.82539	2022-09-01 09:21:40.82539
21	9	{"en": "no sugar", "zh-CN": "无糖"}	\N	\N	2022-09-01 09:21:40.833082	2022-09-01 09:21:40.833082
22	1	{"en": "no ice", "zh-CN": "不加冰"}	\N	\N	2022-09-08 02:45:51.521055	2022-09-08 02:45:51.521055
24	10	{"en": "cheese slices", "zh-CN": "芝士片"}	3.00	\N	2022-09-09 03:35:42.439878	2022-09-09 03:35:42.439878
25	10	{"en": "tomato", "zh-CN": "番茄"}	1.00	\N	2022-09-09 03:35:42.447186	2022-09-09 03:35:42.447186
26	10	{"en": "lettuce", "zh-CN": "生菜"}	1.00	\N	2022-09-09 03:35:42.453253	2022-09-09 03:35:42.453253
23	1	{"en": "add ice", "zh-CN": "加冰"}	1.00	\N	2022-09-08 02:45:51.52821	2022-09-09 03:48:59.554957
27	2	{"en": "ketchup", "zh-CN": "蕃茄酱"}	2.00	\N	2022-09-09 03:53:19.007429	2022-09-09 03:53:19.007429
28	2	{"en": "salad dressing", "zh-CN": "沙拉酱"}	2.00	\N	2022-09-09 03:53:19.014605	2022-09-09 03:53:19.014605
\.


--
-- Data for Name: product_skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_skus (id, shop_id, outlet_sku_id, master_sku_ref, price, quantity, variant_ids, product_id, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
16	4	17	BP-FHGS-Flamingo T-Shirt-P-S	10.00	0	{9,10}	13	\N	2022-09-01 08:21:58.971869	2022-09-13 03:55:37.394634	2022-09-01 00:00:00
19	4	20	BP-FHGS-Penguin Doll-S	5.00	0	{12}	15	\N	2022-09-01 08:29:53.441887	2022-09-13 03:57:55.533216	2022-09-01 00:00:00
20	4	21	BP-FHGS-Penguin Doll-M	6.00	0	{13}	15	\N	2022-09-01 08:29:53.460158	2022-09-13 03:57:55.543025	2022-09-01 00:00:00
22	4	23	BP-FHGS-Parrot Doll-B-L	10.00	0	{15,20}	16	\N	2022-09-01 08:37:44.948013	2022-09-13 03:59:08.678738	2022-09-01 00:00:00
23	4	24	BP-FHGS-Parrot Doll-R-M	9.00	0	{16,19}	16	\N	2022-09-01 08:37:44.962604	2022-09-13 03:59:08.701316	2022-09-01 00:00:00
27	5	28	BP-PH-Durian Pizza-S	25.00	0	{21}	19	\N	2022-09-01 08:54:44.534924	2022-09-13 04:02:38.389265	2022-09-01 00:00:00
28	5	29	BP-PH-Durian Pizza-L	30.00	0	{22}	19	\N	2022-09-01 08:54:44.550134	2022-09-13 04:02:38.403648	2022-09-01 00:00:00
29	5	30	BP-PH-Seafood Pizza-S	15.00	0	{23}	20	\N	2022-09-01 08:57:36.013382	2022-09-13 04:03:01.097473	2022-09-01 00:00:00
30	5	31	BP-PH-Seafood Pizza-L	20.00	0	{24}	20	\N	2022-09-01 08:57:36.030261	2022-09-13 04:03:01.106859	2022-09-01 00:00:00
32	6	34	NS-GS-Lion Toy-S	12.00	0	{25}	22	\N	2022-09-01 09:09:04.479968	2022-09-13 04:04:04.558191	2022-09-01 00:00:00
33	6	35	 NS-GS-Lion Toy-M	13.00	0	{26}	22	\N	2022-09-01 09:09:04.494952	2022-09-13 04:04:04.571752	2022-09-01 00:00:00
37	7	38	 NS-UUR-Curry Chicken Rices-S	8.00	0	{28}	25	\N	2022-09-01 09:16:26.06924	2022-09-13 04:06:39.390033	2022-09-01 00:00:00
38	7	39	NS-UUR-Curry Chicken Rices-L	12.00	0	{29}	25	\N	2022-09-01 09:16:26.087329	2022-09-13 04:06:39.399113	2022-09-01 00:00:00
40	8	41	RW-GS-Panda Doll-S	20.00	0	{30}	27	\N	2022-09-01 09:28:12.273048	2022-09-13 04:07:30.992853	2022-09-01 00:00:00
41	8	42	RW-GS-Panda Doll-L	25.00	0	{31}	27	\N	2022-09-01 09:28:12.287622	2022-09-13 04:07:31.002338	2022-09-01 00:00:00
43	8	44	RW-GS-Otter Doll-S	18.80	0	{32}	29	\N	2022-09-01 09:36:11.992033	2022-09-13 04:07:55.387434	2022-09-01 00:00:00
44	8	45	RW-GS-Otter Doll-L	25.00	0	{33}	29	\N	2022-09-01 09:36:12.006362	2022-09-13 04:07:55.441306	2022-09-01 00:00:00
62	1	1	SZ-GS-Kangaroo Doll-Br-S	10.00	0	{93,95}	68	\N	2022-09-08 09:24:16.593497	2022-09-13 04:08:41.202878	2022-09-01 00:00:00
1	1	1	\N	10.00	0	{1,2}	\N	\N	2022-08-31 05:57:00.637658	2022-08-31 05:57:00.637658	2022-09-01 00:00:00
45	8	46	\N	40.00	0	{34}	\N	\N	2022-09-01 09:40:17.42564	2022-09-01 09:40:17.42564	2022-09-01 00:00:00
46	8	47	\N	40.00	0	{35}	\N	\N	2022-09-01 09:40:17.441515	2022-09-01 09:40:17.441515	2022-09-01 00:00:00
55	1	\N	\N	12.50	0	{}	57	2022-09-08 07:27:14.255623	2022-09-08 07:13:57.151666	2022-09-08 07:27:14.255635	2022-09-01 00:00:00
56	1	\N	\N	12.50	0	{}	59	2022-09-08 07:29:54.78819	2022-09-08 07:27:31.23032	2022-09-08 07:29:54.7882	2022-09-01 00:00:00
57	1	2	\N	11.00	0	{}	60	\N	2022-09-08 07:48:38.862366	2022-09-08 07:48:38.862366	2022-09-01 00:00:00
54	1	\N	\N	12.50	0	{}	56	2022-09-08 07:13:21.843372	2022-09-08 07:12:57.33394	2022-09-08 07:13:21.843388	2022-09-01 00:00:00
47	8	\N	\N	20.00	0	{55}	34	\N	2022-09-07 06:25:41.538294	2022-09-07 06:25:41.538294	2022-09-01 00:00:00
48	8	\N	\N	12.50	0	{}	38	2022-09-08 04:02:14.24694	2022-09-08 03:57:56.348648	2022-09-08 04:02:14.246956	2022-09-01 00:00:00
49	1	\N	\N	12.50	0	{}	39	2022-09-08 04:03:21.005723	2022-09-08 04:03:02.375905	2022-09-08 04:03:21.005732	2022-09-01 00:00:00
50	8	\N	\N	11.00	0	{}	46	2022-09-08 06:15:56.972025	2022-09-08 06:06:12.980774	2022-09-08 06:15:56.972038	2022-09-01 00:00:00
52	1	\N	\N	11.00	0	{}	54	2022-09-08 06:36:13.262392	2022-09-08 06:34:50.298108	2022-09-08 06:36:13.262401	2022-09-01 00:00:00
53	1	\N	\N	11.00	0	{}	55	2022-09-08 06:39:33.303925	2022-09-08 06:36:47.469868	2022-09-08 06:39:33.303936	2022-09-01 00:00:00
51	2	6	\N	15.00	0	{}	\N	\N	2022-09-08 06:22:18.84036	2022-09-08 08:34:11.265222	2022-09-01 00:00:00
4	1	3	\N	15.00	0	{}	\N	\N	2022-09-01 07:05:29.17597	2022-09-01 07:05:29.17597	2022-09-01 00:00:00
59	2	6	\N	15.00	0	{NULL}	\N	\N	2022-09-08 08:47:12.543779	2022-09-08 08:47:12.543779	2022-09-01 00:00:00
60	2	\N	\N	15.00	0	{}	49	2022-09-08 09:22:12.316337	2022-09-08 09:21:02.743588	2022-09-08 09:22:12.316357	2022-09-01 00:00:00
61	1	\N	\N	15.00	0	{}	67	2022-09-08 09:25:04.094981	2022-09-08 09:21:56.593929	2022-09-08 09:25:04.094991	2022-09-01 00:00:00
65	1	2	\N	11.00	0	{98,100}	\N	\N	2022-09-08 09:57:31.495861	2022-09-08 09:57:31.495861	2022-09-01 00:00:00
64	1	\N	\N	10.00	0	{97,99}	69	2022-09-08 10:07:10.066565	2022-09-08 09:57:31.474063	2022-09-08 10:07:10.066575	2022-09-01 00:00:00
66	1	\N	\N	15.00	0	{97,100}	69	2022-09-08 10:07:10.070347	2022-09-08 10:01:04.88884	2022-09-08 10:07:10.070356	2022-09-01 00:00:00
67	1	\N	\N	11.00	0	{98,99}	69	2022-09-08 10:07:10.074857	2022-09-08 10:06:45.241725	2022-09-08 10:07:10.074866	2022-09-01 00:00:00
68	1	2	\N	11.00	0	{101,103}	\N	\N	2022-09-08 10:09:31.795477	2022-09-08 10:09:31.795477	2022-09-01 00:00:00
5	1	4	\N	5.00	0	{}	\N	\N	2022-09-01 07:06:46.400234	2022-09-01 07:06:46.400234	2022-09-01 00:00:00
6	1	5	\N	5.00	0	{}	\N	\N	2022-09-01 07:08:14.537623	2022-09-01 07:08:14.537623	2022-09-01 00:00:00
12	3	13	\N	8.00	0	{}	\N	\N	2022-09-01 07:28:39.20497	2022-09-01 07:28:39.20497	2022-09-01 00:00:00
11	3	12	\N	10.00	0	{}	\N	\N	2022-09-01 07:26:20.662957	2022-09-01 07:26:20.662957	2022-09-01 00:00:00
42	8	43	\N	12.50	0	{}	\N	\N	2022-09-01 09:30:31.332432	2022-09-01 09:30:31.332432	2022-09-01 00:00:00
39	7	40	\N	3.00	0	{}	\N	\N	2022-09-01 09:21:40.845493	2022-09-01 09:21:40.845493	2022-09-01 00:00:00
36	7	37	\N	5.00	0	{}	\N	\N	2022-09-01 09:13:37.512349	2022-09-01 09:13:37.512349	2022-09-01 00:00:00
35	7	36	\N	20.00	0	{}	\N	\N	2022-09-01 09:11:35.368356	2022-09-01 09:11:35.368356	2022-09-01 00:00:00
31	5	32	\N	15.00	0	{}	\N	\N	2022-09-01 09:05:42.224715	2022-09-01 09:05:42.224715	2022-09-01 00:00:00
26	5	27	\N	3.60	0	{}	\N	\N	2022-09-01 08:48:48.463583	2022-09-01 08:48:48.463583	2022-09-01 00:00:00
25	5	26	\N	10.00	0	{}	\N	\N	2022-09-01 08:42:35.580047	2022-09-01 08:42:35.580047	2022-09-01 00:00:00
15	3	16	\N	4.00	0	{}	\N	\N	2022-09-01 08:15:33.150444	2022-09-01 08:15:33.150444	2022-09-01 00:00:00
18	4	19	\N	10.00	0	{}	\N	\N	2022-09-01 08:24:28.960673	2022-09-01 08:24:28.960673	2022-09-01 00:00:00
14	3	15	\N	3.00	0	{}	\N	\N	2022-09-01 08:11:30.155445	2022-09-01 08:11:30.155445	2022-09-01 00:00:00
2	2	6	SZ-KFC-Beef Hamburger-L	15.00	0	{3}	2	\N	2022-08-31 07:34:33.602254	2022-09-13 02:49:31.646816	2022-09-01 00:00:00
3	2	7	SZ-KFC-Beef Hamburger-S	10.00	0	{4}	2	\N	2022-08-31 07:34:33.61625	2022-09-13 02:49:31.658996	2022-09-01 00:00:00
58	1	3	SZ-GS-Giraffe Pillow-M	15.00	0	{91,92}	3	\N	2022-09-08 08:38:41.289718	2022-09-13 03:24:51.082325	2022-09-01 00:00:00
7	2	8	SZ-KFC-Coke-L	5.00	0	{5}	6	\N	2022-09-01 07:16:11.709342	2022-09-13 03:36:23.943166	2022-09-01 00:00:00
9	2	11	SZ-KFC-Fries-S	2.00	0	{7}	7	\N	2022-09-01 07:23:04.647994	2022-09-13 03:37:23.267419	2022-09-01 00:00:00
10	2	10	SZ-GS- Fries-L	4.00	0	{8}	7	\N	2022-09-01 07:23:04.666818	2022-09-13 03:37:23.285587	2022-09-01 00:00:00
69	1	1	\N	10.00	0	{102,104}	\N	\N	2022-09-08 10:09:31.81488	2022-09-08 10:09:31.81488	2022-09-01 00:00:00
75	3	12	SZ-AMR- Indian Turmeric Rice-A	10.00	0	{109}	8	\N	2022-09-09 06:41:43.300479	2022-09-13 03:38:15.688147	2022-09-01 00:00:00
80	3	13	SZ-AMR-Hainan Chicken Rice-A	8.00	0	{110}	9	\N	2022-09-09 07:30:07.268532	2022-09-13 03:39:57.985406	2022-09-01 00:00:00
95	3	14	SZ-AMR-Roast Chicken-A	20.00	0	{121}	10	\N	2022-09-09 08:04:54.196617	2022-09-13 03:51:00.722154	2022-09-01 00:00:00
74	1	1	\N	10.00	0	{101,103}	\N	\N	2022-09-09 06:39:42.934347	2022-09-09 06:39:42.934347	2022-09-01 00:00:00
96	1	5	\N	5.00	0	{102,103}	\N	\N	2022-09-09 08:20:23.603518	2022-09-09 09:29:58.016921	2022-09-01 00:00:00
70	1	1	\N	10.00	0	{101,104}	\N	\N	2022-09-09 01:53:31.124382	2022-09-09 06:46:06.918573	2022-09-01 00:00:00
94	3	15	SZ-AMR-Grapefruit Guice-A	3.00	0	{120}	11	\N	2022-09-09 08:02:58.809077	2022-09-13 03:51:46.756246	2022-09-01 00:00:00
71	1	3	\N	15.00	0	{102,103}	\N	\N	2022-09-09 02:24:51.899363	2022-09-09 06:47:57.193037	2022-09-01 00:00:00
92	3	16	SZ-AMR-Grape Guice-A	4.00	0	{118}	12	\N	2022-09-09 08:00:58.642047	2022-09-13 03:54:35.655047	2022-09-01 00:00:00
17	4	18	BP-FHGS-Flamingo T-Shirt-P-L	10.00	0	{9,11}	13	\N	2022-09-01 08:21:58.987782	2022-09-13 03:55:37.413209	2022-09-01 00:00:00
77	1	3	\N	15.00	0	{101,104}	\N	\N	2022-09-09 06:48:50.48641	2022-09-09 06:48:50.48641	2022-09-01 00:00:00
93	4	19	BP-FHGS-Flamingo Water Cup-A	10.00	0	{119}	14	\N	2022-09-09 08:02:01.614411	2022-09-13 03:57:02.155036	2022-09-01 00:00:00
78	1	5	\N	5.00	0	{102,103}	\N	\N	2022-09-09 07:03:01.169301	2022-09-09 07:03:01.169301	2022-09-01 00:00:00
21	4	22	BP-FHGS-Penguin Doll-L	8.00	0	{14}	15	\N	2022-09-01 08:29:53.474813	2022-09-13 03:57:55.553287	2022-09-01 00:00:00
79	1	5	\N	5.00	0	{101,104}	\N	\N	2022-09-09 07:20:07.310355	2022-09-09 07:20:07.310355	2022-09-01 00:00:00
24	4	25	BP-FHGS-Parrot Doll-W-S	6.00	0	{17,18}	16	\N	2022-09-01 08:37:44.974424	2022-09-13 03:59:08.722599	2022-09-01 00:00:00
81	1	50	\N	12.50	0	{102,103}	\N	\N	2022-09-09 07:37:50.443214	2022-09-09 07:37:50.443214	2022-09-01 00:00:00
91	5	26	BP-PH-Tomato Pasta-A	10.00	0	{117}	17	\N	2022-09-09 07:54:45.099853	2022-09-13 04:01:06.799432	2022-09-01 00:00:00
82	1	50	\N	12.50	0	{101,104}	\N	\N	2022-09-09 07:39:31.545658	2022-09-09 07:39:31.545658	2022-09-01 00:00:00
90	5	27	BP-PH-Vanilla Anchovy Shrimp-A	3.60	0	{116}	18	\N	2022-09-09 07:52:19.611363	2022-09-13 04:01:59.452988	2022-09-01 00:00:00
84	1	4	\N	5.00	0	{102,103}	\N	\N	2022-09-09 07:44:56.287816	2022-09-09 07:44:56.287816	2022-09-01 00:00:00
13	3	14	\N	20.00	0	{}	\N	\N	2022-09-01 07:30:09.397607	2022-09-01 07:30:09.397607	2022-09-01 00:00:00
89	5	32	BP-PH-Black Pepper Steak-A	15.00	0	{115}	21	\N	2022-09-09 07:51:00.617093	2022-09-13 04:03:41.695843	2022-09-01 00:00:00
87	1	4	\N	5.00	0	{101,104}	\N	\N	2022-09-09 07:49:45.03312	2022-09-09 07:49:45.03312	2022-09-01 00:00:00
34	6	33	NS-GS-Lion Toy-L	15.00	0	{27}	22	\N	2022-09-01 09:09:04.509626	2022-09-13 04:04:04.582108	2022-09-01 00:00:00
88	7	36	NS-UUR-Indian Pilaf-A	20.00	0	{114}	23	\N	2022-09-09 07:49:45.769161	2022-09-13 04:04:36.941047	2022-09-01 00:00:00
86	7	37	NS-UUR-Indian Pancakes-A	5.00	0	{113}	24	\N	2022-09-09 07:47:49.270416	2022-09-13 04:06:16.229473	2022-09-01 00:00:00
97	1	50	\N	12.50	0	{101,104}	\N	\N	2022-09-09 09:10:24.98655	2022-09-09 09:10:24.98655	2022-09-01 00:00:00
85	7	40	NS-UUR-Red Bean Ice-A	3.00	0	{112}	26	\N	2022-09-09 07:46:11.282019	2022-09-13 04:07:13.915173	2022-09-01 00:00:00
98	1	50	\N	12.50	0	{102,103}	\N	\N	2022-09-09 09:20:29.17959	2022-09-09 09:20:29.17959	2022-09-01 00:00:00
63	1	2	SZ-GS-Kangaroo Doll-Gr-L	11.00	0	{94,96}	68	\N	2022-09-08 09:24:16.613162	2022-09-13 04:08:41.224648	2022-09-01 00:00:00
99	1	50	\N	12.50	0	{101,104}	\N	\N	2022-09-09 09:21:57.191122	2022-09-09 09:21:57.191122	2022-09-01 00:00:00
104	8	46	RW-GS-Otter Cup-Gr-A	40.00	0	{122,123}	72	\N	2022-09-13 04:15:40.058787	2022-09-13 04:15:40.058787	2022-09-01 00:00:00
105	8	49	RW-GS-Otter Cup-Bl-A	20.00	0	{122,124}	72	\N	2022-09-13 04:15:40.086485	2022-09-13 04:15:40.086485	2022-09-01 00:00:00
100	1	5	\N	5.00	0	{101,104}	\N	\N	2022-09-09 09:42:34.891378	2022-09-09 09:42:34.891378	2022-09-01 00:00:00
106	1	50	RW-GS-Panda Hat-A	12.50	0	{125,126}	73	\N	2022-09-13 06:07:02.853527	2022-09-13 06:07:02.853527	2022-09-01 00:00:00
107	8	43	RW-GS-Panda Hat-A	12.50	0	{111,127}	28	\N	2022-09-13 06:11:16.311271	2022-09-13 06:11:16.311271	2022-09-01 00:00:00
83	8	43	\N	12.50	0	{111}	\N	\N	2022-09-09 07:44:02.036684	2022-09-09 07:44:02.036684	2022-09-01 00:00:00
101	1	5	\N	5.00	0	{101,104}	\N	\N	2022-09-09 09:54:51.701347	2022-09-09 09:54:51.701347	2022-09-01 00:00:00
103	5	\N	22	20.00	0	{}	71	2022-09-13 03:07:45.34832	2022-09-13 03:07:18.679326	2022-09-13 03:07:45.348333	2022-09-01 00:00:00
76	1	\N	SZ-GS-Giraffe Pillow-M	15.00	0	{101,103}	70	2022-09-13 06:11:27.066022	2022-09-09 06:47:57.169561	2022-09-13 06:11:27.06604	2022-09-01 00:00:00
72	1	4	SZ-GS-Zebra Badge-O-A	6.00	0	{105,106}	4	\N	2022-09-09 06:17:43.079827	2022-09-13 03:31:19.533018	2022-09-01 00:00:00
73	1	5	SZ-GS-Elephant Keychain-G-A	5.00	0	{107,108}	5	\N	2022-09-09 06:20:06.442371	2022-09-13 03:35:43.481996	2022-09-01 00:00:00
8	2	9	SZ-KFC-Coke-S	2.00	0	{6}	6	\N	2022-09-01 07:16:11.72255	2022-09-13 03:36:23.952522	2022-09-01 00:00:00
102	1	\N	RW-GS-Panda Hat-A	12.50	0	{102,104}	70	2022-09-13 06:11:27.0737	2022-09-13 02:23:25.471131	2022-09-13 06:11:27.073712	2022-09-01 00:00:00
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, shop_id, name, short_desc, "desc", price_low, price_high, variant_sku_mapping, open_for_sale_at, active, ranking, searchable, initial_sold_quantity, actual_sold_quantity, deleted_at, created_at, updated_at) FROM stdin;
4	1	{"en": " Zebra Badge", "zh-CN": "斑马徽章"}	{"en": "Recommended choice for zebra lovers", "zh-CN": "斑马爱好者推荐选择"}	{}	6.00	6.00	"{}"	2022-09-09 03:38:03	t	48	t	200	0	\N	2022-09-01 07:06:46.35798	2022-09-13 03:31:19.548729
71	5	{"en": "test2", "zh-CN": "test2"}	{}	{}	20.00	20.00	"{}"	\N	t	100	t	\N	0	2022-09-13 03:07:45.369001	2022-09-13 03:07:18.594711	2022-09-13 03:07:45.36901
1	1	{"en": "Kangaroo Doll", "zh-CN": "袋鼠玩偶"}	{"en": "brown kangaroo doll", "zh-CN": "棕色袋鼠玩偶"}	{}	0.00	0.00	"{}"	2022-08-31 13:52:51	t	50	t	0	0	2022-09-06 01:28:28.830539	2022-08-31 05:57:00.515448	2022-09-06 01:28:28.830547
8	3	{"en": "Indian Turmeric Rice", "zh-CN": "印度黄姜饭"}	{"en": "Indian specialties", "zh-CN": "印度特色菜"}	{"en": "Worth a try", "zh-CN": "值得一试"}	10.00	10.00	"{}"	2022-09-09 03:53:54	t	50	t	100	0	\N	2022-09-01 07:26:20.613313	2022-09-13 03:38:56.829721
13	4	{"en": " Flamingo T-Shirt ", "zh-CN": "火烈鸟T恤"}	{"en": "Our recommended product", "zh-CN": "本店推荐商品"}	{}	10.00	10.00	"{}"	2022-09-06 16:00:00	t	50	t	20	0	\N	2022-09-01 08:21:58.86054	2022-09-13 03:55:37.176369
16	4	{"en": "Parrot Doll", "zh-CN": "鹦鹉玩偶"}	{"en": "Bestsellers in our shop", "zh-CN": "本店畅销产品"}	{}	6.00	10.00	"{}"	2022-09-13 04:00:09	t	47	t	100	0	\N	2022-09-01 08:37:44.829188	2022-09-13 04:00:14.968759
19	5	{"en": "Durian Pizz", "zh-CN": "榴莲披萨"}	{"en": "Our recommended products", "zh-CN": "本店推荐商品"}	{"en": "People who don't like durian should be careful", "zh-CN": "不爱吃榴莲的人慎点"}	25.00	30.00	"{}"	2022-09-29 16:00:00	t	48	t	100	0	\N	2022-09-01 08:54:44.487798	2022-09-13 04:02:38.356774
5	1	{"en": "Elephant Keychain", "zh-CN": "大象钥匙扣"}	{"en": "small pendant", "zh-CN": "小挂件"}	{"en": "You can use this product on door keys, car keys or other places where you can hang it", "zh-CN": "您可以使用在该产品在门钥匙、车钥匙或者其他可挂的地方"}	5.00	5.00	"{}"	2022-09-09 03:41:10	t	47	t	11	0	\N	2022-09-01 07:08:14.511094	2022-09-09 03:43:17.653716
6	2	{"en": "Coke", "zh-CN": "可乐"}	{"en": "Our hot drink", "zh-CN": "本店热销饮品"}	{}	2.00	5.00	"{}"	2022-09-09 03:48:32	t	49	t	500	0	\N	2022-09-01 07:16:11.643692	2022-09-09 03:48:59.510893
7	2	{"en": "Fries", "zh-CN": "薯条"}	{"en": "Our best-selling products.", "zh-CN": "本店热销产品。"}	{"en": "Recommended for potato lovers to buy this product.", "zh-CN": "推荐土豆爱好者购买该产品。"}	2.00	4.00	"{}"	2022-09-09 03:49:53	t	48	t	11	0	\N	2022-09-01 07:23:04.571451	2022-09-09 03:53:18.95985
28	8	{"en": "Panda Hat", "zh-CN": "熊猫帽"}	{"en": "Our best-selling products", "zh-CN": "本店热销产品"}	{}	12.50	12.50	"{}"	2022-09-13 06:10:25	t	49	t	111	0	\N	2022-09-01 09:30:31.271624	2022-09-13 06:11:16.233806
9	3	{"en": "Hainan Chicken Rice", "zh-CN": "海南鸡饭"}	{"en": "Welcome to buy this product", "zh-CN": "欢迎购买本产品"}	{}	8.00	8.00	"{}"	2022-09-09 03:55:15	t	49	t	90	0	\N	2022-09-01 07:28:39.164727	2022-09-09 03:55:30.609572
10	3	{"en": "Roast Chicken", "zh-CN": "烤鸡"}	{"en": "Featured Products", "zh-CN": "特色产品"}	{}	20.00	20.00	"{}"	2022-09-09 03:56:03	t	48	t	200	0	\N	2022-09-01 07:30:09.343389	2022-09-09 03:56:06.940865
21	5	{"en": "Black Pepper Steak", "zh-CN": "黑椒牛排"}	{"en": "Our new products", "zh-CN": "本店新品"}	{}	15.00	15.00	"{}"	2022-09-09 07:50:06	t	46	t	\N	0	\N	2022-09-01 09:05:42.159121	2022-09-09 07:51:00.577488
11	3	{"en": "Grapefruit Guice", "zh-CN": "鲜榨西柚汁"}	{"en": "Our recommended drinks", "zh-CN": "本店推荐饮料"}	{"en": "Summer must-have drink", "zh-CN": "夏日必选饮品"}	3.00	3.00	"{}"	\N	t	47	t	\N	0	\N	2022-09-01 08:11:30.058871	2022-09-08 09:29:54.000852
12	3	{"en": "Grape Guice", "zh-CN": "鲜榨葡萄汁"}	{"en": "Our recommended drinks", "zh-CN": "本店推荐饮品"}	{}	4.00	4.00	"{}"	\N	t	46	t	12	0	\N	2022-09-01 08:15:33.076179	2022-09-08 09:29:54.015586
14	4	{"en": "Flamingo Water Cup", "zh-CN": "火烈鸟杯"}	{"en": "Our recommended products", "zh-CN": "本店推荐商品"}	{}	10.00	10.00	"{}"	\N	t	49	t	100	0	\N	2022-09-01 08:24:28.909411	2022-09-08 09:29:54.034669
15	4	{"en": "Penguin Doll ", "zh-CN": "企鹅玩偶"}	{"en": "Our recommended products", "zh-CN": "本店推荐商品"}	{}	5.00	8.00	"{}"	\N	t	48	t	\N	0	\N	2022-09-01 08:29:53.349551	2022-09-08 09:29:54.044497
17	5	{"en": "Tomato Pasta", "zh-CN": "番茄意面"}	{"en": "Bestsellers in our store", "zh-CN": "本店畅销商品"}	{}	10.00	10.00	"{}"	\N	t	50	t	100	0	\N	2022-09-01 08:42:35.522521	2022-09-08 09:29:54.066084
18	5	{"en": "Vanilla Anchovy Shrimp", "zh-CN": "香草凤尾虾"}	{"en": "Bestsellers in our store", "zh-CN": "本店畅销商品"}	{"en": "Fry lover's first choice", "zh-CN": "油炸爱好者首选"}	3.60	3.60	"{}"	\N	t	49	t	\N	0	\N	2022-09-01 08:48:48.352257	2022-09-08 09:29:54.074604
20	5	{"en": "Seafood Pizza", "zh-CN": "海鲜披萨"}	{"en": "Our new products", "zh-CN": "本店新品"}	{}	15.00	20.00	"{}"	\N	t	47	t	0	0	\N	2022-09-01 08:57:35.835475	2022-09-08 09:29:54.093533
22	6	{"en": "Lion Toy", "zh-CN": "狮子玩具"}	{"en": "Our featured products", "zh-CN": "本店特色产品"}	{}	12.00	15.00	"{}"	\N	t	50	t	1	0	\N	2022-09-01 09:09:04.416964	2022-09-08 09:29:54.112674
23	7	{"en": "Indian Pilaf", "zh-CN": "印度手抓饭"}	{"en": "Our featured products", "zh-CN": "本店特色产品"}	{}	20.00	20.00	"{}"	\N	t	50	t	122	0	\N	2022-09-01 09:11:35.313977	2022-09-08 09:29:54.121829
24	7	{"en": " Indian Pancakes", "zh-CN": "印度飞饼"}	{"en": "Our featured products", "zh-CN": "本店特色商品"}	{}	5.00	5.00	"{}"	\N	t	49	t	\N	0	\N	2022-09-01 09:13:37.479104	2022-09-08 09:29:54.130349
25	7	{"en": " Curry Chicken Rices", "zh-CN": "咖喱鸡肉饭"}	{"en": "Our featured products", "zh-CN": "本店特色商品"}	{}	8.00	12.00	"{}"	\N	t	48	t	2	0	\N	2022-09-01 09:16:25.986299	2022-09-08 09:29:54.141467
26	7	{"en": "Red Bean Ice", "zh-CN": "红豆冰"}	{"en": "summer dessert", "zh-CN": "夏日甜点"}	{}	3.00	3.00	"{}"	\N	t	47	t	22	0	\N	2022-09-01 09:21:40.754351	2022-09-08 09:29:54.150457
27	8	{"en": "Panda Doll", "zh-CN": "熊猫公仔"}	{"en": "Our best-selling products", "zh-CN": "本店热销产品"}	{}	20.00	25.00	"{}"	\N	t	50	t	120	0	\N	2022-09-01 09:28:12.199868	2022-09-08 09:29:54.159343
2	2	{"en": "Beef Hamburger", "zh-CN": "牛肉汉堡"}	{"en": "Our featured product", "zh-CN": "本店特色产品"}	{}	10.00	15.00	"{}"	2022-09-09 03:18:59	t	50	t	100	0	\N	2022-08-31 07:34:33.537606	2022-09-09 03:35:42.373254
30	8	{"en": "Otter Cup ", "zh-CN": "水獭杯"}	{"en": "Our featured products", "zh-CN": "本店特色商品"}	{}	0.00	0.00	"{}"	\N	t	47	t	\N	0	2022-09-06 09:10:37.426469	2022-09-01 09:40:17.356865	2022-09-06 09:10:37.426476
68	1	{"en": " Kangaroo Doll", "zh-CN": "袋鼠玩偶"}	{"en": "Our featured products", "zh-CN": "本店特色商品"}	{}	10.00	11.00	"{}"	2022-09-13 02:25:59	t	50	t	100	0	\N	2022-09-08 09:24:16.499887	2022-09-13 04:08:41.233953
34	8	{"en": "1", "zh-CN": "1"}	{}	{}	0.00	0.00	"{}"	\N	f	1	f	\N	0	2022-09-07 06:26:01.20109	2022-09-07 06:25:41.500743	2022-09-07 06:26:01.201099
38	8	{"en": "hat2", "zh-CN": "hat"}	{}	{}	12.50	12.50	"{}"	\N	f	1	f	\N	0	2022-09-08 04:02:14.26979	2022-09-08 03:57:56.264523	2022-09-08 04:02:14.269804
58	1	{"en": "2", "zh-CN": "2"}	{}	{}	0.00	0.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:37:41.819663	2022-09-08 07:15:51.292875	2022-09-08 07:37:41.819678
39	1	{"en": "1", "zh-CN": "1"}	{}	{}	12.50	12.50	"{}"	\N	f	\N	f	\N	0	2022-09-08 04:03:21.017077	2022-09-08 04:03:02.304372	2022-09-08 04:03:21.017083
72	8	{"en": " Otter Cup", "zh-CN": "水獭杯"}	{"en": "Our recommended products", "zh-CN": "本店推荐产品"}	{}	20.00	40.00	"{}"	2022-09-13 04:11:02	t	47	t	199	0	\N	2022-09-13 04:15:39.953463	2022-09-13 04:16:35.537647
3	1	{"en": "Giraffe Pillow ", "zh-CN": "长劲鹿抱枕"}	{"en": "The cute giraffe is cute and cute, and with the flannel-like blanket, it forms a perfect combination of pillow and quilt, which can take care of the baby's sleep time more safely", "zh-CN": "可爱的长颈鹿造型呆萌可爱，配合法兰绒一样的小毯子，组成了枕头、盖被的完美结合，可以更加安心呵护宝宝的睡眠时光"}	{}	15.00	15.00	"{}"	2022-09-09 03:35:58	t	49	t	100	0	\N	2022-09-01 07:05:29.144475	2022-09-13 03:24:51.093526
29	8	{"en": "Otter Doll ", "zh-CN": "水獭公仔"}	{"en": "Our best-selling products", "zh-CN": "本店热销产品"}	{"en": "If you like cute otters, this item is worth buying", "zh-CN": "如果你喜欢可爱的水獭，这件商品值得购买"}	18.80	25.00	"{}"	2022-09-20 16:00:00	t	48	t	\N	0	\N	2022-09-01 09:36:11.927107	2022-09-13 04:07:55.456815
60	1	{"en": "3", "zh-CN": "3"}	{}	{}	11.00	11.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:37:37.654597	2022-09-08 07:28:07.934127	2022-09-08 07:48:38.873684
73	1	{"en": "Panda Hat", "zh-CN": "熊猫帽"}	{"en": "Panda hat at Singapore Zoo", "zh-CN": "新加坡动物园的熊猫帽"}	{}	12.50	12.50	"{}"	2022-09-13 06:04:36	t	46	t	111	0	\N	2022-09-13 06:07:02.687268	2022-09-13 06:07:02.876423
46	8	{"en": "1", "zh-CN": "1"}	{}	{}	11.00	11.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 06:15:56.979863	2022-09-08 06:06:12.942221	2022-09-08 06:15:56.979871
70	1	{"en": "1", "zh-CN": "1"}	{}	{}	12.50	15.00	"{}"	2022-09-13 02:26:50	t	\N	f	\N	0	2022-09-13 06:11:27.111792	2022-09-08 10:09:31.700909	2022-09-13 06:11:27.111806
54	1	{"en": "11", "zh-CN": "11"}	{}	{}	11.00	11.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 06:36:13.268236	2022-09-08 06:34:50.286567	2022-09-08 06:36:13.268246
55	1	{"en": "11", "zh-CN": "111"}	{}	{}	11.00	11.00	"{}"	\N	f	10	f	\N	0	2022-09-08 06:39:33.309564	2022-09-08 06:36:47.457542	2022-09-08 06:39:33.309574
56	1	{"en": "11", "zh-CN": "11"}	{}	{}	12.50	12.50	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:13:21.863991	2022-09-08 07:12:57.281996	2022-09-08 07:13:21.864003
57	1	{"en": "11", "zh-CN": "111"}	{}	{}	12.50	12.50	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:27:14.262939	2022-09-08 07:13:57.134742	2022-09-08 07:27:14.262953
59	1	{"en": "11", "zh-CN": "11"}	{}	{}	12.50	12.50	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:29:54.799696	2022-09-08 07:27:31.158362	2022-09-08 07:29:54.799704
61	3	{"en": "12", "zh-CN": "22"}	{}	{}	0.00	0.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:30:38.235697	2022-09-08 07:30:13.490297	2022-09-08 07:30:38.23571
62	5	{"en": "22", "zh-CN": "22"}	{}	{}	0.00	0.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:32:19.492931	2022-09-08 07:30:48.50435	2022-09-08 07:32:19.492957
63	2	{"en": "22", "zh-CN": "22"}	{}	{}	0.00	0.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 07:33:13.178259	2022-09-08 07:32:06.943351	2022-09-08 07:33:13.17827
49	2	{"en": "1", "zh-CN": "1"}	{}	{}	15.00	15.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 09:22:12.3279	2022-09-08 06:22:18.786595	2022-09-08 09:22:12.327909
67	1	{"en": "1", "zh-CN": "1"}	{}	{}	15.00	15.00	"{}"	\N	f	\N	f	\N	0	2022-09-08 09:25:04.10429	2022-09-08 09:21:56.53146	2022-09-08 09:25:04.104568
69	1	{"en": " Kangaroo Doll", "zh-CN": "袋鼠玩偶"}	{}	{}	10.00	15.00	"{}"	\N	t	50	t	\N	0	2022-09-08 10:07:10.096994	2022-09-08 09:57:31.355105	2022-09-08 10:07:10.097007
\.


--
-- Data for Name: quotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quotations (id, user_id, content, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20220718064309
20220727024705
20220727032658
20220727032704
20220727061643
20220728023159
20220728023335
20220728023340
20220728023402
20220728023415
20220728024454
20220728024458
20220728024633
20220728033123
20220728033127
20220729022610
20220807052725
20220807052737
20220808144644
20220809072102
20220810121156
20220818094718
20220823015250
20220823015300
20220825111110
20220825111118
20220825111125
20220825111136
20220825111150
20220902085102
20220906070458
\.


--
-- Data for Name: shops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shops (id, name, active, searchable, ranking, charge_gst_separately, automated_order_confirmation, operation_time_start, operation_time_end, phone_number, email, whatsapp_number, "desc", short_desc, outlet_id, support_delivery, delivery_type, min_delivery_amount, free_delivery_amount, delivery_source_location_lat, delivery_source_location_lon, delivery_date_display_mode, delivery_number_of_days, delivery_cutoff_date, delivery_tips, delivery_fee_calculation_method, support_pickup, pickup_type, pickup_date_display_mode, coupon_expiration_days, self_pickup_tips, pickup_number_of_days, pickup_cutoff_date, deleted_at, created_at, updated_at) FROM stdin;
5	{"en": "Pizza Hut E-shop", "zh-CN": "必胜客线上店"}	t	t	0	f	t	2022-09-09 01:06:00	2022-09-09 08:06:00	55555555		555555	{"en": "\\nSteaming pizza is a family favorite, and whenever you want to take a break, there's something delicious waiting for you. After your pizza, you'll be satisfied with Pizza Hut's signature garlic bread and spicy chicken thighs.\\nSteaming pizza is a family favorite, and whenever you want to take a break, there's something delicious waiting for you. After your pizza, you'll be satisfied with Pizza Hut's signature garlic bread and spicy chicken thighs.\\n", "zh-CN": "热气腾腾的披萨是家庭游客的最爱，无论您什么时候想稍事休息，都有可口的披萨等您品尝。享用完披萨，再尝一尝必胜客标志性的蒜香面包和香辣鸡腿，让您心满意足。"}	{}	7	t	1	20.00	30.00	1.00000000	1.00000000	10	7	2023-01-02	{}	1	f	\N	\N	\N	{}	\N	\N	\N	2022-09-01 02:31:50.754289	2022-09-09 03:07:49.029849
6	{"en": "Night Safari Gift E-shop", "zh-CN": "夜间动物园礼品店网店"}	t	t	0	f	t	2022-09-09 08:07:00	2022-09-09 14:08:00	33333333		333333	{}	{"en": "Stop by our gift shop to find the perfect night safari souvenir.", "zh-CN": "到我们礼品店逛逛，选购心仪的夜间野生动物园游览纪念品。"}	8	f	\N	\N	\N	\N	\N	\N	\N	\N	{}	\N	t	1	1	\N	{"en": "Please pick up the goods within three days after the goods arrive at the pick-up point", "zh-CN": "请您在货物到达自提点三天内提货"}	7	\N	\N	2022-09-01 03:53:57.401374	2022-09-09 03:08:41.460164
7	{"en": "Ulu Ulu Wild Restaurant E-shop", "zh-CN": "乌鲁乌鲁野生餐厅网店"}	t	t	0	f	t	2022-09-08 22:30:00	2022-09-09 15:00:00	22222222		222222	{}	{"en": "Enjoy Singapore's favourites such as chicken rice, pilaf, roti chicken and red bean ice in a charming rural setting. This is a dining experience full of warmth and nostalgia, perfect to start or end an unforgettable evening.", "zh-CN": "在迷人的乡村环境中享用新加坡最受欢迎的美食，如鸡饭、印度手抓饭、印度式烤鸡和红豆冰等。这是一个充满温暖和怀旧的用餐体验，绝对是开始或结束一个难忘夜晚的完美选择。"}	9	f	\N	\N	\N	\N	\N	\N	\N	\N	{}	\N	f	\N	\N	\N	{}	\N	\N	\N	2022-09-01 03:57:38.059852	2022-09-09 03:11:10.810811
2	{"en": "E-KFC ", "zh-CN": "肯德基线上店"}	t	t	0	f	t	2022-09-09 00:00:00	2022-09-09 14:00:00	8888888	kfc@fooyo.sg	8888888	{"en": "Finger-sucking fried chicken paired with KFC's classic mashed potatoes or other savory treats are sure to whet your appetite!", "zh-CN": "令人吮指回味的炸鸡，配上肯德基的经典土豆泥或其他可口美食，定会让你胃口大开！"}	{"en": "Everyone loves KFC founder Colonel Sanders' secret spicy and crispy fried chicken!", "zh-CN": "人人都爱肯德基创始人桑德斯上校的秘制香辣酥脆炸鸡！"}	4	t	1	\N	\N	\N	\N	1	7	\N	{}	1	t	1	10	\N	{}	\N	2022-09-23	\N	2022-08-31 06:57:46.982688	2022-09-09 03:04:53.92023
3	{"en": "Ah Meng Restaurant E-shop", "zh-CN": "阿明饭店线上店"}	t	t	0	f	t	2022-09-09 01:05:00	2022-09-09 09:05:00	77777777	amre@fooyo.sg	77777	{}	{"en": "Wlcome to the Ah Meng Restaurant E-shop ,there are many specialties here", "zh-CN": "欢迎来到线上阿明饭店，这里有许多特色美食"}	5	t	1	10.00	30.00	2.00000000	2.00000000	1	7	\N	{}	1	t	1	1	\N	{}	7	\N	\N	2022-08-31 14:11:07.636025	2022-09-09 03:05:51.65522
4	{"en": " Feather House Gift E-shop", "zh-CN": "羽毛屋礼品店网店"}	t	t	0	f	t	2022-09-08 23:06:00	2022-09-09 11:06:00	66666666	fhge@fooyo.sg	6666666	{}	{"en": "If you like all kinds of birds , you can come here to buy souvenirs", "zh-CN": "如果你喜欢各种飞鸟禽类，你可以来到这里购买纪念品"}	6	f	\N	\N	\N	\N	\N	\N	\N	\N	{}	\N	f	\N	\N	\N	{}	\N	\N	\N	2022-09-01 01:34:22.417932	2022-09-09 03:06:21.251761
8	{"en": " River Wonders Gift E-shop", "zh-CN": "河川生态园礼品店网店"}	t	t	0	f	t	2022-09-09 11:37:00	2022-09-09 14:38:00	1111110		890889901	{"en": "Does our adorable panda make you want more? This bamboo forest-themed gift shop can help you renew your panda love. Here are super cute and pretty toys, clothes and exclusive souvenirs, all modeled after the lovely Kaikai and Jiajia, to keep as a souvenir for your panda trip to the bamboo forest", "zh-CN": "\\n我们可爱的大熊猫是否让您意犹未尽？这家竹林主题的礼品店可以帮您再续熊猫情。这里有超级可爱的漂亮玩具、衣服和专属纪念品，全部以可爱的凯凯和嘉嘉为原型，为您的大熊猫竹林之旅留作纪念"}	{"en": "Welcome to  River Wonders Gift E-shop", "zh-CN": "欢迎来到河川生态园礼品店网店"}	10	t	10	20.00	50.00	\N	\N	\N	\N	\N	{}	10	t	1	1	\N	{}	7	\N	\N	2022-09-01 06:59:18.252269	2022-09-09 03:13:00.125322
1	{"en": "Singapore Zoo Gift E-shop", "zh-CN": "新加坡动物园线上礼品店"}	t	t	0	f	t	2022-09-09 01:00:00	2022-09-09 12:00:00	11223344	SZGES@fooyo.sg	123412324	{"en": "Singapore Zoo Online Gift Shop offers a wide range of animal souvenirs，we wish you have a good shopping experience", "zh-CN": "新加坡动物园线上礼品店提供多种动物周边纪念品,祝您有一个好的购物体验"}	{"en": "Welcome to buy Singapore Zoo commemorative gifts！", "zh-CN": "欢迎购买新加坡动物园纪念礼品！"}	3	t	1	20.00	30.00	1.00000000	1.00000000	1	7	\N	{"en": "Due to Covid-19, the delivery schedule may be varied. The shop owner will double confirm with you the night before the delivery. Thanks for your understanding", "zh-CN": "由于 Covid-19，交货时间表可能会有所不同。 店主会在发货前一晚与您再次确认。 感谢您的理解！"}	10	t	1	10	\N	{"en": "Please come to the shop to pick up the product within three days", "zh-CN": "请您三天内到店提取产品"}	7	2022-09-24	\N	2022-08-31 04:20:58.573738	2022-09-09 03:03:45.058304
\.


--
-- Data for Name: sku_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sku_views (id, sku_id, master_sku_ref, name, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
15	7	SZ-KFC-Beef Hamburger-L	{"en": "Large Beef Burger", "zh-CN": "大号牛肉汉堡"}	\N	2022-09-08 02:52:13.951844	2022-09-09 02:32:11.051448	2022-09-09 02:32:11
4	15	SZ-AMR-Roast Chicken-A	{"en": "Roast Chicken", "zh-CN": "烤鸡"}	\N	2022-09-08 02:52:13.74569	2022-09-09 07:22:51.135035	2022-09-09 07:22:51
40	36	 NS-GS-Lion Toy-M	{"en": "Medium Lion Toy", "zh-CN": "中号狮子玩具"}	\N	2022-09-08 02:52:14.45296	2022-09-09 02:45:24.514598	2022-09-09 02:45:24
6	16	SZ-AMR-Grapefruit Guice-A	{"en": "Grapefruit Guice", "zh-CN": "鲜榨西柚汁"}	\N	2022-09-08 02:52:13.802114	2022-09-09 07:23:20.30521	2022-09-09 07:23:20
29	27	BP-PH-Tomato Pasta-A	{"en": "Tomato Pasta", "zh-CN": "番茄意面"}	\N	2022-09-08 02:52:14.188913	2022-09-09 07:24:25.032747	2022-09-09 07:24:24
8	18	BP-FHGS-Flamingo T-Shirt-P-S	{"en": "Small Flamingo T-Shirt", "zh-CN": "小号火烈鸟体恤衫"}	\N	2022-09-08 02:52:13.827199	2022-09-09 02:37:47.117557	2022-09-09 02:37:47
9	19	BP-FHGS-Flamingo T-Shirt-P-L	{"en": "Large Flamingo T-Shirt", "zh-CN": "大号火烈鸟体恤衫"}	\N	2022-09-08 02:52:13.841459	2022-09-09 02:38:20.579917	2022-09-09 02:38:20
47	28	BP-PH-Vanilla Anchovy Shrimp-A	{"en": "Vanilla Anchovy Shrimp", "zh-CN": "香草凤尾虾"}	\N	2022-09-08 02:52:14.614114	2022-09-09 07:26:09.18222	2022-09-09 07:26:09
22	13	SZ-AMR- Indian Turmeric Rice-A	{"en": "Indian Turmeric Rice", "zh-CN": "印度黄姜炒饭"}	\N	2022-09-08 02:52:14.063973	2022-09-09 07:18:54.85701	2022-09-09 07:18:54
12	5	SZ-GS-Elephant Keychain-G-A	{"en": "Elephant Keychain", "zh-CN": "大象钥匙扣"}	\N	2022-09-08 02:52:13.888132	2022-09-09 06:25:53.122595	2022-09-09 06:25:53
21	12	SZ-KFC-Fries-S	{"en": "Small Fries", "zh-CN": "小份薯条"}	\N	2022-09-08 02:52:14.046163	2022-09-09 06:21:11.325245	2022-09-09 06:21:11
49	51		{"en": "2", "zh-CN": "22"}	\N	2022-09-09 09:40:22.602407	2022-09-09 09:40:22.602407	2022-09-09 09:40:22
16	8	SZ-KFC-Beef Hamburger-S	{"en": "Small Beef Burger", "zh-CN": "小份牛肉汉堡"}	\N	2022-09-08 02:52:13.964066	2022-09-09 02:32:43.670564	2022-09-09 02:32:43
5	17	SZ-AMR-Grape Guice-A	{"en": "Grape Guice", "zh-CN": "鲜榨葡萄汁"}	\N	2022-09-08 02:52:13.769156	2022-09-09 07:23:42.852089	2022-09-09 07:23:42
23	21	BP-FHGS-Penguin Doll-S	{"en": "Small Penguin Doll", "zh-CN": "小号企鹅公仔"}	\N	2022-09-08 02:52:14.074914	2022-09-09 02:40:11.161317	2022-09-09 02:40:11
18	10	SZ-KFC-Coke-S	{"en": "Small Coke", "zh-CN": "小杯可乐"}	\N	2022-09-08 02:52:13.998432	2022-09-08 06:08:35.613134	2022-09-08 06:08:35
19	11	SZ-GS- Fries-L	{"en": "Large Fries", "zh-CN": "大份薯条"}	\N	2022-09-08 02:52:14.015305	2022-09-08 06:08:35.631172	2022-09-08 06:08:35
20	9	SZ-KFC-Coke-L	{"en": "Large Coke", "zh-CN": "大杯可乐"}	\N	2022-09-08 02:52:14.032363	2022-09-08 06:08:35.654542	2022-09-08 06:08:35
10	4	SZ-GS-Zebra Badge-O-A	{"en": "Zebra Badge", "zh-CN": "斑马徽章"}	\N	2022-09-08 02:52:13.857399	2022-09-09 06:21:59.123967	2022-09-09 06:21:59
2	14	SZ-AMR-Hainan Chicken Rice-A	{"en": "Hainan Chicken Rice", "zh-CN": "海南鸡肉饭"}	\N	2022-09-08 02:52:13.70863	2022-09-09 07:19:16.610664	2022-09-09 07:19:16
24	22	BP-FHGS-Penguin Doll-M	{"en": "Medium Penguin Doll", "zh-CN": "中号企鹅公仔"}	\N	2022-09-08 02:52:14.097977	2022-09-09 02:40:45.890285	2022-09-09 02:40:45
25	23	BP-FHGS-Penguin Doll-L	{"en": "Large Penguin Doll", "zh-CN": "大号企鹅公仔"}	\N	2022-09-08 02:52:14.117813	2022-09-09 02:41:43.942767	2022-09-09 02:41:43
26	24	BP-FHGS-Parrot Doll-B-L	{"en": "Large Blue Parrot Doll", "zh-CN": "大号蓝色鹦鹉玩偶"}	\N	2022-09-08 02:52:14.134254	2022-09-09 02:42:15.681304	2022-09-09 02:42:15
27	25	BP-FHGS-Parrot Doll-R-M	{"en": "Medium Red Parrot Doll", "zh-CN": "中号红色鹦鹉玩偶"}	\N	2022-09-08 02:52:14.152714	2022-09-09 02:42:40.568239	2022-09-09 02:42:40
28	26	BP-FHGS-Parrot Doll-W-S	{"en": "Small White Parrot Doll", "zh-CN": "小号白色鹦鹉玩偶"}	\N	2022-09-08 02:52:14.172878	2022-09-09 02:43:48.762457	2022-09-09 02:43:48
41	34	NS-GS-Lion Toy-L	{"en": "Large Lion Toy", "zh-CN": "大号狮子玩具"}	\N	2022-09-08 02:52:14.470489	2022-09-09 02:44:34.347068	2022-09-09 02:44:34
17	20	BP-FHGS-Flamingo Water Cup-A	{"en": "Flamingo Water Cup", "zh-CN": "火烈鸟水杯"}	\N	2022-09-08 02:52:13.979888	2022-09-09 07:25:49.277898	2022-09-09 07:25:49
13	49	RW-GS-Otter Cup-Bl-A	{"en": "Blue Otter Cup", "zh-CN": "蓝色水獭杯"}	\N	2022-09-08 02:52:13.903443	2022-09-09 07:28:32.01364	2022-09-09 07:28:31
30	46	RW-GS-Otter Doll-L	{"en": "Large Otter Doll", "zh-CN": "大号水獭公仔"}	\N	2022-09-08 02:52:14.202708	2022-09-09 02:48:27.469097	2022-09-09 02:48:27
31	45	RW-GS-Otter Doll-S	{"en": "Small Otter Doll", "zh-CN": "小号水獭公仔"}	\N	2022-09-08 02:52:14.221667	2022-09-09 02:47:49.313628	2022-09-09 02:47:49
14	47	RW-GS-Otter Cup-Gr-A	{"en": "Green Otter Cup", "zh-CN": "绿色水獭杯"}	\N	2022-09-08 02:52:13.918955	2022-09-09 07:28:21.181406	2022-09-09 07:28:21
33	43	RW-GS-Panda Doll-L	{"en": "Large Panda Doll", "zh-CN": "大号熊猫玩具"}	\N	2022-09-08 02:52:14.272819	2022-09-09 02:46:45.908466	2022-09-09 02:46:45
32	44	RW-GS-Panda Hat-A	{"en": "Panda Hat", "zh-CN": "熊猫帽"}	\N	2022-09-08 02:52:14.25484	2022-09-09 07:27:46.741534	2022-09-09 07:27:46
36	40	NS-UUR-Curry Chicken Rices-L	{"en": "Large Curry Chicken Rices", "zh-CN": "大份咖喱鸡肉饭"}	\N	2022-09-08 02:52:14.371985	2022-09-08 06:08:36.073179	2022-09-08 06:08:36
37	39	 NS-UUR-Curry Chicken Rices-S	{"en": "Small Curry Chicken Rices", "zh-CN": "小份咖喱鸡肉饭"}	\N	2022-09-08 02:52:14.388789	2022-09-08 06:08:36.09078	2022-09-08 06:08:36
39	38	NS-UUR-Indian Pancakes-A	{"en": "Indian Pancakes", "zh-CN": "印度甩饼"}	\N	2022-09-08 02:52:14.430782	2022-09-09 07:27:03.151757	2022-09-09 07:27:03
35	41	NS-UUR-Red Bean Ice-A	{"en": "Red Bean Ice", "zh-CN": "红豆冰"}	\N	2022-09-08 02:52:14.358339	2022-09-09 07:27:22.955668	2022-09-09 07:27:22
34	42	RW-GS-Panda Doll-S	{"en": "Small Panda Doll", "zh-CN": "小号熊猫玩具"}	\N	2022-09-08 02:52:14.289171	2022-09-09 02:46:18.975166	2022-09-09 02:46:18
3	35	NS-GS-Lion Toy-S	{"en": "Small Lion Toy", "zh-CN": "小号狮子玩具"}	\N	2022-09-08 02:52:13.726488	2022-09-09 02:44:57.783552	2022-09-09 02:44:57
38	37	NS-UUR-Indian Pilaf-A	{"en": "Indian Pilaf", "zh-CN": "印度手抓饭"}	\N	2022-09-08 02:52:14.404304	2022-09-09 07:26:43.598268	2022-09-09 07:26:43
43	32	BP-PH-Seafood Pizza-L	{"en": "Large Seafood Pizza", "zh-CN": "大份海鲜披萨"}	\N	2022-09-08 02:52:14.510898	2022-09-08 06:08:36.189734	2022-09-08 06:08:36
44	31	BP-PH-Seafood Pizza-S	{"en": "Small Seafood Pizza", "zh-CN": "小份海鲜披萨"}	\N	2022-09-08 02:52:14.539382	2022-09-08 06:08:36.205458	2022-09-08 06:08:36
45	30	BP-PH-Durian Pizza-L	{"en": "Large Durian Pizza", "zh-CN": "大份榴莲披萨"}	\N	2022-09-08 02:52:14.557685	2022-09-08 06:08:36.227446	2022-09-08 06:08:36
46	29	BP-PH-Durian Pizza-S	{"en": "Small Durian Pizza", "zh-CN": "小份榴莲披萨"}	\N	2022-09-08 02:52:14.59671	2022-09-08 06:08:36.24098	2022-09-08 06:08:36
42	33	BP-PH-Black Pepper Steak-A	{"en": "Black Pepper Steak", "zh-CN": "黑椒牛排"}	\N	2022-09-08 02:52:14.491504	2022-09-09 07:26:28.56992	2022-09-09 07:26:28
7	2	SZ-GS-Kangaroo Doll-Gr-L	{"en": "Grey Large Kangaroo Doll", "zh-CN": "灰色大号袋鼠玩偶"}	\N	2022-09-08 02:52:13.821446	2022-09-08 06:59:50.826885	2022-09-08 06:59:50
48	50	12345	{"en": "test", "zh-CN": "测试"}	\N	2022-09-08 06:19:17.735295	2022-09-09 01:53:53.739345	2022-09-09 01:53:53
1	1	SZ-GS-Kangaroo Doll-Br-S	{"en": "Brown Small Kangaroo Doll", "zh-CN": "棕色小号袋鼠玩偶"}	\N	2022-09-08 02:50:42.463519	2022-09-08 06:57:20.820952	2022-09-08 06:57:20
50	52	22	{"en": "test2", "zh-CN": "test2"}	\N	2022-09-13 03:05:59.775581	2022-09-13 03:05:59.775581	2022-09-13 03:05:59
11	3	SZ-GS-Giraffe Pillow-Y-M	{"en": "Medium Giraffe Pillow", "zh-CN": "中号长劲鹿抱枕"}	\N	2022-09-08 02:52:13.872698	2022-09-13 03:33:43.716043	2022-09-13 03:33:43
\.


--
-- Data for Name: user_group_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_group_members (id, user_group_id, user_id, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_groups (id, name, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, name, user_type, phone_number, device_key, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, deleted_at, created_at, updated_at) FROM stdin;
1	huyang@fooyo.sg	huyang	\N	19983141609	\N	$2a$12$vOQNkjKMhZ.SHPFQ9I8tW.mAfvkqojf/3CYVxExFDaWowHgJ.SW9q	\N	\N	\N	\N	2022-09-05 09:56:53.279613	2022-09-05 09:56:53.279613
2	q@fooyo.sg	rick	\N	92987696	\N	$2a$12$9OZrJpTIEk30EMg29ZicyeE.zzEu6qLAqlmM4OFVtDrFHvJqSaXeO	\N	\N	\N	\N	2022-09-05 09:56:53.636726	2022-09-05 09:56:53.636726
3	c@fooyo.sg	zeyu	\N	19983141611	\N	$2a$12$gG4a/XDOJ/B3VTgyikrcGO33olGOUvdLR5LGaYkZmH4LmerAV4ZqW	\N	\N	\N	\N	2022-09-05 09:56:53.978111	2022-09-05 09:56:53.978111
4	ruijian@fooyo.sg	ruijian	\N	19983141612	\N	$2a$12$Yf7f/hF07ZkqztQy30FQG.r6lj5m5ONlV0q9irs77ZkXxETG4hCta	\N	\N	\N	\N	2022-09-05 09:56:54.326849	2022-09-05 09:56:54.326849
5	y@fooyo.sg	yangfan	\N	97161538	\N	$2a$12$wtGTu2pEHGeLzNrqR6d0TeTEWBJJ1.cRFWkbSyFdyDcmVbkaQgeVm	\N	\N	\N	\N	2022-09-05 09:56:54.672533	2022-09-05 09:56:54.672533
\.


--
-- Data for Name: variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variants (id, variation_id, name, deleted_at, created_at, updated_at) FROM stdin;
3	3	{"en": "large", "zh-CN": "大份"}	\N	2022-08-31 07:34:33.585107	2022-08-31 07:34:33.585107
4	3	{"en": "small", "zh-CN": "小份"}	\N	2022-08-31 07:34:33.591224	2022-08-31 07:34:33.591224
5	4	{"en": "large", "zh-CN": "大杯"}	\N	2022-09-01 07:16:11.693629	2022-09-01 07:16:11.693629
6	4	{"en": "small", "zh-CN": "小杯"}	\N	2022-09-01 07:16:11.699634	2022-09-01 07:16:11.699634
7	5	{"en": "small ", "zh-CN": "小份"}	\N	2022-09-01 07:23:04.625362	2022-09-01 07:23:04.625362
8	5	{"en": "large", "zh-CN": "大份"}	\N	2022-09-01 07:23:04.632062	2022-09-01 07:23:04.632062
9	6	{"en": "pink", "zh-CN": "粉色"}	\N	2022-09-01 08:21:58.925529	2022-09-01 08:21:58.925529
10	7	{"en": "small", "zh-CN": "小号"}	\N	2022-09-01 08:21:58.95008	2022-09-01 08:21:58.95008
11	7	{"en": "large", "zh-CN": "大号"}	\N	2022-09-01 08:21:58.957608	2022-09-01 08:21:58.957608
12	8	{"en": "small", "zh-CN": "小号"}	\N	2022-09-01 08:29:53.4101	2022-09-01 08:29:53.4101
13	8	{"en": "medium", "zh-CN": "中号"}	\N	2022-09-01 08:29:53.418967	2022-09-01 08:29:53.418967
14	8	{"en": "large", "zh-CN": "大号"}	\N	2022-09-01 08:29:53.427655	2022-09-01 08:29:53.427655
15	9	{"en": "blue", "zh-CN": "蓝色"}	\N	2022-09-01 08:37:44.873952	2022-09-01 08:37:44.873952
16	9	{"en": "red", "zh-CN": "红色"}	\N	2022-09-01 08:37:44.879558	2022-09-01 08:37:44.879558
17	9	{"en": "white", "zh-CN": "白色"}	\N	2022-09-01 08:37:44.885448	2022-09-01 08:37:44.885448
18	10	{"en": "small", "zh-CN": "小号"}	\N	2022-09-01 08:37:44.89913	2022-09-01 08:37:44.89913
19	10	{"en": "medium", "zh-CN": "中号"}	\N	2022-09-01 08:37:44.918483	2022-09-01 08:37:44.918483
20	10	{"en": "large", "zh-CN": "大号"}	\N	2022-09-01 08:37:44.928661	2022-09-01 08:37:44.928661
21	11	{"en": "small", "zh-CN": "小尺寸"}	\N	2022-09-01 08:54:44.520304	2022-09-01 08:54:44.520304
22	11	{"en": "large", "zh-CN": "大尺寸"}	\N	2022-09-01 08:54:44.525539	2022-09-01 08:54:44.525539
23	12	{"en": "small", "zh-CN": "小尺寸"}	\N	2022-09-01 08:57:35.978705	2022-09-01 08:57:35.978705
24	12	{"en": "large", "zh-CN": "大尺寸"}	\N	2022-09-01 08:57:35.99205	2022-09-01 08:57:35.99205
25	13	{"en": "small", "zh-CN": "小号"}	\N	2022-09-01 09:09:04.45369	2022-09-01 09:09:04.45369
26	13	{"en": "medium", "zh-CN": "中号"}	\N	2022-09-01 09:09:04.459276	2022-09-01 09:09:04.459276
27	13	{"en": "large", "zh-CN": "大号"}	\N	2022-09-01 09:09:04.469265	2022-09-01 09:09:04.469265
28	14	{"en": "small", "zh-CN": "小份"}	\N	2022-09-01 09:16:26.046232	2022-09-01 09:16:26.046232
29	14	{"en": "large", "zh-CN": "大份"}	\N	2022-09-01 09:16:26.055993	2022-09-01 09:16:26.055993
30	15	{"en": "small", "zh-CN": "小号"}	\N	2022-09-01 09:28:12.246526	2022-09-01 09:28:12.246526
31	15	{"en": "large", "zh-CN": "大号"}	\N	2022-09-01 09:28:12.257402	2022-09-01 09:28:12.257402
32	16	{"en": "small", "zh-CN": "小号"}	\N	2022-09-01 09:36:11.974024	2022-09-01 09:36:11.974024
33	16	{"en": "large", "zh-CN": "大号"}	\N	2022-09-01 09:36:11.981803	2022-09-01 09:36:11.981803
91	57	{"en": "medium", "zh-CN": "中号"}	\N	2022-09-08 08:38:41.255113	2022-09-08 08:38:41.255113
92	58	{"en": "yellow", "zh-CN": "黄色"}	\N	2022-09-08 08:38:41.27221	2022-09-08 08:38:41.27221
93	60	{"en": "small", "zh-CN": "小号"}	\N	2022-09-08 09:24:16.561175	2022-09-08 09:24:16.561175
1	1	{"en": "brown", "zh-CN": "棕色"}	2022-09-06 01:28:28.818985	2022-08-31 05:57:00.588416	2022-09-06 01:28:28.819006
2	2	{"en": "small", "zh-CN": "小号"}	2022-09-06 01:28:28.823558	2022-08-31 05:57:00.605119	2022-09-06 01:28:28.823566
94	60	{"en": "large", "zh-CN": "大号"}	\N	2022-09-08 09:24:16.566864	2022-09-08 09:24:16.566864
95	61	{"en": "brown", "zh-CN": "棕色"}	\N	2022-09-08 09:24:16.578171	2022-09-08 09:24:16.578171
96	61	{"en": "grey", "zh-CN": "灰色"}	\N	2022-09-08 09:24:16.583375	2022-09-08 09:24:16.583375
97	62	{"en": "small", "zh-CN": "小号"}	2022-09-08 10:07:10.079841	2022-09-08 09:57:31.430273	2022-09-08 10:07:10.079852
98	62	{"en": "large", "zh-CN": "大号"}	2022-09-08 10:07:10.08164	2022-09-08 09:57:31.436307	2022-09-08 10:07:10.081651
99	63	{"en": "brown", "zh-CN": "棕色"}	2022-09-08 10:07:10.085408	2022-09-08 09:57:31.452691	2022-09-08 10:07:10.085416
100	63	{"en": "grey", "zh-CN": "灰色"}	2022-09-08 10:07:10.086445	2022-09-08 09:57:31.463458	2022-09-08 10:07:10.086452
34	17	{"en": "green", "zh-CN": "绿色"}	2022-09-06 09:10:37.417017	2022-09-01 09:40:17.404045	2022-09-06 09:10:37.417028
35	17	{"en": "blue", "zh-CN": "蓝色"}	2022-09-06 09:10:37.418859	2022-09-01 09:40:17.413214	2022-09-06 09:10:37.418868
105	66	{"en": "average", "zh-CN": "均码"}	\N	2022-09-09 06:17:43.053939	2022-09-09 06:17:43.053939
106	67	{"en": "orange", "zh-CN": "橙色"}	\N	2022-09-09 06:17:43.066194	2022-09-09 06:17:43.066194
107	68	{"en": "average", "zh-CN": "均码"}	\N	2022-09-09 06:20:06.393609	2022-09-09 06:20:06.393609
108	69	{"en": "grey", "zh-CN": "灰色"}	\N	2022-09-09 06:20:06.420488	2022-09-09 06:20:06.420488
109	70	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 06:41:43.288338	2022-09-09 06:41:43.288338
55	31	{"en": "1", "zh-CN": "1"}	2022-09-07 06:26:01.193684	2022-09-07 06:25:41.526503	2022-09-07 06:26:01.193696
110	71	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:30:07.254768	2022-09-09 07:30:07.254768
111	72	{"en": "average", "zh-CN": "均码"}	\N	2022-09-09 07:44:02.024035	2022-09-09 07:44:02.024035
112	73	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:46:11.270064	2022-09-09 07:46:11.270064
113	74	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:47:49.25476	2022-09-09 07:47:49.25476
114	75	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:49:45.749162	2022-09-09 07:49:45.749162
115	76	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:51:00.605484	2022-09-09 07:51:00.605484
116	77	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:52:19.598568	2022-09-09 07:52:19.598568
117	78	{"en": "average", "zh-CN": "均等份"}	\N	2022-09-09 07:54:45.088381	2022-09-09 07:54:45.088381
118	79	{"en": "average", "zh-CN": "均等量"}	\N	2022-09-09 08:00:58.6291	2022-09-09 08:00:58.6291
119	80	{"en": "average", "zh-CN": "均等寸"}	\N	2022-09-09 08:02:01.602146	2022-09-09 08:02:01.602146
120	81	{"en": "average", "zh-CN": "均等量"}	\N	2022-09-09 08:02:58.796762	2022-09-09 08:02:58.796762
121	82	{"en": "whole chicken", "zh-CN": "一整只"}	\N	2022-09-09 08:04:54.182961	2022-09-09 08:04:54.182961
122	83	{"en": "average", "zh-CN": "均号"}	\N	2022-09-13 04:15:40.025947	2022-09-13 04:15:40.025947
123	84	{"en": "green", "zh-CN": "绿色"}	\N	2022-09-13 04:15:40.0423	2022-09-13 04:15:40.0423
124	84	{"en": "blue", "zh-CN": "蓝色"}	\N	2022-09-13 04:15:40.047604	2022-09-13 04:15:40.047604
125	85	{"en": "average", "zh-CN": "均码"}	\N	2022-09-13 06:07:02.788798	2022-09-13 06:07:02.788798
126	86	{"en": "black and white", "zh-CN": "黑白相间"}	\N	2022-09-13 06:07:02.808513	2022-09-13 06:07:02.808513
127	87	{"en": "black and white ", "zh-CN": "黑白相间"}	\N	2022-09-13 06:11:16.282264	2022-09-13 06:11:16.282264
101	64	{"en": "2", "zh-CN": "2"}	2022-09-13 06:11:27.08378	2022-09-08 10:09:31.762099	2022-09-13 06:11:27.083793
102	64	{"en": "3", "zh-CN": "3"}	2022-09-13 06:11:27.085162	2022-09-08 10:09:31.767697	2022-09-13 06:11:27.085177
103	65	{"en": "5", "zh-CN": "5"}	2022-09-13 06:11:27.092735	2022-09-08 10:09:31.779326	2022-09-13 06:11:27.092747
104	65	{"en": "6", "zh-CN": "6"}	2022-09-13 06:11:27.094161	2022-09-08 10:09:31.785426	2022-09-13 06:11:27.09417
\.


--
-- Data for Name: variations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variations (id, product_id, name, ranking, deleted_at, created_at, updated_at) FROM stdin;
57	3	{"en": "Size", "zh-CN": "尺寸"}	0	\N	2022-09-08 08:38:41.240887	2022-09-08 08:38:41.240887
3	2	{"en": "Size", "zh-CN": "分量"}	1	\N	2022-08-31 07:34:33.576223	2022-08-31 07:34:33.576223
58	3	{"en": "Color", "zh-CN": "颜色"}	0	\N	2022-09-08 08:38:41.264169	2022-09-08 08:38:41.264169
59	49	{"en": "red", "zh-CN": "红色"}	0	2022-09-08 09:22:12.323479	2022-09-08 08:47:12.528031	2022-09-08 09:22:12.323505
60	68	{"en": "Size", "zh-CN": "尺寸"}	1	\N	2022-09-08 09:24:16.555467	2022-09-08 09:24:16.555467
61	68	{"en": "Color", "zh-CN": "颜色"}	2	\N	2022-09-08 09:24:16.572561	2022-09-08 09:24:16.572561
4	6	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 07:16:11.687194	2022-09-01 07:16:11.687194
5	7	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 07:23:04.616981	2022-09-01 07:23:04.616981
6	13	{"en": "Color", "zh-CN": "颜色"}	1	\N	2022-09-01 08:21:58.908274	2022-09-01 08:21:58.908274
7	13	{"en": "Size", "zh-CN": "规格"}	2	\N	2022-09-01 08:21:58.937487	2022-09-01 08:21:58.937487
8	15	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 08:29:53.40144	2022-09-01 08:29:53.40144
9	16	{"en": "Color", "zh-CN": "颜色"}	1	\N	2022-09-01 08:37:44.867696	2022-09-01 08:37:44.867696
10	16	{"en": "Size", "zh-CN": "规格"}	2	\N	2022-09-01 08:37:44.891593	2022-09-01 08:37:44.891593
11	19	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 08:54:44.51391	2022-09-01 08:54:44.51391
12	20	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 08:57:35.94888	2022-09-01 08:57:35.94888
13	22	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 09:09:04.447659	2022-09-01 09:09:04.447659
14	25	{"en": "Size", "zh-CN": "份量"}	1	\N	2022-09-01 09:16:26.033145	2022-09-01 09:16:26.033145
15	27	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 09:28:12.238875	2022-09-01 09:28:12.238875
16	29	{"en": "Size", "zh-CN": "规格"}	1	\N	2022-09-01 09:36:11.967452	2022-09-01 09:36:11.967452
62	69	{"en": "Size", "zh-CN": "尺寸"}	1	2022-09-08 10:07:10.082875	2022-09-08 09:57:31.423439	2022-09-08 10:07:10.082884
63	69	{"en": "Color", "zh-CN": "颜色"}	2	2022-09-08 10:07:10.087674	2022-09-08 09:57:31.4435	2022-09-08 10:07:10.087682
1	1	{"en": "Color", "zh-CN": "颜色"}	1	2022-09-06 01:28:28.820533	2022-08-31 05:57:00.555635	2022-09-06 01:28:28.820554
2	1	{"en": "Size", "zh-CN": "大小"}	2	2022-09-06 01:28:28.824742	2022-08-31 05:57:00.598102	2022-09-06 01:28:28.82475
66	4	{"en": "Size", "zh-CN": "尺寸"}	0	\N	2022-09-09 06:17:43.042599	2022-09-09 06:17:43.042599
67	4	{"en": "Color", "zh-CN": "颜色"}	0	\N	2022-09-09 06:17:43.060914	2022-09-09 06:17:43.060914
68	5	{"en": "Size", "zh-CN": "尺寸"}	0	\N	2022-09-09 06:20:06.384844	2022-09-09 06:20:06.384844
69	5	{"en": "Color", "zh-CN": "颜色"}	0	\N	2022-09-09 06:20:06.403922	2022-09-09 06:20:06.403922
70	8	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 06:41:43.282346	2022-09-09 06:41:43.282346
71	9	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 07:30:07.248435	2022-09-09 07:30:07.248435
17	30	{"en": "Color", "zh-CN": "颜色"}	1	2022-09-06 09:10:37.419988	2022-09-01 09:40:17.395473	2022-09-06 09:10:37.419995
72	28	{"en": "Size", "zh-CN": "尺寸"}	0	\N	2022-09-09 07:44:02.016772	2022-09-09 07:44:02.016772
73	26	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 07:46:11.263802	2022-09-09 07:46:11.263802
74	24	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 07:47:49.249153	2022-09-09 07:47:49.249153
75	23	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 07:49:45.742793	2022-09-09 07:49:45.742793
76	21	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 07:51:00.598124	2022-09-09 07:51:00.598124
77	18	{"en": "Size ", "zh-CN": "份量"}	0	\N	2022-09-09 07:52:19.592617	2022-09-09 07:52:19.592617
78	17	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 07:54:45.082823	2022-09-09 07:54:45.082823
79	12	{"en": "Cup Size", "zh-CN": "杯量"}	0	\N	2022-09-09 08:00:58.623097	2022-09-09 08:00:58.623097
31	34	{"en": "1", "zh-CN": "1"}	1	2022-09-07 06:26:01.195421	2022-09-07 06:25:41.519775	2022-09-07 06:26:01.195437
80	14	{"en": "Size", "zh-CN": "尺寸"}	0	\N	2022-09-09 08:02:01.59618	2022-09-09 08:02:01.59618
81	11	{"en": "Cup Size", "zh-CN": "杯量"}	0	\N	2022-09-09 08:02:58.790722	2022-09-09 08:02:58.790722
82	10	{"en": "Size", "zh-CN": "份量"}	0	\N	2022-09-09 08:04:54.177535	2022-09-09 08:04:54.177535
83	72	{"en": "Size", "zh-CN": "尺寸"}	1	\N	2022-09-13 04:15:40.01117	2022-09-13 04:15:40.01117
84	72	{"en": "Color", "zh-CN": "颜色"}	2	\N	2022-09-13 04:15:40.035389	2022-09-13 04:15:40.035389
85	73	{"en": "Size", "zh-CN": "尺寸"}	1	\N	2022-09-13 06:07:02.77437	2022-09-13 06:07:02.77437
86	73	{"en": "Color", "zh-CN": "颜色"}	2	\N	2022-09-13 06:07:02.800435	2022-09-13 06:07:02.800435
87	28	{"en": "Color", "zh-CN": "颜色"}	0	\N	2022-09-13 06:11:16.26859	2022-09-13 06:11:16.26859
64	70	{"en": "1", "zh-CN": "1"}	1	2022-09-13 06:11:27.088132	2022-09-08 10:09:31.75572	2022-09-13 06:11:27.088146
65	70	{"en": "4", "zh-CN": "4"}	2	2022-09-13 06:11:27.095305	2022-09-08 10:09:31.773117	2022-09-13 06:11:27.095315
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, item_type, item_id, event, whodunnit, object_changes, created_at) FROM stdin;
1	AdminUser	1	create	\N	---\nid:\n- \n- 1\nemail:\n- \n- qa@fooyo.sg\nphone_number:\n- \n- '19983141600'\nname:\n- \n- qa\nencrypted_password:\n- \n- "$2a$12$KXS4QOI3ceicCYCeTJCFu.O8GBC4RtiWLxsqIcz1ZLS6rjt7XVDUi"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-29 16:48:53.201821000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-29 16:48:53.201821000 Z\n	2022-08-29 16:48:53.201821
2	Image	1	create	0qa(1)	---\nid:\n- \n- 1\nimage:\n- \n- SZG_E-SHOP.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 03:48:49.923086000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 03:48:49.923086000 Z\n	2022-08-31 03:48:49.923086
3	Shop	1	create	0qa(1)	---\nid:\n- \n- 1\nname:\n- \n- '{"en":"Singapore Zoo Gift E-shop","zh-CN":"新加坡动物园线上礼品店"}'\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 22:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 22:00:00.000000000 Z\nphone_number:\n- \n- '11223344'\nemail:\n- \n- SZGES@fooyo.sg\nwhatsapp_number:\n- \n- '123412324'\ndesc:\n- \n- '{"en":"Singapore Zoo Online Gift Shop offers a wide range of animal souvenirs，we\n  wish you have a good shopping experience","zh-CN":"新加坡动物园线上礼品店提供多种动物周边纪念品,祝您有一个好的购物体验"}'\nshort_desc:\n- \n- '{"en":"Welcome to buy Singapore Zoo commemorative gifts！","zh-CN":"欢迎购买新加坡动物园纪念礼品！"}'\noutlet_id:\n- \n- 3\nsupport_delivery:\n- false\n- true\ndelivery_type:\n- \n- 1\nmin_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.2e2\nfree_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.3e2\ndelivery_source_location_lat:\n- \n- !ruby/object:BigDecimal 18:0.1e1\ndelivery_source_location_lon:\n- \n- !ruby/object:BigDecimal 18:0.1e1\ndelivery_date_display_mode:\n- \n- 1\ndelivery_number_of_days:\n- \n- 7\ndelivery_tips:\n- \n- '{"en":"Due to Covid-19, the delivery schedule may be varied. The shop owner will\n  double confirm with you the night before the delivery. Thanks for your understanding","zh-CN":"由于\n  Covid-19，交货时间表可能会有所不同。 店主会在发货前一晚与您再次确认。 感谢您的理解！"}'\ndelivery_fee_calculation_method:\n- \n- 10\nsupport_pickup:\n- \n- true\npickup_type:\n- \n- 1\npickup_date_display_mode:\n- \n- 10\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\npickup_number_of_days:\n- \n- 7\npickup_cutoff_date:\n- \n- 2035-08-01\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.573738000 Z\n  zone: *1\n  time: 2022-08-31 04:20:58.573738000 Z\nname_en:\n- \n- Singapore Zoo Gift E-shop\nname_zh_cn:\n- \n- 新加坡动物园线上礼品店\ndesc_en:\n- \n- Singapore Zoo Online Gift Shop offers a wide range of animal souvenirs，we wish you\n  have a good shopping experience\ndesc_zh_cn:\n- \n- 新加坡动物园线上礼品店提供多种动物周边纪念品,祝您有一个好的购物体验\nshort_desc_en:\n- \n- Welcome to buy Singapore Zoo commemorative gifts！\nshort_desc_zh_cn:\n- \n- 欢迎购买新加坡动物园纪念礼品！\ndelivery_tips_en:\n- \n- Due to Covid-19, the delivery schedule may be varied. The shop owner will double\n  confirm with you the night before the delivery. Thanks for your understanding\ndelivery_tips_zh_cn:\n- \n- 由于 Covid-19，交货时间表可能会有所不同。 店主会在发货前一晚与您再次确认。 感谢您的理解！\n	2022-08-31 04:20:58.573738
4	NoFulfillmentDate	1	create	0qa(1)	---\nid:\n- \n- 1\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 1\nstart_date:\n- \n- 2022-08-29\nend_date:\n- \n- 2022-09-04\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.607633000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 04:20:58.607633000 Z\n	2022-08-31 04:20:58.607633
5	NoFulfillmentDate	2	create	0qa(1)	---\nid:\n- \n- 2\nfulfillment_type:\n- \n- 10\nshop_id:\n- \n- 1\nstart_date:\n- \n- 2022-08-29\nend_date:\n- \n- 2022-09-04\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.614831000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 04:20:58.614831000 Z\n	2022-08-31 04:20:58.614831
6	FulfillmentTimeSlot	1	create	0qa(1)	---\nid:\n- \n- 1\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 1\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 09:00:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 19:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 19:00:00.000000000 Z\ncutoff:\n- \n- 10\nquota:\n- \n- 10000\nwarning_quota:\n- \n- 10\ndays_of_week:\n- []\n- - 1\n  - 2\n  - 3\n  - 4\n  - 5\nsurcharge:\n- \n- ''\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.640407000 Z\n  zone: *1\n  time: 2022-08-31 04:20:58.640407000 Z\n	2022-08-31 04:20:58.640407
7	FulfillmentTimeSlot	2	create	0qa(1)	---\nid:\n- \n- 2\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 1\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 08:30:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 08:30:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 19:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 19:00:00.000000000 Z\ncutoff:\n- \n- 20\ndays_of_week:\n- []\n- - 6\n  - 0\nsurcharge:\n- \n- '1'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.649974000 Z\n  zone: *1\n  time: 2022-08-31 04:20:58.649974000 Z\n	2022-08-31 04:20:58.649974
8	FulfillmentTimeSlot	3	create	0qa(1)	---\nid:\n- \n- 3\nfulfillment_type:\n- \n- 10\nshop_id:\n- \n- 1\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 10:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 10:00:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 19:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 19:00:00.000000000 Z\ncutoff:\n- \n- 10\ndays_of_week:\n- []\n- - 1\n  - 2\n  - 3\n  - 4\n  - 5\n  - 6\n  - 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.657649000 Z\n  zone: *1\n  time: 2022-08-31 04:20:58.657649000 Z\n	2022-08-31 04:20:58.657649
9	DeliveryFeeTier	1	create	0qa(1)	---\nid:\n- \n- 1\nshop_id:\n- \n- 1\ntier_type:\n- \n- 10\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 04:20:58.676697000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 04:20:58.676697000 Z\n	2022-08-31 04:20:58.676697
10	Image	2	create	0qa(1)	---\nid:\n- \n- 2\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:52:02.827102000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:52:02.827102000 Z\n	2022-08-31 05:52:02.827102
11	Image	3	create	0qa(1)	---\nid:\n- \n- 3\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:56:47.113479000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:56:47.113479000 Z\n	2022-08-31 05:56:47.113479
12	Product	1	create	0qa(1)	---\nid:\n- \n- 1\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Kangaroo Doll","zh-CN":"袋鼠玩偶"}'\nshort_desc:\n- \n- '{"en":"brown kangaroo doll","zh-CN":"棕色袋鼠玩偶"}'\ndesc:\n- \n- "{}"\nopen_for_sale_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 13:52:51.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 13:52:51.000000000 Z\nranking:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:57:00.515448000 Z\n  zone: *1\n  time: 2022-08-31 05:57:00.515448000 Z\nname_en:\n- \n- Kangaroo Doll\nname_zh_cn:\n- \n- 袋鼠玩偶\nshort_desc_en:\n- \n- brown kangaroo doll\nshort_desc_zh_cn:\n- \n- 棕色袋鼠玩偶\n	2022-08-31 05:57:00.515448
13	Variation	1	create	0qa(1)	---\nid:\n- \n- 1\nproduct_id:\n- \n- 1\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:57:00.555635000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:57:00.555635000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-08-31 05:57:00.555635
14	Variant	1	create	0qa(1)	---\nid:\n- \n- 1\nvariation_id:\n- \n- 1\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:57:00.588416000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:57:00.588416000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\n	2022-08-31 05:57:00.588416
15	Variation	2	create	0qa(1)	---\nid:\n- \n- 2\nproduct_id:\n- \n- 1\nname:\n- \n- '{"en":"Size","zh-CN":"大小"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:57:00.598102000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:57:00.598102000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 大小\n	2022-08-31 05:57:00.598102
16	Variant	2	create	0qa(1)	---\nid:\n- \n- 2\nvariation_id:\n- \n- 2\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:57:00.605119000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:57:00.605119000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-08-31 05:57:00.605119
17	ProductSku	1	create	0qa(1)	---\nid:\n- \n- 1\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 1\n  - 2\nproduct_id:\n- \n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 05:57:00.637658000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 05:57:00.637658000 Z\n	2022-08-31 05:57:00.637658
18	Image	4	create	0qa(1)	---\nid:\n- \n- 4\nimage:\n- \n- KFC.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:55:39.976027000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:55:39.976027000 Z\n	2022-08-31 06:55:39.976027
19	Shop	2	create	0qa(1)	---\nid:\n- \n- 2\nname:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\nphone_number:\n- \n- ''\nemail:\n- \n- ''\nwhatsapp_number:\n- \n- ''\ndesc:\n- \n- '{"en":"Finger-sucking fried chicken paired with KFC''s classic mashed potatoes\n  or other savory treats are sure to whet your appetite!","zh-CN":"令人吮指回味的炸鸡，配上肯德基的经典土豆泥或其他可口美食，定会让你胃口大开！"}'\nshort_desc:\n- \n- '{"en":"Everyone loves KFC founder Colonel Sanders'' secret spicy and crispy fried\n  chicken!","zh-CN":"人人都爱肯德基创始人桑德斯上校的秘制香辣酥脆炸鸡！"}'\noutlet_id:\n- \n- 4\ndelivery_tips:\n- \n- "{}"\nsupport_pickup:\n- \n- false\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:57:46.982688000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:57:46.982688000 Z\nname_en:\n- \n- KFC\nname_zh_cn:\n- \n- 肯德基\ndesc_en:\n- \n- Finger-sucking fried chicken paired with KFC's classic mashed potatoes or other\n  savory treats are sure to whet your appetite!\ndesc_zh_cn:\n- \n- 令人吮指回味的炸鸡，配上肯德基的经典土豆泥或其他可口美食，定会让你胃口大开！\nshort_desc_en:\n- \n- Everyone loves KFC founder Colonel Sanders' secret spicy and crispy fried chicken!\nshort_desc_zh_cn:\n- \n- 人人都爱肯德基创始人桑德斯上校的秘制香辣酥脆炸鸡！\n	2022-08-31 06:57:46.982688
20	Shop	2	update	0qa(1)	---\nsupport_delivery:\n- false\n- true\ndelivery_type:\n- \n- 1\ndelivery_date_display_mode:\n- \n- 1\ndelivery_number_of_days:\n- \n- 7\nsupport_pickup:\n- false\n- true\npickup_type:\n- \n- 1\npickup_date_display_mode:\n- \n- 10\npickup_cutoff_date:\n- \n- 2023-08-01\n	2022-08-31 06:59:53.770832
21	NoFulfillmentDate	3	create	0qa(1)	---\nid:\n- \n- 3\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 2\nstart_date:\n- \n- 2022-08-31\nend_date:\n- \n- 2022-09-01\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:59:53.781798000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:59:53.781798000 Z\n	2022-08-31 06:59:53.781798
22	NoFulfillmentDate	4	create	0qa(1)	---\nid:\n- \n- 4\nfulfillment_type:\n- \n- 10\nshop_id:\n- \n- 2\nstart_date:\n- \n- 2022-08-31\nend_date:\n- \n- 2022-08-22\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 06:59:53.788442000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 06:59:53.788442000 Z\n	2022-08-31 06:59:53.788442
23	NoFulfillmentDate	4	update	0qa(1)	---\nend_date:\n- 2022-08-22\n- 2022-09-01\n	2022-08-31 07:00:15.536276
24	NoFulfillmentDate	4	update	0qa(1)	---\nend_date:\n- 2022-09-01\n- 2022-09-17\n	2022-08-31 07:00:32.041488
25	Shop	2	update	0qa(1)	---\ndelivery_fee_calculation_method:\n- \n- 1\n	2022-08-31 07:02:53.748316
26	DeliveryFeeTier	2	create	0qa(1)	---\nid:\n- \n- 2\nshop_id:\n- \n- 2\ntier_type:\n- \n- 1\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:02:53.768820000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:02:53.768820000 Z\n	2022-08-31 07:02:53.76882
27	FulfillmentTimeSlot	4	create	0qa(1)	---\nid:\n- \n- 4\nfulfillment_type:\n- \n- 10\nshop_id:\n- \n- 2\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 08:03:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 08:03:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 10:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 10:00:00.000000000 Z\ncutoff:\n- \n- 10\ndays_of_week:\n- []\n- - 1\n  - 2\n  - 3\n  - 4\n  - 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:04:01.112534000 Z\n  zone: *1\n  time: 2022-08-31 07:04:01.112534000 Z\n	2022-08-31 07:04:01.112534
28	FulfillmentTimeSlot	4	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 08:03:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 08:03:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 10:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 10:00:00.000000000 Z\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 10:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 10:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 18:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 18:00:00.000000000 Z\n	2022-08-31 07:04:30.308948
29	Shop	2	update	0qa(1)	---\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 19:00:00.000000000 Z\n	2022-08-31 07:05:39.348712
30	Channel	1	create	0qa(1)	---\nid:\n- \n- 1\nshop_id:\n- \n- 1\nname:\n- \n- POS\nkey:\n- \n- 9X1tR7uauolCRapFoU3GstlnyOjJr4Zi\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:14:44.335813000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:14:44.335813000 Z\n	2022-08-31 07:14:44.335813
31	Channel	2	create	0qa(1)	---\nid:\n- \n- 2\nshop_id:\n- \n- 1\nname:\n- \n- Self-service kiosks\nkey:\n- \n- ayYCJGyknllVIwwUvM2QDWO4LlmNWg7I\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:15:33.655537000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:15:33.655537000 Z\n	2022-08-31 07:15:33.655537
1206	ProductSku	51	update	0qa(1)	---\noutlet_sku_id:\n- 51\n- 7\nprice:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 08:33:28.687708
32	Channel	3	create	0qa(1)	---\nid:\n- \n- 3\nshop_id:\n- \n- 1\nname:\n- \n- MiniApp\nkey:\n- \n- dzbBTRAKV905LdmMCiBhWYg0klxbNEXO\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:17:09.995090000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:17:09.995090000 Z\n	2022-08-31 07:17:09.99509
33	Channel	4	create	0qa(1)	---\nid:\n- \n- 4\nshop_id:\n- \n- 2\nname:\n- \n- Self-service Kiosks\nkey:\n- \n- anEExskQdLwOO481W5EvOFKtrzViLheI\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:17:36.815064000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:17:36.815064000 Z\n	2022-08-31 07:17:36.815064
34	Channel	5	create	0qa(1)	---\nid:\n- \n- 5\nshop_id:\n- \n- 2\nname:\n- \n- " MiniApp"\nkey:\n- \n- ezbIXnpqTg7Y18fPqelefATe4uEJocmm\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:18:20.313709000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:18:20.313709000 Z\n	2022-08-31 07:18:20.313709
35	Image	5	create	0qa(1)	---\nid:\n- \n- 5\nimage:\n- \n- beef_hamburger.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:31:21.370746000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:31:21.370746000 Z\n	2022-08-31 07:31:21.370746
36	Image	6	create	0qa(1)	---\nid:\n- \n- 6\nimage:\n- \n- beef_hamburger.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:33:40.439228000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:33:40.439228000 Z\n	2022-08-31 07:33:40.439228
37	Image	7	create	0qa(1)	---\nid:\n- \n- 7\nimage:\n- \n- bh_小份_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:27.321122000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:27.321122000 Z\n	2022-08-31 07:34:27.321122
38	Product	2	create	0qa(1)	---\nid:\n- \n- 2\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"Beef Hamburger","zh-CN":"牛肉汉堡"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.537606000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.537606000 Z\nname_en:\n- \n- Beef Hamburger\nname_zh_cn:\n- \n- 牛肉汉堡\n	2022-08-31 07:34:33.537606
39	ChannelSellable	1	create	0qa(1)	---\nid:\n- \n- 1\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 2\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.559793000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.559793000 Z\n	2022-08-31 07:34:33.559793
40	ChannelSellable	2	create	0qa(1)	---\nid:\n- \n- 2\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 2\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.567825000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.567825000 Z\n	2022-08-31 07:34:33.567825
41	Variation	3	create	0qa(1)	---\nid:\n- \n- 3\nproduct_id:\n- \n- 2\nname:\n- \n- '{"en":"Size","zh-CN":"分量"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.576223000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.576223000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 分量\n	2022-08-31 07:34:33.576223
42	Variant	3	create	0qa(1)	---\nid:\n- \n- 3\nvariation_id:\n- \n- 3\nname:\n- \n- '{"en":"large","zh-CN":"大份"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.585107000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.585107000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大份\n	2022-08-31 07:34:33.585107
43	Variant	4	create	0qa(1)	---\nid:\n- \n- 4\nvariation_id:\n- \n- 3\nname:\n- \n- '{"en":"small","zh-CN":"小份"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.591224000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.591224000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小份\n	2022-08-31 07:34:33.591224
44	ProductSku	2	create	0qa(1)	---\nid:\n- \n- 2\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 6\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 3\nproduct_id:\n- \n- 2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.602254000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.602254000 Z\n	2022-08-31 07:34:33.602254
45	ProductSku	3	create	0qa(1)	---\nid:\n- \n- 3\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 7\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 4\nproduct_id:\n- \n- 2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 07:34:33.616250000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 07:34:33.616250000 Z\n	2022-08-31 07:34:33.61625
46	Image	8	create	0qa(1)	---\nid:\n- \n- 8\nimage:\n- \n- member_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:26:58.031129000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:26:58.031129000 Z\n	2022-08-31 09:26:58.031129
47	Image	9	create	0qa(1)	---\nid:\n- \n- 9\nimage:\n- \n- visit_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:32:25.690012000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:32:25.690012000 Z\n	2022-08-31 09:32:25.690012
48	VoucherProduct	1	create	0qa(1)	---\nid:\n- \n- 1\nshop_id:\n- \n- 1\nvoucher_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nname:\n- \n- '{"en":"11","zh-CN":"11"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\nranking:\n- 0\n- 11\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:32:32.246593000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:32:32.246593000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '11'\n	2022-08-31 09:32:32.246593
49	Image	10	create	0qa(1)	---\nid:\n- \n- 10\nimage:\n- \n- member_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:36:48.507899000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:36:48.507899000 Z\n	2022-08-31 09:36:48.507899
64	FulfillmentTimeSlot	6	create	0qa(1)	---\nid:\n- \n- 6\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 3\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 10:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 10:00:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 16:30:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 16:30:00.000000000 Z\ncutoff:\n- \n- 10\ndays_of_week:\n- []\n- - 6\n  - 0\nsurcharge:\n- \n- '2'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:11:07.684626000 Z\n  zone: *1\n  time: 2022-08-31 14:11:07.684626000 Z\n	2022-08-31 14:11:07.684626
613	VoucherProduct	4	update	0qa(1)	---\nname:\n- '{"en":"KFC Family Voucher","zh-CN":"家庭优惠券"}'\n- '{"en":"KFC Family Voucher","zh-CN":"肯德基家庭优惠券"}'\nname_zh_cn:\n- 家庭优惠券\n- 肯德基家庭优惠券\n	2022-09-07 06:39:30.671132
50	VoucherProduct	2	create	0qa(1)	---\nid:\n- \n- 2\nshop_id:\n- \n- 2\nvoucher_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nname:\n- \n- '{"en":"Member Voucher","zh-CN":"会员优惠券"}'\ndesc:\n- \n- '{"en":"Member VoucherMember VoucherMember VoucherMember Voucher  desc","zh-CN":"会员优惠券\n  描述"}'\nshort_desc:\n- \n- '{"en":"Member Voucher short desc","zh-CN":"member voucher简要描述"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:39:27.739579000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:39:27.739579000 Z\nname_en:\n- \n- Member Voucher\nname_zh_cn:\n- \n- 会员优惠券\ndesc_en:\n- \n- Member VoucherMember VoucherMember VoucherMember Voucher  desc\ndesc_zh_cn:\n- \n- 会员优惠券 描述\nshort_desc_en:\n- \n- Member Voucher short desc\nshort_desc_zh_cn:\n- \n- member voucher简要描述\n	2022-08-31 09:39:27.739579
51	ChannelSellable	3	create	0qa(1)	---\nid:\n- \n- 3\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 2\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:39:27.752045000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:39:27.752045000 Z\n	2022-08-31 09:39:27.752045
52	Image	11	create	0qa(1)	---\nid:\n- \n- 11\nimage:\n- \n- member_voucher2.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:47:06.695054000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:47:06.695054000 Z\n	2022-08-31 09:47:06.695054
53	VoucherProduct	3	create	0qa(1)	---\nid:\n- \n- 3\nshop_id:\n- \n- 1\nvoucher_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nname:\n- \n- '{"en":"Member Voucher","zh-CN":"会员优惠券"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:55:01.580975000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:55:01.580975000 Z\nname_en:\n- \n- Member Voucher\nname_zh_cn:\n- \n- 会员优惠券\n	2022-08-31 09:55:01.580975
54	ChannelSellable	4	create	0qa(1)	---\nid:\n- \n- 4\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 3\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:55:01.592816000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:55:01.592816000 Z\n	2022-08-31 09:55:01.592816
55	Image	12	create	0qa(1)	---\nid:\n- \n- 12\nimage:\n- \n- 家庭.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 10:01:10.058866000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 10:01:10.058866000 Z\n	2022-08-31 10:01:10.058866
56	VoucherProduct	4	create	0qa(1)	---\nid:\n- \n- 4\nshop_id:\n- \n- 2\nvoucher_sku_id:\n- \n- 3\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.88e2\nname:\n- \n- '{"en":"Family Voucher","zh-CN":"家庭优惠券"}'\ndesc:\n- \n- '{"en":"Family Voucher desc","zh-CN":"家庭优惠券 描述"}'\nshort_desc:\n- \n- '{"en":"Family Voucher short desc","zh-CN":"家庭优惠券，带上家人享受别样优惠"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 10:03:51.609005000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 10:03:51.609005000 Z\nname_en:\n- \n- Family Voucher\nname_zh_cn:\n- \n- 家庭优惠券\ndesc_en:\n- \n- Family Voucher desc\ndesc_zh_cn:\n- \n- 家庭优惠券 描述\nshort_desc_en:\n- \n- Family Voucher short desc\nshort_desc_zh_cn:\n- \n- 家庭优惠券，带上家人享受别样优惠\n	2022-08-31 10:03:51.609005
57	ChannelSellable	5	create	0qa(1)	---\nid:\n- \n- 5\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 4\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 10:03:51.621444000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 10:03:51.621444000 Z\n	2022-08-31 10:03:51.621444
58	Image	13	create	0qa(1)	---\nid:\n- \n- 13\nimage:\n- \n- zoo_family_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 10:05:38.245846000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 10:05:38.245846000 Z\n	2022-08-31 10:05:38.245846
59	Image	14	create	0qa(1)	---\nid:\n- \n- 14\nimage:\n- \n- 阿明餐厅.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 11:55:22.611575000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 11:55:22.611575000 Z\n	2022-08-31 11:55:22.611575
60	Image	15	create	0qa(1)	---\nid:\n- \n- 15\nimage:\n- \n- 阿明餐厅.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:03:58.034598000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:03:58.034598000 Z\n	2022-08-31 14:03:58.034598
61	Shop	3	create	0qa(1)	---\nid:\n- \n- 3\nname:\n- \n- '{"en":"Ah Meng Restaurant E-shop","zh-CN":"阿明饭店线上店"}'\nphone_number:\n- \n- ''\nemail:\n- \n- amre@fooyo.sg\nwhatsapp_number:\n- \n- ''\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- '{"en":"Wlcome to the Ah Meng Restaurant E-shop ,there are many specialties here","zh-CN":"欢迎来到线上阿明饭店，这里有许多特色美食"}'\noutlet_id:\n- \n- 5\nsupport_delivery:\n- false\n- true\ndelivery_type:\n- \n- 1\nmin_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.1e2\nfree_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.3e2\ndelivery_source_location_lat:\n- \n- !ruby/object:BigDecimal 18:0.2e1\ndelivery_source_location_lon:\n- \n- !ruby/object:BigDecimal 18:0.2e1\ndelivery_date_display_mode:\n- \n- 1\ndelivery_number_of_days:\n- \n- 7\ndelivery_tips:\n- \n- "{}"\ndelivery_fee_calculation_method:\n- \n- 1\nsupport_pickup:\n- \n- true\npickup_type:\n- \n- 1\npickup_date_display_mode:\n- \n- 1\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\npickup_number_of_days:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:11:07.636025000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:11:07.636025000 Z\nname_en:\n- \n- Ah Meng Restaurant E-shop\nname_zh_cn:\n- \n- 阿明饭店线上店\nshort_desc_en:\n- \n- Wlcome to the Ah Meng Restaurant E-shop ,there are many specialties here\nshort_desc_zh_cn:\n- \n- 欢迎来到线上阿明饭店，这里有许多特色美食\n	2022-08-31 14:11:07.636025
62	NoFulfillmentDate	5	create	0qa(1)	---\nid:\n- \n- 5\nfulfillment_type:\n- \n- 10\nshop_id:\n- \n- 3\nstart_date:\n- \n- 2022-08-31\nend_date:\n- \n- 2023-09-01\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:11:07.661344000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:11:07.661344000 Z\n	2022-08-31 14:11:07.661344
63	FulfillmentTimeSlot	5	create	0qa(1)	---\nid:\n- \n- 5\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 3\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 10:30:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 10:30:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 16:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 16:00:00.000000000 Z\ncutoff:\n- \n- 10\ndays_of_week:\n- []\n- - 1\n  - 2\n  - 3\n  - 4\n  - 5\nsurcharge:\n- \n- ''\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:11:07.672989000 Z\n  zone: *1\n  time: 2022-08-31 14:11:07.672989000 Z\n	2022-08-31 14:11:07.672989
65	DeliveryFeeTier	3	create	0qa(1)	---\nid:\n- \n- 3\nshop_id:\n- \n- 3\ntier_type:\n- \n- 1\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 14:11:07.697524000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 14:11:07.697524000 Z\n	2022-08-31 14:11:07.697524
66	Image	16	create	0qa(1)	---\nid:\n- \n- 16\nimage:\n- \n- yumaowu.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:33:54.195377000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:33:54.195377000 Z\n	2022-09-01 01:33:54.195377
67	Shop	4	create	0qa(1)	---\nid:\n- \n- 4\nname:\n- \n- '{"en":" Feather House Gift E-shop","zh-CN":"羽毛屋礼品店网店"}'\nautomated_order_confirmation:\n- true\n- false\nphone_number:\n- \n- ''\nemail:\n- \n- ''\nwhatsapp_number:\n- \n- ''\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\ndelivery_tips:\n- \n- "{}"\nsupport_pickup:\n- \n- false\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:34:22.417932000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:34:22.417932000 Z\nname_en:\n- \n- " Feather House Gift E-shop"\nname_zh_cn:\n- \n- 羽毛屋礼品店网店\n	2022-09-01 01:34:22.417932
68	Shop	4	update	0qa(1)	---\nautomated_order_confirmation:\n- false\n- true\nemail:\n- ''\n- fhge@fooyo.sg\nshort_desc:\n- \n- '{"en":"If you like all kinds of birds , you can come here to buy souvenirs","zh-CN":"如果你喜欢各种飞鸟禽类，你可以来到这里购买纪念品"}'\noutlet_id:\n- \n- 6\nshort_desc_en:\n- \n- If you like all kinds of birds , you can come here to buy souvenirs\nshort_desc_zh_cn:\n- \n- 如果你喜欢各种飞鸟禽类，你可以来到这里购买纪念品\n	2022-09-01 01:37:48.56253
69	Channel	6	create	0qa(1)	---\nid:\n- \n- 6\nshop_id:\n- \n- 3\nname:\n- \n- MiniApp\nkey:\n- \n- SwXa0PObQtbgRzSyqzHU1QZNrrAW1ZrZ\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:39:19.080874000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:39:19.080874000 Z\n	2022-09-01 01:39:19.080874
70	Channel	7	create	0qa(1)	---\nid:\n- \n- 7\nshop_id:\n- \n- 3\nname:\n- \n- POS\nkey:\n- \n- Yxn5zxnT48bvEhQuQQwa7VQszfYpSd1w\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:39:46.784496000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:39:46.784496000 Z\n	2022-09-01 01:39:46.784496
71	Channel	8	create	0qa(1)	---\nid:\n- \n- 8\nshop_id:\n- \n- 4\nname:\n- \n- " iPad"\nkey:\n- \n- icHa4icR2tTSTIIBCSKAlT6h5M0MsKKp\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:40:12.894034000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:40:12.894034000 Z\n	2022-09-01 01:40:12.894034
72	Channel	9	create	0qa(1)	---\nid:\n- \n- 9\nshop_id:\n- \n- 4\nname:\n- \n- " Self-service Kiosks"\nkey:\n- \n- JjYBJIA6prc2jtbzqxWEBmpHUrX8dWz9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:40:46.053149000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:40:46.053149000 Z\n	2022-09-01 01:40:46.053149
73	Channel	10	create	0qa(1)	---\nid:\n- \n- 10\nshop_id:\n- \n- 4\nname:\n- \n- POS\nkey:\n- \n- S5WD9i1prWVhJVUw5ZESgYfKB4gX1Gy2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 01:41:01.854280000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 01:41:01.854280000 Z\n	2022-09-01 01:41:01.85428
74	Image	17	create	0qa(1)	---\nid:\n- \n- 17\nimage:\n- \n- 必胜.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:26:11.199962000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:26:11.199962000 Z\n	2022-09-01 02:26:11.199962
75	Shop	5	create	0qa(1)	---\nid:\n- \n- 5\nname:\n- \n- '{"en":"Pizza Hut E-shop","zh-CN":"必胜客线上店"}'\nphone_number:\n- \n- ''\nemail:\n- \n- ''\nwhatsapp_number:\n- \n- ''\ndesc:\n- \n- '{"en":"\\n\\nSteaming pizza is a family favorite, and whenever you want to take a\n  break, there''s something delicious waiting for you. After your pizza, you''ll be\n  satisfied with Pizza Hut''s signature garlic bread and spicy chicken thighs.\\n","zh-CN":"热气腾腾的披萨是家庭游客的最爱，无论您什么时候想稍事休息，都有可口的披萨等您品尝。享用完披萨，再尝一尝必胜客标志性的蒜香面包和香辣鸡腿，让您心满意足。"}'\nshort_desc:\n- \n- "{}"\noutlet_id:\n- \n- 7\nsupport_delivery:\n- false\n- true\ndelivery_type:\n- \n- 1\nmin_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.2e2\nfree_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.3e2\ndelivery_date_display_mode:\n- \n- 10\ndelivery_number_of_days:\n- \n- 7\ndelivery_cutoff_date:\n- \n- 2023-01-02\ndelivery_tips:\n- \n- "{}"\ndelivery_fee_calculation_method:\n- \n- 1\nsupport_pickup:\n- \n- false\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:31:50.754289000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:31:50.754289000 Z\nname_en:\n- \n- Pizza Hut E-shop\nname_zh_cn:\n- \n- 必胜客线上店\ndesc_en:\n- \n- |2\n\n\n  Steaming pizza is a family favorite, and whenever you want to take a break, there's something delicious waiting for you. After your pizza, you'll be satisfied with Pizza Hut's signature garlic bread and spicy chicken thighs.\ndesc_zh_cn:\n- \n- 热气腾腾的披萨是家庭游客的最爱，无论您什么时候想稍事休息，都有可口的披萨等您品尝。享用完披萨，再尝一尝必胜客标志性的蒜香面包和香辣鸡腿，让您心满意足。\n	2022-09-01 02:31:50.754289
76	NoFulfillmentDate	6	create	0qa(1)	---\nid:\n- \n- 6\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 5\nstart_date:\n- \n- 2022-09-01\nend_date:\n- \n- 2022-11-17\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:31:50.767841000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:31:50.767841000 Z\n	2022-09-01 02:31:50.767841
77	FulfillmentTimeSlot	7	create	0qa(1)	---\nid:\n- \n- 7\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 5\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 08:30:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 08:30:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 18:00:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 18:00:00.000000000 Z\ncutoff:\n- \n- 10\ndays_of_week:\n- []\n- - 1\n  - 2\n  - 3\n  - 4\n  - 5\n  - 6\n  - 0\nsurcharge:\n- \n- '5'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:31:50.777140000 Z\n  zone: *1\n  time: 2022-09-01 02:31:50.777140000 Z\n	2022-09-01 02:31:50.77714
78	DeliveryFeeTier	4	create	0qa(1)	---\nid:\n- \n- 4\nshop_id:\n- \n- 5\ntier_type:\n- \n- 1\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:31:50.785276000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:31:50.785276000 Z\n	2022-09-01 02:31:50.785276
1635	ProductSku	96	update	\N	---\nproduct_id:\n- \n- 70\n	2022-09-09 09:28:36.00688
79	DeliveryFeeTier	5	create	0qa(1)	---\nid:\n- \n- 5\nshop_id:\n- \n- 5\ntier_type:\n- \n- 1\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:31:50.794548000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:31:50.794548000 Z\n	2022-09-01 02:31:50.794548
80	DeliveryFeeTier	6	create	0qa(1)	---\nid:\n- \n- 6\nshop_id:\n- \n- 5\ntier_type:\n- \n- 1\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:31:50.802324000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:31:50.802324000 Z\n	2022-09-01 02:31:50.802324
81	Channel	11	create	0qa(1)	---\nid:\n- \n- 11\nshop_id:\n- \n- 5\nname:\n- \n- " MiniApp"\nkey:\n- \n- pHyrOyCdviMHrSrjn70BCQrIYJWQO9Hf\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:32:29.116224000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:32:29.116224000 Z\n	2022-09-01 02:32:29.116224
82	Channel	12	create	0qa(1)	---\nid:\n- \n- 12\nshop_id:\n- \n- 5\nname:\n- \n- App\nkey:\n- \n- Wnr0zYl8xzamfAbz7litcSCEu8GEAZBr\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 02:32:50.146197000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 02:32:50.146197000 Z\n	2022-09-01 02:32:50.146197
83	Image	18	create	0qa(1)	---\nid:\n- \n- 18\nimage:\n- \n- 夜间礼.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:44:58.987214000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:44:58.987214000 Z\n	2022-09-01 03:44:58.987214
84	Shop	6	create	0qa(1)	---\nid:\n- \n- 6\nname:\n- \n- '{"en":"Night Safari Gift E-shop","zh-CN":"夜间动物园礼品店网店"}'\nphone_number:\n- \n- ''\nemail:\n- \n- ''\nwhatsapp_number:\n- \n- ''\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- '{"en":"Stop by our gift shop to find the perfect night safari souvenir.","zh-CN":"到我们礼品店逛逛，选购心仪的夜间野生动物园游览纪念品。"}'\noutlet_id:\n- \n- 8\ndelivery_tips:\n- \n- "{}"\nsupport_pickup:\n- \n- true\npickup_type:\n- \n- 1\npickup_date_display_mode:\n- \n- 1\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- '{"en":"Please pick up the goods within three days after the goods arrive at the\n  pick-up point","zh-CN":"请您在货物到达自提点三天内提货"}'\npickup_number_of_days:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:53:57.401374000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:53:57.401374000 Z\nname_en:\n- \n- Night Safari Gift E-shop\nname_zh_cn:\n- \n- 夜间动物园礼品店网店\nshort_desc_en:\n- \n- Stop by our gift shop to find the perfect night safari souvenir.\nshort_desc_zh_cn:\n- \n- 到我们礼品店逛逛，选购心仪的夜间野生动物园游览纪念品。\nself_pickup_tips_en:\n- \n- Please pick up the goods within three days after the goods arrive at the pick-up\n  point\nself_pickup_tips_zh_cn:\n- \n- 请您在货物到达自提点三天内提货\n	2022-09-01 03:53:57.401374
85	Channel	13	create	0qa(1)	---\nid:\n- \n- 13\nshop_id:\n- \n- 6\nname:\n- \n- POS\nkey:\n- \n- 2ktFfsTG1kD3ADvHDHuBzbFu507sdbWe\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:54:25.036078000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:54:25.036078000 Z\n	2022-09-01 03:54:25.036078
86	Channel	14	create	0qa(1)	---\nid:\n- \n- 14\nshop_id:\n- \n- 6\nname:\n- \n- Self-service Kiosks\nkey:\n- \n- jhA1kmaYF87tI6NHqFjq3TYhmpjSQTRb\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:54:41.768013000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:54:41.768013000 Z\n	2022-09-01 03:54:41.768013
87	Image	19	create	0qa(1)	---\nid:\n- \n- 19\nimage:\n- \n- uu.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:57:18.876811000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:57:18.876811000 Z\n	2022-09-01 03:57:18.876811
88	Shop	7	create	0qa(1)	---\nid:\n- \n- 7\nname:\n- \n- '{"en":"Ulu Ulu Wild Restaurant E-shop","zh-CN":"乌鲁乌鲁野生餐厅网店"}'\nphone_number:\n- \n- ''\nemail:\n- \n- ''\nwhatsapp_number:\n- \n- ''\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\noutlet_id:\n- \n- 9\ndelivery_tips:\n- \n- "{}"\nsupport_pickup:\n- \n- false\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:57:38.059852000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:57:38.059852000 Z\nname_en:\n- \n- Ulu Ulu Wild Restaurant E-shop\nname_zh_cn:\n- \n- 乌鲁乌鲁野生餐厅网店\n	2022-09-01 03:57:38.059852
89	Channel	15	create	0qa(1)	---\nid:\n- \n- 15\nshop_id:\n- \n- 7\nname:\n- \n- POS\nkey:\n- \n- smRM9m64iJCRAiJJhMvOvnhC4AaO219r\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:58:43.484649000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:58:43.484649000 Z\n	2022-09-01 03:58:43.484649
90	Channel	16	create	0qa(1)	---\nid:\n- \n- 16\nshop_id:\n- \n- 7\nname:\n- \n- " MiniApp"\nkey:\n- \n- HnEtDLrDBqnrEZ67faEv1kgEPehXuBNg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 03:58:59.198335000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 03:58:59.198335000 Z\n	2022-09-01 03:58:59.198335
91	Image	12	update	0qa(1)	---\ntarget_id:\n- 4\n- \ntarget_type:\n- VoucherProduct\n- \n	2022-09-01 06:53:33.812036
92	Image	20	create	0qa(1)	---\nid:\n- \n- 20\nimage:\n- \n- Family_Voucher1.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:53:41.526627000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:53:41.526627000 Z\n	2022-09-01 06:53:41.526627
93	Image	21	create	0qa(1)	---\nid:\n- \n- 21\nimage:\n- \n- Holiday_Voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:55:28.425111000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:55:28.425111000 Z\n	2022-09-01 06:55:28.425111
94	Image	22	create	0qa(1)	---\nid:\n- \n- 22\nimage:\n- \n- img.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:56:02.811783000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:56:02.811783000 Z\n	2022-09-01 06:56:02.811783
109	Image	25	create	0qa(1)	---\nid:\n- \n- 25\nimage:\n- \n- Zebra_badge.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:06:18.949920000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:06:18.949920000 Z\n	2022-09-01 07:06:18.94992
110	Image	26	create	0qa(1)	---\nid:\n- \n- 26\nimage:\n- \n- Zebra_badge.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:06:43.539863000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:06:43.539863000 Z\n	2022-09-01 07:06:43.539863
1662	ProductSku	2	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-KFC-Beef Hamburger-L\n	2022-09-13 02:49:31.646816
95	Shop	8	create	0qa(1)	---\nid:\n- \n- 8\nname:\n- \n- '{"en":" River Wonders Gift E-shop","zh-CN":"河川生态园礼品店网店"}'\nphone_number:\n- \n- ''\nemail:\n- \n- ''\nwhatsapp_number:\n- \n- '890889900'\ndesc:\n- \n- '{"en":"Does our adorable panda make you want more? This bamboo forest-themed gift\n  shop can help you renew your panda love. Here are super cute and pretty toys, clothes\n  and exclusive souvenirs, all modeled after the lovely Kaikai and Jiajia, to keep\n  as a souvenir for your panda trip to the bamboo forest","zh-CN":"\\n我们可爱的大熊猫是否让您意犹未尽？这家竹林主题的礼品店可以帮您再续熊猫情。这里有超级可爱的漂亮玩具、衣服和专属纪念品，全部以可爱的凯凯和嘉嘉为原型，为您的大熊猫竹林之旅留作纪念"}'\nshort_desc:\n- \n- "{}"\noutlet_id:\n- \n- 10\nsupport_delivery:\n- false\n- true\ndelivery_type:\n- \n- 10\nmin_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.2e2\nfree_delivery_amount:\n- \n- !ruby/object:BigDecimal 18:0.5e2\ndelivery_tips:\n- \n- "{}"\ndelivery_fee_calculation_method:\n- \n- 10\nsupport_pickup:\n- \n- true\npickup_type:\n- \n- 1\npickup_date_display_mode:\n- \n- 1\ncoupon_expiration_days:\n- 0\n- \nself_pickup_tips:\n- \n- "{}"\npickup_number_of_days:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:59:18.252269000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:59:18.252269000 Z\nname_en:\n- \n- " River Wonders Gift E-shop"\nname_zh_cn:\n- \n- 河川生态园礼品店网店\ndesc_en:\n- \n- Does our adorable panda make you want more? This bamboo forest-themed gift shop\n  can help you renew your panda love. Here are super cute and pretty toys, clothes\n  and exclusive souvenirs, all modeled after the lovely Kaikai and Jiajia, to keep\n  as a souvenir for your panda trip to the bamboo forest\ndesc_zh_cn:\n- \n- |2-\n\n  我们可爱的大熊猫是否让您意犹未尽？这家竹林主题的礼品店可以帮您再续熊猫情。这里有超级可爱的漂亮玩具、衣服和专属纪念品，全部以可爱的凯凯和嘉嘉为原型，为您的大熊猫竹林之旅留作纪念\n	2022-09-01 06:59:18.252269
96	FulfillmentTimeSlot	8	create	0qa(1)	---\nid:\n- \n- 8\nfulfillment_type:\n- \n- 10\nshop_id:\n- \n- 8\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 14:58:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2000-01-01 14:58:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  utc: 2000-01-01 18:58:00.000000000 Z\n  zone: *1\n  time: 2000-01-01 18:58:00.000000000 Z\ncutoff:\n- \n- 10\nquota:\n- \n- 200\nwarning_quota:\n- \n- 10\ndays_of_week:\n- []\n- - 0\n  - 1\n  - 3\n  - 4\n  - 2\n  - 5\n  - 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:59:18.264392000 Z\n  zone: *1\n  time: 2022-09-01 06:59:18.264392000 Z\n	2022-09-01 06:59:18.264392
97	DeliveryFeeTier	7	create	0qa(1)	---\nid:\n- \n- 7\nshop_id:\n- \n- 8\ntier_type:\n- \n- 10\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:59:18.271413000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:59:18.271413000 Z\n	2022-09-01 06:59:18.271413
98	DeliveryFeeTier	8	create	0qa(1)	---\nid:\n- \n- 8\nshop_id:\n- \n- 8\ntier_type:\n- \n- 10\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:59:18.278751000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:59:18.278751000 Z\n	2022-09-01 06:59:18.278751
99	DeliveryFeeTier	9	create	0qa(1)	---\nid:\n- \n- 9\nshop_id:\n- \n- 8\ntier_type:\n- \n- 10\nstart_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nend_value:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\nfee:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 06:59:18.283871000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 06:59:18.283871000 Z\n	2022-09-01 06:59:18.283871
100	Channel	17	create	0qa(1)	---\nid:\n- \n- 17\nshop_id:\n- \n- 8\nname:\n- \n- POS\nkey:\n- \n- Yu812VnQ8v55yIi3VvHDGDC2BFetunas\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:00:21.329634000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:00:21.329634000 Z\n	2022-09-01 07:00:21.329634
101	Channel	18	create	0qa(1)	---\nid:\n- \n- 18\nshop_id:\n- \n- 8\nname:\n- \n- MiniApp\nkey:\n- \n- zcCBlYVi1I5I0tsLMhCxHZHnXAvSw3M7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:00:35.172179000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:00:35.172179000 Z\n	2022-09-01 07:00:35.172179
102	Channel	19	create	0qa(1)	---\nid:\n- \n- 19\nshop_id:\n- \n- 8\nname:\n- \n- Self-service Kiosks\nkey:\n- \n- GP4AC5iKBu5xabbORGhdzbrUzvo9m7Ty\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:01:02.872204000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:01:02.872204000 Z\n	2022-09-01 07:01:02.872204
103	Image	23	create	0qa(1)	---\nid:\n- \n- 23\nimage:\n- \n- giraffe_pillow.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:03:36.095831000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:03:36.095831000 Z\n	2022-09-01 07:03:36.095831
104	Image	24	create	0qa(1)	---\nid:\n- \n- 24\nimage:\n- \n- giraffe_pillow.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:05:20.515659000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:05:20.515659000 Z\n	2022-09-01 07:05:20.515659
105	Product	3	create	0qa(1)	---\nid:\n- \n- 3\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Giraffe Pillow ","zh-CN":"长劲鹿抱枕"}'\nshort_desc:\n- \n- '{"en":"The cute giraffe is cute and cute, and with the flannel-like blanket, it\n  forms a perfect combination of pillow and quilt, which can take care of the baby''s\n  sleep time more safely","zh-CN":"可爱的长颈鹿造型呆萌可爱，配合法兰绒一样的小毯子，组成了枕头、盖被的完美结合，可以更加安心呵护宝宝的睡眠时光"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:05:29.144475000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:05:29.144475000 Z\nname_en:\n- \n- 'Giraffe Pillow '\nname_zh_cn:\n- \n- 长劲鹿抱枕\nshort_desc_en:\n- \n- The cute giraffe is cute and cute, and with the flannel-like blanket, it forms a\n  perfect combination of pillow and quilt, which can take care of the baby's sleep\n  time more safely\nshort_desc_zh_cn:\n- \n- 可爱的长颈鹿造型呆萌可爱，配合法兰绒一样的小毯子，组成了枕头、盖被的完美结合，可以更加安心呵护宝宝的睡眠时光\n	2022-09-01 07:05:29.144475
106	ChannelSellable	6	create	0qa(1)	---\nid:\n- \n- 6\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 3\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:05:29.156689000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:05:29.156689000 Z\n	2022-09-01 07:05:29.156689
107	ChannelSellable	7	create	0qa(1)	---\nid:\n- \n- 7\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 3\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:05:29.164107000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:05:29.164107000 Z\n	2022-09-01 07:05:29.164107
108	ProductSku	4	create	0qa(1)	---\nid:\n- \n- 4\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 3\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nproduct_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:05:29.175970000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:05:29.175970000 Z\n	2022-09-01 07:05:29.17597
1663	ProductSku	3	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-KFC-Beef Hamburger-S\n	2022-09-13 02:49:31.658996
111	Product	4	create	0qa(1)	---\nid:\n- \n- 4\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":" Zebra Badge","zh-CN":"斑马徽章"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:06:46.357980000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:06:46.357980000 Z\nname_en:\n- \n- " Zebra Badge"\nname_zh_cn:\n- \n- 斑马徽章\n	2022-09-01 07:06:46.35798
112	ChannelSellable	8	create	0qa(1)	---\nid:\n- \n- 8\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 4\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:06:46.374121000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:06:46.374121000 Z\n	2022-09-01 07:06:46.374121
113	ChannelSellable	9	create	0qa(1)	---\nid:\n- \n- 9\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 4\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:06:46.384280000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:06:46.384280000 Z\n	2022-09-01 07:06:46.38428
114	ProductSku	5	create	0qa(1)	---\nid:\n- \n- 5\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nproduct_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:06:46.400234000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:06:46.400234000 Z\n	2022-09-01 07:06:46.400234
115	VoucherProduct	5	create	0qa(1)	---\nid:\n- \n- 5\nshop_id:\n- \n- 2\nvoucher_sku_id:\n- \n- 7\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.288e2\nname:\n- \n- '{"en":"Holiday Voucher","zh-CN":"节日券"}'\ndesc:\n- \n- '{"en":"Available on the day of the festival, unlimited amount, unlimited store.\n  More categories of goods to drink and buy.","zh-CN":"节日当天可使用，不限金额，不限门店。更多品类商品欢饮购买。"}'\nshort_desc:\n- \n- '{"en":"Available on the day of the festival, unlimited amount, unlimited store","zh-CN":"节日当天可使用，不限金额，不限门店"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- 55\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:07:12.151048000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:07:12.151048000 Z\nname_en:\n- \n- Holiday Voucher\nname_zh_cn:\n- \n- 节日券\ndesc_en:\n- \n- Available on the day of the festival, unlimited amount, unlimited store. More categories\n  of goods to drink and buy.\ndesc_zh_cn:\n- \n- 节日当天可使用，不限金额，不限门店。更多品类商品欢饮购买。\nshort_desc_en:\n- \n- Available on the day of the festival, unlimited amount, unlimited store\nshort_desc_zh_cn:\n- \n- 节日当天可使用，不限金额，不限门店\n	2022-09-01 07:07:12.151048
116	ChannelSellable	10	create	0qa(1)	---\nid:\n- \n- 10\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 5\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:07:12.166970000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:07:12.166970000 Z\n	2022-09-01 07:07:12.16697
117	ChannelSellable	11	create	0qa(1)	---\nid:\n- \n- 11\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 5\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:07:12.177029000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:07:12.177029000 Z\n	2022-09-01 07:07:12.177029
118	Image	27	create	0qa(1)	---\nid:\n- \n- 27\nimage:\n- \n- Elephant_Keychain.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:07:53.509726000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:07:53.509726000 Z\n	2022-09-01 07:07:53.509726
119	Image	28	create	0qa(1)	---\nid:\n- \n- 28\nimage:\n- \n- Elephant_Keychain.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:08:10.525214000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:08:10.525214000 Z\n	2022-09-01 07:08:10.525214
120	Product	5	create	0qa(1)	---\nid:\n- \n- 5\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Elephant Keychain","zh-CN":"大象钥匙扣"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 47\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:08:14.511094000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:08:14.511094000 Z\nname_en:\n- \n- Elephant Keychain\nname_zh_cn:\n- \n- 大象钥匙扣\n	2022-09-01 07:08:14.511094
121	ChannelSellable	12	create	0qa(1)	---\nid:\n- \n- 12\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 5\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:08:14.520841000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:08:14.520841000 Z\n	2022-09-01 07:08:14.520841
122	ChannelSellable	13	create	0qa(1)	---\nid:\n- \n- 13\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 5\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:08:14.527287000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:08:14.527287000 Z\n	2022-09-01 07:08:14.527287
123	ProductSku	6	create	0qa(1)	---\nid:\n- \n- 6\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 5\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nproduct_id:\n- \n- 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:08:14.537623000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:08:14.537623000 Z\n	2022-09-01 07:08:14.537623
124	Image	29	create	0qa(1)	---\nid:\n- \n- 29\nimage:\n- \n- 现金券.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:10:26.763902000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:10:26.763902000 Z\n	2022-09-01 07:10:26.763902
125	Image	30	create	0qa(1)	---\nid:\n- \n- 30\nimage:\n- \n- kfc_Cash_Voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:11:45.394331000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:11:45.394331000 Z\n	2022-09-01 07:11:45.394331
126	VoucherProduct	6	create	0qa(1)	---\nid:\n- \n- 6\nshop_id:\n- \n- 2\nvoucher_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.48e2\nname:\n- \n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- '{"en":"111","zh-CN":"22"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:11:53.438782000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:11:53.438782000 Z\nname_en:\n- \n- Cash Voucher\nname_zh_cn:\n- \n- 现金券\nshort_desc_en:\n- \n- '111'\nshort_desc_zh_cn:\n- \n- '22'\n	2022-09-01 07:11:53.438782
127	Image	21	update	0qa(1)	---\ntarget_id:\n- 5\n- \ntarget_type:\n- VoucherProduct\n- \n	2022-09-01 07:12:46.823337
128	Image	31	create	0qa(1)	---\nid:\n- \n- 31\nimage:\n- \n- kfc_holiday_Voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:12:52.335400000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:12:52.335400000 Z\n	2022-09-01 07:12:52.3354
129	Image	32	create	0qa(1)	---\nid:\n- \n- 32\nimage:\n- \n- cola.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:13:50.958955000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:13:50.958955000 Z\n	2022-09-01 07:13:50.958955
130	Image	20	update	0qa(1)	---\ntarget_id:\n- 4\n- \ntarget_type:\n- VoucherProduct\n- \n	2022-09-01 07:14:08.05597
131	Image	33	create	0qa(1)	---\nid:\n- \n- 33\nimage:\n- \n- kfc_family_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:14:15.711679000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:14:15.711679000 Z\n	2022-09-01 07:14:15.711679
132	Image	34	create	0qa(1)	---\nid:\n- \n- 34\nimage:\n- \n- cola.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:14:58.055586000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:14:58.055586000 Z\n	2022-09-01 07:14:58.055586
133	Image	35	create	0qa(1)	---\nid:\n- \n- 35\nimage:\n- \n- cola.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:15:15.166734000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:15:15.166734000 Z\n	2022-09-01 07:15:15.166734
134	Product	6	create	0qa(1)	---\nid:\n- \n- 6\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"Coke","zh-CN":"可乐"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.643692000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.643692000 Z\nname_en:\n- \n- Coke\nname_zh_cn:\n- \n- 可乐\n	2022-09-01 07:16:11.643692
135	ChannelSellable	14	create	0qa(1)	---\nid:\n- \n- 14\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.654306000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.654306000 Z\n	2022-09-01 07:16:11.654306
136	ChannelSellable	15	create	0qa(1)	---\nid:\n- \n- 15\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.661283000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.661283000 Z\n	2022-09-01 07:16:11.661283
137	PreferenceGroup	1	create	0qa(1)	---\nid:\n- \n- 1\nproduct_id:\n- \n- 6\nname:\n- \n- '{"en":"Add Ice","zh-CN":"加冰"}'\nmin_selection:\n- 1\n- 0\nmax_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.677643000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.677643000 Z\nname_en:\n- \n- Add Ice\nname_zh_cn:\n- \n- 加冰\n	2022-09-01 07:16:11.677643
138	Variation	4	create	0qa(1)	---\nid:\n- \n- 4\nproduct_id:\n- \n- 6\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.687194000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.687194000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 07:16:11.687194
139	Variant	5	create	0qa(1)	---\nid:\n- \n- 5\nvariation_id:\n- \n- 4\nname:\n- \n- '{"en":"large","zh-CN":"大杯"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.693629000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.693629000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大杯\n	2022-09-01 07:16:11.693629
140	Variant	6	create	0qa(1)	---\nid:\n- \n- 6\nvariation_id:\n- \n- 4\nname:\n- \n- '{"en":"small","zh-CN":"小杯"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.699634000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.699634000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小杯\n	2022-09-01 07:16:11.699634
141	ProductSku	7	create	0qa(1)	---\nid:\n- \n- 7\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 8\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 5\nproduct_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.709342000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.709342000 Z\n	2022-09-01 07:16:11.709342
142	ProductSku	8	create	0qa(1)	---\nid:\n- \n- 8\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 9\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\nvariant_ids:\n- []\n- - 6\nproduct_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:11.722550000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:11.722550000 Z\n	2022-09-01 07:16:11.72255
143	Image	10	update	0qa(1)	---\ntarget_id:\n- 2\n- \ntarget_type:\n- VoucherProduct\n- \n	2022-09-01 07:16:51.363991
144	Image	36	create	0qa(1)	---\nid:\n- \n- 36\nimage:\n- \n- kfc_Member_Voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:16:57.184817000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:16:57.184817000 Z\n	2022-09-01 07:16:57.184817
145	Image	37	create	0qa(1)	---\nid:\n- \n- 37\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:19:09.413392000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:19:09.413392000 Z\n	2022-09-01 07:19:09.413392
146	Image	38	create	0qa(1)	---\nid:\n- \n- 38\nimage:\n- \n- fries.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:20:41.769236000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:20:41.769236000 Z\n	2022-09-01 07:20:41.769236
147	Image	39	create	0qa(1)	---\nid:\n- \n- 39\nimage:\n- \n- __Fries小.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:22:18.062954000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:22:18.062954000 Z\n	2022-09-01 07:22:18.062954
148	Product	7	create	0qa(1)	---\nid:\n- \n- 7\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"Fries","zh-CN":"薯条"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.571451000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.571451000 Z\nname_en:\n- \n- Fries\nname_zh_cn:\n- \n- 薯条\n	2022-09-01 07:23:04.571451
149	ChannelSellable	16	create	0qa(1)	---\nid:\n- \n- 16\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.584175000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.584175000 Z\n	2022-09-01 07:23:04.584175
150	ChannelSellable	17	create	0qa(1)	---\nid:\n- \n- 17\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.592651000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.592651000 Z\n	2022-09-01 07:23:04.592651
1684	ProductSku	73	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-GS-Elephant Keychain-G-A\n	2022-09-13 03:35:43.481996
151	PreferenceGroup	2	create	0qa(1)	---\nid:\n- \n- 2\nproduct_id:\n- \n- 7\nname:\n- \n- '{"en":"Add ketchup","zh-CN":"加番茄酱"}'\nmin_selection:\n- 1\n- 0\nmax_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.603470000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.603470000 Z\nname_en:\n- \n- Add ketchup\nname_zh_cn:\n- \n- 加番茄酱\n	2022-09-01 07:23:04.60347
152	Variation	5	create	0qa(1)	---\nid:\n- \n- 5\nproduct_id:\n- \n- 7\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.616981000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.616981000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 07:23:04.616981
153	Variant	7	create	0qa(1)	---\nid:\n- \n- 7\nvariation_id:\n- \n- 5\nname:\n- \n- '{"en":"small ","zh-CN":"小份"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.625362000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.625362000 Z\nname_en:\n- \n- 'small '\nname_zh_cn:\n- \n- 小份\n	2022-09-01 07:23:04.625362
154	Variant	8	create	0qa(1)	---\nid:\n- \n- 8\nvariation_id:\n- \n- 5\nname:\n- \n- '{"en":"large","zh-CN":"大份"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.632062000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.632062000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大份\n	2022-09-01 07:23:04.632062
155	ProductSku	9	create	0qa(1)	---\nid:\n- \n- 9\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 11\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\nvariant_ids:\n- []\n- - 7\nproduct_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.647994000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.647994000 Z\n	2022-09-01 07:23:04.647994
156	ProductSku	10	create	0qa(1)	---\nid:\n- \n- 10\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 10\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\nvariant_ids:\n- []\n- - 8\nproduct_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:23:04.666818000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:23:04.666818000 Z\n	2022-09-01 07:23:04.666818
157	Image	40	create	0qa(1)	---\nid:\n- \n- 40\nimage:\n- \n- zoo_family_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:25:21.108299000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:25:21.108299000 Z\n	2022-09-01 07:25:21.108299
158	Image	41	create	0qa(1)	---\nid:\n- \n- 41\nimage:\n- \n- 印度黄姜饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:25:41.662953000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:25:41.662953000 Z\n	2022-09-01 07:25:41.662953
159	Image	42	create	0qa(1)	---\nid:\n- \n- 42\nimage:\n- \n- 印度黄姜饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:08.531856000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:08.531856000 Z\n	2022-09-01 07:26:08.531856
160	Product	8	create	0qa(1)	---\nid:\n- \n- 8\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"Indian Turmeric Rice","zh-CN":"印度黄姜饭"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:20.613313000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:20.613313000 Z\nname_en:\n- \n- Indian Turmeric Rice\nname_zh_cn:\n- \n- 印度黄姜饭\n	2022-09-01 07:26:20.613313
161	ChannelSellable	18	create	0qa(1)	---\nid:\n- \n- 18\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 8\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:20.636043000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:20.636043000 Z\n	2022-09-01 07:26:20.636043
162	ChannelSellable	19	create	0qa(1)	---\nid:\n- \n- 19\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 8\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:20.644574000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:20.644574000 Z\n	2022-09-01 07:26:20.644574
163	ProductSku	11	create	0qa(1)	---\nid:\n- \n- 11\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 12\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nproduct_id:\n- \n- 8\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:20.662957000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:20.662957000 Z\n	2022-09-01 07:26:20.662957
164	VoucherProduct	7	create	0qa(1)	---\nid:\n- \n- 7\nshop_id:\n- \n- 1\nvoucher_sku_id:\n- \n- 3\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.88e2\nname:\n- \n- '{"en":"Family Voucher","zh-CN":"家庭券"}'\ndesc:\n- \n- '{"en":"Family Voucher  desc","zh-CN":"家庭优惠券 描述"}'\nshort_desc:\n- \n- '{"en":"Family Voucher short desc","zh-CN":"家庭优惠券 简述"}'\nranking:\n- 0\n- 2\ninitial_sold_quantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:33.702895000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:33.702895000 Z\nname_en:\n- \n- Family Voucher\nname_zh_cn:\n- \n- 家庭券\ndesc_en:\n- \n- Family Voucher  desc\ndesc_zh_cn:\n- \n- 家庭优惠券 描述\nshort_desc_en:\n- \n- Family Voucher short desc\nshort_desc_zh_cn:\n- \n- 家庭优惠券 简述\n	2022-09-01 07:26:33.702895
165	ChannelSellable	20	create	0qa(1)	---\nid:\n- \n- 20\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:33.713902000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:33.713902000 Z\n	2022-09-01 07:26:33.713902
166	ChannelSellable	21	create	0qa(1)	---\nid:\n- \n- 21\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:26:33.721245000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:26:33.721245000 Z\n	2022-09-01 07:26:33.721245
167	Image	43	create	0qa(1)	---\nid:\n- \n- 43\nimage:\n- \n- 鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:28:25.296792000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:28:25.296792000 Z\n	2022-09-01 07:28:25.296792
168	Image	44	create	0qa(1)	---\nid:\n- \n- 44\nimage:\n- \n- 鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:28:38.394481000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:28:38.394481000 Z\n	2022-09-01 07:28:38.394481
223	ChannelSellable	34	create	0qa(1)	---\nid:\n- \n- 34\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 9\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:22:06.953837000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:22:06.953837000 Z\n	2022-09-01 08:22:06.953837
169	Product	9	create	0qa(1)	---\nid:\n- \n- 9\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"Hainan Chicken Rice","zh-CN":"海南鸡饭"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:28:39.164727000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:28:39.164727000 Z\nname_en:\n- \n- Hainan Chicken Rice\nname_zh_cn:\n- \n- 海南鸡饭\n	2022-09-01 07:28:39.164727
170	ChannelSellable	22	create	0qa(1)	---\nid:\n- \n- 22\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 9\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:28:39.180101000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:28:39.180101000 Z\n	2022-09-01 07:28:39.180101
171	ChannelSellable	23	create	0qa(1)	---\nid:\n- \n- 23\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 9\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:28:39.188662000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:28:39.188662000 Z\n	2022-09-01 07:28:39.188662
172	ProductSku	12	create	0qa(1)	---\nid:\n- \n- 12\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 13\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nproduct_id:\n- \n- 9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:28:39.204970000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:28:39.204970000 Z\n	2022-09-01 07:28:39.20497
173	Image	45	create	0qa(1)	---\nid:\n- \n- 45\nimage:\n- \n- 烤鸡.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:29:55.719642000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:29:55.719642000 Z\n	2022-09-01 07:29:55.719642
174	Image	46	create	0qa(1)	---\nid:\n- \n- 46\nimage:\n- \n- 烤鸡.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:30:07.079076000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:30:07.079076000 Z\n	2022-09-01 07:30:07.079076
175	Product	10	create	0qa(1)	---\nid:\n- \n- 10\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"Roast Chicken","zh-CN":"烤鸡"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:30:09.343389000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:30:09.343389000 Z\nname_en:\n- \n- Roast Chicken\nname_zh_cn:\n- \n- 烤鸡\n	2022-09-01 07:30:09.343389
176	ChannelSellable	24	create	0qa(1)	---\nid:\n- \n- 24\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 10\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:30:09.365635000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:30:09.365635000 Z\n	2022-09-01 07:30:09.365635
177	ChannelSellable	25	create	0qa(1)	---\nid:\n- \n- 25\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 10\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:30:09.384045000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:30:09.384045000 Z\n	2022-09-01 07:30:09.384045
178	ProductSku	13	create	0qa(1)	---\nid:\n- \n- 13\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 14\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nproduct_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:30:09.397607000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:30:09.397607000 Z\n	2022-09-01 07:30:09.397607
179	Image	47	create	0qa(1)	---\nid:\n- \n- 47\nimage:\n- \n- 西柚汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:31:14.946447000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:31:14.946447000 Z\n	2022-09-01 07:31:14.946447
180	Image	48	create	0qa(1)	---\nid:\n- \n- 48\nimage:\n- \n- 西柚汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:31:25.788654000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:31:25.788654000 Z\n	2022-09-01 07:31:25.788654
181	Image	49	create	0qa(1)	---\nid:\n- \n- 49\nimage:\n- \n- 西柚汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 07:59:16.583672000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 07:59:16.583672000 Z\n	2022-09-01 07:59:16.583672
182	Image	50	create	0qa(1)	---\nid:\n- \n- 50\nimage:\n- \n- 西柚汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:01:22.727700000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:01:22.727700000 Z\n	2022-09-01 08:01:22.7277
183	Product	11	create	0qa(1)	---\nid:\n- \n- 11\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"Grapefruit Guice","zh-CN":"鲜榨西柚汁"}'\nshort_desc:\n- \n- '{"en":"Our recommended drinks","zh-CN":"本店推荐饮料"}'\ndesc:\n- \n- '{"en":"Summer must-have drink","zh-CN":"夏日必选饮品"}'\nranking:\n- 0\n- 47\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.058871000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.058871000 Z\nname_en:\n- \n- Grapefruit Guice\nname_zh_cn:\n- \n- 鲜榨西柚汁\ndesc_en:\n- \n- Summer must-have drink\ndesc_zh_cn:\n- \n- 夏日必选饮品\nshort_desc_en:\n- \n- Our recommended drinks\nshort_desc_zh_cn:\n- \n- 本店推荐饮料\n	2022-09-01 08:11:30.058871
184	ChannelSellable	26	create	0qa(1)	---\nid:\n- \n- 26\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 11\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.072471000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.072471000 Z\n	2022-09-01 08:11:30.072471
185	ChannelSellable	27	create	0qa(1)	---\nid:\n- \n- 27\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 11\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.080381000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.080381000 Z\n	2022-09-01 08:11:30.080381
186	PreferenceGroup	3	create	0qa(1)	---\nid:\n- \n- 3\nproduct_id:\n- \n- 11\nname:\n- \n- '{"en":"add sugar ","zh-CN":"加糖"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.088559000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.088559000 Z\nname_en:\n- \n- 'add sugar '\nname_zh_cn:\n- \n- 加糖\n	2022-09-01 08:11:30.088559
187	PreferenceItem	1	create	0qa(1)	---\nid:\n- \n- 1\npreference_group_id:\n- \n- 3\nname:\n- \n- '{"en":"all sugar","zh-CN":"全糖"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.105763000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.105763000 Z\nname_en:\n- \n- all sugar\nname_zh_cn:\n- \n- 全糖\n	2022-09-01 08:11:30.105763
1207	Product	49	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 08:33:28.714222
188	PreferenceItem	2	create	0qa(1)	---\nid:\n- \n- 2\npreference_group_id:\n- \n- 3\nname:\n- \n- '{"en":"half sugar","zh-CN":"半糖"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.114058000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.114058000 Z\nname_en:\n- \n- half sugar\nname_zh_cn:\n- \n- 半糖\n	2022-09-01 08:11:30.114058
189	PreferenceItem	3	create	0qa(1)	---\nid:\n- \n- 3\npreference_group_id:\n- \n- 3\nname:\n- \n- '{"en":"no sugar","zh-CN":"无糖"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.120221000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.120221000 Z\nname_en:\n- \n- no sugar\nname_zh_cn:\n- \n- 无糖\n	2022-09-01 08:11:30.120221
190	PreferenceGroup	4	create	0qa(1)	---\nid:\n- \n- 4\nproduct_id:\n- \n- 11\nname:\n- \n- '{"en":" ice","zh-CN":"冰"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.127619000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.127619000 Z\nname_en:\n- \n- " ice"\nname_zh_cn:\n- \n- 冰\n	2022-09-01 08:11:30.127619
191	PreferenceItem	4	create	0qa(1)	---\nid:\n- \n- 4\npreference_group_id:\n- \n- 4\nname:\n- \n- '{"en":"no ice ","zh-CN":"不加冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.134265000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.134265000 Z\nname_en:\n- \n- 'no ice '\nname_zh_cn:\n- \n- 不加冰\n	2022-09-01 08:11:30.134265
192	PreferenceItem	5	create	0qa(1)	---\nid:\n- \n- 5\npreference_group_id:\n- \n- 4\nname:\n- \n- '{"en":"add ice","zh-CN":"加冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.140348000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.140348000 Z\nname_en:\n- \n- add ice\nname_zh_cn:\n- \n- 加冰\n	2022-09-01 08:11:30.140348
193	ProductSku	14	create	0qa(1)	---\nid:\n- \n- 14\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 15\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nproduct_id:\n- \n- 11\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:11:30.155445000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:11:30.155445000 Z\n	2022-09-01 08:11:30.155445
194	Image	51	create	0qa(1)	---\nid:\n- \n- 51\nimage:\n- \n- 葡萄汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:13:55.981631000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:13:55.981631000 Z\n	2022-09-01 08:13:55.981631
195	Image	52	create	0qa(1)	---\nid:\n- \n- 52\nimage:\n- \n- 葡萄汁.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:14:48.356972000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:14:48.356972000 Z\n	2022-09-01 08:14:48.356972
196	Product	12	create	0qa(1)	---\nid:\n- \n- 12\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"Grape Guice","zh-CN":"鲜榨葡萄汁"}'\nshort_desc:\n- \n- '{"en":"Our recommended drinks","zh-CN":"本店推荐饮品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 46\ninitial_sold_quantity:\n- 0\n- 12\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.076179000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.076179000 Z\nname_en:\n- \n- Grape Guice\nname_zh_cn:\n- \n- 鲜榨葡萄汁\nshort_desc_en:\n- \n- Our recommended drinks\nshort_desc_zh_cn:\n- \n- 本店推荐饮品\n	2022-09-01 08:15:33.076179
197	ChannelSellable	28	create	0qa(1)	---\nid:\n- \n- 28\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 12\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.091602000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.091602000 Z\n	2022-09-01 08:15:33.091602
198	ChannelSellable	29	create	0qa(1)	---\nid:\n- \n- 29\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 12\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.115427000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.115427000 Z\n	2022-09-01 08:15:33.115427
199	PreferenceGroup	5	create	0qa(1)	---\nid:\n- \n- 5\nproduct_id:\n- \n- 12\nname:\n- \n- '{"en":"ice","zh-CN":"冰"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.124653000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.124653000 Z\nname_en:\n- \n- ice\nname_zh_cn:\n- \n- 冰\n	2022-09-01 08:15:33.124653
200	PreferenceItem	6	create	0qa(1)	---\nid:\n- \n- 6\npreference_group_id:\n- \n- 5\nname:\n- \n- '{"en":"add ice","zh-CN":"加冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.133152000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.133152000 Z\nname_en:\n- \n- add ice\nname_zh_cn:\n- \n- 加冰\n	2022-09-01 08:15:33.133152
201	PreferenceItem	7	create	0qa(1)	---\nid:\n- \n- 7\npreference_group_id:\n- \n- 5\nname:\n- \n- '{"en":"no ice","zh-CN":"不加冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.139885000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.139885000 Z\nname_en:\n- \n- no ice\nname_zh_cn:\n- \n- 不加冰\n	2022-09-01 08:15:33.139885
202	ProductSku	15	create	0qa(1)	---\nid:\n- \n- 15\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 16\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\nproduct_id:\n- \n- 12\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:15:33.150444000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:15:33.150444000 Z\n	2022-09-01 08:15:33.150444
203	Image	53	create	0qa(1)	---\nid:\n- \n- 53\nimage:\n- \n- 火烈鸟体恤衫.npg.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:17:20.498337000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:17:20.498337000 Z\n	2022-09-01 08:17:20.498337
204	Image	54	create	0qa(1)	---\nid:\n- \n- 54\nimage:\n- \n- zoo_holiday_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:17:34.782501000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:17:34.782501000 Z\n	2022-09-01 08:17:34.782501
205	Image	55	create	0qa(1)	---\nid:\n- \n- 55\nimage:\n- \n- 火烈鸟体恤衫.npg.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:18:57.786429000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:18:57.786429000 Z\n	2022-09-01 08:18:57.786429
224	ChannelSellable	35	create	0qa(1)	---\nid:\n- \n- 35\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 9\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:22:06.963979000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:22:06.963979000 Z\n	2022-09-01 08:22:06.963979
206	VoucherProduct	8	create	0qa(1)	---\nid:\n- \n- 8\nshop_id:\n- \n- 1\nvoucher_sku_id:\n- \n- 7\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.288e2\nname:\n- \n- '{"en":"Holiday Voucher","zh-CN":"节日券"}'\ndesc:\n- \n- '{"en":"Holiday Voucher  desc","zh-CN":"节日优惠券描述..."}'\nshort_desc:\n- \n- '{"en":"Holiday Voucher  short desc","zh-CN":"节日优惠券简述"}'\nranking:\n- 0\n- 4\ninitial_sold_quantity:\n- 0\n- 49\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:19:05.000373000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:19:05.000373000 Z\nname_en:\n- \n- Holiday Voucher\nname_zh_cn:\n- \n- 节日券\ndesc_en:\n- \n- Holiday Voucher  desc\ndesc_zh_cn:\n- \n- 节日优惠券描述...\nshort_desc_en:\n- \n- Holiday Voucher  short desc\nshort_desc_zh_cn:\n- \n- 节日优惠券简述\n	2022-09-01 08:19:05.000373
207	ChannelSellable	30	create	0qa(1)	---\nid:\n- \n- 30\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 8\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:19:05.017577000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:19:05.017577000 Z\n	2022-09-01 08:19:05.017577
208	Image	56	create	0qa(1)	---\nid:\n- \n- 56\nimage:\n- \n- zoo_cash_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:09.092849000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:09.092849000 Z\n	2022-09-01 08:21:09.092849
209	Image	57	create	0qa(1)	---\nid:\n- \n- 57\nimage:\n- \n- 火烈鸟体恤衫.npg.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:45.911540000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:45.911540000 Z\n	2022-09-01 08:21:45.91154
210	Image	58	create	0qa(1)	---\nid:\n- \n- 58\nimage:\n- \n- 火烈鸟体恤衫.npg.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:56.271694000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:56.271694000 Z\n	2022-09-01 08:21:56.271694
211	Product	13	create	0qa(1)	---\nid:\n- \n- 13\nshop_id:\n- \n- 4\nname:\n- \n- '{"en":" Flamingo T-Shirt ","zh-CN":"火烈鸟T恤"}'\nshort_desc:\n- \n- '{"en":"Our recommended product","zh-CN":"本店推荐商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- 20\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.860540000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.860540000 Z\nname_en:\n- \n- " Flamingo T-Shirt "\nname_zh_cn:\n- \n- 火烈鸟T恤\nshort_desc_en:\n- \n- Our recommended product\nshort_desc_zh_cn:\n- \n- 本店推荐商品\n	2022-09-01 08:21:58.86054
212	ChannelSellable	31	create	0qa(1)	---\nid:\n- \n- 31\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 13\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.875598000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.875598000 Z\n	2022-09-01 08:21:58.875598
213	ChannelSellable	32	create	0qa(1)	---\nid:\n- \n- 32\nchannel_id:\n- \n- 9\nsellable_id:\n- \n- 13\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.885430000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.885430000 Z\n	2022-09-01 08:21:58.88543
214	ChannelSellable	33	create	0qa(1)	---\nid:\n- \n- 33\nchannel_id:\n- \n- 8\nsellable_id:\n- \n- 13\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.893905000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.893905000 Z\n	2022-09-01 08:21:58.893905
215	Variation	6	create	0qa(1)	---\nid:\n- \n- 6\nproduct_id:\n- \n- 13\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.908274000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.908274000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-01 08:21:58.908274
216	Variant	9	create	0qa(1)	---\nid:\n- \n- 9\nvariation_id:\n- \n- 6\nname:\n- \n- '{"en":"pink","zh-CN":"粉色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.925529000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.925529000 Z\nname_en:\n- \n- pink\nname_zh_cn:\n- \n- 粉色\n	2022-09-01 08:21:58.925529
217	Variation	7	create	0qa(1)	---\nid:\n- \n- 7\nproduct_id:\n- \n- 13\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.937487000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.937487000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 08:21:58.937487
218	Variant	10	create	0qa(1)	---\nid:\n- \n- 10\nvariation_id:\n- \n- 7\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.950080000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.950080000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-01 08:21:58.95008
219	Variant	11	create	0qa(1)	---\nid:\n- \n- 11\nvariation_id:\n- \n- 7\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.957608000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.957608000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-01 08:21:58.957608
220	ProductSku	16	create	0qa(1)	---\nid:\n- \n- 16\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 17\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 9\n  - 10\nproduct_id:\n- \n- 13\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.971869000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.971869000 Z\n	2022-09-01 08:21:58.971869
221	ProductSku	17	create	0qa(1)	---\nid:\n- \n- 17\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 18\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 9\n  - 11\nproduct_id:\n- \n- 13\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:21:58.987782000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:21:58.987782000 Z\n	2022-09-01 08:21:58.987782
222	VoucherProduct	9	create	0qa(1)	---\nid:\n- \n- 9\nshop_id:\n- \n- 1\nvoucher_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.48e2\nname:\n- \n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\ndesc:\n- \n- '{"en":"Cash Voucher desc","zh-CN":"现金券 描述"}'\nshort_desc:\n- \n- '{"en":"Cash Voucher short desc","zh-CN":"现金券 简介....."}'\nranking:\n- 0\n- 5\ninitial_sold_quantity:\n- 0\n- 500\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:22:06.933895000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:22:06.933895000 Z\nname_en:\n- \n- Cash Voucher\nname_zh_cn:\n- \n- 现金券\ndesc_en:\n- \n- Cash Voucher desc\ndesc_zh_cn:\n- \n- 现金券 描述\nshort_desc_en:\n- \n- Cash Voucher short desc\nshort_desc_zh_cn:\n- \n- 现金券 简介.....\n	2022-09-01 08:22:06.933895
1685	ProductSku	7	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-KFC-Coke-L\n	2022-09-13 03:36:23.943166
225	Image	59	create	0qa(1)	---\nid:\n- \n- 59\nimage:\n- \n- 火烈鸟杯子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:24:00.504617000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:24:00.504617000 Z\n	2022-09-01 08:24:00.504617
226	Image	60	create	0qa(1)	---\nid:\n- \n- 60\nimage:\n- \n- 火烈鸟杯子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:24:28.344383000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:24:28.344383000 Z\n	2022-09-01 08:24:28.344383
227	Product	14	create	0qa(1)	---\nid:\n- \n- 14\nshop_id:\n- \n- 4\nname:\n- \n- '{"en":"Flamingo Water Cup","zh-CN":"火烈鸟杯"}'\nshort_desc:\n- \n- '{"en":"Our recommended products","zh-CN":"本店推荐商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:24:28.909411000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:24:28.909411000 Z\nname_en:\n- \n- Flamingo Water Cup\nname_zh_cn:\n- \n- 火烈鸟杯\nshort_desc_en:\n- \n- Our recommended products\nshort_desc_zh_cn:\n- \n- 本店推荐商品\n	2022-09-01 08:24:28.909411
228	ChannelSellable	36	create	0qa(1)	---\nid:\n- \n- 36\nchannel_id:\n- \n- 9\nsellable_id:\n- \n- 14\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:24:28.931049000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:24:28.931049000 Z\n	2022-09-01 08:24:28.931049
229	ChannelSellable	37	create	0qa(1)	---\nid:\n- \n- 37\nchannel_id:\n- \n- 10\nsellable_id:\n- \n- 14\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:24:28.945433000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:24:28.945433000 Z\n	2022-09-01 08:24:28.945433
230	ProductSku	18	create	0qa(1)	---\nid:\n- \n- 18\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 19\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nproduct_id:\n- \n- 14\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:24:28.960673000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:24:28.960673000 Z\n	2022-09-01 08:24:28.960673
231	Image	61	create	0qa(1)	---\nid:\n- \n- 61\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:27:32.943702000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:27:32.943702000 Z\n	2022-09-01 08:27:32.943702
232	Image	62	create	0qa(1)	---\nid:\n- \n- 62\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:28.789114000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:28.789114000 Z\n	2022-09-01 08:29:28.789114
233	Image	63	create	0qa(1)	---\nid:\n- \n- 63\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:39.595790000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:39.595790000 Z\n	2022-09-01 08:29:39.59579
234	Image	64	create	0qa(1)	---\nid:\n- \n- 64\nimage:\n- \n- qie.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:48.411644000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:48.411644000 Z\n	2022-09-01 08:29:48.411644
235	Product	15	create	0qa(1)	---\nid:\n- \n- 15\nshop_id:\n- \n- 4\nname:\n- \n- '{"en":"Penguin Doll ","zh-CN":"企鹅玩偶"}'\nshort_desc:\n- \n- '{"en":"Our recommended products","zh-CN":"本店推荐商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.349551000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.349551000 Z\nname_en:\n- \n- 'Penguin Doll '\nname_zh_cn:\n- \n- 企鹅玩偶\nshort_desc_en:\n- \n- Our recommended products\nshort_desc_zh_cn:\n- \n- 本店推荐商品\n	2022-09-01 08:29:53.349551
236	ChannelSellable	38	create	0qa(1)	---\nid:\n- \n- 38\nchannel_id:\n- \n- 9\nsellable_id:\n- \n- 15\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.366766000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.366766000 Z\n	2022-09-01 08:29:53.366766
237	ChannelSellable	39	create	0qa(1)	---\nid:\n- \n- 39\nchannel_id:\n- \n- 10\nsellable_id:\n- \n- 15\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.381024000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.381024000 Z\n	2022-09-01 08:29:53.381024
238	ChannelSellable	40	create	0qa(1)	---\nid:\n- \n- 40\nchannel_id:\n- \n- 8\nsellable_id:\n- \n- 15\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.392850000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.392850000 Z\n	2022-09-01 08:29:53.39285
239	Variation	8	create	0qa(1)	---\nid:\n- \n- 8\nproduct_id:\n- \n- 15\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.401440000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.401440000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 08:29:53.40144
240	Variant	12	create	0qa(1)	---\nid:\n- \n- 12\nvariation_id:\n- \n- 8\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.410100000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.410100000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-01 08:29:53.4101
241	Variant	13	create	0qa(1)	---\nid:\n- \n- 13\nvariation_id:\n- \n- 8\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.418967000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.418967000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\n	2022-09-01 08:29:53.418967
242	Variant	14	create	0qa(1)	---\nid:\n- \n- 14\nvariation_id:\n- \n- 8\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.427655000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.427655000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-01 08:29:53.427655
243	ProductSku	19	create	0qa(1)	---\nid:\n- \n- 19\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 20\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 12\nproduct_id:\n- \n- 15\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.441887000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.441887000 Z\n	2022-09-01 08:29:53.441887
263	Variant	18	create	0qa(1)	---\nid:\n- \n- 18\nvariation_id:\n- \n- 10\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.899130000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.899130000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-01 08:37:44.89913
244	ProductSku	20	create	0qa(1)	---\nid:\n- \n- 20\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 21\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\nvariant_ids:\n- []\n- - 13\nproduct_id:\n- \n- 15\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.460158000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.460158000 Z\n	2022-09-01 08:29:53.460158
245	ProductSku	21	create	0qa(1)	---\nid:\n- \n- 21\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 22\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nvariant_ids:\n- []\n- - 14\nproduct_id:\n- \n- 15\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:29:53.474813000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:29:53.474813000 Z\n	2022-09-01 08:29:53.474813
246	Image	65	create	0qa(1)	---\nid:\n- \n- 65\nimage:\n- \n- 鹦鹉-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:32:34.298244000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:32:34.298244000 Z\n	2022-09-01 08:32:34.298244
247	Image	66	create	0qa(1)	---\nid:\n- \n- 66\nimage:\n- \n- family_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:32:36.571403000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:32:36.571403000 Z\n	2022-09-01 08:32:36.571403
248	VoucherProduct	10	create	0qa(1)	---\nid:\n- \n- 10\nshop_id:\n- \n- 3\nvoucher_sku_id:\n- \n- 3\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.88e2\nname:\n- \n- '{"en":"Family Voucher","zh-CN":"家庭优惠券"}'\ndesc:\n- \n- '{"en":"Ah Meng Restaurant E-shop. Family Voucher","zh-CN":"阿明餐厅 家庭优惠券"}'\nshort_desc:\n- \n- '{"en":"Family Voucher","zh-CN":"家庭优惠券"}'\nactive:\n- true\n- false\nsearchable:\n- true\n- false\nranking:\n- 0\n- \ninitial_sold_quantity:\n- 0\n- 68\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:34:22.969055000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:34:22.969055000 Z\nname_en:\n- \n- Family Voucher\nname_zh_cn:\n- \n- 家庭优惠券\ndesc_en:\n- \n- Ah Meng Restaurant E-shop. Family Voucher\ndesc_zh_cn:\n- \n- 阿明餐厅 家庭优惠券\nshort_desc_en:\n- \n- Family Voucher\nshort_desc_zh_cn:\n- \n- 家庭优惠券\n	2022-09-01 08:34:22.969055
249	ChannelSellable	41	create	0qa(1)	---\nid:\n- \n- 41\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 10\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:34:22.981668000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:34:22.981668000 Z\n	2022-09-01 08:34:22.981668
250	VoucherProduct	10	update	0qa(1)	---\nactive:\n- false\n- true\nsearchable:\n- false\n- true\nranking:\n- \n- 4\n	2022-09-01 08:34:40.022415
251	Image	67	create	0qa(1)	---\nid:\n- \n- 67\nimage:\n- \n- yingwu.blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:07.015816000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:07.015816000 Z\n	2022-09-01 08:37:07.015816
252	Image	68	create	0qa(1)	---\nid:\n- \n- 68\nimage:\n- \n- yingwu_red.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:27.035122000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:27.035122000 Z\n	2022-09-01 08:37:27.035122
253	Image	69	create	0qa(1)	---\nid:\n- \n- 69\nimage:\n- \n- yingwuwhite.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:42.451385000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:42.451385000 Z\n	2022-09-01 08:37:42.451385
254	Product	16	create	0qa(1)	---\nid:\n- \n- 16\nshop_id:\n- \n- 4\nname:\n- \n- '{"en":"Parrot Doll","zh-CN":"鹦鹉玩偶"}'\nshort_desc:\n- \n- '{"en":"Bestsellers in our shop","zh-CN":"本店畅销产品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 47\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.829188000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.829188000 Z\nname_en:\n- \n- Parrot Doll\nname_zh_cn:\n- \n- 鹦鹉玩偶\nshort_desc_en:\n- \n- Bestsellers in our shop\nshort_desc_zh_cn:\n- \n- 本店畅销产品\n	2022-09-01 08:37:44.829188
255	ChannelSellable	42	create	0qa(1)	---\nid:\n- \n- 42\nchannel_id:\n- \n- 8\nsellable_id:\n- \n- 16\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.843830000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.843830000 Z\n	2022-09-01 08:37:44.84383
256	ChannelSellable	43	create	0qa(1)	---\nid:\n- \n- 43\nchannel_id:\n- \n- 9\nsellable_id:\n- \n- 16\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.852207000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.852207000 Z\n	2022-09-01 08:37:44.852207
257	ChannelSellable	44	create	0qa(1)	---\nid:\n- \n- 44\nchannel_id:\n- \n- 10\nsellable_id:\n- \n- 16\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.859887000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.859887000 Z\n	2022-09-01 08:37:44.859887
258	Variation	9	create	0qa(1)	---\nid:\n- \n- 9\nproduct_id:\n- \n- 16\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.867696000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.867696000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-01 08:37:44.867696
259	Variant	15	create	0qa(1)	---\nid:\n- \n- 15\nvariation_id:\n- \n- 9\nname:\n- \n- '{"en":"blue","zh-CN":"蓝色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.873952000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.873952000 Z\nname_en:\n- \n- blue\nname_zh_cn:\n- \n- 蓝色\n	2022-09-01 08:37:44.873952
260	Variant	16	create	0qa(1)	---\nid:\n- \n- 16\nvariation_id:\n- \n- 9\nname:\n- \n- '{"en":"red","zh-CN":"红色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.879558000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.879558000 Z\nname_en:\n- \n- red\nname_zh_cn:\n- \n- 红色\n	2022-09-01 08:37:44.879558
261	Variant	17	create	0qa(1)	---\nid:\n- \n- 17\nvariation_id:\n- \n- 9\nname:\n- \n- '{"en":"white","zh-CN":"白色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.885448000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.885448000 Z\nname_en:\n- \n- white\nname_zh_cn:\n- \n- 白色\n	2022-09-01 08:37:44.885448
262	Variation	10	create	0qa(1)	---\nid:\n- \n- 10\nproduct_id:\n- \n- 16\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.891593000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.891593000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 08:37:44.891593
1208	ProductSku	51	update	0qa(1)	---\noutlet_sku_id:\n- 7\n- 6\nprice:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 08:34:11.265222
264	Variant	19	create	0qa(1)	---\nid:\n- \n- 19\nvariation_id:\n- \n- 10\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.918483000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.918483000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\n	2022-09-01 08:37:44.918483
265	Variant	20	create	0qa(1)	---\nid:\n- \n- 20\nvariation_id:\n- \n- 10\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.928661000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.928661000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-01 08:37:44.928661
266	ProductSku	22	create	0qa(1)	---\nid:\n- \n- 22\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 23\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 15\n  - 20\nproduct_id:\n- \n- 16\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.948013000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.948013000 Z\n	2022-09-01 08:37:44.948013
267	ProductSku	23	create	0qa(1)	---\nid:\n- \n- 23\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 24\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.9e1\nvariant_ids:\n- []\n- - 16\n  - 19\nproduct_id:\n- \n- 16\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.962604000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.962604000 Z\n	2022-09-01 08:37:44.962604
268	ProductSku	24	create	0qa(1)	---\nid:\n- \n- 24\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 25\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\nvariant_ids:\n- []\n- - 17\n  - 18\nproduct_id:\n- \n- 16\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:37:44.974424000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:37:44.974424000 Z\n	2022-09-01 08:37:44.974424
269	Image	70	create	0qa(1)	---\nid:\n- \n- 70\nimage:\n- \n- res_cash_voucer.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:38:49.249488000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:38:49.249488000 Z\n	2022-09-01 08:38:49.249488
270	VoucherProduct	11	create	0qa(1)	---\nid:\n- \n- 11\nshop_id:\n- \n- 3\nvoucher_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.48e2\nname:\n- \n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\ndesc:\n- \n- '{"en":"Ah Meng Restaurant E-shop  Cash Voucher","zh-CN":"阿明餐厅 现金券"}'\nshort_desc:\n- \n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\nranking:\n- 0\n- 5\ninitial_sold_quantity:\n- 0\n- 55\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:39:35.559875000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:39:35.559875000 Z\nname_en:\n- \n- Cash Voucher\nname_zh_cn:\n- \n- 现金券\ndesc_en:\n- \n- Ah Meng Restaurant E-shop  Cash Voucher\ndesc_zh_cn:\n- \n- 阿明餐厅 现金券\nshort_desc_en:\n- \n- Cash Voucher\nshort_desc_zh_cn:\n- \n- 现金券\n	2022-09-01 08:39:35.559875
271	ChannelSellable	45	create	0qa(1)	---\nid:\n- \n- 45\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 11\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:39:35.573535000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:39:35.573535000 Z\n	2022-09-01 08:39:35.573535
272	ChannelSellable	46	create	0qa(1)	---\nid:\n- \n- 46\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 11\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:39:35.582523000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:39:35.582523000 Z\n	2022-09-01 08:39:35.582523
273	Image	71	create	0qa(1)	---\nid:\n- \n- 71\nimage:\n- \n- 意大利面.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:41:09.038900000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:41:09.038900000 Z\n	2022-09-01 08:41:09.0389
274	Image	72	create	0qa(1)	---\nid:\n- \n- 72\nimage:\n- \n- 番茄意面.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:42:27.702786000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:42:27.702786000 Z\n	2022-09-01 08:42:27.702786
275	Product	17	create	0qa(1)	---\nid:\n- \n- 17\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"Tomato Pasta","zh-CN":"番茄意面"}'\nshort_desc:\n- \n- '{"en":"Bestsellers in our store","zh-CN":"本店畅销商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:42:35.522521000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:42:35.522521000 Z\nname_en:\n- \n- Tomato Pasta\nname_zh_cn:\n- \n- 番茄意面\nshort_desc_en:\n- \n- Bestsellers in our store\nshort_desc_zh_cn:\n- \n- 本店畅销商品\n	2022-09-01 08:42:35.522521
276	ChannelSellable	47	create	0qa(1)	---\nid:\n- \n- 47\nchannel_id:\n- \n- 11\nsellable_id:\n- \n- 17\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:42:35.545280000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:42:35.545280000 Z\n	2022-09-01 08:42:35.54528
277	ChannelSellable	48	create	0qa(1)	---\nid:\n- \n- 48\nchannel_id:\n- \n- 12\nsellable_id:\n- \n- 17\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:42:35.555042000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:42:35.555042000 Z\n	2022-09-01 08:42:35.555042
278	ProductSku	25	create	0qa(1)	---\nid:\n- \n- 25\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 26\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nproduct_id:\n- \n- 17\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:42:35.580047000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:42:35.580047000 Z\n	2022-09-01 08:42:35.580047
279	Image	73	create	0qa(1)	---\nid:\n- \n- 73\nimage:\n- \n- 香草.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:44:26.795758000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:44:26.795758000 Z\n	2022-09-01 08:44:26.795758
280	Image	74	create	0qa(1)	---\nid:\n- \n- 74\nimage:\n- \n- 香草.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:46:11.540303000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:46:11.540303000 Z\n	2022-09-01 08:46:11.540303
298	Variant	22	create	0qa(1)	---\nid:\n- \n- 22\nvariation_id:\n- \n- 11\nname:\n- \n- '{"en":"large","zh-CN":"大尺寸"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.525539000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.525539000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大尺寸\n	2022-09-01 08:54:44.525539
1209	Product	49	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 08:34:11.279278
281	Product	18	create	0qa(1)	---\nid:\n- \n- 18\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"Vanilla Anchovy Shrimp","zh-CN":"香草凤尾虾"}'\nshort_desc:\n- \n- '{"en":"Bestsellers in our store","zh-CN":"本店畅销商品"}'\ndesc:\n- \n- '{"en":"Fry lover''s first choice","zh-CN":"油炸爱好者首选"}'\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.352257000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.352257000 Z\nname_en:\n- \n- Vanilla Anchovy Shrimp\nname_zh_cn:\n- \n- 香草凤尾虾\ndesc_en:\n- \n- Fry lover's first choice\ndesc_zh_cn:\n- \n- 油炸爱好者首选\nshort_desc_en:\n- \n- Bestsellers in our store\nshort_desc_zh_cn:\n- \n- 本店畅销商品\n	2022-09-01 08:48:48.352257
282	ChannelSellable	49	create	0qa(1)	---\nid:\n- \n- 49\nchannel_id:\n- \n- 11\nsellable_id:\n- \n- 18\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.368542000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.368542000 Z\n	2022-09-01 08:48:48.368542
283	ChannelSellable	50	create	0qa(1)	---\nid:\n- \n- 50\nchannel_id:\n- \n- 12\nsellable_id:\n- \n- 18\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.378668000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.378668000 Z\n	2022-09-01 08:48:48.378668
284	PreferenceGroup	6	create	0qa(1)	---\nid:\n- \n- 6\nproduct_id:\n- \n- 18\nname:\n- \n- '{"en":"sauce","zh-CN":"酱汁"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.396617000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.396617000 Z\nname_en:\n- \n- sauce\nname_zh_cn:\n- \n- 酱汁\n	2022-09-01 08:48:48.396617
285	PreferenceItem	8	create	0qa(1)	---\nid:\n- \n- 8\npreference_group_id:\n- \n- 6\nname:\n- \n- '{"en":"ketchup","zh-CN":"蕃茄酱"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.413444000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.413444000 Z\nname_en:\n- \n- ketchup\nname_zh_cn:\n- \n- 蕃茄酱\n	2022-09-01 08:48:48.413444
286	PreferenceItem	9	create	0qa(1)	---\nid:\n- \n- 9\npreference_group_id:\n- \n- 6\nname:\n- \n- '{"en":"salad dressing","zh-CN":"沙拉酱"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.426982000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.426982000 Z\nname_en:\n- \n- salad dressing\nname_zh_cn:\n- \n- 沙拉酱\n	2022-09-01 08:48:48.426982
287	PreferenceItem	10	create	0qa(1)	---\nid:\n- \n- 10\npreference_group_id:\n- \n- 6\nname:\n- \n- '{"en":"Honey Mustard Sauce","zh-CN":"蜂蜜芥末酱"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.438695000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.438695000 Z\nname_en:\n- \n- Honey Mustard Sauce\nname_zh_cn:\n- \n- 蜂蜜芥末酱\n	2022-09-01 08:48:48.438695
288	PreferenceItem	11	create	0qa(1)	---\nid:\n- \n- 11\npreference_group_id:\n- \n- 6\nname:\n- \n- '{"en":"hot sauce","zh-CN":"辣酱"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.450252000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.450252000 Z\nname_en:\n- \n- hot sauce\nname_zh_cn:\n- \n- 辣酱\n	2022-09-01 08:48:48.450252
289	ProductSku	26	create	0qa(1)	---\nid:\n- \n- 26\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 27\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.36e1\nproduct_id:\n- \n- 18\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:48:48.463583000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:48:48.463583000 Z\n	2022-09-01 08:48:48.463583
290	Image	75	create	0qa(1)	---\nid:\n- \n- 75\nimage:\n- \n- 榴莲.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:51:57.528426000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:51:57.528426000 Z\n	2022-09-01 08:51:57.528426
291	Image	76	create	0qa(1)	---\nid:\n- \n- 76\nimage:\n- \n- 榴莲.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:30.259375000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:30.259375000 Z\n	2022-09-01 08:54:30.259375
292	Image	77	create	0qa(1)	---\nid:\n- \n- 77\nimage:\n- \n- 榴莲.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:41.682804000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:41.682804000 Z\n	2022-09-01 08:54:41.682804
293	Product	19	create	0qa(1)	---\nid:\n- \n- 19\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"Durian Pizz","zh-CN":"榴莲披萨"}'\nshort_desc:\n- \n- '{"en":"Our recommended products","zh-CN":"本店推荐商品"}'\ndesc:\n- \n- '{"en":"People who don''t like durian should be careful","zh-CN":"不爱吃榴莲的人慎点"}'\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- 100\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.487798000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.487798000 Z\nname_en:\n- \n- Durian Pizz\nname_zh_cn:\n- \n- 榴莲披萨\ndesc_en:\n- \n- People who don't like durian should be careful\ndesc_zh_cn:\n- \n- 不爱吃榴莲的人慎点\nshort_desc_en:\n- \n- Our recommended products\nshort_desc_zh_cn:\n- \n- 本店推荐商品\n	2022-09-01 08:54:44.487798
294	ChannelSellable	51	create	0qa(1)	---\nid:\n- \n- 51\nchannel_id:\n- \n- 12\nsellable_id:\n- \n- 19\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.498764000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.498764000 Z\n	2022-09-01 08:54:44.498764
295	ChannelSellable	52	create	0qa(1)	---\nid:\n- \n- 52\nchannel_id:\n- \n- 11\nsellable_id:\n- \n- 19\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.506797000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.506797000 Z\n	2022-09-01 08:54:44.506797
296	Variation	11	create	0qa(1)	---\nid:\n- \n- 11\nproduct_id:\n- \n- 19\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.513910000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.513910000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 08:54:44.51391
297	Variant	21	create	0qa(1)	---\nid:\n- \n- 21\nvariation_id:\n- \n- 11\nname:\n- \n- '{"en":"small","zh-CN":"小尺寸"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.520304000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.520304000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小尺寸\n	2022-09-01 08:54:44.520304
1686	ProductSku	8	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-KFC-Coke-S\n	2022-09-13 03:36:23.952522
299	ProductSku	27	create	0qa(1)	---\nid:\n- \n- 27\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 28\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\nvariant_ids:\n- []\n- - 21\nproduct_id:\n- \n- 19\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.534924000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.534924000 Z\n	2022-09-01 08:54:44.534924
300	ProductSku	28	create	0qa(1)	---\nid:\n- \n- 28\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 29\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nvariant_ids:\n- []\n- - 22\nproduct_id:\n- \n- 19\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:54:44.550134000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:54:44.550134000 Z\n	2022-09-01 08:54:44.550134
301	Image	78	create	0qa(1)	---\nid:\n- \n- 78\nimage:\n- \n- 海鲜.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:55:49.028982000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:55:49.028982000 Z\n	2022-09-01 08:55:49.028982
302	Image	79	create	0qa(1)	---\nid:\n- \n- 79\nimage:\n- \n- 海鲜.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:24.097486000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:24.097486000 Z\n	2022-09-01 08:57:24.097486
303	Image	80	create	0qa(1)	---\nid:\n- \n- 80\nimage:\n- \n- 海鲜.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:33.255228000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:33.255228000 Z\n	2022-09-01 08:57:33.255228
304	Product	20	create	0qa(1)	---\nid:\n- \n- 20\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"Seafood Pizza","zh-CN":"海鲜披萨"}'\nshort_desc:\n- \n- '{"en":"Our new products","zh-CN":"本店新品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 47\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:35.835475000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:35.835475000 Z\nname_en:\n- \n- Seafood Pizza\nname_zh_cn:\n- \n- 海鲜披萨\nshort_desc_en:\n- \n- Our new products\nshort_desc_zh_cn:\n- \n- 本店新品\n	2022-09-01 08:57:35.835475
305	ChannelSellable	53	create	0qa(1)	---\nid:\n- \n- 53\nchannel_id:\n- \n- 12\nsellable_id:\n- \n- 20\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:35.876786000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:35.876786000 Z\n	2022-09-01 08:57:35.876786
306	ChannelSellable	54	create	0qa(1)	---\nid:\n- \n- 54\nchannel_id:\n- \n- 11\nsellable_id:\n- \n- 20\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:35.927120000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:35.927120000 Z\n	2022-09-01 08:57:35.92712
307	Variation	12	create	0qa(1)	---\nid:\n- \n- 12\nproduct_id:\n- \n- 20\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:35.948880000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:35.948880000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 08:57:35.94888
308	Variant	23	create	0qa(1)	---\nid:\n- \n- 23\nvariation_id:\n- \n- 12\nname:\n- \n- '{"en":"small","zh-CN":"小尺寸"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:35.978705000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:35.978705000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小尺寸\n	2022-09-01 08:57:35.978705
309	Variant	24	create	0qa(1)	---\nid:\n- \n- 24\nvariation_id:\n- \n- 12\nname:\n- \n- '{"en":"large","zh-CN":"大尺寸"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:35.992050000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:35.992050000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大尺寸\n	2022-09-01 08:57:35.99205
310	ProductSku	29	create	0qa(1)	---\nid:\n- \n- 29\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 30\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 23\nproduct_id:\n- \n- 20\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:36.013382000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:36.013382000 Z\n	2022-09-01 08:57:36.013382
311	ProductSku	30	create	0qa(1)	---\nid:\n- \n- 30\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 31\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvariant_ids:\n- []\n- - 24\nproduct_id:\n- \n- 20\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:57:36.030261000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:57:36.030261000 Z\n	2022-09-01 08:57:36.030261
312	Image	81	create	0qa(1)	---\nid:\n- \n- 81\nimage:\n- \n- 黑椒牛排.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:58:39.401515000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:58:39.401515000 Z\n	2022-09-01 08:58:39.401515
313	Image	82	create	0qa(1)	---\nid:\n- \n- 82\nimage:\n- \n- 黑椒牛排.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 08:59:13.141647000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 08:59:13.141647000 Z\n	2022-09-01 08:59:13.141647
314	Image	83	create	0qa(1)	---\nid:\n- \n- 83\nimage:\n- \n- Food_voucher.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:04:43.525762000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:04:43.525762000 Z\n	2022-09-01 09:04:43.525762
315	VoucherProduct	12	create	0qa(1)	---\nid:\n- \n- 12\nshop_id:\n- \n- 3\nvoucher_sku_id:\n- \n- 9\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.299e3\nname:\n- \n- '{"en":"Discount Voucher","zh-CN":"折扣券"}'\ndesc:\n- \n- '{"en":"Ah Meng Restaurant E-shop Discount Voucher","zh-CN":"阿明餐厅 折扣券"}'\nshort_desc:\n- \n- '{"en":"Discount Voucher","zh-CN":"折扣券"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- 99\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:04:50.735892000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:04:50.735892000 Z\nname_en:\n- \n- Discount Voucher\nname_zh_cn:\n- \n- 折扣券\ndesc_en:\n- \n- Ah Meng Restaurant E-shop Discount Voucher\ndesc_zh_cn:\n- \n- 阿明餐厅 折扣券\nshort_desc_en:\n- \n- Discount Voucher\nshort_desc_zh_cn:\n- \n- 折扣券\n	2022-09-01 09:04:50.735892
316	ChannelSellable	55	create	0qa(1)	---\nid:\n- \n- 55\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 12\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:04:50.748176000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:04:50.748176000 Z\n	2022-09-01 09:04:50.748176
354	Image	94	create	0qa(1)	---\nid:\n- \n- 94\nimage:\n- \n- 咖喱鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:19.463735000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:19.463735000 Z\n	2022-09-01 09:16:19.463735
317	Product	21	create	0qa(1)	---\nid:\n- \n- 21\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"Black Pepper Steak","zh-CN":"黑椒牛排"}'\nshort_desc:\n- \n- '{"en":"Our new products","zh-CN":"本店新品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 46\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.159121000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.159121000 Z\nname_en:\n- \n- Black Pepper Steak\nname_zh_cn:\n- \n- 黑椒牛排\nshort_desc_en:\n- \n- Our new products\nshort_desc_zh_cn:\n- \n- 本店新品\n	2022-09-01 09:05:42.159121
318	ChannelSellable	56	create	0qa(1)	---\nid:\n- \n- 56\nchannel_id:\n- \n- 12\nsellable_id:\n- \n- 21\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.169707000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.169707000 Z\n	2022-09-01 09:05:42.169707
319	ChannelSellable	57	create	0qa(1)	---\nid:\n- \n- 57\nchannel_id:\n- \n- 11\nsellable_id:\n- \n- 21\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.176684000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.176684000 Z\n	2022-09-01 09:05:42.176684
320	PreferenceGroup	7	create	0qa(1)	---\nid:\n- \n- 7\nproduct_id:\n- \n- 21\nname:\n- \n- '{"en":"Cooked","zh-CN":"熟度"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.190214000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.190214000 Z\nname_en:\n- \n- Cooked\nname_zh_cn:\n- \n- 熟度\n	2022-09-01 09:05:42.190214
321	PreferenceItem	12	create	0qa(1)	---\nid:\n- \n- 12\npreference_group_id:\n- \n- 7\nname:\n- \n- '{"en":"well done","zh-CN":"全熟"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.197911000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.197911000 Z\nname_en:\n- \n- well done\nname_zh_cn:\n- \n- 全熟\n	2022-09-01 09:05:42.197911
322	PreferenceItem	13	create	0qa(1)	---\nid:\n- \n- 13\npreference_group_id:\n- \n- 7\nname:\n- \n- '{"en":"medium well","zh-CN":"七分熟"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.204104000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.204104000 Z\nname_en:\n- \n- medium well\nname_zh_cn:\n- \n- 七分熟\n	2022-09-01 09:05:42.204104
323	PreferenceItem	14	create	0qa(1)	---\nid:\n- \n- 14\npreference_group_id:\n- \n- 7\nname:\n- \n- '{"en":"medium","zh-CN":"五分熟"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.209662000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.209662000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 五分熟\n	2022-09-01 09:05:42.209662
324	PreferenceItem	15	create	0qa(1)	---\nid:\n- \n- 15\npreference_group_id:\n- \n- 7\nname:\n- \n- '{"en":"medium rare","zh-CN":"三分熟"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.215923000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.215923000 Z\nname_en:\n- \n- medium rare\nname_zh_cn:\n- \n- 三分熟\n	2022-09-01 09:05:42.215923
325	ProductSku	31	create	0qa(1)	---\nid:\n- \n- 31\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 32\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nproduct_id:\n- \n- 21\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:05:42.224715000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:05:42.224715000 Z\n	2022-09-01 09:05:42.224715
326	Image	84	create	0qa(1)	---\nid:\n- \n- 84\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:07:01.040085000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:07:01.040085000 Z\n	2022-09-01 09:07:01.040085
327	Image	85	create	0qa(1)	---\nid:\n- \n- 85\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:08:39.225231000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:08:39.225231000 Z\n	2022-09-01 09:08:39.225231
328	Image	86	create	0qa(1)	---\nid:\n- \n- 86\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:08:52.871147000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:08:52.871147000 Z\n	2022-09-01 09:08:52.871147
329	Image	87	create	0qa(1)	---\nid:\n- \n- 87\nimage:\n- \n- 狮子.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:01.139590000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:01.139590000 Z\n	2022-09-01 09:09:01.13959
330	Product	22	create	0qa(1)	---\nid:\n- \n- 22\nshop_id:\n- \n- 6\nname:\n- \n- '{"en":"Lion Toy","zh-CN":"狮子玩具"}'\nshort_desc:\n- \n- '{"en":"Our featured products","zh-CN":"本店特色产品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.416964000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.416964000 Z\nname_en:\n- \n- Lion Toy\nname_zh_cn:\n- \n- 狮子玩具\nshort_desc_en:\n- \n- Our featured products\nshort_desc_zh_cn:\n- \n- 本店特色产品\n	2022-09-01 09:09:04.416964
331	ChannelSellable	58	create	0qa(1)	---\nid:\n- \n- 58\nchannel_id:\n- \n- 14\nsellable_id:\n- \n- 22\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.429699000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.429699000 Z\n	2022-09-01 09:09:04.429699
332	ChannelSellable	59	create	0qa(1)	---\nid:\n- \n- 59\nchannel_id:\n- \n- 13\nsellable_id:\n- \n- 22\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.438823000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.438823000 Z\n	2022-09-01 09:09:04.438823
333	Variation	13	create	0qa(1)	---\nid:\n- \n- 13\nproduct_id:\n- \n- 22\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.447659000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.447659000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 09:09:04.447659
334	Variant	25	create	0qa(1)	---\nid:\n- \n- 25\nvariation_id:\n- \n- 13\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.453690000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.453690000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-01 09:09:04.45369
1210	Image	157	create	0qa(1)	---\nid:\n- \n- 157\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 08:36:08.304291000 Z\n	2022-09-08 08:36:08.304291
335	Variant	26	create	0qa(1)	---\nid:\n- \n- 26\nvariation_id:\n- \n- 13\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.459276000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.459276000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\n	2022-09-01 09:09:04.459276
336	Variant	27	create	0qa(1)	---\nid:\n- \n- 27\nvariation_id:\n- \n- 13\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.469265000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.469265000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-01 09:09:04.469265
337	ProductSku	32	create	0qa(1)	---\nid:\n- \n- 32\nshop_id:\n- \n- 6\noutlet_sku_id:\n- \n- 34\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\nvariant_ids:\n- []\n- - 25\nproduct_id:\n- \n- 22\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.479968000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.479968000 Z\n	2022-09-01 09:09:04.479968
338	ProductSku	33	create	0qa(1)	---\nid:\n- \n- 33\nshop_id:\n- \n- 6\noutlet_sku_id:\n- \n- 35\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.13e2\nvariant_ids:\n- []\n- - 26\nproduct_id:\n- \n- 22\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.494952000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.494952000 Z\n	2022-09-01 09:09:04.494952
339	ProductSku	34	create	0qa(1)	---\nid:\n- \n- 34\nshop_id:\n- \n- 6\noutlet_sku_id:\n- \n- 33\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 27\nproduct_id:\n- \n- 22\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:09:04.509626000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:09:04.509626000 Z\n	2022-09-01 09:09:04.509626
340	Image	88	create	0qa(1)	---\nid:\n- \n- 88\nimage:\n- \n- 手抓饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:10:54.883415000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:10:54.883415000 Z\n	2022-09-01 09:10:54.883415
341	Image	89	create	0qa(1)	---\nid:\n- \n- 89\nimage:\n- \n- 手抓饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:11:32.104527000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:11:32.104527000 Z\n	2022-09-01 09:11:32.104527
342	Product	23	create	0qa(1)	---\nid:\n- \n- 23\nshop_id:\n- \n- 7\nname:\n- \n- '{"en":"Indian Pilaf","zh-CN":"印度手抓饭"}'\nshort_desc:\n- \n- '{"en":"Our featured products","zh-CN":"本店特色产品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- 122\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:11:35.313977000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:11:35.313977000 Z\nname_en:\n- \n- Indian Pilaf\nname_zh_cn:\n- \n- 印度手抓饭\nshort_desc_en:\n- \n- Our featured products\nshort_desc_zh_cn:\n- \n- 本店特色产品\n	2022-09-01 09:11:35.313977
343	ChannelSellable	60	create	0qa(1)	---\nid:\n- \n- 60\nchannel_id:\n- \n- 16\nsellable_id:\n- \n- 23\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:11:35.337524000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:11:35.337524000 Z\n	2022-09-01 09:11:35.337524
344	ChannelSellable	61	create	0qa(1)	---\nid:\n- \n- 61\nchannel_id:\n- \n- 15\nsellable_id:\n- \n- 23\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:11:35.348525000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:11:35.348525000 Z\n	2022-09-01 09:11:35.348525
345	ProductSku	35	create	0qa(1)	---\nid:\n- \n- 35\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 36\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nproduct_id:\n- \n- 23\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:11:35.368356000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:11:35.368356000 Z\n	2022-09-01 09:11:35.368356
346	Image	90	create	0qa(1)	---\nid:\n- \n- 90\nimage:\n- \n- 飞饼.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:12:40.657386000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:12:40.657386000 Z\n	2022-09-01 09:12:40.657386
347	Image	91	create	0qa(1)	---\nid:\n- \n- 91\nimage:\n- \n- 飞饼.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:13:36.386173000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:13:36.386173000 Z\n	2022-09-01 09:13:36.386173
348	Product	24	create	0qa(1)	---\nid:\n- \n- 24\nshop_id:\n- \n- 7\nname:\n- \n- '{"en":" Indian Pancakes","zh-CN":"印度飞饼"}'\nshort_desc:\n- \n- '{"en":"Our featured products","zh-CN":"本店特色商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:13:37.479104000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:13:37.479104000 Z\nname_en:\n- \n- " Indian Pancakes"\nname_zh_cn:\n- \n- 印度飞饼\nshort_desc_en:\n- \n- Our featured products\nshort_desc_zh_cn:\n- \n- 本店特色商品\n	2022-09-01 09:13:37.479104
349	ChannelSellable	62	create	0qa(1)	---\nid:\n- \n- 62\nchannel_id:\n- \n- 16\nsellable_id:\n- \n- 24\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:13:37.490517000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:13:37.490517000 Z\n	2022-09-01 09:13:37.490517
350	ChannelSellable	63	create	0qa(1)	---\nid:\n- \n- 63\nchannel_id:\n- \n- 15\nsellable_id:\n- \n- 24\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:13:37.498278000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:13:37.498278000 Z\n	2022-09-01 09:13:37.498278
351	ProductSku	36	create	0qa(1)	---\nid:\n- \n- 36\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 37\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nproduct_id:\n- \n- 24\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:13:37.512349000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:13:37.512349000 Z\n	2022-09-01 09:13:37.512349
352	Image	92	create	0qa(1)	---\nid:\n- \n- 92\nimage:\n- \n- 咖喱鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:14:38.531661000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:14:38.531661000 Z\n	2022-09-01 09:14:38.531661
353	Image	93	create	0qa(1)	---\nid:\n- \n- 93\nimage:\n- \n- 咖喱鸡饭.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:04.770064000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:04.770064000 Z\n	2022-09-01 09:16:04.770064
1211	Image	158	create	0qa(1)	---\nid:\n- \n- 158\nimage:\n- \n- a3cf58b4e172040__1_.jpeg\ncreated_at:\n- \n- 2022-09-08 08:36:59.885283000 Z\n	2022-09-08 08:36:59.885283
355	Product	25	create	0qa(1)	---\nid:\n- \n- 25\nshop_id:\n- \n- 7\nname:\n- \n- '{"en":" Curry Chicken Rices","zh-CN":"咖喱鸡肉饭"}'\nshort_desc:\n- \n- '{"en":"Our featured products","zh-CN":"本店特色商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- 2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:25.986299000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:25.986299000 Z\nname_en:\n- \n- " Curry Chicken Rices"\nname_zh_cn:\n- \n- 咖喱鸡肉饭\nshort_desc_en:\n- \n- Our featured products\nshort_desc_zh_cn:\n- \n- 本店特色商品\n	2022-09-01 09:16:25.986299
356	ChannelSellable	64	create	0qa(1)	---\nid:\n- \n- 64\nchannel_id:\n- \n- 16\nsellable_id:\n- \n- 25\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.008270000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.008270000 Z\n	2022-09-01 09:16:26.00827
357	ChannelSellable	65	create	0qa(1)	---\nid:\n- \n- 65\nchannel_id:\n- \n- 15\nsellable_id:\n- \n- 25\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.021217000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.021217000 Z\n	2022-09-01 09:16:26.021217
358	Variation	14	create	0qa(1)	---\nid:\n- \n- 14\nproduct_id:\n- \n- 25\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.033145000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.033145000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-01 09:16:26.033145
359	Variant	28	create	0qa(1)	---\nid:\n- \n- 28\nvariation_id:\n- \n- 14\nname:\n- \n- '{"en":"small","zh-CN":"小份"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.046232000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.046232000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小份\n	2022-09-01 09:16:26.046232
360	Variant	29	create	0qa(1)	---\nid:\n- \n- 29\nvariation_id:\n- \n- 14\nname:\n- \n- '{"en":"large","zh-CN":"大份"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.055993000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.055993000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大份\n	2022-09-01 09:16:26.055993
361	ProductSku	37	create	0qa(1)	---\nid:\n- \n- 37\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 38\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nvariant_ids:\n- []\n- - 28\nproduct_id:\n- \n- 25\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.069240000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.069240000 Z\n	2022-09-01 09:16:26.06924
362	ProductSku	38	create	0qa(1)	---\nid:\n- \n- 38\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 39\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\nvariant_ids:\n- []\n- - 29\nproduct_id:\n- \n- 25\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:16:26.087329000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:16:26.087329000 Z\n	2022-09-01 09:16:26.087329
363	Image	95	create	0qa(1)	---\nid:\n- \n- 95\nimage:\n- \n- 红豆冰.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:17:25.984874000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:17:25.984874000 Z\n	2022-09-01 09:17:25.984874
364	Image	96	create	0qa(1)	---\nid:\n- \n- 96\nimage:\n- \n- 红豆冰.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:18:05.645346000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:18:05.645346000 Z\n	2022-09-01 09:18:05.645346
365	Product	26	create	0qa(1)	---\nid:\n- \n- 26\nshop_id:\n- \n- 7\nname:\n- \n- '{"en":"Red Bean Ice","zh-CN":"红豆冰"}'\nshort_desc:\n- \n- '{"en":"summer dessert","zh-CN":"夏日甜点"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 47\ninitial_sold_quantity:\n- 0\n- 22\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.754351000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.754351000 Z\nname_en:\n- \n- Red Bean Ice\nname_zh_cn:\n- \n- 红豆冰\nshort_desc_en:\n- \n- summer dessert\nshort_desc_zh_cn:\n- \n- 夏日甜点\n	2022-09-01 09:21:40.754351
366	ChannelSellable	66	create	0qa(1)	---\nid:\n- \n- 66\nchannel_id:\n- \n- 16\nsellable_id:\n- \n- 26\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.766032000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.766032000 Z\n	2022-09-01 09:21:40.766032
367	ChannelSellable	67	create	0qa(1)	---\nid:\n- \n- 67\nchannel_id:\n- \n- 15\nsellable_id:\n- \n- 26\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.774572000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.774572000 Z\n	2022-09-01 09:21:40.774572
368	PreferenceGroup	8	create	0qa(1)	---\nid:\n- \n- 8\nproduct_id:\n- \n- 26\nname:\n- \n- '{"en":"amount of ice","zh-CN":"冰量"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.783696000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.783696000 Z\nname_en:\n- \n- amount of ice\nname_zh_cn:\n- \n- 冰量\n	2022-09-01 09:21:40.783696
369	PreferenceItem	16	create	0qa(1)	---\nid:\n- \n- 16\npreference_group_id:\n- \n- 8\nname:\n- \n- '{"en":"more ice","zh-CN":"多冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.791295000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.791295000 Z\nname_en:\n- \n- more ice\nname_zh_cn:\n- \n- 多冰\n	2022-09-01 09:21:40.791295
370	PreferenceItem	17	create	0qa(1)	---\nid:\n- \n- 17\npreference_group_id:\n- \n- 8\nname:\n- \n- '{"en":"normal ice","zh-CN":"正常冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.797736000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.797736000 Z\nname_en:\n- \n- normal ice\nname_zh_cn:\n- \n- 正常冰\n	2022-09-01 09:21:40.797736
371	PreferenceItem	18	create	0qa(1)	---\nid:\n- \n- 18\npreference_group_id:\n- \n- 8\nname:\n- \n- '{"en":"less ice","zh-CN":"少冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.803374000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.803374000 Z\nname_en:\n- \n- less ice\nname_zh_cn:\n- \n- 少冰\n	2022-09-01 09:21:40.803374
372	PreferenceGroup	9	create	0qa(1)	---\nid:\n- \n- 9\nproduct_id:\n- \n- 26\nname:\n- \n- '{"en":"sugar","zh-CN":"糖"}'\nmin_selection:\n- 1\n- 0\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.810446000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.810446000 Z\nname_en:\n- \n- sugar\nname_zh_cn:\n- \n- 糖\n	2022-09-01 09:21:40.810446
373	PreferenceItem	19	create	0qa(1)	---\nid:\n- \n- 19\npreference_group_id:\n- \n- 9\nname:\n- \n- '{"en":"more sugar","zh-CN":"多糖"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.817409000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.817409000 Z\nname_en:\n- \n- more sugar\nname_zh_cn:\n- \n- 多糖\n	2022-09-01 09:21:40.817409
374	PreferenceItem	20	create	0qa(1)	---\nid:\n- \n- 20\npreference_group_id:\n- \n- 9\nname:\n- \n- '{"en":"less sugar ","zh-CN":"少糖"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.825390000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.825390000 Z\nname_en:\n- \n- 'less sugar '\nname_zh_cn:\n- \n- 少糖\n	2022-09-01 09:21:40.82539
375	PreferenceItem	21	create	0qa(1)	---\nid:\n- \n- 21\npreference_group_id:\n- \n- 9\nname:\n- \n- '{"en":"no sugar","zh-CN":"无糖"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.833082000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.833082000 Z\nname_en:\n- \n- no sugar\nname_zh_cn:\n- \n- 无糖\n	2022-09-01 09:21:40.833082
376	ProductSku	39	create	0qa(1)	---\nid:\n- \n- 39\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 40\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nproduct_id:\n- \n- 26\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:21:40.845493000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:21:40.845493000 Z\n	2022-09-01 09:21:40.845493
377	Image	97	create	0qa(1)	---\nid:\n- \n- 97\nimage:\n- \n- panda-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:23:36.994490000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:23:36.994490000 Z\n	2022-09-01 09:23:36.99449
378	Image	98	create	0qa(1)	---\nid:\n- \n- 98\nimage:\n- \n- panda_s.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:27:54.692630000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:27:54.692630000 Z\n	2022-09-01 09:27:54.69263
379	Image	99	create	0qa(1)	---\nid:\n- \n- 99\nimage:\n- \n- pandal.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:07.041374000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:07.041374000 Z\n	2022-09-01 09:28:07.041374
380	Product	27	create	0qa(1)	---\nid:\n- \n- 27\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"Panda Doll","zh-CN":"熊猫公仔"}'\nshort_desc:\n- \n- '{"en":"Our best-selling products","zh-CN":"本店热销产品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- 120\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.199868000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.199868000 Z\nname_en:\n- \n- Panda Doll\nname_zh_cn:\n- \n- 熊猫公仔\nshort_desc_en:\n- \n- Our best-selling products\nshort_desc_zh_cn:\n- \n- 本店热销产品\n	2022-09-01 09:28:12.199868
381	ChannelSellable	68	create	0qa(1)	---\nid:\n- \n- 68\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 27\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.213419000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.213419000 Z\n	2022-09-01 09:28:12.213419
382	ChannelSellable	69	create	0qa(1)	---\nid:\n- \n- 69\nchannel_id:\n- \n- 18\nsellable_id:\n- \n- 27\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.221660000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.221660000 Z\n	2022-09-01 09:28:12.22166
383	ChannelSellable	70	create	0qa(1)	---\nid:\n- \n- 70\nchannel_id:\n- \n- 19\nsellable_id:\n- \n- 27\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.229692000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.229692000 Z\n	2022-09-01 09:28:12.229692
384	Variation	15	create	0qa(1)	---\nid:\n- \n- 15\nproduct_id:\n- \n- 27\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.238875000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.238875000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 09:28:12.238875
385	Variant	30	create	0qa(1)	---\nid:\n- \n- 30\nvariation_id:\n- \n- 15\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.246526000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.246526000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-01 09:28:12.246526
386	Variant	31	create	0qa(1)	---\nid:\n- \n- 31\nvariation_id:\n- \n- 15\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.257402000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.257402000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-01 09:28:12.257402
387	ProductSku	40	create	0qa(1)	---\nid:\n- \n- 40\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 41\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvariant_ids:\n- []\n- - 30\nproduct_id:\n- \n- 27\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.273048000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.273048000 Z\n	2022-09-01 09:28:12.273048
388	ProductSku	41	create	0qa(1)	---\nid:\n- \n- 41\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 42\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\nvariant_ids:\n- []\n- - 31\nproduct_id:\n- \n- 27\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:28:12.287622000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:28:12.287622000 Z\n	2022-09-01 09:28:12.287622
389	Image	100	create	0qa(1)	---\nid:\n- \n- 100\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:29:52.758103000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:29:52.758103000 Z\n	2022-09-01 09:29:52.758103
390	Image	101	create	0qa(1)	---\nid:\n- \n- 101\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:30:11.874684000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:30:11.874684000 Z\n	2022-09-01 09:30:11.874684
446	ChannelSellable	82	create	0qa(1)	---\nid:\n- \n- 82\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 2\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:45:25.419269000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:45:25.419269000 Z\n	2022-09-01 09:45:25.419269
1506	SkuView	13	update	\N	---\nmaster_sku_ref:\n- RW-GS-Otter Cup-Bl\n- RW-GS-Otter Cup-Bl-A\nlast_event_time:\n- 2022-09-09 02:50:01.000000000 Z\n- 2022-09-09 07:28:31.000000000 Z\n	2022-09-09 07:28:32.01364
391	Product	28	create	0qa(1)	---\nid:\n- \n- 28\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"Panda Hat","zh-CN":"熊猫帽"}'\nshort_desc:\n- \n- '{"en":"Our best-selling products","zh-CN":"本店热销产品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 49\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:30:31.271624000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:30:31.271624000 Z\nname_en:\n- \n- Panda Hat\nname_zh_cn:\n- \n- 熊猫帽\nshort_desc_en:\n- \n- Our best-selling products\nshort_desc_zh_cn:\n- \n- 本店热销产品\n	2022-09-01 09:30:31.271624
392	ChannelSellable	71	create	0qa(1)	---\nid:\n- \n- 71\nchannel_id:\n- \n- 18\nsellable_id:\n- \n- 28\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:30:31.290025000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:30:31.290025000 Z\n	2022-09-01 09:30:31.290025
393	ChannelSellable	72	create	0qa(1)	---\nid:\n- \n- 72\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 28\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:30:31.301845000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:30:31.301845000 Z\n	2022-09-01 09:30:31.301845
394	ChannelSellable	73	create	0qa(1)	---\nid:\n- \n- 73\nchannel_id:\n- \n- 19\nsellable_id:\n- \n- 28\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:30:31.316652000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:30:31.316652000 Z\n	2022-09-01 09:30:31.316652
395	ProductSku	42	create	0qa(1)	---\nid:\n- \n- 42\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 43\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nproduct_id:\n- \n- 28\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:30:31.332432000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:30:31.332432000 Z\n	2022-09-01 09:30:31.332432
396	Image	102	create	0qa(1)	---\nid:\n- \n- 102\nimage:\n- \n- shuita-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:33:42.767761000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:33:42.767761000 Z\n	2022-09-01 09:33:42.767761
397	Image	103	create	0qa(1)	---\nid:\n- \n- 103\nimage:\n- \n- Kfc-valentine.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:35:07.042683000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:35:07.042683000 Z\n	2022-09-01 09:35:07.042683
398	Image	104	create	0qa(1)	---\nid:\n- \n- 104\nimage:\n- \n- 水獭s.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:35:59.993804000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:35:59.993804000 Z\n	2022-09-01 09:35:59.993804
399	Image	105	create	0qa(1)	---\nid:\n- \n- 105\nimage:\n- \n- 水獭l.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:09.290932000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:09.290932000 Z\n	2022-09-01 09:36:09.290932
400	Product	29	create	0qa(1)	---\nid:\n- \n- 29\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"Otter Doll ","zh-CN":"水獭公仔"}'\nshort_desc:\n- \n- '{"en":"Our best-selling products","zh-CN":"本店热销产品"}'\ndesc:\n- \n- '{"en":"If you like cute otters, this item is worth buying","zh-CN":"如果你喜欢可爱的水獭，这件商品值得购买"}'\nranking:\n- 0\n- 48\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.927107000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.927107000 Z\nname_en:\n- \n- 'Otter Doll '\nname_zh_cn:\n- \n- 水獭公仔\ndesc_en:\n- \n- If you like cute otters, this item is worth buying\ndesc_zh_cn:\n- \n- 如果你喜欢可爱的水獭，这件商品值得购买\nshort_desc_en:\n- \n- Our best-selling products\nshort_desc_zh_cn:\n- \n- 本店热销产品\n	2022-09-01 09:36:11.927107
401	ChannelSellable	74	create	0qa(1)	---\nid:\n- \n- 74\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 29\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.942824000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.942824000 Z\n	2022-09-01 09:36:11.942824
402	ChannelSellable	75	create	0qa(1)	---\nid:\n- \n- 75\nchannel_id:\n- \n- 18\nsellable_id:\n- \n- 29\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.952464000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.952464000 Z\n	2022-09-01 09:36:11.952464
403	ChannelSellable	76	create	0qa(1)	---\nid:\n- \n- 76\nchannel_id:\n- \n- 19\nsellable_id:\n- \n- 29\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.960177000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.960177000 Z\n	2022-09-01 09:36:11.960177
404	Variation	16	create	0qa(1)	---\nid:\n- \n- 16\nproduct_id:\n- \n- 29\nname:\n- \n- '{"en":"Size","zh-CN":"规格"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.967452000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.967452000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 规格\n	2022-09-01 09:36:11.967452
405	Variant	32	create	0qa(1)	---\nid:\n- \n- 32\nvariation_id:\n- \n- 16\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.974024000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.974024000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-01 09:36:11.974024
406	Variant	33	create	0qa(1)	---\nid:\n- \n- 33\nvariation_id:\n- \n- 16\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.981803000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.981803000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-01 09:36:11.981803
407	ProductSku	43	create	0qa(1)	---\nid:\n- \n- 43\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 44\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.188e2\nvariant_ids:\n- []\n- - 32\nproduct_id:\n- \n- 29\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:11.992033000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:11.992033000 Z\n	2022-09-01 09:36:11.992033
408	ProductSku	44	create	0qa(1)	---\nid:\n- \n- 44\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 45\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\nvariant_ids:\n- []\n- - 33\nproduct_id:\n- \n- 29\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:36:12.006362000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:36:12.006362000 Z\n	2022-09-01 09:36:12.006362
614	VoucherProduct	5	update	0qa(1)	---\nname:\n- '{"en":"Holiday Voucher","zh-CN":"节日券"}'\n- '{"en":"KFC Holiday Voucher","zh-CN":"肯德基节日券"}'\nname_en:\n- Holiday Voucher\n- KFC Holiday Voucher\nname_zh_cn:\n- 节日券\n- 肯德基节日券\n	2022-09-07 06:40:08.658774
409	Bundle	1	create	0qa(1)	---\nid:\n- \n- 1\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"Valentines Day bundle","zh-CN":"情人节套餐"}'\ndesc:\n- \n- '{"en":"KFC Valentines Day bundle","zh-CN":"肯德基 情人节套餐"}'\nshort_desc:\n- \n- '{"en":"Valentines Day bundle","zh-CN":"情人节套餐"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- 111\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:00.490960000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:00.490960000 Z\nname_en:\n- \n- Valentines Day bundle\nname_zh_cn:\n- \n- 情人节套餐\ndesc_en:\n- \n- KFC Valentines Day bundle\ndesc_zh_cn:\n- \n- 肯德基 情人节套餐\nshort_desc_en:\n- \n- Valentines Day bundle\nshort_desc_zh_cn:\n- \n- 情人节套餐\n	2022-09-01 09:37:00.49096
410	ChannelSellable	77	create	0qa(1)	---\nid:\n- \n- 77\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 1\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:00.515031000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:00.515031000 Z\n	2022-09-01 09:37:00.515031
411	ChannelSellable	78	create	0qa(1)	---\nid:\n- \n- 78\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 1\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:00.526907000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:00.526907000 Z\n	2022-09-01 09:37:00.526907
412	BundleItem	1	create	0qa(1)	---\nid:\n- \n- 1\nbundle_id:\n- \n- 1\nbundleable_id:\n- \n- 2\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.29e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:00.575741000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:00.575741000 Z\n	2022-09-01 09:37:00.575741
413	Bundle	1	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.29e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.9e1\n	2022-09-01 09:37:00.598971
414	BundleItem	2	create	0qa(1)	---\nid:\n- \n- 2\nbundle_id:\n- \n- 1\nbundleable_id:\n- \n- 6\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.18e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:00.611204000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:00.611204000 Z\n	2022-09-01 09:37:00.611204
415	Bundle	1	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.29e2\n- !ruby/object:BigDecimal 18:0.47e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.9e1\n- !ruby/object:BigDecimal 18:0.12e2\n	2022-09-01 09:37:00.63013
416	BundleItem	3	create	0qa(1)	---\nid:\n- \n- 3\nbundle_id:\n- \n- 1\nbundleable_id:\n- \n- 2\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:00.643350000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:00.643350000 Z\n	2022-09-01 09:37:00.64335
417	Bundle	1	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.47e2\n- !ruby/object:BigDecimal 18:0.72e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.12e2\n- !ruby/object:BigDecimal 18:0.17e2\n	2022-09-01 09:37:00.669381
418	Image	106	create	0qa(1)	---\nid:\n- \n- 106\nimage:\n- \n- 水獭杯子product.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:37:08.779446000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:37:08.779446000 Z\n	2022-09-01 09:37:08.779446
419	Image	107	create	0qa(1)	---\nid:\n- \n- 107\nimage:\n- \n- kfc_dou_shots_bundle.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:38:06.233096000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:38:06.233096000 Z\n	2022-09-01 09:38:06.233096
420	Bundle	2	create	0qa(1)	---\nid:\n- \n- 2\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"DOU shots bundle","zh-CN":"DOU shots 套餐"}'\ndesc:\n- \n- '{"en":" KFC DOU shots bundle","zh-CN":"KFC DOU shots 套餐"}'\nshort_desc:\n- \n- '{"en":"DOU shots bundle","zh-CN":"DOU shots 套餐"}'\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- 33\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:39:13.602107000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:39:13.602107000 Z\nname_en:\n- \n- DOU shots bundle\nname_zh_cn:\n- \n- DOU shots 套餐\ndesc_en:\n- \n- " KFC DOU shots bundle"\ndesc_zh_cn:\n- \n- KFC DOU shots 套餐\nshort_desc_en:\n- \n- DOU shots bundle\nshort_desc_zh_cn:\n- \n- DOU shots 套餐\n	2022-09-01 09:39:13.602107
421	BundleItem	4	create	0qa(1)	---\nid:\n- \n- 4\nbundle_id:\n- \n- 2\nbundleable_id:\n- \n- 7\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.29e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:39:13.621575000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:39:13.621575000 Z\n	2022-09-01 09:39:13.621575
422	Bundle	2	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.29e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\n	2022-09-01 09:39:13.6382
423	BundleItem	5	create	0qa(1)	---\nid:\n- \n- 5\nbundle_id:\n- \n- 2\nbundleable_id:\n- \n- 6\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.21e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:39:13.648260000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:39:13.648260000 Z\n	2022-09-01 09:39:13.64826
424	Bundle	2	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.29e2\n- !ruby/object:BigDecimal 18:0.5e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.4e1\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-01 09:39:13.662536
425	Image	108	create	0qa(1)	---\nid:\n- \n- 108\nimage:\n- \n- kfc_father_s_day_bundle.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:39:47.629379000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:39:47.629379000 Z\n	2022-09-01 09:39:47.629379
426	Image	109	create	0qa(1)	---\nid:\n- \n- 109\nimage:\n- \n- shuatabeigreen.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:00.065696000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:00.065696000 Z\n	2022-09-01 09:40:00.065696
427	Image	110	create	0qa(1)	---\nid:\n- \n- 110\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:15.993371000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:15.993371000 Z\n	2022-09-01 09:40:15.993371
428	Product	30	create	0qa(1)	---\nid:\n- \n- 30\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"Otter Cup Green","zh-CN":"水獭杯"}'\nshort_desc:\n- \n- '{"en":"Our featured products","zh-CN":"本店特色商品"}'\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 47\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.356865000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.356865000 Z\nname_en:\n- \n- Otter Cup Green\nname_zh_cn:\n- \n- 水獭杯\nshort_desc_en:\n- \n- Our featured products\nshort_desc_zh_cn:\n- \n- 本店特色商品\n	2022-09-01 09:40:17.356865
429	ChannelSellable	79	create	0qa(1)	---\nid:\n- \n- 79\nchannel_id:\n- \n- 18\nsellable_id:\n- \n- 30\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.369315000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.369315000 Z\n	2022-09-01 09:40:17.369315
430	ChannelSellable	80	create	0qa(1)	---\nid:\n- \n- 80\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 30\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.377946000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.377946000 Z\n	2022-09-01 09:40:17.377946
431	ChannelSellable	81	create	0qa(1)	---\nid:\n- \n- 81\nchannel_id:\n- \n- 19\nsellable_id:\n- \n- 30\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.385216000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.385216000 Z\n	2022-09-01 09:40:17.385216
432	Variation	17	create	0qa(1)	---\nid:\n- \n- 17\nproduct_id:\n- \n- 30\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.395473000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.395473000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-01 09:40:17.395473
433	Variant	34	create	0qa(1)	---\nid:\n- \n- 34\nvariation_id:\n- \n- 17\nname:\n- \n- '{"en":"green","zh-CN":"绿色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.404045000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.404045000 Z\nname_en:\n- \n- green\nname_zh_cn:\n- \n- 绿色\n	2022-09-01 09:40:17.404045
434	Variant	35	create	0qa(1)	---\nid:\n- \n- 35\nvariation_id:\n- \n- 17\nname:\n- \n- '{"en":"blue","zh-CN":"蓝色"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.413214000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.413214000 Z\nname_en:\n- \n- blue\nname_zh_cn:\n- \n- 蓝色\n	2022-09-01 09:40:17.413214
435	ProductSku	45	create	0qa(1)	---\nid:\n- \n- 45\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 46\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\nvariant_ids:\n- []\n- - 34\nproduct_id:\n- \n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.425640000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.425640000 Z\n	2022-09-01 09:40:17.42564
436	ProductSku	46	create	0qa(1)	---\nid:\n- \n- 46\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 47\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\nvariant_ids:\n- []\n- - 35\nproduct_id:\n- \n- 30\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:40:17.441515000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:40:17.441515000 Z\n	2022-09-01 09:40:17.441515
437	Bundle	3	create	0qa(1)	---\nid:\n- \n- 3\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"Father’s day bundle","zh-CN":"父亲节套餐"}'\ndesc:\n- \n- '{"en":" KFC Father’s day bundle","zh-CN":"肯德基 父亲节套餐"}'\nshort_desc:\n- \n- '{"en":"Father’s day bundle","zh-CN":"父亲节套餐"}'\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- 200\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:41:06.530261000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:41:06.530261000 Z\nname_en:\n- \n- Father’s day bundle\nname_zh_cn:\n- \n- 父亲节套餐\ndesc_en:\n- \n- " KFC Father’s day bundle"\ndesc_zh_cn:\n- \n- 肯德基 父亲节套餐\nshort_desc_en:\n- \n- Father’s day bundle\nshort_desc_zh_cn:\n- \n- 父亲节套餐\n	2022-09-01 09:41:06.530261
438	BundleItem	6	create	0qa(1)	---\nid:\n- \n- 6\nbundle_id:\n- \n- 3\nbundleable_id:\n- \n- 2\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.35e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:41:06.541732000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:41:06.541732000 Z\n	2022-09-01 09:41:06.541732
439	Bundle	3	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.35e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-01 09:41:06.551124
440	BundleItem	7	create	0qa(1)	---\nid:\n- \n- 7\nbundle_id:\n- \n- 3\nbundleable_id:\n- \n- 2\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.23e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:41:06.558215000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:41:06.558215000 Z\n	2022-09-01 09:41:06.558215
441	Bundle	3	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.35e2\n- !ruby/object:BigDecimal 18:0.58e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.3e1\n	2022-09-01 09:41:06.567912
442	BundleItem	8	create	0qa(1)	---\nid:\n- \n- 8\nbundle_id:\n- \n- 3\nbundleable_id:\n- \n- 7\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.29e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.29e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:41:06.575626000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:41:06.575626000 Z\n	2022-09-01 09:41:06.575626
443	Bundle	3	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.58e2\n- !ruby/object:BigDecimal 18:0.87e2\n	2022-09-01 09:41:06.585051
444	BundleItem	9	create	0qa(1)	---\nid:\n- \n- 9\nbundle_id:\n- \n- 3\nbundleable_id:\n- \n- 6\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.168e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:41:06.592102000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:41:06.592102000 Z\n	2022-09-01 09:41:06.592102
445	Bundle	3	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.87e2\n- !ruby/object:BigDecimal 27:0.1038e3\nprice_high:\n- !ruby/object:BigDecimal 18:0.3e1\n- !ruby/object:BigDecimal 27:0.48e1\n	2022-09-01 09:41:06.607156
1522	Image	194	create	0qa(1)	---\nid:\n- \n- 194\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 07:44:46.485576000 Z\n	2022-09-09 07:44:46.485576
447	ChannelSellable	83	create	0qa(1)	---\nid:\n- \n- 83\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 3\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:45:33.706792000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:45:33.706792000 Z\n	2022-09-01 09:45:33.706792
448	Image	111	create	0qa(1)	---\nid:\n- \n- 111\nimage:\n- \n- kfc_family_bundle.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:49:04.365379000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:49:04.365379000 Z\n	2022-09-01 09:49:04.365379
449	Bundle	4	create	0qa(1)	---\nid:\n- \n- 4\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"Family bundle","zh-CN":"家庭套餐"}'\ndesc:\n- \n- '{"en":"KFC Family bundle","zh-CN":"肯德基家庭套餐"}'\nshort_desc:\n- \n- '{"en":"Family bundle","zh-CN":"家庭套餐"}'\nranking:\n- 0\n- 2\ninitial_sold_quantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:50:20.322803000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:50:20.322803000 Z\nname_en:\n- \n- Family bundle\nname_zh_cn:\n- \n- 家庭套餐\ndesc_en:\n- \n- KFC Family bundle\ndesc_zh_cn:\n- \n- 肯德基家庭套餐\nshort_desc_en:\n- \n- Family bundle\nshort_desc_zh_cn:\n- \n- 家庭套餐\n	2022-09-01 09:50:20.322803
450	ChannelSellable	84	create	0qa(1)	---\nid:\n- \n- 84\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 4\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:50:20.340010000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:50:20.340010000 Z\n	2022-09-01 09:50:20.34001
451	BundleItem	10	create	0qa(1)	---\nid:\n- \n- 10\nbundle_id:\n- \n- 4\nbundleable_id:\n- \n- 2\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.388e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.35e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:50:20.348922000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:50:20.348922000 Z\n	2022-09-01 09:50:20.348922
452	Bundle	4	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.388e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.38e1\n	2022-09-01 09:50:20.362554
453	BundleItem	11	create	0qa(1)	---\nid:\n- \n- 11\nbundle_id:\n- \n- 4\nbundleable_id:\n- \n- 7\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.22e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:50:20.373154000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:50:20.373154000 Z\n	2022-09-01 09:50:20.373154
454	Bundle	4	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 27:0.388e2\n- !ruby/object:BigDecimal 27:0.608e2\nprice_high:\n- !ruby/object:BigDecimal 27:0.38e1\n- !ruby/object:BigDecimal 27:0.58e1\n	2022-09-01 09:50:20.393135
455	Image	112	create	0qa(1)	---\nid:\n- \n- 112\nimage:\n- \n- 单人套餐.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:51:13.283487000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:51:13.283487000 Z\n	2022-09-01 09:51:13.283487
456	Image	113	create	0qa(1)	---\nid:\n- \n- 113\nimage:\n- \n- 熊猫.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:56:05.323797000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:56:05.323797000 Z\n	2022-09-01 09:56:05.323797
457	Bundle	5	create	0qa(1)	---\nid:\n- \n- 5\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Souvenir bundle","zh-CN":"纪念套餐"}'\ndesc:\n- \n- '{"en":"Singapore Zoo Gift E-shop Souvenir bundle","zh-CN":"新加坡动物园线上礼品店 纪念套餐"}'\nshort_desc:\n- \n- '{"en":"Souvenir bundle","zh-CN":"纪念套餐"}'\nranking:\n- 0\n- \ninitial_sold_quantity:\n- 0\n- 20\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:57:55.048150000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:57:55.048150000 Z\nname_en:\n- \n- Souvenir bundle\nname_zh_cn:\n- \n- 纪念套餐\ndesc_en:\n- \n- Singapore Zoo Gift E-shop Souvenir bundle\ndesc_zh_cn:\n- \n- 新加坡动物园线上礼品店 纪念套餐\nshort_desc_en:\n- \n- Souvenir bundle\nshort_desc_zh_cn:\n- \n- 纪念套餐\n	2022-09-01 09:57:55.04815
458	BundleItem	12	create	0qa(1)	---\nid:\n- \n- 12\nbundle_id:\n- \n- 5\nbundleable_id:\n- \n- 1\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.23e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.23e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:57:55.059170000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:57:55.059170000 Z\n	2022-09-01 09:57:55.05917
459	Bundle	5	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.23e2\n	2022-09-01 09:57:55.067956
460	BundleItem	13	create	0qa(1)	---\nid:\n- \n- 13\nbundle_id:\n- \n- 5\nbundleable_id:\n- \n- 4\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.189e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:57:55.074724000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:57:55.074724000 Z\n	2022-09-01 09:57:55.074724
461	Bundle	5	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.23e2\n- !ruby/object:BigDecimal 27:0.419e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.39e1\n	2022-09-01 09:57:55.082633
462	BundleItem	14	create	0qa(1)	---\nid:\n- \n- 14\nbundle_id:\n- \n- 5\nbundleable_id:\n- \n- 5\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.389e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.36e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 09:57:55.089035000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 09:57:55.089035000 Z\n	2022-09-01 09:57:55.089035
463	Bundle	5	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 27:0.419e2\n- !ruby/object:BigDecimal 27:0.808e2\nprice_high:\n- !ruby/object:BigDecimal 27:0.39e1\n- !ruby/object:BigDecimal 27:0.68e1\n	2022-09-01 09:57:55.100855
464	Image	114	create	0qa(1)	---\nid:\n- \n- 114\nimage:\n- \n- zoo_weekend_bundle.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:00:03.203734000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:00:03.203734000 Z\n	2022-09-01 10:00:03.203734
482	ChannelSellable	90	create	0qa(1)	---\nid:\n- \n- 90\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 8\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:05:41.297787000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:05:41.297787000 Z\n	2022-09-01 10:05:41.297787
1696	Image	206	create	0qa(1)	---\nid:\n- \n- 206\nimage:\n- \n- 烤鸡.png\ncreated_at:\n- \n- 2022-09-13 03:50:57.254688000 Z\n	2022-09-13 03:50:57.254688
465	Bundle	6	create	0qa(1)	---\nid:\n- \n- 6\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Weekend Bundle","zh-CN":"周末套餐"}'\ndesc:\n- \n- '{"en":"Singapore Zoo Gift E-shop Weekend Bundle","zh-CN":"新加坡动物园线上礼品店 周末套餐"}'\nshort_desc:\n- \n- '{"en":"Weekend Bundle","zh-CN":"周末套餐"}'\nranking:\n- 0\n- 3\ninitial_sold_quantity:\n- 0\n- 45\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:01:42.368655000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:01:42.368655000 Z\nname_en:\n- \n- Weekend Bundle\nname_zh_cn:\n- \n- 周末套餐\ndesc_en:\n- \n- Singapore Zoo Gift E-shop Weekend Bundle\ndesc_zh_cn:\n- \n- 新加坡动物园线上礼品店 周末套餐\nshort_desc_en:\n- \n- Weekend Bundle\nshort_desc_zh_cn:\n- \n- 周末套餐\n	2022-09-01 10:01:42.368655
466	ChannelSellable	85	create	0qa(1)	---\nid:\n- \n- 85\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:01:42.384571000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:01:42.384571000 Z\n	2022-09-01 10:01:42.384571
467	ChannelSellable	86	create	0qa(1)	---\nid:\n- \n- 86\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:01:42.394816000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:01:42.394816000 Z\n	2022-09-01 10:01:42.394816
468	BundleItem	15	create	0qa(1)	---\nid:\n- \n- 15\nbundle_id:\n- \n- 6\nbundleable_id:\n- \n- 4\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.64e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:01:42.414319000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:01:42.414319000 Z\n	2022-09-01 10:01:42.414319
469	Bundle	6	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.64e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\n	2022-09-01 10:01:42.426699
470	BundleItem	16	create	0qa(1)	---\nid:\n- \n- 16\nbundle_id:\n- \n- 6\nbundleable_id:\n- \n- 3\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.199e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.18e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:01:42.442575000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:01:42.442575000 Z\n	2022-09-01 10:01:42.442575
471	Bundle	6	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.64e2\n- !ruby/object:BigDecimal 27:0.839e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.4e1\n- !ruby/object:BigDecimal 27:0.59e1\n	2022-09-01 10:01:42.456409
472	Bundle	7	create	0qa(1)	---\nid:\n- \n- 7\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"Single Bundle","zh-CN":"单人套餐"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- '{"en":"One person use","zh-CN":"一人份使用"}'\nranking:\n- 0\n- 1\nopen_for_sale_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 17:52:17.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 17:52:17.000000000 Z\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:04:27.274192000 Z\n  zone: *1\n  time: 2022-09-01 10:04:27.274192000 Z\nname_en:\n- \n- Single Bundle\nname_zh_cn:\n- \n- 单人套餐\nshort_desc_en:\n- \n- One person use\nshort_desc_zh_cn:\n- \n- 一人份使用\n	2022-09-01 10:04:27.274192
473	ChannelSellable	87	create	0qa(1)	---\nid:\n- \n- 87\nchannel_id:\n- \n- 6\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:04:27.305211000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:04:27.305211000 Z\n	2022-09-01 10:04:27.305211
474	ChannelSellable	88	create	0qa(1)	---\nid:\n- \n- 88\nchannel_id:\n- \n- 7\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:04:27.313981000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:04:27.313981000 Z\n	2022-09-01 10:04:27.313981
475	BundleItem	17	create	0qa(1)	---\nid:\n- \n- 17\nbundle_id:\n- \n- 7\nbundleable_id:\n- \n- 8\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:04:27.325250000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:04:27.325250000 Z\n	2022-09-01 10:04:27.32525
476	Bundle	7	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ndesc:\n- \n- \n	2022-09-01 10:04:27.335625
477	BundleItem	18	create	0qa(1)	---\nid:\n- \n- 18\nbundle_id:\n- \n- 7\nbundleable_id:\n- \n- 11\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:04:27.344440000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:04:27.344440000 Z\n	2022-09-01 10:04:27.34444
478	Bundle	7	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.1e1\n- !ruby/object:BigDecimal 18:0.2e1\n	2022-09-01 10:04:27.356562
479	Image	115	create	0qa(1)	---\nid:\n- \n- 115\nimage:\n- \n- zoo_summer_bundle.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:05:29.413082000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:05:29.413082000 Z\n	2022-09-01 10:05:29.413082
480	Bundle	8	create	0qa(1)	---\nid:\n- \n- 8\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Summer bundle","zh-CN":"夏日套餐"}'\ndesc:\n- \n- '{"en":"Singapore Zoo Gift E-shop Summer bundle","zh-CN":"新加坡动物园 线上礼品店 夏日套餐"}'\nshort_desc:\n- \n- '{"en":"Summer bundle","zh-CN":"夏日套餐"}'\nranking:\n- 0\n- 1\ninitial_sold_quantity:\n- 0\n- 35\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:05:41.275683000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:05:41.275683000 Z\nname_en:\n- \n- Summer bundle\nname_zh_cn:\n- \n- 夏日套餐\ndesc_en:\n- \n- Singapore Zoo Gift E-shop Summer bundle\ndesc_zh_cn:\n- \n- 新加坡动物园 线上礼品店 夏日套餐\nshort_desc_en:\n- \n- Summer bundle\nshort_desc_zh_cn:\n- \n- 夏日套餐\n	2022-09-01 10:05:41.275683
481	ChannelSellable	89	create	0qa(1)	---\nid:\n- \n- 89\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 8\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:05:41.288509000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:05:41.288509000 Z\n	2022-09-01 10:05:41.288509
1212	Variation	57	create	0qa(1)	---\nid:\n- \n- 57\nproduct_id:\n- \n- 3\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\ncreated_at:\n- \n- 2022-09-08 08:38:41.240887000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-08 08:38:41.240887
483	BundleItem	19	create	0qa(1)	---\nid:\n- \n- 19\nbundle_id:\n- \n- 8\nbundleable_id:\n- \n- 1\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.288e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.28e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:05:41.308694000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:05:41.308694000 Z\n	2022-09-01 10:05:41.308694
484	Bundle	8	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.288e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e0\n	2022-09-01 10:05:41.318275
485	BundleItem	20	create	0qa(1)	---\nid:\n- \n- 20\nbundle_id:\n- \n- 8\nbundleable_id:\n- \n- 3\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:05:41.327422000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:05:41.327422000 Z\n	2022-09-01 10:05:41.327422
486	Bundle	8	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 27:0.288e2\n- !ruby/object:BigDecimal 27:0.588e2\n	2022-09-01 10:05:41.337425
487	Bundle	8	update	0qa(1)	---\nname:\n- '{"en":"Summer bundle","zh-CN":"夏日套餐"}'\n- '{"en":"Summer Bundle","zh-CN":"夏日套餐"}'\ndesc:\n- '{"en":"Singapore Zoo Gift E-shop Summer bundle","zh-CN":"新加坡动物园 线上礼品店 夏日套餐"}'\n- '{"en":"Singapore Zoo Gift E-shop Summer Bundle","zh-CN":"新加坡动物园 线上礼品店 夏日套餐"}'\nshort_desc:\n- '{"en":"Summer bundle","zh-CN":"夏日套餐"}'\n- '{"en":"Summer Bundle","zh-CN":"夏日套餐"}'\nname_en:\n- Summer bundle\n- Summer Bundle\ndesc_en:\n- Singapore Zoo Gift E-shop Summer bundle\n- Singapore Zoo Gift E-shop Summer Bundle\nshort_desc_en:\n- Summer bundle\n- Summer Bundle\n	2022-09-01 10:06:40.261484
488	Image	116	create	0qa(1)	---\nid:\n- \n- 116\nimage:\n- \n- zoo_festive.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:09:34.592589000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:09:34.592589000 Z\n	2022-09-01 10:09:34.592589
489	Bundle	9	create	0qa(1)	---\nid:\n- \n- 9\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Festive Bundle","zh-CN":"节日套餐"}'\ndesc:\n- \n- '{"en":"Singapore Zoo Gift E-shop Festive Bundle","zh-CN":"新加坡动物园线上礼品店 节日套餐"}'\nshort_desc:\n- \n- '{"en":"Festive Bundle","zh-CN":"节日套餐"}'\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- 50\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:11:14.761370000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:11:14.761370000 Z\nname_en:\n- \n- Festive Bundle\nname_zh_cn:\n- \n- 节日套餐\ndesc_en:\n- \n- Singapore Zoo Gift E-shop Festive Bundle\ndesc_zh_cn:\n- \n- 新加坡动物园线上礼品店 节日套餐\nshort_desc_en:\n- \n- Festive Bundle\nshort_desc_zh_cn:\n- \n- 节日套餐\n	2022-09-01 10:11:14.76137
490	ChannelSellable	91	create	0qa(1)	---\nid:\n- \n- 91\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 9\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:11:14.773419000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:11:14.773419000 Z\n	2022-09-01 10:11:14.773419
491	ChannelSellable	92	create	0qa(1)	---\nid:\n- \n- 92\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 9\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:11:14.783116000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:11:14.783116000 Z\n	2022-09-01 10:11:14.783116
492	BundleItem	21	create	0qa(1)	---\nid:\n- \n- 21\nbundle_id:\n- \n- 9\nbundleable_id:\n- \n- 3\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.33e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:11:14.792157000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:11:14.792157000 Z\n	2022-09-01 10:11:14.792157
493	Bundle	9	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.33e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\n	2022-09-01 10:11:14.801499
494	BundleItem	22	create	0qa(1)	---\nid:\n- \n- 22\nbundle_id:\n- \n- 9\nbundleable_id:\n- \n- 5\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.22e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.21e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:11:14.809432000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:11:14.809432000 Z\n	2022-09-01 10:11:14.809432
495	Bundle	9	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.33e2\n- !ruby/object:BigDecimal 18:0.55e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.3e1\n- !ruby/object:BigDecimal 18:0.4e1\n	2022-09-01 10:11:14.818203
496	BundleItem	23	create	0qa(1)	---\nid:\n- \n- 23\nbundle_id:\n- \n- 9\nbundleable_id:\n- \n- 1\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.1999e3\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.18e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 10:11:14.825003000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-01 10:11:14.825003000 Z\n	2022-09-01 10:11:14.825003
497	Bundle	9	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.55e2\n- !ruby/object:BigDecimal 27:0.2549e3\nprice_high:\n- !ruby/object:BigDecimal 18:0.4e1\n- !ruby/object:BigDecimal 27:0.239e2\n	2022-09-01 10:11:14.834352
498	Bundle	5	update	0qa(1)	---\nshort_desc:\n- '{"en":"Souvenir bundle","zh-CN":"纪念套餐"}'\n- '{"en":"Souvenir Bundle","zh-CN":"纪念套餐"}'\nshort_desc_en:\n- Souvenir bundle\n- Souvenir Bundle\n	2022-09-01 10:12:20.593954
499	Bundle	5	update	0qa(1)	---\nname:\n- '{"en":"Souvenir bundle","zh-CN":"纪念套餐"}'\n- '{"en":"Souvenir Bundle","zh-CN":"纪念套餐"}'\nname_en:\n- Souvenir bundle\n- Souvenir Bundle\n	2022-09-01 10:12:35.492507
500	Bundle	4	update	0qa(1)	---\nname:\n- '{"en":"Family bundle","zh-CN":"家庭套餐"}'\n- '{"en":"Family Bundle","zh-CN":"家庭套餐"}'\nname_en:\n- Family bundle\n- Family Bundle\n	2022-09-01 10:12:48.763442
501	Bundle	3	update	0qa(1)	---\nname:\n- '{"en":"Father’s day bundle","zh-CN":"父亲节套餐"}'\n- '{"en":"Father’s day Bundle","zh-CN":"父亲节套餐"}'\nname_en:\n- Father’s day bundle\n- Father’s day Bundle\n	2022-09-01 10:13:00.79954
502	Bundle	2	update	0qa(1)	---\nname:\n- '{"en":"DOU shots bundle","zh-CN":"DOU shots 套餐"}'\n- '{"en":"DOU shots Bundle","zh-CN":"DOU shots 套餐"}'\nname_en:\n- DOU shots bundle\n- DOU shots Bundle\n	2022-09-01 10:13:19.272678
615	VoucherProduct	6	update	0qa(1)	---\nname:\n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\n- '{"en":"KFC Cash Voucher","zh-CN":"肯德基现金券"}'\nname_en:\n- Cash Voucher\n- KFC Cash Voucher\nname_zh_cn:\n- 现金券\n- 肯德基现金券\n	2022-09-07 06:40:39.588997
503	Bundle	1	update	0qa(1)	---\nname:\n- '{"en":"Valentines Day bundle","zh-CN":"情人节套餐"}'\n- '{"en":"Valentine‘s Day Bundle","zh-CN":"情人节套餐"}'\ndesc:\n- '{"en":"KFC Valentines Day bundle","zh-CN":"肯德基 情人节套餐"}'\n- '{"en":"KFC Valentine‘s Day Bundle","zh-CN":"肯德基 情人节套餐"}'\nname_en:\n- Valentines Day bundle\n- Valentine‘s Day Bundle\ndesc_en:\n- KFC Valentines Day bundle\n- KFC Valentine‘s Day Bundle\n	2022-09-01 10:14:59.462976
504	Image	117	create	0qa(1)	---\nid:\n- \n- 117\nimage:\n- \n- 0c608191349640c6b55c30c78e420a60.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 02:26:31.147965000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 02:26:31.147965000 Z\n	2022-09-05 02:26:31.147965
505	Image	118	create	0qa(1)	---\nid:\n- \n- 118\nimage:\n- \n- 016e54f1598ed890513f30cba98418bf.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 02:26:40.531919000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 02:26:40.531919000 Z\n	2022-09-05 02:26:40.531919
506	User	1	create	\N	---\nid:\n- \n- 1\nemail:\n- \n- huyang@fooyo.sg\nname:\n- \n- huyang\nphone_number:\n- \n- '19983141609'\nencrypted_password:\n- \n- "$2a$12$vOQNkjKMhZ.SHPFQ9I8tW.mAfvkqojf/3CYVxExFDaWowHgJ.SW9q"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 09:56:53.279613000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 09:56:53.279613000 Z\n	2022-09-05 09:56:53.279613
507	User	2	create	\N	---\nid:\n- \n- 2\nemail:\n- \n- q@fooyo.sg\nname:\n- \n- rick\nphone_number:\n- \n- '92987696'\nencrypted_password:\n- \n- "$2a$12$9OZrJpTIEk30EMg29ZicyeE.zzEu6qLAqlmM4OFVtDrFHvJqSaXeO"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 09:56:53.636726000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 09:56:53.636726000 Z\n	2022-09-05 09:56:53.636726
508	User	3	create	\N	---\nid:\n- \n- 3\nemail:\n- \n- c@fooyo.sg\nname:\n- \n- zeyu\nphone_number:\n- \n- '19983141611'\nencrypted_password:\n- \n- "$2a$12$gG4a/XDOJ/B3VTgyikrcGO33olGOUvdLR5LGaYkZmH4LmerAV4ZqW"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 09:56:53.978111000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 09:56:53.978111000 Z\n	2022-09-05 09:56:53.978111
509	User	4	create	\N	---\nid:\n- \n- 4\nemail:\n- \n- ruijian@fooyo.sg\nname:\n- \n- ruijian\nphone_number:\n- \n- '19983141612'\nencrypted_password:\n- \n- "$2a$12$Yf7f/hF07ZkqztQy30FQG.r6lj5m5ONlV0q9irs77ZkXxETG4hCta"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 09:56:54.326849000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 09:56:54.326849000 Z\n	2022-09-05 09:56:54.326849
510	User	5	create	\N	---\nid:\n- \n- 5\nemail:\n- \n- y@fooyo.sg\nname:\n- \n- yangfan\nphone_number:\n- \n- '97161538'\nencrypted_password:\n- \n- "$2a$12$wtGTu2pEHGeLzNrqR6d0TeTEWBJJ1.cRFWkbSyFdyDcmVbkaQgeVm"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 09:56:54.672533000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 09:56:54.672533000 Z\n	2022-09-05 09:56:54.672533
511	ChannelSellable	93	create	0qa(1)	---\nid:\n- \n- 93\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 1\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 11:15:08.931220000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 11:15:08.931220000 Z\n	2022-09-05 11:15:08.93122
512	ChannelSellable	94	create	0qa(1)	---\nid:\n- \n- 94\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 1\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-05 11:15:08.952820000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-05 11:15:08.952820000 Z\n	2022-09-05 11:15:08.95282
513	Product	30	update	0qa(1)	---\nname:\n- '{"en":"Otter Cup Green","zh-CN":"水獭杯"}'\n- '{"en":"Otter Cup ","zh-CN":"水獭杯"}'\nname_en:\n- Otter Cup Green\n- 'Otter Cup '\n	2022-09-05 14:17:53.293547
514	ChannelSellable	95	create	0qa(1)	---\nid:\n- \n- 95\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 01:54:49.867182000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 01:54:49.867182000 Z\n	2022-09-06 01:54:49.867182
515	ChannelSellable	96	create	0qa(1)	---\nid:\n- \n- 96\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 01:54:49.875410000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 01:54:49.875410000 Z\n	2022-09-06 01:54:49.87541
516	Image	119	create	0qa(1)	---\nid:\n- \n- 119\nimage:\n- \n- 水獭green.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 01:57:41.231580000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 01:57:41.231580000 Z\n	2022-09-06 01:57:41.23158
517	Image	120	create	0qa(1)	---\nid:\n- \n- 120\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 01:57:51.655797000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 01:57:51.655797000 Z\n	2022-09-06 01:57:51.655797
518	AdminUser	2	create	0qa(1)	---\nid:\n- \n- 2\nemail:\n- \n- huyang@fooyo.sg\nphone_number:\n- \n- '12345678'\nname:\n- \n- huyang\nencrypted_password:\n- \n- "$2a$12$PtG6hPZDN0TFrJRpbBC7bOCDhfamW.MO9dMJAmqXz3H22GzCMlSsu"\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 03:14:14.796225000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 03:14:14.796225000 Z\n	2022-09-06 03:14:14.796225
519	Shop	8	update	0qa(1)	---\noperation_time_start:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 11:37:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 11:37:00.000000000 Z\noperation_time_end:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 14:38:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 14:38:00.000000000 Z\n	2022-09-06 06:38:09.80761
520	Shop	8	update	0qa(1)	---\nwhatsapp_number:\n- '890889900'\n- '890889901'\n	2022-09-06 07:51:34.092993
521	Shop	8	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"test"}'\nshort_desc_en:\n- \n- test\n	2022-09-06 07:57:55.78865
522	Shop	1	update	0qa(1)	---\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 09:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 22:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 22:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 22:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 22:00:00.000000000 Z\n	2022-09-06 08:22:09.820703
1213	Variant	91	create	0qa(1)	---\nid:\n- \n- 91\nvariation_id:\n- \n- 57\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\ncreated_at:\n- \n- 2022-09-08 08:38:41.255113000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\n	2022-09-08 08:38:41.255113
1697	ProductSku	95	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-AMR-Roast Chicken-A\n	2022-09-13 03:51:00.722154
523	Shop	1	update	0qa(1)	---\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 08:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 08:00:00.000000000 Z\n	2022-09-06 08:22:33.656086
524	Shop	1	update	0qa(1)	---\nself_pickup_tips:\n- \n- '{"en":"Please come to the shop to pick up the product within three days","zh-CN":"请您三天内到店提取产品"}'\nself_pickup_tips_en:\n- \n- Please come to the shop to pick up the product within three days\nself_pickup_tips_zh_cn:\n- \n- 请您三天内到店提取产品\n	2022-09-06 08:26:28.232201
525	Channel	20	create	0qa(1)	---\nid:\n- \n- 20\nshop_id:\n- \n- 1\nname:\n- \n- Self-service Kiosks\nkey:\n- \n- 1W0cYMrABKJao4E8xc5SdLLjxFvssaJM\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 08:27:27.941536000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 08:27:27.941536000 Z\n	2022-09-06 08:27:27.941536
526	Channel	21	create	0qa(1)	---\nid:\n- \n- 21\nshop_id:\n- \n- 1\nname:\n- \n- iPad\nkey:\n- \n- AoMCY1X0pGBLxM9Nopc55E3LEX29y8nJ\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 08:28:51.234806000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 08:28:51.234806000 Z\n	2022-09-06 08:28:51.234806
527	Channel	22	create	0qa(1)	---\nid:\n- \n- 22\nshop_id:\n- \n- 1\nname:\n- \n- App\nkey:\n- \n- emTUvDH7IjEwY0QBqPLSotYCPceebKkT\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 08:30:11.066205000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 08:30:11.066205000 Z\n	2022-09-06 08:30:11.066205
528	Image	121	create	0qa(1)	---\nid:\n- \n- 121\nimage:\n- \n- Kangaroo_Doll-_pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 08:33:04.062549000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 08:33:04.062549000 Z\n	2022-09-06 08:33:04.062549
529	Image	122	create	0qa(1)	---\nid:\n- \n- 122\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:57.938807000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:00:57.938807000 Z\n	2022-09-06 09:00:57.938807
530	Image	123	create	0qa(1)	---\nid:\n- \n- 123\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:01:15.633028000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:01:15.633028000 Z\n	2022-09-06 09:01:15.633028
1214	Variation	58	create	0qa(1)	---\nid:\n- \n- 58\nproduct_id:\n- \n- 3\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\ncreated_at:\n- \n- 2022-09-08 08:38:41.264169000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-08 08:38:41.264169
1215	Variant	92	create	0qa(1)	---\nid:\n- \n- 92\nvariation_id:\n- \n- 58\nname:\n- \n- '{"en":"yellow","zh-CN":"黄色"}'\ncreated_at:\n- \n- 2022-09-08 08:38:41.272210000 Z\nname_en:\n- \n- yellow\nname_zh_cn:\n- \n- 黄色\n	2022-09-08 08:38:41.27221
1216	ProductSku	58	create	0qa(1)	---\nid:\n- \n- 58\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 3\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 91\n  - 92\nproduct_id:\n- \n- 3\ncreated_at:\n- \n- 2022-09-08 08:38:41.289718000 Z\n	2022-09-08 08:38:41.289718
1217	Product	3	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 08:38:41.30766
1218	Image	159	create	0qa(1)	---\nid:\n- \n- 159\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- 2022-09-08 08:39:47.819185000 Z\n	2022-09-08 08:39:47.819185
1219	Image	160	create	0qa(1)	---\nid:\n- \n- 160\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- 2022-09-08 08:40:40.222897000 Z\n	2022-09-08 08:40:40.222897
1220	Image	161	create	0qa(1)	---\nid:\n- \n- 161\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 08:41:58.752117000 Z\n	2022-09-08 08:41:58.752117
1221	Image	162	create	0qa(1)	---\nid:\n- \n- 162\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 08:42:37.756445000 Z\n	2022-09-08 08:42:37.756445
1523	ProductSku	84	create	0qa(1)	---\nid:\n- \n- 84\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 102\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 07:44:56.287816000 Z\n	2022-09-09 07:44:56.287816
1524	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 27:0.125e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-09 07:44:56.297581
1525	Variation	73	create	0qa(1)	---\nid:\n- \n- 73\nproduct_id:\n- \n- 26\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:46:11.263802000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:46:11.263802
1526	Variant	112	create	0qa(1)	---\nid:\n- \n- 112\nvariation_id:\n- \n- 73\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:46:11.270064000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:46:11.270064
1527	ProductSku	85	create	0qa(1)	---\nid:\n- \n- 85\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 40\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nvariant_ids:\n- []\n- - 112\nproduct_id:\n- \n- 26\ncreated_at:\n- \n- 2022-09-09 07:46:11.282019000 Z\n	2022-09-09 07:46:11.282019
1528	Product	26	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.150457
1529	Variation	74	create	0qa(1)	---\nid:\n- \n- 74\nproduct_id:\n- \n- 24\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:47:49.249153000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:47:49.249153
1530	Variant	113	create	0qa(1)	---\nid:\n- \n- 113\nvariation_id:\n- \n- 74\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:47:49.254760000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:47:49.25476
1531	ProductSku	86	create	0qa(1)	---\nid:\n- \n- 86\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 37\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 113\nproduct_id:\n- \n- 24\ncreated_at:\n- \n- 2022-09-09 07:47:49.270416000 Z\n	2022-09-09 07:47:49.270416
1532	Product	24	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.130349
1533	ProductSku	87	create	0qa(1)	---\nid:\n- \n- 87\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 07:49:45.033120000 Z\n	2022-09-09 07:49:45.03312
1534	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 07:44:56.297581
1535	Variation	75	create	0qa(1)	---\nid:\n- \n- 75\nproduct_id:\n- \n- 23\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:49:45.742793000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:49:45.742793
1536	Variant	114	create	0qa(1)	---\nid:\n- \n- 114\nvariation_id:\n- \n- 75\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:49:45.749162000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:49:45.749162
1222	Image	163	create	0qa(1)	---\nid:\n- \n- 163\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- 2022-09-08 08:42:37.833084000 Z\n	2022-09-08 08:42:37.833084
1223	Variation	59	create	0qa(1)	---\nid:\n- \n- 59\nproduct_id:\n- \n- 49\nname:\n- \n- '{"en":"red","zh-CN":"红色"}'\ncreated_at:\n- \n- 2022-09-08 08:47:12.528031000 Z\nname_en:\n- \n- red\nname_zh_cn:\n- \n- 红色\n	2022-09-08 08:47:12.528031
1224	ProductSku	59	create	0qa(1)	---\nid:\n- \n- 59\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 6\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - \nproduct_id:\n- \n- 49\ncreated_at:\n- \n- 2022-09-08 08:47:12.543779000 Z\n	2022-09-08 08:47:12.543779
1225	Product	49	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-08 08:34:11.279278
1226	Image	164	create	0qa(1)	---\nid:\n- \n- 164\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 08:48:45.358906000 Z\n	2022-09-08 08:48:45.358906
1227	Image	165	create	0qa(1)	---\nid:\n- \n- 165\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 08:50:33.141919000 Z\n	2022-09-08 08:50:33.141919
1228	Image	105	update	0qa(1)	---\ntarget_id:\n- 44\n- \ntarget_type:\n- ProductSku\n- \n	2022-09-08 08:51:21.758491
1233	Image	170	create	0qa(1)	---\nid:\n- \n- 170\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 09:19:52.681696000 Z\n	2022-09-08 09:19:52.681696
1234	Image	171	create	0qa(1)	---\nid:\n- \n- 171\nimage:\n- \n- a3cf58b4e172040__1_.jpeg\ncreated_at:\n- \n- 2022-09-08 09:21:01.134594000 Z\n	2022-09-08 09:21:01.134594
1235	ProductSku	60	create	0qa(1)	---\nid:\n- \n- 60\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 6\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nproduct_id:\n- \n- 49\ncreated_at:\n- \n- 2022-09-08 09:21:02.743588000 Z\n	2022-09-08 09:21:02.743588
1236	Product	49	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-08 08:34:11.279278
1237	Image	172	create	0qa(1)	---\nid:\n- \n- 172\nimage:\n- \n- Kangaroo_Doll-_pro.png\ncreated_at:\n- \n- 2022-09-08 09:21:27.923190000 Z\n	2022-09-08 09:21:27.92319
1238	Image	173	create	0qa(1)	---\nid:\n- \n- 173\nimage:\n- \n- de8a7004-0a89-4b50-88d9-89b4c5ec0df1.png\ncreated_at:\n- \n- 2022-09-08 09:21:54.750529000 Z\n	2022-09-08 09:21:54.750529
1239	Product	67	create	0qa(1)	---\nid:\n- \n- 67\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- 2022-09-08 09:21:56.531460000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 09:21:56.53146
1240	ChannelSellable	220	create	0qa(1)	---\nid:\n- \n- 220\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 67\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:21:56.540616000 Z\n	2022-09-08 09:21:56.540616
1241	ChannelSellable	221	create	0qa(1)	---\nid:\n- \n- 221\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 67\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:21:56.547061000 Z\n	2022-09-08 09:21:56.547061
1242	ChannelSellable	222	create	0qa(1)	---\nid:\n- \n- 222\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 67\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:21:56.553986000 Z\n	2022-09-08 09:21:56.553986
1243	ChannelSellable	223	create	0qa(1)	---\nid:\n- \n- 223\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 67\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:21:56.560284000 Z\n	2022-09-08 09:21:56.560284
1244	ChannelSellable	224	create	0qa(1)	---\nid:\n- \n- 224\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 67\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:21:56.567151000 Z\n	2022-09-08 09:21:56.567151
1245	CustomAttribute	8	create	0qa(1)	---\nid:\n- \n- 8\nattributable_id:\n- \n- 67\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"color1","zh-CN":"颜色1"}'\nvalue:\n- \n- '{"en":"blue","zh-CN":"蓝"}'\ncreated_at:\n- \n- 2022-09-08 09:21:56.574426000 Z\nname_en:\n- \n- color1\nname_zh_cn:\n- \n- 颜色1\nvalue_en:\n- \n- blue\nvalue_zh_cn:\n- \n- 蓝\n	2022-09-08 09:21:56.574426
1246	CustomAttribute	9	create	0qa(1)	---\nid:\n- \n- 9\nattributable_id:\n- \n- 67\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"12","zh-CN":"34"}'\nvalue:\n- \n- '{"en":"45","zh-CN":"561"}'\ncreated_at:\n- \n- 2022-09-08 09:21:56.580444000 Z\nname_en:\n- \n- '12'\nname_zh_cn:\n- \n- '34'\nvalue_en:\n- \n- '45'\nvalue_zh_cn:\n- \n- '561'\n	2022-09-08 09:21:56.580444
1247	ProductSku	61	create	0qa(1)	---\nid:\n- \n- 61\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 51\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nproduct_id:\n- \n- 67\ncreated_at:\n- \n- 2022-09-08 09:21:56.593929000 Z\n	2022-09-08 09:21:56.593929
1248	Product	67	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 09:21:56.602783
1249	SkuView	48	update	\N	---\nlast_event_time:\n- 2022-09-08 07:51:07.000000000 Z\n- 2022-09-08 09:22:29.000000000 Z\n	2022-09-08 09:22:29.316062
1250	Image	174	create	0qa(1)	---\nid:\n- \n- 174\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- 2022-09-08 09:24:02.405429000 Z\n	2022-09-08 09:24:02.405429
1251	Image	175	create	0qa(1)	---\nid:\n- \n- 175\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- 2022-09-08 09:24:13.376667000 Z\n	2022-09-08 09:24:13.376667
1252	Product	68	create	0qa(1)	---\nid:\n- \n- 68\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":" Kangaroo Doll","zh-CN":"袋鼠玩偶"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- 2022-09-08 09:24:16.499887000 Z\nname_en:\n- \n- " Kangaroo Doll"\nname_zh_cn:\n- \n- 袋鼠玩偶\n	2022-09-08 09:24:16.499887
1253	ChannelSellable	225	create	0qa(1)	---\nid:\n- \n- 225\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 68\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:24:16.510424000 Z\n	2022-09-08 09:24:16.510424
1254	ChannelSellable	226	create	0qa(1)	---\nid:\n- \n- 226\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 68\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:24:16.516567000 Z\n	2022-09-08 09:24:16.516567
1255	ChannelSellable	227	create	0qa(1)	---\nid:\n- \n- 227\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 68\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:24:16.522510000 Z\n	2022-09-08 09:24:16.52251
1256	ChannelSellable	228	create	0qa(1)	---\nid:\n- \n- 228\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 68\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:24:16.528528000 Z\n	2022-09-08 09:24:16.528528
1257	ChannelSellable	229	create	0qa(1)	---\nid:\n- \n- 229\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 68\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:24:16.534982000 Z\n	2022-09-08 09:24:16.534982
1258	CustomAttribute	10	create	0qa(1)	---\nid:\n- \n- 10\nattributable_id:\n- \n- 68\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\nvalue:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- 2022-09-08 09:24:16.542783000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\nvalue_en:\n- \n- small\nvalue_zh_cn:\n- \n- 小号\n	2022-09-08 09:24:16.542783
1259	CustomAttribute	11	create	0qa(1)	---\nid:\n- \n- 11\nattributable_id:\n- \n- 68\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"gery","zh-CN":"灰色"}'\nvalue:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- 2022-09-08 09:24:16.549498000 Z\nname_en:\n- \n- gery\nname_zh_cn:\n- \n- 灰色\nvalue_en:\n- \n- large\nvalue_zh_cn:\n- \n- 大号\n	2022-09-08 09:24:16.549498
1229	Image	166	create	0qa(1)	---\nid:\n- \n- 166\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 08:51:57.777108000 Z\n	2022-09-08 08:51:57.777108
1230	Image	167	create	0qa(1)	---\nid:\n- \n- 167\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 08:52:30.637896000 Z\n	2022-09-08 08:52:30.637896
1231	Image	168	create	0qa(1)	---\nid:\n- \n- 168\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 09:00:08.157583000 Z\n	2022-09-08 09:00:08.157583
1232	Image	169	create	0qa(1)	---\nid:\n- \n- 169\nimage:\n- \n- test.jpg\ncreated_at:\n- \n- 2022-09-08 09:00:43.564779000 Z\n	2022-09-08 09:00:43.564779
1260	Variation	60	create	0qa(1)	---\nid:\n- \n- 60\nproduct_id:\n- \n- 68\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- 2022-09-08 09:24:16.555467000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-08 09:24:16.555467
1261	Variant	93	create	0qa(1)	---\nid:\n- \n- 93\nvariation_id:\n- \n- 60\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- 2022-09-08 09:24:16.561175000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-08 09:24:16.561175
1262	Variant	94	create	0qa(1)	---\nid:\n- \n- 94\nvariation_id:\n- \n- 60\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- 2022-09-08 09:24:16.566864000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-08 09:24:16.566864
567	Shop	2	update	0qa(1)	---\nname:\n- '{"en":"KFC","zh-CN":"肯德基"}'\n- '{"en":"E-KFC ","zh-CN":"肯德基线上店"}'\noperation_time_start:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 09:00:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-08-31 09:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 09:00:00.000000000 Z\noperation_time_end:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-08-31 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-08-31 19:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 19:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-06 19:00:00.000000000 Z\nname_en:\n- KFC\n- 'E-KFC '\nname_zh_cn:\n- 肯德基\n- 肯德基线上店\n	2022-09-06 09:08:50.818383
568	Image	124	create	0qa(1)	---\nid:\n- \n- 124\nimage:\n- \n- ball.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:11:17.208822000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:11:17.208822000 Z\n	2022-09-06 09:11:17.208822
569	Image	125	create	0qa(1)	---\nid:\n- \n- 125\nimage:\n- \n- city.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:11:25.187765000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:11:25.187765000 Z\n	2022-09-06 09:11:25.187765
1263	Variation	61	create	0qa(1)	---\nid:\n- \n- 61\nproduct_id:\n- \n- 68\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- 2022-09-08 09:24:16.572561000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-08 09:24:16.572561
1264	Variant	95	create	0qa(1)	---\nid:\n- \n- 95\nvariation_id:\n- \n- 61\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\ncreated_at:\n- \n- 2022-09-08 09:24:16.578171000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\n	2022-09-08 09:24:16.578171
1265	Variant	96	create	0qa(1)	---\nid:\n- \n- 96\nvariation_id:\n- \n- 61\nname:\n- \n- '{"en":"grey","zh-CN":"灰色"}'\ncreated_at:\n- \n- 2022-09-08 09:24:16.583375000 Z\nname_en:\n- \n- grey\nname_zh_cn:\n- \n- 灰色\n	2022-09-08 09:24:16.583375
573	Image	126	create	0qa(1)	---\nid:\n- \n- 126\nimage:\n- \n- 水獭green.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-06 09:21:31.821621000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-06 09:21:31.821621000 Z\n	2022-09-06 09:21:31.821621
574	VoucherProduct	2	update	0qa(1)	---\nname:\n- '{"en":"Member Voucher","zh-CN":"会员优惠券"}'\n- '{"en":"KFC Member Voucher","zh-CN":"会员优惠券"}'\nname_en:\n- Member Voucher\n- KFC Member Voucher\n	2022-09-07 01:38:44.287196
575	VoucherSkuView	1	create	\N	---\nid:\n- \n- 1\nvoucher_sku_id:\n- \n- 1\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.1e2\nquantity:\n- \n- 100\nname:\n- \n- '{"en":"KFC Member Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.1e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.8e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:18:30.204432000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:18:30.204432000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:18:30.000000000 Z\n  zone: *1\n  time: 2022-09-07 03:18:30.000000000 Z\nname_en:\n- \n- KFC Member Voucher\n	2022-09-07 03:18:30.204432
576	VoucherApplicableTargetView	1	create	\N	---\nid:\n- \n- 1\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:18:30.224411000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:18:30.224411000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 03:18:30.224411
577	VoucherApplicableTargetView	2	create	\N	---\nid:\n- \n- 2\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:18:30.230736000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:18:30.230736000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-07 03:18:30.230736
1266	ProductSku	62	create	0qa(1)	---\nid:\n- \n- 62\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 93\n  - 95\nproduct_id:\n- \n- 68\ncreated_at:\n- \n- 2022-09-08 09:24:16.593497000 Z\n	2022-09-08 09:24:16.593497
1267	Product	68	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:24:16.603689
1268	ProductSku	63	create	0qa(1)	---\nid:\n- \n- 63\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nvariant_ids:\n- []\n- - 94\n  - 96\nproduct_id:\n- \n- 68\ncreated_at:\n- \n- 2022-09-08 09:24:16.613162000 Z\n	2022-09-08 09:24:16.613162
1269	Product	68	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 09:24:16.622617
1298	Image	176	create	0qa(1)	---\nid:\n- \n- 176\nimage:\n- \n- Kangaroo_Doll-_pro.png\ncreated_at:\n- \n- 2022-09-08 09:34:14.754841000 Z\n	2022-09-08 09:34:14.754841
1537	ProductSku	88	create	0qa(1)	---\nid:\n- \n- 88\nshop_id:\n- \n- 7\noutlet_sku_id:\n- \n- 36\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvariant_ids:\n- []\n- - 114\nproduct_id:\n- \n- 23\ncreated_at:\n- \n- 2022-09-09 07:49:45.769161000 Z\n	2022-09-09 07:49:45.769161
1538	Product	23	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.121829
1539	Product	21	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 07:50:06.000000000 Z\n	2022-09-09 07:51:00.577488
578	VoucherSkuView	2	create	\N	---\nid:\n- \n- 2\nvoucher_sku_id:\n- \n- 11\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.1e2\nquantity:\n- \n- 100\nname:\n- \n- '{"en":"SZ Member Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.2e2\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.8e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:19:45.799575000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:19:45.799575000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:19:45.000000000 Z\n  zone: *1\n  time: 2022-09-07 03:19:45.000000000 Z\nname_en:\n- \n- SZ Member Voucher\n	2022-09-07 03:19:45.799575
579	VoucherApplicableTargetView	3	create	\N	---\nid:\n- \n- 3\nvoucher_sku_id:\n- \n- 11\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:19:45.811616000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:19:45.811616000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 03:19:45.811616
580	VoucherSkuView	2	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:19:45.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:19:45.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:20:34.000000000 Z\n  zone: *1\n  time: 2022-09-07 03:20:34.000000000 Z\n	2022-09-07 03:20:34.76664
581	VoucherApplicableTargetView	4	create	\N	---\nid:\n- \n- 4\nvoucher_sku_id:\n- \n- 11\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:20:34.784652000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:20:34.784652000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 03:20:34.784652
582	VoucherProduct	3	update	0qa(1)	---\nvoucher_sku_id:\n- 1\n- 11\n	2022-09-07 03:20:52.961274
583	VoucherSkuView	3	create	\N	---\nid:\n- \n- 3\nvoucher_sku_id:\n- \n- 2\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.2e2\nquantity:\n- \n- 500\nname:\n- \n- '{"en":"SZ Member Shop Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.1e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.18e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:25:00.103322000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:25:00.103322000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:25:00.000000000 Z\n  zone: *1\n  time: 2022-09-07 03:25:00.000000000 Z\nname_en:\n- \n- SZ Member Shop Voucher\n	2022-09-07 03:25:00.103322
584	VoucherApplicableTargetView	5	create	\N	---\nid:\n- \n- 5\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:25:00.118007000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:25:00.118007000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-07 03:25:00.118007
585	VoucherApplicableTargetView	6	create	\N	---\nid:\n- \n- 6\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:25:00.133917000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:25:00.133917000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 03:25:00.133917
586	VoucherSkuView	4	create	\N	---\nid:\n- \n- 4\nvoucher_sku_id:\n- \n- 3\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.1e3\nquantity:\n- \n- 50\nname:\n- \n- '{"en":"KFC Family Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.2e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.88e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:00:59.239339000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:00:59.239339000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:00:59.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:00:59.000000000 Z\nname_en:\n- \n- KFC Family Voucher\n	2022-09-07 06:00:59.239339
587	VoucherSkuView	1	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:18:30.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:18:30.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:01:16.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:01:16.000000000 Z\n	2022-09-07 06:01:16.958539
588	VoucherApplicableTargetView	7	create	\N	---\nid:\n- \n- 7\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:01:16.973446000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:01:16.973446000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 06:01:16.973446
589	VoucherApplicableTargetView	8	create	\N	---\nid:\n- \n- 8\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:01:16.979518000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:01:16.979518000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-07 06:01:16.979518
590	VoucherSkuView	5	create	\N	---\nid:\n- \n- 5\nvoucher_sku_id:\n- \n- 4\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.5e2\nquantity:\n- \n- 100\nname:\n- \n- '{"en":"KFC Holiday Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.12e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.48e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:03:21.544497000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:03:21.544497000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:03:21.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:03:21.000000000 Z\nname_en:\n- \n- KFC Holiday Voucher\n	2022-09-07 06:03:21.544497
1270	Product	2	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 09:29:53.906531
638	VoucherProduct	7	update	0qa(1)	---\nvoucher_sku_id:\n- 3\n- 9\nprice:\n- !ruby/object:BigDecimal 18:0.88e2\n- !ruby/object:BigDecimal 18:0.199e3\n	2022-09-07 07:00:11.716137
1702	Product	13	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-06 16:00:00.000000000 Z\n	2022-09-13 03:55:37.176369
1271	Product	4	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-08 09:29:53.929471
1272	Product	5	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-08 09:29:53.939595
1273	Product	6	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-08 09:29:53.950509
1274	Product	7	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\n	2022-09-08 09:29:53.959973
1275	Product	8	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:29:53.971302
1276	Product	9	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\n	2022-09-08 09:29:53.981596
1277	Product	10	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\n	2022-09-08 09:29:53.99133
1278	Product	11	update	\N	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\n	2022-09-08 09:29:54.000852
1279	Product	12	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\n	2022-09-08 09:29:54.015586
1280	Product	13	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:29:54.025604
1281	Product	14	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:29:54.034669
1282	Product	15	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\n	2022-09-08 09:29:54.044497
1283	Product	16	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.6e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:29:54.054
605	Image	127	create	0qa(1)	---\nid:\n- \n- 127\nimage:\n- \n- 705d8df8c791fbc856e9bab1f4d151b9.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:25:39.555879000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:25:39.555879000 Z\n	2022-09-07 06:25:39.555879
606	Product	34	create	0qa(1)	---\nid:\n- \n- 34\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- 1\nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:25:41.500743000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:25:41.500743000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-07 06:25:41.500743
607	ChannelSellable	115	create	0qa(1)	---\nid:\n- \n- 115\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 34\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:25:41.511641000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:25:41.511641000 Z\n	2022-09-07 06:25:41.511641
608	Variation	31	create	0qa(1)	---\nid:\n- \n- 31\nproduct_id:\n- \n- 34\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:25:41.519775000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:25:41.519775000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-07 06:25:41.519775
609	Variant	55	create	0qa(1)	---\nid:\n- \n- 55\nvariation_id:\n- \n- 31\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:25:41.526503000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:25:41.526503000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-07 06:25:41.526503
610	ProductSku	47	create	0qa(1)	---\nid:\n- \n- 47\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 49\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvariant_ids:\n- []\n- - 55\nproduct_id:\n- \n- 34\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:25:41.538294000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:25:41.538294000 Z\n	2022-09-07 06:25:41.538294
612	VoucherProduct	4	update	0qa(1)	---\nname:\n- '{"en":"Family Voucher","zh-CN":"家庭优惠券"}'\n- '{"en":"KFC Family Voucher","zh-CN":"家庭优惠券"}'\nname_en:\n- Family Voucher\n- KFC Family Voucher\n	2022-09-07 06:34:18.371909
1284	Product	17	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:29:54.066084
1285	Product	18	update	\N	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.36e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.36e1\n	2022-09-08 09:29:54.074604
1286	Product	19	update	\N	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e2\n	2022-09-08 09:29:54.083894
1287	Product	20	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\n	2022-09-08 09:29:54.093533
1288	Product	21	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 09:29:54.102798
1289	Product	22	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 09:29:54.112674
1290	Product	23	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\n	2022-09-08 09:29:54.121829
1291	Product	24	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-08 09:29:54.130349
611	VoucherSkuView	6	create	\N	---\nid:\n- \n- 6\nvoucher_sku_id:\n- \n- 6\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.2e3\nquantity:\n- \n- 20\nname:\n- \n- '{"en":"cash "}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.5e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.189e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:33:29.650735000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:33:29.650735000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:33:29.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:33:29.000000000 Z\nname_en:\n- \n- 'cash '\n	2022-09-07 06:33:29.650735
1292	Product	25	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.12e2\n	2022-09-08 09:29:54.141467
1293	Product	26	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\n	2022-09-08 09:29:54.150457
1294	Product	27	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\n	2022-09-08 09:29:54.159343
1295	Product	28	update	\N	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-08 09:29:54.168032
1296	Product	3	update	\N	---\ndesc:\n- \n- \n	2022-09-08 08:38:41.30766
1297	Product	68	update	\N	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-08 09:24:16.622617
1540	Variation	76	create	0qa(1)	---\nid:\n- \n- 76\nproduct_id:\n- \n- 21\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:51:00.598124000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:51:00.598124
1541	Variant	115	create	0qa(1)	---\nid:\n- \n- 115\nvariation_id:\n- \n- 76\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:51:00.605484000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:51:00.605484
1542	ProductSku	89	create	0qa(1)	---\nid:\n- \n- 89\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 32\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 115\nproduct_id:\n- \n- 21\ncreated_at:\n- \n- 2022-09-09 07:51:00.617093000 Z\n	2022-09-09 07:51:00.617093
1543	Product	21	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-09 07:51:00.577488
1544	Variation	77	create	0qa(1)	---\nid:\n- \n- 77\nproduct_id:\n- \n- 18\nname:\n- \n- '{"en":"Size ","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:52:19.592617000 Z\nname_en:\n- \n- 'Size '\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:52:19.592617
1545	Variant	116	create	0qa(1)	---\nid:\n- \n- 116\nvariation_id:\n- \n- 77\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:52:19.598568000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:52:19.598568
1546	ProductSku	90	create	0qa(1)	---\nid:\n- \n- 90\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 27\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.36e1\nvariant_ids:\n- []\n- - 116\nproduct_id:\n- \n- 18\ncreated_at:\n- \n- 2022-09-09 07:52:19.611363000 Z\n	2022-09-09 07:52:19.611363
1547	Variation	78	create	0qa(1)	---\nid:\n- \n- 78\nproduct_id:\n- \n- 17\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:54:45.082823000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:54:45.082823
1548	Variant	117	create	0qa(1)	---\nid:\n- \n- 117\nvariation_id:\n- \n- 78\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:54:45.088381000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:54:45.088381
1549	ProductSku	91	create	0qa(1)	---\nid:\n- \n- 91\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 26\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 117\nproduct_id:\n- \n- 17\ncreated_at:\n- \n- 2022-09-09 07:54:45.099853000 Z\n	2022-09-09 07:54:45.099853
1550	Product	17	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.066084
1639	SkuView	49	create	\N	---\nid:\n- \n- 49\nsku_id:\n- \n- 51\nmaster_sku_ref:\n- \n- ''\nname:\n- \n- '{"en":"2","zh-CN":"22"}'\ncreated_at:\n- \n- 2022-09-09 09:40:22.602407000 Z\nlast_event_time:\n- 2022-09-01 00:00:00.000000000 Z\n- 2022-09-09 09:40:22.000000000 Z\nname_en:\n- \n- '2'\nname_zh_cn:\n- \n- '22'\n	2022-09-09 09:40:22.602407
1664	OutletSkuView	52	create	\N	---\nid:\n- \n- 52\noutlet_sku_id:\n- \n- 52\nquantity:\n- \n- 222\nsku_id:\n- \n- 52\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- 2022-09-13 03:05:59.792930000 Z\nlast_event_time:\n- 2022-09-01 00:00:00.000000000 Z\n- 2022-09-13 03:05:59.000000000 Z\n	2022-09-13 03:05:59.79293
1667	Product	71	create	0qa(1)	---\nid:\n- \n- 71\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"test2","zh-CN":"test2"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 100\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- 2022-09-13 03:07:18.594711000 Z\nname_en:\n- \n- test2\nname_zh_cn:\n- \n- test2\n	2022-09-13 03:07:18.594711
1668	ChannelSellable	243	create	0qa(1)	---\nid:\n- \n- 243\nchannel_id:\n- \n- 11\nsellable_id:\n- \n- 71\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 03:07:18.624783000 Z\n	2022-09-13 03:07:18.624783
1669	ChannelSellable	244	create	0qa(1)	---\nid:\n- \n- 244\nchannel_id:\n- \n- 12\nsellable_id:\n- \n- 71\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 03:07:18.641533000 Z\n	2022-09-13 03:07:18.641533
1670	ProductSku	103	create	0qa(1)	---\nid:\n- \n- 103\nshop_id:\n- \n- 5\noutlet_sku_id:\n- \n- 52\nmaster_sku_ref:\n- \n- '22'\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nproduct_id:\n- \n- 71\ncreated_at:\n- \n- 2022-09-13 03:07:18.679326000 Z\n	2022-09-13 03:07:18.679326
1671	Product	71	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\n	2022-09-13 03:07:18.727932
1682	SkuView	11	update	\N	---\nname:\n- '{"en":"Medium Giraffe Pillow","zh-CN":"中号长劲鹿抱枕"}'\n- '{"en":"Medium Giraffe Pillow11","zh-CN":"中号长劲鹿抱枕"}'\nlast_event_time:\n- 2022-09-13 03:25:55.000000000 Z\n- 2022-09-13 03:32:11.000000000 Z\nname_en:\n- Medium Giraffe Pillow\n- Medium Giraffe Pillow11\n	2022-09-13 03:32:11.762847
1687	ProductSku	102	update	0qa(1)	---\noutlet_sku_id:\n- 51\n- 50\nmaster_sku_ref:\n- '12345'\n- RW-GS-Panda Hat-A\nprice:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-13 03:36:39.183226
1688	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-13 03:36:39.192914
1689	ProductSku	9	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-KFC-Fries-S\n	2022-09-13 03:37:23.267419
1690	ProductSku	10	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-GS- Fries-L\n	2022-09-13 03:37:23.285587
1691	Image	204	create	0qa(1)	---\nid:\n- \n- 204\nimage:\n- \n- 印度黄姜饭.png\ncreated_at:\n- \n- 2022-09-13 03:38:11.695894000 Z\n	2022-09-13 03:38:11.695894
1692	ProductSku	75	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-AMR- Indian Turmeric Rice-A\n	2022-09-13 03:38:15.688147
616	VoucherProduct	7	update	0qa(1)	---\nname:\n- '{"en":"Family Voucher","zh-CN":"家庭券"}'\n- '{"en":"SZ Family Voucher","zh-CN":"新加坡动物园家庭券"}'\nname_en:\n- Family Voucher\n- SZ Family Voucher\nname_zh_cn:\n- 家庭券\n- 新加坡动物园家庭券\n	2022-09-07 06:41:21.793161
617	VoucherProduct	8	update	0qa(1)	---\nname:\n- '{"en":"Holiday Voucher","zh-CN":"节日券"}'\n- '{"en":"SZ Holiday Voucher","zh-CN":"新加坡动物园节日券"}'\nname_en:\n- Holiday Voucher\n- SZ Holiday Voucher\nname_zh_cn:\n- 节日券\n- 新加坡动物园节日券\n	2022-09-07 06:42:00.6865
618	VoucherProduct	10	update	0qa(1)	---\nname:\n- '{"en":"Family Voucher","zh-CN":"家庭优惠券"}'\n- '{"en":"AMR Family Voucher","zh-CN":"阿明餐厅家庭优惠券"}'\nname_en:\n- Family Voucher\n- AMR Family Voucher\nname_zh_cn:\n- 家庭优惠券\n- 阿明餐厅家庭优惠券\n	2022-09-07 06:42:56.592226
619	VoucherProduct	9	update	0qa(1)	---\nname:\n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\n- '{"en":"SZ Cash Voucher","zh-CN":"新加坡动物园现金券"}'\nname_en:\n- Cash Voucher\n- SZ Cash Voucher\nname_zh_cn:\n- 现金券\n- 新加坡动物园现金券\n	2022-09-07 06:43:31.825478
620	VoucherProduct	11	update	0qa(1)	---\nname:\n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\n- '{"en":"AMR Cash Voucher","zh-CN":"阿明餐厅现金券"}'\nname_en:\n- Cash Voucher\n- AMR Cash Voucher\nname_zh_cn:\n- 现金券\n- 阿明餐厅现金券\n	2022-09-07 06:43:58.711266
621	VoucherProduct	12	update	0qa(1)	---\nname:\n- '{"en":"Discount Voucher","zh-CN":"折扣券"}'\n- '{"en":"AMR Discount Voucher","zh-CN":"阿明餐厅折扣券"}'\nname_en:\n- Discount Voucher\n- AMR Discount Voucher\nname_zh_cn:\n- 折扣券\n- 阿明餐厅折扣券\n	2022-09-07 06:44:30.916985
622	VoucherSkuView	7	create	\N	---\nid:\n- \n- 7\nvoucher_sku_id:\n- \n- 7\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.99e2\nquantity:\n- \n- 50\nname:\n- \n- '{"en":"KFC Holiday Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.5e2\nrecommended_price:\n- \n- !ruby/object:BigDecimal 27:0.288e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:45:50.461793000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:45:50.461793000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:45:50.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:45:50.000000000 Z\nname_en:\n- \n- KFC Holiday Voucher\n	2022-09-07 06:45:50.461793
623	VoucherProduct	6	update	0qa(1)	---\nshort_desc:\n- '{"en":"111","zh-CN":"22"}'\n- "{}"\nshort_desc_en:\n- '111'\n- \nshort_desc_zh_cn:\n- '22'\n- \n	2022-09-07 06:47:21.475978
624	VoucherSkuView	8	create	\N	---\nid:\n- \n- 8\nvoucher_sku_id:\n- \n- 9\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.369e3\nquantity:\n- \n- 50\nname:\n- \n- '{"en":"SZ Family Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.8e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.299e3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.499421000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:52:43.499421000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:52:43.000000000 Z\nname_en:\n- \n- SZ Family Voucher\n	2022-09-07 06:52:43.499421
625	VoucherApplicableTargetView	9	create	\N	---\nid:\n- \n- 9\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.517408000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:52:43.517408000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 06:52:43.517408
626	VoucherApplicableTargetView	10	create	\N	---\nid:\n- \n- 10\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.523733000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:52:43.523733000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 06:52:43.523733
627	VoucherSkuView	8	update	\N	---\nvalue_amount:\n- !ruby/object:BigDecimal 18:0.369e3\n- !ruby/object:BigDecimal 18:0.299e3\nmin_spend:\n- !ruby/object:BigDecimal 18:0.8e3\n- !ruby/object:BigDecimal 18:0.3e3\nrecommended_price:\n- !ruby/object:BigDecimal 18:0.299e3\n- !ruby/object:BigDecimal 18:0.199e3\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:52:43.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:52:43.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:53:16.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:53:16.000000000 Z\n	2022-09-07 06:53:16.133531
628	VoucherApplicableTargetView	11	create	\N	---\nid:\n- \n- 11\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:53:16.140437000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:53:16.140437000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 06:53:16.140437
629	VoucherApplicableTargetView	12	create	\N	---\nid:\n- \n- 12\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:53:16.145809000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:53:16.145809000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 06:53:16.145809
630	VoucherApplicableTargetView	13	create	\N	---\nid:\n- \n- 13\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:53:16.149650000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:53:16.149650000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-07 06:53:16.14965
631	VoucherApplicableTargetView	14	create	\N	---\nid:\n- \n- 14\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:53:16.153571000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:53:16.153571000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 06:53:16.153571
633	VoucherProduct	12	update	0qa(1)	---\nvoucher_sku_id:\n- 9\n- 8\nprice:\n- !ruby/object:BigDecimal 18:0.299e3\n- !ruby/object:BigDecimal 18:0.99e2\n	2022-09-07 06:55:37.762064
634	VoucherProduct	11	update	0qa(1)	---\nvoucher_sku_id:\n- 4\n- 6\nprice:\n- !ruby/object:BigDecimal 18:0.48e2\n- !ruby/object:BigDecimal 18:0.189e3\n	2022-09-07 06:55:58.806766
1703	ProductSku	16	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo T-Shirt-P-S\n	2022-09-13 03:55:37.394634
632	VoucherSkuView	9	create	\N	---\nid:\n- \n- 9\nvoucher_sku_id:\n- \n- 8\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.219e3\nquantity:\n- \n- 50\nname:\n- \n- '{"en":"AMR Discount Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.5e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.99e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:55:17.347866000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:55:17.347866000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:55:17.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:55:17.000000000 Z\nname_en:\n- \n- AMR Discount Voucher\n	2022-09-07 06:55:17.347866
635	VoucherSkuView	5	update	\N	---\nname:\n- '{"en":"KFC Holiday Voucher"}'\n- '{"en":"KFC Cash Voucher"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:03:21.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:03:21.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:59:21.000000000 Z\n  zone: *1\n  time: 2022-09-07 06:59:21.000000000 Z\nname_en:\n- KFC Holiday Voucher\n- KFC Cash Voucher\n	2022-09-07 06:59:21.483007
636	VoucherApplicableTargetView	15	create	\N	---\nid:\n- \n- 15\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:59:21.491807000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:59:21.491807000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-07 06:59:21.491807
637	VoucherApplicableTargetView	16	create	\N	---\nid:\n- \n- 16\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:59:21.498699000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:59:21.498699000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 06:59:21.498699
639	VoucherSkuView	8	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:53:16.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:53:16.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:00:39.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:00:39.000000000 Z\n	2022-09-07 07:00:40.020198
640	VoucherApplicableTargetView	17	create	\N	---\nid:\n- \n- 17\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:00:40.024845000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:00:40.024845000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 07:00:40.024845
641	VoucherApplicableTargetView	18	create	\N	---\nid:\n- \n- 18\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:00:40.029028000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:00:40.029028000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 07:00:40.029028
642	VoucherApplicableTargetView	19	create	\N	---\nid:\n- \n- 19\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:00:40.033577000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:00:40.033577000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-07 07:00:40.033577
643	VoucherApplicableTargetView	20	create	\N	---\nid:\n- \n- 20\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:00:40.039452000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:00:40.039452000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 07:00:40.039452
644	VoucherSkuView	10	create	\N	---\nid:\n- \n- 10\nvoucher_sku_id:\n- \n- 12\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.5e2\nquantity:\n- \n- 100\nname:\n- \n- '{"en":"SZ Holiday Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.1e3\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.2e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.365414000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.365414000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:02:53.000000000 Z\nname_en:\n- \n- SZ Holiday Voucher\n	2022-09-07 07:02:53.365414
645	VoucherApplicableTargetView	21	create	\N	---\nid:\n- \n- 21\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.372003000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.372003000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 07:02:53.372003
646	VoucherApplicableTargetView	22	create	\N	---\nid:\n- \n- 22\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.376517000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.376517000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-07 07:02:53.376517
647	VoucherApplicableTargetView	23	create	\N	---\nid:\n- \n- 23\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.380620000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.380620000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-07 07:02:53.38062
648	VoucherApplicableTargetView	24	create	\N	---\nid:\n- \n- 24\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.384594000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.384594000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-07 07:02:53.384594
651	VoucherProduct	8	update	0qa(1)	---\nvoucher_sku_id:\n- 7\n- 12\nprice:\n- !ruby/object:BigDecimal 27:0.288e2\n- !ruby/object:BigDecimal 18:0.2e2\n	2022-09-07 07:03:30.579156
649	VoucherApplicableTargetView	25	create	\N	---\nid:\n- \n- 25\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.388640000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.388640000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-07 07:02:53.38864
650	VoucherApplicableTargetView	26	create	\N	---\nid:\n- \n- 26\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.392801000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.392801000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 07:02:53.392801
652	VoucherSkuView	6	update	\N	---\nname:\n- '{"en":"cash "}'\n- '{"en":"BP Cash Voucher"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:33:29.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:33:29.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:06:10.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:06:10.000000000 Z\nname_en:\n- 'cash '\n- BP Cash Voucher\n	2022-09-07 07:06:10.626787
653	VoucherSkuView	6	update	\N	---\nname:\n- '{"en":"BP Cash Voucher"}'\n- '{"en":" AMR Cash Voucher"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:06:10.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:06:10.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:09:10.000000000 Z\nname_en:\n- BP Cash Voucher\n- " AMR Cash Voucher"\n	2022-09-07 07:09:10.587739
654	VoucherApplicableTargetView	27	create	\N	---\nid:\n- \n- 27\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_name:\n- \n- '{"en":"Pizza Hut"}'\nvoucher_applicable_id:\n- \n- '7'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.599109000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.599109000 Z\nvoucher_applicable_name_en:\n- \n- Pizza Hut\n	2022-09-07 07:09:10.599109
655	VoucherApplicableTargetView	28	create	\N	---\nid:\n- \n- 28\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_name:\n- \n- '{"en":"Pizza Hut E-shop"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.607199000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.607199000 Z\nvoucher_applicable_name_en:\n- \n- Pizza Hut E-shop\n	2022-09-07 07:09:10.607199
656	VoucherApplicableTargetView	29	create	\N	---\nid:\n- \n- 29\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_name:\n- \n- '{"en":"Jurong Bird Park Gift Shop"}'\nvoucher_applicable_id:\n- \n- '6'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.616718000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.616718000 Z\nvoucher_applicable_name_en:\n- \n- Jurong Bird Park Gift Shop\n	2022-09-07 07:09:10.616718
657	VoucherApplicableTargetView	30	create	\N	---\nid:\n- \n- 30\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_name:\n- \n- '{"en":" Feather House Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.626097000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.626097000 Z\nvoucher_applicable_name_en:\n- \n- " Feather House Gift E-shop"\n	2022-09-07 07:09:10.626097
658	VoucherSkuView	11	create	\N	---\nid:\n- \n- 11\nvoucher_sku_id:\n- \n- 13\nvalue_amount:\n- \n- !ruby/object:BigDecimal 18:0.5e2\nquantity:\n- \n- 100\nname:\n- \n- '{"en":"SZ Cash Voucher"}'\nmin_spend:\n- \n- !ruby/object:BigDecimal 18:0.6e2\nrecommended_price:\n- \n- !ruby/object:BigDecimal 18:0.3e2\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.155175000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.155175000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:15:53.000000000 Z\nname_en:\n- \n- SZ Cash Voucher\n	2022-09-07 07:15:53.155175
659	VoucherApplicableTargetView	31	create	\N	---\nid:\n- \n- 31\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.168147000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.168147000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 07:15:53.168147
660	VoucherApplicableTargetView	32	create	\N	---\nid:\n- \n- 32\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.175215000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.175215000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-07 07:15:53.175215
661	VoucherApplicableTargetView	33	create	\N	---\nid:\n- \n- 33\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.181190000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.181190000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-07 07:15:53.18119
662	VoucherApplicableTargetView	34	create	\N	---\nid:\n- \n- 34\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.185447000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.185447000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-07 07:15:53.185447
663	VoucherApplicableTargetView	35	create	\N	---\nid:\n- \n- 35\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.189446000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.189446000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-07 07:15:53.189446
664	VoucherApplicableTargetView	36	create	\N	---\nid:\n- \n- 36\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.193511000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.193511000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 07:15:53.193511
665	VoucherApplicableTargetView	37	create	\N	---\nid:\n- \n- 37\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.197885000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.197885000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 07:15:53.197885
666	VoucherProduct	9	update	0qa(1)	---\nvoucher_sku_id:\n- 4\n- 13\nprice:\n- !ruby/object:BigDecimal 18:0.48e2\n- !ruby/object:BigDecimal 18:0.3e2\n	2022-09-07 07:17:07.381759
667	VoucherProduct	10	update	0qa(1)	---\nvoucher_sku_id:\n- 3\n- 9\nprice:\n- !ruby/object:BigDecimal 18:0.88e2\n- !ruby/object:BigDecimal 18:0.199e3\n	2022-09-07 07:18:01.936794
668	VoucherSkuView	8	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:00:39.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:00:39.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:18:42.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:18:42.000000000 Z\n	2022-09-07 07:18:42.839896
669	VoucherApplicableTargetView	38	create	\N	---\nid:\n- \n- 38\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:18:42.845902000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:18:42.845902000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 07:18:42.845902
670	VoucherApplicableTargetView	39	create	\N	---\nid:\n- \n- 39\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:18:42.851271000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:18:42.851271000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-07 07:18:42.851271
671	VoucherSkuView	9	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:55:17.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:55:17.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:19:32.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:19:32.000000000 Z\n	2022-09-07 07:19:32.088033
672	VoucherSkuView	5	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:59:21.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:59:21.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:21:51.000000000 Z\n  zone: *1\n  time: 2022-09-07 07:21:51.000000000 Z\n	2022-09-07 07:21:51.331266
673	VoucherApplicableTargetView	40	create	\N	---\nid:\n- \n- 40\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:21:51.343208000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:21:51.343208000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-07 07:21:51.343208
674	VoucherApplicableTargetView	41	create	\N	---\nid:\n- \n- 41\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:21:51.357079000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:21:51.357079000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-07 07:21:51.357079
675	PreferenceGroup	1	update	0qa(1)	---\nname:\n- '{"en":"Add Ice","zh-CN":"加冰"}'\n- '{"en":" Ice","zh-CN":"冰"}'\nmax_selection:\n- 0\n- 1\nname_en:\n- Add Ice\n- " Ice"\nname_zh_cn:\n- 加冰\n- 冰\n	2022-09-08 02:45:51.507702
676	PreferenceItem	22	create	0qa(1)	---\nid:\n- \n- 22\npreference_group_id:\n- \n- 1\nname:\n- \n- '{"en":"no ice","zh-CN":"不加冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:45:51.521055000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:45:51.521055000 Z\nname_en:\n- \n- no ice\nname_zh_cn:\n- \n- 不加冰\n	2022-09-08 02:45:51.521055
677	PreferenceItem	23	create	0qa(1)	---\nid:\n- \n- 23\npreference_group_id:\n- \n- 1\nname:\n- \n- '{"en":"add ice","zh-CN":"加冰"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:45:51.528210000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:45:51.528210000 Z\nname_en:\n- \n- add ice\nname_zh_cn:\n- \n- 加冰\n	2022-09-08 02:45:51.52821
678	SkuView	1	create	\N	---\nid:\n- \n- 1\nsku_id:\n- \n- 1\nmaster_sku_ref:\n- \n- SZ-GS-Kangaroo Doll-Br-S\nname:\n- \n- '{"en":"Brown Small Kangaroo Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:50:42.463519000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:50:42.463519000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:50:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:50:42.000000000 Z\nname_en:\n- \n- Brown Small Kangaroo Doll\n	2022-09-08 02:50:42.463519
679	Bundle	9	update	0qa(1)	---\nactive:\n- false\n- true\n	2022-09-08 02:51:12.969433
680	SkuView	1	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:50:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:50:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:51:48.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:51:48.000000000 Z\n	2022-09-08 02:51:48.356881
681	SkuView	2	create	\N	---\nid:\n- \n- 2\nsku_id:\n- \n- 14\nmaster_sku_ref:\n- \n- SZ-AMR-Hainan Chicken Rice\nname:\n- \n- '{"en":"Hainan Chicken Rice"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.708630000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.708630000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Hainan Chicken Rice\n	2022-09-08 02:52:13.70863
682	SkuView	3	create	\N	---\nid:\n- \n- 3\nsku_id:\n- \n- 35\nmaster_sku_ref:\n- \n- NS-GS-Lion Toy-S\nname:\n- \n- '{"en":"Small Lion Toy"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.726488000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.726488000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Small Lion Toy\n	2022-09-08 02:52:13.726488
683	SkuView	4	create	\N	---\nid:\n- \n- 4\nsku_id:\n- \n- 15\nmaster_sku_ref:\n- \n- SZ-AMR-Roast Chicken\nname:\n- \n- '{"en":"Roast Chicken"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.745690000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.745690000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Roast Chicken\n	2022-09-08 02:52:13.74569
684	SkuView	5	create	\N	---\nid:\n- \n- 5\nsku_id:\n- \n- 17\nmaster_sku_ref:\n- \n- SZ-AMR-Grape Guice\nname:\n- \n- '{"en":"Grape Guice"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.769156000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.769156000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Grape Guice\n	2022-09-08 02:52:13.769156
685	SkuView	6	create	\N	---\nid:\n- \n- 6\nsku_id:\n- \n- 16\nmaster_sku_ref:\n- \n- SZ-AMR-Grapefruit Guice\nname:\n- \n- '{"en":"Grapefruit Guice"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.802114000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.802114000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Grapefruit Guice\n	2022-09-08 02:52:13.802114
686	SkuView	7	create	\N	---\nid:\n- \n- 7\nsku_id:\n- \n- 2\nmaster_sku_ref:\n- \n- SZ-GS-Kangaroo Doll-Gr-L\nname:\n- \n- '{"en":"Grey Large Kangaroo Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.821446000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.821446000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Grey Large Kangaroo Doll\n	2022-09-08 02:52:13.821446
687	SkuView	8	create	\N	---\nid:\n- \n- 8\nsku_id:\n- \n- 18\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo T-Shirt-P-S\nname:\n- \n- '{"en":"Small Flamingo T-Shirt"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.827199000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.827199000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Small Flamingo T-Shirt\n	2022-09-08 02:52:13.827199
688	SkuView	9	create	\N	---\nid:\n- \n- 9\nsku_id:\n- \n- 19\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo T-Shirt-P-L\nname:\n- \n- '{"en":"Large Flamingo T-Shirt"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.841459000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.841459000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Large Flamingo T-Shirt\n	2022-09-08 02:52:13.841459
689	SkuView	10	create	\N	---\nid:\n- \n- 10\nsku_id:\n- \n- 4\nmaster_sku_ref:\n- \n- SZ-GS-Zebra Badge\nname:\n- \n- '{"en":"Zebra Badge"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.857399000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.857399000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Zebra Badge\n	2022-09-08 02:52:13.857399
690	SkuView	11	create	\N	---\nid:\n- \n- 11\nsku_id:\n- \n- 3\nmaster_sku_ref:\n- \n- SZ-GS-Giraffe Pillow-M\nname:\n- \n- '{"en":"Medium Giraffe Pillow"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.872698000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.872698000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Medium Giraffe Pillow\n	2022-09-08 02:52:13.872698
691	SkuView	12	create	\N	---\nid:\n- \n- 12\nsku_id:\n- \n- 5\nmaster_sku_ref:\n- \n- SZ-GS-Elephant Keychain\nname:\n- \n- '{"en":"Elephant Keychain"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.888132000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.888132000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Elephant Keychain\n	2022-09-08 02:52:13.888132
692	SkuView	13	create	\N	---\nid:\n- \n- 13\nsku_id:\n- \n- 49\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Bl\nname:\n- \n- '{"en":"Blue Otter Cup"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.903443000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.903443000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Blue Otter Cup\n	2022-09-08 02:52:13.903443
693	SkuView	14	create	\N	---\nid:\n- \n- 14\nsku_id:\n- \n- 47\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Gr\nname:\n- \n- '{"en":"Green Otter Cup"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.918955000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.918955000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Green Otter Cup\n	2022-09-08 02:52:13.918955
825	Image	128	create	0qa(1)	---\nid:\n- \n- 128\nimage:\n- \n- Kangaroo_Doll-_pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:55:06.343162000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:55:06.343162000 Z\n	2022-09-08 02:55:06.343162
694	SkuView	15	create	\N	---\nid:\n- \n- 15\nsku_id:\n- \n- 7\nmaster_sku_ref:\n- \n- SZ-KFC-Beef Hamburger-L\nname:\n- \n- '{"en":"Large Beef Burger"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.951844000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.951844000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Large Beef Burger\n	2022-09-08 02:52:13.951844
702	SkuView	23	create	\N	---\nid:\n- \n- 23\nsku_id:\n- \n- 21\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-S\nname:\n- \n- '{"en":"Small Penguin Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.074914000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.074914000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Penguin Doll\n	2022-09-08 02:52:14.074914
703	SkuView	24	create	\N	---\nid:\n- \n- 24\nsku_id:\n- \n- 22\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-M\nname:\n- \n- '{"en":"Medium Penguin Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.097977000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.097977000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Medium Penguin Doll\n	2022-09-08 02:52:14.097977
704	SkuView	25	create	\N	---\nid:\n- \n- 25\nsku_id:\n- \n- 23\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-L\nname:\n- \n- '{"en":"Large Penguin Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.117813000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.117813000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Penguin Doll\n	2022-09-08 02:52:14.117813
705	SkuView	26	create	\N	---\nid:\n- \n- 26\nsku_id:\n- \n- 24\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-B-L\nname:\n- \n- '{"en":"Large Blue Parrot Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.134254000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.134254000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Blue Parrot Doll\n	2022-09-08 02:52:14.134254
706	SkuView	27	create	\N	---\nid:\n- \n- 27\nsku_id:\n- \n- 25\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-R-M\nname:\n- \n- '{"en":"Medium Red Parrot Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.152714000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.152714000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Medium Red Parrot Doll\n	2022-09-08 02:52:14.152714
707	SkuView	28	create	\N	---\nid:\n- \n- 28\nsku_id:\n- \n- 26\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-W-S\nname:\n- \n- '{"en":"Small White Parrot Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.172878000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.172878000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small White Parrot Doll\n	2022-09-08 02:52:14.172878
708	SkuView	29	create	\N	---\nid:\n- \n- 29\nsku_id:\n- \n- 27\nmaster_sku_ref:\n- \n- BP-PH-Tomato Pasta\nname:\n- \n- '{"en":"Tomato Pasta"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.188913000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.188913000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Tomato Pasta\n	2022-09-08 02:52:14.188913
728	OutletView	2	create	\N	---\nid:\n- \n- 2\noutlet_id:\n- \n- 9\nmaster_outlet_ref:\n- \n- NS-F&B-UU\nname:\n- \n- '{"en":"Ulu Ulu Wild Restaurant"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.708534000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.708534000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.697357000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.697357000 Z\nname_en:\n- \n- Ulu Ulu Wild Restaurant\n	2022-09-08 02:52:51.708534
732	OutletView	5	create	\N	---\nid:\n- \n- 5\noutlet_id:\n- \n- 6\nmaster_outlet_ref:\n- \n- BP-Retail-GS\nname:\n- \n- '{"en":"Jurong Bird Park Gift Shop"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.759604000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.759604000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.750936000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.750936000 Z\nname_en:\n- \n- Jurong Bird Park Gift Shop\n	2022-09-08 02:52:51.759604
734	OutletView	7	create	\N	---\nid:\n- \n- 7\noutlet_id:\n- \n- 5\nmaster_outlet_ref:\n- \n- 'SZ-F&B- Restaurant '\nname:\n- \n- '{"en":"Ah Meng Restaurant"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.786322000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.786322000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.779960000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.779960000 Z\nname_en:\n- \n- Ah Meng Restaurant\n	2022-09-08 02:52:51.786322
861	Product	29	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.24e2\n- !ruby/object:BigDecimal 27:0.189e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.189e3\n- !ruby/object:BigDecimal 18:0.24e2\n	2022-09-08 03:57:09.042339
695	SkuView	16	create	\N	---\nid:\n- \n- 16\nsku_id:\n- \n- 8\nmaster_sku_ref:\n- \n- SZ-KFC-Beef Hamburger-S\nname:\n- \n- '{"en":"Small Beef Burger"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.964066000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.964066000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Small Beef Burger\n	2022-09-08 02:52:13.964066
696	SkuView	17	create	\N	---\nid:\n- \n- 17\nsku_id:\n- \n- 20\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo Water Cup\nname:\n- \n- '{"en":"Flamingo Water Cup"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.979888000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.979888000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Flamingo Water Cup\n	2022-09-08 02:52:13.979888
697	SkuView	18	create	\N	---\nid:\n- \n- 18\nsku_id:\n- \n- 10\nmaster_sku_ref:\n- \n- SZ-KFC-Coke-S\nname:\n- \n- '{"en":"Small Coke"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.998432000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.998432000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Small Coke\n	2022-09-08 02:52:13.998432
698	SkuView	19	create	\N	---\nid:\n- \n- 19\nsku_id:\n- \n- 11\nmaster_sku_ref:\n- \n- SZ-GS- Fries-L\nname:\n- \n- '{"en":"Large Fries"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.015305000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.015305000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:13.000000000 Z\nname_en:\n- \n- Large Fries\n	2022-09-08 02:52:14.015305
699	SkuView	20	create	\N	---\nid:\n- \n- 20\nsku_id:\n- \n- 9\nmaster_sku_ref:\n- \n- SZ-KFC-Coke-L\nname:\n- \n- '{"en":"Large Coke"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.032363000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.032363000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Coke\n	2022-09-08 02:52:14.032363
700	SkuView	21	create	\N	---\nid:\n- \n- 21\nsku_id:\n- \n- 12\nmaster_sku_ref:\n- \n- SZ-KFC-Fries-S\nname:\n- \n- '{"en":"Small Fries-"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.046163000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.046163000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Fries-\n	2022-09-08 02:52:14.046163
701	SkuView	22	create	\N	---\nid:\n- \n- 22\nsku_id:\n- \n- 13\nmaster_sku_ref:\n- \n- SZ-AMR- Indian Turmeric Rice\nname:\n- \n- '{"en":"Indian Turmeric Rice"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.063973000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.063973000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Indian Turmeric Rice\n	2022-09-08 02:52:14.063973
709	SkuView	30	create	\N	---\nid:\n- \n- 30\nsku_id:\n- \n- 46\nmaster_sku_ref:\n- \n- RW-GS-Otter Doll-L\nname:\n- \n- '{"en":"Large Otter Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.202708000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.202708000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Otter Doll\n	2022-09-08 02:52:14.202708
710	SkuView	31	create	\N	---\nid:\n- \n- 31\nsku_id:\n- \n- 45\nmaster_sku_ref:\n- \n- RW-GS-Otter Doll-S\nname:\n- \n- '{"en":"Small Otter Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.221667000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.221667000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Otter Doll\n	2022-09-08 02:52:14.221667
711	SkuView	32	create	\N	---\nid:\n- \n- 32\nsku_id:\n- \n- 44\nmaster_sku_ref:\n- \n- RW-GS-Panda Hat\nname:\n- \n- '{"en":"Panda Hat"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.254840000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.254840000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Panda Hat\n	2022-09-08 02:52:14.25484
712	SkuView	33	create	\N	---\nid:\n- \n- 33\nsku_id:\n- \n- 43\nmaster_sku_ref:\n- \n- RW-GS-Panda Doll-L\nname:\n- \n- '{"en":"Large Panda Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.272819000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.272819000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Panda Doll\n	2022-09-08 02:52:14.272819
862	Image	132	create	0qa(1)	---\nid:\n- \n- 132\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:45.637567000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:45.637567000 Z\n	2022-09-08 03:57:45.637567
1712	ProductSku	24	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-W-S\n	2022-09-13 03:59:08.722599
713	SkuView	34	create	\N	---\nid:\n- \n- 34\nsku_id:\n- \n- 42\nmaster_sku_ref:\n- \n- RW-GS-Panda Doll-S\nname:\n- \n- '{"en":"Small Panda Doll"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.289171000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.289171000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Panda Doll\n	2022-09-08 02:52:14.289171
714	SkuView	35	create	\N	---\nid:\n- \n- 35\nsku_id:\n- \n- 41\nmaster_sku_ref:\n- \n- NS-UUR-Red Bean Ice\nname:\n- \n- '{"en":"Red Bean Ice"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.358339000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.358339000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Red Bean Ice\n	2022-09-08 02:52:14.358339
715	SkuView	36	create	\N	---\nid:\n- \n- 36\nsku_id:\n- \n- 40\nmaster_sku_ref:\n- \n- NS-UUR-Curry Chicken Rices-L\nname:\n- \n- '{"en":"Large Curry Chicken Rices"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.371985000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.371985000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Curry Chicken Rices\n	2022-09-08 02:52:14.371985
716	SkuView	37	create	\N	---\nid:\n- \n- 37\nsku_id:\n- \n- 39\nmaster_sku_ref:\n- \n- " NS-UUR-Curry Chicken Rices-S"\nname:\n- \n- '{"en":"Small Curry Chicken Rices"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.388789000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.388789000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Curry Chicken Rices\n	2022-09-08 02:52:14.388789
717	SkuView	38	create	\N	---\nid:\n- \n- 38\nsku_id:\n- \n- 37\nmaster_sku_ref:\n- \n- NS-UUR-Indian Pilaf\nname:\n- \n- '{"en":"Indian Pilaf"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.404304000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.404304000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Indian Pilaf\n	2022-09-08 02:52:14.404304
718	SkuView	39	create	\N	---\nid:\n- \n- 39\nsku_id:\n- \n- 38\nmaster_sku_ref:\n- \n- NS-UUR-Indian Pancakes\nname:\n- \n- '{"en":"Indian Pancakes"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.430782000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.430782000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Indian Pancakes\n	2022-09-08 02:52:14.430782
719	SkuView	40	create	\N	---\nid:\n- \n- 40\nsku_id:\n- \n- 36\nmaster_sku_ref:\n- \n- " NS-GS-Lion Toy-M"\nname:\n- \n- '{"en":"Medium Lion Toy"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.452960000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.452960000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Medium Lion Toy\n	2022-09-08 02:52:14.45296
720	SkuView	41	create	\N	---\nid:\n- \n- 41\nsku_id:\n- \n- 34\nmaster_sku_ref:\n- \n- NS-GS-Lion Toy-L\nname:\n- \n- '{"en":"Large Lion Toy"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.470489000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.470489000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Lion Toy\n	2022-09-08 02:52:14.470489
721	SkuView	42	create	\N	---\nid:\n- \n- 42\nsku_id:\n- \n- 33\nmaster_sku_ref:\n- \n- BP-PH-Black Pepper Steak\nname:\n- \n- '{"en":"Black Pepper Steak"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.491504000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.491504000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Black Pepper Steak\n	2022-09-08 02:52:14.491504
722	SkuView	43	create	\N	---\nid:\n- \n- 43\nsku_id:\n- \n- 32\nmaster_sku_ref:\n- \n- BP-PH-Seafood Pizza-L\nname:\n- \n- '{"en":"Large Seafood Pizza"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.510898000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.510898000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Seafood Pizza\n	2022-09-08 02:52:14.510898
723	SkuView	44	create	\N	---\nid:\n- \n- 44\nsku_id:\n- \n- 31\nmaster_sku_ref:\n- \n- BP-PH-Seafood Pizza-S\nname:\n- \n- '{"en":"Small Seafood Pizza"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.539382000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.539382000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Seafood Pizza\n	2022-09-08 02:52:14.539382
1299	Image	177	create	0qa(1)	---\nid:\n- \n- 177\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- 2022-09-08 09:57:12.457626000 Z\n	2022-09-08 09:57:12.457626
1704	ProductSku	17	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo T-Shirt-P-L\n	2022-09-13 03:55:37.413209
724	SkuView	45	create	\N	---\nid:\n- \n- 45\nsku_id:\n- \n- 30\nmaster_sku_ref:\n- \n- BP-PH-Durian Pizza-L\nname:\n- \n- '{"en":"Large Durian Pizza"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.557685000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.557685000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Large Durian Pizza\n	2022-09-08 02:52:14.557685
725	SkuView	46	create	\N	---\nid:\n- \n- 46\nsku_id:\n- \n- 29\nmaster_sku_ref:\n- \n- BP-PH-Durian Pizza-S\nname:\n- \n- '{"en":"Small Durian Pizza"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.596710000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.596710000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Small Durian Pizza\n	2022-09-08 02:52:14.59671
726	SkuView	47	create	\N	---\nid:\n- \n- 47\nsku_id:\n- \n- 28\nmaster_sku_ref:\n- \n- BP-PH-Vanilla Anchovy Shrimp\nname:\n- \n- '{"en":"Vanilla Anchovy Shrimp"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.614114000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.614114000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\nname_en:\n- \n- Vanilla Anchovy Shrimp\n	2022-09-08 02:52:14.614114
727	SkuView	1	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:51:48.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:51:48.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:52:14.000000000 Z\n	2022-09-08 02:52:14.646069
729	OutletView	1	create	\N	---\nid:\n- \n- 1\noutlet_id:\n- \n- 10\nmaster_outlet_ref:\n- \n- RW-Retail-GS\nname:\n- \n- '{"en":"Rriver Wonders Gift Shop"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.704364000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.704364000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.682814000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.682814000 Z\nname_en:\n- \n- Rriver Wonders Gift Shop\n	2022-09-08 02:52:51.704364
731	OutletView	4	create	\N	---\nid:\n- \n- 4\noutlet_id:\n- \n- 7\nmaster_outlet_ref:\n- \n- BP-F&B-PH\nname:\n- \n- '{"en":"Pizza Hut"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.743773000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.743773000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.736726000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.736726000 Z\nname_en:\n- \n- Pizza Hut\n	2022-09-08 02:52:51.743773
733	OutletView	6	create	\N	---\nid:\n- \n- 6\noutlet_id:\n- \n- 4\nmaster_outlet_ref:\n- \n- 'SZ-F&B-Restaurant '\nname:\n- \n- '{"en":"KFC"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.775096000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.775096000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.770155000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.770155000 Z\nname_en:\n- \n- KFC\n	2022-09-08 02:52:51.775096
736	VoucherSkuView	4	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:00:59.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:00:59.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.74872
738	VoucherApplicableTargetView	42	create	\N	---\nid:\n- \n- 42\nvoucher_sku_id:\n- \n- 3\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.762728000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.762728000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-08 02:53:19.762728
743	VoucherSkuView	8	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:18:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:18:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.841199
745	VoucherApplicableTargetView	47	create	\N	---\nid:\n- \n- 47\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.885826000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.885826000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-08 02:53:19.885826
748	VoucherApplicableTargetView	48	create	\N	---\nid:\n- \n- 48\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.915437000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.915437000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-08 02:53:19.915437
752	VoucherApplicableTargetView	51	create	\N	---\nid:\n- \n- 51\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.948611000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.948611000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-08 02:53:19.948611
754	VoucherApplicableTargetView	54	create	\N	---\nid:\n- \n- 54\nvoucher_sku_id:\n- \n- 9\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.959826000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.959826000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-08 02:53:19.959826
730	OutletView	3	create	\N	---\nid:\n- \n- 3\noutlet_id:\n- \n- 8\nmaster_outlet_ref:\n- \n- NS-Retail-GS\nname:\n- \n- '{"en":"Night Safari Gift Shop"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.731311000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.731311000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.722257000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.722257000 Z\nname_en:\n- \n- Night Safari Gift Shop\n	2022-09-08 02:52:51.731311
741	VoucherSkuView	1	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:01:16.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:01:16.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.832771
742	VoucherApplicableTargetView	45	create	\N	---\nid:\n- \n- 45\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.853604000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.853604000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-08 02:53:19.853604
744	VoucherApplicableTargetView	46	create	\N	---\nid:\n- \n- 46\nvoucher_sku_id:\n- \n- 1\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.877795000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.877795000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-08 02:53:19.877795
755	VoucherSkuView	10	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:02:53.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:02:53.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.993933
758	VoucherApplicableTargetView	56	create	\N	---\nid:\n- \n- 56\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.008717000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.008717000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-08 02:53:20.008717
761	VoucherApplicableTargetView	58	create	\N	---\nid:\n- \n- 58\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.024156000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.024156000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-08 02:53:20.024156
764	VoucherApplicableTargetView	60	create	\N	---\nid:\n- \n- 60\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.046829000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.046829000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-08 02:53:20.046829
767	VoucherApplicableTargetView	63	create	\N	---\nid:\n- \n- 63\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.058421000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.058421000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-08 02:53:20.058421
769	VoucherApplicableTargetView	65	create	\N	---\nid:\n- \n- 65\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.064107000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.064107000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-08 02:53:20.064107
771	VoucherApplicableTargetView	67	create	\N	---\nid:\n- \n- 67\nvoucher_sku_id:\n- \n- 12\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.070677000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.070677000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-08 02:53:20.070677
791	OutletSkuView	16	create	\N	---\nid:\n- \n- 16\noutlet_sku_id:\n- \n- 17\nquantity:\n- \n- 500\nsku_id:\n- \n- 18\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.647693000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.647693000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.647693
792	OutletSkuView	17	create	\N	---\nid:\n- \n- 17\noutlet_sku_id:\n- \n- 18\nquantity:\n- \n- 500\nsku_id:\n- \n- 19\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.661777000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.661777000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.661777
793	OutletSkuView	18	create	\N	---\nid:\n- \n- 18\noutlet_sku_id:\n- \n- 19\nquantity:\n- \n- 100\nsku_id:\n- \n- 20\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.680203000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.680203000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.680203
865	ChannelSellable	128	create	0qa(1)	---\nid:\n- \n- 128\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 38\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.292354000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.292354000 Z\n	2022-09-08 03:57:56.292354
1710	ProductSku	22	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-B-L\n	2022-09-13 03:59:08.678738
735	OutletView	8	create	\N	---\nid:\n- \n- 8\noutlet_id:\n- \n- 3\nmaster_outlet_ref:\n- \n- SZ-Retail-GS\nname:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.802955000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.802955000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.797799000 Z\n  zone: *1\n  time: 2022-09-08 02:52:51.797799000 Z\nname_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-08 02:52:51.802955
737	VoucherSkuView	3	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 03:25:00.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 03:25:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.755248
739	VoucherApplicableTargetView	43	create	\N	---\nid:\n- \n- 43\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.779887000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.779887000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-08 02:53:19.779887
740	VoucherApplicableTargetView	44	create	\N	---\nid:\n- \n- 44\nvoucher_sku_id:\n- \n- 2\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.788453000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.788453000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-08 02:53:19.788453
746	VoucherSkuView	5	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:21:51.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:21:51.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.904583
747	VoucherSkuView	7	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 06:45:50.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 06:45:50.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.909329
749	VoucherApplicableTargetView	49	create	\N	---\nid:\n- \n- 49\nvoucher_sku_id:\n- \n- 7\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.937801000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.937801000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-08 02:53:19.937801
750	VoucherApplicableTargetView	50	create	\N	---\nid:\n- \n- 50\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.942562000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.942562000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-08 02:53:19.942562
751	VoucherApplicableTargetView	52	create	\N	---\nid:\n- \n- 52\nvoucher_sku_id:\n- \n- 7\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.949706000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.949706000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-08 02:53:19.949706
753	VoucherApplicableTargetView	53	create	\N	---\nid:\n- \n- 53\nvoucher_sku_id:\n- \n- 4\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.952023000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:19.952023000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-08 02:53:19.952023
756	VoucherSkuView	9	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:19:32.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:19:32.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:19.986597
757	VoucherApplicableTargetView	55	create	\N	---\nid:\n- \n- 55\nvoucher_sku_id:\n- \n- 8\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.003413000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.003413000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-08 02:53:20.003413
759	VoucherApplicableTargetView	57	create	\N	---\nid:\n- \n- 57\nvoucher_sku_id:\n- \n- 8\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.011103000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.011103000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-08 02:53:20.011103
760	VoucherSkuView	6	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:09:10.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:09:10.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:20.016986
762	VoucherApplicableTargetView	59	create	\N	---\nid:\n- \n- 59\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.039774000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.039774000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-08 02:53:20.039774
763	VoucherSkuView	11	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-07 07:15:53.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-07 07:15:53.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:19.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:53:19.000000000 Z\n	2022-09-08 02:53:20.038361
1300	Image	178	create	0qa(1)	---\nid:\n- \n- 178\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- 2022-09-08 09:57:22.635151000 Z\n	2022-09-08 09:57:22.635151
765	VoucherApplicableTargetView	61	create	\N	---\nid:\n- \n- 61\nvoucher_sku_id:\n- \n- 6\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.048004000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.048004000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-08 02:53:20.048004
1301	Product	69	create	0qa(1)	---\nid:\n- \n- 69\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":" Kangaroo Doll","zh-CN":"袋鼠玩偶"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- 50\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- 2022-09-08 09:57:31.355105000 Z\nname_en:\n- \n- " Kangaroo Doll"\nname_zh_cn:\n- \n- 袋鼠玩偶\n	2022-09-08 09:57:31.355105
1302	ChannelSellable	230	create	0qa(1)	---\nid:\n- \n- 230\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 69\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:57:31.367525000 Z\n	2022-09-08 09:57:31.367525
1303	ChannelSellable	231	create	0qa(1)	---\nid:\n- \n- 231\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 69\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:57:31.374642000 Z\n	2022-09-08 09:57:31.374642
1304	ChannelSellable	232	create	0qa(1)	---\nid:\n- \n- 232\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 69\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:57:31.382499000 Z\n	2022-09-08 09:57:31.382499
1305	ChannelSellable	233	create	0qa(1)	---\nid:\n- \n- 233\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 69\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:57:31.390096000 Z\n	2022-09-08 09:57:31.390096
1306	ChannelSellable	234	create	0qa(1)	---\nid:\n- \n- 234\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 69\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 09:57:31.397295000 Z\n	2022-09-08 09:57:31.397295
1307	CustomAttribute	12	create	0qa(1)	---\nid:\n- \n- 12\nattributable_id:\n- \n- 69\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\nvalue:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- 2022-09-08 09:57:31.406339000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\nvalue_en:\n- \n- small\nvalue_zh_cn:\n- \n- 小号\n	2022-09-08 09:57:31.406339
1308	CustomAttribute	13	create	0qa(1)	---\nid:\n- \n- 13\nattributable_id:\n- \n- 69\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"gery","zh-CN":"灰色"}'\nvalue:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- 2022-09-08 09:57:31.415356000 Z\nname_en:\n- \n- gery\nname_zh_cn:\n- \n- 灰色\nvalue_en:\n- \n- large\nvalue_zh_cn:\n- \n- 大号\n	2022-09-08 09:57:31.415356
1309	Variation	62	create	0qa(1)	---\nid:\n- \n- 62\nproduct_id:\n- \n- 69\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- 2022-09-08 09:57:31.423439000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-08 09:57:31.423439
1310	Variant	97	create	0qa(1)	---\nid:\n- \n- 97\nvariation_id:\n- \n- 62\nname:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- 2022-09-08 09:57:31.430273000 Z\nname_en:\n- \n- small\nname_zh_cn:\n- \n- 小号\n	2022-09-08 09:57:31.430273
1311	Variant	98	create	0qa(1)	---\nid:\n- \n- 98\nvariation_id:\n- \n- 62\nname:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- 2022-09-08 09:57:31.436307000 Z\nname_en:\n- \n- large\nname_zh_cn:\n- \n- 大号\n	2022-09-08 09:57:31.436307
1312	Variation	63	create	0qa(1)	---\nid:\n- \n- 63\nproduct_id:\n- \n- 69\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- 2022-09-08 09:57:31.443500000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-08 09:57:31.4435
1313	Variant	99	create	0qa(1)	---\nid:\n- \n- 99\nvariation_id:\n- \n- 63\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\ncreated_at:\n- \n- 2022-09-08 09:57:31.452691000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\n	2022-09-08 09:57:31.452691
1314	Variant	100	create	0qa(1)	---\nid:\n- \n- 100\nvariation_id:\n- \n- 63\nname:\n- \n- '{"en":"grey","zh-CN":"灰色"}'\ncreated_at:\n- \n- 2022-09-08 09:57:31.463458000 Z\nname_en:\n- \n- grey\nname_zh_cn:\n- \n- 灰色\n	2022-09-08 09:57:31.463458
1315	ProductSku	64	create	0qa(1)	---\nid:\n- \n- 64\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 97\n  - 99\nproduct_id:\n- \n- 69\ncreated_at:\n- \n- 2022-09-08 09:57:31.474063000 Z\n	2022-09-08 09:57:31.474063
1316	Product	69	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 09:57:31.485208
1317	ProductSku	65	create	0qa(1)	---\nid:\n- \n- 65\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nvariant_ids:\n- []\n- - 98\n  - 100\nproduct_id:\n- \n- 69\ncreated_at:\n- \n- 2022-09-08 09:57:31.495861000 Z\n	2022-09-08 09:57:31.495861
1318	Product	69	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 09:57:31.504688
1319	Image	179	create	0qa(1)	---\nid:\n- \n- 179\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 10:01:02.708351000 Z\n	2022-09-08 10:01:02.708351
1320	ProductSku	66	create	0qa(1)	---\nid:\n- \n- 66\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 51\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 97\n  - 100\nproduct_id:\n- \n- 69\ncreated_at:\n- \n- 2022-09-08 10:01:04.888840000 Z\n	2022-09-08 10:01:04.88884
1321	Product	69	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 10:01:04.897392
1322	Image	180	create	0qa(1)	---\nid:\n- \n- 180\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 10:06:41.487336000 Z\n	2022-09-08 10:06:41.487336
1323	ProductSku	67	create	0qa(1)	---\nid:\n- \n- 67\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nvariant_ids:\n- []\n- - 98\n  - 99\nproduct_id:\n- \n- 69\ncreated_at:\n- \n- 2022-09-08 10:06:45.241725000 Z\n	2022-09-08 10:06:45.241725
1324	Product	69	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-08 10:01:04.897392
1325	Image	181	create	0qa(1)	---\nid:\n- \n- 181\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 10:09:19.892062000 Z\n	2022-09-08 10:09:19.892062
1326	Image	182	create	0qa(1)	---\nid:\n- \n- 182\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- 2022-09-08 10:09:25.697219000 Z\n	2022-09-08 10:09:25.697219
1327	Product	70	create	0qa(1)	---\nid:\n- \n- 70\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- 2022-09-08 10:09:31.700909000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 10:09:31.700909
1328	ChannelSellable	235	create	0qa(1)	---\nid:\n- \n- 235\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 70\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 10:09:31.708963000 Z\n	2022-09-08 10:09:31.708963
1329	ChannelSellable	236	create	0qa(1)	---\nid:\n- \n- 236\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 70\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 10:09:31.714674000 Z\n	2022-09-08 10:09:31.714674
766	VoucherApplicableTargetView	62	create	\N	---\nid:\n- \n- 62\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.053282000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.053282000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-08 02:53:20.053282
768	VoucherApplicableTargetView	64	create	\N	---\nid:\n- \n- 64\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.062714000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.062714000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-08 02:53:20.062714
770	VoucherApplicableTargetView	66	create	\N	---\nid:\n- \n- 66\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.069509000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.069509000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-08 02:53:20.069509
772	VoucherApplicableTargetView	68	create	\N	---\nid:\n- \n- 68\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.075829000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.075829000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-08 02:53:20.075829
773	VoucherApplicableTargetView	69	create	\N	---\nid:\n- \n- 69\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.080040000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.080040000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-08 02:53:20.08004
774	VoucherApplicableTargetView	70	create	\N	---\nid:\n- \n- 70\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.084445000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.084445000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-08 02:53:20.084445
775	VoucherApplicableTargetView	71	create	\N	---\nid:\n- \n- 71\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:53:20.088876000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:53:20.088876000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-08 02:53:20.088876
776	OutletSkuView	1	create	\N	---\nid:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nquantity:\n- \n- 1000\nsku_id:\n- \n- 2\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.366657000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.366657000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.366657
777	OutletSkuView	2	create	\N	---\nid:\n- \n- 2\noutlet_sku_id:\n- \n- 3\nquantity:\n- \n- 500\nsku_id:\n- \n- 3\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.381231000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.381231000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.381231
778	OutletSkuView	3	create	\N	---\nid:\n- \n- 3\noutlet_sku_id:\n- \n- 4\nquantity:\n- \n- 2000\nsku_id:\n- \n- 4\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.397345000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.397345000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.397345
779	OutletSkuView	4	create	\N	---\nid:\n- \n- 4\noutlet_sku_id:\n- \n- 5\nquantity:\n- \n- 2000\nsku_id:\n- \n- 5\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.416528000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.416528000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.416528
780	OutletSkuView	5	create	\N	---\nid:\n- \n- 5\noutlet_sku_id:\n- \n- 6\nquantity:\n- \n- 200\nsku_id:\n- \n- 7\noutlet_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.431354000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.431354000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.431354
781	OutletSkuView	6	create	\N	---\nid:\n- \n- 6\noutlet_sku_id:\n- \n- 7\nquantity:\n- \n- 200\nsku_id:\n- \n- 8\noutlet_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.456220000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.456220000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.45622
863	Product	38	create	0qa(1)	---\nid:\n- \n- 38\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"hat2","zh-CN":"hat"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- 1\nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.264523000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.264523000 Z\nname_en:\n- \n- hat2\nname_zh_cn:\n- \n- hat\n	2022-09-08 03:57:56.264523
782	OutletSkuView	7	create	\N	---\nid:\n- \n- 7\noutlet_sku_id:\n- \n- 8\nquantity:\n- \n- 1000\nsku_id:\n- \n- 9\noutlet_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.483877000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.483877000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.483877
783	OutletSkuView	8	create	\N	---\nid:\n- \n- 8\noutlet_sku_id:\n- \n- 9\nquantity:\n- \n- 500\nsku_id:\n- \n- 10\noutlet_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.503435000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.503435000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.503435
784	OutletSkuView	9	create	\N	---\nid:\n- \n- 9\noutlet_sku_id:\n- \n- 10\nquantity:\n- \n- 500\nsku_id:\n- \n- 11\noutlet_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.527357000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.527357000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.527357
785	OutletSkuView	10	create	\N	---\nid:\n- \n- 10\noutlet_sku_id:\n- \n- 11\nquantity:\n- \n- 200\nsku_id:\n- \n- 12\noutlet_id:\n- \n- 4\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.543169000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.543169000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.543169
786	OutletSkuView	11	create	\N	---\nid:\n- \n- 11\noutlet_sku_id:\n- \n- 12\nquantity:\n- \n- 100\nsku_id:\n- \n- 13\noutlet_id:\n- \n- 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.565411000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.565411000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.565411
787	OutletSkuView	12	create	\N	---\nid:\n- \n- 12\noutlet_sku_id:\n- \n- 13\nquantity:\n- \n- 100\nsku_id:\n- \n- 14\noutlet_id:\n- \n- 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.584146000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.584146000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.584146
788	OutletSkuView	13	create	\N	---\nid:\n- \n- 13\noutlet_sku_id:\n- \n- 14\nquantity:\n- \n- 50\nsku_id:\n- \n- 15\noutlet_id:\n- \n- 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.601663000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.601663000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.601663
789	OutletSkuView	14	create	\N	---\nid:\n- \n- 14\noutlet_sku_id:\n- \n- 15\nquantity:\n- \n- 50\nsku_id:\n- \n- 16\noutlet_id:\n- \n- 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.617874000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.617874000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.617874
790	OutletSkuView	15	create	\N	---\nid:\n- \n- 15\noutlet_sku_id:\n- \n- 16\nquantity:\n- \n- 50\nsku_id:\n- \n- 17\noutlet_id:\n- \n- 5\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.633374000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.633374000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.633374
802	OutletSkuView	27	create	\N	---\nid:\n- \n- 27\noutlet_sku_id:\n- \n- 28\nquantity:\n- \n- 50\nsku_id:\n- \n- 29\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.847419000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.847419000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.847419
808	OutletSkuView	33	create	\N	---\nid:\n- \n- 33\noutlet_sku_id:\n- \n- 34\nquantity:\n- \n- 100\nsku_id:\n- \n- 35\noutlet_id:\n- \n- 8\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.998758000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.998758000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.998758
809	OutletSkuView	34	create	\N	---\nid:\n- \n- 34\noutlet_sku_id:\n- \n- 35\nquantity:\n- \n- 50\nsku_id:\n- \n- 36\noutlet_id:\n- \n- 8\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.015425000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.015425000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:42.015425
1330	ChannelSellable	237	create	0qa(1)	---\nid:\n- \n- 237\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 70\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 10:09:31.720404000 Z\n	2022-09-08 10:09:31.720404
794	OutletSkuView	19	create	\N	---\nid:\n- \n- 19\noutlet_sku_id:\n- \n- 20\nquantity:\n- \n- 100\nsku_id:\n- \n- 21\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.694019000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.694019000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.694019
795	OutletSkuView	20	create	\N	---\nid:\n- \n- 20\noutlet_sku_id:\n- \n- 21\nquantity:\n- \n- 100\nsku_id:\n- \n- 22\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.708847000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.708847000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.708847
796	OutletSkuView	21	create	\N	---\nid:\n- \n- 21\noutlet_sku_id:\n- \n- 22\nquantity:\n- \n- 100\nsku_id:\n- \n- 23\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.722957000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.722957000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.722957
797	OutletSkuView	22	create	\N	---\nid:\n- \n- 22\noutlet_sku_id:\n- \n- 23\nquantity:\n- \n- 50\nsku_id:\n- \n- 24\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.748311000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.748311000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.748311
798	OutletSkuView	23	create	\N	---\nid:\n- \n- 23\noutlet_sku_id:\n- \n- 24\nquantity:\n- \n- 50\nsku_id:\n- \n- 25\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.766722000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.766722000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.766722
799	OutletSkuView	24	create	\N	---\nid:\n- \n- 24\noutlet_sku_id:\n- \n- 25\nquantity:\n- \n- 50\nsku_id:\n- \n- 26\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.794603000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.794603000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.794603
800	OutletSkuView	25	create	\N	---\nid:\n- \n- 25\noutlet_sku_id:\n- \n- 26\nquantity:\n- \n- 100\nsku_id:\n- \n- 27\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.809512000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.809512000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.809512
801	OutletSkuView	26	create	\N	---\nid:\n- \n- 26\noutlet_sku_id:\n- \n- 27\nquantity:\n- \n- 50\nsku_id:\n- \n- 28\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.828572000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.828572000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.828572
803	OutletSkuView	28	create	\N	---\nid:\n- \n- 28\noutlet_sku_id:\n- \n- 29\nquantity:\n- \n- 50\nsku_id:\n- \n- 30\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.861881000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.861881000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.861881
804	OutletSkuView	29	create	\N	---\nid:\n- \n- 29\noutlet_sku_id:\n- \n- 30\nquantity:\n- \n- 100\nsku_id:\n- \n- 31\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.879270000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.879270000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.87927
805	OutletSkuView	30	create	\N	---\nid:\n- \n- 30\noutlet_sku_id:\n- \n- 31\nquantity:\n- \n- 50\nsku_id:\n- \n- 32\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.937126000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.937126000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.937126
806	OutletSkuView	31	create	\N	---\nid:\n- \n- 31\noutlet_sku_id:\n- \n- 32\nquantity:\n- \n- 100\nsku_id:\n- \n- 33\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.962586000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.962586000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.962586
1331	ChannelSellable	238	create	0qa(1)	---\nid:\n- \n- 238\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 70\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 10:09:31.726342000 Z\n	2022-09-08 10:09:31.726342
807	OutletSkuView	32	create	\N	---\nid:\n- \n- 32\noutlet_sku_id:\n- \n- 33\nquantity:\n- \n- 100\nsku_id:\n- \n- 34\noutlet_id:\n- \n- 8\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.985953000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.985953000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:41.000000000 Z\n	2022-09-08 02:54:41.985953
1332	ChannelSellable	239	create	0qa(1)	---\nid:\n- \n- 239\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 70\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-08 10:09:31.733223000 Z\n	2022-09-08 10:09:31.733223
1333	CustomAttribute	14	create	0qa(1)	---\nid:\n- \n- 14\nattributable_id:\n- \n- 70\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"gery","zh-CN":"灰色"}'\nvalue:\n- \n- '{"en":"large","zh-CN":"大号"}'\ncreated_at:\n- \n- 2022-09-08 10:09:31.741352000 Z\nname_en:\n- \n- gery\nname_zh_cn:\n- \n- 灰色\nvalue_en:\n- \n- large\nvalue_zh_cn:\n- \n- 大号\n	2022-09-08 10:09:31.741352
1334	CustomAttribute	15	create	0qa(1)	---\nid:\n- \n- 15\nattributable_id:\n- \n- 70\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"brown","zh-CN":"棕色"}'\nvalue:\n- \n- '{"en":"small","zh-CN":"小号"}'\ncreated_at:\n- \n- 2022-09-08 10:09:31.748853000 Z\nname_en:\n- \n- brown\nname_zh_cn:\n- \n- 棕色\nvalue_en:\n- \n- small\nvalue_zh_cn:\n- \n- 小号\n	2022-09-08 10:09:31.748853
1335	Variation	64	create	0qa(1)	---\nid:\n- \n- 64\nproduct_id:\n- \n- 70\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- 2022-09-08 10:09:31.755720000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 10:09:31.75572
1336	Variant	101	create	0qa(1)	---\nid:\n- \n- 101\nvariation_id:\n- \n- 64\nname:\n- \n- '{"en":"2","zh-CN":"2"}'\ncreated_at:\n- \n- 2022-09-08 10:09:31.762099000 Z\nname_en:\n- \n- '2'\nname_zh_cn:\n- \n- '2'\n	2022-09-08 10:09:31.762099
1337	Variant	102	create	0qa(1)	---\nid:\n- \n- 102\nvariation_id:\n- \n- 64\nname:\n- \n- '{"en":"3","zh-CN":"3"}'\ncreated_at:\n- \n- 2022-09-08 10:09:31.767697000 Z\nname_en:\n- \n- '3'\nname_zh_cn:\n- \n- '3'\n	2022-09-08 10:09:31.767697
1338	Variation	65	create	0qa(1)	---\nid:\n- \n- 65\nproduct_id:\n- \n- 70\nname:\n- \n- '{"en":"4","zh-CN":"4"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- 2022-09-08 10:09:31.773117000 Z\nname_en:\n- \n- '4'\nname_zh_cn:\n- \n- '4'\n	2022-09-08 10:09:31.773117
1339	Variant	103	create	0qa(1)	---\nid:\n- \n- 103\nvariation_id:\n- \n- 65\nname:\n- \n- '{"en":"5","zh-CN":"5"}'\ncreated_at:\n- \n- 2022-09-08 10:09:31.779326000 Z\nname_en:\n- \n- '5'\nname_zh_cn:\n- \n- '5'\n	2022-09-08 10:09:31.779326
1340	Variant	104	create	0qa(1)	---\nid:\n- \n- 104\nvariation_id:\n- \n- 65\nname:\n- \n- '{"en":"6","zh-CN":"6"}'\ncreated_at:\n- \n- 2022-09-08 10:09:31.785426000 Z\nname_en:\n- \n- '6'\nname_zh_cn:\n- \n- '6'\n	2022-09-08 10:09:31.785426
1341	ProductSku	68	create	0qa(1)	---\nid:\n- \n- 68\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nvariant_ids:\n- []\n- - 101\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-08 10:09:31.795477000 Z\n	2022-09-08 10:09:31.795477
1342	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 10:09:31.804876
1343	ProductSku	69	create	0qa(1)	---\nid:\n- \n- 69\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 102\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-08 10:09:31.814880000 Z\n	2022-09-08 10:09:31.81488
1344	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-08 10:09:31.830207
1551	Variation	79	create	0qa(1)	---\nid:\n- \n- 79\nproduct_id:\n- \n- 12\nname:\n- \n- '{"en":"Cup Size","zh-CN":"杯量"}'\ncreated_at:\n- \n- 2022-09-09 08:00:58.623097000 Z\nname_en:\n- \n- Cup Size\nname_zh_cn:\n- \n- 杯量\n	2022-09-09 08:00:58.623097
1552	Variant	118	create	0qa(1)	---\nid:\n- \n- 118\nvariation_id:\n- \n- 79\nname:\n- \n- '{"en":"average","zh-CN":"均等量"}'\ncreated_at:\n- \n- 2022-09-09 08:00:58.629100000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等量\n	2022-09-09 08:00:58.6291
1553	ProductSku	92	create	0qa(1)	---\nid:\n- \n- 92\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 16\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e1\nvariant_ids:\n- []\n- - 118\nproduct_id:\n- \n- 12\ncreated_at:\n- \n- 2022-09-09 08:00:58.642047000 Z\n	2022-09-09 08:00:58.642047
1554	Product	12	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.015586
1555	Variation	80	create	0qa(1)	---\nid:\n- \n- 80\nproduct_id:\n- \n- 14\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\ncreated_at:\n- \n- 2022-09-09 08:02:01.596180000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-09 08:02:01.59618
1556	Variant	119	create	0qa(1)	---\nid:\n- \n- 119\nvariation_id:\n- \n- 80\nname:\n- \n- '{"en":"average","zh-CN":"均等寸"}'\ncreated_at:\n- \n- 2022-09-09 08:02:01.602146000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等寸\n	2022-09-09 08:02:01.602146
1557	ProductSku	93	create	0qa(1)	---\nid:\n- \n- 93\nshop_id:\n- \n- 4\noutlet_sku_id:\n- \n- 19\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 119\nproduct_id:\n- \n- 14\ncreated_at:\n- \n- 2022-09-09 08:02:01.614411000 Z\n	2022-09-09 08:02:01.614411
1558	Product	14	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.034669
1559	Variation	81	create	0qa(1)	---\nid:\n- \n- 81\nproduct_id:\n- \n- 11\nname:\n- \n- '{"en":"Cup Size","zh-CN":"杯量"}'\ncreated_at:\n- \n- 2022-09-09 08:02:58.790722000 Z\nname_en:\n- \n- Cup Size\nname_zh_cn:\n- \n- 杯量\n	2022-09-09 08:02:58.790722
1560	Variant	120	create	0qa(1)	---\nid:\n- \n- 120\nvariation_id:\n- \n- 81\nname:\n- \n- '{"en":"average","zh-CN":"均等量"}'\ncreated_at:\n- \n- 2022-09-09 08:02:58.796762000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等量\n	2022-09-09 08:02:58.796762
1561	ProductSku	94	create	0qa(1)	---\nid:\n- \n- 94\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 15\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\nvariant_ids:\n- []\n- - 120\nproduct_id:\n- \n- 11\ncreated_at:\n- \n- 2022-09-09 08:02:58.809077000 Z\n	2022-09-09 08:02:58.809077
1562	Variation	82	create	0qa(1)	---\nid:\n- \n- 82\nproduct_id:\n- \n- 10\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 08:04:54.177535000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 08:04:54.177535
1563	Variant	121	create	0qa(1)	---\nid:\n- \n- 121\nvariation_id:\n- \n- 82\nname:\n- \n- '{"en":"whole chicken","zh-CN":"一整只"}'\ncreated_at:\n- \n- 2022-09-09 08:04:54.182961000 Z\nname_en:\n- \n- whole chicken\nname_zh_cn:\n- \n- 一整只\n	2022-09-09 08:04:54.182961
1564	ProductSku	95	create	0qa(1)	---\nid:\n- \n- 95\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 14\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvariant_ids:\n- []\n- - 121\nproduct_id:\n- \n- 10\ncreated_at:\n- \n- 2022-09-09 08:04:54.196617000 Z\n	2022-09-09 08:04:54.196617
1565	Product	10	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-09 03:56:06.940865
1711	ProductSku	23	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Parrot Doll-R-M\n	2022-09-13 03:59:08.701316
810	OutletSkuView	35	create	\N	---\nid:\n- \n- 35\noutlet_sku_id:\n- \n- 36\nquantity:\n- \n- 30\nsku_id:\n- \n- 37\noutlet_id:\n- \n- 9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.035221000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.035221000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.035221
811	OutletSkuView	36	create	\N	---\nid:\n- \n- 36\noutlet_sku_id:\n- \n- 37\nquantity:\n- \n- 30\nsku_id:\n- \n- 38\noutlet_id:\n- \n- 9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.052522000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.052522000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.052522
812	OutletSkuView	37	create	\N	---\nid:\n- \n- 37\noutlet_sku_id:\n- \n- 38\nquantity:\n- \n- 30\nsku_id:\n- \n- 39\noutlet_id:\n- \n- 9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.068360000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.068360000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.06836
813	OutletSkuView	38	create	\N	---\nid:\n- \n- 38\noutlet_sku_id:\n- \n- 39\nquantity:\n- \n- 30\nsku_id:\n- \n- 40\noutlet_id:\n- \n- 9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.085107000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.085107000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.085107
814	OutletSkuView	39	create	\N	---\nid:\n- \n- 39\noutlet_sku_id:\n- \n- 40\nquantity:\n- \n- 30\nsku_id:\n- \n- 41\noutlet_id:\n- \n- 9\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.097843000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.097843000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.097843
815	OutletSkuView	40	create	\N	---\nid:\n- \n- 40\noutlet_sku_id:\n- \n- 41\nquantity:\n- \n- 100\nsku_id:\n- \n- 42\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.113888000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.113888000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.113888
816	OutletSkuView	41	create	\N	---\nid:\n- \n- 41\noutlet_sku_id:\n- \n- 42\nquantity:\n- \n- 100\nsku_id:\n- \n- 43\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.132759000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.132759000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.132759
817	OutletSkuView	42	create	\N	---\nid:\n- \n- 42\noutlet_sku_id:\n- \n- 43\nquantity:\n- \n- 100\nsku_id:\n- \n- 44\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.155237000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.155237000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.155237
818	OutletSkuView	43	create	\N	---\nid:\n- \n- 43\noutlet_sku_id:\n- \n- 44\nquantity:\n- \n- 50\nsku_id:\n- \n- 45\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.173068000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.173068000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.173068
819	OutletSkuView	44	create	\N	---\nid:\n- \n- 44\noutlet_sku_id:\n- \n- 45\nquantity:\n- \n- 100\nsku_id:\n- \n- 46\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.186510000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.186510000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.18651
820	OutletSkuView	45	create	\N	---\nid:\n- \n- 45\noutlet_sku_id:\n- \n- 46\nquantity:\n- \n- 100\nsku_id:\n- \n- 47\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.201428000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.201428000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.201428
821	OutletSkuView	46	create	\N	---\nid:\n- \n- 46\noutlet_sku_id:\n- \n- 47\nquantity:\n- \n- 100\nsku_id:\n- \n- 48\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.217270000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.217270000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.21727
1358	OutletView	1	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.185219000 Z\n- 2022-09-09 01:50:24.283614000 Z\n	2022-09-09 01:50:24.352036
822	OutletSkuView	47	create	\N	---\nid:\n- \n- 47\noutlet_sku_id:\n- \n- 1\nquantity:\n- \n- 0\nsku_id:\n- \n- 1\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.231041000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.231041000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.231041
823	OutletSkuView	48	create	\N	---\nid:\n- \n- 48\noutlet_sku_id:\n- \n- 48\nquantity:\n- \n- 0\nsku_id:\n- \n- 48\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.247298000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.247298000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.247298
824	OutletSkuView	49	create	\N	---\nid:\n- \n- 49\noutlet_sku_id:\n- \n- 49\nquantity:\n- \n- 100\nsku_id:\n- \n- 49\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.262165000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.262165000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: *1\n  time: 2022-09-08 02:54:42.000000000 Z\n	2022-09-08 02:54:42.262165
826	Image	129	create	0qa(1)	---\nid:\n- \n- 129\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:56:55.227472000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:56:55.227472000 Z\n	2022-09-08 02:56:55.227472
827	Image	130	create	0qa(1)	---\nid:\n- \n- 130\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:57:04.934377000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:57:04.934377000 Z\n	2022-09-08 02:57:04.934377
1345	Shop	1	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 08:00:00.000000000 Z\n- 2022-09-09 01:00:00.000000000 Z\noperation_time_end:\n- 2022-09-06 22:00:00.000000000 Z\n- 2022-09-09 12:00:00.000000000 Z\n	2022-09-09 01:40:43.573905
1346	FulfillmentTimeSlot	1	update	0qa(1)	---\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 19:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 13:00:00.000000000 Z\nquota:\n- 10000\n- 2\nwarning_quota:\n- 10\n- 1\n	2022-09-09 01:40:43.60543
1347	FulfillmentTimeSlot	2	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 08:30:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 07:30:00.000000000 Z\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 19:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 09:00:00.000000000 Z\n	2022-09-09 01:40:43.612608
1348	FulfillmentTimeSlot	3	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 10:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 05:00:00.000000000 Z\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 19:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 09:00:00.000000000 Z\nquota:\n- \n- 2\nwarning_quota:\n- \n- 0\n	2022-09-09 01:40:43.619625
1349	Shop	2	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 09:00:00.000000000 Z\n- 2022-09-09 00:00:00.000000000 Z\noperation_time_end:\n- 2022-09-06 19:00:00.000000000 Z\n- 2022-09-09 14:00:00.000000000 Z\n	2022-09-09 01:46:46.602722
1350	FulfillmentTimeSlot	9	create	0qa(1)	---\nid:\n- \n- 9\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 2\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 01:45:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 02:45:00.000000000 Z\ncutoff:\n- \n- 0\ndays_of_week:\n- []\n- - 0\n  - 1\n  - 2\n  - 3\n  - 4\n  - 5\n  - 6\nsurcharge:\n- \n- ''\ncreated_at:\n- \n- 2022-09-09 01:46:46.622360000 Z\n	2022-09-09 01:46:46.62236
1351	FulfillmentTimeSlot	10	create	0qa(1)	---\nid:\n- \n- 10\nfulfillment_type:\n- \n- 1\nshop_id:\n- \n- 2\nstart_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 03:46:00.000000000 Z\nend_time:\n- \n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 04:46:00.000000000 Z\ncutoff:\n- \n- 0\ndays_of_week:\n- []\n- - 6\n  - 5\n  - 4\n  - 3\n  - 2\n  - 1\n  - 0\nsurcharge:\n- \n- ''\ncreated_at:\n- \n- 2022-09-09 01:46:46.631651000 Z\n	2022-09-09 01:46:46.631651
1352	FulfillmentTimeSlot	4	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 10:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 03:00:00.000000000 Z\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 18:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 10:00:00.000000000 Z\n	2022-09-09 01:46:46.641191
1353	DeliveryFeeTier	2	update	0qa(1)	---\nstart_value:\n- !ruby/object:BigDecimal 18:0.2e2\n- !ruby/object:BigDecimal 18:0.0\n	2022-09-09 01:46:46.654648
1354	FulfillmentTimeSlot	5	update	0qa(1)	---\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 16:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 15:00:00.000000000 Z\n	2022-09-09 01:47:35.806982
1355	FulfillmentTimeSlot	6	update	0qa(1)	---\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 16:30:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 15:30:00.000000000 Z\n	2022-09-09 01:47:35.815896
1356	Shop	8	update	0qa(1)	---\noperation_time_start:\n- 2022-09-06 11:37:00.000000000 Z\n- 2022-09-09 11:37:00.000000000 Z\noperation_time_end:\n- 2022-09-06 14:38:00.000000000 Z\n- 2022-09-09 14:38:00.000000000 Z\n	2022-09-09 01:49:48.465236
864	ChannelSellable	127	create	0qa(1)	---\nid:\n- \n- 127\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 38\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.283329000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.283329000 Z\n	2022-09-08 03:57:56.283329
1357	FulfillmentTimeSlot	8	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 14:58:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 00:58:00.000000000 Z\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 18:58:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 04:58:00.000000000 Z\n	2022-09-09 01:49:48.477078
1359	OutletView	2	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.204767000 Z\n- 2022-09-09 01:50:37.791648000 Z\n	2022-09-09 01:50:37.803199
1360	OutletView	3	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.224666000 Z\n- 2022-09-09 01:50:52.559192000 Z\n	2022-09-09 01:50:52.561893
1361	OutletView	4	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.244259000 Z\n- 2022-09-09 01:51:07.802848000 Z\n	2022-09-09 01:51:07.805818
1362	OutletView	5	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.265173000 Z\n- 2022-09-09 01:51:17.722919000 Z\n	2022-09-09 01:51:17.726902
1363	OutletView	7	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.306276000 Z\n- 2022-09-09 01:51:36.447242000 Z\n	2022-09-09 01:51:36.450366
1364	OutletView	6	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.285572000 Z\n- 2022-09-09 01:51:53.438702000 Z\n	2022-09-09 01:51:53.441952
1365	OutletView	8	update	\N	---\nlast_event_time:\n- 2022-09-08 06:06:40.323480000 Z\n- 2022-09-09 01:52:14.989750000 Z\n	2022-09-09 01:52:14.99256
1369	SkuView	48	update	\N	---\nlast_event_time:\n- 2022-09-08 09:22:29.000000000 Z\n- 2022-09-09 01:53:53.000000000 Z\n	2022-09-09 01:53:53.739345
1566	CustomAttribute	20	update	0qa(1)	---\nname:\n- '{"en":"KFC","zh-CN":"肯德基"}'\n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- '{"en":"Member Voucher","zh-CN":"会员优惠券"}'\n- '{"en":"Valid for KFC members only","zh-CN":"仅限肯德基会员有效"}'\noverwritten:\n- \n- 2022-09-09 08:06:58.390631000 Z\nname_en:\n- KFC\n- Purchase Notes\nname_zh_cn:\n- 肯德基\n- 购买须知\nvalue_en:\n- Member Voucher\n- Valid for KFC members only\nvalue_zh_cn:\n- 会员优惠券\n- 仅限肯德基会员有效\n	2022-09-09 08:06:58.390985
1567	VoucherProduct	4	update	0qa(1)	---\ndesc:\n- '{"en":"Family Voucher desc","zh-CN":"家庭优惠券 描述"}'\n- '{"en":"KFC offers more deals for your family","zh-CN":"肯德基为您家人提供更多优惠"}'\nshort_desc:\n- '{"en":"Family Voucher short desc","zh-CN":"家庭优惠券，带上家人享受别样优惠"}'\n- '{"en":"KFC Family voucher, bring your family to enjoy special discounts","zh-CN":"肯德基家庭优惠券，带上家人享受别样优惠"}'\nopen_for_sale_at:\n- \n- 2022-09-09 08:09:15.000000000 Z\ndesc_en:\n- Family Voucher desc\n- KFC offers more deals for your family\ndesc_zh_cn:\n- 家庭优惠券 描述\n- 肯德基为您家人提供更多优惠\nshort_desc_en:\n- Family Voucher short desc\n- KFC Family voucher, bring your family to enjoy special discounts\nshort_desc_zh_cn:\n- 家庭优惠券，带上家人享受别样优惠\n- 肯德基家庭优惠券，带上家人享受别样优惠\n	2022-09-09 08:12:21.970507
1568	CustomAttribute	21	create	0qa(1)	---\nid:\n- \n- 21\nattributable_id:\n- \n- 4\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"Only supports multi-person packages","zh-CN":"仅支持多人套餐使用"}'\ncreated_at:\n- \n- 2022-09-09 08:12:21.979967000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- Only supports multi-person packages\nvalue_zh_cn:\n- \n- 仅支持多人套餐使用\n	2022-09-09 08:12:21.979967
1569	VoucherProduct	5	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 08:12:35.000000000 Z\n	2022-09-09 08:13:47.552439
852	Image	131	create	0qa(1)	---\nid:\n- \n- 131\nimage:\n- \n- de8a7004-0a89-4b50-88d9-89b4c5ec0df1.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:00:27.581676000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:00:27.581676000 Z\n	2022-09-08 03:00:27.581676
1570	CustomAttribute	22	create	0qa(1)	---\nid:\n- \n- 22\nattributable_id:\n- \n- 5\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"Only supports use on holidays","zh-CN":"仅支持节假日当天使用"}'\ncreated_at:\n- \n- 2022-09-09 08:13:47.560255000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- Only supports use on holidays\nvalue_zh_cn:\n- \n- 仅支持节假日当天使用\n	2022-09-09 08:13:47.560255
1571	CustomAttribute	23	create	0qa(1)	---\nid:\n- \n- 23\nattributable_id:\n- \n- 6\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This voucher cannot be used in conjunction with other vouchers","zh-CN":"本优惠券不同其他优惠券一同使用"}'\ncreated_at:\n- \n- 2022-09-09 08:15:12.441021000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This voucher cannot be used in conjunction with other vouchers\nvalue_zh_cn:\n- \n- 本优惠券不同其他优惠券一同使用\n	2022-09-09 08:15:12.441021
855	OutletSkuView	50	create	\N	---\nid:\n- \n- 50\noutlet_sku_id:\n- \n- 50\nquantity:\n- \n- 200\nsku_id:\n- \n- 44\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:56:37.437025000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:56:37.437025000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:56:37.000000000 Z\n  zone: *1\n  time: 2022-09-08 03:56:37.000000000 Z\n	2022-09-08 03:56:37.437025
856	ProductSku	43	update	0qa(1)	---\nprice:\n- !ruby/object:BigDecimal 27:0.188e2\n- !ruby/object:BigDecimal 18:0.189e3\n	2022-09-08 03:56:44.443226
857	Product	29	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.25e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.189e3\n	2022-09-08 03:56:44.468721
858	ProductSku	44	update	0qa(1)	---\nprice:\n- !ruby/object:BigDecimal 18:0.25e2\n- !ruby/object:BigDecimal 18:0.24e2\n	2022-09-08 03:56:44.479179
859	Product	29	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.25e2\n- !ruby/object:BigDecimal 18:0.24e2\n	2022-09-08 03:56:44.487358
860	ProductSku	43	update	0qa(1)	---\nprice:\n- !ruby/object:BigDecimal 18:0.189e3\n- !ruby/object:BigDecimal 27:0.189e2\n	2022-09-08 03:57:09.033805
1572	VoucherProduct	7	update	0qa(1)	---\ndesc:\n- '{"en":"Family Voucher  desc","zh-CN":"家庭优惠券 描述"}'\n- '{"en":"SZ Family Voucher  desc","zh-CN":"新加坡动物园家庭优惠券 描述"}'\nshort_desc:\n- '{"en":"Family Voucher short desc","zh-CN":"家庭优惠券 简述"}'\n- '{"en":"SZ Family Voucher short desc","zh-CN":"新加坡动物园家庭优惠券 简述"}'\nopen_for_sale_at:\n- \n- 2022-09-09 08:17:26.000000000 Z\ndesc_en:\n- Family Voucher  desc\n- SZ Family Voucher  desc\ndesc_zh_cn:\n- 家庭优惠券 描述\n- 新加坡动物园家庭优惠券 描述\nshort_desc_en:\n- Family Voucher short desc\n- SZ Family Voucher short desc\nshort_desc_zh_cn:\n- 家庭优惠券 简述\n- 新加坡动物园家庭优惠券 简述\n	2022-09-09 08:18:43.510918
1573	CustomAttribute	24	create	0qa(1)	---\nid:\n- \n- 24\nattributable_id:\n- \n- 7\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This voucher cannot be used in conjunction with other vouchers","zh-CN":"本优惠券不同其他优惠券一同使用"}'\ncreated_at:\n- \n- 2022-09-09 08:18:43.523909000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This voucher cannot be used in conjunction with other vouchers\nvalue_zh_cn:\n- \n- 本优惠券不同其他优惠券一同使用\n	2022-09-09 08:18:43.523909
866	ChannelSellable	129	create	0qa(1)	---\nid:\n- \n- 129\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 38\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.300796000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.300796000 Z\n	2022-09-08 03:57:56.300796
867	ChannelSellable	130	create	0qa(1)	---\nid:\n- \n- 130\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 38\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.309275000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.309275000 Z\n	2022-09-08 03:57:56.309275
868	ChannelSellable	131	create	0qa(1)	---\nid:\n- \n- 131\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 38\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.318422000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.318422000 Z\n	2022-09-08 03:57:56.318422
869	ProductSku	48	create	0qa(1)	---\nid:\n- \n- 48\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nproduct_id:\n- \n- 38\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:57:56.348648000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:57:56.348648000 Z\n	2022-09-08 03:57:56.348648
870	Product	38	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-08 03:57:56.36791
871	Image	133	create	0qa(1)	---\nid:\n- \n- 133\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:02:54.013779000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:02:54.013779000 Z\n	2022-09-08 04:02:54.013779
872	Product	39	create	0qa(1)	---\nid:\n- \n- 39\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.304372000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.304372000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 04:03:02.304372
873	ChannelSellable	132	create	0qa(1)	---\nid:\n- \n- 132\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 39\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.316162000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.316162000 Z\n	2022-09-08 04:03:02.316162
874	ChannelSellable	133	create	0qa(1)	---\nid:\n- \n- 133\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 39\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.335938000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.335938000 Z\n	2022-09-08 04:03:02.335938
875	ChannelSellable	134	create	0qa(1)	---\nid:\n- \n- 134\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 39\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.346616000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.346616000 Z\n	2022-09-08 04:03:02.346616
876	ChannelSellable	135	create	0qa(1)	---\nid:\n- \n- 135\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 39\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.356797000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.356797000 Z\n	2022-09-08 04:03:02.356797
877	ChannelSellable	136	create	0qa(1)	---\nid:\n- \n- 136\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 39\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.365190000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.365190000 Z\n	2022-09-08 04:03:02.36519
878	ProductSku	49	create	0qa(1)	---\nid:\n- \n- 49\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nproduct_id:\n- \n- 39\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:03:02.375905000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:03:02.375905000 Z\n	2022-09-08 04:03:02.375905
879	Product	39	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-08 04:03:02.384643
880	Image	134	create	0qa(1)	---\nid:\n- \n- 134\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:08:39.621772000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:08:39.621772000 Z\n	2022-09-08 04:08:39.621772
881	Image	135	create	0qa(1)	---\nid:\n- \n- 135\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:08:42.889467000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:08:42.889467000 Z\n	2022-09-08 04:08:42.889467
882	Image	136	create	0qa(1)	---\nid:\n- \n- 136\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:08:52.663942000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:08:52.663942000 Z\n	2022-09-08 04:08:52.663942
1366	ProductSku	70	create	0qa(1)	---\nid:\n- \n- 70\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 01:53:31.124382000 Z\n	2022-09-09 01:53:31.124382
1367	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-08 10:09:31.830207
1368	CustomAttribute	15	update	0qa(1)	---\nvalue:\n- '{"en":"small","zh-CN":"小号"}'\n- '{"en":"small","zh-CN":"小号1"}'\noverwritten:\n- \n- 2022-09-09 01:53:31.174686000 Z\nvalue_zh_cn:\n- 小号\n- 小号1\n	2022-09-09 01:53:31.174994
1370	FulfillmentTimeSlot	9	update	0qa(1)	---\ncutoff:\n- 0\n- 20\n	2022-09-09 01:55:39.624027
1371	FulfillmentTimeSlot	10	update	0qa(1)	---\ncutoff:\n- 0\n- 20\n	2022-09-09 01:55:39.63026
1372	FulfillmentTimeSlot	4	update	0qa(1)	---\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 10:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 1999-12-31 16:00:00.000000000 Z\n	2022-09-09 01:56:51.728026
1373	NoFulfillmentDate	4	update	0qa(1)	---\nstart_date:\n- 2022-08-31\n- 2024-08-09\n	2022-09-09 01:58:13.594269
1374	FulfillmentTimeSlot	4	update	0qa(1)	---\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 16:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 08:00:00.000000000 Z\n	2022-09-09 01:58:13.609496
1375	Shop	2	update	0qa(1)	---\npickup_cutoff_date:\n- 2023-08-01\n- 2022-11-30\n	2022-09-09 02:01:38.925908
1376	NoFulfillmentDate	4	update	0qa(1)	---\nstart_date:\n- 2024-08-09\n- 2022-08-01\n	2022-09-09 02:01:38.952979
1377	NoFulfillmentDate	4	update	0qa(1)	---\nstart_date:\n- 2022-08-01\n- 2022-09-30\n	2022-09-09 02:11:38.024799
1378	FulfillmentTimeSlot	4	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 03:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 15:00:00.000000000 Z\n	2022-09-09 02:11:38.043098
1574	Image	195	create	0qa(1)	---\nid:\n- \n- 195\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 08:20:13.451570000 Z\n	2022-09-09 08:20:13.45157
1575	VoucherProduct	8	update	0qa(1)	---\ndesc:\n- '{"en":"Holiday Voucher  desc","zh-CN":"节日优惠券描述..."}'\n- '{"en":"SZ Holiday Voucher  desc","zh-CN":"新加坡动物园节日优惠券描述..."}'\nshort_desc:\n- '{"en":"Holiday Voucher  short desc","zh-CN":"节日优惠券简述"}'\n- '{"en":"SZ Holiday Voucher  short desc","zh-CN":"新加坡动物园节日优惠券简述"}'\nopen_for_sale_at:\n- \n- 2022-09-09 08:19:22.000000000 Z\ndesc_en:\n- Holiday Voucher  desc\n- SZ Holiday Voucher  desc\ndesc_zh_cn:\n- 节日优惠券描述...\n- 新加坡动物园节日优惠券描述...\nshort_desc_en:\n- Holiday Voucher  short desc\n- SZ Holiday Voucher  short desc\nshort_desc_zh_cn:\n- 节日优惠券简述\n- 新加坡动物园节日优惠券简述\n	2022-09-09 08:20:15.570004
1576	CustomAttribute	25	create	0qa(1)	---\nid:\n- \n- 25\nattributable_id:\n- \n- 8\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This voucher can only be used on holidays","zh-CN":"本优惠券仅限节假日当天使用"}'\ncreated_at:\n- \n- 2022-09-09 08:20:15.578464000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This voucher can only be used on holidays\nvalue_zh_cn:\n- \n- 本优惠券仅限节假日当天使用\n	2022-09-09 08:20:15.578464
1577	ProductSku	96	create	0qa(1)	---\nid:\n- \n- 96\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nvariant_ids:\n- []\n- - 102\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 08:20:23.603518000 Z\n	2022-09-09 08:20:23.603518
1578	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 07:44:56.297581
1579	VoucherProduct	9	update	0qa(1)	---\ndesc:\n- '{"en":"Cash Voucher desc","zh-CN":"现金券 描述"}'\n- '{"en":"SZ Cash Voucher desc","zh-CN":"新加坡动物园现金券 描述"}'\nshort_desc:\n- '{"en":"Cash Voucher short desc","zh-CN":"现金券 简介....."}'\n- '{"en":"SZ  Cash Voucher short desc","zh-CN":"新加坡动物园现金券 简介....."}'\nopen_for_sale_at:\n- \n- 2022-09-09 08:21:03.000000000 Z\ndesc_en:\n- Cash Voucher desc\n- SZ Cash Voucher desc\ndesc_zh_cn:\n- 现金券 描述\n- 新加坡动物园现金券 描述\nshort_desc_en:\n- Cash Voucher short desc\n- SZ  Cash Voucher short desc\nshort_desc_zh_cn:\n- 现金券 简介.....\n- 新加坡动物园现金券 简介.....\n	2022-09-09 08:22:11.508984
1580	CustomAttribute	26	create	0qa(1)	---\nid:\n- \n- 26\nattributable_id:\n- \n- 9\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This voucher can be used in combination with other vouchers","zh-CN":"本优惠券可以同其他优惠券叠加使用"}'\ncreated_at:\n- \n- 2022-09-09 08:22:11.522966000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This voucher can be used in combination with other vouchers\nvalue_zh_cn:\n- \n- 本优惠券可以同其他优惠券叠加使用\n	2022-09-09 08:22:11.522966
1581	VoucherProduct	10	update	0qa(1)	---\nshort_desc:\n- '{"en":"Family Voucher","zh-CN":"家庭优惠券"}'\n- '{"en":"AMR Family Voucher Family Voucher","zh-CN":"阿明餐厅家庭优惠券"}'\nopen_for_sale_at:\n- \n- 2022-09-09 08:22:28.000000000 Z\nshort_desc_en:\n- Family Voucher\n- AMR Family Voucher Family Voucher\nshort_desc_zh_cn:\n- 家庭优惠券\n- 阿明餐厅家庭优惠券\n	2022-09-09 08:23:36.845624
1582	CustomAttribute	27	create	0qa(1)	---\nid:\n- \n- 27\nattributable_id:\n- \n- 10\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This voucher can be used in combination with other vouchers","zh-CN":"本优惠券可以同其他优惠券叠加使用"}'\ncreated_at:\n- \n- 2022-09-09 08:23:36.873533000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This voucher can be used in combination with other vouchers\nvalue_zh_cn:\n- \n- 本优惠券可以同其他优惠券叠加使用\n	2022-09-09 08:23:36.873533
1583	VoucherProduct	11	update	0qa(1)	---\nshort_desc:\n- '{"en":"Cash Voucher","zh-CN":"现金券"}'\n- '{"en":"AMR Cash Voucher","zh-CN":"阿明餐厅现金券"}'\nopen_for_sale_at:\n- \n- 2022-09-09 08:24:19.000000000 Z\nshort_desc_en:\n- Cash Voucher\n- AMR Cash Voucher\nshort_desc_zh_cn:\n- 现金券\n- 阿明餐厅现金券\n	2022-09-09 08:25:13.403875
1584	CustomAttribute	28	create	0qa(1)	---\nid:\n- \n- 28\nattributable_id:\n- \n- 11\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"Not available during holidays","zh-CN":"节假日不可用"}'\ncreated_at:\n- \n- 2022-09-09 08:25:13.418781000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- Not available during holidays\nvalue_zh_cn:\n- \n- 节假日不可用\n	2022-09-09 08:25:13.418781
1585	VoucherProduct	12	update	0qa(1)	---\nshort_desc:\n- '{"en":"Discount Voucher","zh-CN":"折扣券"}'\n- '{"en":"AMR Discount Voucher","zh-CN":"阿明餐厅折扣券"}'\nshort_desc_en:\n- Discount Voucher\n- AMR Discount Voucher\nshort_desc_zh_cn:\n- 折扣券\n- 阿明餐厅折扣券\n	2022-09-09 08:31:14.729248
1586	CustomAttribute	29	create	0qa(1)	---\nid:\n- \n- 29\nattributable_id:\n- \n- 12\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"Not available during holidays (excluding weekends)","zh-CN":"不可在节假日期间使用（不含周末）"}'\ncreated_at:\n- \n- 2022-09-09 08:31:14.736724000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- Not available during holidays (excluding weekends)\nvalue_zh_cn:\n- \n- 不可在节假日期间使用（不含周末）\n	2022-09-09 08:31:14.736724
1587	Bundle	1	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 08:31:39.000000000 Z\n	2022-09-09 08:33:38.54734
1588	CustomAttribute	30	create	0qa(1)	---\nid:\n- \n- 30\nattributable_id:\n- \n- 1\nattributable_type:\n- \n- Bundle\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This bundle is only available during Valentine''s Day","zh-CN":"本套餐仅限情人节时期使用"}'\ncreated_at:\n- \n- 2022-09-09 08:33:38.573141000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This bundle is only available during Valentine's Day\nvalue_zh_cn:\n- \n- 本套餐仅限情人节时期使用\n	2022-09-09 08:33:38.573141
1589	Bundle	2	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 08:34:08.000000000 Z\n	2022-09-09 08:35:17.99461
1640	ProductSku	100	create	0qa(1)	---\nid:\n- \n- 100\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 5\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 09:42:34.891378000 Z\n	2022-09-09 09:42:34.891378
1379	Shop	2	update	0qa(1)	---\npickup_cutoff_date:\n- 2022-11-30\n- 2022-09-23\n	2022-09-09 02:23:24.981305
1380	NoFulfillmentDate	4	update	0qa(1)	---\nstart_date:\n- 2022-09-30\n- 2022-08-01\n	2022-09-09 02:23:24.996279
1381	FulfillmentTimeSlot	4	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 15:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 03:00:00.000000000 Z\n	2022-09-09 02:23:25.011201
1382	Image	183	create	0qa(1)	---\nid:\n- \n- 183\nimage:\n- \n- city.jpeg\ncreated_at:\n- \n- 2022-09-09 02:24:43.986901000 Z\n	2022-09-09 02:24:43.986901
1383	ProductSku	71	create	0qa(1)	---\nid:\n- \n- 71\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 102\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 02:24:51.899363000 Z\n	2022-09-09 02:24:51.899363
1384	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-09 02:24:51.916492
1385	SkuView	10	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:28:11.000000000 Z\n	2022-09-09 02:28:11.323889
1386	SkuView	12	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:30:03.000000000 Z\n	2022-09-09 02:30:03.516636
1387	SkuView	10	update	\N	---\nlast_event_time:\n- 2022-09-09 02:28:11.000000000 Z\n- 2022-09-09 02:30:23.000000000 Z\n	2022-09-09 02:30:23.107718
1388	SkuView	15	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:32:11.000000000 Z\n	2022-09-09 02:32:11.051448
1389	SkuView	16	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:32:43.000000000 Z\n	2022-09-09 02:32:43.670564
1390	SkuView	6	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:34:43.000000000 Z\n	2022-09-09 02:34:43.382189
919	Image	137	create	0qa(1)	---\nid:\n- \n- 137\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 04:16:19.385626000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 04:16:19.385626000 Z\n	2022-09-08 04:16:19.385626
1391	SkuView	5	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:35:30.000000000 Z\n	2022-09-09 02:35:30.52188
1392	SkuView	5	update	\N	---\nlast_event_time:\n- 2022-09-09 02:35:30.000000000 Z\n- 2022-09-09 02:36:09.000000000 Z\n	2022-09-09 02:36:09.876787
1393	SkuView	5	update	\N	---\nlast_event_time:\n- 2022-09-09 02:36:09.000000000 Z\n- 2022-09-09 02:36:30.000000000 Z\n	2022-09-09 02:36:30.891078
1394	SkuView	8	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:37:47.000000000 Z\n	2022-09-09 02:37:47.117557
1395	SkuView	9	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:38:20.000000000 Z\n	2022-09-09 02:38:20.579917
1396	SkuView	17	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:39:27.000000000 Z\n	2022-09-09 02:39:27.335013
926	Image	138	create	0qa(1)	---\nid:\n- \n- 138\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:02:18.057166000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:02:18.057166000 Z\n	2022-09-08 06:02:18.057166
1397	SkuView	23	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:40:11.000000000 Z\n	2022-09-09 02:40:11.161317
1398	SkuView	24	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:40:45.000000000 Z\n	2022-09-09 02:40:45.890285
1399	SkuView	25	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:41:43.000000000 Z\n	2022-09-09 02:41:43.942767
1400	SkuView	26	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:42:15.000000000 Z\n	2022-09-09 02:42:15.681304
1401	SkuView	27	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:42:40.000000000 Z\n	2022-09-09 02:42:40.568239
1402	SkuView	28	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:43:48.000000000 Z\n	2022-09-09 02:43:48.762457
1403	SkuView	41	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:36.000000000 Z\n- 2022-09-09 02:44:34.000000000 Z\n	2022-09-09 02:44:34.347068
1404	SkuView	3	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:44:57.000000000 Z\n	2022-09-09 02:44:57.783552
1405	SkuView	40	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:36.000000000 Z\n- 2022-09-09 02:45:24.000000000 Z\n	2022-09-09 02:45:24.514598
1406	SkuView	34	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:46:18.000000000 Z\n	2022-09-09 02:46:18.975166
1407	SkuView	33	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:46:45.000000000 Z\n	2022-09-09 02:46:45.908466
1408	SkuView	32	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:47:16.000000000 Z\n	2022-09-09 02:47:16.237174
1409	SkuView	31	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:47:49.000000000 Z\n	2022-09-09 02:47:49.313628
1410	SkuView	30	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:48:27.000000000 Z\n	2022-09-09 02:48:27.469097
1411	SkuView	14	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:49:18.000000000 Z\n	2022-09-09 02:49:18.723721
1412	SkuView	13	update	\N	---\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 02:50:01.000000000 Z\n	2022-09-09 02:50:01.31755
1413	Shop	1	update	0qa(1)	---\npickup_cutoff_date:\n- 2035-08-01\n- 2022-09-24\n	2022-09-09 03:03:45.058304
1414	Shop	2	update	0qa(1)	---\nphone_number:\n- ''\n- '8888888'\nemail:\n- ''\n- kfc@fooyo.sg\nwhatsapp_number:\n- ''\n- '8888888'\n	2022-09-09 03:04:53.92023
1415	Shop	3	update	0qa(1)	---\noperation_time_start:\n- \n- 2022-09-09 01:05:00.000000000 Z\noperation_time_end:\n- \n- 2022-09-09 09:05:00.000000000 Z\nphone_number:\n- ''\n- '77777777'\nwhatsapp_number:\n- ''\n- '77777'\n	2022-09-09 03:05:51.65522
1416	Shop	4	update	0qa(1)	---\noperation_time_start:\n- \n- 2022-09-08 23:06:00.000000000 Z\noperation_time_end:\n- \n- 2022-09-09 11:06:00.000000000 Z\nphone_number:\n- ''\n- '66666666'\nwhatsapp_number:\n- ''\n- '6666666'\n	2022-09-09 03:06:21.251761
1590	CustomAttribute	31	create	0qa(1)	---\nid:\n- \n- 31\nattributable_id:\n- \n- 2\nattributable_type:\n- \n- Bundle\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"No other discounts available for this bundle","zh-CN":"本套餐不能享受其他优惠"}'\ncreated_at:\n- \n- 2022-09-09 08:35:18.017881000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- No other discounts available for this bundle\nvalue_zh_cn:\n- \n- 本套餐不能享受其他优惠\n	2022-09-09 08:35:18.017881
1591	Bundle	1	update	0qa(1)	---\nranking:\n- 1\n- 50\n	2022-09-09 08:35:49.437992
1592	Bundle	2	update	0qa(1)	---\nactive:\n- false\n- true\nranking:\n- \n- 49\n	2022-09-09 08:36:02.398515
1417	Shop	5	update	0qa(1)	---\noperation_time_start:\n- \n- 2022-09-09 01:06:00.000000000 Z\noperation_time_end:\n- \n- 2022-09-09 08:06:00.000000000 Z\nphone_number:\n- ''\n- '55555555'\nwhatsapp_number:\n- ''\n- '555555'\ndesc:\n- '{"en":"\\n\\nSteaming pizza is a family favorite, and whenever you want to take a\n  break, there''s something delicious waiting for you. After your pizza, you''ll be\n  satisfied with Pizza Hut''s signature garlic bread and spicy chicken thighs.\\n","zh-CN":"热气腾腾的披萨是家庭游客的最爱，无论您什么时候想稍事休息，都有可口的披萨等您品尝。享用完披萨，再尝一尝必胜客标志性的蒜香面包和香辣鸡腿，让您心满意足。"}'\n- '{"en":"\\nSteaming pizza is a family favorite, and whenever you want to take a break,\n  there''s something delicious waiting for you. After your pizza, you''ll be satisfied\n  with Pizza Hut''s signature garlic bread and spicy chicken thighs.\\nSteaming pizza\n  is a family favorite, and whenever you want to take a break, there''s something\n  delicious waiting for you. After your pizza, you''ll be satisfied with Pizza Hut''s\n  signature garlic bread and spicy chicken thighs.\\n","zh-CN":"热气腾腾的披萨是家庭游客的最爱，无论您什么时候想稍事休息，都有可口的披萨等您品尝。享用完披萨，再尝一尝必胜客标志性的蒜香面包和香辣鸡腿，让您心满意足。"}'\ndelivery_source_location_lat:\n- \n- !ruby/object:BigDecimal 18:0.1e1\ndelivery_source_location_lon:\n- \n- !ruby/object:BigDecimal 18:0.1e1\ndesc_en:\n- |2\n\n\n  Steaming pizza is a family favorite, and whenever you want to take a break, there's something delicious waiting for you. After your pizza, you'll be satisfied with Pizza Hut's signature garlic bread and spicy chicken thighs.\n- |2\n\n  Steaming pizza is a family favorite, and whenever you want to take a break, there's something delicious waiting for you. After your pizza, you'll be satisfied with Pizza Hut's signature garlic bread and spicy chicken thighs.\n  Steaming pizza is a family favorite, and whenever you want to take a break, there's something delicious waiting for you. After your pizza, you'll be satisfied with Pizza Hut's signature garlic bread and spicy chicken thighs.\n	2022-09-09 03:07:49.008124
1418	FulfillmentTimeSlot	7	update	0qa(1)	---\nstart_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 08:30:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 01:30:00.000000000 Z\nend_time:\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 18:00:00.000000000 Z\n- !ruby/object:ActiveRecord::Type::Time::Value\n  delegate_dc_obj: 2000-01-01 08:00:00.000000000 Z\n	2022-09-09 03:07:49.025641
1419	Shop	6	update	0qa(1)	---\noperation_time_start:\n- \n- 2022-09-09 08:07:00.000000000 Z\noperation_time_end:\n- \n- 2022-09-09 14:08:00.000000000 Z\nphone_number:\n- ''\n- '33333333'\nwhatsapp_number:\n- ''\n- '333333'\n	2022-09-09 03:08:41.460164
1593	Bundle	3	update	0qa(1)	---\nranking:\n- \n- 48\nsearchable:\n- false\n- true\nopen_for_sale_at:\n- \n- 2022-09-09 08:36:17.000000000 Z\n	2022-09-09 08:37:03.593026
931	OutletView	8	update	\N	---\nname:\n- '{"en":"Singapore Zoo Gift Shop"}'\n- '{"en":"Singapore Zoo Gift Shop","zh-CN":"新加坡动物园礼品店"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.797799000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.797799000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:08.815529000 Z\n  zone: *1\n  time: 2022-09-08 06:06:08.815529000 Z\nname_zh_cn:\n- \n- 新加坡动物园礼品店\n	2022-09-08 06:06:08.862597
932	Product	46	create	0qa(1)	---\nid:\n- \n- 46\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:12.942221000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:06:12.942221000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 06:06:12.942221
933	ChannelSellable	159	create	0qa(1)	---\nid:\n- \n- 159\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 46\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:12.961170000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:06:12.961170000 Z\n	2022-09-08 06:06:12.96117
934	ProductSku	50	create	0qa(1)	---\nid:\n- \n- 50\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nproduct_id:\n- \n- 46\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:12.980774000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:06:12.980774000 Z\n	2022-09-08 06:06:12.980774
935	Product	46	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 06:06:12.997518
936	OutletView	1	update	\N	---\nname:\n- '{"en":"Rriver Wonders Gift Shop"}'\n- '{"en":"Rriver Wonders Gift Shop","zh-CN":"河川生态公园礼品店"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.682814000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.682814000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.185219000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.185219000 Z\nname_zh_cn:\n- \n- 河川生态公园礼品店\n	2022-09-08 06:06:40.18872
937	OutletView	2	update	\N	---\nname:\n- '{"en":"Ulu Ulu Wild Restaurant"}'\n- '{"en":"Ulu Ulu Wild Restaurant","zh-CN":"乌鲁乌鲁野生餐厅"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.697357000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.697357000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.204767000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.204767000 Z\nname_zh_cn:\n- \n- 乌鲁乌鲁野生餐厅\n	2022-09-08 06:06:40.207669
938	OutletView	3	update	\N	---\nname:\n- '{"en":"Night Safari Gift Shop"}'\n- '{"en":"Night Safari Gift Shop","zh-CN":"夜间野生动物园纪念品店"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.722257000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.722257000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.224666000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.224666000 Z\nname_zh_cn:\n- \n- 夜间野生动物园纪念品店\n	2022-09-08 06:06:40.227819
939	OutletView	4	update	\N	---\nname:\n- '{"en":"Pizza Hut"}'\n- '{"en":"Pizza Hut","zh-CN":"必胜客"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.736726000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.736726000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.244259000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.244259000 Z\nname_zh_cn:\n- \n- 必胜客\n	2022-09-08 06:06:40.247077
940	OutletView	5	update	\N	---\nname:\n- '{"en":"Jurong Bird Park Gift Shop"}'\n- '{"en":"Jurong Bird Park Gift Shop","zh-CN":"裕廊飞禽公园礼品店"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.750936000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.750936000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.265173000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.265173000 Z\nname_zh_cn:\n- \n- 裕廊飞禽公园礼品店\n	2022-09-08 06:06:40.268228
941	OutletView	6	update	\N	---\nname:\n- '{"en":"KFC"}'\n- '{"en":"KFC","zh-CN":"肯德基"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.770155000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.770155000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.285572000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.285572000 Z\nname_zh_cn:\n- \n- 肯德基\n	2022-09-08 06:06:40.288914
942	OutletView	7	update	\N	---\nname:\n- '{"en":"Ah Meng Restaurant"}'\n- '{"en":"Ah Meng Restaurant","zh-CN":"阿明饭店"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:51.779960000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:51.779960000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.306276000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.306276000 Z\nname_zh_cn:\n- \n- 阿明饭店\n	2022-09-08 06:06:40.309561
1641	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 09:29:58.026525
943	OutletView	8	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:08.815529000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:06:08.815529000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:40.323480000 Z\n  zone: *1\n  time: 2022-09-08 06:06:40.323480000 Z\n	2022-09-08 06:06:40.326308
946	OutletSkuView	1	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.359486
1420	Shop	7	update	0qa(1)	---\noperation_time_start:\n- \n- 2022-09-08 22:30:00.000000000 Z\noperation_time_end:\n- \n- 2022-09-09 15:00:00.000000000 Z\nphone_number:\n- ''\n- '22222222'\nwhatsapp_number:\n- ''\n- '222222'\nshort_desc:\n- \n- '{"en":"Enjoy Singapore''s favourites such as chicken rice, pilaf, roti chicken\n  and red bean ice in a charming rural setting. This is a dining experience full of\n  warmth and nostalgia, perfect to start or end an unforgettable evening.","zh-CN":"在迷人的乡村环境中享用新加坡最受欢迎的美食，如鸡饭、印度手抓饭、印度式烤鸡和红豆冰等。这是一个充满温暖和怀旧的用餐体验，绝对是开始或结束一个难忘夜晚的完美选择。"}'\nshort_desc_en:\n- \n- Enjoy Singapore's favourites such as chicken rice, pilaf, roti chicken and red bean\n  ice in a charming rural setting. This is a dining experience full of warmth and\n  nostalgia, perfect to start or end an unforgettable evening.\nshort_desc_zh_cn:\n- \n- 在迷人的乡村环境中享用新加坡最受欢迎的美食，如鸡饭、印度手抓饭、印度式烤鸡和红豆冰等。这是一个充满温暖和怀旧的用餐体验，绝对是开始或结束一个难忘夜晚的完美选择。\n	2022-09-09 03:11:10.810811
1421	Shop	8	update	0qa(1)	---\nphone_number:\n- ''\n- '1111110'\nshort_desc:\n- '{"en":"test"}'\n- '{"en":"Welcome to  River Wonders Gift E-shop","zh-CN":"欢迎来到河川生态园礼品店网店"}'\nshort_desc_en:\n- test\n- Welcome to  River Wonders Gift E-shop\nshort_desc_zh_cn:\n- \n- 欢迎来到河川生态园礼品店网店\n	2022-09-09 03:13:00.125322
1594	CustomAttribute	32	create	0qa(1)	---\nid:\n- \n- 32\nattributable_id:\n- \n- 3\nattributable_type:\n- \n- Bundle\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"This bundle can only be used on Father''s Day","zh-CN":"本套餐仅限父亲节当天使用"}'\ncreated_at:\n- \n- 2022-09-09 08:37:03.617421000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- This bundle can only be used on Father's Day\nvalue_zh_cn:\n- \n- 本套餐仅限父亲节当天使用\n	2022-09-09 08:37:03.617421
1595	Bundle	4	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 08:37:25.000000000 Z\n	2022-09-09 08:39:51.242903
1596	CustomAttribute	33	create	0qa(1)	---\nid:\n- \n- 33\nattributable_id:\n- \n- 4\nattributable_type:\n- \n- Bundle\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"Cannot be combined with other offers","zh-CN":"不可叠加其他优惠"}'\ncreated_at:\n- \n- 2022-09-09 08:39:51.272269000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- Cannot be combined with other offers\nvalue_zh_cn:\n- \n- 不可叠加其他优惠\n	2022-09-09 08:39:51.272269
1597	Image	195	update	0qa(1)	---\ntarget_id:\n- 96\n- \ntarget_type:\n- ProductSku\n- \n	2022-09-09 08:40:11.997047
1598	Image	196	create	0qa(1)	---\nid:\n- \n- 196\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 08:40:25.986445000 Z\n	2022-09-09 08:40:25.986445
1599	ProductSku	96	update	0qa(1)	---\noutlet_sku_id:\n- 2\n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-09 08:40:34.521637
1600	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-09 08:40:34.532141
1601	Bundle	4	update	0qa(1)	---\nranking:\n- 2\n- 47\n	2022-09-09 08:42:12.277468
1605	Bundle	5	update	0qa(1)	---\nranking:\n- \n- 50\n	2022-09-09 08:42:56.7782
1606	BundleItem	12	update	0qa(1)	---\nbundleable_id:\n- 1\n- 3\n	2022-09-09 08:42:56.78786
1607	Bundle	5	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 08:43:09.000000000 Z\n	2022-09-09 08:43:10.884033
1608	Bundle	6	update	0qa(1)	---\nranking:\n- 3\n- 49\n	2022-09-09 08:43:56.486677
1610	Bundle	8	update	0qa(1)	---\nranking:\n- 1\n- 48\n	2022-09-09 08:49:48.845737
1611	BundleItem	19	update	0qa(1)	---\nbundleable_id:\n- 1\n- 68\n	2022-09-09 08:49:48.858018
1612	Bundle	9	update	0qa(1)	---\nranking:\n- \n- 47\n	2022-09-09 08:50:19.546454
1613	BundleItem	23	update	0qa(1)	---\nbundleable_id:\n- 1\n- 5\n	2022-09-09 08:50:19.571875
1642	ProductSku	101	create	0qa(1)	---\nid:\n- \n- 101\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 5\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 09:54:51.701347000 Z\n	2022-09-09 09:54:51.701347
1643	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 09:29:58.026525
1644	ChannelSellable	240	create	0qa(1)	---\nid:\n- \n- 240\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 4\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 02:21:08.027747000 Z\n	2022-09-13 02:21:08.027747
1645	Image	200	create	0qa(1)	---\nid:\n- \n- 200\nimage:\n- \n- Elephant_Keychain.png\ncreated_at:\n- \n- 2022-09-13 02:21:56.675768000 Z\n	2022-09-13 02:21:56.675768
1646	ChannelSellable	241	create	0qa(1)	---\nid:\n- \n- 241\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 5\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 02:22:00.770186000 Z\n	2022-09-13 02:22:00.770186
1647	ChannelSellable	242	create	0qa(1)	---\nid:\n- \n- 242\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 5\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 02:22:00.777633000 Z\n	2022-09-13 02:22:00.777633
1648	Image	201	create	0qa(1)	---\nid:\n- \n- 201\nimage:\n- \n- de8a7004-0a89-4b50-88d9-89b4c5ec0df1.png\ncreated_at:\n- \n- 2022-09-13 02:23:23.396859000 Z\n	2022-09-13 02:23:23.396859
1649	ProductSku	102	create	0qa(1)	---\nid:\n- \n- 102\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 51\nmaster_sku_ref:\n- \n- '12345'\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 102\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-13 02:23:25.471131000 Z\n	2022-09-13 02:23:25.471131
1650	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 09:29:58.026525
1651	Image	202	create	0qa(1)	---\nid:\n- \n- 202\nimage:\n- \n- 水獭l.png\ncreated_at:\n- \n- 2022-09-13 02:24:22.509944000 Z\n	2022-09-13 02:24:22.509944
1652	Product	29	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-20 16:00:00.000000000 Z\n	2022-09-13 02:24:25.205873
944	Image	139	create	0qa(1)	---\nid:\n- \n- 139\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:06:56.802634000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:06:56.802634000 Z\n	2022-09-08 06:06:56.802634
1422	Product	2	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Our featured product","zh-CN":"本店特色产品"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:18:59.000000000 Z\ninitial_sold_quantity:\n- \n- 100\nshort_desc_en:\n- \n- Our featured product\nshort_desc_zh_cn:\n- \n- 本店特色产品\n	2022-09-09 03:35:42.373254
947	OutletSkuView	2	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.395999
948	OutletSkuView	3	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.41408
949	OutletSkuView	4	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.453328
950	OutletSkuView	5	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.492163
951	OutletSkuView	6	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.521987
952	OutletSkuView	7	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.542182
953	OutletSkuView	8	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.563758
954	OutletSkuView	9	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.585411
955	OutletSkuView	10	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.604435
956	OutletSkuView	11	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.624395
957	OutletSkuView	12	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.656558
958	OutletSkuView	13	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.674813
959	OutletSkuView	14	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.692765
960	OutletSkuView	15	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.709421
961	OutletSkuView	16	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.727285
962	OutletSkuView	17	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.749101
963	OutletSkuView	18	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.767112
1614	Image	197	create	0qa(1)	---\nid:\n- \n- 197\nimage:\n- \n- __Fries小.png\ncreated_at:\n- \n- 2022-09-09 09:01:33.165333000 Z\n	2022-09-09 09:01:33.165333
964	OutletSkuView	19	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.786778
965	OutletSkuView	20	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.804624
966	OutletSkuView	21	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.82541
967	OutletSkuView	22	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.84277
968	OutletSkuView	23	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.897541
969	OutletSkuView	24	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.944202
970	OutletSkuView	25	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.971743
971	OutletSkuView	26	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:11.989527
972	OutletSkuView	27	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:12.012641
973	OutletSkuView	28	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:12.028773
974	OutletSkuView	29	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:11.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:11.000000000 Z\n	2022-09-08 06:08:12.045732
975	OutletSkuView	30	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.062716
976	OutletSkuView	31	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.079489
977	OutletSkuView	32	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.096737
978	OutletSkuView	33	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.113277
979	OutletSkuView	34	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:41.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:41.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.13433
980	OutletSkuView	35	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.151832
981	OutletSkuView	36	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.169777
982	OutletSkuView	37	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.18797
983	OutletSkuView	38	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.204236
984	OutletSkuView	39	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.22133
985	OutletSkuView	40	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.239105
986	OutletSkuView	41	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.258179
987	OutletSkuView	42	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.28567
988	OutletSkuView	43	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.308443
989	OutletSkuView	44	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.323793
990	OutletSkuView	45	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.340295
991	OutletSkuView	47	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.36206
992	OutletSkuView	49	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:54:42.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:54:42.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.391974
993	OutletSkuView	50	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 03:56:37.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 03:56:37.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:12.000000000 Z\n	2022-09-08 06:08:12.408378
994	SkuView	2	update	\N	---\nname:\n- '{"en":"Hainan Chicken Rice"}'\n- '{"en":"Hainan Chicken Rice","zh-CN":"海南鸡肉饭"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 海南鸡肉饭\n	2022-09-08 06:08:35.343026
995	SkuView	3	update	\N	---\nname:\n- '{"en":"Small Lion Toy"}'\n- '{"en":"Small Lion Toy","zh-CN":"小号狮子玩具"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小号狮子玩具\n	2022-09-08 06:08:35.359131
996	SkuView	4	update	\N	---\nname:\n- '{"en":"Roast Chicken"}'\n- '{"en":"Roast Chicken","zh-CN":"烤鸡"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 烤鸡\n	2022-09-08 06:08:35.378515
997	SkuView	6	update	\N	---\nname:\n- '{"en":"Grapefruit Guice"}'\n- '{"en":"Grapefruit Guice","zh-CN":"鲜榨西柚汁"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 鲜榨西柚汁\n	2022-09-08 06:08:35.390835
998	SkuView	5	update	\N	---\nname:\n- '{"en":"Grape Guice"}'\n- '{"en":"Grape Guice","zh-CN":"鲜榨葡萄汁"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 鲜榨葡萄汁\n	2022-09-08 06:08:35.404937
999	SkuView	8	update	\N	---\nname:\n- '{"en":"Small Flamingo T-Shirt"}'\n- '{"en":"Small Flamingo T-Shirt","zh-CN":"小号火烈鸟体恤衫"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小号火烈鸟体恤衫\n	2022-09-08 06:08:35.422373
1693	Product	8	update	0qa(1)	---\ndesc:\n- \n- '{"en":"Worth a try","zh-CN":"值得一试"}'\ndesc_en:\n- \n- Worth a try\ndesc_zh_cn:\n- \n- 值得一试\n	2022-09-13 03:38:56.829721
1000	SkuView	7	update	\N	---\nname:\n- '{"en":"Grey Large Kangaroo Doll"}'\n- '{"en":"Grey Large Kangaroo Doll","zh-CN":"灰色大号袋鼠玩偶"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 灰色大号袋鼠玩偶\n	2022-09-08 06:08:35.438653
1001	SkuView	9	update	\N	---\nname:\n- '{"en":"Large Flamingo T-Shirt"}'\n- '{"en":"Large Flamingo T-Shirt","zh-CN":"大号火烈鸟体恤衫"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大号火烈鸟体恤衫\n	2022-09-08 06:08:35.454753
1002	SkuView	10	update	\N	---\nname:\n- '{"en":"Zebra Badge"}'\n- '{"en":"Zebra Badge","zh-CN":"斑马徽章"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 斑马徽章\n	2022-09-08 06:08:35.471601
1003	SkuView	11	update	\N	---\nname:\n- '{"en":"Medium Giraffe Pillow"}'\n- '{"en":"Medium Giraffe Pillow","zh-CN":"中号长劲鹿抱枕"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 中号长劲鹿抱枕\n	2022-09-08 06:08:35.494786
1004	SkuView	12	update	\N	---\nname:\n- '{"en":"Elephant Keychain"}'\n- '{"en":"Elephant Keychain","zh-CN":"大象钥匙扣"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大象钥匙扣\n	2022-09-08 06:08:35.508703
1005	SkuView	13	update	\N	---\nname:\n- '{"en":"Blue Otter Cup"}'\n- '{"en":"Blue Otter Cup","zh-CN":"蓝色水獭杯"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 蓝色水獭杯\n	2022-09-08 06:08:35.524934
1006	SkuView	14	update	\N	---\nname:\n- '{"en":"Green Otter Cup"}'\n- '{"en":"Green Otter Cup","zh-CN":"绿色水獭杯"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 绿色水獭杯\n	2022-09-08 06:08:35.539881
1007	SkuView	15	update	\N	---\nname:\n- '{"en":"Large Beef Burger"}'\n- '{"en":"Large Beef Burger","zh-CN":"大号牛肉汉堡"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大号牛肉汉堡\n	2022-09-08 06:08:35.559439
1008	SkuView	16	update	\N	---\nname:\n- '{"en":"Small Beef Burger"}'\n- '{"en":"Small Beef Burger","zh-CN":"小份牛肉汉堡"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小份牛肉汉堡\n	2022-09-08 06:08:35.57868
1009	SkuView	17	update	\N	---\nname:\n- '{"en":"Flamingo Water Cup"}'\n- '{"en":"Flamingo Water Cup","zh-CN":"火烈鸟水杯"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 火烈鸟水杯\n	2022-09-08 06:08:35.594932
1010	SkuView	18	update	\N	---\nname:\n- '{"en":"Small Coke"}'\n- '{"en":"Small Coke","zh-CN":"小杯可乐"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小杯可乐\n	2022-09-08 06:08:35.613134
1011	SkuView	19	update	\N	---\nname:\n- '{"en":"Large Fries"}'\n- '{"en":"Large Fries","zh-CN":"大份薯条"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:13.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:13.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大份薯条\n	2022-09-08 06:08:35.631172
1012	SkuView	20	update	\N	---\nname:\n- '{"en":"Large Coke"}'\n- '{"en":"Large Coke","zh-CN":"大杯可乐"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大杯可乐\n	2022-09-08 06:08:35.654542
1013	SkuView	21	update	\N	---\nname:\n- '{"en":"Small Fries-"}'\n- '{"en":"Small Fries-","zh-CN":"小份薯条"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小份薯条\n	2022-09-08 06:08:35.681885
1423	PreferenceGroup	10	create	0qa(1)	---\nid:\n- \n- 10\nproduct_id:\n- \n- 2\nname:\n- \n- '{"en":"toppings","zh-CN":"加料"}'\nmin_selection:\n- 1\n- 0\nmax_selection:\n- 1\n- 2\ncreated_at:\n- \n- 2022-09-09 03:35:42.421018000 Z\nname_en:\n- \n- toppings\nname_zh_cn:\n- \n- 加料\n	2022-09-09 03:35:42.421018
1694	Image	205	create	0qa(1)	---\nid:\n- \n- 205\nimage:\n- \n- 鸡饭.png\ncreated_at:\n- \n- 2022-09-13 03:39:44.324912000 Z\n	2022-09-13 03:39:44.324912
1014	SkuView	22	update	\N	---\nname:\n- '{"en":"Indian Turmeric Rice"}'\n- '{"en":"Indian Turmeric Rice","zh-CN":"印度黄姜炒饭"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 印度黄姜炒饭\n	2022-09-08 06:08:35.72907
1015	SkuView	23	update	\N	---\nname:\n- '{"en":"Small Penguin Doll"}'\n- '{"en":"Small Penguin Doll","zh-CN":"小号企鹅公仔"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小号企鹅公仔\n	2022-09-08 06:08:35.811839
1016	SkuView	24	update	\N	---\nname:\n- '{"en":"Medium Penguin Doll"}'\n- '{"en":"Medium Penguin Doll","zh-CN":"中号企鹅公仔"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 中号企鹅公仔\n	2022-09-08 06:08:35.830378
1017	SkuView	25	update	\N	---\nname:\n- '{"en":"Large Penguin Doll"}'\n- '{"en":"Large Penguin Doll","zh-CN":"大号企鹅公仔"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大号企鹅公仔\n	2022-09-08 06:08:35.846312
1018	SkuView	26	update	\N	---\nname:\n- '{"en":"Large Blue Parrot Doll"}'\n- '{"en":"Large Blue Parrot Doll","zh-CN":"大号蓝色鹦鹉玩偶"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大号蓝色鹦鹉玩偶\n	2022-09-08 06:08:35.862864
1019	SkuView	27	update	\N	---\nname:\n- '{"en":"Medium Red Parrot Doll"}'\n- '{"en":"Medium Red Parrot Doll","zh-CN":"中号红色鹦鹉玩偶"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 中号红色鹦鹉玩偶\n	2022-09-08 06:08:35.87851
1020	SkuView	28	update	\N	---\nname:\n- '{"en":"Small White Parrot Doll"}'\n- '{"en":"Small White Parrot Doll","zh-CN":"小号白色鹦鹉玩偶"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小号白色鹦鹉玩偶\n	2022-09-08 06:08:35.902401
1021	SkuView	29	update	\N	---\nname:\n- '{"en":"Tomato Pasta"}'\n- '{"en":"Tomato Pasta","zh-CN":"番茄意面"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 番茄意面\n	2022-09-08 06:08:35.919061
1022	SkuView	30	update	\N	---\nname:\n- '{"en":"Large Otter Doll"}'\n- '{"en":"Large Otter Doll","zh-CN":"大号水獭公仔"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大号水獭公仔\n	2022-09-08 06:08:35.938513
1023	SkuView	31	update	\N	---\nname:\n- '{"en":"Small Otter Doll"}'\n- '{"en":"Small Otter Doll","zh-CN":"小号水獭公仔"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小号水獭公仔\n	2022-09-08 06:08:35.976283
1024	SkuView	32	update	\N	---\nname:\n- '{"en":"Panda Hat"}'\n- '{"en":"Panda Hat","zh-CN":"熊猫帽"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 熊猫帽\n	2022-09-08 06:08:36.003194
1025	SkuView	33	update	\N	---\nname:\n- '{"en":"Large Panda Doll"}'\n- '{"en":"Large Panda Doll","zh-CN":"大号熊猫玩具"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 大号熊猫玩具\n	2022-09-08 06:08:36.02186
1026	SkuView	34	update	\N	---\nname:\n- '{"en":"Small Panda Doll"}'\n- '{"en":"Small Panda Doll","zh-CN":"小号熊猫玩具"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 小号熊猫玩具\n	2022-09-08 06:08:36.040227
1027	SkuView	35	update	\N	---\nname:\n- '{"en":"Red Bean Ice"}'\n- '{"en":"Red Bean Ice","zh-CN":"红豆冰"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:35.000000000 Z\nname_zh_cn:\n- \n- 红豆冰\n	2022-09-08 06:08:36.059078
1424	PreferenceItem	24	create	0qa(1)	---\nid:\n- \n- 24\npreference_group_id:\n- \n- 10\nname:\n- \n- '{"en":"cheese slices","zh-CN":"芝士片"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncreated_at:\n- \n- 2022-09-09 03:35:42.439878000 Z\nname_en:\n- \n- cheese slices\nname_zh_cn:\n- \n- 芝士片\n	2022-09-09 03:35:42.439878
1028	SkuView	36	update	\N	---\nname:\n- '{"en":"Large Curry Chicken Rices"}'\n- '{"en":"Large Curry Chicken Rices","zh-CN":"大份咖喱鸡肉饭"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 大份咖喱鸡肉饭\n	2022-09-08 06:08:36.073179
1029	SkuView	37	update	\N	---\nname:\n- '{"en":"Small Curry Chicken Rices"}'\n- '{"en":"Small Curry Chicken Rices","zh-CN":"小份咖喱鸡肉饭"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 小份咖喱鸡肉饭\n	2022-09-08 06:08:36.09078
1030	SkuView	38	update	\N	---\nname:\n- '{"en":"Indian Pilaf"}'\n- '{"en":"Indian Pilaf","zh-CN":"印度手抓饭"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 印度手抓饭\n	2022-09-08 06:08:36.102775
1031	SkuView	39	update	\N	---\nname:\n- '{"en":"Indian Pancakes"}'\n- '{"en":"Indian Pancakes","zh-CN":"印度甩饼"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 印度甩饼\n	2022-09-08 06:08:36.129831
1032	SkuView	40	update	\N	---\nname:\n- '{"en":"Medium Lion Toy"}'\n- '{"en":"Medium Lion Toy","zh-CN":"中号狮子玩具"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 中号狮子玩具\n	2022-09-08 06:08:36.144408
1033	SkuView	41	update	\N	---\nname:\n- '{"en":"Large Lion Toy"}'\n- '{"en":"Large Lion Toy","zh-CN":"大号狮子玩具"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 大号狮子玩具\n	2022-09-08 06:08:36.160947
1034	SkuView	42	update	\N	---\nname:\n- '{"en":"Black Pepper Steak"}'\n- '{"en":"Black Pepper Steak","zh-CN":"黑椒牛排"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 黑椒牛排\n	2022-09-08 06:08:36.17566
1035	SkuView	43	update	\N	---\nname:\n- '{"en":"Large Seafood Pizza"}'\n- '{"en":"Large Seafood Pizza","zh-CN":"大份海鲜披萨"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 大份海鲜披萨\n	2022-09-08 06:08:36.189734
1036	SkuView	44	update	\N	---\nname:\n- '{"en":"Small Seafood Pizza"}'\n- '{"en":"Small Seafood Pizza","zh-CN":"小份海鲜披萨"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 小份海鲜披萨\n	2022-09-08 06:08:36.205458
1037	SkuView	45	update	\N	---\nname:\n- '{"en":"Large Durian Pizza"}'\n- '{"en":"Large Durian Pizza","zh-CN":"大份榴莲披萨"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 大份榴莲披萨\n	2022-09-08 06:08:36.227446
1038	SkuView	46	update	\N	---\nname:\n- '{"en":"Small Durian Pizza"}'\n- '{"en":"Small Durian Pizza","zh-CN":"小份榴莲披萨"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 小份榴莲披萨\n	2022-09-08 06:08:36.24098
1039	SkuView	47	update	\N	---\nname:\n- '{"en":"Vanilla Anchovy Shrimp"}'\n- '{"en":"Vanilla Anchovy Shrimp","zh-CN":"香草凤尾虾"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 香草凤尾虾\n	2022-09-08 06:08:36.260733
1040	SkuView	1	update	\N	---\nname:\n- '{"en":"Brown Small Kangaroo Doll"}'\n- '{"en":"Brown Small Kangaroo Doll","zh-CN":"棕色小号袋鼠玩偶"}'\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 02:52:14.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 02:52:14.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:08:36.000000000 Z\nname_zh_cn:\n- \n- 棕色小号袋鼠玩偶\n	2022-09-08 06:08:36.275482
1041	OutletSkuView	51	create	\N	---\nid:\n- \n- 51\noutlet_sku_id:\n- \n- 51\nquantity:\n- \n- 10\nsku_id:\n- \n- 50\noutlet_id:\n- \n- 3\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.691383000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:17.691383000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:19:17.000000000 Z\n	2022-09-08 06:19:17.691383
1102	Bundle	10	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:-0.2e1\ndesc:\n- \n- \nshort_desc:\n- \n- \n	2022-09-08 07:00:25.88329
1042	SkuView	48	create	\N	---\nid:\n- \n- 48\nsku_id:\n- \n- 50\nmaster_sku_ref:\n- \n- '12345'\nname:\n- \n- '{"en":"test","zh-CN":"测试"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.735295000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:17.735295000 Z\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-01 00:00:00.000000000 Z\n  zone: *1\n  time: 2022-09-01 00:00:00.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:19:17.000000000 Z\nname_en:\n- \n- test\nname_zh_cn:\n- \n- 测试\n	2022-09-08 06:19:17.735295
1043	SkuView	48	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:17.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:17.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:39.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:19:39.000000000 Z\n	2022-09-08 06:19:39.53361
1044	Image	140	create	0qa(1)	---\nid:\n- \n- 140\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:21:21.541527000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:21:21.541527000 Z\n	2022-09-08 06:21:21.541527
1045	Image	141	create	0qa(1)	---\nid:\n- \n- 141\nimage:\n- \n- 水獭green.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:21:52.834859000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:21:52.834859000 Z\n	2022-09-08 06:21:52.834859
1425	PreferenceItem	25	create	0qa(1)	---\nid:\n- \n- 25\npreference_group_id:\n- \n- 10\nname:\n- \n- '{"en":"tomato","zh-CN":"番茄"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- 2022-09-09 03:35:42.447186000 Z\nname_en:\n- \n- tomato\nname_zh_cn:\n- \n- 番茄\n	2022-09-09 03:35:42.447186
1426	PreferenceItem	26	create	0qa(1)	---\nid:\n- \n- 26\npreference_group_id:\n- \n- 10\nname:\n- \n- '{"en":"lettuce","zh-CN":"生菜"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\ncreated_at:\n- \n- 2022-09-09 03:35:42.453253000 Z\nname_en:\n- \n- lettuce\nname_zh_cn:\n- \n- 生菜\n	2022-09-09 03:35:42.453253
1427	CustomAttribute	16	create	0qa(1)	---\nid:\n- \n- 16\nattributable_id:\n- \n- 2\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"Beef Hamburger","zh-CN":"牛肉汉堡"}'\nvalue:\n- \n- '{"en":"beef","zh-CN":"牛肉"}'\ncreated_at:\n- \n- 2022-09-09 03:35:42.462824000 Z\nname_en:\n- \n- Beef Hamburger\nname_zh_cn:\n- \n- 牛肉汉堡\nvalue_en:\n- \n- beef\nvalue_zh_cn:\n- \n- 牛肉\n	2022-09-09 03:35:42.462824
1428	Image	184	create	0qa(1)	---\nid:\n- \n- 184\nimage:\n- \n- giraffe_pillow.png\ncreated_at:\n- \n- 2022-09-09 03:37:03.470542000 Z\n	2022-09-09 03:37:03.470542
1429	Product	3	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 03:35:58.000000000 Z\ninitial_sold_quantity:\n- \n- 100\n	2022-09-09 03:37:07.575462
1430	CustomAttribute	17	create	0qa(1)	---\nid:\n- \n- 17\nattributable_id:\n- \n- 3\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"medium","zh-CN":"中号"}'\nvalue:\n- \n- '{"en":"yellow","zh-CN":"黄色"}'\ncreated_at:\n- \n- 2022-09-09 03:37:07.622373000 Z\nname_en:\n- \n- medium\nname_zh_cn:\n- \n- 中号\nvalue_en:\n- \n- yellow\nvalue_zh_cn:\n- \n- 黄色\n	2022-09-09 03:37:07.622373
1052	Image	142	create	0qa(1)	---\nid:\n- \n- 142\nimage:\n- \n- a3cf58b4e172040__1_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:22:07.537948000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:22:07.537948000 Z\n	2022-09-08 06:22:07.537948
1053	Product	49	create	0qa(1)	---\nid:\n- \n- 49\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:22:18.786595000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:22:18.786595000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 06:22:18.786595
1054	ChannelSellable	165	create	0qa(1)	---\nid:\n- \n- 165\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 49\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:22:18.797230000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:22:18.797230000 Z\n	2022-09-08 06:22:18.79723
1055	CustomAttribute	1	create	0qa(1)	---\nid:\n- \n- 1\nattributable_id:\n- \n- 49\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"color","zh-CN":"颜色"}'\nvalue:\n- \n- '{"en":"blue","zh-CN":"蓝"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:22:18.820966000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:22:18.820966000 Z\nname_en:\n- \n- color\nname_zh_cn:\n- \n- 颜色\nvalue_en:\n- \n- blue\nvalue_zh_cn:\n- \n- 蓝\n	2022-09-08 06:22:18.820966
1056	CustomAttribute	2	create	0qa(1)	---\nid:\n- \n- 2\nattributable_id:\n- \n- 49\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"12","zh-CN":"34"}'\nvalue:\n- \n- '{"en":"45","zh-CN":"56"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:22:18.828481000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:22:18.828481000 Z\nname_en:\n- \n- '12'\nname_zh_cn:\n- \n- '34'\nvalue_en:\n- \n- '45'\nvalue_zh_cn:\n- \n- '56'\n	2022-09-08 06:22:18.828481
1057	ProductSku	51	create	0qa(1)	---\nid:\n- \n- 51\nshop_id:\n- \n- 2\noutlet_sku_id:\n- \n- 51\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nproduct_id:\n- \n- 49\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:22:18.840360000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:22:18.840360000 Z\n	2022-09-08 06:22:18.84036
1058	Product	49	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-08 06:22:18.850479
1059	Image	143	create	0qa(1)	---\nid:\n- \n- 143\nimage:\n- \n- 水獭green.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:25:50.866635000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:25:50.866635000 Z\n	2022-09-08 06:25:50.866635
1431	Product	4	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Recommended choice for zebra lovers","zh-CN":"斑马爱好者推荐选择"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:38:03.000000000 Z\ninitial_sold_quantity:\n- \n- 200\nshort_desc_en:\n- \n- Recommended choice for zebra lovers\nshort_desc_zh_cn:\n- \n- 斑马爱好者推荐选择\n	2022-09-09 03:38:42.959862
1432	CustomAttribute	18	create	0qa(1)	---\nid:\n- \n- 18\nattributable_id:\n- \n- 4\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"same size","zh-CN":"相同大小"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 03:38:42.997332000 Z\nname_en:\n- \n- same size\nname_zh_cn:\n- \n- 相同大小\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 03:38:42.997332
1676	ProductSku	58	update	0qa(1)	---\noutlet_sku_id:\n- 2\n- 3\nmaster_sku_ref:\n- SZ-GS-Kangaroo Doll-Gr-L\n- SZ-GS-Giraffe Pillow-M\nprice:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-13 03:24:51.082325
1433	Product	5	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"small pendant","zh-CN":"小挂件"}'\ndesc:\n- \n- '{"en":"You can use this product on door keys, car keys or other places where you\n  can hang it","zh-CN":"您可以使用在该产品在门钥匙、车钥匙或者其他可挂的地方"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:41:10.000000000 Z\ninitial_sold_quantity:\n- \n- 11\ndesc_en:\n- \n- You can use this product on door keys, car keys or other places where you can hang\n  it\ndesc_zh_cn:\n- \n- 您可以使用在该产品在门钥匙、车钥匙或者其他可挂的地方\nshort_desc_en:\n- \n- small pendant\nshort_desc_zh_cn:\n- \n- 小挂件\n	2022-09-09 03:43:17.653716
1434	CustomAttribute	19	create	0qa(1)	---\nid:\n- \n- 19\nattributable_id:\n- \n- 5\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"same size","zh-CN":"相同大小"}'\nvalue:\n- \n- '{"en":"colorful","zh-CN":"彩色"}'\ncreated_at:\n- \n- 2022-09-09 03:43:17.687602000 Z\nname_en:\n- \n- same size\nname_zh_cn:\n- \n- 相同大小\nvalue_en:\n- \n- colorful\nvalue_zh_cn:\n- \n- 彩色\n	2022-09-09 03:43:17.687602
1435	Image	175	update	0qa(1)	---\ntarget_id:\n- 63\n- \ntarget_type:\n- ProductSku\n- \n	2022-09-09 03:43:40.239423
1436	Image	185	create	0qa(1)	---\nid:\n- \n- 185\nimage:\n- \n- _kangaroo_doll_grey_.png\ncreated_at:\n- \n- 2022-09-09 03:43:54.476688000 Z\n	2022-09-09 03:43:54.476688
1437	Product	6	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Our hot drink","zh-CN":"本店热销饮品"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:48:32.000000000 Z\ninitial_sold_quantity:\n- \n- 500\nshort_desc_en:\n- \n- Our hot drink\nshort_desc_zh_cn:\n- \n- 本店热销饮品\n	2022-09-09 03:48:59.510893
1438	PreferenceItem	23	update	0qa(1)	---\nsurcharge:\n- \n- !ruby/object:BigDecimal 18:0.1e1\n	2022-09-09 03:48:59.554957
1439	Product	7	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Our best-selling products.","zh-CN":"本店热销产品。"}'\ndesc:\n- \n- '{"en":"Recommended for potato lovers to buy this product.","zh-CN":"推荐土豆爱好者购买该产品。"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:49:53.000000000 Z\ninitial_sold_quantity:\n- \n- 11\ndesc_en:\n- \n- Recommended for potato lovers to buy this product.\ndesc_zh_cn:\n- \n- 推荐土豆爱好者购买该产品。\nshort_desc_en:\n- \n- Our best-selling products.\nshort_desc_zh_cn:\n- \n- 本店热销产品。\n	2022-09-09 03:53:18.95985
1440	PreferenceGroup	2	update	0qa(1)	---\nname:\n- '{"en":"Add ketchup","zh-CN":"加番茄酱"}'\n- '{"en":"Add Sauce","zh-CN":"加酱"}'\nmax_selection:\n- 0\n- 1\nname_en:\n- Add ketchup\n- Add Sauce\nname_zh_cn:\n- 加番茄酱\n- 加酱\n	2022-09-09 03:53:19.000726
1441	PreferenceItem	27	create	0qa(1)	---\nid:\n- \n- 27\npreference_group_id:\n- \n- 2\nname:\n- \n- '{"en":"ketchup","zh-CN":"蕃茄酱"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- 2022-09-09 03:53:19.007429000 Z\nname_en:\n- \n- ketchup\nname_zh_cn:\n- \n- 蕃茄酱\n	2022-09-09 03:53:19.007429
1072	Image	144	create	0qa(1)	---\nid:\n- \n- 144\nimage:\n- \n- a3cf58b4e172040.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:29:29.538446000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:29:29.538446000 Z\n	2022-09-08 06:29:29.538446
1442	PreferenceItem	28	create	0qa(1)	---\nid:\n- \n- 28\npreference_group_id:\n- \n- 2\nname:\n- \n- '{"en":"salad dressing","zh-CN":"沙拉酱"}'\nsurcharge:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e1\ncreated_at:\n- \n- 2022-09-09 03:53:19.014605000 Z\nname_en:\n- \n- salad dressing\nname_zh_cn:\n- \n- 沙拉酱\n	2022-09-09 03:53:19.014605
1074	Image	145	create	0qa(1)	---\nid:\n- \n- 145\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:34:41.390877000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:34:41.390877000 Z\n	2022-09-08 06:34:41.390877
1443	Product	8	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Indian specialties","zh-CN":"印度特色菜"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:53:54.000000000 Z\ninitial_sold_quantity:\n- \n- 100\nshort_desc_en:\n- \n- Indian specialties\nshort_desc_zh_cn:\n- \n- 印度特色菜\n	2022-09-09 03:54:25.952268
1076	Product	54	create	0qa(1)	---\nid:\n- \n- 54\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"11","zh-CN":"11"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:34:50.286567000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:34:50.286567000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '11'\n	2022-09-08 06:34:50.286567
1077	ProductSku	52	create	0qa(1)	---\nid:\n- \n- 52\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nproduct_id:\n- \n- 54\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:34:50.298108000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:34:50.298108000 Z\n	2022-09-08 06:34:50.298108
1078	Product	54	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 06:34:50.308508
1079	Image	146	create	0qa(1)	---\nid:\n- \n- 146\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:36:38.330675000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:36:38.330675000 Z\n	2022-09-08 06:36:38.330675
1080	Product	55	create	0qa(1)	---\nid:\n- \n- 55\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"11","zh-CN":"111"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- 10\nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:36:47.457542000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:36:47.457542000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '111'\n	2022-09-08 06:36:47.457542
1081	ProductSku	53	create	0qa(1)	---\nid:\n- \n- 53\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nproduct_id:\n- \n- 55\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:36:47.469868000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:36:47.469868000 Z\n	2022-09-08 06:36:47.469868
1082	Product	55	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 06:36:47.479031
1444	Product	9	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Welcome to buy this product","zh-CN":"欢迎购买本产品"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:55:15.000000000 Z\ninitial_sold_quantity:\n- \n- 90\nshort_desc_en:\n- \n- Welcome to buy this product\nshort_desc_zh_cn:\n- \n- 欢迎购买本产品\n	2022-09-09 03:55:30.609572
1445	Product	10	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Featured Products","zh-CN":"特色产品"}'\nopen_for_sale_at:\n- \n- 2022-09-09 03:56:03.000000000 Z\ninitial_sold_quantity:\n- \n- 200\nshort_desc_en:\n- \n- Featured Products\nshort_desc_zh_cn:\n- \n- 特色产品\n	2022-09-09 03:56:06.940865
1446	VoucherProduct	2	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-09 03:58:12.000000000 Z\n	2022-09-09 03:58:55.314822
1083	SkuView	48	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:19:39.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:19:39.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:39:39.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:39:39.000000000 Z\n	2022-09-08 06:39:39.524755
1084	SkuView	48	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:39:39.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:39:39.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:40:04.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:40:04.000000000 Z\n	2022-09-08 06:40:04.091856
1085	Image	147	create	0qa(1)	---\nid:\n- \n- 147\nimage:\n- \n- a3cf58b4e172040__1_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:52:23.969389000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:52:23.969389000 Z\n	2022-09-08 06:52:23.969389
1086	VoucherProduct	13	create	0qa(1)	---\nid:\n- \n- 13\nshop_id:\n- \n- 8\nvoucher_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\nactive:\n- true\n- false\nsearchable:\n- true\n- false\nranking:\n- 0\n- \ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:52:39.312501000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:52:39.312501000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 06:52:39.312501
1087	CustomAttribute	3	create	0qa(1)	---\nid:\n- \n- 3\nattributable_id:\n- \n- 13\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"1","zh-CN":"2"}'\nvalue:\n- \n- '{"en":"3","zh-CN":"4"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:52:39.324987000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:52:39.324987000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '2'\nvalue_en:\n- \n- '3'\nvalue_zh_cn:\n- \n- '4'\n	2022-09-08 06:52:39.324987
1088	ChannelSellable	176	create	0qa(1)	---\nid:\n- \n- 176\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 13\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:52:39.343743000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:52:39.343743000 Z\n	2022-09-08 06:52:39.343743
1089	ChannelSellable	177	create	0qa(1)	---\nid:\n- \n- 177\nchannel_id:\n- \n- 18\nsellable_id:\n- \n- 13\nsellable_type:\n- \n- VoucherProduct\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:52:39.355254000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:52:39.355254000 Z\n	2022-09-08 06:52:39.355254
1090	OutletSkuView	47	update	\N	---\nquantity:\n- 0\n- 100\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:12.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:08:12.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:53:28.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:53:28.000000000 Z\n	2022-09-08 06:53:28.813429
1091	CustomAttribute	2	update	0qa(1)	---\nvalue:\n- '{"en":"45","zh-CN":"56"}'\n- '{"en":"45","zh-CN":"561"}'\noverwritten:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:53:29.062787000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:53:29.062787000 Z\nvalue_zh_cn:\n- '56'\n- '561'\n	2022-09-08 06:53:29.06309
1092	CustomAttribute	3	update	0qa(1)	---\nname:\n- '{"en":"1","zh-CN":"2"}'\n- '{"en":"11","zh-CN":"2"}'\noverwritten:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:53:42.490517000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:53:42.490517000 Z\nname_en:\n- '1'\n- '11'\n	2022-09-08 06:53:42.490861
1093	Image	148	create	0qa(1)	---\nid:\n- \n- 148\nimage:\n- \n- a3cf58b4e172040__1_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:54:15.151715000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:54:15.151715000 Z\n	2022-09-08 06:54:15.151715
1094	SkuView	1	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:36.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:08:36.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:57:20.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:57:20.000000000 Z\n	2022-09-08 06:57:20.820952
1095	Image	149	create	0qa(1)	---\nid:\n- \n- 149\nimage:\n- \n- __Fries小.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:58:42.232681000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:58:42.232681000 Z\n	2022-09-08 06:58:42.232681
1096	SkuView	7	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:08:35.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:59:50.000000000 Z\n  zone: *1\n  time: 2022-09-08 06:59:50.000000000 Z\n	2022-09-08 06:59:50.826885
1097	Image	150	create	0qa(1)	---\nid:\n- \n- 150\nimage:\n- \n- a3cf58b4e172040__1_.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:59:55.046902000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:59:55.046902000 Z\n	2022-09-08 06:59:55.046902
1098	Bundle	10	create	0qa(1)	---\nid:\n- \n- 10\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"1","zh-CN":"1"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:25.844471000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:25.844471000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '1'\n	2022-09-08 07:00:25.844471
1099	ChannelSellable	178	create	0qa(1)	---\nid:\n- \n- 178\nchannel_id:\n- \n- 4\nsellable_id:\n- \n- 10\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:25.856113000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:25.856113000 Z\n	2022-09-08 07:00:25.856113
1100	ChannelSellable	179	create	0qa(1)	---\nid:\n- \n- 179\nchannel_id:\n- \n- 5\nsellable_id:\n- \n- 10\nsellable_type:\n- \n- Bundle\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:25.863917000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:25.863917000 Z\n	2022-09-08 07:00:25.863917
1101	BundleItem	24	create	0qa(1)	---\nid:\n- \n- 24\nbundle_id:\n- \n- 10\nbundleable_id:\n- \n- 6\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e1\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.3e1\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:25.872533000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:25.872533000 Z\n	2022-09-08 07:00:25.872533
1695	ProductSku	80	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-AMR-Hainan Chicken Rice-A\n	2022-09-13 03:39:57.985406
1103	CustomAttribute	4	create	0qa(1)	---\nid:\n- \n- 4\nattributable_id:\n- \n- 10\nattributable_type:\n- \n- Bundle\nname:\n- \n- '{"en":"1","zh-CN":"2"}'\nvalue:\n- \n- '{"en":"3","zh-CN":"4"}'\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:25.889838000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:25.889838000 Z\nname_en:\n- \n- '1'\nname_zh_cn:\n- \n- '2'\nvalue_en:\n- \n- '3'\nvalue_zh_cn:\n- \n- '4'\n	2022-09-08 07:00:25.889838
1104	CustomAttribute	4	update	0qa(1)	---\nvalue:\n- '{"en":"3","zh-CN":"4"}'\n- '{"en":"3","zh-CN":"41"}'\noverwritten:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:44.984044000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:00:44.984044000 Z\nvalue_zh_cn:\n- '4'\n- '41'\n	2022-09-08 07:00:44.984402
1447	CustomAttribute	20	create	0qa(1)	---\nid:\n- \n- 20\nattributable_id:\n- \n- 2\nattributable_type:\n- \n- VoucherProduct\nname:\n- \n- '{"en":"KFC","zh-CN":"肯德基"}'\nvalue:\n- \n- '{"en":"Member Voucher","zh-CN":"会员优惠券"}'\ncreated_at:\n- \n- 2022-09-09 03:58:55.322392000 Z\nname_en:\n- \n- KFC\nname_zh_cn:\n- \n- 肯德基\nvalue_en:\n- \n- Member Voucher\nvalue_zh_cn:\n- \n- 会员优惠券\n	2022-09-09 03:58:55.322392
1615	Bundle	11	create	0qa(1)	---\nid:\n- \n- 11\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"11","zh-CN":"11"}'\ndesc:\n- \n- "{}"\nshort_desc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- 2022-09-09 09:01:34.437156000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '11'\n	2022-09-09 09:01:34.437156
1616	BundleItem	25	create	0qa(1)	---\nid:\n- \n- 25\nbundle_id:\n- \n- 11\nbundleable_id:\n- \n- 70\nbundleable_type:\n- \n- Product\nbundle_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nbaseline_price:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.111e3\ncreated_at:\n- \n- 2022-09-09 09:01:34.450632000 Z\n	2022-09-09 09:01:34.450632
1617	Bundle	11	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:-0.1e3\ndesc:\n- \n- \nshort_desc:\n- \n- \n	2022-09-09 09:01:34.462846
1618	ProductSku	97	create	0qa(1)	---\nid:\n- \n- 97\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 09:10:24.986550000 Z\n	2022-09-09 09:10:24.98655
1619	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 08:40:34.532141
1630	Image	198	create	0qa(1)	---\nid:\n- \n- 198\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 09:20:10.325146000 Z\n	2022-09-09 09:20:10.325146
1631	ProductSku	98	create	0qa(1)	---\nid:\n- \n- 98\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 102\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 09:20:29.179590000 Z\n	2022-09-09 09:20:29.17959
1632	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 08:40:34.532141
1633	ProductSku	99	create	0qa(1)	---\nid:\n- \n- 99\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 09:21:57.191122000 Z\n	2022-09-09 09:21:57.191122
1634	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 08:40:34.532141
1636	Image	199	create	0qa(1)	---\nid:\n- \n- 199\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 09:29:51.400064000 Z\n	2022-09-09 09:29:51.400064
1118	Image	151	create	0qa(1)	---\nid:\n- \n- 151\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:53.690878000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:53.690878000 Z\n	2022-09-08 07:12:53.690878
1119	Product	56	create	0qa(1)	---\nid:\n- \n- 56\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"11","zh-CN":"11"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.281996000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.281996000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '11'\n	2022-09-08 07:12:57.281996
1120	ChannelSellable	180	create	0qa(1)	---\nid:\n- \n- 180\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 56\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.290450000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.290450000 Z\n	2022-09-08 07:12:57.29045
1121	ChannelSellable	181	create	0qa(1)	---\nid:\n- \n- 181\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 56\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.296541000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.296541000 Z\n	2022-09-08 07:12:57.296541
1122	ChannelSellable	182	create	0qa(1)	---\nid:\n- \n- 182\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 56\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.302733000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.302733000 Z\n	2022-09-08 07:12:57.302733
1637	ProductSku	96	update	0qa(1)	---\noutlet_sku_id:\n- 50\n- 5\nprice:\n- !ruby/object:BigDecimal 27:0.125e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-09 09:29:58.016921
1638	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 27:0.125e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-09 09:29:58.026525
1653	Product	68	update	0qa(1)	---\nshort_desc:\n- \n- '{"en":"Our featured products","zh-CN":"本店特色商品"}'\nopen_for_sale_at:\n- \n- 2022-09-13 02:25:59.000000000 Z\ninitial_sold_quantity:\n- \n- 100\nshort_desc_en:\n- \n- Our featured products\nshort_desc_zh_cn:\n- \n- 本店特色商品\n	2022-09-13 02:26:32.026361
1654	ProductSku	76	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-GS-Giraffe Pillow-M\n	2022-09-13 02:26:33.177261
1665	SkuView	50	create	\N	---\nid:\n- \n- 50\nsku_id:\n- \n- 52\nmaster_sku_ref:\n- \n- '22'\nname:\n- \n- '{"en":"test2","zh-CN":"test2"}'\ncreated_at:\n- \n- 2022-09-13 03:05:59.775581000 Z\nlast_event_time:\n- 2022-09-01 00:00:00.000000000 Z\n- 2022-09-13 03:05:59.000000000 Z\nname_en:\n- \n- test2\nname_zh_cn:\n- \n- test2\n	2022-09-13 03:05:59.775581
1677	Product	3	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.15e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-13 03:24:51.093526
1678	ProductSku	72	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-GS-Zebra Badge-O-A\n	2022-09-13 03:25:19.404245
1680	ProductSku	72	update	0qa(1)	---\nprice:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.6e1\n	2022-09-13 03:31:19.533018
1681	Product	4	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.6e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.6e1\n	2022-09-13 03:31:19.548729
1105	SkuView	11	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:08:35.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:08:35.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:00:48.000000000 Z\n  zone: *1\n  time: 2022-09-08 07:00:48.000000000 Z\n	2022-09-08 07:00:48.240694
1448	Variation	66	create	0qa(1)	---\nid:\n- \n- 66\nproduct_id:\n- \n- 4\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\ncreated_at:\n- \n- 2022-09-09 06:17:43.042599000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-09 06:17:43.042599
1449	Variant	105	create	0qa(1)	---\nid:\n- \n- 105\nvariation_id:\n- \n- 66\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\ncreated_at:\n- \n- 2022-09-09 06:17:43.053939000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\n	2022-09-09 06:17:43.053939
1450	Variation	67	create	0qa(1)	---\nid:\n- \n- 67\nproduct_id:\n- \n- 4\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\ncreated_at:\n- \n- 2022-09-09 06:17:43.060914000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-09 06:17:43.060914
1451	Variant	106	create	0qa(1)	---\nid:\n- \n- 106\nvariation_id:\n- \n- 67\nname:\n- \n- '{"en":"orange","zh-CN":"橙色"}'\ncreated_at:\n- \n- 2022-09-09 06:17:43.066194000 Z\nname_en:\n- \n- orange\nname_zh_cn:\n- \n- 橙色\n	2022-09-09 06:17:43.066194
1452	ProductSku	72	create	0qa(1)	---\nid:\n- \n- 72\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 105\n  - 106\nproduct_id:\n- \n- 4\ncreated_at:\n- \n- 2022-09-09 06:17:43.079827000 Z\n	2022-09-09 06:17:43.079827
1453	Product	4	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-09 03:38:42.959862
1454	Variation	68	create	0qa(1)	---\nid:\n- \n- 68\nproduct_id:\n- \n- 5\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\ncreated_at:\n- \n- 2022-09-09 06:20:06.384844000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-09 06:20:06.384844
1455	Variant	107	create	0qa(1)	---\nid:\n- \n- 107\nvariation_id:\n- \n- 68\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\ncreated_at:\n- \n- 2022-09-09 06:20:06.393609000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\n	2022-09-09 06:20:06.393609
1456	Variation	69	create	0qa(1)	---\nid:\n- \n- 69\nproduct_id:\n- \n- 5\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\ncreated_at:\n- \n- 2022-09-09 06:20:06.403922000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-09 06:20:06.403922
1457	Variant	108	create	0qa(1)	---\nid:\n- \n- 108\nvariation_id:\n- \n- 69\nname:\n- \n- '{"en":"grey","zh-CN":"灰色"}'\ncreated_at:\n- \n- 2022-09-09 06:20:06.420488000 Z\nname_en:\n- \n- grey\nname_zh_cn:\n- \n- 灰色\n	2022-09-09 06:20:06.420488
1458	ProductSku	73	create	0qa(1)	---\nid:\n- \n- 73\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 5\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 107\n  - 108\nproduct_id:\n- \n- 5\ncreated_at:\n- \n- 2022-09-09 06:20:06.442371000 Z\n	2022-09-09 06:20:06.442371
1459	CustomAttribute	19	update	0qa(1)	---\nvalue:\n- '{"en":"colorful","zh-CN":"彩色"}'\n- '{"en":"grey","zh-CN":"灰色"}'\noverwritten:\n- \n- 2022-09-09 06:20:06.469760000 Z\nvalue_en:\n- colorful\n- grey\nvalue_zh_cn:\n- 彩色\n- 灰色\n	2022-09-09 06:20:06.470291
1460	SkuView	21	update	\N	---\nname:\n- '{"en":"Small Fries-","zh-CN":"小份薯条"}'\n- '{"en":"Small Fries","zh-CN":"小份薯条"}'\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 06:21:11.000000000 Z\nname_en:\n- Small Fries-\n- Small Fries\n	2022-09-09 06:21:11.325245
1461	SkuView	10	update	\N	---\nmaster_sku_ref:\n- SZ-GS-Zebra Badge\n- SZ-GS-Zebra Badge-O-A\nlast_event_time:\n- 2022-09-09 02:30:23.000000000 Z\n- 2022-09-09 06:21:59.000000000 Z\n	2022-09-09 06:21:59.123967
1462	Image	186	create	0qa(1)	---\nid:\n- \n- 186\nimage:\n- \n- Zebra_badge.png\ncreated_at:\n- \n- 2022-09-09 06:22:48.068685000 Z\n	2022-09-09 06:22:48.068685
1463	SkuView	12	update	\N	---\nmaster_sku_ref:\n- SZ-GS-Elephant Keychain\n- SZ-GS-Elephant Keychain-G-A\nlast_event_time:\n- 2022-09-09 02:30:03.000000000 Z\n- 2022-09-09 06:25:53.000000000 Z\n	2022-09-09 06:25:53.122595
1464	Image	187	create	0qa(1)	---\nid:\n- \n- 187\nimage:\n- \n- d1a20cf431adcbef1efc4b47a7af2edda2cc9fa2.jpg\ncreated_at:\n- \n- 2022-09-09 06:39:19.983826000 Z\n	2022-09-09 06:39:19.983826
1465	ProductSku	74	create	0qa(1)	---\nid:\n- \n- 74\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 101\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 06:39:42.934347000 Z\n	2022-09-09 06:39:42.934347
1466	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-09 06:39:42.947393
1467	ProductSku	70	update	0qa(1)	---\noutlet_sku_id:\n- 1\n- 4\nprice:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-09 06:39:42.955913
1468	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 06:39:42.947393
1469	ProductSku	71	update	0qa(1)	---\noutlet_sku_id:\n- 4\n- 51\nprice:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-09 06:39:42.977774
1470	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-09 06:39:42.986353
1471	Variation	70	create	0qa(1)	---\nid:\n- \n- 70\nproduct_id:\n- \n- 8\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 06:41:43.282346000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 06:41:43.282346
1472	Variant	109	create	0qa(1)	---\nid:\n- \n- 109\nvariation_id:\n- \n- 70\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 06:41:43.288338000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 06:41:43.288338
1473	ProductSku	75	create	0qa(1)	---\nid:\n- \n- 75\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 12\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.1e2\nvariant_ids:\n- []\n- - 109\nproduct_id:\n- \n- 8\ncreated_at:\n- \n- 2022-09-09 06:41:43.300479000 Z\n	2022-09-09 06:41:43.300479
1474	Product	8	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-09 03:54:25.952268
1475	ProductSku	70	update	0qa(1)	---\noutlet_sku_id:\n- 4\n- 1\nprice:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-09 06:46:06.918573
1476	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-09 06:46:06.929073
1477	Image	188	create	0qa(1)	---\nid:\n- \n- 188\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 06:47:31.741325000 Z\n	2022-09-09 06:47:31.741325
1478	ProductSku	76	create	0qa(1)	---\nid:\n- \n- 76\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 51\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 101\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 06:47:57.169561000 Z\n	2022-09-09 06:47:57.169561
1479	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 06:46:06.929073
1480	ProductSku	71	update	0qa(1)	---\noutlet_sku_id:\n- 51\n- 3\n	2022-09-09 06:47:57.193037
1620	OutletSkuView	49	update	\N	---\nquantity:\n- 100\n- 200\nlast_event_time:\n- 2022-09-08 06:08:12.000000000 Z\n- 2022-09-09 09:13:31.000000000 Z\n	2022-09-09 09:13:31.967448
1123	ChannelSellable	183	create	0qa(1)	---\nid:\n- \n- 183\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 56\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.309490000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.309490000 Z\n	2022-09-08 07:12:57.30949
1124	ChannelSellable	184	create	0qa(1)	---\nid:\n- \n- 184\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 56\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.318623000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.318623000 Z\n	2022-09-08 07:12:57.318623
1125	ProductSku	54	create	0qa(1)	---\nid:\n- \n- 54\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nproduct_id:\n- \n- 56\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:12:57.333940000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:12:57.333940000 Z\n	2022-09-08 07:12:57.33394
1126	Product	56	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-08 07:12:57.342694
1127	Image	152	create	0qa(1)	---\nid:\n- \n- 152\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:13:54.555161000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:13:54.555161000 Z\n	2022-09-08 07:13:54.555161
1128	Product	57	create	0qa(1)	---\nid:\n- \n- 57\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"11","zh-CN":"111"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:13:57.134742000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:13:57.134742000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '111'\n	2022-09-08 07:13:57.134742
1129	ProductSku	55	create	0qa(1)	---\nid:\n- \n- 55\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nproduct_id:\n- \n- 57\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:13:57.151666000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:13:57.151666000 Z\n	2022-09-08 07:13:57.151666
1130	Product	57	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-08 07:13:57.163961
1481	ProductSku	77	create	0qa(1)	---\nid:\n- \n- 77\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 3\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.15e2\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 06:48:50.486410000 Z\n	2022-09-09 06:48:50.48641
1482	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.15e2\n	2022-09-09 06:48:50.512503
1621	OutletSkuView	49	update	\N	---\nquantity:\n- 200\n- 100\nlast_event_time:\n- 2022-09-09 09:13:31.000000000 Z\n- 2022-09-09 09:15:36.000000000 Z\n	2022-09-09 09:15:36.715438
1622	VoucherSkuView	11	update	\N	---\nquantity:\n- 100\n- 120\nname:\n- '{"en":"SZ Cash Voucher"}'\n- '{"en":"SZ Cash Voucher","zh-CN":"新加坡动物园现金优惠券"}'\nlast_event_time:\n- 2022-09-08 02:53:19.000000000 Z\n- 2022-09-09 09:17:44.000000000 Z\nname_zh_cn:\n- \n- 新加坡动物园现金优惠券\n	2022-09-09 09:17:44.489768
1135	SkuView	48	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 06:40:04.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 06:40:04.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:17.000000000 Z\n  zone: *1\n  time: 2022-09-08 07:15:17.000000000 Z\n	2022-09-08 07:15:17.473157
1136	Product	58	create	0qa(1)	---\nid:\n- \n- 58\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"2","zh-CN":"2"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:51.292875000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:51.292875000 Z\nname_en:\n- \n- '2'\nname_zh_cn:\n- \n- '2'\n	2022-09-08 07:15:51.292875
1137	ChannelSellable	185	create	0qa(1)	---\nid:\n- \n- 185\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 58\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:51.309370000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:51.309370000 Z\n	2022-09-08 07:15:51.30937
1138	ChannelSellable	186	create	0qa(1)	---\nid:\n- \n- 186\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 58\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:51.319626000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:51.319626000 Z\n	2022-09-08 07:15:51.319626
1139	ChannelSellable	187	create	0qa(1)	---\nid:\n- \n- 187\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 58\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:51.330194000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:51.330194000 Z\n	2022-09-08 07:15:51.330194
1140	ChannelSellable	188	create	0qa(1)	---\nid:\n- \n- 188\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 58\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:51.340193000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:51.340193000 Z\n	2022-09-08 07:15:51.340193
1141	ChannelSellable	189	create	0qa(1)	---\nid:\n- \n- 189\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 58\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:51.350421000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:51.350421000 Z\n	2022-09-08 07:15:51.350421
1623	VoucherApplicableTargetView	72	create	\N	---\nid:\n- \n- 72\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift Shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- 2022-09-09 09:17:44.497088000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift Shop\n	2022-09-09 09:17:44.497088
1624	VoucherApplicableTargetView	73	create	\N	---\nid:\n- \n- 73\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Singapore Zoo Gift E-shop"}'\nvoucher_applicable_id:\n- \n- '1'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- 2022-09-09 09:17:44.503368000 Z\nvoucher_applicable_name_en:\n- \n- Singapore Zoo Gift E-shop\n	2022-09-09 09:17:44.503368
1625	VoucherApplicableTargetView	74	create	\N	---\nid:\n- \n- 74\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant"}'\nvoucher_applicable_id:\n- \n- '5'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- 2022-09-09 09:17:44.513592000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant\n	2022-09-09 09:17:44.513592
1483	Image	189	create	0qa(1)	---\nid:\n- \n- 189\nimage:\n- \n- Zebra_badge.png\ncreated_at:\n- \n- 2022-09-09 06:48:50.605285000 Z\n	2022-09-09 06:48:50.605285
1484	CustomAttribute	18	update	0qa(1)	---\nvalue:\n- '{"en":"colorful","zh-CN":"彩色"}'\n- '{"en":"orange","zh-CN":"橙色"}'\noverwritten:\n- \n- 2022-09-09 06:48:54.059483000 Z\nvalue_en:\n- colorful\n- orange\nvalue_zh_cn:\n- 彩色\n- 橙色\n	2022-09-09 06:48:54.059971
1485	Image	190	create	0qa(1)	---\nid:\n- \n- 190\nimage:\n- \n- d1a20cf431adcbef1efc4b47a7af2edda2cc9fa2.jpg\ncreated_at:\n- \n- 2022-09-09 07:02:19.170403000 Z\n	2022-09-09 07:02:19.170403
1146	Image	153	create	0qa(1)	---\nid:\n- \n- 153\nimage:\n- \n- __Fries-pro.png\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:30.481422000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:30.481422000 Z\n	2022-09-08 07:27:30.481422
1147	Product	59	create	0qa(1)	---\nid:\n- \n- 59\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"11","zh-CN":"11"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.158362000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.158362000 Z\nname_en:\n- \n- '11'\nname_zh_cn:\n- \n- '11'\n	2022-09-08 07:27:31.158362
1148	ChannelSellable	190	create	0qa(1)	---\nid:\n- \n- 190\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 59\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.170171000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.170171000 Z\n	2022-09-08 07:27:31.170171
1149	ChannelSellable	191	create	0qa(1)	---\nid:\n- \n- 191\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 59\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.180366000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.180366000 Z\n	2022-09-08 07:27:31.180366
1150	ChannelSellable	192	create	0qa(1)	---\nid:\n- \n- 192\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 59\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.190252000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.190252000 Z\n	2022-09-08 07:27:31.190252
1151	ChannelSellable	193	create	0qa(1)	---\nid:\n- \n- 193\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 59\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.203965000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.203965000 Z\n	2022-09-08 07:27:31.203965
1152	ChannelSellable	194	create	0qa(1)	---\nid:\n- \n- 194\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 59\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.214294000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.214294000 Z\n	2022-09-08 07:27:31.214294
1153	ProductSku	56	create	0qa(1)	---\nid:\n- \n- 56\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nproduct_id:\n- \n- 59\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:27:31.230320000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:27:31.230320000 Z\n	2022-09-08 07:27:31.23032
1154	Product	59	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-08 07:27:31.244827
1155	Product	60	create	0qa(1)	---\nid:\n- \n- 60\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"3","zh-CN":"3"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:28:07.934127000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:28:07.934127000 Z\nname_en:\n- \n- '3'\nname_zh_cn:\n- \n- '3'\n	2022-09-08 07:28:07.934127
1156	ChannelSellable	195	create	0qa(1)	---\nid:\n- \n- 195\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:28:07.945936000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:28:07.945936000 Z\n	2022-09-08 07:28:07.945936
1157	ChannelSellable	196	create	0qa(1)	---\nid:\n- \n- 196\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:28:07.955698000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:28:07.955698000 Z\n	2022-09-08 07:28:07.955698
1158	ChannelSellable	197	create	0qa(1)	---\nid:\n- \n- 197\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:28:07.967003000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:28:07.967003000 Z\n	2022-09-08 07:28:07.967003
1159	ChannelSellable	198	create	0qa(1)	---\nid:\n- \n- 198\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:28:07.986851000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:28:07.986851000 Z\n	2022-09-08 07:28:07.986851
1160	ChannelSellable	199	create	0qa(1)	---\nid:\n- \n- 199\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:28:07.996253000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:28:07.996253000 Z\n	2022-09-08 07:28:07.996253
1161	Product	61	create	0qa(1)	---\nid:\n- \n- 61\nshop_id:\n- \n- 3\nname:\n- \n- '{"en":"12","zh-CN":"22"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:30:13.490297000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:30:13.490297000 Z\nname_en:\n- \n- '12'\nname_zh_cn:\n- \n- '22'\n	2022-09-08 07:30:13.490297
1486	Image	191	create	0qa(1)	---\nid:\n- \n- 191\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 07:02:42.684751000 Z\n	2022-09-09 07:02:42.684751
1487	ProductSku	76	update	0qa(1)	---\noutlet_sku_id:\n- 51\n- 3\n	2022-09-09 07:03:01.157588
1488	ProductSku	78	create	0qa(1)	---\nid:\n- \n- 78\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 5\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 102\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 07:03:01.169301000 Z\n	2022-09-09 07:03:01.169301
1489	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-09 07:03:01.180407
1655	Product	70	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-13 02:26:50.000000000 Z\n	2022-09-13 02:26:52.834023
1162	Product	62	create	0qa(1)	---\nid:\n- \n- 62\nshop_id:\n- \n- 5\nname:\n- \n- '{"en":"22","zh-CN":"22"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:30:48.504350000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:30:48.504350000 Z\nname_en:\n- \n- '22'\nname_zh_cn:\n- \n- '22'\n	2022-09-08 07:30:48.50435
1163	Product	63	create	0qa(1)	---\nid:\n- \n- 63\nshop_id:\n- \n- 2\nname:\n- \n- '{"en":"22","zh-CN":"22"}'\nshort_desc:\n- \n- "{}"\ndesc:\n- \n- "{}"\nactive:\n- true\n- false\nranking:\n- 0\n- \nsearchable:\n- true\n- false\ninitial_sold_quantity:\n- 0\n- \ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:32:06.943351000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:32:06.943351000 Z\nname_en:\n- \n- '22'\nname_zh_cn:\n- \n- '22'\n	2022-09-08 07:32:06.943351
1164	Image	154	create	0qa(1)	---\nid:\n- \n- 154\nimage:\n- \n- city.jpeg\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:36.955559000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:36.955559000 Z\n	2022-09-08 07:48:36.955559
1165	ChannelSellable	200	create	0qa(1)	---\nid:\n- \n- 200\nchannel_id:\n- \n- 1\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:38.819253000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:38.819253000 Z\n	2022-09-08 07:48:38.819253
1166	ChannelSellable	201	create	0qa(1)	---\nid:\n- \n- 201\nchannel_id:\n- \n- 3\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:38.827368000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:38.827368000 Z\n	2022-09-08 07:48:38.827368
1167	ChannelSellable	202	create	0qa(1)	---\nid:\n- \n- 202\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:38.834405000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:38.834405000 Z\n	2022-09-08 07:48:38.834405
1168	ChannelSellable	203	create	0qa(1)	---\nid:\n- \n- 203\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:38.840576000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:38.840576000 Z\n	2022-09-08 07:48:38.840576
1169	ChannelSellable	204	create	0qa(1)	---\nid:\n- \n- 204\nchannel_id:\n- \n- 22\nsellable_id:\n- \n- 60\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:38.846545000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:38.846545000 Z\n	2022-09-08 07:48:38.846545
1170	ProductSku	57	create	0qa(1)	---\nid:\n- \n- 57\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 2\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nproduct_id:\n- \n- 60\ncreated_at:\n- \n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:48:38.862366000 Z\n  zone: !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:48:38.862366000 Z\n	2022-09-08 07:48:38.862366
1171	Product	60	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-08 07:48:38.873684
1172	SkuView	48	update	\N	---\nlast_event_time:\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:15:17.000000000 Z\n  zone: &1 !ruby/object:ActiveSupport::TimeZone\n    name: Etc/UTC\n  time: 2022-09-08 07:15:17.000000000 Z\n- !ruby/object:ActiveSupport::TimeWithZone\n  utc: 2022-09-08 07:51:07.000000000 Z\n  zone: *1\n  time: 2022-09-08 07:51:07.000000000 Z\n	2022-09-08 07:51:07.432098
1173	Image	155	create	0qa(1)	---\nid:\n- \n- 155\nimage:\n- \n- Kangaroo_Doll-_pro.png\ncreated_at:\n- \n- 2022-09-08 08:00:51.880770000 Z\n	2022-09-08 08:00:51.88077
1174	Image	156	create	0qa(1)	---\nid:\n- \n- 156\nimage:\n- \n- kangaroo_doll_brown_.jpeg\ncreated_at:\n- \n- 2022-09-08 08:01:41.098214000 Z\n	2022-09-08 08:01:41.098214
1490	SkuView	22	update	\N	---\nmaster_sku_ref:\n- SZ-AMR- Indian Turmeric Rice\n- SZ-AMR- Indian Turmeric Rice-A\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 07:18:54.000000000 Z\n	2022-09-09 07:18:54.85701
1491	SkuView	2	update	\N	---\nmaster_sku_ref:\n- SZ-AMR-Hainan Chicken Rice\n- SZ-AMR-Hainan Chicken Rice-A\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 07:19:16.000000000 Z\n	2022-09-09 07:19:16.610664
1494	SkuView	4	update	\N	---\nmaster_sku_ref:\n- SZ-AMR-Roast Chicken\n- SZ-AMR-Roast Chicken-A\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 07:22:51.000000000 Z\n	2022-09-09 07:22:51.135035
1495	SkuView	6	update	\N	---\nmaster_sku_ref:\n- SZ-AMR-Grapefruit Guice\n- SZ-AMR-Grapefruit Guice-A\nlast_event_time:\n- 2022-09-09 02:34:43.000000000 Z\n- 2022-09-09 07:23:20.000000000 Z\n	2022-09-09 07:23:20.30521
1496	SkuView	5	update	\N	---\nmaster_sku_ref:\n- SZ-AMR-Grape Guice\n- SZ-AMR-Grape Guice-A\nlast_event_time:\n- 2022-09-09 02:36:30.000000000 Z\n- 2022-09-09 07:23:42.000000000 Z\n	2022-09-09 07:23:42.852089
1497	SkuView	29	update	\N	---\nmaster_sku_ref:\n- BP-PH-Tomato Pasta\n- BP-PH-Tomato Pasta-A\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 07:24:24.000000000 Z\n	2022-09-09 07:24:25.032747
1498	SkuView	17	update	\N	---\nmaster_sku_ref:\n- BP-FHGS-Flamingo Water Cup\n- BP-FHGS-Flamingo Water Cup-A\nlast_event_time:\n- 2022-09-09 02:39:27.000000000 Z\n- 2022-09-09 07:25:49.000000000 Z\n	2022-09-09 07:25:49.277898
1499	SkuView	47	update	\N	---\nmaster_sku_ref:\n- BP-PH-Vanilla Anchovy Shrimp\n- BP-PH-Vanilla Anchovy Shrimp-A\nlast_event_time:\n- 2022-09-08 06:08:36.000000000 Z\n- 2022-09-09 07:26:09.000000000 Z\n	2022-09-09 07:26:09.18222
1500	SkuView	42	update	\N	---\nmaster_sku_ref:\n- BP-PH-Black Pepper Steak\n- BP-PH-Black Pepper Steak-A\nlast_event_time:\n- 2022-09-08 06:08:36.000000000 Z\n- 2022-09-09 07:26:28.000000000 Z\n	2022-09-09 07:26:28.56992
1501	SkuView	38	update	\N	---\nmaster_sku_ref:\n- NS-UUR-Indian Pilaf\n- NS-UUR-Indian Pilaf-A\nlast_event_time:\n- 2022-09-08 06:08:36.000000000 Z\n- 2022-09-09 07:26:43.000000000 Z\n	2022-09-09 07:26:43.598268
1502	SkuView	39	update	\N	---\nmaster_sku_ref:\n- NS-UUR-Indian Pancakes\n- NS-UUR-Indian Pancakes-A\nlast_event_time:\n- 2022-09-08 06:08:36.000000000 Z\n- 2022-09-09 07:27:03.000000000 Z\n	2022-09-09 07:27:03.151757
1503	SkuView	35	update	\N	---\nmaster_sku_ref:\n- NS-UUR-Red Bean Ice\n- NS-UUR-Red Bean Ice-A\nlast_event_time:\n- 2022-09-08 06:08:35.000000000 Z\n- 2022-09-09 07:27:22.000000000 Z\n	2022-09-09 07:27:22.955668
1504	SkuView	32	update	\N	---\nmaster_sku_ref:\n- RW-GS-Panda Hat\n- RW-GS-Panda Hat-A\nlast_event_time:\n- 2022-09-09 02:47:16.000000000 Z\n- 2022-09-09 07:27:46.000000000 Z\n	2022-09-09 07:27:46.741534
1505	SkuView	14	update	\N	---\nmaster_sku_ref:\n- RW-GS-Otter Cup-Gr\n- RW-GS-Otter Cup-Gr-A\nlast_event_time:\n- 2022-09-09 02:49:18.000000000 Z\n- 2022-09-09 07:28:21.000000000 Z\n	2022-09-09 07:28:21.181406
1492	ProductSku	79	create	0qa(1)	---\nid:\n- \n- 79\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 5\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.5e1\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 07:20:07.310355000 Z\n	2022-09-09 07:20:07.310355
1493	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 07:03:01.180407
1507	Variation	71	create	0qa(1)	---\nid:\n- \n- 71\nproduct_id:\n- \n- 9\nname:\n- \n- '{"en":"Size","zh-CN":"份量"}'\ncreated_at:\n- \n- 2022-09-09 07:30:07.248435000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 份量\n	2022-09-09 07:30:07.248435
1508	Variant	110	create	0qa(1)	---\nid:\n- \n- 110\nvariation_id:\n- \n- 71\nname:\n- \n- '{"en":"average","zh-CN":"均等份"}'\ncreated_at:\n- \n- 2022-09-09 07:30:07.254768000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均等份\n	2022-09-09 07:30:07.254768
1509	ProductSku	80	create	0qa(1)	---\nid:\n- \n- 80\nshop_id:\n- \n- 3\noutlet_sku_id:\n- \n- 13\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.8e1\nvariant_ids:\n- []\n- - 110\nproduct_id:\n- \n- 9\ncreated_at:\n- \n- 2022-09-09 07:30:07.268532000 Z\n	2022-09-09 07:30:07.268532
1510	Product	9	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-09 03:55:30.609572
1511	Image	192	create	0qa(1)	---\nid:\n- \n- 192\nimage:\n- \n- 武.jpg\ncreated_at:\n- \n- 2022-09-09 07:36:29.960575000 Z\n	2022-09-09 07:36:29.960575
1512	Image	192	update	0qa(1)	---\ntarget_id:\n- 79\n- \ntarget_type:\n- ProductSku\n- \n	2022-09-09 07:37:23.893973
1513	Image	193	create	0qa(1)	---\nid:\n- \n- 193\nimage:\n- \n- 1632544327_702756.png\ncreated_at:\n- \n- 2022-09-09 07:37:41.619869000 Z\n	2022-09-09 07:37:41.619869
1514	ProductSku	81	create	0qa(1)	---\nid:\n- \n- 81\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 102\n  - 103\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 07:37:50.443214000 Z\n	2022-09-09 07:37:50.443214
1515	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \n	2022-09-09 07:03:01.180407
1516	ProductSku	82	create	0qa(1)	---\nid:\n- \n- 82\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 101\n  - 104\nproduct_id:\n- \n- 70\ncreated_at:\n- \n- 2022-09-09 07:39:31.545658000 Z\n	2022-09-09 07:39:31.545658
1517	Product	70	update	0qa(1)	---\nshort_desc:\n- \n- \ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-09 07:39:31.555353
1518	Variation	72	create	0qa(1)	---\nid:\n- \n- 72\nproduct_id:\n- \n- 28\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\ncreated_at:\n- \n- 2022-09-09 07:44:02.016772000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-09 07:44:02.016772
1519	Variant	111	create	0qa(1)	---\nid:\n- \n- 111\nvariation_id:\n- \n- 72\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\ncreated_at:\n- \n- 2022-09-09 07:44:02.024035000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\n	2022-09-09 07:44:02.024035
1520	ProductSku	83	create	0qa(1)	---\nid:\n- \n- 83\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 43\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 111\nproduct_id:\n- \n- 28\ncreated_at:\n- \n- 2022-09-09 07:44:02.036684000 Z\n	2022-09-09 07:44:02.036684
1521	Product	28	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-08 09:29:54.168032
1626	VoucherApplicableTargetView	75	create	\N	---\nid:\n- \n- 75\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"Ah Meng Restaurant E-shop"}'\nvoucher_applicable_id:\n- \n- '3'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- 2022-09-09 09:17:44.517767000 Z\nvoucher_applicable_name_en:\n- \n- Ah Meng Restaurant E-shop\n	2022-09-09 09:17:44.517767
1627	VoucherApplicableTargetView	76	create	\N	---\nid:\n- \n- 76\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"KFC"}'\nvoucher_applicable_id:\n- \n- '4'\nvoucher_applicable_type:\n- \n- Outlet\ncreated_at:\n- \n- 2022-09-09 09:17:44.521838000 Z\nvoucher_applicable_name_en:\n- \n- KFC\n	2022-09-09 09:17:44.521838
1628	VoucherApplicableTargetView	77	create	\N	---\nid:\n- \n- 77\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- 2022-09-09 09:17:44.525900000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-09 09:17:44.5259
1629	VoucherApplicableTargetView	78	create	\N	---\nid:\n- \n- 78\nvoucher_sku_id:\n- \n- 13\nvoucher_applicable_name:\n- \n- '{"en":"E-KFC "}'\nvoucher_applicable_id:\n- \n- '2'\nvoucher_applicable_type:\n- \n- Shop\ncreated_at:\n- \n- 2022-09-09 09:17:44.529874000 Z\nvoucher_applicable_name_en:\n- \n- 'E-KFC '\n	2022-09-09 09:17:44.529874
1656	Channel	23	create	0qa(1)	---\nid:\n- \n- 23\nshop_id:\n- \n- 2\nname:\n- \n- APP\nkey:\n- \n- zUt6o689YU8NdCzUkSXhvzGhnd0ZzdVt\ncreated_at:\n- \n- 2022-09-13 02:29:38.408598000 Z\n	2022-09-13 02:29:38.408598
1657	Channel	24	create	0qa(1)	---\nid:\n- \n- 24\nshop_id:\n- \n- 2\nname:\n- \n- POS\nkey:\n- \n- WHWFztovOHzItZa0kJ7bf1YDvPEQ2Lp9\ncreated_at:\n- \n- 2022-09-13 02:29:59.703343000 Z\n	2022-09-13 02:29:59.703343
1658	ProductSku	62	update	0qa(1)	---\nprice:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-13 02:31:06.176634
1659	Product	68	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.1e2\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-13 02:31:06.189538
1660	ProductSku	63	update	0qa(1)	---\nprice:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.12e2\n	2022-09-13 02:31:06.207046
1661	Product	68	update	0qa(1)	---\ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.12e2\n	2022-09-13 02:31:06.215412
1666	Image	203	create	0qa(1)	---\nid:\n- \n- 203\nimage:\n- \n- 长.JPG\ncreated_at:\n- \n- 2022-09-13 03:07:14.924099000 Z\n	2022-09-13 03:07:14.924099
1672	ProductSku	58	update	0qa(1)	---\noutlet_sku_id:\n- 3\n- 5\nmaster_sku_ref:\n- \n- SZ-GS-Elephant Keychain-G-A\nprice:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-13 03:08:45.329528
1673	Product	3	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.5e1\nprice_high:\n- !ruby/object:BigDecimal 18:0.15e2\n- !ruby/object:BigDecimal 18:0.5e1\n	2022-09-13 03:08:45.340626
1674	ProductSku	58	update	0qa(1)	---\noutlet_sku_id:\n- 5\n- 2\nmaster_sku_ref:\n- SZ-GS-Elephant Keychain-G-A\n- SZ-GS-Kangaroo Doll-Gr-L\nprice:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-13 03:12:48.062721
1675	Product	3	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.11e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.5e1\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-13 03:12:48.073311
1679	SkuView	11	update	\N	---\nmaster_sku_ref:\n- SZ-GS-Giraffe Pillow-M\n- SZ-GS-Giraffe Pillow-Y-M\nlast_event_time:\n- 2022-09-08 07:00:48.000000000 Z\n- 2022-09-13 03:25:55.000000000 Z\n	2022-09-13 03:25:55.230408
1683	SkuView	11	update	\N	---\nname:\n- '{"en":"Medium Giraffe Pillow11","zh-CN":"中号长劲鹿抱枕"}'\n- '{"en":"Medium Giraffe Pillow","zh-CN":"中号长劲鹿抱枕"}'\nlast_event_time:\n- 2022-09-13 03:32:11.000000000 Z\n- 2022-09-13 03:33:43.000000000 Z\nname_en:\n- Medium Giraffe Pillow11\n- Medium Giraffe Pillow\n	2022-09-13 03:33:43.716043
1698	Image	207	create	0qa(1)	---\nid:\n- \n- 207\nimage:\n- \n- 西柚汁.png\ncreated_at:\n- \n- 2022-09-13 03:51:43.676240000 Z\n	2022-09-13 03:51:43.67624
1699	ProductSku	94	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-AMR-Grapefruit Guice-A\n	2022-09-13 03:51:46.756246
1700	Image	208	create	0qa(1)	---\nid:\n- \n- 208\nimage:\n- \n- 葡萄汁.png\ncreated_at:\n- \n- 2022-09-13 03:54:31.190751000 Z\n	2022-09-13 03:54:31.190751
1701	ProductSku	92	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-AMR-Grape Guice-A\n	2022-09-13 03:54:35.655047
1705	Image	209	create	0qa(1)	---\nid:\n- \n- 209\nimage:\n- \n- 火烈鸟杯子.png\ncreated_at:\n- \n- 2022-09-13 03:56:35.265354000 Z\n	2022-09-13 03:56:35.265354
1706	ProductSku	93	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Flamingo Water Cup-A\n	2022-09-13 03:57:02.155036
1707	ProductSku	19	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-S\n	2022-09-13 03:57:55.533216
1708	ProductSku	20	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-M\n	2022-09-13 03:57:55.543025
1709	ProductSku	21	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-FHGS-Penguin Doll-L\n	2022-09-13 03:57:55.553287
1713	Product	16	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-13 04:00:09.000000000 Z\ninitial_sold_quantity:\n- \n- 100\n	2022-09-13 04:00:14.968759
1714	Image	210	create	0qa(1)	---\nid:\n- \n- 210\nimage:\n- \n- 番茄意面.png\ncreated_at:\n- \n- 2022-09-13 04:01:03.939199000 Z\n	2022-09-13 04:01:03.939199
1715	ProductSku	91	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Tomato Pasta-A\n	2022-09-13 04:01:06.799432
1716	Image	211	create	0qa(1)	---\nid:\n- \n- 211\nimage:\n- \n- 香草.png\ncreated_at:\n- \n- 2022-09-13 04:01:50.487505000 Z\n	2022-09-13 04:01:50.487505
1717	ProductSku	90	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Vanilla Anchovy Shrimp-A\n	2022-09-13 04:01:59.452988
1718	Product	19	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-29 16:00:00.000000000 Z\n	2022-09-13 04:02:38.356774
1719	ProductSku	27	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Durian Pizza-S\n	2022-09-13 04:02:38.389265
1720	ProductSku	28	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Durian Pizza-L\n	2022-09-13 04:02:38.403648
1721	ProductSku	29	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Seafood Pizza-S\n	2022-09-13 04:03:01.097473
1722	ProductSku	30	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Seafood Pizza-L\n	2022-09-13 04:03:01.106859
1723	Image	212	create	0qa(1)	---\nid:\n- \n- 212\nimage:\n- \n- 黑椒牛排.png\ncreated_at:\n- \n- 2022-09-13 04:03:36.837486000 Z\n	2022-09-13 04:03:36.837486
1724	ProductSku	89	update	0qa(1)	---\nmaster_sku_ref:\n- \n- BP-PH-Black Pepper Steak-A\n	2022-09-13 04:03:41.695843
1725	ProductSku	32	update	0qa(1)	---\nmaster_sku_ref:\n- \n- NS-GS-Lion Toy-S\n	2022-09-13 04:04:04.558191
1726	ProductSku	33	update	0qa(1)	---\nmaster_sku_ref:\n- \n- " NS-GS-Lion Toy-M"\n	2022-09-13 04:04:04.571752
1727	ProductSku	34	update	0qa(1)	---\nmaster_sku_ref:\n- \n- NS-GS-Lion Toy-L\n	2022-09-13 04:04:04.582108
1728	Image	213	create	0qa(1)	---\nid:\n- \n- 213\nimage:\n- \n- 手抓饭.png\ncreated_at:\n- \n- 2022-09-13 04:04:28.675500000 Z\n	2022-09-13 04:04:28.6755
1729	ProductSku	88	update	0qa(1)	---\nmaster_sku_ref:\n- \n- NS-UUR-Indian Pilaf-A\n	2022-09-13 04:04:36.941047
1730	Image	214	create	0qa(1)	---\nid:\n- \n- 214\nimage:\n- \n- 飞饼.png\ncreated_at:\n- \n- 2022-09-13 04:06:10.131551000 Z\n	2022-09-13 04:06:10.131551
1731	ProductSku	86	update	0qa(1)	---\nmaster_sku_ref:\n- \n- NS-UUR-Indian Pancakes-A\n	2022-09-13 04:06:16.229473
1732	ProductSku	37	update	0qa(1)	---\nmaster_sku_ref:\n- \n- " NS-UUR-Curry Chicken Rices-S"\n	2022-09-13 04:06:39.390033
1733	ProductSku	38	update	0qa(1)	---\nmaster_sku_ref:\n- \n- NS-UUR-Curry Chicken Rices-L\n	2022-09-13 04:06:39.399113
1734	Image	215	create	0qa(1)	---\nid:\n- \n- 215\nimage:\n- \n- 红豆冰.png\ncreated_at:\n- \n- 2022-09-13 04:07:08.450979000 Z\n	2022-09-13 04:07:08.450979
1735	ProductSku	85	update	0qa(1)	---\nmaster_sku_ref:\n- \n- NS-UUR-Red Bean Ice-A\n	2022-09-13 04:07:13.915173
1736	ProductSku	40	update	0qa(1)	---\nmaster_sku_ref:\n- \n- RW-GS-Panda Doll-S\n	2022-09-13 04:07:30.992853
1737	ProductSku	41	update	0qa(1)	---\nmaster_sku_ref:\n- \n- RW-GS-Panda Doll-L\n	2022-09-13 04:07:31.002338
1738	ProductSku	43	update	0qa(1)	---\nmaster_sku_ref:\n- \n- RW-GS-Otter Doll-S\nprice:\n- !ruby/object:BigDecimal 27:0.189e2\n- !ruby/object:BigDecimal 27:0.188e2\n	2022-09-13 04:07:55.387434
1739	Product	29	update	0qa(1)	---\nprice_low:\n- !ruby/object:BigDecimal 27:0.189e2\n- !ruby/object:BigDecimal 27:0.188e2\n	2022-09-13 04:07:55.412183
1740	ProductSku	44	update	0qa(1)	---\nmaster_sku_ref:\n- \n- RW-GS-Otter Doll-L\nprice:\n- !ruby/object:BigDecimal 18:0.24e2\n- !ruby/object:BigDecimal 18:0.25e2\n	2022-09-13 04:07:55.441306
1741	Product	29	update	0qa(1)	---\nprice_high:\n- !ruby/object:BigDecimal 18:0.24e2\n- !ruby/object:BigDecimal 18:0.25e2\n	2022-09-13 04:07:55.456815
1742	ProductSku	62	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-GS-Kangaroo Doll-Br-S\nprice:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-13 04:08:41.202878
1743	Product	68	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.11e2\n- !ruby/object:BigDecimal 18:0.1e2\n	2022-09-13 04:08:41.212938
1744	ProductSku	63	update	0qa(1)	---\nmaster_sku_ref:\n- \n- SZ-GS-Kangaroo Doll-Gr-L\nprice:\n- !ruby/object:BigDecimal 18:0.12e2\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-13 04:08:41.224648
1745	Product	68	update	0qa(1)	---\ndesc:\n- \n- \nprice_high:\n- !ruby/object:BigDecimal 18:0.12e2\n- !ruby/object:BigDecimal 18:0.11e2\n	2022-09-13 04:08:41.233953
1746	Image	216	create	0qa(1)	---\nid:\n- \n- 216\nimage:\n- \n- 水獭杯子product.png\ncreated_at:\n- \n- 2022-09-13 04:10:20.162903000 Z\n	2022-09-13 04:10:20.162903
1747	Image	217	create	0qa(1)	---\nid:\n- \n- 217\nimage:\n- \n- 水獭杯blue.png\ncreated_at:\n- \n- 2022-09-13 04:15:20.330551000 Z\n	2022-09-13 04:15:20.330551
1748	Image	218	create	0qa(1)	---\nid:\n- \n- 218\nimage:\n- \n- 水獭green.png\ncreated_at:\n- \n- 2022-09-13 04:15:36.962217000 Z\n	2022-09-13 04:15:36.962217
1749	Product	72	create	0qa(1)	---\nid:\n- \n- 72\nshop_id:\n- \n- 8\nname:\n- \n- '{"en":" Otter Cup","zh-CN":"水獭杯"}'\nshort_desc:\n- \n- '{"en":"Our recommended products","zh-CN":"本店推荐产品"}'\ndesc:\n- \n- "{}"\nopen_for_sale_at:\n- \n- 2022-09-13 04:11:02.000000000 Z\nranking:\n- 0\n- 47\ninitial_sold_quantity:\n- 0\n- 200\ncreated_at:\n- \n- 2022-09-13 04:15:39.953463000 Z\nname_en:\n- \n- " Otter Cup"\nname_zh_cn:\n- \n- 水獭杯\nshort_desc_en:\n- \n- Our recommended products\nshort_desc_zh_cn:\n- \n- 本店推荐产品\n	2022-09-13 04:15:39.953463
1750	ChannelSellable	245	create	0qa(1)	---\nid:\n- \n- 245\nchannel_id:\n- \n- 17\nsellable_id:\n- \n- 72\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 04:15:39.964859000 Z\n	2022-09-13 04:15:39.964859
1751	ChannelSellable	246	create	0qa(1)	---\nid:\n- \n- 246\nchannel_id:\n- \n- 18\nsellable_id:\n- \n- 72\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 04:15:39.974699000 Z\n	2022-09-13 04:15:39.974699
1752	ChannelSellable	247	create	0qa(1)	---\nid:\n- \n- 247\nchannel_id:\n- \n- 19\nsellable_id:\n- \n- 72\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 04:15:39.981590000 Z\n	2022-09-13 04:15:39.98159
1753	CustomAttribute	34	create	0qa(1)	---\nid:\n- \n- 34\nattributable_id:\n- \n- 72\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"Purchase Notes","zh-CN":"购买须知"}'\nvalue:\n- \n- '{"en":"Limit two purchases per customer","zh-CN":"每名顾客限购买两个"}'\ncreated_at:\n- \n- 2022-09-13 04:15:39.989668000 Z\nname_en:\n- \n- Purchase Notes\nname_zh_cn:\n- \n- 购买须知\nvalue_en:\n- \n- Limit two purchases per customer\nvalue_zh_cn:\n- \n- 每名顾客限购买两个\n	2022-09-13 04:15:39.989668
1754	CustomAttribute	35	create	0qa(1)	---\nid:\n- \n- 35\nattributable_id:\n- \n- 72\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":"green and white","zh-CN":"绿白色"}'\ncreated_at:\n- \n- 2022-09-13 04:15:39.997753000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- green and white\nvalue_zh_cn:\n- \n- 绿白色\n	2022-09-13 04:15:39.997753
1784	ChannelSellable	250	create	0qa(1)	---\nid:\n- \n- 250\nchannel_id:\n- \n- 23\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 06:11:51.861820000 Z\n	2022-09-13 06:11:51.86182
1755	CustomAttribute	36	create	0qa(1)	---\nid:\n- \n- 36\nattributable_id:\n- \n- 72\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":"blue and white","zh-CN":"蓝白相间"}'\ncreated_at:\n- \n- 2022-09-13 04:15:40.004404000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- blue and white\nvalue_zh_cn:\n- \n- 蓝白相间\n	2022-09-13 04:15:40.004404
1756	Variation	83	create	0qa(1)	---\nid:\n- \n- 83\nproduct_id:\n- \n- 72\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- 2022-09-13 04:15:40.011170000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-13 04:15:40.01117
1757	Variant	122	create	0qa(1)	---\nid:\n- \n- 122\nvariation_id:\n- \n- 83\nname:\n- \n- '{"en":"average","zh-CN":"均号"}'\ncreated_at:\n- \n- 2022-09-13 04:15:40.025947000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均号\n	2022-09-13 04:15:40.025947
1758	Variation	84	create	0qa(1)	---\nid:\n- \n- 84\nproduct_id:\n- \n- 72\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- 2022-09-13 04:15:40.035389000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-13 04:15:40.035389
1759	Variant	123	create	0qa(1)	---\nid:\n- \n- 123\nvariation_id:\n- \n- 84\nname:\n- \n- '{"en":"green","zh-CN":"绿色"}'\ncreated_at:\n- \n- 2022-09-13 04:15:40.042300000 Z\nname_en:\n- \n- green\nname_zh_cn:\n- \n- 绿色\n	2022-09-13 04:15:40.0423
1760	Variant	124	create	0qa(1)	---\nid:\n- \n- 124\nvariation_id:\n- \n- 84\nname:\n- \n- '{"en":"blue","zh-CN":"蓝色"}'\ncreated_at:\n- \n- 2022-09-13 04:15:40.047604000 Z\nname_en:\n- \n- blue\nname_zh_cn:\n- \n- 蓝色\n	2022-09-13 04:15:40.047604
1761	ProductSku	104	create	0qa(1)	---\nid:\n- \n- 104\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 46\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Gr-A\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\nvariant_ids:\n- []\n- - 122\n  - 123\nproduct_id:\n- \n- 72\ncreated_at:\n- \n- 2022-09-13 04:15:40.058787000 Z\n	2022-09-13 04:15:40.058787
1762	Product	72	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.4e2\n	2022-09-13 04:15:40.068645
1763	ProductSku	105	create	0qa(1)	---\nid:\n- \n- 105\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 49\nmaster_sku_ref:\n- \n- RW-GS-Otter Cup-Bl-A\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 18:0.2e2\nvariant_ids:\n- []\n- - 122\n  - 124\nproduct_id:\n- \n- 72\ncreated_at:\n- \n- 2022-09-13 04:15:40.086485000 Z\n	2022-09-13 04:15:40.086485
1764	Product	72	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.4e2\n- !ruby/object:BigDecimal 18:0.2e2\n	2022-09-13 04:15:40.096751
1765	Product	72	update	0qa(1)	---\ninitial_sold_quantity:\n- 200\n- 199\n	2022-09-13 04:16:35.537647
1766	Image	219	create	0qa(1)	---\nid:\n- \n- 219\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- 2022-09-13 06:04:28.692492000 Z\n	2022-09-13 06:04:28.692492
1767	Image	220	create	0qa(1)	---\nid:\n- \n- 220\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- 2022-09-13 06:06:57.176819000 Z\n	2022-09-13 06:06:57.176819
1768	Product	73	create	0qa(1)	---\nid:\n- \n- 73\nshop_id:\n- \n- 1\nname:\n- \n- '{"en":"Panda Hat","zh-CN":"熊猫帽"}'\nshort_desc:\n- \n- '{"en":"Panda hat at Singapore Zoo","zh-CN":"新加坡动物园的熊猫帽"}'\ndesc:\n- \n- "{}"\nopen_for_sale_at:\n- \n- 2022-09-13 06:04:36.000000000 Z\nranking:\n- 0\n- 46\ninitial_sold_quantity:\n- 0\n- 111\ncreated_at:\n- \n- 2022-09-13 06:07:02.687268000 Z\nname_en:\n- \n- Panda Hat\nname_zh_cn:\n- \n- 熊猫帽\nshort_desc_en:\n- \n- Panda hat at Singapore Zoo\nshort_desc_zh_cn:\n- \n- 新加坡动物园的熊猫帽\n	2022-09-13 06:07:02.687268
1769	ChannelSellable	248	create	0qa(1)	---\nid:\n- \n- 248\nchannel_id:\n- \n- 21\nsellable_id:\n- \n- 73\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 06:07:02.705678000 Z\n	2022-09-13 06:07:02.705678
1770	ChannelSellable	249	create	0qa(1)	---\nid:\n- \n- 249\nchannel_id:\n- \n- 20\nsellable_id:\n- \n- 73\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 06:07:02.721580000 Z\n	2022-09-13 06:07:02.72158
1771	CustomAttribute	37	create	0qa(1)	---\nid:\n- \n- 37\nattributable_id:\n- \n- 73\nattributable_type:\n- \n- Product\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\nvalue:\n- \n- '{"en":" black and white","zh-CN":"黑白相间"}'\ncreated_at:\n- \n- 2022-09-13 06:07:02.747866000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\nvalue_en:\n- \n- " black and white"\nvalue_zh_cn:\n- \n- 黑白相间\n	2022-09-13 06:07:02.747866
1772	Variation	85	create	0qa(1)	---\nid:\n- \n- 85\nproduct_id:\n- \n- 73\nname:\n- \n- '{"en":"Size","zh-CN":"尺寸"}'\nranking:\n- 0\n- 1\ncreated_at:\n- \n- 2022-09-13 06:07:02.774370000 Z\nname_en:\n- \n- Size\nname_zh_cn:\n- \n- 尺寸\n	2022-09-13 06:07:02.77437
1773	Variant	125	create	0qa(1)	---\nid:\n- \n- 125\nvariation_id:\n- \n- 85\nname:\n- \n- '{"en":"average","zh-CN":"均码"}'\ncreated_at:\n- \n- 2022-09-13 06:07:02.788798000 Z\nname_en:\n- \n- average\nname_zh_cn:\n- \n- 均码\n	2022-09-13 06:07:02.788798
1774	Variation	86	create	0qa(1)	---\nid:\n- \n- 86\nproduct_id:\n- \n- 73\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\nranking:\n- 0\n- 2\ncreated_at:\n- \n- 2022-09-13 06:07:02.800435000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-13 06:07:02.800435
1775	Variant	126	create	0qa(1)	---\nid:\n- \n- 126\nvariation_id:\n- \n- 86\nname:\n- \n- '{"en":"black and white","zh-CN":"黑白相间"}'\ncreated_at:\n- \n- 2022-09-13 06:07:02.808513000 Z\nname_en:\n- \n- black and white\nname_zh_cn:\n- \n- 黑白相间\n	2022-09-13 06:07:02.808513
1776	ProductSku	106	create	0qa(1)	---\nid:\n- \n- 106\nshop_id:\n- \n- 1\noutlet_sku_id:\n- \n- 50\nmaster_sku_ref:\n- \n- RW-GS-Panda Hat-A\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 125\n  - 126\nproduct_id:\n- \n- 73\ncreated_at:\n- \n- 2022-09-13 06:07:02.853527000 Z\n	2022-09-13 06:07:02.853527
1777	Product	73	update	0qa(1)	---\ndesc:\n- \n- \nprice_low:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nprice_high:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\n	2022-09-13 06:07:02.876423
1778	Image	221	create	0qa(1)	---\nid:\n- \n- 221\nimage:\n- \n- panda_hat_.png\ncreated_at:\n- \n- 2022-09-13 06:11:13.489176000 Z\n	2022-09-13 06:11:13.489176
1779	Product	28	update	0qa(1)	---\nopen_for_sale_at:\n- \n- 2022-09-13 06:10:25.000000000 Z\ninitial_sold_quantity:\n- \n- 111\n	2022-09-13 06:11:16.233806
1780	Variation	87	create	0qa(1)	---\nid:\n- \n- 87\nproduct_id:\n- \n- 28\nname:\n- \n- '{"en":"Color","zh-CN":"颜色"}'\ncreated_at:\n- \n- 2022-09-13 06:11:16.268590000 Z\nname_en:\n- \n- Color\nname_zh_cn:\n- \n- 颜色\n	2022-09-13 06:11:16.26859
1781	Variant	127	create	0qa(1)	---\nid:\n- \n- 127\nvariation_id:\n- \n- 87\nname:\n- \n- '{"en":"black and white ","zh-CN":"黑白相间"}'\ncreated_at:\n- \n- 2022-09-13 06:11:16.282264000 Z\nname_en:\n- \n- 'black and white '\nname_zh_cn:\n- \n- 黑白相间\n	2022-09-13 06:11:16.282264
1782	ProductSku	107	create	0qa(1)	---\nid:\n- \n- 107\nshop_id:\n- \n- 8\noutlet_sku_id:\n- \n- 43\nmaster_sku_ref:\n- \n- RW-GS-Panda Hat-A\nprice:\n- !ruby/object:BigDecimal 18:0.0\n- !ruby/object:BigDecimal 27:0.125e2\nvariant_ids:\n- []\n- - 111\n  - 127\nproduct_id:\n- \n- 28\ncreated_at:\n- \n- 2022-09-13 06:11:16.311271000 Z\n	2022-09-13 06:11:16.311271
1783	Product	28	update	0qa(1)	---\ndesc:\n- \n- \n	2022-09-13 06:11:16.233806
1785	ChannelSellable	251	create	0qa(1)	---\nid:\n- \n- 251\nchannel_id:\n- \n- 24\nsellable_id:\n- \n- 6\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 06:11:51.878418000 Z\n	2022-09-13 06:11:51.878418
1786	ChannelSellable	252	create	0qa(1)	---\nid:\n- \n- 252\nchannel_id:\n- \n- 23\nsellable_id:\n- \n- 7\nsellable_type:\n- \n- Product\ncreated_at:\n- \n- 2022-09-13 06:12:04.110207000 Z\n	2022-09-13 06:12:04.110207
1787	OutletSkuView	53	create	\N	---\nid:\n- \n- 53\noutlet_sku_id:\n- \n- 53\nquantity:\n- \n- 100\nsku_id:\n- \n- 50\noutlet_id:\n- \n- 10\ncreated_at:\n- \n- 2022-09-13 06:20:01.674998000 Z\nlast_event_time:\n- 2022-09-01 00:00:00.000000000 Z\n- 2022-09-13 06:20:01.000000000 Z\n	2022-09-13 06:20:01.674998
1788	OutletSkuView	54	create	\N	---\nid:\n- \n- 54\noutlet_sku_id:\n- \n- 54\nquantity:\n- \n- 100\nsku_id:\n- \n- 50\noutlet_id:\n- \n- 7\ncreated_at:\n- \n- 2022-09-13 06:21:01.790388000 Z\nlast_event_time:\n- 2022-09-01 00:00:00.000000000 Z\n- 2022-09-13 06:21:01.000000000 Z\n	2022-09-13 06:21:01.790388
1789	OutletSkuView	53	update	\N	---\nquantity:\n- 100\n- 0\nlast_event_time:\n- 2022-09-13 06:20:01.000000000 Z\n- 2022-09-13 06:24:17.000000000 Z\n	2022-09-13 06:24:17.397678
1790	OutletSkuView	53	update	\N	---\nquantity:\n- 0\n- 1\nlast_event_time:\n- 2022-09-13 06:24:17.000000000 Z\n- 2022-09-13 06:25:34.000000000 Z\n	2022-09-13 06:25:34.780453
1791	OutletSkuView	53	update	\N	---\nquantity:\n- 1\n- 2\nlast_event_time:\n- 2022-09-13 06:25:34.000000000 Z\n- 2022-09-13 06:26:14.000000000 Z\n	2022-09-13 06:26:14.652639
1792	OutletSkuView	53	update	\N	---\nquantity:\n- 2\n- 102\nlast_event_time:\n- 2022-09-13 06:26:14.000000000 Z\n- 2022-09-13 06:27:23.000000000 Z\n	2022-09-13 06:27:23.973231
1793	OutletSkuView	55	create	\N	---\nid:\n- \n- 55\noutlet_sku_id:\n- \n- 55\nquantity:\n- \n- 2\nsku_id:\n- \n- 50\noutlet_id:\n- \n- 6\ncreated_at:\n- \n- 2022-09-13 06:28:17.203459000 Z\nlast_event_time:\n- 2022-09-01 00:00:00.000000000 Z\n- 2022-09-13 06:28:17.000000000 Z\n	2022-09-13 06:28:17.203459
1794	OutletSkuView	55	update	\N	---\nquantity:\n- 2\n- 4\nlast_event_time:\n- 2022-09-13 06:28:17.000000000 Z\n- 2022-09-13 06:28:54.000000000 Z\n	2022-09-13 06:28:54.607213
\.


--
-- Data for Name: voucher_applicable_target_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voucher_applicable_target_views (id, voucher_sku_id, voucher_applicable_name, voucher_applicable_id, voucher_applicable_type, deleted_at, created_at, updated_at) FROM stdin;
3	11	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-07 03:20:34.75242	2022-09-07 03:19:45.811616	2022-09-07 03:20:34.752443
4	11	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	\N	2022-09-07 03:20:34.784652	2022-09-07 03:20:34.784652
1	1	{"en": "E-KFC "}	2	Shop	2022-09-07 06:01:16.933704	2022-09-07 03:18:30.224411	2022-09-07 06:01:16.933714
2	1	{"en": "KFC"}	4	Outlet	2022-09-07 06:01:16.94145	2022-09-07 03:18:30.230736	2022-09-07 06:01:16.941463
9	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-07 06:53:16.123741	2022-09-07 06:52:43.517408	2022-09-07 06:53:16.123765
10	9	{"en": "E-KFC "}	2	Shop	2022-09-07 06:53:16.125598	2022-09-07 06:52:43.523733	2022-09-07 06:53:16.125606
11	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-07 07:00:39.998094	2022-09-07 06:53:16.140437	2022-09-07 07:00:39.998103
12	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-07 07:00:40.00195	2022-09-07 06:53:16.145809	2022-09-07 07:00:40.00196
13	9	{"en": "Ah Meng Restaurant"}	5	Outlet	2022-09-07 07:00:40.004687	2022-09-07 06:53:16.14965	2022-09-07 07:00:40.004702
14	9	{"en": "E-KFC "}	2	Shop	2022-09-07 07:00:40.006971	2022-09-07 06:53:16.153571	2022-09-07 07:00:40.006983
17	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-07 07:18:42.829639	2022-09-07 07:00:40.024845	2022-09-07 07:18:42.82965
18	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-07 07:18:42.831551	2022-09-07 07:00:40.029028	2022-09-07 07:18:42.83156
19	9	{"en": "Ah Meng Restaurant"}	5	Outlet	2022-09-07 07:18:42.832802	2022-09-07 07:00:40.033577	2022-09-07 07:18:42.83281
20	9	{"en": "E-KFC "}	2	Shop	2022-09-07 07:18:42.83403	2022-09-07 07:00:40.039452	2022-09-07 07:18:42.834039
15	4	{"en": "KFC"}	4	Outlet	2022-09-07 07:21:51.319782	2022-09-07 06:59:21.491807	2022-09-07 07:21:51.319792
16	4	{"en": "E-KFC "}	2	Shop	2022-09-07 07:21:51.322435	2022-09-07 06:59:21.498699	2022-09-07 07:21:51.322444
5	2	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	2022-09-08 02:53:19.728463	2022-09-07 03:25:00.118007	2022-09-08 02:53:19.728493
6	2	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-08 02:53:19.73543	2022-09-07 03:25:00.133917	2022-09-08 02:53:19.735438
42	3	{"en": "KFC"}	4	Outlet	\N	2022-09-08 02:53:19.762728	2022-09-08 02:53:19.762728
43	2	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	\N	2022-09-08 02:53:19.779887	2022-09-08 02:53:19.779887
44	2	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	\N	2022-09-08 02:53:19.788453	2022-09-08 02:53:19.788453
7	1	{"en": "E-KFC "}	2	Shop	2022-09-08 02:53:19.798265	2022-09-07 06:01:16.973446	2022-09-08 02:53:19.798272
38	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-08 02:53:19.813213	2022-09-07 07:18:42.845902	2022-09-08 02:53:19.813248
8	1	{"en": "KFC"}	4	Outlet	2022-09-08 02:53:19.820315	2022-09-07 06:01:16.979518	2022-09-08 02:53:19.820387
39	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-08 02:53:19.822127	2022-09-07 07:18:42.851271	2022-09-08 02:53:19.822136
45	1	{"en": "E-KFC "}	2	Shop	\N	2022-09-08 02:53:19.853604	2022-09-08 02:53:19.853604
46	1	{"en": "KFC"}	4	Outlet	\N	2022-09-08 02:53:19.877795	2022-09-08 02:53:19.877795
40	4	{"en": "KFC"}	4	Outlet	2022-09-08 02:53:19.876191	2022-09-07 07:21:51.343208	2022-09-08 02:53:19.876199
47	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	\N	2022-09-08 02:53:19.885826	2022-09-08 02:53:19.885826
41	4	{"en": "E-KFC "}	2	Shop	2022-09-08 02:53:19.886777	2022-09-07 07:21:51.357079	2022-09-08 02:53:19.886785
48	9	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	\N	2022-09-08 02:53:19.915437	2022-09-08 02:53:19.915437
49	7	{"en": "KFC"}	4	Outlet	\N	2022-09-08 02:53:19.937801	2022-09-08 02:53:19.937801
21	12	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-08 02:53:19.936632	2022-09-07 07:02:53.372003	2022-09-08 02:53:19.936639
50	4	{"en": "KFC"}	4	Outlet	\N	2022-09-08 02:53:19.942562	2022-09-08 02:53:19.942562
22	12	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	2022-09-08 02:53:19.945467	2022-09-07 07:02:53.376517	2022-09-08 02:53:19.945474
51	9	{"en": "Ah Meng Restaurant"}	5	Outlet	\N	2022-09-08 02:53:19.948611	2022-09-08 02:53:19.948611
52	7	{"en": "E-KFC "}	2	Shop	\N	2022-09-08 02:53:19.949706	2022-09-08 02:53:19.949706
23	12	{"en": "Ah Meng Restaurant"}	5	Outlet	2022-09-08 02:53:19.950632	2022-09-07 07:02:53.38062	2022-09-08 02:53:19.950639
53	4	{"en": "E-KFC "}	2	Shop	\N	2022-09-08 02:53:19.952023	2022-09-08 02:53:19.952023
24	12	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	2022-09-08 02:53:19.958435	2022-09-07 07:02:53.384594	2022-09-08 02:53:19.958444
54	9	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	\N	2022-09-08 02:53:19.959826	2022-09-08 02:53:19.959826
25	12	{"en": "KFC"}	4	Outlet	2022-09-08 02:53:19.96385	2022-09-07 07:02:53.38864	2022-09-08 02:53:19.963859
26	12	{"en": "E-KFC "}	2	Shop	2022-09-08 02:53:19.965882	2022-09-07 07:02:53.392801	2022-09-08 02:53:19.965891
27	6	{"en": "Pizza Hut"}	7	Outlet	2022-09-08 02:53:19.98031	2022-09-07 07:09:10.599109	2022-09-08 02:53:19.980318
28	6	{"en": "Pizza Hut E-shop"}	5	Shop	2022-09-08 02:53:19.995383	2022-09-07 07:09:10.607199	2022-09-08 02:53:19.995389
31	13	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-08 02:53:19.987914	2022-09-07 07:15:53.168147	2022-09-08 02:53:19.98792
32	13	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	2022-09-08 02:53:20.000669	2022-09-07 07:15:53.175215	2022-09-08 02:53:20.000677
29	6	{"en": "Jurong Bird Park Gift Shop"}	6	Outlet	2022-09-08 02:53:20.002	2022-09-07 07:09:10.616718	2022-09-08 02:53:20.002006
55	8	{"en": "Ah Meng Restaurant"}	5	Outlet	\N	2022-09-08 02:53:20.003413	2022-09-08 02:53:20.003413
33	13	{"en": "Ah Meng Restaurant"}	5	Outlet	2022-09-08 02:53:20.004443	2022-09-07 07:15:53.18119	2022-09-08 02:53:20.00445
30	6	{"en": " Feather House Gift E-shop"}	4	Shop	2022-09-08 02:53:20.0052	2022-09-07 07:09:10.626097	2022-09-08 02:53:20.005206
56	12	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	\N	2022-09-08 02:53:20.008717	2022-09-08 02:53:20.008717
34	13	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	2022-09-08 02:53:20.009955	2022-09-07 07:15:53.185447	2022-09-08 02:53:20.009962
57	8	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	\N	2022-09-08 02:53:20.011103	2022-09-08 02:53:20.011103
35	13	{"en": "KFC"}	4	Outlet	2022-09-08 02:53:20.013987	2022-09-07 07:15:53.189446	2022-09-08 02:53:20.013994
36	13	{"en": "E-KFC "}	2	Shop	2022-09-08 02:53:20.018116	2022-09-07 07:15:53.193511	2022-09-08 02:53:20.018122
37	13	{"en": "E-KFC "}	2	Shop	2022-09-08 02:53:20.021141	2022-09-07 07:15:53.197885	2022-09-08 02:53:20.021146
58	12	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	\N	2022-09-08 02:53:20.024156	2022-09-08 02:53:20.024156
59	6	{"en": "Ah Meng Restaurant"}	5	Outlet	\N	2022-09-08 02:53:20.039774	2022-09-08 02:53:20.039774
60	12	{"en": "Ah Meng Restaurant"}	5	Outlet	\N	2022-09-08 02:53:20.046829	2022-09-08 02:53:20.046829
61	6	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	\N	2022-09-08 02:53:20.048004	2022-09-08 02:53:20.048004
63	12	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	\N	2022-09-08 02:53:20.058421	2022-09-08 02:53:20.058421
65	12	{"en": "KFC"}	4	Outlet	\N	2022-09-08 02:53:20.064107	2022-09-08 02:53:20.064107
67	12	{"en": "E-KFC "}	2	Shop	\N	2022-09-08 02:53:20.070677	2022-09-08 02:53:20.070677
62	13	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	2022-09-09 09:17:44.471836	2022-09-08 02:53:20.053282	2022-09-09 09:17:44.471859
64	13	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	2022-09-09 09:17:44.473842	2022-09-08 02:53:20.062714	2022-09-09 09:17:44.473848
66	13	{"en": "Ah Meng Restaurant"}	5	Outlet	2022-09-09 09:17:44.474869	2022-09-08 02:53:20.069509	2022-09-09 09:17:44.474875
68	13	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	2022-09-09 09:17:44.475705	2022-09-08 02:53:20.075829	2022-09-09 09:17:44.475723
69	13	{"en": "KFC"}	4	Outlet	2022-09-09 09:17:44.47656	2022-09-08 02:53:20.08004	2022-09-09 09:17:44.476565
70	13	{"en": "E-KFC "}	2	Shop	2022-09-09 09:17:44.47744	2022-09-08 02:53:20.084445	2022-09-09 09:17:44.477445
71	13	{"en": "E-KFC "}	2	Shop	2022-09-09 09:17:44.478293	2022-09-08 02:53:20.088876	2022-09-09 09:17:44.478299
72	13	{"en": "Singapore Zoo Gift Shop"}	3	Outlet	\N	2022-09-09 09:17:44.497088	2022-09-09 09:17:44.497088
73	13	{"en": "Singapore Zoo Gift E-shop"}	1	Shop	\N	2022-09-09 09:17:44.503368	2022-09-09 09:17:44.503368
74	13	{"en": "Ah Meng Restaurant"}	5	Outlet	\N	2022-09-09 09:17:44.513592	2022-09-09 09:17:44.513592
75	13	{"en": "Ah Meng Restaurant E-shop"}	3	Shop	\N	2022-09-09 09:17:44.517767	2022-09-09 09:17:44.517767
76	13	{"en": "KFC"}	4	Outlet	\N	2022-09-09 09:17:44.521838	2022-09-09 09:17:44.521838
77	13	{"en": "E-KFC "}	2	Shop	\N	2022-09-09 09:17:44.5259	2022-09-09 09:17:44.5259
78	13	{"en": "E-KFC "}	2	Shop	\N	2022-09-09 09:17:44.529874	2022-09-09 09:17:44.529874
\.


--
-- Data for Name: voucher_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voucher_products (id, shop_id, voucher_sku_id, price, value_amount, min_spend, quantity, name, "desc", short_desc, active, searchable, ranking, open_for_sale_at, initial_sold_quantity, actual_sold_quantity, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
1	1	1	8.00	0.00	0.00	0	{"en": "11", "zh-CN": "11"}	{}	{}	t	t	11	\N	\N	0	2022-08-31 09:32:40.50307	2022-08-31 09:32:32.246593	2022-08-31 09:32:40.503086	2022-09-01 00:00:00
7	1	9	199.00	0.00	0.00	0	{"en": "SZ Family Voucher", "zh-CN": "新加坡动物园家庭券"}	{"en": "SZ Family Voucher  desc", "zh-CN": "新加坡动物园家庭优惠券 描述"}	{"en": "SZ Family Voucher short desc", "zh-CN": "新加坡动物园家庭优惠券 简述"}	t	t	2	2022-09-09 08:17:26	50	0	\N	2022-09-01 07:26:33.702895	2022-09-09 08:18:43.510918	2022-09-01 00:00:00
8	1	12	20.00	0.00	0.00	0	{"en": "SZ Holiday Voucher", "zh-CN": "新加坡动物园节日券"}	{"en": "SZ Holiday Voucher  desc", "zh-CN": "新加坡动物园节日优惠券描述..."}	{"en": "SZ Holiday Voucher  short desc", "zh-CN": "新加坡动物园节日优惠券简述"}	t	t	4	2022-09-09 08:19:22	49	0	\N	2022-09-01 08:19:05.000373	2022-09-09 08:20:15.570004	2022-09-01 00:00:00
3	1	11	8.00	0.00	0.00	0	{"en": "Member Voucher", "zh-CN": "会员优惠券"}	{}	{}	t	t	1	\N	\N	0	\N	2022-08-31 09:55:01.580975	2022-09-07 03:20:52.961274	2022-09-01 00:00:00
6	2	4	48.00	0.00	0.00	0	{"en": "KFC Cash Voucher", "zh-CN": "肯德基现金券"}	{}	{}	t	t	1	\N	\N	0	\N	2022-09-01 07:11:53.438782	2022-09-07 06:47:21.475978	2022-09-01 00:00:00
9	1	13	30.00	0.00	0.00	0	{"en": "SZ Cash Voucher", "zh-CN": "新加坡动物园现金券"}	{"en": "SZ Cash Voucher desc", "zh-CN": "新加坡动物园现金券 描述"}	{"en": "SZ  Cash Voucher short desc", "zh-CN": "新加坡动物园现金券 简介....."}	t	t	5	2022-09-09 08:21:03	500	0	\N	2022-09-01 08:22:06.933895	2022-09-09 08:22:11.508984	2022-09-01 00:00:00
10	3	9	199.00	0.00	0.00	0	{"en": "AMR Family Voucher", "zh-CN": "阿明餐厅家庭优惠券"}	{"en": "Ah Meng Restaurant E-shop. Family Voucher", "zh-CN": "阿明餐厅 家庭优惠券"}	{"en": "AMR Family Voucher Family Voucher", "zh-CN": "阿明餐厅家庭优惠券"}	t	t	4	2022-09-09 08:22:28	68	0	\N	2022-09-01 08:34:22.969055	2022-09-09 08:23:36.845624	2022-09-01 00:00:00
11	3	6	189.00	0.00	0.00	0	{"en": "AMR Cash Voucher", "zh-CN": "阿明餐厅现金券"}	{"en": "Ah Meng Restaurant E-shop  Cash Voucher", "zh-CN": "阿明餐厅 现金券"}	{"en": "AMR Cash Voucher", "zh-CN": "阿明餐厅现金券"}	t	t	5	2022-09-09 08:24:19	55	0	\N	2022-09-01 08:39:35.559875	2022-09-09 08:25:13.403875	2022-09-01 00:00:00
12	3	8	99.00	0.00	0.00	0	{"en": "AMR Discount Voucher", "zh-CN": "阿明餐厅折扣券"}	{"en": "Ah Meng Restaurant E-shop Discount Voucher", "zh-CN": "阿明餐厅 折扣券"}	{"en": "AMR Discount Voucher", "zh-CN": "阿明餐厅折扣券"}	t	t	1	\N	99	0	\N	2022-09-01 09:04:50.735892	2022-09-09 08:31:14.729248	2022-09-01 00:00:00
13	8	1	8.00	0.00	0.00	0	{"en": "1", "zh-CN": "1"}	{}	{}	f	f	\N	\N	\N	0	\N	2022-09-08 06:52:39.312501	2022-09-08 06:52:39.312501	2022-09-01 00:00:00
2	2	1	8.00	0.00	0.00	0	{"en": "KFC Member Voucher", "zh-CN": "会员优惠券"}	{"en": "Member VoucherMember VoucherMember VoucherMember Voucher  desc", "zh-CN": "会员优惠券 描述"}	{"en": "Member Voucher short desc", "zh-CN": "member voucher简要描述"}	t	t	1	2022-09-09 03:58:12	200	0	\N	2022-08-31 09:39:27.739579	2022-09-09 03:58:55.314822	2022-09-01 00:00:00
4	2	3	88.00	0.00	0.00	0	{"en": "KFC Family Voucher", "zh-CN": "肯德基家庭优惠券"}	{"en": "KFC offers more deals for your family", "zh-CN": "肯德基为您家人提供更多优惠"}	{"en": "KFC Family voucher, bring your family to enjoy special discounts", "zh-CN": "肯德基家庭优惠券，带上家人享受别样优惠"}	t	t	1	2022-09-09 08:09:15	200	0	\N	2022-08-31 10:03:51.609005	2022-09-09 08:12:21.970507	2022-09-01 00:00:00
5	2	7	28.80	0.00	0.00	0	{"en": "KFC Holiday Voucher", "zh-CN": "肯德基节日券"}	{"en": "Available on the day of the festival, unlimited amount, unlimited store. More categories of goods to drink and buy.", "zh-CN": "节日当天可使用，不限金额，不限门店。更多品类商品欢饮购买。"}	{"en": "Available on the day of the festival, unlimited amount, unlimited store", "zh-CN": "节日当天可使用，不限金额，不限门店"}	t	t	1	2022-09-09 08:12:35	55	0	\N	2022-09-01 07:07:12.151048	2022-09-09 08:13:47.552439	2022-09-01 00:00:00
\.


--
-- Data for Name: voucher_sku_views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.voucher_sku_views (id, voucher_sku_id, value_amount, quantity, name, min_spend, recommended_price, deleted_at, created_at, updated_at, last_event_time) FROM stdin;
2	11	10.00	100	{"en": "SZ Member Voucher"}	20.00	8.00	\N	2022-09-07 03:19:45.799575	2022-09-07 03:20:34.76664	2022-09-07 03:20:34
4	3	100.00	50	{"en": "KFC Family Voucher"}	200.00	88.00	\N	2022-09-07 06:00:59.239339	2022-09-08 02:53:19.74872	2022-09-08 02:53:19
3	2	20.00	500	{"en": "SZ Member Shop Voucher"}	100.00	18.00	\N	2022-09-07 03:25:00.103322	2022-09-08 02:53:19.755248	2022-09-08 02:53:19
1	1	10.00	100	{"en": "KFC Member Voucher"}	100.00	8.00	\N	2022-09-07 03:18:30.204432	2022-09-08 02:53:19.832771	2022-09-08 02:53:19
8	9	299.00	50	{"en": "SZ Family Voucher"}	300.00	199.00	\N	2022-09-07 06:52:43.499421	2022-09-08 02:53:19.841199	2022-09-08 02:53:19
7	7	99.00	50	{"en": "KFC Holiday Voucher"}	50.00	28.80	\N	2022-09-07 06:45:50.461793	2022-09-08 02:53:19.909329	2022-09-08 02:53:19
5	4	50.00	100	{"en": "KFC Cash Voucher"}	120.00	48.00	\N	2022-09-07 06:03:21.544497	2022-09-08 02:53:19.904583	2022-09-08 02:53:19
9	8	219.00	50	{"en": "AMR Discount Voucher"}	500.00	99.00	\N	2022-09-07 06:55:17.347866	2022-09-08 02:53:19.986597	2022-09-08 02:53:19
10	12	50.00	100	{"en": "SZ Holiday Voucher"}	100.00	20.00	\N	2022-09-07 07:02:53.365414	2022-09-08 02:53:19.993933	2022-09-08 02:53:19
6	6	200.00	20	{"en": " AMR Cash Voucher"}	500.00	189.00	\N	2022-09-07 06:33:29.650735	2022-09-08 02:53:20.016986	2022-09-08 02:53:19
11	13	50.00	120	{"en": "SZ Cash Voucher", "zh-CN": "新加坡动物园现金优惠券"}	60.00	30.00	\N	2022-09-07 07:15:53.155175	2022-09-09 09:17:44.489768	2022-09-09 09:17:44
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: bundle_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bundle_items_id_seq', 25, true);


--
-- Name: bundles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bundles_id_seq', 11, true);


--
-- Name: cart_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_items_id_seq', 1, false);


--
-- Name: channel_sellables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.channel_sellables_id_seq', 252, true);


--
-- Name: channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.channels_id_seq', 24, true);


--
-- Name: custom_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_attributes_id_seq', 37, true);


--
-- Name: delivery_fee_tiers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delivery_fee_tiers_id_seq', 9, true);


--
-- Name: fulfillment_instances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fulfillment_instances_id_seq', 1, false);


--
-- Name: fulfillment_time_slots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fulfillment_time_slots_id_seq', 10, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 221, true);


--
-- Name: no_fulfillment_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.no_fulfillment_dates_id_seq', 6, true);


--
-- Name: outlet_sku_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outlet_sku_views_id_seq', 55, true);


--
-- Name: outlet_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outlet_views_id_seq', 8, true);


--
-- Name: preference_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preference_groups_id_seq', 10, true);


--
-- Name: preference_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preference_items_id_seq', 28, true);


--
-- Name: product_skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_skus_id_seq', 107, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 73, true);


--
-- Name: quotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quotations_id_seq', 1, false);


--
-- Name: shops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shops_id_seq', 8, true);


--
-- Name: sku_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sku_views_id_seq', 50, true);


--
-- Name: user_group_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_group_members_id_seq', 1, false);


--
-- Name: user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_groups_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.variants_id_seq', 127, true);


--
-- Name: variations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.variations_id_seq', 87, true);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.versions_id_seq', 1794, true);


--
-- Name: voucher_applicable_target_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voucher_applicable_target_views_id_seq', 78, true);


--
-- Name: voucher_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voucher_products_id_seq', 13, true);


--
-- Name: voucher_sku_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voucher_sku_views_id_seq', 11, true);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: bundle_items bundle_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundle_items
    ADD CONSTRAINT bundle_items_pkey PRIMARY KEY (id);


--
-- Name: bundles bundles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundles
    ADD CONSTRAINT bundles_pkey PRIMARY KEY (id);


--
-- Name: cart_items cart_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT cart_items_pkey PRIMARY KEY (id);


--
-- Name: channel_sellables channel_sellables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channel_sellables
    ADD CONSTRAINT channel_sellables_pkey PRIMARY KEY (id);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (id);


--
-- Name: custom_attributes custom_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_attributes
    ADD CONSTRAINT custom_attributes_pkey PRIMARY KEY (id);


--
-- Name: delivery_fee_tiers delivery_fee_tiers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_fee_tiers
    ADD CONSTRAINT delivery_fee_tiers_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_instances fulfillment_instances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fulfillment_instances
    ADD CONSTRAINT fulfillment_instances_pkey PRIMARY KEY (id);


--
-- Name: fulfillment_time_slots fulfillment_time_slots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fulfillment_time_slots
    ADD CONSTRAINT fulfillment_time_slots_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: no_fulfillment_dates no_fulfillment_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.no_fulfillment_dates
    ADD CONSTRAINT no_fulfillment_dates_pkey PRIMARY KEY (id);


--
-- Name: outlet_sku_views outlet_sku_views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlet_sku_views
    ADD CONSTRAINT outlet_sku_views_pkey PRIMARY KEY (id);


--
-- Name: outlet_views outlet_views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlet_views
    ADD CONSTRAINT outlet_views_pkey PRIMARY KEY (id);


--
-- Name: preference_groups preference_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_groups
    ADD CONSTRAINT preference_groups_pkey PRIMARY KEY (id);


--
-- Name: preference_items preference_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preference_items
    ADD CONSTRAINT preference_items_pkey PRIMARY KEY (id);


--
-- Name: product_skus product_skus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_skus
    ADD CONSTRAINT product_skus_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: quotations quotations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quotations
    ADD CONSTRAINT quotations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: shops shops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);


--
-- Name: sku_views sku_views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sku_views
    ADD CONSTRAINT sku_views_pkey PRIMARY KEY (id);


--
-- Name: user_group_members user_group_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_group_members
    ADD CONSTRAINT user_group_members_pkey PRIMARY KEY (id);


--
-- Name: user_groups user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: variants variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variants
    ADD CONSTRAINT variants_pkey PRIMARY KEY (id);


--
-- Name: variations variations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variations
    ADD CONSTRAINT variations_pkey PRIMARY KEY (id);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: voucher_applicable_target_views voucher_applicable_target_views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_applicable_target_views
    ADD CONSTRAINT voucher_applicable_target_views_pkey PRIMARY KEY (id);


--
-- Name: voucher_products voucher_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_products
    ADD CONSTRAINT voucher_products_pkey PRIMARY KEY (id);


--
-- Name: voucher_sku_views voucher_sku_views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voucher_sku_views
    ADD CONSTRAINT voucher_sku_views_pkey PRIMARY KEY (id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- Name: index_admin_users_on_phone_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_admin_users_on_phone_number ON public.admin_users USING btree (phone_number);


--
-- Name: index_bundle_items_on_bundle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bundle_items_on_bundle_id ON public.bundle_items USING btree (bundle_id);


--
-- Name: index_bundle_items_on_bundleable_type_and_bundleable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bundle_items_on_bundleable_type_and_bundleable_id ON public.bundle_items USING btree (bundleable_type, bundleable_id);


--
-- Name: index_bundle_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bundle_items_on_deleted_at ON public.bundle_items USING btree (deleted_at);


--
-- Name: index_bundles_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bundles_on_deleted_at ON public.bundles USING btree (deleted_at);


--
-- Name: index_bundles_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bundles_on_shop_id ON public.bundles USING btree (shop_id);


--
-- Name: index_cart_items_on_cartable_id_and_cartable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cart_items_on_cartable_id_and_cartable_type ON public.cart_items USING btree (cartable_id, cartable_type);


--
-- Name: index_cart_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cart_items_on_deleted_at ON public.cart_items USING btree (deleted_at);


--
-- Name: index_cart_items_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cart_items_on_user_id ON public.cart_items USING btree (user_id);


--
-- Name: index_channel_sellables_on_sellable_id_and_sellable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channel_sellables_on_sellable_id_and_sellable_type ON public.channel_sellables USING btree (sellable_id, sellable_type);


--
-- Name: index_channels_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_shop_id ON public.channels USING btree (shop_id);


--
-- Name: index_custom_attributes_on_attributable; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_attributes_on_attributable ON public.custom_attributes USING btree (attributable_type, attributable_id);


--
-- Name: index_delivery_fee_tiers_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_delivery_fee_tiers_on_shop_id ON public.delivery_fee_tiers USING btree (shop_id);


--
-- Name: index_fulfillment_time_slots_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_fulfillment_time_slots_on_shop_id ON public.fulfillment_time_slots USING btree (shop_id);


--
-- Name: index_images_on_target_type_and_target_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_images_on_target_type_and_target_id ON public.images USING btree (target_type, target_id);


--
-- Name: index_no_fulfillment_dates_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_no_fulfillment_dates_on_shop_id ON public.no_fulfillment_dates USING btree (shop_id);


--
-- Name: index_preference_groups_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_groups_on_deleted_at ON public.preference_groups USING btree (deleted_at);


--
-- Name: index_preference_groups_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_groups_on_product_id ON public.preference_groups USING btree (product_id);


--
-- Name: index_preference_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_items_on_deleted_at ON public.preference_items USING btree (deleted_at);


--
-- Name: index_preference_items_on_preference_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_preference_items_on_preference_group_id ON public.preference_items USING btree (preference_group_id);


--
-- Name: index_product_skus_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_skus_on_deleted_at ON public.product_skus USING btree (deleted_at);


--
-- Name: index_product_skus_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_skus_on_product_id ON public.product_skus USING btree (product_id);


--
-- Name: index_products_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_deleted_at ON public.products USING btree (deleted_at);


--
-- Name: index_products_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_shop_id ON public.products USING btree (shop_id);


--
-- Name: index_quotations_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_quotations_on_user_id ON public.quotations USING btree (user_id);


--
-- Name: index_shops_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_shops_on_deleted_at ON public.shops USING btree (deleted_at);


--
-- Name: index_user_group_members_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_group_members_on_deleted_at ON public.user_group_members USING btree (deleted_at);


--
-- Name: index_user_group_members_on_user_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_group_members_on_user_group_id ON public.user_group_members USING btree (user_group_id);


--
-- Name: index_user_groups_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_groups_on_deleted_at ON public.user_groups USING btree (deleted_at);


--
-- Name: index_users_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_deleted_at ON public.users USING btree (deleted_at);


--
-- Name: index_users_on_device_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_device_key ON public.users USING btree (device_key);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_phone_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_phone_number ON public.users USING btree (phone_number);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_variants_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_variants_on_deleted_at ON public.variants USING btree (deleted_at);


--
-- Name: index_variants_on_variation_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_variants_on_variation_id ON public.variants USING btree (variation_id);


--
-- Name: index_variations_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_variations_on_deleted_at ON public.variations USING btree (deleted_at);


--
-- Name: index_variations_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_variations_on_product_id ON public.variations USING btree (product_id);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_versions_on_item_type_and_item_id ON public.versions USING btree (item_type, item_id);


--
-- Name: index_voucher_products_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_voucher_products_on_deleted_at ON public.voucher_products USING btree (deleted_at);


--
-- Name: index_voucher_products_on_shop_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_voucher_products_on_shop_id ON public.voucher_products USING btree (shop_id);


--
-- Name: index_voucher_products_on_voucher_sku_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_voucher_products_on_voucher_sku_id ON public.voucher_products USING btree (voucher_sku_id);


--
-- PostgreSQL database dump complete
--

