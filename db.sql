--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.10.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.10.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: goodlist_basegood; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_basegood (
    id integer NOT NULL,
    show_name boolean NOT NULL,
    description text NOT NULL,
    brand_id integer NOT NULL,
    category_id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    sex_id integer NOT NULL
);


ALTER TABLE public.goodlist_basegood OWNER TO admin;

--
-- Name: goodlist_basegood_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_basegood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_basegood_id_seq OWNER TO admin;

--
-- Name: goodlist_basegood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_basegood_id_seq OWNED BY public.goodlist_basegood.id;


--
-- Name: goodlist_basegood_material; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_basegood_material (
    id integer NOT NULL,
    basegood_id integer NOT NULL,
    material_id integer NOT NULL
);


ALTER TABLE public.goodlist_basegood_material OWNER TO admin;

--
-- Name: goodlist_basegood_material_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_basegood_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_basegood_material_id_seq OWNER TO admin;

--
-- Name: goodlist_basegood_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_basegood_material_id_seq OWNED BY public.goodlist_basegood_material.id;


--
-- Name: goodlist_bigcategory; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_bigcategory (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.goodlist_bigcategory OWNER TO admin;

--
-- Name: goodlist_bigcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_bigcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_bigcategory_id_seq OWNER TO admin;

--
-- Name: goodlist_bigcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_bigcategory_id_seq OWNED BY public.goodlist_bigcategory.id;


--
-- Name: goodlist_brand; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_brand (
    id integer NOT NULL,
    description text NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.goodlist_brand OWNER TO admin;

--
-- Name: goodlist_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_brand_id_seq OWNER TO admin;

--
-- Name: goodlist_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_brand_id_seq OWNED BY public.goodlist_brand.id;


--
-- Name: goodlist_category; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_category (
    id integer NOT NULL,
    description text NOT NULL,
    big_category_id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.goodlist_category OWNER TO admin;

--
-- Name: goodlist_category_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_category_id_seq OWNER TO admin;

--
-- Name: goodlist_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_category_id_seq OWNED BY public.goodlist_category.id;


--
-- Name: goodlist_color; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_color (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.goodlist_color OWNER TO admin;

--
-- Name: goodlist_color_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_color_id_seq OWNER TO admin;

--
-- Name: goodlist_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_color_id_seq OWNED BY public.goodlist_color.id;


--
-- Name: goodlist_gender; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_gender (
    id integer NOT NULL,
    name character varying(10) NOT NULL
);


ALTER TABLE public.goodlist_gender OWNER TO admin;

--
-- Name: goodlist_gender_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_gender_id_seq OWNER TO admin;

--
-- Name: goodlist_gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_gender_id_seq OWNED BY public.goodlist_gender.id;


--
-- Name: goodlist_good; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_good (
    id integer NOT NULL,
    price numeric(9,2) NOT NULL,
    base_good_id integer NOT NULL,
    color_id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.goodlist_good OWNER TO admin;

--
-- Name: goodlist_good_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_good_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_good_id_seq OWNER TO admin;

--
-- Name: goodlist_good_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_good_id_seq OWNED BY public.goodlist_good.id;


--
-- Name: goodlist_goodimage; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_goodimage (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    image character varying(100) NOT NULL,
    good_id integer NOT NULL
);


ALTER TABLE public.goodlist_goodimage OWNER TO admin;

--
-- Name: goodlist_goodimage_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_goodimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_goodimage_id_seq OWNER TO admin;

--
-- Name: goodlist_goodimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_goodimage_id_seq OWNED BY public.goodlist_goodimage.id;


--
-- Name: goodlist_material; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_material (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.goodlist_material OWNER TO admin;

--
-- Name: goodlist_material_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_material_id_seq OWNER TO admin;

--
-- Name: goodlist_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_material_id_seq OWNED BY public.goodlist_material.id;


--
-- Name: goodlist_size; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_size (
    id integer NOT NULL,
    name character varying(5) NOT NULL
);


ALTER TABLE public.goodlist_size OWNER TO admin;

--
-- Name: goodlist_size_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_size_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_size_id_seq OWNER TO admin;

--
-- Name: goodlist_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_size_id_seq OWNED BY public.goodlist_size.id;


--
-- Name: goodlist_sizing; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.goodlist_sizing (
    id integer NOT NULL,
    quantity smallint NOT NULL,
    reserved smallint NOT NULL,
    good_id integer NOT NULL,
    size_id integer NOT NULL,
    CONSTRAINT goodlist_sizing_quantity_check CHECK ((quantity >= 0)),
    CONSTRAINT goodlist_sizing_reserved_check CHECK ((reserved >= 0))
);


ALTER TABLE public.goodlist_sizing OWNER TO admin;

--
-- Name: goodlist_sizing_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.goodlist_sizing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goodlist_sizing_id_seq OWNER TO admin;

--
-- Name: goodlist_sizing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.goodlist_sizing_id_seq OWNED BY public.goodlist_sizing.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: goodlist_basegood id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood ALTER COLUMN id SET DEFAULT nextval('public.goodlist_basegood_id_seq'::regclass);


--
-- Name: goodlist_basegood_material id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood_material ALTER COLUMN id SET DEFAULT nextval('public.goodlist_basegood_material_id_seq'::regclass);


--
-- Name: goodlist_bigcategory id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_bigcategory ALTER COLUMN id SET DEFAULT nextval('public.goodlist_bigcategory_id_seq'::regclass);


--
-- Name: goodlist_brand id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_brand ALTER COLUMN id SET DEFAULT nextval('public.goodlist_brand_id_seq'::regclass);


--
-- Name: goodlist_category id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_category ALTER COLUMN id SET DEFAULT nextval('public.goodlist_category_id_seq'::regclass);


--
-- Name: goodlist_color id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_color ALTER COLUMN id SET DEFAULT nextval('public.goodlist_color_id_seq'::regclass);


--
-- Name: goodlist_gender id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_gender ALTER COLUMN id SET DEFAULT nextval('public.goodlist_gender_id_seq'::regclass);


--
-- Name: goodlist_good id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_good ALTER COLUMN id SET DEFAULT nextval('public.goodlist_good_id_seq'::regclass);


--
-- Name: goodlist_goodimage id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_goodimage ALTER COLUMN id SET DEFAULT nextval('public.goodlist_goodimage_id_seq'::regclass);


--
-- Name: goodlist_material id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_material ALTER COLUMN id SET DEFAULT nextval('public.goodlist_material_id_seq'::regclass);


--
-- Name: goodlist_size id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_size ALTER COLUMN id SET DEFAULT nextval('public.goodlist_size_id_seq'::regclass);


--
-- Name: goodlist_sizing id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_sizing ALTER COLUMN id SET DEFAULT nextval('public.goodlist_sizing_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add category	7	add_category
26	Can change category	7	change_category
27	Can delete category	7	delete_category
28	Can view category	7	view_category
29	Can add base good	8	add_basegood
30	Can change base good	8	change_basegood
31	Can delete base good	8	delete_basegood
32	Can view base good	8	view_basegood
33	Can add good	9	add_good
34	Can change good	9	change_good
35	Can delete good	9	delete_good
36	Can view good	9	view_good
37	Can add big category	10	add_bigcategory
38	Can change big category	10	change_bigcategory
39	Can delete big category	10	delete_bigcategory
40	Can view big category	10	view_bigcategory
41	Can add size	11	add_size
42	Can change size	11	change_size
43	Can delete size	11	delete_size
44	Can view size	11	view_size
45	Can add material	12	add_material
46	Can change material	12	change_material
47	Can delete material	12	delete_material
48	Can view material	12	view_material
49	Can add color	13	add_color
50	Can change color	13	change_color
51	Can delete color	13	delete_color
52	Can view color	13	view_color
53	Can add sizing	14	add_sizing
54	Can change sizing	14	change_sizing
55	Can delete sizing	14	delete_sizing
56	Can view sizing	14	view_sizing
57	Can add brand	15	add_brand
58	Can change brand	15	change_brand
59	Can delete brand	15	delete_brand
60	Can view brand	15	view_brand
61	Can add good image	16	add_goodimage
62	Can change good image	16	change_goodimage
63	Can delete good image	16	delete_goodimage
64	Can view good image	16	view_goodimage
65	Can add gender	17	add_gender
66	Can change gender	17	change_gender
67	Can delete gender	17	delete_gender
68	Can view gender	17	view_gender
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$120000$Ig0elwfl9bIy$jY9qRZh/BdJmYBIEOSVwdzbo/Xpe6x7eIhC8jXLek6E=	2019-03-16 22:41:43.659787-03	f	valera				t	t	2019-03-16 18:21:24-03
1	pbkdf2_sha256$120000$zEZB4IgHxXNI$UKTHl65RuX50+gxjeSkxomyiQfTK1DxjPjbPsFCW0wE=	2019-03-17 14:04:46.723486-03	t	admin				t	t	2019-03-16 18:20:12.629664-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-03-16 18:21:24.563935-03	2	valera	1	[{"added": {}}]	4	1
2	2019-03-16 22:41:38.122507-03	2	valera	2	[{"changed": {"fields": ["is_staff"]}}]	4	1
3	2019-03-17 04:06:18.362183-03	1	Material object (1)	1	[{"added": {}}]	12	1
4	2019-03-17 04:11:28.055551-03	2	Nylon	1	[{"added": {}}]	12	1
5	2019-03-17 04:11:47.392399-03	3	Polyester	1	[{"added": {}}]	12	1
6	2019-03-17 04:12:03.537251-03	1	XS	1	[{"added": {}}]	11	1
7	2019-03-17 04:12:05.883178-03	2	S	1	[{"added": {}}]	11	1
8	2019-03-17 04:12:09.548631-03	3	M	1	[{"added": {}}]	11	1
9	2019-03-17 04:12:12.488226-03	4	L	1	[{"added": {}}]	11	1
10	2019-03-17 04:12:15.84399-03	5	XL	1	[{"added": {}}]	11	1
11	2019-03-17 04:12:19.094799-03	6	XXL	1	[{"added": {}}]	11	1
12	2019-03-17 04:12:22.240009-03	7	XXXL	1	[{"added": {}}]	11	1
13	2019-03-17 04:15:27.33485-03	1	River Island	1	[{"added": {}}]	15	1
14	2019-03-17 04:16:09.656942-03	1	Shirts	1	[{"added": {}}]	10	1
15	2019-03-17 04:16:43.530452-03	1	Denim Shirts	1	[{"added": {}}]	7	1
16	2019-03-17 04:16:56.207074-03	1	Shirt1	1	[{"added": {}}]	8	1
17	2019-03-17 04:17:03.717704-03	1	Grey	1	[{"added": {}}]	13	1
18	2019-03-17 04:17:30.213263-03	1	Shirt1_g	1	[{"added": {}}]	9	1
19	2019-03-17 04:17:37.368133-03	1	Kluch	1	[{"added": {}}]	16	1
20	2019-03-17 04:18:29.318916-03	1	Kluch	2	[{"changed": {"fields": ["image"]}}]	16	1
21	2019-03-17 04:25:21.41059-03	3	Sizing object (3)	1	[{"added": {}}]	14	1
22	2019-03-17 04:44:06.531279-03	1	Male	1	[{"added": {}}]	17	1
23	2019-03-17 04:44:11.739218-03	2	Female	1	[{"added": {}}]	17	1
24	2019-03-17 04:44:13.189317-03	2	Female	2	[]	17	1
25	2019-03-17 04:47:00.730634-03	2	Gucci	1	[{"added": {}}]	15	1
26	2019-03-17 04:47:45.40922-03	2	Hats	1	[{"added": {}}]	10	1
27	2019-03-17 04:48:06.959689-03	2	Bandanas	1	[{"added": {}}]	7	1
28	2019-03-17 04:48:16.383295-03	2	Wrap1	1	[{"added": {}}]	8	1
29	2019-03-17 04:48:39.072668-03	2	Orange	1	[{"added": {}}]	13	1
30	2019-03-17 04:48:52.607822-03	2	Wrap1_o	1	[{"added": {}}]	9	1
31	2019-03-17 04:48:58.749487-03	2	Wrap1_o	2	[]	9	1
32	2019-03-17 04:49:17.64069-03	4	Sizing object (4)	1	[{"added": {}}]	14	1
33	2019-03-17 04:49:45.526919-03	2	Wrap1_o1	1	[{"added": {}}]	16	1
34	2019-03-17 04:51:18.127368-03	3	White	1	[{"added": {}}]	13	1
35	2019-03-17 04:51:46.972435-03	3	Fred Perry	1	[{"added": {}}]	15	1
36	2019-03-17 04:52:57.095051-03	3	Hoodies & Sweatshirts	1	[{"added": {}}]	10	1
37	2019-03-17 04:53:09.222086-03	3	Sweaters	1	[{"added": {}}]	7	1
38	2019-03-17 04:53:19.932747-03	4	Wool	1	[{"added": {}}]	12	1
39	2019-03-17 04:53:21.450475-03	3	Sweater1	1	[{"added": {}}]	8	1
40	2019-03-17 04:53:35.099099-03	3	Sweater1_w	1	[{"added": {}}]	9	1
41	2019-03-17 04:54:01.263694-03	3	harold1	1	[{"added": {}}]	16	1
42	2019-03-17 07:04:06.533633-03	3	harold1	2	[{"changed": {"fields": ["image"]}}]	16	1
43	2019-03-17 07:04:11.304821-03	2	Wrap1_o1	2	[{"changed": {"fields": ["image"]}}]	16	1
44	2019-03-17 07:04:15.923653-03	1	Kluch	2	[{"changed": {"fields": ["image"]}}]	16	1
45	2019-03-17 09:56:47.705552-03	1	Shirt1	2	[]	8	1
46	2019-03-17 10:11:41.213775-03	4	Sweater1_g	1	[{"added": {}}]	9	1
47	2019-03-17 10:12:45.972663-03	5	Sizing object (5)	1	[{"added": {}}]	14	1
48	2019-03-17 11:14:38.301134-03	1	River Island	2	[{"changed": {"fields": ["slug"]}}]	15	1
49	2019-03-17 11:14:40.983382-03	2	Gucci	2	[]	15	1
50	2019-03-17 11:14:43.521198-03	3	Fred Perry	2	[]	15	1
51	2019-03-17 11:14:46.425393-03	1	River Island	2	[]	15	1
52	2019-03-17 12:12:05.571729-03	4	Shirt2_w	1	[{"added": {}}]	8	1
53	2019-03-17 12:12:16.351262-03	4	Shirt2	2	[{"changed": {"fields": ["name", "slug"]}}]	8	1
54	2019-03-17 12:12:36.639875-03	5	Shirt2_w	1	[{"added": {}}]	9	1
55	2019-03-17 12:13:16.889527-03	4	zhan1	1	[{"added": {}}]	16	1
56	2019-03-17 14:00:50.582719-03	4	T-shirts	1	[{"added": {}}]	7	1
57	2019-03-17 14:05:08.231268-03	6	Sizing object (6)	1	[{"added": {}}]	14	1
58	2019-03-17 14:05:18.069583-03	7	Sizing object (7)	1	[{"added": {}}]	14	1
59	2019-03-17 14:05:32.079394-03	8	Sizing object (8)	1	[{"added": {}}]	14	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	goodlist	category
8	goodlist	basegood
9	goodlist	good
10	goodlist	bigcategory
11	goodlist	size
12	goodlist	material
13	goodlist	color
14	goodlist	sizing
15	goodlist	brand
16	goodlist	goodimage
17	goodlist	gender
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-16 18:19:13.166962-03
2	auth	0001_initial	2019-03-16 18:19:13.293493-03
3	admin	0001_initial	2019-03-16 18:19:13.338776-03
4	admin	0002_logentry_remove_auto_add	2019-03-16 18:19:13.350634-03
5	admin	0003_logentry_add_action_flag_choices	2019-03-16 18:19:13.361591-03
6	contenttypes	0002_remove_content_type_name	2019-03-16 18:19:13.385764-03
7	auth	0002_alter_permission_name_max_length	2019-03-16 18:19:13.407659-03
8	auth	0003_alter_user_email_max_length	2019-03-16 18:19:13.420081-03
9	auth	0004_alter_user_username_opts	2019-03-16 18:19:13.430834-03
10	auth	0005_alter_user_last_login_null	2019-03-16 18:19:13.443902-03
11	auth	0006_require_contenttypes_0002	2019-03-16 18:19:13.44716-03
12	auth	0007_alter_validators_add_error_messages	2019-03-16 18:19:13.457974-03
13	auth	0008_alter_user_username_max_length	2019-03-16 18:19:13.476274-03
14	auth	0009_alter_user_last_name_max_length	2019-03-16 18:19:13.488961-03
15	sessions	0001_initial	2019-03-16 18:19:13.513861-03
16	goodlist	0001_initial	2019-03-16 20:51:46.915517-03
17	goodlist	0002_auto_20190317_0425	2019-03-16 22:25:38.602564-03
18	goodlist	0002_auto_20190317_1023	2019-03-17 04:23:46.777761-03
19	goodlist	0002_gender	2019-03-17 04:43:38.287309-03
20	goodlist	0003_good_sex	2019-03-17 04:44:39.144374-03
21	goodlist	0004_good_date	2019-03-17 06:34:43.282877-03
22	goodlist	0005_auto_20190317_1234	2019-03-17 06:35:01.695474-03
23	goodlist	0006_auto_20190317_1242	2019-03-17 06:42:49.008155-03
24	goodlist	0007_auto_20190317_1303	2019-03-17 07:03:32.920629-03
25	goodlist	0008_auto_20190317_1553	2019-03-17 09:53:35.477092-03
26	goodlist	0009_auto_20190317_1613	2019-03-17 10:13:18.474472-03
27	goodlist	0010_auto_20190317_1641	2019-03-17 10:41:25.763277-03
28	goodlist	0011_auto_20190317_1654	2019-03-17 10:55:11.717552-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: goodlist_basegood; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_basegood (id, show_name, description, brand_id, category_id, name, slug, sex_id) FROM stdin;
2	f	wow	2	2	Wrap1	wrap1	1
3	f	f	3	3	Sweater1	sweater1	1
1	f	...	1	1	Shirt1	shirt1	1
4	f	Super Cool	2	1	Shirt2	shirt2	1
\.


--
-- Data for Name: goodlist_basegood_material; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_basegood_material (id, basegood_id, material_id) FROM stdin;
1	1	1
2	2	1
3	3	4
4	4	1
5	4	2
\.


--
-- Data for Name: goodlist_bigcategory; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_bigcategory (id, name, slug) FROM stdin;
1	Shirts	shirts
2	Hats	hats
3	Hoodies & Sweatshirts	hoodies_sweatshirts
\.


--
-- Data for Name: goodlist_brand; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_brand (id, description, name, slug) FROM stdin;
2	.	Gucci	gucci
3	1	Fred Perry	fred_perry
1	...	River Island	river_island
\.


--
-- Data for Name: goodlist_category; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_category (id, description, big_category_id, name, slug) FROM stdin;
1	...	1	Denim Shirts	denim_shirts
2	a	2	Bandanas	bandanas
3	f	3	Sweaters	sweaters
4	beautiful	1	T-shirts	t-shirts
\.


--
-- Data for Name: goodlist_color; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_color (id, name, slug) FROM stdin;
1	Grey	grey
2	Orange	orange
3	White	white
\.


--
-- Data for Name: goodlist_gender; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_gender (id, name) FROM stdin;
1	Male
2	Female
\.


--
-- Data for Name: goodlist_good; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_good (id, price, base_good_id, color_id, name, slug, date) FROM stdin;
1	99999.99	1	1	Shirt1_g	shirt1_g	2019-03-17 06:34:43.175847-03
2	4990.99	2	2	Wrap1_o	wrap1_o	2019-03-17 06:34:43.175847-03
3	6969.69	3	3	Sweater1_w	sweater1_w	2019-03-17 06:34:43.175847-03
4	99999.99	3	1	Sweater1_g	sweater1_g	2019-03-17 10:11:41.19688-03
5	420.69	4	3	Shirt2_w	shirt2_w	2019-03-17 12:12:36.639208-03
\.


--
-- Data for Name: goodlist_goodimage; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_goodimage (id, name, slug, image, good_id) FROM stdin;
3	harold1	harold1	static/media/OEHy4Z98v0Y.jpg	3
2	Wrap1_o1	wrap1_o1	static/media/W8lJoCnWodI.jpg	2
1	Kluch	kluch	static/media/p8bkdiRfMWg.jpg	1
4	zhan1	zhan1	static/media/man_y90cFJq.jpg	5
\.


--
-- Data for Name: goodlist_material; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_material (id, name, slug) FROM stdin;
1	Cotton	cotton
2	Nylon	nylon
3	Polyester	polyester
4	Wool	wool
\.


--
-- Data for Name: goodlist_size; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_size (id, name) FROM stdin;
1	XS
2	S
3	M
4	L
5	XL
6	XXL
7	XXXL
\.


--
-- Data for Name: goodlist_sizing; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.goodlist_sizing (id, quantity, reserved, good_id, size_id) FROM stdin;
3	999	0	1	1
4	6	0	2	4
5	8	0	3	3
6	10	0	5	3
7	54	0	5	4
8	5	0	5	5
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 59, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: goodlist_basegood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_basegood_id_seq', 4, true);


--
-- Name: goodlist_basegood_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_basegood_material_id_seq', 5, true);


--
-- Name: goodlist_bigcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_bigcategory_id_seq', 3, true);


--
-- Name: goodlist_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_brand_id_seq', 3, true);


--
-- Name: goodlist_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_category_id_seq', 4, true);


--
-- Name: goodlist_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_color_id_seq', 3, true);


--
-- Name: goodlist_gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_gender_id_seq', 2, true);


--
-- Name: goodlist_good_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_good_id_seq', 5, true);


--
-- Name: goodlist_goodimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_goodimage_id_seq', 4, true);


--
-- Name: goodlist_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_material_id_seq', 4, true);


--
-- Name: goodlist_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_size_id_seq', 7, true);


--
-- Name: goodlist_sizing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.goodlist_sizing_id_seq', 8, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: goodlist_basegood_material goodlist_basegood_materi_basegood_id_material_id_bf816d49_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood_material
    ADD CONSTRAINT goodlist_basegood_materi_basegood_id_material_id_bf816d49_uniq UNIQUE (basegood_id, material_id);


--
-- Name: goodlist_basegood_material goodlist_basegood_material_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood_material
    ADD CONSTRAINT goodlist_basegood_material_pkey PRIMARY KEY (id);


--
-- Name: goodlist_basegood goodlist_basegood_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood
    ADD CONSTRAINT goodlist_basegood_pkey PRIMARY KEY (id);


--
-- Name: goodlist_basegood goodlist_basegood_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood
    ADD CONSTRAINT goodlist_basegood_slug_key UNIQUE (slug);


--
-- Name: goodlist_bigcategory goodlist_bigcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_bigcategory
    ADD CONSTRAINT goodlist_bigcategory_pkey PRIMARY KEY (id);


--
-- Name: goodlist_bigcategory goodlist_bigcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_bigcategory
    ADD CONSTRAINT goodlist_bigcategory_slug_key UNIQUE (slug);


--
-- Name: goodlist_brand goodlist_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_brand
    ADD CONSTRAINT goodlist_brand_pkey PRIMARY KEY (id);


--
-- Name: goodlist_brand goodlist_brand_slug_e637922f_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_brand
    ADD CONSTRAINT goodlist_brand_slug_e637922f_uniq UNIQUE (slug);


--
-- Name: goodlist_brand goodlist_brand_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_brand
    ADD CONSTRAINT goodlist_brand_slug_key UNIQUE (slug);


--
-- Name: goodlist_category goodlist_category_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_category
    ADD CONSTRAINT goodlist_category_pkey PRIMARY KEY (id);


--
-- Name: goodlist_category goodlist_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_category
    ADD CONSTRAINT goodlist_category_slug_key UNIQUE (slug);


--
-- Name: goodlist_color goodlist_color_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_color
    ADD CONSTRAINT goodlist_color_pkey PRIMARY KEY (id);


--
-- Name: goodlist_color goodlist_color_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_color
    ADD CONSTRAINT goodlist_color_slug_key UNIQUE (slug);


--
-- Name: goodlist_gender goodlist_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_gender
    ADD CONSTRAINT goodlist_gender_pkey PRIMARY KEY (id);


--
-- Name: goodlist_good goodlist_good_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_good
    ADD CONSTRAINT goodlist_good_pkey PRIMARY KEY (id);


--
-- Name: goodlist_good goodlist_good_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_good
    ADD CONSTRAINT goodlist_good_slug_key UNIQUE (slug);


--
-- Name: goodlist_goodimage goodlist_goodimage_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_goodimage
    ADD CONSTRAINT goodlist_goodimage_pkey PRIMARY KEY (id);


--
-- Name: goodlist_goodimage goodlist_goodimage_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_goodimage
    ADD CONSTRAINT goodlist_goodimage_slug_key UNIQUE (slug);


--
-- Name: goodlist_material goodlist_material_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_material
    ADD CONSTRAINT goodlist_material_pkey PRIMARY KEY (id);


--
-- Name: goodlist_material goodlist_material_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_material
    ADD CONSTRAINT goodlist_material_slug_key UNIQUE (slug);


--
-- Name: goodlist_size goodlist_size_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_size
    ADD CONSTRAINT goodlist_size_name_key UNIQUE (name);


--
-- Name: goodlist_size goodlist_size_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_size
    ADD CONSTRAINT goodlist_size_pkey PRIMARY KEY (id);


--
-- Name: goodlist_sizing goodlist_sizing_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_sizing
    ADD CONSTRAINT goodlist_sizing_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: goodlist_basegood_brand_id_7b9596e1; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_brand_id_7b9596e1 ON public.goodlist_basegood USING btree (brand_id);


--
-- Name: goodlist_basegood_category_id_5c8e7491; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_category_id_5c8e7491 ON public.goodlist_basegood USING btree (category_id);


--
-- Name: goodlist_basegood_material_basegood_id_109cba88; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_material_basegood_id_109cba88 ON public.goodlist_basegood_material USING btree (basegood_id);


--
-- Name: goodlist_basegood_material_material_id_bb16160e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_material_material_id_bb16160e ON public.goodlist_basegood_material USING btree (material_id);


--
-- Name: goodlist_basegood_name_a9da63bb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_name_a9da63bb ON public.goodlist_basegood USING btree (name);


--
-- Name: goodlist_basegood_name_a9da63bb_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_name_a9da63bb_like ON public.goodlist_basegood USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_basegood_sex_id_81289053; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_sex_id_81289053 ON public.goodlist_basegood USING btree (sex_id);


--
-- Name: goodlist_basegood_slug_0753f23d_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_basegood_slug_0753f23d_like ON public.goodlist_basegood USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_bigcategory_name_865a5076; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_bigcategory_name_865a5076 ON public.goodlist_bigcategory USING btree (name);


--
-- Name: goodlist_bigcategory_name_865a5076_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_bigcategory_name_865a5076_like ON public.goodlist_bigcategory USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_bigcategory_slug_fa849a42_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_bigcategory_slug_fa849a42_like ON public.goodlist_bigcategory USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_brand_name_7a50da93; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_brand_name_7a50da93 ON public.goodlist_brand USING btree (name);


--
-- Name: goodlist_brand_name_7a50da93_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_brand_name_7a50da93_like ON public.goodlist_brand USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_brand_slug_e637922f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_brand_slug_e637922f_like ON public.goodlist_brand USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_category_big_category_id_b5aff6b1; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_category_big_category_id_b5aff6b1 ON public.goodlist_category USING btree (big_category_id);


--
-- Name: goodlist_category_name_c8c6da5d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_category_name_c8c6da5d ON public.goodlist_category USING btree (name);


--
-- Name: goodlist_category_name_c8c6da5d_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_category_name_c8c6da5d_like ON public.goodlist_category USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_category_slug_2fadf98f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_category_slug_2fadf98f_like ON public.goodlist_category USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_color_name_099eaf48; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_color_name_099eaf48 ON public.goodlist_color USING btree (name);


--
-- Name: goodlist_color_name_099eaf48_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_color_name_099eaf48_like ON public.goodlist_color USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_color_slug_c4cb63eb_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_color_slug_c4cb63eb_like ON public.goodlist_color USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_gender_name_4a46fa55; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_gender_name_4a46fa55 ON public.goodlist_gender USING btree (name);


--
-- Name: goodlist_gender_name_4a46fa55_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_gender_name_4a46fa55_like ON public.goodlist_gender USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_good_base_good_id_6f7cd098; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_good_base_good_id_6f7cd098 ON public.goodlist_good USING btree (base_good_id);


--
-- Name: goodlist_good_color_id_f0856e3e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_good_color_id_f0856e3e ON public.goodlist_good USING btree (color_id);


--
-- Name: goodlist_good_name_a4525f73; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_good_name_a4525f73 ON public.goodlist_good USING btree (name);


--
-- Name: goodlist_good_name_a4525f73_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_good_name_a4525f73_like ON public.goodlist_good USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_good_slug_166a48c3_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_good_slug_166a48c3_like ON public.goodlist_good USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_goodimage_good_id_819d039e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_goodimage_good_id_819d039e ON public.goodlist_goodimage USING btree (good_id);


--
-- Name: goodlist_goodimage_name_c4024c01; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_goodimage_name_c4024c01 ON public.goodlist_goodimage USING btree (name);


--
-- Name: goodlist_goodimage_name_c4024c01_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_goodimage_name_c4024c01_like ON public.goodlist_goodimage USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_goodimage_slug_522fd3d3_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_goodimage_slug_522fd3d3_like ON public.goodlist_goodimage USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_material_name_3e2c325f; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_material_name_3e2c325f ON public.goodlist_material USING btree (name);


--
-- Name: goodlist_material_name_3e2c325f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_material_name_3e2c325f_like ON public.goodlist_material USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_material_slug_cd31eeca_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_material_slug_cd31eeca_like ON public.goodlist_material USING btree (slug varchar_pattern_ops);


--
-- Name: goodlist_size_name_7018f0a2_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_size_name_7018f0a2_like ON public.goodlist_size USING btree (name varchar_pattern_ops);


--
-- Name: goodlist_sizing_good_id_acd27441; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_sizing_good_id_acd27441 ON public.goodlist_sizing USING btree (good_id);


--
-- Name: goodlist_sizing_size_id_3076a8f0; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX goodlist_sizing_size_id_3076a8f0 ON public.goodlist_sizing USING btree (size_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_basegood goodlist_basegood_brand_id_7b9596e1_fk_goodlist_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood
    ADD CONSTRAINT goodlist_basegood_brand_id_7b9596e1_fk_goodlist_brand_id FOREIGN KEY (brand_id) REFERENCES public.goodlist_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_basegood goodlist_basegood_category_id_5c8e7491_fk_goodlist_category_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood
    ADD CONSTRAINT goodlist_basegood_category_id_5c8e7491_fk_goodlist_category_id FOREIGN KEY (category_id) REFERENCES public.goodlist_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_basegood_material goodlist_basegood_ma_basegood_id_109cba88_fk_goodlist_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood_material
    ADD CONSTRAINT goodlist_basegood_ma_basegood_id_109cba88_fk_goodlist_ FOREIGN KEY (basegood_id) REFERENCES public.goodlist_basegood(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_basegood_material goodlist_basegood_ma_material_id_bb16160e_fk_goodlist_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood_material
    ADD CONSTRAINT goodlist_basegood_ma_material_id_bb16160e_fk_goodlist_ FOREIGN KEY (material_id) REFERENCES public.goodlist_material(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_basegood goodlist_basegood_sex_id_81289053_fk_goodlist_gender_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_basegood
    ADD CONSTRAINT goodlist_basegood_sex_id_81289053_fk_goodlist_gender_id FOREIGN KEY (sex_id) REFERENCES public.goodlist_gender(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_category goodlist_category_big_category_id_b5aff6b1_fk_goodlist_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_category
    ADD CONSTRAINT goodlist_category_big_category_id_b5aff6b1_fk_goodlist_ FOREIGN KEY (big_category_id) REFERENCES public.goodlist_bigcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_good goodlist_good_base_good_id_6f7cd098_fk_goodlist_basegood_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_good
    ADD CONSTRAINT goodlist_good_base_good_id_6f7cd098_fk_goodlist_basegood_id FOREIGN KEY (base_good_id) REFERENCES public.goodlist_basegood(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_good goodlist_good_color_id_f0856e3e_fk_goodlist_color_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_good
    ADD CONSTRAINT goodlist_good_color_id_f0856e3e_fk_goodlist_color_id FOREIGN KEY (color_id) REFERENCES public.goodlist_color(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_goodimage goodlist_goodimage_good_id_819d039e_fk_goodlist_good_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_goodimage
    ADD CONSTRAINT goodlist_goodimage_good_id_819d039e_fk_goodlist_good_id FOREIGN KEY (good_id) REFERENCES public.goodlist_good(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_sizing goodlist_sizing_good_id_acd27441_fk_goodlist_good_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_sizing
    ADD CONSTRAINT goodlist_sizing_good_id_acd27441_fk_goodlist_good_id FOREIGN KEY (good_id) REFERENCES public.goodlist_good(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goodlist_sizing goodlist_sizing_size_id_3076a8f0_fk_goodlist_size_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.goodlist_sizing
    ADD CONSTRAINT goodlist_sizing_size_id_3076a8f0_fk_goodlist_size_id FOREIGN KEY (size_id) REFERENCES public.goodlist_size(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

