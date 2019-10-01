--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.5.19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
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


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: advertisements; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.advertisements (
    id integer NOT NULL,
    name character varying(255),
    description text NOT NULL,
    image character varying(255),
    url character varying(255),
    view_count integer NOT NULL,
    created_on timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.advertisements OWNER TO root;

--
-- Name: advertisements_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.advertisements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.advertisements_id_seq OWNER TO root;

--
-- Name: advertisements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.advertisements_id_seq OWNED BY public.advertisements.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root
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
    date_joined timestamp with time zone NOT NULL,
    name character varying(150),
    gender character varying(20),
    dob date,
    profile_pic character varying(200),
    country_code character varying(10),
    mobile character varying(20),
    global_login_token character varying(100),
    password_reset_token character varying(100),
    is_email_verified boolean NOT NULL,
    is_mobile_verified boolean NOT NULL,
    updated_on timestamp with time zone,
    device_type character varying(100),
    total_blog_count integer,
    is_author boolean NOT NULL
);


ALTER TABLE public.auth_user OWNER TO root;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO root;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO root;

--
-- Name: blog_categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.blog_categories (
    id integer NOT NULL,
    name character varying(250),
    slug character varying(255) NOT NULL,
    description text,
    thumbnail character varying(255),
    meta_title character varying(255),
    meta_description text,
    meta_keywords text,
    head_script text,
    is_active boolean NOT NULL,
    status boolean NOT NULL,
    created_on timestamp with time zone,
    updated_on timestamp with time zone,
    parent_id integer
);


ALTER TABLE public.blog_categories OWNER TO root;

--
-- Name: blog_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.blog_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_categories_id_seq OWNER TO root;

--
-- Name: blog_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.blog_categories_id_seq OWNED BY public.blog_categories.id;


--
-- Name: blog_reactions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.blog_reactions (
    id integer NOT NULL,
    created_on timestamp with time zone NOT NULL,
    blog_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_reactions OWNER TO root;

--
-- Name: blog_reactions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.blog_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_reactions_id_seq OWNER TO root;

--
-- Name: blog_reactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.blog_reactions_id_seq OWNED BY public.blog_reactions.id;


--
-- Name: blog_requests; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.blog_requests (
    id integer NOT NULL,
    document character varying(255),
    is_published boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_requests OWNER TO root;

--
-- Name: blog_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.blog_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_requests_id_seq OWNER TO root;

--
-- Name: blog_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.blog_requests_id_seq OWNED BY public.blog_requests.id;


--
-- Name: blogs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.blogs (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255) NOT NULL,
    thumbnail character varying(255),
    excerpt text,
    contents text,
    is_published boolean NOT NULL,
    published_on timestamp with time zone,
    meta_title character varying(255),
    meta_description text,
    meta_keywords text,
    head_script text,
    is_active boolean NOT NULL,
    status boolean NOT NULL,
    created_on timestamp with time zone,
    updated_on timestamp with time zone,
    view_count integer NOT NULL,
    created_by_id integer,
    updated_by_id integer,
    is_featured boolean NOT NULL
);


ALTER TABLE public.blogs OWNER TO root;

--
-- Name: blogs_category; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.blogs_category (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE public.blogs_category OWNER TO root;

--
-- Name: blogs_category_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.blogs_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blogs_category_id_seq OWNER TO root;

--
-- Name: blogs_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.blogs_category_id_seq OWNED BY public.blogs_category.id;


--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.blogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blogs_id_seq OWNER TO root;

--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- Name: career_leads; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.career_leads (
    id integer NOT NULL,
    job_profile character varying(255),
    first_name character varying(100),
    last_name character varying(100),
    email character varying(255),
    phone character varying(20),
    resume character varying(255),
    status boolean NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public.career_leads OWNER TO root;

--
-- Name: career_leads_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.career_leads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.career_leads_id_seq OWNER TO root;

--
-- Name: career_leads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.career_leads_id_seq OWNED BY public.career_leads.id;


--
-- Name: comment_reactions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.comment_reactions (
    id integer NOT NULL,
    created_on timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.comment_reactions OWNER TO root;

--
-- Name: comment_reactions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.comment_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_reactions_id_seq OWNER TO root;

--
-- Name: comment_reactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.comment_reactions_id_seq OWNED BY public.comment_reactions.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    comment text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    is_approved boolean NOT NULL,
    blog_id integer NOT NULL,
    parent_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.comments OWNER TO root;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO root;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root
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


ALTER TABLE public.django_admin_log OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO root;

--
-- Name: job_openings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.job_openings (
    id integer NOT NULL,
    job_profile character varying(255) NOT NULL,
    experience character varying(100),
    location character varying(255),
    description text,
    is_active boolean NOT NULL,
    status boolean NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE public.job_openings OWNER TO root;

--
-- Name: job_openings_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.job_openings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_openings_id_seq OWNER TO root;

--
-- Name: job_openings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.job_openings_id_seq OWNED BY public.job_openings.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    posted_by character varying(255),
    description text NOT NULL,
    url character varying(255),
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone,
    is_active boolean NOT NULL,
    status boolean NOT NULL,
    view_count integer NOT NULL,
    thumbnail character varying(255),
    published_on timestamp with time zone
);


ALTER TABLE public.news OWNER TO root;

--
-- Name: news_categories; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.news_categories (
    id integer NOT NULL,
    name character varying(250),
    slug character varying(255) NOT NULL,
    description text,
    thumbnail character varying(255),
    meta_title character varying(255),
    meta_description text,
    meta_keywords text,
    head_script text,
    is_active boolean NOT NULL,
    status boolean NOT NULL,
    created_on timestamp with time zone,
    updated_on timestamp with time zone,
    parent_id integer
);


ALTER TABLE public.news_categories OWNER TO root;

--
-- Name: news_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.news_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_categories_id_seq OWNER TO root;

--
-- Name: news_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.news_categories_id_seq OWNED BY public.news_categories.id;


--
-- Name: news_category; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.news_category (
    id integer NOT NULL,
    news_id integer NOT NULL,
    newscategory_id integer NOT NULL
);


ALTER TABLE public.news_category OWNER TO root;

--
-- Name: news_category_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.news_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_category_id_seq OWNER TO root;

--
-- Name: news_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.news_category_id_seq OWNED BY public.news_category.id;


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO root;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news_newslettersubscription; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.news_newslettersubscription (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    is_subscribed boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone
);


ALTER TABLE public.news_newslettersubscription OWNER TO root;

--
-- Name: news_newslettersubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.news_newslettersubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_newslettersubscription_id_seq OWNER TO root;

--
-- Name: news_newslettersubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.news_newslettersubscription_id_seq OWNED BY public.news_newslettersubscription.id;


--
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);


ALTER TABLE public.social_auth_association OWNER TO root;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.social_auth_association_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_association_id_seq OWNER TO root;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;


--
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.social_auth_code OWNER TO root;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.social_auth_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_code_id_seq OWNER TO root;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;


--
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE public.social_auth_nonce OWNER TO root;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.social_auth_nonce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_nonce_id_seq OWNER TO root;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;


--
-- Name: social_auth_partial; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);


ALTER TABLE public.social_auth_partial OWNER TO root;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.social_auth_partial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_partial_id_seq OWNER TO root;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;


--
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_auth_usersocialauth OWNER TO root;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_usersocialauth_id_seq OWNER TO root;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO root;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO root;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO root;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO root;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.testimonials (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    location character varying(255),
    image character varying(255),
    message text,
    rating integer NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone
);


ALTER TABLE public.testimonials OWNER TO root;

--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimonials_id_seq OWNER TO root;

--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.testimonials_id_seq OWNED BY public.testimonials.id;


--
-- Name: user_profile; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_profile (
    id integer NOT NULL,
    biography text,
    highest_qualification character varying(200),
    passing_year character varying(4),
    college character varying(200),
    university character varying(200),
    created_on timestamp with time zone,
    updated_on timestamp with time zone,
    user_id integer NOT NULL,
    facebook_link character varying(255),
    instagram_link character varying(255),
    linkedin_link character varying(255),
    twitter_link character varying(255)
);


ALTER TABLE public.user_profile OWNER TO root;

--
-- Name: user_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_profile_id_seq OWNER TO root;

--
-- Name: user_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_profile_id_seq OWNED BY public.user_profile.id;


--
-- Name: user_read_blog; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_read_blog (
    id integer NOT NULL,
    percent_read integer NOT NULL,
    status boolean NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    blog_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT user_read_blog_percent_read_check CHECK ((percent_read >= 0))
);


ALTER TABLE public.user_read_blog OWNER TO root;

--
-- Name: user_read_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.user_read_blog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_read_blog_id_seq OWNER TO root;

--
-- Name: user_read_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.user_read_blog_id_seq OWNED BY public.user_read_blog.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.advertisements ALTER COLUMN id SET DEFAULT nextval('public.advertisements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_categories ALTER COLUMN id SET DEFAULT nextval('public.blog_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_reactions ALTER COLUMN id SET DEFAULT nextval('public.blog_reactions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_requests ALTER COLUMN id SET DEFAULT nextval('public.blog_requests_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs_category ALTER COLUMN id SET DEFAULT nextval('public.blogs_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.career_leads ALTER COLUMN id SET DEFAULT nextval('public.career_leads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comment_reactions ALTER COLUMN id SET DEFAULT nextval('public.comment_reactions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.job_openings ALTER COLUMN id SET DEFAULT nextval('public.job_openings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_categories ALTER COLUMN id SET DEFAULT nextval('public.news_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_category ALTER COLUMN id SET DEFAULT nextval('public.news_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_newslettersubscription ALTER COLUMN id SET DEFAULT nextval('public.news_newslettersubscription_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.testimonials ALTER COLUMN id SET DEFAULT nextval('public.testimonials_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_profile ALTER COLUMN id SET DEFAULT nextval('public.user_profile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_read_blog ALTER COLUMN id SET DEFAULT nextval('public.user_read_blog_id_seq'::regclass);


--
-- Data for Name: advertisements; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.advertisements (id, name, description, image, url, view_count, created_on, is_active, status) FROM stdin;
\.


--
-- Name: advertisements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.advertisements_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add group	3	add_group
6	Can change group	3	change_group
7	Can delete group	3	delete_group
8	Can view group	3	view_group
9	Can add permission	2	add_permission
10	Can change permission	2	change_permission
11	Can delete permission	2	delete_permission
12	Can view permission	2	view_permission
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Tagged Item	6	add_taggeditem
22	Can change Tagged Item	6	change_taggeditem
23	Can delete Tagged Item	6	delete_taggeditem
24	Can view Tagged Item	6	view_taggeditem
25	Can add Tag	7	add_tag
26	Can change Tag	7	change_tag
27	Can delete Tag	7	delete_tag
28	Can view Tag	7	view_tag
29	Can view users.	9	view_user
30	Can list users.	9	list_user
31	Can add users.	9	add_user
32	Can edit users.	9	edit_user
33	Can delete users.	9	delete_user
34	Can download csv for users.	9	csv_for_user
35	Can add user profile	8	add_userprofile
36	Can change user profile	8	change_userprofile
37	Can delete user profile	8	delete_userprofile
38	Can view user profile	8	view_userprofile
39	Can view news categories.	10	view_news_categories
40	Can list news category.	10	list_news_categories
41	Can add news category.	10	add_news_categories
42	Can edit news category.	10	edit_news_categories
43	Can delete news category.	10	delete_news_categories
44	Can download csv for news category.	10	csv_for_news_categories
45	Can view news categories.	11	view_news_categories
46	Can list news category.	11	list_news_categories
47	Can add news category.	11	add_news_categories
48	Can edit news category.	11	edit_news_categories
49	Can delete news category.	11	delete_news_categories
50	Can download csv for news category.	11	csv_for_news_categories
51	Can add news letter subscription	12	add_newslettersubscription
52	Can change news letter subscription	12	change_newslettersubscription
53	Can delete news letter subscription	12	delete_newslettersubscription
54	Can view news letter subscription	12	view_newslettersubscription
55	Can add comment	18	add_comment
56	Can change comment	18	change_comment
57	Can delete comment	18	delete_comment
58	Can view comment	18	view_comment
59	Can view blog category.	16	view_blog_category
60	Can list blog category.	16	list_blog_category
61	Can add blog category.	16	add_blog_category
62	Can edit blog category.	16	edit_blog_category
63	Can delete blog category.	16	delete_blog_category
64	Can download csv for blog category.	16	csv_for_blog_category
65	Can add blog request	14	add_blogrequest
66	Can change blog request	14	change_blogrequest
67	Can delete blog request	14	delete_blogrequest
68	Can view blog request	14	view_blogrequest
69	Can add comment reaction	13	add_commentreaction
70	Can change comment reaction	13	change_commentreaction
71	Can delete comment reaction	13	delete_commentreaction
72	Can view comment reaction	13	view_commentreaction
73	Can add blog reaction	15	add_blogreaction
74	Can change blog reaction	15	change_blogreaction
75	Can delete blog reaction	15	delete_blogreaction
76	Can view blog reaction	15	view_blogreaction
77	Can add user blog read	17	add_userblogread
78	Can change user blog read	17	change_userblogread
79	Can delete user blog read	17	delete_userblogread
80	Can view user blog read	17	view_userblogread
81	Can view blog.	19	view_blog
82	Can list blog.	19	list_blog
83	Can add blog.	19	add_blog
84	Can edit blog.	19	edit_blog
85	Can delete blog.	19	delete_blog
86	Can download csv for blog.	19	csv_for_blog
87	Can add testimonial	23	add_testimonial
88	Can change testimonial	23	change_testimonial
89	Can delete testimonial	23	delete_testimonial
90	Can view testimonial	23	view_testimonial
91	Can add advertisement	21	add_advertisement
92	Can change advertisement	21	change_advertisement
93	Can delete advertisement	21	delete_advertisement
94	Can view advertisement	21	view_advertisement
95	Can add career	20	add_career
96	Can change career	20	change_career
97	Can delete career	20	delete_career
98	Can view career	20	view_career
99	Can add job openings	22	add_jobopenings
100	Can change job openings	22	change_jobopenings
101	Can delete job openings	22	delete_jobopenings
102	Can view job openings	22	view_jobopenings
103	Can add Token	24	add_token
104	Can change Token	24	change_token
105	Can delete Token	24	delete_token
106	Can view Token	24	view_token
107	Can add user social auth	25	add_usersocialauth
108	Can change user social auth	25	change_usersocialauth
109	Can delete user social auth	25	delete_usersocialauth
110	Can view user social auth	25	view_usersocialauth
111	Can add code	27	add_code
112	Can change code	27	change_code
113	Can delete code	27	delete_code
114	Can view code	27	view_code
115	Can add partial	26	add_partial
116	Can change partial	26	change_partial
117	Can delete partial	26	delete_partial
118	Can view partial	26	view_partial
119	Can add association	28	add_association
120	Can change association	28	change_association
121	Can delete association	28	delete_association
122	Can view association	28	view_association
123	Can add nonce	29	add_nonce
124	Can change nonce	29	change_nonce
125	Can delete nonce	29	delete_nonce
126	Can view nonce	29	view_nonce
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 126, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, name, gender, dob, profile_pic, country_code, mobile, global_login_token, password_reset_token, is_email_verified, is_mobile_verified, updated_on, device_type, total_blog_count, is_author) FROM stdin;
28	pbkdf2_sha256$150000$dhxvB9vsj2Cy$xLuoOYIO5D22+EGoGfPrIyPLmyAjavqPe1vjzLxhr4M=	2019-09-10 11:37:34.798751+00	f	richs			ric@yopmail.com	f	t	2019-09-10 11:11:39.929172+00	richa	\N	\N	\N	\N	9292929292	\N	\N	f	f	\N	website	0	f
30	!ZYoEcuW9jSAeGtIkqxW5VV2Tmrrrdz5lVIUKXdf9	\N	f	abhishek.soni@codeflowtech.com	abhishek	soni	abhishek.soni@codeflowtech.com	f	t	2019-09-10 22:32:17.310118+00	abhishek.soni	\N	\N	\N	\N	3232132132	\N	\N	f	f	\N	website	0	f
11	pbkdf2_sha256$150000$Hi9uwRta02Ko$X7yvCPvyk2eKi2ztknWssAtZVvhUFOB1JWfzBpSAV0o=	2019-09-23 16:41:41.531299+00	f	abhisheksoni500@gmail.com	Abhishek	Soni	abhisheksoni500@gmail.com	f	t	2019-09-07 08:16:13.755345+00	abhishek	\N	\N	\N	\N	9720457881	\N	\N	f	f	\N	website	0	f
20	pbkdf2_sha256$150000$xmWbJ8KBnVqX$sW3dcjgBk6ZVpzGGvTIsQ/NbSz5qDzzHW0LQ37scZOQ=	2019-09-12 08:50:13.505518+00	f	dino1			dino1@gmail.com	f	t	2019-09-09 15:03:36.510533+00	Dino	\N	\N	\N	\N	9876543210	\N	\N	f	f	\N	website	0	f
5	pbkdf2_sha256$150000$DHann0DHk7lr$kxYXc9rBDYN9VFDjfhUzdrGFOlOaQbR5UOZ9GjTmDAw=	\N	f	sheetal			sheetal@yopmail.com	f	t	2019-09-06 12:55:01.967701+00	Sheetal Sharma	\N	\N	/backend/media/profile_pic/8826801/275060_1568265579_sheetal.png	\N	5845825484	\N	\N	f	f	2019-09-06 12:58:46+00	website	0	t
26	pbkdf2_sha256$150000$27nqQHZhRUQq$/aEkYumCseChXZP7jNeL7SDK/xSvwdXhdj9ArT0XsJU=	2019-09-10 11:12:21.236312+00	f	test you			yep@yopmail.com	f	t	2019-09-10 04:53:18.07405+00	Test	\N	\N	/backend/media/user-profile/4994894/test-image.jpg	\N	9192992929	\N	\N	f	f	\N	website	0	f
9	pbkdf2_sha256$150000$dyx3ymxPh8e2$P4tOxO32xGbYaurkldh3MFrk+0Cfnrb67gF8eIjpLYQ=	\N	f	neelam			neelam@yopmail.com	f	t	2019-09-06 12:57:32.245574+00	Neelam Tyagi	\N	\N	/backend/media/profile_pic/5115842/7433188_1568265420_neelam.jpg	\N	5845845852	\N	\N	f	f	2019-09-06 12:58:17+00	website	0	t
7	pbkdf2_sha256$150000$HjYgWijPoJ85$DYxNAE3XX+jnfE9u7jSIIFsqYJNoxWyYgJfvoX330hc=	\N	f	gaurav			gaurav@yopmail.com	f	t	2019-09-06 12:56:36.767452+00	Gaurav Pathak	\N	\N	/backend/media/profile_pic/8596806/1489896_1568265663_gaurav.jpeg	\N	5854585415	\N	\N	f	f	2019-09-06 12:58:32+00	website	0	t
74	!mtieFK2UYGlN30z93LYsHpwmWo1cHz9w6SxMkc7T	\N	f	deepak.iant1996@gmail.com	Deepak	Kumawat	deepak.iant1996@gmail.com	f	t	2019-09-21 12:29:38.76797+00	deepak.iant1996	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
29	pbkdf2_sha256$150000$1RO9EksIVCN8$NaNWL0+CMVjWCQl+jlgWeU3xrmsfzLIlCZUgBdxqrgA=	2019-09-10 16:09:33.473198+00	f	dinesh			dinensh@dshjsd.com	f	t	2019-09-10 16:09:22.974681+00	dinesh k	\N	\N	\N	\N	8136119218	\N	\N	f	f	\N	website	0	f
19	pbkdf2_sha256$150000$McNjL5y9pDX3$zlWa+NIGviigvjAV68NhTyteC4L1AjFwNx9SkpZxHXQ=	2019-09-09 14:54:42.507408+00	f	Testbdbdbdbdhdhdhdbdbdbdb			Test@yopmail.com	f	t	2019-09-09 14:54:25.859408+00	Test	\N	\N	/backend/media/user-profile/9662173/image.jpg	\N	0000000000	\N	\N	f	f	\N	website	0	f
3	pbkdf2_sha256$150000$gbOvzXlflWBy$PrDFrB7OfugOK5Oi5L1mfOdUhmuI0amzp8/uxxrcG34=	2019-09-19 10:27:57.197325+00	f	niraj			niraj@fsad.sad	f	t	2019-09-06 11:29:16.719449+00	niraj	\N	\N	/backend/media/user-profile/7653566/niraj.jpg	\N	0932423423	\N	\N	f	f	2019-09-06 11:42:37+00	website	0	t
1	pbkdf2_sha256$150000$o5qtEsJnIqZ9$VBi7/LtARfiu9ue0Bf6QaGM8xUXw0k3Lvjvk5RFH/Dg=	2019-09-23 17:11:45.464227+00	t	admin			info@analyticssteps.com	t	t	2019-09-02 07:59:58.664628+00	\N	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
13	pbkdf2_sha256$150000$TF8HaM8abdNL$2YsaGuUR28AenI6WGg2mwXdiqDArutafwRmQHS6AWvU=	2019-09-07 14:13:50.560653+00	f	purvikhoda			purvikhoda@gmail.com	f	t	2019-09-07 14:13:35.536514+00	Purvi Khoda	\N	\N	\N	\N	8859023112	\N	\N	f	f	\N	website	0	f
77	!K25WjH74tb6WMGW8TZJgU26MwANlulzBGNT9nXyk	\N	f	shivanikumawat6137@gmail.com	Shivani	Kumawat	shivanikumawat6137@gmail.com	f	t	2019-09-23 16:48:43.075072+00	shivanikumawat6137	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
40	!crs29ui19mu0I1tHRYVolAOtgN9jStZLSukn35ZQ	\N	f	dinesh.kumawat@codeflowtech.com	dinesh chandra	kumawat	dinesh.kumawat@codeflowtech.com	f	t	2019-09-11 11:00:28.416041+00	dinesh.kumawat	\N	\N	/backend/media/user-profile/8315577/9d4e6542-7f91-406c-96a2-9b592956d978.jpeg	\N	9892179172	\N	\N	f	f	\N	website	0	f
18	pbkdf2_sha256$150000$v6KNExdApdr1$DNpjrS/I9Q6OdWwVSO0sHsqKf6svGYvcIhRhawKAZGo=	2019-09-25 11:30:22.668255+00	f	tanesh08			taneshbalodi8@gmail.com	f	t	2019-09-09 11:43:01.892231+00	Tanesh balodi	\N	\N	\N	\N	7656756756	\N	\N	f	f	\N	website	0	f
79	pbkdf2_sha256$150000$AOTx7HWPbfN3$AXD0Axk7IvmDaVOKM9Jgj5QHw6tfbS9ZrB7GyDahkCI=	2019-09-26 05:03:49.496826+00	f	Antigone			amdavinash97@gmail.com	f	t	2019-09-26 05:00:01.189377+00	Avinash Mishra	\N	\N	/backend/media/profile_pic/2050123/7854162_1569475438_avinash.jpg	\N	8750622193	\N	\N	f	f	2019-09-26 05:23:43+00	website	0	t
14	pbkdf2_sha256$150000$mPwqJoGTLh0f$4Kac4AkIM6JwD/Y+9e5j+QtUg4ATJgPtbHyg3birLjI=	2019-09-08 15:28:49.509702+00	f	Lokesh			lokeshmahalatime@gmail.com	f	t	2019-09-08 15:28:11.357137+00	Lokesh	\N	\N	\N	\N	7310584127	\N	\N	f	f	\N	website	0	f
25	pbkdf2_sha256$150000$ZFqhNJYwecKi$hIMi2l2nOxrNNkAcevkKMZrzz17XlcJ9WINKVWbNZ6c=	2019-09-13 12:02:35.552217+00	f	lll			singh1@gmail.com	f	t	2019-09-09 17:35:23.547844+00	dsds	\N	\N	\N	\N	3232323232	\N	\N	f	f	\N	website	0	f
81	pbkdf2_sha256$150000$9k6xlClPDXLb$EbNh2nNlSUOnGiaLllX7/Jn6bjZqdYXWVTDdBNI0ZI8=	2019-09-28 11:09:02.069522+00	f	Sani			sanidhya6198@gmail.com	f	t	2019-09-28 11:08:45.597441+00	Sanidhya Tiwari	\N	\N	\N	\N	6352265090	\N	\N	f	f	\N	website	0	f
15	pbkdf2_sha256$150000$cc64CW8gdZg7$EACYjC6VrQDrO1AyZbPwhsIrIbvzCjljPqSObJKRGKA=	2019-09-19 11:58:09.159631+00	f	asvga			abcd@gmail.com	f	t	2019-09-09 05:17:27.319622+00	sasaa	\N	\N	\N	\N	1234567890	\N	\N	f	f	\N	website	0	f
24	pbkdf2_sha256$150000$zPL5VWxrLPre$C5SDxjbIdpFQr1XbGqjTBWgbEkAk29Pt5KUVaydPl1Y=	2019-09-10 04:46:14.191091+00	f	kkk			fddf9d@cgffg.com	f	t	2019-09-09 17:31:38.9215+00	mmnm	\N	\N	\N	\N	7878787878	\N	\N	f	f	\N	website	0	f
23	pbkdf2_sha256$150000$DivCDBCjjUIM$OTORnxtk5lLKf5DzrAkdksg0FXO3F1QDd+Rro8iFnOI=	2019-09-09 17:34:02.684651+00	f	singh			fddfd@cgffg.com	f	t	2019-09-09 17:26:45.887389+00	sandeep	\N	\N	\N	\N	6657656756	\N	\N	f	f	\N	website	0	f
17	!Jmjx3q2O4SyaTnvFlO9AaGRX2li3PhZTz08irYhM	\N	f	vivek.vikash2014@vitalum.ac.in	VIVEK VIKASH	14BCL1099	vivek.vikash2014@vitalum.ac.in	f	t	2019-09-09 06:56:48.931819+00	vivek.vikash2014	\N	\N	\N	\N	8989935455	\N	\N	f	f	\N	website	0	f
32	pbkdf2_sha256$150000$J3wybZcX4u6M$rLxJRnlCFKWTm4DBnoOygcnuwcMe3/NUS06Dpz+ybF4=	2019-09-20 11:06:55.41315+00	f	test			manual@yopmail.com	f	t	2019-09-11 04:05:06.83143+00	test	\N	\N	/backend/media/user-profile/7254910/image.jpg	\N	9292929929	\N	\N	f	f	\N	website	0	f
4	pbkdf2_sha256$150000$RCfxz7Fb4Wvc$g8CWiiOpKQGeTzubl/XtfKNIiNtlhrAypApMgTGA2JA=	\N	f	tanesh			tanesh@analyticssteps.com	f	t	2019-09-06 12:54:09.5729+00	Tanesh Balodi	\N	\N	/backend/media/profile_pic/4992835/497042_1568265385_tanesh.jpeg	\N	9584584584	\N	\N	f	f	2019-09-06 12:58:53+00	website	0	t
33	!9anpGmMQHlXYEiUyGuQYt3JkxxsvLivQNujQvEP6	\N	f	smartboyvicky05@gmail.com	vivek	vikash	smartboyvicky05@gmail.com	f	t	2019-09-11 04:27:54.934234+00	smartboyvicky05	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
8	pbkdf2_sha256$150000$4Kqrb1Kcmwto$H7B1vC9HYvT3KaWqDDTdxsx6kzw2hYlvhifDtdNeDt0=	\N	f	richa			richa@yopmail.com	f	t	2019-09-06 12:57:03.78865+00	Richa Grover	\N	\N	/backend/media/profile_pic/3060824/7569167_1568265398_richa.JPG	\N	4582584584	\N	\N	f	f	2019-09-06 12:58:24+00	website	0	t
16	!yOuzj8aEzi72ci2AlswUWYh2lh8EAPAwVQXaTkdp	\N	f	niraj.kumar@codeflowtech.com	Niraj	Kumar	niraj.kumar@codeflowtech.com	f	t	2019-09-09 06:41:51.772217+00	niraj	\N	\N	\N	\N	5645645645	\N	\N	f	f	\N	website	0	f
31	pbkdf2_sha256$150000$QcT1iTppnLpO$cdJX5JAE62hAVRmJxFJHk23GqKEoQO6dceT/MFVGRUU=	2019-09-13 06:50:26.588198+00	f	ratan			ratan@gmail.com	f	t	2019-09-11 02:50:42.18757+00	ratan	\N	\N	\N	\N	2836293719	\N	\N	f	f	\N	website	0	f
27	pbkdf2_sha256$150000$vaC8ImwQYTFk$Re0Hr/TAIe8qs8fhry881gAqo46AVngKqN5pxmC4csY=	2019-09-16 10:05:40.070907+00	f	dino12			dino@ajgdsj.com	f	t	2019-09-10 06:01:21.925706+00	dinesh kumawat	\N	\N	\N	\N	8913701198	\N	\N	f	f	\N	website	0	f
48	!5oSxr9DUmnzifPsxDLsx5npq7GHYV8KtaJUHR77Q	\N	f	sandeep.singh@codeflowtech.com	sandeep	singh	sandeep.singh@codeflowtech.com	f	t	2019-09-11 17:07:47.947537+00	sandeep.singh	\N	\N	\N	\N	4234234234	\N	\N	f	f	\N	website	0	f
44	!xj0yqXgmz5vlVlHtK09bkyhGKu8mqpnLBBEXk6nV	\N	f	dineshchandrasinghkumawatbad@gmail.com	Dinesh chandra singh	kumawat badhaniya	dineshchandrasinghkumawatbad@gmail.com	f	t	2019-09-11 12:14:17.767214+00	dineshchandrasinghkumawatbad	\N	\N	\N	\N	2222222220	\N	\N	f	f	\N	website	0	f
6	pbkdf2_sha256$150000$1GWqIGfsST2S$y4TE7u+3T6wrTSGKYFJ0qA9kJf1sLjaWTbLrTu9jRvg=	2019-09-10 11:45:12.084269+00	f	ayush			ayush@yopmail.com	f	t	2019-09-06 12:55:39.802135+00	Ayush Gandhi	\N	\N	/backend/media/profile_pic/4088996/9296805_1568197558_0.jpeg	\N	4584258584	\N	\N	f	f	2019-09-06 12:58:37+00	website	0	t
75	!wTcioSFWT27ppAXuQIStoFo6noYo7RnT403qbaoR	\N	f	dilipkumawat1222@gmail.com	Dilip	Kumawat	dilipkumawat1222@gmail.com	f	t	2019-09-21 16:39:21.516143+00	dilipkumawat1222	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
49	pbkdf2_sha256$150000$cpu7oKuVbFET$SRcMH0o/1k5eBWMNAUVBMheSpSvraJV00XN6fTAw4k0=	\N	f	ght			go@yopmail.com	f	t	2019-09-12 09:53:59.051343+00	agh	\N	\N	\N	\N	5854158524	\N	\N	f	f	\N	website	0	f
59	pbkdf2_sha256$150000$9YsO9FPuMzCo$PuZzrD7Sk4UHjnqVT1lzj2jMmN+u4jPnw0TuT6VmCs0=	2019-09-24 05:29:06.937319+00	f	vivek.vikash@codeflowtech.com	vivek	vikash	vivek.vikash@codeflowtech.com	f	t	2019-09-13 11:22:41.675927+00	vivek.vikash	\N	\N	\N	\N	9941507969	\N	\N	f	f	\N	website	0	f
52	!AlPcE1kFZ0jzAHhzOszmq9OpseUrJ1NVBMWiuC7q	\N	f	taniya.verma@codeflowtech.com	Taniya	Verma	taniya.verma@codeflowtech.com	f	t	2019-09-13 06:16:54.852435+00	taniya.verma	\N	\N	\N	\N	4234234242	\N	\N	f	f	\N	website	0	f
57	pbkdf2_sha256$150000$ZI7T1w9P7fZ8$rKVzJtvBrVvxjqs5zW1vpVvw2L0/SbPO0Om1uSQvND0=	2019-10-01 10:48:42.856843+00	f	rahul gupta			rahul.gupta@codeflowtech.com	f	t	2019-09-13 09:58:11.370313+00	Rahul Gupta	\N	\N	/backend/media/profile_pic/7704321/1878457_1568368985_rahul.jpg	\N	8826157444	\N	\N	t	t	2019-09-13 09:59:26+00	website	0	t
65	pbkdf2_sha256$150000$7kLlMqVPVTkN$Q0PlLfPT5ZXDO600tIUX6hG5ejQu37UT2BOg+3StnhQ=	2019-10-01 10:19:57.153647+00	f	dck			dineshkkkkkkkkkk@sdjgsdgsdgsjdgs.com	f	t	2019-09-19 06:45:56.249204+00	dinesh c k	\N	\N	/backend/media/user-profile/9711406/pca.jpg	\N	9372372379	\N	\N	f	f	\N	website	0	f
37	pbkdf2_sha256$150000$vdu28KXtSZ5d$m3Vt2xSwChq+EE4kqvyvp8eZxeI77pqeK+D++JV83qU=	2019-09-11 11:29:50.198081+00	f	tew			ten@yopmail.com	f	t	2019-09-11 05:33:29.944079+00	richa	\N	\N	\N	\N	8181818188	\N	\N	f	f	\N	website	0	f
42	pbkdf2_sha256$150000$lhM7fJ81pctw$KtW5Zv3xbnL2GqECD4qzF8qsnygO6q4EwiC5WOcRo6c=	2019-09-11 11:47:02.783988+00	f	abc			a@yopmail.com	f	t	2019-09-11 11:46:50.272562+00	abc	\N	\N	\N	\N	0000000022	\N	\N	f	f	\N	website	0	f
34	pbkdf2_sha256$150000$59GR8R9eZR5s$OCRaHhXWNFfIyhR/VmQBSNzT/jlNgDw//buX1LIatLs=	2019-09-11 05:51:24.261118+00	f	tee@@@@@@@@@@@@@@@@@@@@@@			tee@yopmail.ccom	f	t	2019-09-11 04:47:14.346176+00	tet	\N	\N	\N	\N	9999999999	\N	\N	f	f	\N	website	0	f
39	!p1SghqxgVjaGKsdaUymJvps7kTkvTYMz619bCMEq	\N	f	richa.grover22@gmail.com	richa	grover	richa.grover22@gmail.com	f	t	2019-09-11 06:12:34.97705+00	richa.grover22	\N	\N	/backend/media/user-profile/2003920/image.jpg	\N	5950533030	\N	\N	f	f	\N	website	0	f
38	!Qu4USk74qJ2sX7paczXZcUdULK2PpexABh8Mrw6b	\N	f	rajesh.mehla@codeflowtech.com	Rajesh	Mehla	rajesh.mehla@codeflowtech.com	f	t	2019-09-11 05:45:59.061815+00	rajesh.mehlavvvvvvvvvvvvv	\N	\N	\N	\N	9999999990	\N	\N	f	f	\N	website	0	f
50	pbkdf2_sha256$150000$3LSuBJAeI3uF$CXHwFdEB1QZmrbwQdyOD0v+zjaMOE/HHEXGClwQwgGs=	2019-09-12 11:41:48.881217+00	f	dino			dino@gmail.com	f	t	2019-09-12 11:41:41.342404+00	dinesh	\N	\N	\N	\N	8937271973	\N	\N	f	f	\N	website	0	f
36	!ELpzFT6QXicNFxSCgWEjB6SUNJtk9tVseMoW6Upf	\N	f	Deepanshu DPS	Deepanshu	d	deepanshu.d@codeflowtech.com	f	t	2019-09-11 05:22:44.378842+00	Deepanshu 	\N	\N	/backend/media/user-profile/5200254/DSC_0013.JPG	\N	8800908158	\N	\N	f	f	\N	website	0	f
43	pbkdf2_sha256$150000$vrsLcyQ7B3e1$5Q7rg6u0FHkd9NevmCbd0Ti3izPAROi0TItOgPZ6i3U=	2019-09-19 05:27:47.152855+00	f	add			add@yopmail.com	f	t	2019-09-11 11:49:49.422458+00	addaddaddaddaddaddaddadda	\N	\N	/backend/media/user-profile/3086064/SampleJPGImage_100kbmb.jpg	\N	1515151551	\N	\N	f	f	\N	website	0	f
55	!d6LpUBvG0MSEkJxQR35VhkLs6VsLjIwHt7ktzGXH	\N	f	harvinkour.dutta@codeflowtech.com	harvinkour.	dutta	harvinkour.dutta@codeflowtech.com	f	t	2019-09-13 08:46:45.008131+00	harvinkour.dutta	\N	\N	\N	\N	2252963666	\N	\N	f	f	\N	website	0	f
47	!XPphKkSaQTLVaH79TSH8Oj7icdMHiYsBgHQeRyy9	\N	f	analyticssteps@gmail.com	Analytics	Steps	analyticssteps@gmail.com	f	t	2019-09-11 15:57:10.405468+00	analyticssteps	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
45	!VstvWMGEUMXMi4XGhpSBkNNcsRH8pWLgc0zjrEaY	\N	f	aditi.chamoli@codeflowtech.com	aditi	chamoli	aditi.chamoli@codeflowtech.com	f	t	2019-09-11 12:20:55.705972+00	aditi.chamoli	\N	\N	\N	\N	4444255555	\N	\N	f	f	\N	website	0	f
53	pbkdf2_sha256$150000$CygQwn4z3a0A$iw1fIprMQyHLTDluX2gCCTMNnpDaopzJYEEbNnUwDmo=	\N	f	ooo			o@o.com	f	t	2019-09-13 08:39:21.946181+00	ooo	\N	\N	\N	\N	0000000007	\N	\N	f	f	\N	website	0	f
60	pbkdf2_sha256$150000$h40Me5A2FqQF$jySVHDrgExlmbnohxiW7Wa/+Zer6xLfErUbwLP6vYRc=	2019-09-13 12:03:12.6717+00	f	web			web@yopmail.com	f	t	2019-09-13 12:02:55.868891+00	Test	\N	\N	\N	\N	9293993939	\N	\N	f	f	\N	website	0	f
56	pbkdf2_sha256$150000$Eai0fmvtSBol$YZ+uU5Zb8/xYBK7VyJHOI6xGlXnMJKseIEMT+gddPHc=	2019-09-13 09:01:06.486051+00	f	aaa			ab@yopmail.com	f	t	2019-09-13 09:00:56.381887+00	aaa	\N	\N	/backend/media/user-profile/5876225/ayush.jpg	\N	6626626818	\N	\N	f	f	\N	website	0	f
66	pbkdf2_sha256$150000$cXYoX8vBxy40$88qmYnq1Beutafn99KDGfxA6duX0imzMD6ENQMQkNdg=	2019-09-20 10:08:35.767578+00	f	new			add1@yopmail.com	f	t	2019-09-19 06:47:41.253572+00	Test	\N	\N	\N	\N	8274646194	\N	\N	f	f	\N	website	0	f
51	!PYU6RNdoVR54dE6UTUNKPVAQTAq7sM1jh5y5p650	\N	f	preeti.sharma@codeflowtech.com	preeti	sharma	preeti.sharma@codeflowtech.com	f	t	2019-09-13 05:59:15.544396+00	preeti.sharma	\N	\N	\N	\N	2222222200	\N	\N	f	f	\N	website	0	f
58	pbkdf2_sha256$150000$unxecbevVZU8$ETarbTXJD2kyjKnXwvO75pp5TTZ1n1J6JD61ZkNQIgc=	2019-09-13 10:27:22.617293+00	f	a			jindal.ankush95@gmail.com	f	t	2019-09-13 10:27:12.285212+00	Ankush	\N	\N	/backend/media/user-profile/4528293/Ankush’s-sign.jpg	\N	9805901195	\N	\N	f	f	\N	website	0	f
62	pbkdf2_sha256$150000$fKPWBeIl1bZj$7nbRVmEU2DH8UCkm/Av0ePUR02Mr3FgPnAxtVNfkQd8=	2019-09-13 12:38:56.75356+00	f	tee			t@yopmail.com	f	t	2019-09-13 12:38:44.569177+00	test	\N	\N	\N	\N	7272772727	\N	\N	f	f	\N	website	0	f
61	pbkdf2_sha256$150000$vibyyklyCEe6$qzmpnEPWR7NX4ET6uPElxMB32ea+2gYF481mFVSRl8s=	2019-09-13 12:12:19.619527+00	f	000			vv@yopmail.com	f	t	2019-09-13 12:12:09.709097+00	test	\N	\N	\N	\N	8288282828	\N	\N	f	f	\N	website	0	f
63	pbkdf2_sha256$150000$Wnn7Es5ocZrn$P7YuWc9jJLu0zYjf0xb121R+fjX/EJKgpZa3pKvPVM8=	2019-09-13 12:41:02.000578+00	f	eee			e@yopmail.com	f	t	2019-09-13 12:40:51.833498+00	ttw	\N	\N	\N	\N	8380184108	\N	\N	f	f	\N	website	0	f
64	pbkdf2_sha256$150000$GijjX0jPNVN4$mzpZwTOHvCN59EodlhvILZnYuwefr5IqkFwXVoTvxU4=	2019-09-16 05:39:31.215919+00	f	ppp			o@gmail.com	f	t	2019-09-13 12:41:25.944304+00	ooo	\N	\N	\N	\N	7878787876	\N	\N	f	f	\N	website	0	f
68	pbkdf2_sha256$150000$jVYKCSXf7NU3$xNK0q3dZk+LD27IH4Gk64i2gVUhnl5vEMrPtA54GT/0=	\N	f	kjh			vivek@gmail.com	f	t	2019-09-19 11:59:27.491315+00	Vivek	\N	\N	\N	\N	5845845145	\N	\N	f	f	\N	website	0	f
67	pbkdf2_sha256$150000$D7VUHIDbKLsZ$7bqBEmrcqlxiemgxc/0Fbyvv26reyGS46T74DJHKnQQ=	2019-09-19 07:01:40.872793+00	f	net			new@yopmail.com	f	t	2019-09-19 06:51:59.753039+00	test	\N	\N	\N	\N	7368338638	\N	\N	f	f	\N	website	0	f
70	pbkdf2_sha256$150000$iTKT3IgXkQfG$2SAEUtc5/tm5Lbc3AszanPQZgaSbH+Sp/hgTtM8xiVw=	2019-09-19 12:44:37.929043+00	f	Qqq			Yeyey@topmail.com	f	t	2019-09-19 12:44:27.411356+00	Testdt	\N	\N	\N	\N	7373738378	\N	\N	f	f	\N	website	0	f
69	pbkdf2_sha256$150000$gJxm8vwnvB4d$zYb+6QA0fVlSjVenYx0kiO/OtHK5lKaoN2YTwcVzgHk=	2019-09-19 12:41:06.020086+00	f	teee			neww@yopmail.com	f	t	2019-09-19 12:40:50.246794+00	test	\N	\N	\N	\N	8282828282	\N	\N	f	f	\N	website	0	f
82	!sYGPuQjdlJCDDdhn3QfG5iVqrEoGfNyk3bhrHkcO	\N	f	sdinesh718@gmail.com	Dinesh Chandra	Kumawat	sdinesh718@gmail.com	f	t	2019-10-01 10:43:25.175545+00	sdinesh718	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
83	!xDgBB8kBotuIINxCc4GrB6lfo0A3nb5FmiZJnSZ1	\N	f	rahul.tripathi@codeflowtech.com	Rahul	Tripathi	rahul.tripathi@codeflowtech.com	f	t	2019-10-01 10:45:01.122503+00	rahul.tripathi	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
84	!dDbufCA0m0GuzXINsqpfiVLwKVyMts3JIgduKRGW	\N	f	ayush.gandhi@analyticssteps.com	ayush	gandhi	ayush.gandhi@analyticssteps.com	f	t	2019-10-01 10:45:32.534681+00	ayush.gandhi	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
73	!6r7Yz2NZHbporAOKELwVNaBUzg1Z5FMWL8mRv3er	\N	f	richa.grover@codeflowtech.com	Richa	Grover	richa.grover@codeflowtech.co ddddddddddddddddddddddddddddddddddddddddddddddm  	f	t	2019-09-20 11:33:11.622779+00	richa.grover	\N	\N	\N	\N	7896321459	\N	\N	f	f	\N	website	0	f
76	pbkdf2_sha256$150000$8Ev6muTCm7VI$exGwJYMUj8HiC4pQ+1B0CdcU1olSUY7qOxU5pNFr3Ig=	2019-09-23 12:21:30.085682+00	f	sahil			sahil.kumar901504@gmail.com	f	t	2019-09-23 12:21:15.214124+00	Sahil Kumar	\N	\N	\N	\N	9015043970	\N	\N	f	f	\N	website	0	f
78	!AH9lsDz6o7lVUHa5jDzTMWH9TLg4LxVJUGWrku8K	\N	f	sameerkrishna.narla@gmail.com	sameer	krishna	sameerkrishna.narla@gmail.com	f	t	2019-09-24 09:11:55.9931+00	sameerkrishna.narla	\N	\N	\N	\N	\N	\N	\N	f	f	\N	website	0	f
72	pbkdf2_sha256$150000$s5Hgch4mfky9$owp7bW1sQxqCMYtLBsJXcnAUFSP84Y0gl2A98GLgm3o=	2019-09-20 10:12:19.201305+00	f	yyyy			y@yopmail.com	f	t	2019-09-20 09:53:05.760375+00	tetetet	\N	\N	\N	\N	8282828820	\N	\N	f	f	\N	website	0	f
85	pbkdf2_sha256$150000$WMqxvrbHHem0$KK1XvgzTROiy6ZtGUXLlM8arxvCsBy5UuKpmG67XVD4=	2019-10-01 11:03:47.537613+00	f	Neelam			tyagi.neelam1992@gmail.com	f	t	2019-10-01 11:00:43.640153+00	Neelam Tyagi	\N	\N	\N	\N	8447812062	\N	\N	f	f	\N	website	0	f
21	pbkdf2_sha256$150000$RZOkcwuTapn7$CauOLzK+Qs3ek+R7yyej6BhUW3Yf2VhmkMpjfDzYmOQ=	2019-09-10 04:11:15.812792+00	f	neelam.tyagi@analyticssteps.com	Neelam	Tyagi	neelam.tyagi@analyticssteps.com	f	t	2019-09-09 15:16:52.908625+00	Neelam Tyagi	\N	\N	/backend/media/profile_pic/2367633/6644812_1568197799_20190909_121946.jpg	\N	8510868234	\N	\N	f	f	2019-09-11 10:29:54+00	website	0	f
80	pbkdf2_sha256$150000$rFkMOk0VGCm3$5twyaejGWTyveATWkwOFAARDSsBWLRwTRX6wZHOFVOw=	2019-09-26 18:17:31.415661+00	f	pat2			prakhar.student.met15@iitbhu.ac.in	f	t	2019-09-26 18:16:58.331465+00	Prakhar Partha	\N	\N	\N	\N	7080486918	\N	\N	f	f	\N	website	0	f
71	!ZJXOnEbEw30M4abg4CLkVv0YRqCnuJiISaIOmn77	\N	f	poojakumawat6137@gmail.com	Pooja	Kumawat	poojakumawat6137@gmail.com	f	t	2019-09-19 16:08:29.686979+00	pooja kumawat 	\N	\N	\N	\N	9662546137	\N	\N	f	f	\N	website	0	f
10	pbkdf2_sha256$150000$iIYuhw54GeqW$lure+2b3CF8P+w+FyaJpv30WxsmlN2Lbdlrb9H2Efi8=	2019-09-10 15:57:21.774268+00	f	dinesh@analyticssteps.com	Dinesh Chandra	Kumawat	dinesh@analyticssteps.com	f	t	2019-09-07 08:08:35.463404+00	Dinesh Kumawat	\N	\N	/backend/media/user-profile/9067494/15681824726795259365693182182706.jpg	\N	9045189242	\N	\N	f	f	\N	website	0	f
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 85, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: blog_categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.blog_categories (id, name, slug, description, thumbnail, meta_title, meta_description, meta_keywords, head_script, is_active, status, created_on, updated_on, parent_id) FROM stdin;
2	MACHINE LEARNING	machine-learning		/backend/media/thumbnail/8780307/8540690_1567761119_ML2.jpg	\N				t	t	2019-09-06 09:11:45+00	\N	\N
3	DEEP LEARNING	deep-learning		\N	\N				t	t	\N	\N	\N
4	BIG DATA	big-data		\N	\N				t	t	\N	\N	\N
5	NATURAL LANGUAGE PROCESSING	nlp		\N	\N				t	t	\N	\N	\N
\.


--
-- Name: blog_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.blog_categories_id_seq', 5, true);


--
-- Data for Name: blog_reactions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.blog_reactions (id, created_on, blog_id, user_id) FROM stdin;
1	2019-09-07 08:09:24.644449+00	8	10
3	2019-09-07 08:13:40.601498+00	11	10
4	2019-09-08 15:32:22.239146+00	5	14
91	2019-09-11 11:54:10.22545+00	11	43
10	2019-09-09 05:20:39.733186+00	7	15
94	2019-09-11 12:15:28.013393+00	11	44
95	2019-09-12 05:09:53.337636+00	12	18
97	2019-09-12 11:44:06.033266+00	10	50
101	2019-09-13 06:59:39.224947+00	4	51
102	2019-09-13 07:05:36.324315+00	10	39
23	2019-09-09 11:05:45.513781+00	1	10
104	2019-09-13 07:24:17.963625+00	10	51
25	2019-09-09 11:42:40.998791+00	10	15
105	2019-09-13 08:23:00.52407+00	9	51
106	2019-09-13 08:41:04.79779+00	10	10
107	2019-09-13 09:11:11.673582+00	2	56
32	2019-09-09 15:10:04.668141+00	7	19
34	2019-09-09 15:20:50.71198+00	10	19
40	2019-09-10 04:47:34.845898+00	7	20
41	2019-09-10 04:56:30.147225+00	10	26
42	2019-09-10 05:03:08.084745+00	10	24
43	2019-09-10 05:09:36.628643+00	4	26
121	2019-09-13 10:27:26.356835+00	10	58
122	2019-09-13 11:08:04.916082+00	7	18
50	2019-09-10 05:55:27.694651+00	11	26
51	2019-09-10 06:07:27.205214+00	3	26
52	2019-09-10 06:08:05.057344+00	3	10
53	2019-09-10 06:23:20.887899+00	7	26
54	2019-09-10 06:38:36.35229+00	6	27
123	2019-09-13 11:50:54.593774+00	2	39
58	2019-09-10 10:17:55.013501+00	8	26
60	2019-09-10 10:46:20.938611+00	1	20
129	2019-09-13 12:09:07.410722+00	9	56
67	2019-09-10 13:01:28.573517+00	4	28
68	2019-09-10 13:01:59.682885+00	10	28
140	2019-09-16 07:24:06.811798+00	10	43
141	2019-09-18 10:00:14.979019+00	1	21
142	2019-09-18 18:06:49.178526+00	3	48
79	2019-09-11 04:08:53.043399+00	10	16
81	2019-09-11 04:15:03.553856+00	10	18
82	2019-09-11 04:19:12.366455+00	1	18
83	2019-09-11 04:19:44.134678+00	11	18
84	2019-09-11 04:34:12.201372+00	10	32
88	2019-09-11 06:24:05.217776+00	7	37
144	2019-09-19 05:43:32.875429+00	13	43
145	2019-09-19 06:54:07.159277+00	4	67
146	2019-09-19 11:14:00.605342+00	8	3
147	2019-09-20 04:32:24.340809+00	8	21
148	2019-09-20 09:25:03.7778+00	14	21
149	2019-09-20 09:35:50.230627+00	13	21
150	2019-09-20 09:40:45.366575+00	2	21
151	2019-09-20 09:43:53.441585+00	9	21
152	2019-09-20 10:13:10.256847+00	8	72
153	2019-09-20 10:13:59.506098+00	14	72
154	2019-09-20 10:20:16.424854+00	1	72
155	2019-09-20 10:22:59.774926+00	11	72
156	2019-09-20 10:23:34.933171+00	4	72
157	2019-09-20 10:53:34.313049+00	13	72
159	2019-09-23 05:08:07.171137+00	2	73
161	2019-09-24 10:55:58.261308+00	15	65
162	2019-09-25 09:55:12.201439+00	16	65
163	2019-09-25 09:55:27.226167+00	11	65
164	2019-09-25 09:55:33.041763+00	9	65
165	2019-09-25 09:55:38.423265+00	1	65
166	2019-09-25 09:55:44.796198+00	4	65
167	2019-09-25 09:58:12.109789+00	16	21
168	2019-09-25 11:30:27.488521+00	16	18
169	2019-09-25 11:30:37.207188+00	14	18
172	2019-09-25 15:50:15.290045+00	16	71
173	2019-09-26 06:07:35.064501+00	13	71
174	2019-09-26 06:08:29.592099+00	10	71
175	2019-09-26 06:12:02.368952+00	7	71
177	2019-09-28 11:10:11.795214+00	14	81
178	2019-09-28 12:19:22.264443+00	15	21
179	2019-09-28 16:21:09.892348+00	17	21
180	2019-09-29 05:51:45.360993+00	17	65
181	2019-09-29 18:45:05.862306+00	17	71
182	2019-09-30 08:26:20.961665+00	16	59
183	2019-09-30 08:26:25.440051+00	17	59
184	2019-09-30 08:26:28.789302+00	15	59
185	2019-09-30 08:26:31.595269+00	14	59
186	2019-09-30 08:26:44.713158+00	10	59
187	2019-09-30 08:26:50.906917+00	7	59
188	2019-09-30 08:26:55.148835+00	1	59
189	2019-09-30 08:27:00.336745+00	4	59
190	2019-10-01 10:17:38.473678+00	18	21
191	2019-10-01 10:19:47.349832+00	18	65
192	2019-10-01 10:42:03.198083+00	18	10
193	2019-10-01 10:42:25.43047+00	18	40
194	2019-10-01 10:43:27.965819+00	18	82
195	2019-10-01 10:45:11.262051+00	18	83
196	2019-10-01 10:45:27.593244+00	18	59
197	2019-10-01 10:45:36.007137+00	18	84
198	2019-10-01 10:45:40.345346+00	17	84
199	2019-10-01 10:45:44.242181+00	16	84
200	2019-10-01 10:45:48.23329+00	15	84
201	2019-10-01 10:45:48.756075+00	17	83
202	2019-10-01 10:45:52.13139+00	14	84
203	2019-10-01 10:45:55.930813+00	13	84
204	2019-10-01 10:46:23.081796+00	10	84
205	2019-10-01 10:46:50.094721+00	1	84
206	2019-10-01 10:46:53.892426+00	4	84
207	2019-10-01 10:46:57.582243+00	7	84
208	2019-10-01 10:47:27.907206+00	16	83
209	2019-10-01 10:48:39.974764+00	8	59
210	2019-10-01 10:48:48.002814+00	17	57
211	2019-10-01 10:48:55.706342+00	16	57
212	2019-10-01 10:49:00.885365+00	15	57
213	2019-10-01 10:49:06.105147+00	14	57
214	2019-10-01 10:49:13.693663+00	13	57
215	2019-10-01 10:49:19.160611+00	10	57
216	2019-10-01 10:49:24.15726+00	18	57
217	2019-10-01 10:54:13.249143+00	11	83
218	2019-10-01 11:03:57.272063+00	18	85
219	2019-10-01 11:04:04.151232+00	10	85
220	2019-10-01 11:04:07.390861+00	7	85
221	2019-10-01 11:04:10.350849+00	1	85
222	2019-10-01 11:04:13.726529+00	4	85
223	2019-10-01 11:04:16.566707+00	14	85
224	2019-10-01 11:04:20.742231+00	11	85
225	2019-10-01 11:04:25.7105+00	13	85
226	2019-10-01 11:04:27.89411+00	3	85
227	2019-10-01 11:04:33.046286+00	8	85
228	2019-10-01 11:04:43.893667+00	16	85
\.


--
-- Name: blog_reactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.blog_reactions_id_seq', 228, true);


--
-- Data for Name: blog_requests; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.blog_requests (id, document, is_published, created_on, updated_on, user_id) FROM stdin;
1	/backend/media/uploaded-blog/dino/47059/Introduction of Linear Regression.docx	f	2019-09-07 08:16:17.432641+00	\N	10
2	/backend/media/uploaded-blog/dino/78330/Introduction to KNN.docx	f	2019-09-07 08:16:43.879758+00	\N	10
3	/backend/media/uploaded-blog/dino/75716/Introduction to logistic regression .docx	f	2019-09-09 11:06:16.380267+00	\N	10
4	/backend/media/uploaded-blog/Testbdbdbdbdhdhdhdbdbdbdb/70072/Test Document - Assignment.docx	f	2019-09-09 14:58:44.0675+00	\N	19
5	/backend/media/uploaded-blog/dino1/43392/data science blog.docx	f	2019-09-10 05:18:29.675376+00	\N	20
6	/backend/media/uploaded-blog/dino/19693/Introduction-to-logistic-regression-.docx	f	2019-09-10 11:35:22.138935+00	\N	10
7	/backend/media/uploaded-blog/test you/79215/test.pdf	f	2019-09-10 12:00:02.830085+00	\N	26
9	/backend/media/uploaded-blog/preeti.sharma@codeflowtech.com/47647/test.pdf	f	2019-09-13 06:20:12.019798+00	\N	51
10	/backend/media/uploaded-blog/dinesh@analyticssteps.com/85782/Introduction-to-Machine-Learning.docx	f	2019-09-13 06:28:38.641758+00	\N	10
11	/backend/media/uploaded-blog/preeti.sharma@codeflowtech.com/85098/Test-Document---Assignment.docx	f	2019-09-13 07:15:00.150499+00	\N	51
12	/backend/media/uploaded-blog/richa.grover22@gmail.com/49961/test.pdf	f	2019-09-13 11:34:55.184546+00	\N	39
13	/backend/media/uploaded-blog/aaa/34144/data-science-blog.docx	f	2019-09-13 12:10:41.365661+00	\N	56
14	/backend/media/uploaded-blog/aaa/42823/data-science-blog.docx	f	2019-09-13 12:11:14.281662+00	\N	56
15	/backend/media/uploaded-blog/000/84259/data-science-blog.docx	f	2019-09-13 12:17:45.378961+00	\N	61
17	/backend/media/uploaded-blog/dinesh@analyticssteps.com/20813/NEWS-CONTENT-OF-ANALYTICS-STEPS.docx	f	2019-09-16 05:50:03.076887+00	\N	10
18	/backend/media/uploaded-blog/add/71873/test.pdf	f	2019-09-16 05:53:05.597467+00	\N	43
19	/backend/media/uploaded-blog/add/54736/test.pdf	f	2019-09-16 05:54:51.839856+00	\N	43
20	/backend/media/uploaded-blog/niraj/90913/5757_1552371454_html.docx	f	2019-09-16 06:16:36.97248+00	\N	3
21	/backend/media/uploaded-blog/niraj/85698/5757_1552371454_html.docx	f	2019-09-16 06:20:16.006234+00	\N	3
22	/backend/media/uploaded-blog/niraj/87255/5757_1552371454_html.docx	f	2019-09-16 06:24:27.815401+00	\N	3
23	/backend/media/uploaded-blog/niraj/22107/5854999_REPAYMENT.pdf	f	2019-09-16 06:25:40.330529+00	\N	3
24	/backend/media/uploaded-blog/niraj/52358/Form49A.pdf	f	2019-09-16 07:04:33.010487+00	\N	3
25	/backend/media/uploaded-blog/yyyy/77286/test.pdf	f	2019-09-20 10:00:16.967232+00	\N	72
26	/backend/media/uploaded-blog/richa.grover@codeflowtech.com/43758/test.pdf	f	2019-09-23 04:36:00.143708+00	\N	73
\.


--
-- Name: blog_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.blog_requests_id_seq', 26, true);


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.blogs (id, title, slug, thumbnail, excerpt, contents, is_published, published_on, meta_title, meta_description, meta_keywords, head_script, is_active, status, created_on, updated_on, view_count, created_by_id, updated_by_id, is_featured) FROM stdin;
8	Why is Tableau used for? Read the working and key features of Tableau	why-is-tableau-used-for-read-the-working-and-key-features-of-tableau	/backend/media/thumbnail/6688951/9020635_1568351099_Banner_Tableau_Dashboard.jpg	<p>All the excellent purpose-oriented business conclusions become easy to pursue if the outcomes from the analysis of the dataset are presented in the form of data visualization.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">All the excellent purpose-oriented business conclusions become easy to pursue if the outcomes from the analysis of the dataset are presented in the form of data visualization. And it is more advantageous to predict insights if all graphs, charts, plots etc are placed on a single dashboard. Here, the concept of tableau comes into the picture. Tableau is the platform used for visualizing motives. Any type of graphs, plots, and charts can be made easily in the Tableau without the need for any programming. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Topics Covered</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau: An Introduction</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Working of Tableau</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau&rsquo;s features</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Overview of Tableau&rsquo;s products</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conclusion</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau: An Introduction</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau is the rapid growing visualization tool used for different business applications. It is high in demand software due to its easy access to use. It is widely used in Business Intelligence (BI) processes. It is crafted in such a way that all kinds of charts, plots, and graphs with different designs can be positioned simultaneously for visualization. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">If we talk about the data type and structure and their access in tableau, tableau can work on any kind of data type either data is structured, unstructured or reinforcement datasets with the accessing of any sort of programming language as R, Python, SAS, etc. A person with a non-technical background can easily work on Tableau as Tableau doesn&rsquo;t require any technical or programming knowledge. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau has plenty of easy accessible function which can create highly simplified graphs or charts for any set of complex data. A business analyst can investigate any pattern, insight, flow, or trends from visually available data and hence predict or conclude for any business problem.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Working of Tableau </strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As discussed earlier, any sort of data is easily accessible to Tableau. So in the procedure of tableau, it gets connected and extracted to data for visualization. Tableau can extract data from a database like pdf, excel, text documents, R, Hadoop, Python or SAS to cloud databases like Flipkart, Google sheet, Netflix, Amazon.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The data is dragged off to the data engine of Tableau, also called as the Tableau desktop. Here, the business analyst works on data, generates dashboard and share with the user, where the user reads this on the screen called Tableau Reader. Data is published with various supported features like collaboration, models of security, automation, distribution, etc. In the end, the user will be able to download a visualized data file on emails, desktop or mobile.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau&rsquo;s features</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As simple as Tableau is easy to use, it is more feasible and flexible to create a dashboard on it because of its premier features. Some of its features are listed below.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Depending upon the useability of Tableau it has the features as easy to access from different sources, no need for&nbsp;any technical or programming knowledge, quick respond for making a dashboard.&nbsp;</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">For easy&nbsp;accessibility and analysis, the data file can be downloaded locally on mobile or desktop, multilingual representation of data, real-time exploration of any dataset, etc.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">In terms of connecting and sharing, it has various inbuilt advanced features such as collaboration and distribution, highly securable, multiple data sources connection, easy importation and exportation of the massive size of data. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Overview of Tableau Products</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The tableau consists of different products, each product has some specific function required for the designing of the dashboard, so Tableau products suite consists of</span></span></p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Desktop </span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Public</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Server</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Online</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Reader</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Tableau Features -: Tableau Desktop , Tableau Server, Tableau Public, Tableau Reader and Tableau Online" class="images" src="/backend/media/uploads/2019/09/06/image-20190906161711-1.jpeg" style="height:493px; width:750px" title="Tableau Product image" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small">Tableau product image</span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Which are further classified into two parts based on analysis of data</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>1. Developer Tools</strong></span></span></p>\r\n</div>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Roboto,serif"><span style="font-size:medium">In this class, tools in the tableau are used for developing, such as generating the dashboard, making of reports, graphs, bars, charts, maps, visualization, etc.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Desktop and Tableau Public work as a developer tool.</span></span></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>2.&nbsp;Sharing Tools</strong></span></span></p>\r\n</div>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Roboto,serif"><span style="font-size:medium">In this class, tools in the tableau are used for the sharing of visualized reports, charts, graphs as a complete dashboard. Tableau Server, Tableau Online, and Tableau Reader work together as sharing tools.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau products suits are discussed in details below</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau Desktop</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Desktop is a tool full of specific functionality. It is the place where all types of charts, graphs, reports etc are made to form a dashboard. The dashboard can be shared with any server and can be read in Tableau Server. </span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Desktop is used for different purposes as connectivity and sources of data with the user. Tableau Desktop is either used personally or professionally. Personal Tableau desktop is used for private mode, its workbook can&rsquo;t be shared publicly and is of limited access. Professional Tableau Desktop is used for professional work only, it can be shared or created by anyone and gets published on Tableau Server with full access of all genre of the data </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau Public</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">This is the user and cost-effective Tableau version which is used publically, the worksheet created on this is saved in the cloud of Tableau Server, in order to use or shared by everyone. It has easy and unlimited access for users.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">If someone wants to learn anything about Tableau or wants to share his work publicly, then, Tableau Public is favourable. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau Server</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Server is highly used for sharing dashboards, visualization, and worksheets that are generated on Tableau Desktop through any organization. The worksheets must be published on Tableau Desktop in order to share with Tableau Server, it is only then accessible to the user. </span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Server is highly secured software for swift and effectual sharing of data within an organization</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau Online</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Online is an online sharing tool in which data is saved on the servers, fully arranged on the cloud and maintained by Tableau group. There is no storage limit of data published on Tableau Online. Similar to Tableau Server, Tableau Online also need the worksheets created by Tableau Desktop to broadcast the data. All sorts of data can be supported by Tableau Online like data from different web applications, Google Analytics, e-commerce shops etc, </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Tableau Reader</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau Reader is the tool that allows the reading of worksheets or visualization created on Tableau Desktop or Tableau Public. The data can be refined but any kind of modifications or editing are restricted. There is no security of data as this can be accessed by any user for the reading of worksheets.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As Tableau has a more specific function such as generating worksheets, easily accessible, no technical background required, large volume data supported, etc., it is highly used for business applications. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Tableau saves a lot of time in creating data visualization and gives very fast and accurate results. It helps to code and customize reports. Tableau is an excellent visualization apparatus for analytics and business intelligence applications. </span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>	t	2019-08-21 10:50:05+00	Why is Tableau used for? Read the working and key features of Tableau	Tableau's features like Tableau Desktop, Server, Online, Reader are utilized for visualizing data. Grasp tremendous benefits of Tableau.	Tableau Architecture, Advantages of the Tableau, Tableau Overview, When to use Tableau, Benefits of Tableau, What is Tableau Desktop, Tableau Online		t	t	2019-08-21 10:49:53+00	\N	295	9	\N	t
11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	an-optimum-approach-towards-the-bag-of-words-with-code-illustration-in-python	/backend/media/thumbnail/4015403/8991626_1568351235_bannner.jpg	<p>Bag-of-words is one of the most fundamental algorithms in Natural Language Processing (NLP).</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Bag-of-words is one of the most fundamental algorithms in Natural Language Processing (NLP). Its main work is Information retrieval from data. It is mostly used in document classification which is language modelling and topic modelling. Mostly we face problems in&nbsp;the modelling text data that is very messy and unorganized. Machine learning algorithms can not work with any raw and text data directly because it is a machine and it demands numbers as input, not text. So, we have to convert all the text into numbers or vectors to model our algorithm. Now, that is the time when BOW (bag-of-words) comes in demand.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Topics Covered</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">About Bag of Words</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Types of Vectorizer</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Vector Visualization of Bag of Words</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Bag of Words Implementation using NLTK</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conclusion </span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is Bag-of-Words (BOW)?</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It is a way to extract important and necessary features from the text for use in machine learning modelling. Bag-of-words called &ldquo;Bag&rdquo; of words because any information about the order or structure of words in the documents is discarded. Whenever we apply any model or any algorithm in machine learning or natural language processing (NLP) it always works on numbers. So, the bag of words model used to pre-process the text to convert it into the large corpus of words, which keeps a count of the total occurrences of most frequently used words.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In general, it&rsquo;s a collection of words to represent a sentence with word count and mostly disregarding the order in which they appear.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-1.jpeg" style="height:372px; width:750px" /></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Steps of BOW</u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Consider any text document, if we want to extract some features out of the text we need to follow the steps mentioned above:</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Cleaning of text -&gt;</strong> cleaning of text broadly means removing all those words which are of less significance to our algorithm. These words will only space up to our database and we shall never need it. In NLTK, we have a stopword library, which helps out in the cleaning of words of less significance.</span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Tokenization -&gt;</strong> Tokenization is a process of breaking a text document into small tokens consisting of phrases, symbols, or even a whole sentence.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Building vocab -&gt;</strong> vocab for which we need to count vector</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Generating vectors -&gt;</strong> firstly we create zero vector and append the counts of words to it and we get vector counts.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Vector Visualization of Bag of words</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="BAG of Words Working " class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-2.jpeg" style="height:560px; width:750px" title="Working of BOW" /></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Working of BOW</u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we can easily observe, Bag of words is just counting of all significant words in a text.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Types of Vectorizer</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>TF vectorizer</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> -&gt; TF stands for Term Frequency, it is a count of every word coming frequently and the logically smaller document will not have frequency more than that of a bigger document.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="margin-left:96px">&nbsp;</p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-large">TF(t,d) = </span></span><img src="/backend/media/uploads/2019/09/09/image-20190909180434-1.png" style="height:38px; width:318px" /><span style="font-family:Roboto,serif"><span style="font-size:x-large"> &nbsp;</span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>IDF vectorizer</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> -&gt; IDF stands for Inverse Document Frequency, it calculates how rare any word is used in a text document.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-large">IDF = log</span></span><img src="/backend/media/uploads/2019/09/06/image-20190906164045-4.png" style="height:18px; width:17px" /><span style="font-family:Roboto,serif"><span style="font-size:x-large"> </span></span><img src="/backend/media/uploads/2019/09/06/image-20190906164045-5.png" style="height:42px; width:280px" /><span style="font-family:Roboto,serif"><span style="font-size:x-large"> </span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Bag of Words Implementation Using NLTK Library</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 1: Importing libraries</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="NLTK Tokenizer" class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-6.png" style="height:100px; width:780px" /></p>\r\n\r\n<p><img alt="TFIDF python NLTK " class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-7.png" style="height:43px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Note</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">: you may or may not require downloading the packages, so code accordingly.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 2: </span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-8.png" style="height:62px; width:780px" /> <img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-9.png" style="height:144px; width:780px" /></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Copy-paste any decent text from somewhere (web scraping) or create your dataset.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 3:</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-10.png" style="height:565px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-11.png" style="height:167px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we have learned about tokenization, it is a process of breaking text documents into small tokens which may consist of phrases, symbols or even whole sentences.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Word_tokenize is tokenizing words and sent_tokenize is tokenizing sentences as we can observe from our code.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 4:</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-12.png" style="height:194px; width:780px" /></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Our next step would be removing stopwords, these are useless data that only tend to load our database and should be removed. We have a standard library from NLTK which is very helpful in this pre-processing.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">CV here is count vectorizer which we will be using to generate vectors of our frequency of words in our text.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 5:</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-13.png" style="height:140px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Counted the length of tokens</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 6:</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-14.png" style="height:393px; width:780px" /></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Inbuilt vocabulary function in NLTK</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 7:</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-15.png" style="height:249px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Changing vector to an array and printing the array value.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large">Step 8:</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906164045-16.png" style="height:137px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Extracting all the feature names using cv.get_feature_names().</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Some Disadvantages of Bag of Words are -</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The semantics or the meaning of the context in which words are used is usually compromised due to the orthogonality of vectors.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conditions like overfitting may occur generally because we take the whole statement as input which can cause dimensionality problems.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Bag of words is a fundamental step towards natural language processing which is used to extract some features from the text. We read about the approaches like term frequency (TF) and inverse document frequency (IDF). I hope you&rsquo;ve got some basic ideas about the Bag of Words.</span></span><span style="color:#1c1e29"><span style="font-family:Roboto,serif"> </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">For more blogs in Analytics and new technologies do read</span></span><span style="color:#1c1e29"><span style="font-family:Roboto,serif"> </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="color:#1c1e29"><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></span></p>	t	2019-08-22 11:11:31+00	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	Bag of words is used for the sentimental analysis of words, TF-IDF is a method for presenting text data into numbers using ML algorithms. Understand this process using python code.	Bag of Words sklearn, tfidf Python, Bag of Words Sentiment Analysis, Bag of Words Implementation python, Bag of words alternatives, Bag of Words Python, nltk Tokenizer, tf idf Python nltk		t	t	2019-08-22 11:11:17+00	\N	468	4	\N	t
15	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	learning-recurrent-neural-network-applications-and-its-role-sentiment-analysis	/backend/media/thumbnail/849328/9472319_1569320834_banner_imageRNN (1).jpg	<p>Recurrent Neural Network(RNN&#39;s) model manages Sentiment analysis here in python code, learn the application of Recurrent neural network and difference between RNN and CNN.</p>	<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The purpose of this blog is to provide you with the foreknowledge about recurrent neural network, applications, functioning, and structure of RNN, LSTMs. We mainly focus on the conduction of sentiment analysis using RNN models with the Python code.&nbsp; For a specific opinion, you can try to understand term Recurrent neural networks as a neural networks that learn, understand and remember the output of the previous action and process the same action into the input of the current mode of step, similar to the human brains that remember prior events or results, manage, and utilize in the present scenario, just a simple example, remembering a credit/debit card password and use it every time when needed. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Topics Covered</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Introduction to RNN</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Understand the architecture and working of RNN</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Comparison Between RNN and CNN</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Applications of RNN</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">LSTM (Long Short Term Memory Network)</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Sentiment Analysis using RNN</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Conclusion</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Introduction to RNN</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Firstly, let me introduce the basic Recurrent Neural Network (RNN)&nbsp; and their picture into action. You have already seen the definition of RNN, <em>&ldquo; type of neural network in which output of previous steps are fed as the input of current steps&rdquo;, </em>suppose you want to predict the next word in a sentence, for this you might know the previous words in that sentence,<em> </em>and hence all the previous words of a sentence are expected to memorize, so recurrent neural network comes into the picture.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Typically, RNNs are designed for studying the sequence of data provided in patterns, such as text recognition, different handwriting, spoken words, and genomes, besides this, neural networks are highly implemented in numerically presented time series, originated by stock markets and different sensors. RNN algorithms consume time and consider data in a sequence pattern, due to this reason this is applicable for images also, images can be disintegrated to a group of patches and handled as sequence data. From the view of broad research, neural networks are the most powerful and versatile. tools as memory networks, and also neural networks possess memory and time consuming, hence recurrent neural networks used for the same. The only difference that makes RNN special and a very useful model in natural language processing is its ability to remember information for a very long period of time due to the inbuilt memory system. It is widely used in Natural Language Processing techniques like text generation and speech recognition.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Understand the architecture and working of the RNN Model </span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The architecture of RNN has a similar layout like that of CNN and other artificial neural networks, like a general neural network, it has input broadly three layers, which are input layer, hidden layer, and output layer. Again, these layers work in a sequence.&nbsp;</span></span></span></span><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Input layers fetch the data and do the data preprocessing, later, when this data is filtered it is moved to hidden layers where several neural networks as algorithms and <a href="https://www.analyticssteps.com/blogs/7-types-activation-functions-neural-network">activation functions</a> are performed in order to retrieve useful information, further this set of information goes to the output layer. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">A Hidden layer is the most important feature in RNN, as it stores and remembers some information about a sequence. Consider an example in which a network in which we have one input layer, four hidden layers, and one output layer, four hidden layers contain own weights and biases, let&rsquo;s say all hidden layer carry weights and biases as (w1,b1), (w2,b2), (w3,b3), and (w4,b4) respectively, these weights and biases are independent to each other and hence do not retain previous information. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Recurrent Neural Network architecture includes input layers, hidden layers and an output layer" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-1.jpeg" style="height:560px; width:750px" title="Recurrent Neural Network Structure" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Here, the main function of RNN comes, <span style="background-color:white">RNN provides same and equal weight and bias to each layer and hence convert the independent variables to dependent variables, it will reduce the parameters and memorize each prior outputs by supplying each output as input&nbsp; to succeeding hidden layer, and hence all four layers can be connected together such that weights and biases of all hidden layers are identical, into a single recurrent layer.&nbsp;</span></span></span></span></span><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Recurrent neural networks have loops for storing and executing information whereas other <a href="https://www.analyticssteps.com/blogs/neural-network-using-keras-functional-api-overview-structure-and-its-applications">neural networks</a></span></span><span style="font-size:12.0pt"><span style="font-family:Roboto">&nbsp;do not have such loops that can contain information, one of the approaches might also be that it can connect to previous information to the current condition.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Recurrent neural networks have information perseverance quality which is not found in conventional neural networks. RNN functionality totally depends upon its main component (also the secret behind its long-lasting memory) which is LSTM, and the other alternative for LSTM which has proved to be as efficient as LSTM and sometimes more with its higher speed and accuracy is gated recurrent unit, in short GRU.</span></span></span></span></p>\r\n\r\n<p style="text-align:center"><img alt="The linear structure of Recurrent Neural Network in Deep Learning" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-2.jpeg" style="height:560px; width:750px" title="Linear Structure of RNN" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The recurrent neural network has a chain-like linear structure which we can visualize with the help of the above diagram that is interrelated with each other, in past years RNN is successfully being used in machine translation, image modeling, speech recognition, and many others.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><strong><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">There are four types of RNN</span></span></span></span></strong></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">One to one</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">One to many</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Many to one</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Many to many</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="Types of Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-3.jpeg" style="height:560px; width:750px" title="RNN types" /></p>\r\n\r\n<p style="text-align:center"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Comparison between RNN and CNN</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Recurrent neural networks are based on the work of David Rumelhart&rsquo;s in 1986. But the real question is why we use RNN when we have <a href="https://www.analyticssteps.com/blogs/convolutional-neural-network-cnn-graphical-visualization-code-explanation">convolutional neural networks</a>.</span></span><span style="font-size:12.0pt"><span style="font-family:Roboto">&nbsp;Let&rsquo;s do a fair comparison between CNN and RNN</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">CNN does not consider previous outputs rather it considers the current input, but RNN has internal memory which stores the previously generated output and current input depends upon it.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">RNN can handle sequential data whereas CNN cannot.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">In RNN, the previous output is taken as input to the current state for which it is best used in natural language processing.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">CNN is more powerful as it can be stacked into deep models whereas RNN cannot.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">CNN is the top choice for image classification and computer vision, but RNN can sometimes perform better in natural language processing</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Applications of RNN</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Image classification</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> includes providing a class to an image, for example classifying image of dog and cat where the machine automatically learns through the features.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Image captioning</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> which basically means automatically providing a caption to an image as we might have seen in google photos which automatically assign correct names to places and peoples.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="3">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Language translation</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">, we must have seen how google translates one language(mainly English) to so many other languages is an example of language translation.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="4">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Sentiment analysis</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">, which is one of the NLP methods to find out whether any statement is positively remarked or negatively remarked. For example, if we want to assign some rating to a movie on the basis of reviews given by people like comments, we would be taking counts of all the positive as well as negative remarks and by average, we will decide the movie ratings. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="5">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Handwritten digit recognition and speech recognition</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> is one of the applications of RNN, Google Alexa and Amazon Echo is an example of speech recognition where machine understands our language and performs actions accordingly.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Long Term Short Memory Network ( LSTMN)</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">These networks were designed for long term dependencies, therefore the idea which makes it different from other neural network is that it is able to remember information for a long span of time without learning, again and again, making this whole process simpler and faster. This type of recurrent neural network includes an inbuilt memory for storing information.</span></span></span></span></p>\r\n\r\n<p style="text-align:center"><img alt="LSTM architecture in Recurrent Neural Network." class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-4.jpeg" style="height:560px; width:750px" title="LSTM structure" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">As being a part of a recurrent neural network it also has a chain-like structure, but instead of having a single-layer neural network, it has four. LSTM structure also has structural gates which are able to add or remove any information. There are five architectural elements in LSTM, they are:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Input gate </span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Forget gate</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Cell</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Output gate</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Hidden state output</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="LSTM gates in Recurrent Neural Networks." class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-5.jpeg" style="height:560px; width:750px" title="LSTM gates" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">We can see the working of LSTM gates, input gate processes the input information, next we can see forget gate, forget gate tells the cell which information to ignore or forget that is not useful, it does so by multiplying that information value to zero so that information remains with no value and this information is reverted back to cell where further output gate does the processing of output.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Sentiment Analysis on IMDb using RNN with Python</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Step 1</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-6.png" style="height:346px; width:780px" title="Sentiment Analysis using python in Recurrent Neural Network" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><img class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-7.png" style="height:40px; width:780px" /><img class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-8.png" style="height:142px; width:780px" title="Sentiment Analysis using python in Recurrent Neural Network" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Loading training and testing over IMDb dataset with 10000 words</span></span></span></span></p>\r\n\r\n<p style="text-align:center"><img class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-9.png" style="height:305px; width:780px" title="Sentiment Analysis using python in Recurrent Neural Network" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Step 2</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-10.png" style="height:42px; width:780px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">&nbsp;index() method searches elements in the list and returns its index value</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-11.png" style="height:193px; width:780px" /></p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">.join method provides a flexible method for concatenation of strings.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Step 3</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-12.png" style="height:67px; width:780px" /></p>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-13.png" style="height:557px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Successfully added recurrent network to our model with embeddings and sigmoid activation function. model .summary() gives the output table.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Step 4</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-14.png" style="height:327px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">The checkpoint may be used directly, or used as the starting point for a new run, picking up where it left off.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Step 5</span></span></span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-15.png" style="height:229px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Fitted our model with 10 epochs and batch size as 128</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Step 6</span></span></span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-16.png" style="height:514px; width:780px" /></p>\r\n\r\n<p style="text-align:center"><img alt="Sentiment Analysis using python in Recurrent Neural Network" class="images" src="/backend/media/uploads/2019/09/24/image-20190924153803-17.png" style="height:856px; width:780px" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Conclusion </span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">I hope, this blog gives you the idea of the concepts covered above and a clear understanding of the utilization of the recurrent neural networks. RNN is an effective and unique way of performing <a href="https://www.analyticssteps.com/blogs/deep-learning-overview-practical-examples-popular-algorithms">Deep Learning</a>&nbsp;</span></span><span style="font-size:12.0pt"><span style="font-family:Roboto">models and can be well implemented in natural language processing, we have learned about RNN in brief, there are more models which are upgraded versions of RNN. For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com"><span style="font-size:12.0pt"><span style="font-family:Roboto"><span style="color:#1155cc">Analytics Steps</span></span></span></a><span style="font-size:12.0pt"><span style="font-family:Roboto">.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div>\r\n<div class="msocomtxt" id="_com_1">&nbsp;</div>\r\n</div>\r\n</div>	t	2019-09-24 10:24:44+00	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	Recurrent Neural Network(RNN's) model manages Sentiment analysis here in python code, learn the application of Recurrent neural network and difference between RNN and CNN.	Recurrent Neural Network, Recurrent Neural Network Applications, Sentiment Analysis Python, RNN VS CNN, What is RNN		t	t	2019-09-24 10:24:41+00	\N	202	9	\N	t
7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	convolutional-neural-network-cnn-graphical-visualization-code-explanation	/backend/media/thumbnail/1482029/3525454_1568806764_CNN_Banner.jpg	<p>Convolutional Neural Network is highly used in image detection, object detection, and face detection. This tutorial presents an architecture of CNN using python code with the implication of the Activation Function.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Convolutional neural networks are neural networks that are mostly used in image classification, object detection, face recognition, self-driving cars, robotics, neural style transfer, video recognition, recommendation systems, etc. CNN classification takes any input image and finds a pattern in the image, process it and classifies it in various categories which are like Car, Animal, Bottle, etc. CNN also used in unsupervised learning for clustering images by similarity. It is a very interesting and complex algorithm, which is driving the future of technology. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="heading_14">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:14px"><strong>Topics Covered</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">What is Convolutional Neural Network (CNN)?</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Briefing of a Convolutional Layer</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Activation Functions</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Fully Connected Network(FCN)</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conclusion</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is Convolutional Neural Network (CNN)?</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&ldquo;<span style="font-family:Roboto,serif"><span style="font-size:medium">Convolution neural networks&rdquo; indicates that these are simply neural networks with some mathematical operation (generally matrix multiplication) in between their layers called convolution. It is proposed by </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Yann LeCun</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> in 1998. It&#39;s one of the most popular uses in Image Classification. Convolution neural network can broadly be classified into these steps :</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Input layer</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Convolutional layer</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Output layer</p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Input layers are connected with convolutional layers which perform many tasks such as padding, striding, functioning of kernels for so many performances of this layer, this layer is considered as a building block of convolutional neural networks. We will be discussing it&rsquo;s functioning and how the fully connected networks work.</span></span></p>\r\n\r\n<div class="d-block text-center">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Introduction of Convolutional Layer and Max-pooling Layer</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Convolutional layer&rsquo;s main objective is to extract features from images, and it learns all the features of the image which would help in object detection techniques. As we know, the input layer will contain some pixel values with some weight and height, our kernels or filters will convolve around input layer and give results which will retrieve all the feature with fewer dimensions. Let&rsquo;s see how kernels work</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt="convolutional kernels with padding in CNN" class="images" src="https://lh4.googleusercontent.com/wskSpIaID4s8hw_ofXmgDMHpJSfeWD2kvcivKluTaTkmRDo-Zk80kJBjjWUUEY7FS9LinHhiXAQchPUOnALLVfK-WbYwMATsys4JbTiOPD1gtF23-Ejalz7X9YccER93tt_hyva1" style="height:624px; width:624px" title="Working of convolutional kernels" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">With the help of this very informative visualization about kernels, we can see how the kernels work and the how padding is done.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt="Padding in CNN and matrix visualization" class="images" src="https://lh6.googleusercontent.com/gZxwFH6mQ5tPjz6LzVbOaNeVuR1NC-BnuemIWO41qnn7r1PvP4qzwXRWC1OJgo2_PD08qaqJ2-VCF3q9laeK885IJwK-dHhpLDkvRZrx4vxrbLDTsKD2iZYM5SFRq4A6XTklk7_h" style="height:416px; width:624px" title="padding in CNN(matrix information)" /></strong></p>\r\n\r\n<div class="d-block text-center">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Need for Padding</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We can see padding in our input volume, we need to do padding in order to make our kernels fit the input matrices. Sometimes we do zero paddings, i.e. adding one row or column to each side of zero matrices or we can cut out the part, which is not fitting in the input image, also known as valid padding.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Let&rsquo;s see how we reduce parameters with negligible loss, we use techniques like Max-pooling and average pooling.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Max pooling and average pooling working in CNN" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-4.jpeg" style="height:500px; width:750px" title="Max pooling and Average pooling function" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="d-block text-center">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Max pooling or average pooling reduces the parameters to increase the computation of our convolutional architecture. Here, 2*2 filters and 2 strides are taken (which we usually use). By name, we can easily assume that max-pooling extracts the maximum value from the filter and average pooling takes out the average from the filter. We perform pooling to reduce dimensionality. We have to add padding only if necessary. The more convolutional layer can be added to our model until conditions are satisfied. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Applying the Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">An <a href="https://www.analyticssteps.com/blogs/7-types-activation-functions-neural-network">activation function</a> is added to our network anywhere in between two convolutional layers or at the end of network, so you must be wondering what exactly an activation function does, let me clear it in simple words for you, it helps in making decision about which information should fire forward and which not by making decisions at the end of any network. In broadly, there are both linear as well as non-linear activation functions, both performing linear and non-linear transformations but non-linear activation functions is a lot helpful and therefore widely used in <a href="https://www.analyticssteps.com/blogs/neural-network-using-keras-functional-api-overview-structure-and-its-applications">neural networks</a> as well as <a href="https://www.analyticssteps.com/blogs/deep-learning-overview-practical-examples-popular-algorithms">deep learning</a> networks. Four most famous activation functions to add non-linearity to the network are described below.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" class="images" src="/backend/media/uploads/2019/09/09/banner1-728x90.jpg" style="height:90px; width:728px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Sigmoid Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Sigmoid Activation function in Deep learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-5.png" style="height:453px; width:780px" title="Sigmoid Activation function" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The equation for the sigmoid function is</span></span></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><em><strong>f(x) </strong></em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong> = 1/(1+e</strong></em></span></span><sup><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>-X </strong></em></span></span></sup><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>)</strong></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The sigmoid activation function is used mostly as it does its task with great efficiency, it basically is a probabilistic approach towards decision making and ranges in between</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong> 0 to 1,</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> so when we have to make a decision or to predict an output we use this activation function because of the range is the minimum, therefore, prediction would be more accurate.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Hyperbolic Tangent Activation Function(Tanh)</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="tanh activation function in Deep learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-6.png" style="height:461px; width:780px" title="tanh activation function" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">This activation function is slightly better than the sigmoid function, like the sigmoid function it is also used to predict or to differentiate between two classes but it maps the negative input into negative quantity only and ranges in between </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>-1 to&nbsp; 1.</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>ReLU( Rectified Linear unit) Activation function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="ReLU activation function in Deep learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-7.png" style="height:467px; width:780px" title="ReLU activation function " /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Rectified linear unit or ReLU is most widely used activation function right now which ranges from </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>0 to infinity</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">, All the negative values are converted into zero, and this conversion rate is so fast that neither it can map nor fit into data properly which creates a problem, but where there is a problem there is a solution, we use Leaky ReLU function instead of ReLU to avoid this unfitting, in Leaky ReLU range is expanded which enhances the performance.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Softmax Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Softmax Activation function in Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-8.png" style="height:454px; width:780px" title="Softmax activation function " /></p>\r\n\r\n<div class="d-block text-center">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Softmax is used mainly at the last layer i.e output layer for decision making the same as sigmoid activation works, the softmax basically gives value to the input variable according to their weight and sum of these weights is eventually one. For Binary classification, both sigmoid, as well as softmax, are equally approachable but in case of multi-class classification problem we generally use softmax and cross-entropy along with it.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Our next step would be a </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Fully Connected Network (FCN)</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Fully Connected Layer , a layer before output layer in CNN" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-9.jpeg" style="height:500px; width:750px" title="Fully connected network" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Our last layer which is connected is fully connected network and we will be sending our flatten data to a fully connected network, we basically transform our data to make classes that we require to get from our network as an output.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Let&rsquo;s see the code for the </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Convolutional Neural Network</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 1</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Importing all necessary libraries(mainly from Keras)</span></span></p>\r\n\r\n<p><img alt="Convolutional neural network Python code" class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-10.png" style="height:257px; width:780px" title="Convolutional neural network implementation using python" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Importing sequential model, activation, dense, flatten, max-pooling libraries.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 2</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Importing dataset. If you want to use the same dataset you can </span></span><a href="https://www.kaggle.com/datasets"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>download</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-11.png" style="height:455px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 3</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-12.png" style="height:482px; width:780px" /><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong> </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Visualizing our dataset and splitting into training and testing. Here, np.utils converts a class integer to the binary class matrix for use with categorical cross-entropy.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 4</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-13.png" style="height:413px; width:780px" /><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong> </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Reshaping our x_train and x_test for use in conv2D. And we can observe the change in the shape of our data.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 5</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-14.png" style="height:543px; width:780px" /></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-15.png" style="height:752px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">This is the main structural part of CNN, where CNN is implemented, we have taken two convolutional layers and we can see we have added different activation functions like relu, sigmoid, and softmax. Our structure goes in accordance with what we have already discussed above.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 6</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-16.png" style="height:92px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">To compute loss, we use categorical cross-entropy, for more functionality of Keras, you can visit the documentation of Keras from keras.org.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><strong><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 7&nbsp;</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-17.png" style="height:179px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Fitted our training data to our model and taken the batch size as 128, which will take 128 values at once till total parameters are satisfied. Here epochs means the number of times it will be processed.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Step 8</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-18.png" style="height:657px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The plot for loss between the training set and testing set.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906160315-19.png" style="height:619px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The plot for accuracy on the training set and test set has been visualised with the help of matplotlib.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">CNN is the best artificial <a href="https://www.analyticssteps.com/blogs/neural-network-using-keras-functional-api-overview-structure-and-its-applications">neural network</a> technique, it is used for modelling image but it is not limited to just modelling of the image but out of many of its application, there is some real-time object detection problem which can be solved with the help of this architecture. There are many improvised versions based on CNN architecture like AlexNet, VGG, YOLO and many more. For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>	t	2019-09-06 10:39:12+00	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	Convolutional Neural Network is highly used in image detection, object detection, and face detection. This tutorial presents an architecture of CNN using python code with the implication of the Activation Function.	convolutional neural network python, convolutional neural network architecture, convolutional neural network explained, convolutional neural network python, padding in cnn, cnn algorithm steps		t	t	2019-09-06 10:39:07+00	\N	883	4	\N	t
12	8 Most Popular Business Analysis Techniques used by Business Analyst	8-most-popular-business-analysis-techniques-used-business-analyst	/backend/media/thumbnail/1308926/2728182_1568350726_Banner_Business-Analysis-Techniques.jpg	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business Analyst is a person who analyse, understand and ensure the requirements for the business growth by reforming its policies, internal process and information system completely.</span></span></p>	<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is a Business Analyst? </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">Business Analyst is a person who analyses, understands and ensures the requirements for the business growth by reforming its policies, internal process, and information system completely. The business analyst makes positive changes by understanding the business problems, recommends the solution and increases the return on investment for projects. It will help to modify the processes, products, services, and software in order to achieve the company&#39;s goals.&nbsp;&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">&ldquo;<span style="font-family:Roboto,serif"><span style="font-size:medium"><em>Business analyst is a kind of an overpass between the business related problems and technology solutions.&rdquo;</em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Most Popular Business Analysis Techniques used by an Business Analyst" class="images" src="/backend/media/uploads/2019/09/06/image-20190906164746-1.png" style="height:491px; width:780px" title="Business Analysis Techniques" /></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Business analysis techniques</u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Business analysis is the task full of ideas, knowledge, and information required to recognize business needs and solutions. Business solutions directly related to business requirements such as what are user requirements, attributes, utility and resources of requirements, etc.&nbsp; For all these business problems different business techniques come into existence. To analyze business needs, goals or objectives suitable technique plays a vital role. There are many business analysis techniques used by the Business Analyst. We have described the eight most popular techniques below.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Techniques of Business Analysis</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>1.&nbsp; SWOT Analysis</strong></span></span></p>\r\n</div>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">S.W.O.T.&nbsp; stands for Strength, Weakness, Opportunities, and Threats. This is the most important technique used in business analysis. It is conducted by a group of people with different mindsets and perspectives in the company in order to access a changing environment and react accordingly. It is kind of the business framework in which strengths and weaknesses are internal data factors whereas opportunities and threats are the external data factors.&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Strength </strong>of the company can be classified as the actions that work well for different problems and confers the key advantages to the company. Some examples of strengths are the company name, company location, trusted employees, great reputation, customer support, brand name, product, etc.&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Weakness</strong> </span></span>of the company are the different activities or disadvantages which create problems for the growth or policies of the company. Examples of weaknesses are bad reputation, incomplete product, lazy employees, department rivalry, persistent negativity, office politics, etc.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px"><img alt="SWOT Analysis Example under most popular business analysis techniques" class="images" src="/backend/media/uploads/2019/09/06/image-20190906164746-2.png" style="height:360px; width:780px" title="SWOT Analysis example" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>SWOT Analysis of an IT Company</u></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Opportunities</strong> </span></span>are external facts and figures which have the potential to provide an advantage or an edge above competitors. Any kind of advantage due to external facts is an opportunity. Some examples of opportunities are investing in the startup at an early edge to gain more profit later. One of the classic examples of opportunity in Indian startup is that after demonetisation many digital payment startups got millions of funding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Threats</strong> </span></span>are also an external fact or information that can create a disadvantage to the company. Some of the examples of threats are changes in market trends, new regulations, new technology ( touch screen mobile phones were a threat to keypad phones).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>2.&nbsp; MOST Analysis</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<p dir="ltr">M.O.S.T. stands for Mission, Objective, Strategy, and Tactics. MOST analysis is also a powerful technique to do business analysis. MOST analysis always works from the top. Business Analyst should ensure that it retains the focus towards goals which are most important for the organization. It gives a better understanding of the organization&rsquo;s capabilities and vision (purpose) and to provide answers to the interrogation such as what does the organization wants to achieve in terms of mission and objectives, how these actions can be implemented in strategies and tactics.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Mission </strong></span></span>should be an organization&rsquo;s enduring process. Each department of the organization equally contributes to the mission statement. It clears an overall reason for being in business and what will be the outcomes to accomplish. The more clear the business is about its mission, the more likely it will succeed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Objectives </strong></span></span>are the one step down after mission. These are defined as specific aims for each department to achieve its mission. Objectives should be smart and specific for decision making. They should also be measurable and realistic.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px"><img alt="MOST Analysis example under popular business analysis technique" class="images" src="/backend/media/uploads/2019/09/06/image-20190906164746-3.png" style="height:309px; width:500px" title="Most analysis example" /></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="margin-left:48px"><u><span style="font-family:Arial,serif"><span style="font-size:x-small"><em>Importance of MOST analysis</em></span></span></u></p>\r\n</div>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Arial,serif"><span style="font-size:medium"><strong>Strategies </strong></span></span>are the actions that should be taken in order to accomplish organizational objectives. These are the long term approach to achieve objectives. There are many groups of sorts of actions to achieve at least one goal of objectives of the mission. Strategies are also considered as the safest way to move forward in the organization.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Tactics </strong></span></span>are designed to carry out strategies in the organization. They are formed in a simple manner so that they can be understood by every person in the organization who does not have an overview of MOST analysis. These are short term approach to complete strategies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>3.&nbsp; PESTLE Analysis</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">In any organization, there are many external macro-environmental factors that can affect its performance. PESTLE analysis is sometimes also referred to as the PEST analysis. PESTLE stands for Political, Economical, Social, Technological, Legal and Environmental. These forces or factors can create opportunities or threats to any organization so it is a very powerful tool or technique of business analysis.&nbsp;</p>\r\n\r\n<p dir="ltr"><strong><img class="images" src="https://lh4.googleusercontent.com/M7Wht44RcIzR0u8uIYFgyn7aZzHbUkdLR--hyuD2OO0_1ebJ7mI_Wfo7e2i4tcJet89VPEVyqzV4Bpd0E8OKHMn0GVUZhCqAd_kvCWP3yLX_uhb6F3WderCqOnapNwVOpCaGavI7" style="height:352px; width:570px" title="PESTEL analysis" /></strong></p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Political</strong> </span></span>factors determine how a government&rsquo;s policies and regulation act influence an organization.&nbsp; It is also related to the government&rsquo;s intervention in the economy. All the factors that influence business by the government can be classified here such as tax policies, tariffs, law, trade control, import restrictions, etc.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Economical </strong></span></span>factors have a significant impact on how do organizations run their business and how profitable business is. Economic factors include economic growth, exchange rate, inflation rate and interest rate.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Social </strong></span></span>factors include health consciousness, population growth rate, age distribution, cultural trends etc. These factors help marketers to understand their customer&rsquo;s requirements.&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Technological</strong> factors include the rate of technology advancements, innovation, automation, research and development which might impact business growth.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Legal </strong>factors include the discrimination laws, copyright/patent laws, data privacy laws, health and insurance laws etc. Organization must run within their legal boundaries.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Environmental</strong> factors include weather, climate change, air and water pollution etc. These factors especially impact many industries such as tourism, farming, insurance etc.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>4.&nbsp; System Analysis</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Roboto,serif"><span style="font-size:medium">System analysis </span></span>is a systematic problem-solving method for collecting and interpreting facts, looking system&rsquo;s weaknesses, identify business problems, or decomposition of the system into smaller parts. It is an approach to minimize the error of different issues.&nbsp;System analysis is the process of studying the company&rsquo;s perspective, identifying its goals, creating a process together to make an efficient system. For instance, a problem can be solved in a few hours without analyzing a system completely but after sometimes it creates many other irrelevant issues. So, the better you understand the system, chances are less for any problem to arise.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>5.&nbsp; Business Model Analysis</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">The business model analysis helps us to understand the business of the company and clears the policies, market approaches and techniques. It gives a better understanding of many things like revenue model, value offering to which customer&rsquo;s segment, cost involved in value offering, effects on the company if the business model changes.</p>\r\n\r\n<p style="margin-left:48px"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>6.&nbsp; Brainstorming</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Roboto,serif"><span style="font-size:medium">Brainstorming </span></span>is a useful technique to generate diverse ideas, to resolve or find a solution for the complex problems and to analyze business properly. It is defined as &ldquo;a group problem-solving technique that involves the spontaneous contribution of ideas from all members of the group.&rdquo; In brainstorming, each idea of an individual person whether it is out of the box idea is encouraged.&nbsp;Brainstorming targets creative thinking about a problem in order to come up with a new set of ideas, approaches and options. It is a group activity having a completely different purpose of generating solutions for the problems.&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>7.&nbsp; Mind Mapping</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">Mind Mapping is a very useful and effective business analysis technique that gives us a clear and visual understanding of different problems, ideas, thoughts, etc. A Business Analyst&rsquo;s role is to investigate and evaluate problems obtained by clients or stakeholders that can be solved by using mind maps to get structured details of any ideas, thoughts, and information. The mind mapping technique ensures that all the factors which are needed to analyze have been considered or not. There are several tools available to make mind maps online such as Freemind, Xmind, Mindmap, Lucidchart, Canva, etc.</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>8.&nbsp; Process Design </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">This is a crucial part of the business analysis where a Business Analyst identifies the organization&rsquo;s process designs and their useful and harmful attributes. Process designs are essential to solve the problems and exploiting opportunities in order to monitor and measure the effectiveness of business to ensure consistent value delivery to consumers. A Business process analyst analyzes the existing process design and does changes if required. The business analyst is responsible for understanding the wide business process improvement and maintain them. Process designs can also be described as a future state of any business operations.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><a name="_gjdgxs"></a> <span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><a name="_kq2ln9fwwm6l"></a> <span style="font-family:Roboto,serif"><span style="font-size:medium">There are many techniques available for business analysis. In this blog, the importance of business analysis along with different techniques discussed. Role of Business Analyst not only limited to analyze the data available but also to enhance the business up to the next level. He chooses the appropriate technique according to business problems and takes necessary actions for the improvement. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business analysis is a great way to understand any businesses as it can give you a clear understanding of business process, targeted customer segment, market, value system, future state, policies, capabilities and about competitors. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Thank You!</span></span></p>	t	2019-08-07 11:20:21+00	8 Most Popular Business Analysis Techniques used by Business Analyst	Business analyst employs diverse business analysis techniques like SWOT, MOST, SYSTEM etc. for business investments and objectives.	Business Analysis Techniques, most popular Business Analysis Techniques, Business Analysis, Business Analysis example, SWOT Analysis example, PESTLE Analysis example,		t	t	2019-08-07 11:20:09+00	\N	149	9	\N	f
14	Deep Learning - Overview, Practical Examples, Popular Algorithms	deep-learning-overview-practical-examples-popular-algorithms	/backend/media/thumbnail/9611556/3210209_1568969848_Banner_Deep_learning.jpg	<p>Discover deep learning definition, applications, and advantages along with a comparison to deep learning with machine learning.</p>	<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">This blog covers the overview of Deep learning terms and technologies, pros and cons, basic functionality, and practical examples. Further added, how it is different from machine learning and artificial intelligence, ways to train deep learning methods, utilized algorithms, and lastly the key takeaways.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Topics Covered</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">1. &nbsp; What is Deep Learning?</span></span></span></span></p>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">2. &nbsp; Advantages and Disadvantages of Deep Learning</span></span></span></span></p>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">3. &nbsp; Practical examples of Deep Learning</span></span></span></span></p>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">4. &nbsp; Difference between Machine Learning and Deep Learning</span></span></span></span></p>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">5. &nbsp; How deep learning works?</span></span></span></span></p>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">6. &nbsp; Popular algorithms in Deep Learning</span></span></span></span></p>\r\n\r\n<p style="margin-left:24px"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">7. &nbsp; Conclusion</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">What is Deep Learning?</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep learning is the one category of <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning</a> that emphasizes training the computer about the basic instincts of human beings. It is a prime technology behind the concept of virtual assistants, facial recognition, driverless cars, etc. The working of deep learning involves training the data and learning from the experiences. The learning procedure is called &lsquo;Deep&rsquo;, as with every passing minute the <a href="https://www.analyticssteps.com/blogs/neural-network-using-keras-functional-api-overview-structure-and-its-applications">neural networks</a> rapidly discovering the new levels of data. Each time data is trained, it focuses on enhancing the performance. With the increasing depth of the data, this training performance and deep learning capabilities have been improved drastically. Along with the ample amount of benefits, threats also surfaces due to the unexplored capabilities of deep learning. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep learning utilizes supervised, semi-supervised and unsupervised learning to train from the data representations. The functionality of deep learning relies on the below points:</span></span></span></span></p>\r\n\r\n<ul>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It imitates the functionality of a human brain for managing the data and forming the patterns for referring it in decision making.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The trained dataset can be interconnected, diverse and complex in nature.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The larger the data set, the more efficient the training that directly impacts the decision making.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Advantages of Deep Learning</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ul>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Ability to generate new features from the limited available training data sets. </span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Its ability to work on unsupervised learning techniques helps in generating actionable and reliable task outcomes. </span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It reduces the time required for feature engineering, one of the tasks that requires major time in practicing machine learning.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">With continuous training, its architecture has become adaptive to change and is able to work on diverse problems.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Disadvantages of Deep Learning</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">With the increasing popularity, deep learning also has a handful of threats that needs to be addressed:</span></span></span></span></p>\r\n\r\n<ul>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The complete training process relies on the continuous flow of the data, which decreases the scope for improvement in the training process.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The cost of computational training significantly increases with an increase in the number of datasets.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Lack of transparency in fault revision. No intermediate steps to provide the arguments for a certain fault. In order to resolve the issue, a complete algorithm gets revised. </span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Need for expensive resources, high-speed processing units and powerful GPU&rsquo;s for training to the data sets. </span></span></span></span></li>\r\n</ul>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Practical Examples of Deep Learning</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">This section discusses, the focus and problems that surround the working of Deep learning:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Virtual Assistants:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> The core functionality that requires translating the speech and language of the human&rsquo;s speech, is deep learning. The common examples of virtual assistants are Cortana, Siri, and Alexa.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Vision for Driverless, Autonomous Cars:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> In order to navigate an autonomous car, one needs a human-like experience and expertise. To understand the scenarios of roads, the working of signals, pedestrians, significances of different signs, speed limits and many more situations like these, a large amount of real data is required. With the large data, the efficiency of the algorithms will be improved which will subsequently increase the decision-making flow. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="3">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Service and Chat Bots:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> The continuous interaction of chatbots with human beings for providing customer services requires strong responses. To respond in a helpful manner with all the tricky questions and apt response, deep learning is required for training algorithms.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="4">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Translations:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Translating the speech automatically in multiple languages requires deep learning supervision. This is a helpful mechanism for tourists, travelers, and government officials. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="5">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Facial Recognition:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Facial recognition has many features from being used in the security to the tagging mechanism/feature used on Facebook. Along with the importance, it has its fair share of issues as well. For example, to recognize the same person with weight gain, weight loss, beard, without a beard, new hairstyles, etc. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="6">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Shopping and Entertainment:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> All the shopping applications like Amazon and Myntra and entertainment applications like Amazon Prime and Netflix store your data and buying habits to show the suggestions for future buying and watching. It always comes as a title &ldquo;You may like to watch/buy&rdquo;. The more data is inputted in the Deep learning algorithm, the more efficient it becomes in decision making. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="7">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Pharmaceuticals:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Customizing medicines based on the particular genome and diseases. Deep learning has widened the scope of such applications and has gained the attention of the largest pharmaceutical companies. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Deep Learning Applications like Autonomous cars, face recognition, shopping and entertainment, virtual assistance and services and chatbots. " class="images" src="/backend/media/uploads/2019/09/20/image-20190920142138-1.jpeg" style="height:560px; width:750px" title="Examples of Deep Learning" /></p>\r\n\r\n<p style="text-align:center"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Difference between Machine learning and Deep learning</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Although Deep learning is the one category of machine learning and artificial intelligence, still there are many bases to differentiate between them. The primary goal is to provide an optimized algorithm to increase the efficiency in working. The differences would be best explained through tabular form, detailing overworking mechanism, management, output, practical real-life examples and data points including utilized algorithms for respective algorithms.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Image showing that deep learning is a part of Artificial Intelligence and Machine Learning." class="images" src="/backend/media/uploads/2019/09/20/image-20190920142138-2.jpeg" style="height:560px; width:750px" title="Deep Learning as subset of ML and AI" /></p>\r\n\r\n<p style="margin-left:144px; text-align:center"><br />\r\n&nbsp;</p>\r\n\r\n<table border="1" cellspacing="0" class="Table" style="border-collapse:collapse; border:solid black 1.0pt; width:624px">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Attributes</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:155.25pt">\r\n\t\t\t<p style="text-align:center"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep Learning</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.0pt">\r\n\t\t\t<p style="text-align:center"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Machine learning</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Definition</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It is a subset of machine learning with the constant focus on achieving greater flexibility through considering the whole world as a nested hierarchy of concepts.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It is a sub-branch of Artificial intelligence. It allows the machines to train with diverse datasets and predict based on their experiences.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Working mechanism</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Neural networks help in interpreting the features of data and their relationships in which important information is processed through multiple stages of processing the data.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It utilizes automated algorithms to predict the decisions for the future and modeling of functions based on the data fed to it.</span></span></span></span></p>\r\n\r\n\t\t\t<p>&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Management</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">All the algorithms are self-directed after the implementations for result fetching and data analysis. </span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">All the analysis is managed by analysts to evaluate different variable under the multiple datasets.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Practical examples</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Practical examples are virtual assistants, shopping &amp; entertainment, facial recognition, translations, pharmaceuticals, and vision for driverless vehicles.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Practical examples are speech recognition, medical diagnosis, statistical arbitrage, classification, prediction, and extraction.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Data points</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Data points are used for analysis usually numbered in millions.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Data points are used for analysis usually numbered in thousands.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Training time</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Considering larger parameters, deep learning takes a long time for training.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto"><a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">Machine learning</a> algorithms usually takes less time for analysis, ranging from a few minutes to hours.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Considered algorithms</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It makes use of neural networks.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">It utilizes algorithms like linear regression, random forest, and KNN.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="border-color:black; vertical-align:top; width:156.75pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Output</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:155.25pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The output is usually diverse like a score, an element, classification, or simply a text.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t\t<td style="vertical-align:top; width:156.0pt">\r\n\t\t\t<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The output for this algorithm is usually a numeric value like a classification.</span></span></span></span></p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">How Deep Learning Works?</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep learning algorithms utilizes supervised and unsupervised learning algorithms to train the outputs through the delivered inputs. The below circles are represented as neurons that are interconnected. The neurons are classified into three different hierarchy of layers termed as Input, Hidden and Output Layers. The first neuron layer i.e. input layer receives the input data and passes it to the first hidden layer. The hidden layers perform the computations on the received data. The biggest challenge under neural networks creation is to decide the number of neurons and a number of hidden layers. Finally, the output layer produces the required output.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Neural network working diagram where input layer, hidden layer and output layer are interconnected." class="images" src="/backend/media/uploads/2019/09/20/image-20190920142138-3.jpeg" style="height:560px; width:750px" title="Working network of Deep Learning" /></p>\r\n\r\n<p style="text-align:center"><br />\r\n&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">This is the basic flow of working. Now, comes the point where the method of computation is explained. Every connection between the neurons consists of weights, it denotes the significance of the input values. In order to standardize the outputs, an activation function is used. For training the network, two important measures are considered. The first is to create a large data set and the second is large computational power. The &lsquo;Deep&rsquo; in deep learning signifies the number of hidden layers the model is using to train the data set. </span></span></span></span><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Working of Deep learning can be summed up in four final points:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">ANN asks a combination of binary True/False queries.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Extracting numeric values from blocks of data.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Sorting the data as per the received answers.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">A final point is marking/labeling the data.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Popular Algorithms in Deep Learning</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The popular algorithms that have been utilized to create a strong foundation for deep learning algorithms are:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><a name="_gjdgxs"></a><span style="font-size:12.0pt"><span style="font-family:Roboto">KNN (K - nearest neighbor) method</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Artificial Neural Network (ANN)</span></span></span></span></li>\r\n\t<li><a href="https://www.analyticssteps.com/blogs/convolutional-neural-network-cnn-graphical-visualization-code-explanation"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Convolutional Neural Network (CNN)</span></span></span></span></a></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Recurrent Neural Network (RNN)</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep Neural Network (DNN)</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep Belief Network (DBN)</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Back Propagation</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Stochastic Gradient Descent</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Conclusion</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">With this, the blog on the basics of Deep learning is summed up. </span></span></span></span></p>\r\n\r\n<ul>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep learning is a sub-branch of AI and ML that follow the workings of the human brain for processing the datasets and make efficient decision making.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Deep learning utilizes both structured and unstructured data for training.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Practical examples of Deep learning are Virtual assistants, vision for driverless cars, money laundering, face recognition and many more.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com"><span style="font-size:12.0pt"><span style="font-family:Roboto"><span style="color:#1155cc">Analytics Steps</span></span></span></a><span style="font-size:12.0pt"><span style="font-family:Roboto">.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>	t	2019-09-20 08:50:27+00	Deep Learning - Overview, Practical Examples, Popular Algorithms	Discover deep learning definition, applications, and advantages along with a comparison to deep learning with machine learning.	Deep Learning Python, What is Deep Learning, Deep Learning Applications, Deep Learning VS Machine Learning, Deep Learning Definition, Algorithms used in Deep Learning		t	t	\N	\N	490	8	\N	t
13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	why-does-big-data-analytics-trends-advantages-application-and-challenges-big-data	/backend/media/thumbnail/705318/365296_1568804849_Big_Data-banner-100.jpg	<p>Embrace this blog with Big Data Analytics, types and tools of Big Data, Catch here benefits and challenges of Big Data.</p>	<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">This blog covers the fundamental terms of Big data, realistic examples assuming technology, importance, types, and characteristics. In addition to this, the blog will also cover applications, working methodology, and emerging technologies. Big data is the data with huge size, get utilized for the collection of the massive size of data which increases exponentially with time. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Topics Covered</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">How to Define Big Data?</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Types of Big Data</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Importance of Big Data</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Challenges of Big Data</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Applications of Big Data</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Working Mechanisms for Big Data</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">How to Define Big Data?</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The concept of big data arrives due to the immense increase in the volume of data. Due to this, structuring and sorting of the data become difficult. &lsquo;Big data&rsquo; term is ordinarily describing the mixed dataset which is huge in size and is a fusion of both structured and unstructured data. It is a procedure that involves collecting, evaluating and preparing this large data collected from varied sources. Examples of Big Data are Facebook, Exchange-stock market, search engines like Google, data produced from airways. </span></span>&nbsp;&nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Normally, the Big Data characteristics are explained through 3V&rsquo;s, i.e. Volume, Velocity, and Variety. <strong>Volume</strong> is the main distinguishing element for classification the Big Data. All the leading social media websites are receiving a humongous quantity of data on a regular basis, in terabytes/kilobytes. It becomes really difficult to supervise such data through conventional methods. Certain data are collected in files, records, and tables. The second is <strong>Velocity</strong>. It is the rate at which the data is received and being processed. Usually, around 2.5 quintillion bytes of data are received daily. So, it is impossible to act through traditional methods. The third one is the <strong>variety</strong>. It refers to the unique sources from where the data is collected. Variety may change from the structure to the category of the data. Text, video, machine-generated images are some of the types of different categories. The other popular characteristics are veracity, value, and variability.</span></span></span></span></p>\r\n\r\n<p style="margin-left:48px; text-align:center"><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-family:Roboto">&nbsp; </span></span></span><img alt="Characteristics of BIg Data" class="images" src="/backend/media/uploads/2019/09/18/image-20190918163157-1.jpeg" style="height:560px; width:750px" title="Characteristics of data" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Types of Big Data</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Big Data is regularly classified into three different categories: structured, semi-structured and unstructured.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Structured</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: It is disclaimed that any data that can be readily approachable, stored and being treated is characterized as structured data. In this, the format of the stored data is known in advance.&nbsp; Examples of such data are the values of a particular table saved in a database.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Unstructured</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: Any data whose source is uncertain and unformatted is following unstructured data. Here, data proceeds from independent sources, a combination of text, video and audio records. An example that consists of data is all the search results appeared from a search engine portal.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="3">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Semi-structured</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: It is an aggregation of both structured and unstructured data. This is a defined data but not stored in any relational database system. A kind of data saved in an XML file is a genuine model of semi-structured data. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Importance of Big data</span></span></strong><strong> </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Various benefits of processing big data are described as:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Improvement in customer services.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Better efficiency in operations.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Utilizing outside knowledge during the decision-making process.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Initial risk identification under the assistance of services and products.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Detecting defects, errors, and scams in the organization.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Better insight into sale-services.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Cost reductions and savings.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Increased revenue and agility.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Challenges of Big Data</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Data storage</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: Due to the rapid increase in the size of the data in short periods of time, the central difficulty is data storage and arranging.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Data refining</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: This is the most tedious task and the biggest challenge of the complete process. Cleaning such a vast amount of data is a hectic task. Curating and making it understandable and of proper use is really significant to make it relevant.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="3">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Keeping up with the pace</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: Technology of Big data is upgrading with time, a few years ago, Apache Hadoop was catching everyone&rsquo;s eyeballs, then Apache stark and now a combination of both is in the market.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="4">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Cybersecurity risks</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">: With large data, comes an additional risk of the security breach as well. Companies with such large data are becoming the target for cybercrimes.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Applications of Big Data</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Big data technology has become an integral part of the complete business cycle and has a diverse range of applications.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Weather forecasting:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Various applications on mobile devices are being used to forecast the weather. This forecasting can be more accurate with the usage of barometers, ambient thermometer, and hygrometers. Various applications under this are: studying the effects of global warming, preparing for the measures in terms of crisis.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Advertising:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Nowadays marketing trend has changed, and prices are no longer get impacted on the basis of reactions. Many data points, surveys, traffic patterns, shopping habits, eye movement patterns, movie selections all these points are utilized to determine what kind of advertisements people are interested in.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="3">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Personal grooming: </span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Big Data is being utilized to optimize personal health and development. Fit bit bands, sleep monitoring, calorie calculations, workout monitoring, all these activities help in developing an insight into personal development.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="4">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Education:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Education history consists of huge data related to students, faculty, courses. A proper analysis is required to provide relevant analysis to improve the effectiveness and performance of the institutes. Some of the educational fields where big data can play a relevant role are grading mechanisms, career predictions, structuring the course materials, dynamic learning programs. It has also opened the doors for diverse courses for e-learning.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="5">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Health industry:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> This is another area that produces a huge pile of data. If a proper analysis is done utilizing this data, the chances of unnecessary diagnosis can reduce big time. Medicines are provided on the basis of proper research and past result analysis. Many health bands are also launched in the market making the user more aware of their health.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="6">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Transportation:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Some of the areas in transportation where big data can be utilized are determining the safety levels of the traffic, traffic control &amp; congestion management, route planning. All the real-time routes along with the traffic considerations that taxis are utilizing are managed through big data. All these factors have positive impacts like pollution control, a timesaving, increment is safety control measures.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start="7">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Banking:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> This is another sector where the size of data is increasing at a rapid rate. Uses of big data in the banking sector are mitigation of risk factors, clarity in business, misuse of debit/credit cards, money laundering.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Working Mechanisms for Big Data</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">In order to manage the data effectively, many proposals of architectures were made. One amongst them was Hadoop. Currently, it is one of the best open-source tools available under the Apache license to successfully process the large piles of data.</span></span></span></span></p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Hadoop consists of two main components HDFS (Hadoop distributed file system) and MapReduce Engine. </span></span></span></span></p>\r\n\r\n<p><img alt="Hadoop and Apache Ecosystem" class="images" src="/backend/media/uploads/2019/09/18/image-20190918163157-2.jpeg" style="height:560px; width:750px" title="Apache Hadoop Ecosystem" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">The Hadoop ecosystem comprises of three main components:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Hadoop Common:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> Apache foundation has certain predefined libraries that can be utilized by other components within the ecosystem. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="2">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Hadoop Distributed File System (HDFS):</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> This is a default data storage. It stores all the chunks of data in an effective manner until the user needs to process that data for analysis. It works on the concept of data replication across different clusters for reliable and easy data access. For this, it utilizes three main components:&nbsp;&nbsp;&nbsp;&nbsp; Name node, Data node, and secondary name node. It works on the Master-slave principle where the Name node works as a master for monitoring the storage cluster and the Data node operates as a slave node.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ol start="3">\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">MapReduce:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> This is where all the piles of data get processed. MapReduce breaks down the large dataset into smaller ones to work on them efficiently. The task of analyzing works parallelly with data processing. The basic work mechanism behind this, the &ldquo;Map&rdquo; method sends a task for processing to different nodes in the Hadoop cluster and the &ldquo;Reduce&rdquo; method has to combine all the results to display it as a single value. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Data access components</span></span></strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Pig:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> It is a tool used for analyzing large data sets. Their structure is customizable to include parallelization that makes it more efficient while working with huge data. Another important feature of this is that it can mask critical information during processing.</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Hive:</span></span></strong><span style="font-size:12.0pt"><span style="font-family:Roboto"> It is a kind of data warehouse that is constructed over the Hadoop. It utilizes a HiveQL language for processing and querying the data. This language is similar to SQL but faster as it queries through indexing.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Conclusion</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">I hope this blog is quite informative in terms of an introduction to big data, its working and application along with difficulties as challenges in big data. It is the need of the hour. Due to the constant increase in data quantity, its processing is becoming a hideous task. Applications of big data are in weather broadcasting, transportation services, banking, health industry. Hadoop is one of the famous inventions to overcome the cons of directing big data. For more blogs keep exploring and reading </span></span><a href="http://www.analyticssteps.com"><span style="font-size:12.0pt"><span style="font-family:Roboto"><span style="color:#1155cc">Analytics Steps</span></span></span></a><span style="font-size:12.0pt"><span style="font-family:Roboto">. </span></span></span></span></p>	t	2019-09-18 11:06:52+00	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	Embrace this blog with Big Data Analytics, types and tools of Big Data, Catch here benefits and challenges of Big Data.	Big Data Analytics, Types of Big Data, Challenges of Big Data,  Big Data Tools,  Benefits of Big Data		t	t	\N	\N	406	8	\N	t
17	Natural Language Processing: A Discussion for NLP Working and Applications	natural-language-processing-discussion-nlp-working-and-applications	/backend/media/thumbnail/9188814/1399930_1569585880_NLP_Banner.jpg	<p>Discover about natural language processing and its role in sentiment analysis, learn deployment of a chatbot, machine translation, and speech recognition in NLP.</p>	<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">NLP or Natural Language Processing is basically an approach to find out information out of a text to make it understandable to a machine as same as humans do, as we know, the whole idea of machine learning is to provide human brain-like capabilities to a machine, so as our human brain is capable of understanding text and speech, we tend to provide the same ability to our machine so that it can automatically understand a text or speech in its natural form.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">We read so many texts through emails, web pages, apps, etc. imagine if a machine could itself understand this information, how much automation can be done in the field of text manipulation and sentiment analysis? Natural language processing is a hot topic now but has been studied for the past 5 decades, one of its applications that is used a lot nowadays is google Alexa, ever imagined how it recognizes your voice and follows your instruction? All power of Natural Language Processing. Machines nowadays are being more and more capable of understanding and manipulating text and speech.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Topics Covered</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Introduction</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Working of Natural Language Processing</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Applications of NLP</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Conclusion</span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Working of Natural Language Processing</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">First of all, extracting meaning out of a text is truly a very tough job, When we know that we are making something very tough to possible in machine learning, we use pipelining that means we make small steps in order to complete a whole project by joining these steps. There are many steps in NLP pipelining, taking the idea that we have to find out meaning out of texts, we will do step by step illustration</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">1. Sentence Tokenizing</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">For a given document to analyze, we know that not every sentence in a paragraph relates with each other totally or in general, every sentence has an individual meaning, so consider a text :</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><em><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&ldquo;Calcutta now Kolkata was the capital of India during the British Raj, until December 1911. Calcutta had become the center of the nationalist movements since the late nineteenth century, which led to the Partition of Bengal by then Viceroy of British India, Lord Curzon. This created massive political and religious upsurge including political assassinations of British officials in Calcutta.&rdquo;</span></span></span></span></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Now see what this paragraph would look after sentence tokenization:</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><em><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&ldquo;Calcutta now Kolkata was the capital of India during the British Raj, until December 1911&rdquo;</span></span></span></span></em></span></span></p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><em><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&ldquo; Calcutta had become the center of the nationalist movements since the late nineteenth century, which led to the Partition of Bengal by then Viceroy of British India, Lord Curzon.</span></span></span></span></em><span style="font-size:12.0pt"><span style="font-family:Roboto"> &ldquo;</span></span></span></span></p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">&ldquo;<em><span style="background-color:white"><span style="color:#222222"> This created massive political and religious upsurge including political assassinations of British officials in Calcutta.&rdquo;</span></span></em></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Every sentence in the above paragraph is been tokenized.</span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="color:#222222"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">2.&nbsp; Word Tokenizing</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">As we tokenized sentences in our first step of pipelining, we tokenize each word in the next step of pipelining, let&#39;s take an above-tokenized sentence and do word tokenization.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><em><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&ldquo;Calcutta now Kolkata was the capital of India during the British Raj, until December 1911&rdquo;</span></span></span></span></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">After, word tokenization it will look somewhat like:</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><em><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&ldquo;Calcutta&rdquo;, &ldquo;now&rdquo;, &ldquo; Kolkata&rdquo;, &ldquo; was&rdquo;, &ldquo; the&rdquo;, &ldquo; capital&rdquo;,&nbsp; &ldquo;of&rdquo;, &ldquo; India&rdquo;, &ldquo; during&rdquo;, &ldquo; the&rdquo;, &ldquo;British&rdquo;,&ldquo; Raj&rdquo;, &ldquo; until&rdquo;, &ldquo; December&rdquo;, &ldquo; 1911&rdquo;</span></span></span></span></em></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Whenever there is a space in between words, we do splitting that&#39;s how simple it is.</span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="color:#222222"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">3.&nbsp; Stemming And Lemmatization</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Stemming</span></span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&nbsp;refers to cutting down the prefixes or suffixes of words to extract some meaning out, but this technique does not ensure that the word will have some meaning, for example study<strong>ing, </strong>here it will cut &lsquo;<strong>ing&rsquo; </strong>and the remaining word will be &lsquo;study&rsquo; which is correct, but in the case of &lsquo;studi<strong>ed&rsquo;, </strong>it will cut &lsquo;<strong>ed</strong>&rsquo;<strong> </strong>and the remaining word would be &lsquo;studi&rsquo;, which is of course incorrect. On the other hand, lemmatization is a process where the lemmatized word will definitely have some meaning. &ldquo;<a href="https://www.analyticssteps.com/blogs/an-optimum-approach-towards-the-bag-of-words-with-code-illustration-in-python">Bag of words</a>&quot;</span></span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&nbsp;is a tool used for stemming and lemmatization of words.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Other techniques used in pipelining are the identification of stopwords, which can be easily done with the help of python library NLTK. Named Entity Recognition(NER) technique, where we tag out the entities which can be famous people, places, products etc to sort more meaning and part of speech recognition for identification of speech.</span></span></span></span></span></span></p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Above are some techniques that help the machine to understand the syntax and semantics of the natural language.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Applications of NLP</span></span></span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="color:#222222"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">1.&nbsp; Sentiment Analysis</span></span></span></strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">: Analyzing text and giving them remarks i.e positive or negative remark in order to analyze the context of a text is known as <a href="https://www.analyticssteps.com/blogs/learning-recurrent-neural-network-applications-and-its-role-sentiment-analysis">sentiment analysis</a>.</span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">&nbsp;For example, if we have to analyze the reviews given by the public to a movie through comments, then a given set of sentences or words will be given remarks such as positive or negative and then the counts of all positive and negative will give the average ratings of the movie. </span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px"><img alt="Sentiment Analysis is one of the prominent application of natural language processing." class="images" src="/backend/media/uploads/2019/09/27/image-20190927172319-1.jpeg" style="height:500px; width:750px" title="Sentiment analysis example of NLP" /></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="color:#222222"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">2.&nbsp; Chatbots:</span></span></span></strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"> To help customers with real-time questions and answers, nowadays almost every web product or application is using chatbot as one of the topmost preference, it is a very economical method to provide personalized assistant experience to the user.&nbsp;</span></span></span></span></span></span>Bot conversation in many organizations recorded as rating according to feelings of the users to get an idea of the behavioral pattern of the market. We encounter many chatbots on a daily basis which are using NLP to handle users. Companies like Zomato, Uber, Banks chatbots are integrated with their customer service channels, handling off conversations, back and forth, while people can take on more complex and bigger conversations. There are many great examples of NLP based chatbots like X.ai, Xiaoice, Mitsuku, etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="color:#222222"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">3.&nbsp; Machine Translation: </span></span></span></strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">It is a process from machine translate one natural language to another natural language, for example, you must have seen google translator which translates English to Hindi or any other language which shows how useful this technique is.&nbsp;</span></span></span></span></span></span>Machine translation is sometimes not efficient enough because translate language to another language, finding the perfect counterparts and preserving the meaning of the phrase requires advanced statistical and NLP techniques. <a href="https://nlp.stanford.edu/projects/mt.shtml">Machine translation</a> is one of the oldest subfields of artificial intelligence research.</p>\r\n\r\n<p style="margin-left:48px"><img alt="The image representing Machine Translation in natural language processing" class="images" src="/backend/media/uploads/2019/09/27/image-20190927172319-3.jpeg" style="height:560px; width:750px" title="Machine translation example" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="color:#222222"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">4.&nbsp; Speech Recognition</span></span></span></strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">: speech recognition can be seen in many fields, whether it be home automation such as google Alexa or amazon echo and Siri in apple is also an example of speech recognition. Also, Grammarly that is used for the correction of grammatical errors in the document is an example of a natural language processing application.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Till now we have seen NLP in power but its working has never been as simple as it is shown, in fact, it is a very complex technique to understand under deep learning, as there are so many syntaxes and semantics in natural language that it is difficult for a&nbsp; human to master and we here are trying to make this complex thing possible through machine. Over the past when NLP got powered by <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning</a> algorithms</span></span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&nbsp;to produce some very optimum results. </span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Natural Language Processing is a technique that is going through advancement every single day and the day it will come to its full potential, it will create miracles in the automation sector.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Conclusion</span></span></span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">Natural language processing in <a href="https://analyticssteps.com/blogs/deep-learning-overview-practical-examples-popular-algorithms">deep learning</a></span></span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222">&nbsp;is a very demanding and promising field of the 21st century, we see towards more advancement as we know it has not grown to its full potential, but with further association with new <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning</a></span></span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><span style="color:#222222"><a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">&nbsp;</a>algorithms, we can see some more of its application in daily life. </span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div>\r\n<div>\r\n<div class="msocomtxt" id="_com_2">\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>	t	2019-09-28 12:02:49+00	Natural Language Processing: A Discussion for NLP Working and Applications	Discover about natural language processing and its role in sentiment analysis, learn deployment of a chatbot, machine translation, and speech recognition in NLP	Natural Language Processing Examples, Sentiment Analysis, Machine Translation, Chatbot using NLP, Speech Recognition in NLP		t	t	2019-09-27 12:02:47+00	2019-09-28 12:52:19+00	136	79	\N	t
16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	decisive-analytical-initiative-5-leading-steps-towards-qualitative-data-analytics	/backend/media/thumbnail/4138122/8902817_1569405015_Banner_for_Tittle.jpg	<p>Advance your data analysis process and data analytics&nbsp;tools for a better understanding of data analysis, decision-making, and result interpretation.</p>	<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">We know that data is so important to many diverse sectors from manufacturing to energy grids, this not only helps in the understanding of the workflow of any company but also helps in improving their performance throughout all the time, we will see in this blog, how data behaves differently with respect to each step in the succeeding direction of analytics. We will also discover each analytical step in detail with some questionnaires. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Introduction</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">For various stages of the Business analysis, data acts as a fuel for its implemented growth and continuous development, this enables any organization to stay ahead in the competition, from the view of different stages of workflow, structures, and its crucial role in each step of processing of data, the analysis itself is a complex process which can be cracked into simpler one for its smooth functioning. For any organization, there are so many resources available for getting and access data easily. Any single dataset contains much information to make a clear decision. The analysis gives an idea of what&rsquo;s going on in the organization, and what possible steps should be taken to optimize the functioning. This is only possible when an appropriate analytical technique is adopted for getting information from data and provides more valuable insights to the organization.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">A traditional way of handling any business is changing due to real-time <a href="https://www.analyticssteps.com/blogs/8-most-popular-business-analysis-techniques-used-business-analyst">business analysis</a>&nbsp;by</span></span><span style="font-size:12.0pt"><span style="font-family:Roboto">&nbsp;building proactive decision-making, this gives perfect direction to a leading business. Real-times analysis becomes</span></span><span style="font-size:12.0pt"><span style="font-family:Roboto">&nbsp;a significant tool for any industry where data can be fetched and analyzed easily. The data would be used for any purposes from improving customer services as well as an organization&rsquo;s performance to production management, and many other benefits.&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="This image represents the curiosity to know about the steps for data analysis" class="images" src="/backend/media/uploads/2019/09/25/image-20190925150912-1.jpeg" style="height:560px; width:750px" title="Starting with the steps of data analysis" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Whenever any business analytics is implemented, major outcomes are almost the same, to solve any business problem using any relevant data and getting insights, giving the organization needed information for making a required business decision in order to give an organization an independent and competitive advantage in the market. Before diving deep in any decision-making by real-time analysis, an individual should consider some steps, here we are discussing a thorough process for data analysis, we have listed major steps for analyzing data, these steps not only introduce you to critical and challenging steps in any business but also give you an idea of how to make a better business decision, although these steps are interrelated, instead, each step would give different insight. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">So, what is business analytics and how to resolve any business issue? Or you would say the necessary steps required to solve any analytical problem. Can you answer these questions without knowing why we are solving this? Or what is the objective to solve this? Probably no, even though we are aware of the fact that &ldquo;efforts will be fruitful in the direction of goal&rdquo;,&nbsp; and yes, objective or goal, or you can say &ldquo;problem statement&rdquo; in the case of business analytics. Here, proceeding in the direction of data analytics, we catch the first step, i.e. the problem statement, essentially the business analytics is 5-step process;</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Defining problem statement</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Understand data sources</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Data preparation</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Data analyzing</span></span></span></span></li>\r\n\t<li><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Result Interpretation </span></span></span></span></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="image showing 5-steps process for data analysis" class="images" src="/backend/media/uploads/2019/09/25/image-20190925150912-2.jpeg" style="height:260px; width:750px" title="5-steps process for data analysis" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Each of these steps has its own significance and challenges, to overcome these challenges, each step should be understood deeply, further let&rsquo;s initiate each step with introspective questions for better understanding;</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Step 1:&nbsp; Defining Problem Statement</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">1st ask these questions, &ldquo;what are you trying to achieve?&rdquo; or &ldquo;what are you looking for?&rdquo; and &ldquo;how your final result looks like&rdquo;? This probably gives you an initial step or approach in considering what I would need, how to start and what could be a possible outcome, starting with the proper and realistic goal will prevent you from wasting time, reduce extra irrelevant analyzing as you move through data processing.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Step 2: Understanding data sources</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Starting with &ldquo;What is the needed information?&rdquo; or &ldquo;From where I need such relevant data?&rdquo;<strong> </strong>As the data is available at various sources, you need to combine all information<strong> </strong>from these sources, there might be a high chance that a part of the information is missing for which you want to test, so you need additional information for your test to be done. For example, you want to check the transaction on weekend, the available dataset contains only data and time information, additionally, you need the amount of each transaction, who processed particular transactions, etc.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Above is a small brief on data information, next we see how to get data if you have required access and adequate practice on the methods,&nbsp; you may easily get data yourself, but what else if you don&rsquo;t have? You could ask an IT department of your organization to help you in getting relevant data, making sure to give clear instructions to the IT department on the data.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Step 3: Data preparation </span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Now, what you come to know by this step, &ldquo;Do the data need cleaning and normalizing?&rdquo; and the answer is yes, let&rsquo;s understand how; From step 2, it is cleared that data is collected from multiple sources and might be structured or unstructured, depending upon the condition of how you want to process it, most of the time structured data would prefer for doing analysis. So, data needs to be cleaned with some cleaning exercises and covert data in the required format. Cleaning of data provides you qualitative information. Now, come to the process of normalizing the data, it will eliminate repetitions. Normalizing also a part of cleansing the data, the difference is it scans for the different variants of the same data entry, e.g. different date formats in different columns, it transforms all the variations into a single format.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">Data preparation is the most important part of data analysis, it will take almost 60-70% time to prepare data itself of the complete analytic process. So, a good approach is required to prepare data that saves us from last-minute surprises and revise the whole analysis process. The output will produce an error, or the results will be unreliable if you don&rsquo;t clean and normalize the data. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="font-family:Roboto">Step 4: Data Analyzing</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">You have come up with an objective, needed information of data and also spent some time on data cleaning and normalizing, you have a little idea about what information you can get from data, further, you need to explore data to identify trends and patterns, now try to answer &ldquo; do you know which test should be run on data?&rdquo; or &ldquo; which is appropriate statistical tool to execute here?&rdquo;&nbsp; and &ldquo; is it helpful to understand data effectively.&rdquo; </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">For a better perception of data, now, it&#39;s time to run the test, any <span style="background-color:white">analytics tools will assist in summarizing the information. You can find out all the factors related to the objective. In the data analyzing procedure, statistical analysis methods (correlation analysis or testing hypothesis testing) or simple <a href="https://www.analyticssteps.com/blogs/introduction-logistic-regression-sigmoid-function-code-explanation">regression analysis</a></span></span></span><a href="https://www.analyticssteps.com/blogs/introduction-logistic-regression-sigmoid-function-code-explanation">&nbsp;</a><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto"><a href="https://www.analyticssteps.com/blogs/introduction-logistic-regression-sigmoid-function-code-explanation"> </a>(linear or logistic regression) preferably used in <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning,</a></span></span></span><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">&nbsp;get performed for predictions and compared using different assumptions, also the data is reduced and divided and many measurements are performed while making actionable insights from the data and get the desired result.</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">Step 5: Result Interpretation</span></span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="background-color:white"><span style="font-family:Roboto">In the final step, you need to finalize your model and hence interpret results, ask yourself,&rdquo; How to showcase the result&rdquo;? Before that make sure &ldquo; do the data answer the objective?&rdquo;, and ``Is there any limitation in your conclusion?&rdquo;, Hopefully, interpretation of results holds these answers, use the details of the result to end up with an analysis process to decide your best course of action. </span></span></span><span style="font-size:12.0pt"><span style="font-family:Roboto">In line up with result visualization, avoid presenting results with tables full of numbers, instead,&nbsp; use charts, graphs, and bars with simple notes in the form of dashboard-like <a href="https://www.analyticssteps.com/blogs/why-is-tableau-used-for-read-the-working-and-key-features-of-tableau">Tableau</a>,&nbsp;</span></span>&nbsp;<span style="font-size:12.0pt"><span style="font-family:Roboto">Excel, etc. for effective communication along with results. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Here, we come to know the data analysis process completely." class="images" src="/backend/media/uploads/2019/09/25/image-20190925150912-3.jpeg" style="height:560px; width:750px" title="Understood the data analysis process" /></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><strong><span style="font-size:14.0pt"><span style="font-family:Roboto">Conclusion</span></span></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif"><span style="font-size:12.0pt"><span style="font-family:Roboto">I hope this blog was able to bring clarity of steps required for any business analytics procedure, I summarized the entire procedure in five steps for easy understanding. Each step covered with introspective questions and contained much information to end up with a successful and implemented analysis as every step is performing a key function in generating important insights. For more blogs in Analytics and new technologies do read </span></span><a href="https://www.analyticssteps.com"><span style="font-size:12.0pt"><span style="font-family:Roboto"><span style="color:#1155cc">Analytics Steps</span></span></span></a><span style="font-size:12.0pt"><span style="font-family:Roboto">.&nbsp; </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:11pt"><span style="font-family:Arial,sans-serif">&nbsp;&nbsp;&nbsp; </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div>\r\n<div class="msocomtxt" id="_com_1">&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div class="msocomtxt" id="_com_4">&nbsp;</div>\r\n</div>\r\n\r\n<div>\r\n<div class="msocomtxt" id="_com_6">&nbsp;</div>\r\n</div>\r\n</div>	t	2019-09-25 09:48:37+00	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	Advance your data analysis process and data analytics tools for a better understanding of data analysis, decision-making, and result interpretation.	Data analysis process, data analysis tools, data analysis method, data analysis in qualitative research, data analysis and interpretation		t	t	\N	\N	259	57	\N	t
5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	introduction-logistic-regression-sigmoid-function-code-explanation	/backend/media/thumbnail/835519/7096305_1568350829_Logistic-Regression.jpg	<p>Logistic Regression is basically a predictive model analysis technique where the output (target) variables are discrete values for a given set of features or input (X).</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Logistic Regression</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> is basically a predictive model analysis technique where the output (target) variables are discrete values for a given set of features or input (X). It is a very powerful yet simple supervised classification algorithm in machine learning. Around 60% of the world&rsquo;s classification problems can be solved by using the logistic regression algorithm. In this blog, we go all the basic concepts of logistic regression with code explanation. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is Logistic Regression?</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Logistic regression is one of the most common algorithms used for binary classification. It predicts the probability of occurrence of a binary outcome using a logit function. It is a special case of linear regression as it predicts the probabilities of outcome using log function. We use the activation function (sigmoid) to convert outcome into categorical value. There are many examples where we can use logistic regression for example, it can be used for fraud detection, spam detection, cancer detection, etc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Difference between Linear Regression vs Logistic Regression</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Linear Regression is used when our dependent variable is continuous in nature for example weight, height, numbers, etc. and in contrast, Logistic Regression is used when the dependent variable is binary or limited for example: yes and no, true and false, 1 or 2 or 3 or 4, etc. Linear regression uses the </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em>ordinary least square</em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> method to minimize the error and arrives at the best possible solution, and the Logistic regression achieves the best outcomes by using the </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em>maximum likelihood</em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> method. In the 19th century, people use linear regression on biology to predict health disease but it is very risky for example if a patient has cancer and its probability of malignant is 0.4 then in linear regression it will show that cancer is benign (because probability comes &lt;0.5). That&rsquo;s where Logistic Regression comes which only provides us with binary results. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is the Sigmoid Function?</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It is a mathematical function having a characteristic that can take any real value and map it to between 0 to 1 shaped like the letter &ldquo;S&rdquo;. The sigmoid function also called a logistic function.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Y = 1 / 1+e </span></span><sup><span style="font-family:Roboto,serif"><span style="font-size:medium">-z</span></span></sup></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Sigmoid Activation function in Neural Network" class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-1.png" style="height:285px; width:780px" title="Softmax Activation Function" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em>Sigmoid function</em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">So, if the value of z goes to positive infinity then the predicted value of y will become 1 and if it goes to negative infinity then the predicted value of y will become 0. And if the outcome of the sigmoid function is more than 0.5 then we classify that label as class 1 or positive class and if it is less than 0.5 than we can classify it to negative class or label as class 0. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Code in Python</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">You can find the dataset here </span></span><a href="https://github.com/jesmayer99/machine-learning-dataset"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Dataset</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">. First of all, before proceeding we first import all the libraries that we need to use in our algorithm</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Logistic Regression Python Code" class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-2.png" style="height:231px; width:780px" title="Logistic Regression Python Code" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">After initializing all the libraries that we need in our algorithm know we have to import our dataset with the help of the pandas library and split our dataset into training and testing set with the help of the train_test_split library.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-3.png" style="height:201px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we divide our dataset on the basis of train and test split know we have to scale our feature dataset with the help of StandardScaler library and apply logistic regression on the training set and check the accuracy sore with the help of accuracy_score library.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Logistic Regression Sklearn" class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-4.png" style="height:466px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We have successfully applied logistic regression on the training set and see that our accuracy scores come 89%. So, if we take on basis of algorithm it is not so much worse for prediction. As we get the accuracy score of our model now we can see a pictorial representation of our dataset first we have to visualize the result on the basis of the training dataset.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-5.png" style="height:394px; width:780px" /></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-6.png" style="height:229px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-7.png" style="height:462px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We plot a picture on the basis of age and estimated salary in which we bifurcate our result in a 0 and 1 value basis. In the same process, we apply for the test set and visualize our result how accurate our prediction is.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-8.png" style="height:366px; width:780px" /></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-9.png" style="height:228px; width:780px" /></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906152336-10.png" style="height:454px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The main concept regarding this blog is to explain logistic regression and simple explanation via python code. I think the above blog is very helpful for you to clear your doubts regarding logistic regression more blogs are on the way to stay tuned with us! Keep exploring </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>	t	2019-08-21 09:57:35+00	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	A step by step illustration of Logistic regression and its examples, deployed by machine learning algorithm using python.	Logistic Regression Explained, Logistic Regression Python Code, Logistic Regression step by step example,sklearn Logistic Regression Summary, Logistic Regression Machine Learning python		t	t	2019-09-06 09:57:21+00	\N	106	79	\N	t
2	Real-World Applications of Business Analytics	real-world-applications-business-analytics	/backend/media/thumbnail/982994/6448576_1568351305_Business analytics banner.png	<p>Business analytics is a concept that has gained immense popularity in the few years and continues to do so as the field of Data Science makes rapid strides.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In business analytics, different tools and techniques are available for analyzing, exploring or investigating business data. These tools and techniques engaged in progressive business growth. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Nowadays, business analytics is used in various industries for more profit in a short duration of time to gain more profit than usual.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Topics Covered</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Introduction</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Applications of Business Analytics</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conclusion </span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Introduction</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The Role of&nbsp; Business Analyst varies with the variation of business problem. The first step is to recognize the business problem accurately and restructured it in flexible ways for analysis. Through this process, the massive size of data is used in analytical modelling and logical analysis for approaching business decisions. With an interpretation of the business issue and become familiar with the accessible dataset, the business analyst gives insights for the growth of the business. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Several Applications of Business Analyst" class="images" src="/backend/media/uploads/2019/09/06/image-20190906145322-1.png" style="height:532px; width:780px" title="Application of Business Analyst" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Business Analyst Applications</u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Any kind of business shows tremendous growth by involving approaches and techniques used in business analytics. In order to see the progress of business in the vast domain, data-driven results gain special attention in various industries and markets. And hence the act of business analyst comes in picture and used at high scale in the industry. Here, an index of industry application is considered into account for showing the role of business analyst in different domains. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Agriculture Business Analytics</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Stock Marketing</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Finance Marketing</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Manufacturing Industry</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Medical Methodology</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Customer Relation Management</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Bond Marketing</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20">\r\n<p><span style="font-size:30px"><span style="font-family:Roboto,serif"><strong>Application of Business Analytics</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>1.&nbsp; Agricultural Business Analytics&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Most of the Indian economy depends on agriculture but Indian agriculture experience tons of drastic conditions like depleting of ground-level water in rural areas, climatic changes, the emigration of farmhands from rural areas to urban areas in search of employment, business,&nbsp;etc. So, agriculture needs much attention to focus on better investment and growth.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">A business analyst can assure the availability of crops on time, crop production, the impact of seeds, quality and quantity of seeds. The effect of climate change, monsoon changes, rainwater storage, crop loss, fertilizer requirements, wind direction, floods, and draughts risk management, etc. can be controlled by predictions of business analysts. For example, predictions on soil parameters can be analyzed by previous data and implemented on crop yield. </span></span></p>\r\n\r\n<p><img alt="Importance of business analytics in Agriculture" class="images" src="/backend/media/uploads/2019/09/06/image-20190906145322-2.png" style="height:534px; width:780px" title="Agriculture Business Analysts" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Agriculture Business Analyst</u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Agriculture lacks organizational attention and support from bank loans and other welfare schemes, a business analyst can also process the bank loan and farmers&#39; welfare scheme for increasing agricultural inputs. it can give opportunities to farmers for individual income and growth. Another advancement is to give insight into irrigation, sow, harvest, an area of land for the crop.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>2.&nbsp; Stock Marketing</strong></span></span><span style="font-family:Roboto,serif"> </span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business analyst improves the performance of the organization in terms of business process and profit by analyzing the variance in the market and updation of changing price or fluctuation in stock trends. After analyzing he can provide the price list of shares of an item, relevant information of shareholders tracing of audience related to this market, etc. The business analyst also makes flexible strategies and plans for future investment and earnings. For example, stocks are continuous trends in the market and change very frequently, so he works on the continuous trends dataset to implement strategies. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>3.&nbsp; Bond Marketing</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business Analyst understands business performance and returns on investment by analyzing trends in the bond market. He provides trends in market and consumer behaviour in a detailed plan. Business Analyst has continuous data of each fluctuation in the bond market and give a necessary prediction for future investment and forecast the future of the economy. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">In the bond market, analytics is used in providing funding amounts, trends of trades, future marketing campaigns, marketing initiatives, information of investors in private and government sectors.</span></span><span style="font-family:Roboto,serif"> </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>4.&nbsp; Manufacturing Industry</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The business </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">analyst seeks to tackle out the best possible items for manufacturing and supplying in the market. He investigates the detailed dataset to analyze and implement in business development. For example, he describes status to the supplier and product management team regarding the most manufactured product. A business analyst can tell the highest number of customers for a specific product, services and performance product, product demand (quality and quantity-wise), product advertisement. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>5.&nbsp; Finance Marketing</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business Analyst utilizes various analytical techniques and approaches to improve the financial relevant issue such as fraud detection, risk mitigation, product pricing, marketing campaign optimization, financial planning, and forecasting, etc. These issues can be</span></span><span style="font-family:Roboto,serif"> </span><span style="font-family:Roboto,serif"><span style="font-size:medium">controlled by a business analyst. For example in fraud detection issues, a business analyst can find out the number of customers who are not paying payments on time. Similarly, loan defaulters can be traced through a graphical representation that shows defaulters age, gender, name, customer ID, etc. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>6.&nbsp; Medical Methodology </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In medical or healthcare department, Business analyst gives a prediction about the stock of medicine available in the hospital or medical store, shipment of medicines in the local market, related to disease, impacts of different medicine on same diseases, appointment and availability of doctor, arranging slots for patients to a medicine available to cure. For example, allotment of free slots to the patient from the doctor&rsquo;s working hours, duties of working staff in the hospital, etc.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Production of medicines can also be optimized by the business analyst. He proposed the strategies regarding production costs of medicines, area of production and stock available, low cost and high yields preparing methods.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>7.&nbsp; Customer Relation Management</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">For every individual business, customer relationship management is the most important factor. Business Analyst takes the required steps for a strong and healthy customer relationship with the organization. This helps to assemble emotional links with customers. The business analyst helps in increasing productivity according to customer demand and variation in products with consumptions. He utilizes data to maintain the involvement of end to end-user and improving internal and external factors for better customer service and experience. </span></span></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The above discussion emphasizes&nbsp;different real-world applications&nbsp;of business analytics on a daily basis in which the role of a <a href="https://www.analyticssteps.com/blogs/8-most-popular-business-analysis-techniques-used-business-analyst">Business Analyst</a> is described with significant illustrations. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Business</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong> </strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">analytics works in different domains and gives multiple applications related to the domain such as stock and bond marketing, healthcare and agriculture growth, finance marketing, etc. Business Analyst seeks the business interrogations to avoid </span></span>regular<span style="font-family:Roboto,serif"><span style="font-size:medium"> trends in the market. The business analyst uses his skills, knowledge, technologies, and practices in finding business problems, business insights, planning and perform various functions within a business. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>	t	2019-08-02 09:29:22+00	Real-World Applications of Business Analytics	What are the business issues in the real-world? This blog proffers various applications of business analytic used in real-world business problems.	Business Analytics Applications, Application of Business Analytics, Business Analytics real-world examples, Importance of Business Analytics, Application of Business Analytics in Finance, Application of Business Analytics in Marketing		t	t	2019-08-02 09:28:43+00	\N	256	9	\N	t
9	7 Types of Activation Functions in Neural Network	7-types-activation-functions-neural-network	/backend/media/thumbnail/4585379/3475230_1568351005_Banner_Activation.jpg	<p>Activation functions are the most crucial part of any neural network in deep learning.&nbsp;In deep learning, we want our neural network to do extremely complicated tasks such as image classification</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong><em>A</em>ctivation functions</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> are the most crucial part of any neural network in </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>deep learning</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">In deep learning, we want our neural network to do extremely complicated tasks such as image classification, language transformation, object detection, etc. So, without activation functions, these tasks are extremely complex to handle. In this blog, we will describe 7 types of activation functions and their&nbsp;importance and limitations.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is the activation function?</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Activation function</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> defines the output of input or set of inputs or in other terms defines node of the output of node that is given in inputs. They basically decide to deactivate neurons or activate them to get the desired output. It also performs a nonlinear transformation on the input to get better results on a complex neural network. Activation function also helps to normalize the output of any input in the range between 1 to -1. Activation function must be efficient and it should reduce the computation time because the neural network sometimes trained on millions of data points.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Activation function basically decides in any <a href="https://www.analyticssteps.com/blogs/neural-network-using-keras-functional-api-overview-structure-applications">neural network</a> that given input or receiving information is relevant or it is irrelevant. Let&#39;s take an example to understand better what is neuron and how activation function bounds the output value to some limit. </span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The neuron is basically is a weighted average of input, then this sum is passed through an activation function to get an output.</span></span></p>\r\n\r\n<div class="Send a d-block message text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><em>Y =</em> </span></span><img src="/backend/media/uploads/2019/09/06/image-20190906162208-1.png" style="height:38px; width:173px" /><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n</div>\r\n\r\n<div class="Send a d-block message text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small">Neuron</span></span><span style="font-family:Roboto,serif"> </span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Here Y can be anything for a neuron between range -infinity to +infinity. So, we have to bound our output to get the desired prediction or generalized results.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="Send a d-block message text-center">\r\n<div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><em>Y = Activation function(</em> </span></span><img src="/backend/media/uploads/2019/09/06/image-20190906162208-2.png" style="height:38px; width:173px" /><span style="font-family:Roboto,serif"><span style="font-size:medium"> )</span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">So, we pass that neuron to activation function to bound output values. There are mainly 7 types of activation functions which we will describe in this blog.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Types of Activation Functions</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Binary step </span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Linear </span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">ReLU</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">LeakyReLU</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Sigmoid</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Tanh</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Softmax</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Binary Step Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">This activation function very basic and it comes to mind every time if we try to bound output. It is basically a threshold base classifier, in this, we decide some threshold value to decide output that neuron should be activated or deactivated. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="Send a d-block message text-center">\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><em>f(x) = 1 if x &gt; 0 else 0 if x &lt; 0</em></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p><img alt="Binary Step Activation function used in Neural Network / Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162208-3.png" style="height:480px; width:750px" title="Binary Step Activation Function" /></p>\r\n\r\n<div class="d-block text-center">\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small">Binary step function</span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In this, we decide the threshold value to 0. It is very simple and useful to classify binary problems or classifier.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Linear Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It is a simple straight line activation function where our function is directly proportional to the weighted sum of neurons or input. Linear activation functions are better in giving a wide range of activations and a line of a positive slope may increase the firing rate as the input rate increases. In binary, either a neuron is firing or not. If you know gradient descent in deep learning then you would notice that in this function derivative is constant.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>Y = mZ</strong></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Where derivative with respect to Z is constant m. The meaning gradient is also constant and it has nothing to do with Z. In this, if the changes made in backpropagation will be constant and not dependent on Z so this will not be good for learning.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">In this, our second layer is the output of a linear function of previous layers input. Wait a minute, what have we learned in this that if we compare our all the layers and remove all the layers except the first and last then also we can only get an output which is a linear function of the first layer. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>ReLU( Rectified Linear unit) Activation function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="ReLU Activation Function in Neural Network/Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162208-4.png" style="height:467px; width:780px" title="ReLU activation function" /></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Rectified linear unit or ReLU is most widely used activation function right now which ranges from </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>0 to infinity</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">, All the negative values are converted into zero, and this conversion rate is so fast that neither it can map nor fit into data properly which creates a problem, but where there is a problem there is a solution, we use Leaky ReLU function instead of ReLU to avoid this unfitting, in Leaky ReLU range is expanded which enhances the performance.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Leaky ReLU Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="Leaky ReLU Activation Function in Neural Network / Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162208-5.png" style="height:455px; width:780px" title="Leaky ReLU Activation Function" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We needed the Leaky ReLU activation function to solve the &lsquo;Dying ReLU&rsquo; problem, as discussed in ReLU, we observe that all the negative input values turn into zero very quickly and in the case of Leaky ReLU we do not make all negative inputs to zero but to a value near to zero which solves the major issue of ReLU activation function.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Sigmoid Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The sigmoid activation function is used mostly as it does its task with great efficiency, it basically is a probabilistic approach towards decision making and ranges in between</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong> 0 to 1,</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> so when we have to make a decision or to predict an output we use this activation function because of the range is the minimum, therefore, prediction would be more accurate.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Sigmoid Activation Function in Neural Network/ Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162208-6.png" style="height:453px; width:780px" title="Sigmoid Activation Function" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The equation for the sigmoid function is</span></span></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>f(x) = 1/(1+e^(-x) )</strong></em></span></span></p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The sigmoid function causes a problem mainly termed as vanishing gradient problem which occurs because we convert large input in between the range of 0 to 1 and therefore their derivatives become much smaller which does not give satisfactory output. To solve this problem another activation function such as ReLU is used where we do not have a small derivative problem.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Hyperbolic Tangent Activation Function(Tanh)</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="tanh Activation Function in Neural Network / Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162208-7.png" style="height:461px; width:780px" title="tanh Activation Function " /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">This activation function is slightly better than the sigmoid function, like the sigmoid function it is also used to predict or to differentiate between two classes but it maps the negative input into negative quantity only and ranges in between <strong>-1 to&nbsp; 1.</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Softmax Activation Function</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><img alt="Softmax Activation function in Neural Network / Deep Learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162208-8.png" style="height:454px; width:780px" title="Softmax Activation Function" /> <span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Softmax on Binary Classification</u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Softmax is used mainly at the last layer i.e output layer for decision making the same as sigmoid activation works, the softmax basically gives value to the input variable according to their weight and the sum of these weights is eventually one. For Binary classification, both sigmoid, as well as softmax, are equally approachable but in case of multi-class classification problem we generally use softmax and cross-entropy along with it.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We have discussed 7 majorly used activation functions with their&nbsp;limitation (if any), these activation functions are used for the same purpose but in different conditions. Now you may finally know the importance of activation functions in neural networks. For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>	t	2019-08-22 10:57:42+00	7 Types of Activation Functions in Neural Network	Activation Function is strong, dominant as well as complex tool in deep learning. The explanation of different types of activation functions is shown here.	Softmax Activation Function, Sigmoid Activation Function, Different Types of Activation Functions in neural Networks, Activation Function relu, relu Activation Function Python, Linear Activation Function,		t	t	2019-08-21 10:57:32+00	\N	348	57	\N	t
3	Implementing Variance and Normalization under Principal Component Analysis with Python code	implementing-variance-and-normalization-under-principal-component-analysis-with-python-code	/backend/media/thumbnail/6582896/4404134_1568350907_PCABanner.jpg	<p>Fundamental purpose of this post is to brief regarding the PCA algorithm step by step and in a way that everyone can easily understand what can actually PCA do and how we can use PCA in project/algorithm. Before proceeding here is a quick overview of what we cover in this post.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:x-large"><em><strong>T</strong></em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">he fundamental purpose of this post is to brief regarding the PCA algorithm step by step and in a way that everyone can easily understand what can actually PCA do and how we can use PCA in project/algorithm. Before proceeding here is a quick overview of what we cover in this post.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Topics Covered</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">What is PCA?</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">What is a Variance?</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Why Normalization is Necessary for PCA?</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Practical Examples of PCA</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Code in Python </span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is Principal Component Analysis (PCA)?</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It is an unsupervised <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning</a> algorithm. PCA is mainly used for dimensionality reduction in a dataset consisting of many variables that are highly correlated or lightly correlated with each other while retaining the variation present in the dataset up to a maximum extent. It is also a great tool for exploratory data analysis for making predictive models.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It performs a linear transformation on the data so that most of the variance or information in your high-dimensional dataset is captured by the first few principal components. The first principal component will capture the most variance, followed by the second principal component and so on.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Each principal component is a linear combination of the original variables. Because all the principal components are orthogonal to each other, there is no redundant information. So, </span></span><span style="color:#111111"><span style="font-family:Roboto,serif"><span style="font-size:medium">the total variance in the data is defined as the sum of the variances of the individual component. So decide the total number of principal components according to cumulative variance &lsquo;&lsquo;explained&rsquo;&rsquo; by them.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" class="images" src="/backend/media/uploads/2019/09/09/banner1-728x90_3d6KFZI.jpg" style="height:90px; width:728px" /></p>\r\n\r\n<h2 style="text-align:left">&nbsp;</h2>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><strong>What is a Variance?</strong></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Mathematically, rigorous treatments of probability, we find a formal definition that is very enlightening. The variance of a random variable</span></span><em><span style="font-family:Arial,serif"><span style="font-size:medium"> </span></span></em><em><span style="font-family:Roboto,serif"><span style="font-size:medium">X</span></span></em><span style="font-family:Arial,serif"><span style="font-size:medium"> </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">is defined as:</span></span></p>\r\n\r\n<div class="d-block text-center">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>Var(X) = E(X</strong></em></span></span><sup><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>^2</strong></em></span></span></sup><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>) - E(X)</strong></em></span></span><sup><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>^2​​</strong></em></span></span></sup></p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Here</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em> E</em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> stands for expectations that are&nbsp;so simple and elegant that at first, it might not even be clear what&#39;s happening. Variance is the difference between when we square the inputs to Expectations and when we square the Expectations itself.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Variance in principal component analysis is explained" class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-28.jpeg" style="height:400px; width:750px" title="Variance in Principal Component Analysis" /></p>\r\n\r\n<p style="margin-left:144px">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="color:#111111"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Why Normalization is Necessary for PCA?</strong></span></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#242729"><span style="font-family:Roboto,serif"><span style="font-size:medium">Normalization is necessary to make every variable in proportion with each other, we have seen that the models which are not scaled properly in accordance with each other tend to perform poorly in comparison to those which are scaled well. We cannot extract features if two variables have a large scaling difference.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Practical Examples of PCA</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Example: Engine Health Monitoring</strong></span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">You have a dataset that includes measurements for different sensors on an engine (temperatures, pressures, emissions, and so on). While much of the data comes from a healthy engine, the sensors have also captured data from the engine when it needs maintenance. You cannot see any obvious abnormalities by looking at any individual sensor. However, by applying PCA, you can transform this data so that most variations in the sensor measurements are captured by a small number of principal components. It is easier to distinguish between a healthy and unhealthy engine by inspecting these principal components than by looking at the raw sensor data.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Example: Wine Detection</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">You have a dataset that includes measurements for different variables on wine (alcohol, ash, magnesium, and so on). You cannot see any obvious abnormalities by looking at any individual variables. However, by applying PCA, you can transform this data so that most variations in the measurements of the variables are captured by a small number of principal components. It is easier to distinguish between red and white wine by inspecting these principal components than by looking at the raw variable data.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Before implementing the PCA algorithm in python first you have to download the wine data set. Below attach source contains a file of wine dataset so download first to proceed</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Code In Python</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Source: </span></span><a href="https://gist.github.com/tijptjik/9408623"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Wine.csv</u></span></span></span></a></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">First of all, before processing algorithms, we have to import some libraries and read a file with the help of pandas.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-29.png" style="height:147px; width:780px" /></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-30.png" style="height:67px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we call out the dataset with the help of the Pandas data frame, now we have to split our dataset into training and testing set with test size is 0.2 times of dataset and remaining data is our training data.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-32.png" style="height:207px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The next step is to do feature scaling of train and test dataset with help of StandardScaler.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-33.png" style="height:144px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We are applying the PCA algorithm for two-component and fitting logistic regression to the training set and predict the result.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-34.png" style="height:428px; width:780px" /></p>\r\n\r\n<p><img class="d-block text-center" src="/backend/media/uploads/2019/09/09/image-20190909104229-35.png" style="height:22px; width:360px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we see that in predicting result our accuracy score is approx. 97% which is good for predicting test set results. After predicting, we visualize our training set results using 2 components.</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-36.png" style="height:592px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-37.png" style="height:279px; width:427px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we visualize the result on the training dataset, now we do a similar process for test set results&nbsp;and see our accuracy of the dataset using two&nbsp;components. As we take two&nbsp;components so we see that the first component shows most variation occurs between features and the second component shows most variation occurs between plotted features.</span></span></p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-38.png" style="height:595px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/09/image-20190909104229-39.png" style="height:276px; width:416px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In the principal component space, you should be able to see your objects cluster in a meaningful way.</span></span><span style="color:#333333"><span style="font-family:Roboto,serif"> </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">As we learned the basic introduction of the PCA algorithm in this blog. More blogs are on the way where you will learn PCA in depth. Keep reading and exploring </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">. Till then, </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Happy Reading!</strong></span></span></p>	t	2019-09-06 09:43:59+00	Implementing Variance and Normalization under Principal Component Analysis with Python code	Variance and normalization holds an important place in mathematics, understand the Principal Component Analysis and code for PCA interpretation using python.	PCA python, Principal Component Analysis example, Principal Component Analysis Tutorial, Principal Component Analysis Interpretation, PCA Machine Learning python, PCA Components sklearn		t	t	2019-09-06 09:43:48+00	\N	347	4	\N	f
6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	detailed-classification-of-data-science-machine-learning-and-business-intelligence	/backend/media/thumbnail/6755027/6888316_1568350764_Banner_ManThinking.jpg	<p>A business runs over three of its major aspects business intelligence, data scientist and machine learning engineer.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The business analytics runs over three of its major aspects, business intelligence, data science&nbsp;and machine learning engineer. As the name suggests, all three work with different strategies and perspectives under the same business issue, here we will&nbsp;discuss about core fields of analytics and their role in various business applications.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">In an isolated view, Data Science (DS) is the discipline in which the data is analyzed deeply and predicts the business growth opportunities, Machine Learning (ML) is another discipline in which machine learning algorithms are employed to solve any business issue, whereas Business Intelligence is the process where the raw can be converted into some logical information for better business growth.</span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Topic Covered</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Data Science and its Application</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Machine Learning and its Application</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business Intelligence and its Application</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conclusion </span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Data Science</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Massive size of data is explored, extracted and processed to insight needful information for any business issue. It is a multi-step process which includes various algorithms, scientific and numerical analysis and implementation of business plan and strategies. It assists to uncover hidden patterns from vast raw data as the data is collected from different sources. a piece of needful information.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The data science term has arisen from the combined nature of data analysis, mathematics, and statistics. The structured and unstructured dataset has been used for the extraction and interrogation. It facilitates a business problem into the opportunity. it enables individuals to take preferable and quicker actions independently. With the help of data science, a complex data problem could be simplified in easiest way to aid business values.</span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Application of Data Science</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In the recommendation system:</strong> data science is widely used in recommending a product or an item to the user. For example, on Netflix, movies are recommended to customers based on rating and past data. On amazon, different products are recommended to customers based on their search history.</span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In email filtration:</strong> An algorithm is constructed in such a way that filters email based on some attribute or specification. For example, spam email gets filtered in gmails, a sort of algorithm is processed which check the coming message or email is social emails, spam or junk emails.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In the gaming system:</strong> Sony, Apple, Samsung etc are the brands that use data science to upgrade their gaming software in mobiles or computer systems.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In speech and image recognition:</strong> Data science is specially used in recognition of speech and images. For example, Alexa, google voice, etc are used for speech recognition and computer vision is used for image recognition.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p style="margin-left:48px"><span style="font-family:Roboto,serif"><span style="font-size:medium">Apart from this data science is also used in risk management, fraud detection, traffic light signals, internet search, etc.</span></span></p>\r\n\r\n<p style="margin-left:48px"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Machine Learning </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Machine Learning is the technological field of study where computers have the ability to perform independently without being directed by the programmer. These computers are the models or sets of algorithms that are designed by the programmer to perform a particular task without using any kind of instructions from outsourced to produce significant results. They are relying on patterns and inference. In short, machine learning gives the computer software &ldquo;The potential to learn independently and perform accurately&rdquo;.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The machine learns in the same way as a human learns from his past experience so as machine does. Machines are trained in such a way that if they get a similar situation as they got in the past they make accurate predictions. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In the process of machine learning, a fine quality of data is fed to computers or ML algorithms to incorporate with statistical tools which are already coded by programmer in order to get predicted results. After that, these results are employed to get business insights from users. In this way, the machine predicts outcomes by getting data as input datasets. </span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Application of Machine Learning</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In Healthcare Services</strong>: ML is broadly used in health care to on a large scale, such as to find the health status of patients, stock of medicines, allotments of free slots to patient, s, present health condition by reading previous checkup report, etc.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In Transportation Management</strong>: ML is in trend in transportation, like, to divert the route of traffic, traffic signals, exact timing of availability of vehicles, in google maps for accurate path, etc.</span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In Different Domains</strong>: The government uses ML for public safety and utilization of different government items like ATM or electric apparatus. Forensic experts used this in image detection for the identification of theft or culprit. ML also used by the government for reducing prize and increasing efficiency in different sectors.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In Marketing and Sales Services</strong>: ML is used in marketing and sales for a recommendation, forecast, telecast, organizing campaigns for marketing, increasing sales, etc.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Other than these major applications, machine learning also used in financial services, oil and gas refinery, automobile industry, spam detection, internet searching etc. </span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Business Intelligence</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business intelligence (BI) is the process that comprises technologies, processes, and applications to analyze data and presenting useful information for business and corporate users. It is mainly used for taking preferable business decisions and conclusions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business Intelligence consists of methodologies, tools, and tactics for collecting, integrating, analyzing and presenting results. These results are presented in the form of charts, graphs, dashboards, reports and maps, flow charts and summaries in order to show a detailed analysis of data to users.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Business intelligence accelerates and improves business-decision, optimization of internal business processes, enhancing the efficiency of operations</span></span>.<span style="font-family:Roboto,serif"><span style="font-size:medium"> It also helps in getting business trends in marketing and sales, financial services, and productivity of items.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Application of Business Intelligence</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In sales</strong>: BI has a great role in sales marketing as a major part of any business depends on sales marketing. BI is considered for promoting sales of any product or software in the market by analyzing previous data. It further improves the sales performance of a particular business. It recognizes marketing trends for an issue to execute strategies.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In reporting</strong>: After analyzing data, BI uses its tools and strategies to initiate various types of reports in different sections such as sales, staffing, financial, recruiting, customer respond reports and another process inside a business domain. These reports consist of purpose or motivation, analysis or exploring, assignment done and outcomes of a business problem</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In visualization</strong>: Similar to the reporting application, BI is used for visualization. In the report, descriptive analysis is presented but in visualization, data is presented in the form of graphs, charts, maps, etc. It is used as a data visualization in sales, retail and logistics industries, educational institutes and IT sectors.</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n\t<p>&nbsp;</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>In performance</strong>: BI is used in optimizing the performance of a business by comparing to previous performance. It also provides the performance of customers, executives or employees, products and other sections of a business combine together to satisfy the performance of a business. BI&nbsp;reports consist of some targets and approaches towards targets to get judged by the performance of the system.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">BI also used as collaboration, benchmarking, management in knowledge, various SME, etc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Data science, <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning</a> and business intelligence are such fields of study where data is utilized for analysis and gives insights for business growth. All three domain uses different approaches and tools for exploring the dataset and interrogating business issues.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">There are multiple usual applications of Business Intelligence, Machine Learning and Data Scientist where they are used on a large scale. Some applications are common where BI, ML, and DS work together and sometimes independently.</span></span></p>	t	2019-08-14 10:10:34+00	Detailed classification of Data Science, Machine Learning, and Business Intelligence	Role of data science, business intelligence, and machine learning in data analytics are crucial, watch their substantial outcome on the business application.	what is Business Intelligence, Importance of Business Intelligence and Data Science, Machine Learning Developer vs Data Scientist, Data Science example		t	t	2019-08-14 10:10:24+00	\N	174	9	\N	t
1	Introduction to Machine Learning: Supervised and Unsupervised Learning	introduction-machine-learning-supervised-and-unsupervised-learning	/backend/media/thumbnail/9158579/306165_1568719437_BannerSuperwised&UnSuperwised.jpg	<p>We are living in a world of Humans and Machines. Humans have been learning and evolving from the past experience for billions of years, on the other hand, the era of machines and robots has just begun. In today&rsquo;s world, these machines or robots need to be instructed to perform, but what if machines started to learn from their own and this is where machine learning comes into the picture.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We are living in a world of Humans and Machines. Humans have been learning and evolving from the past experience for billions of years, on the other hand, the era of machines and robots has just begun. In today&rsquo;s world, these machines or robots need to be instructed to perform, but what if machines started to learn from their own and this is where machine learning comes into the picture.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Topics Covered</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">What is Machine Learning?</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">How does Machine Learning work?</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Different type of Machine Learning</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>What is Machine Learning?</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Machine learning is the core of much futuristic technological advancement in our world, today you can see various examples or<a href="https://www.analyticssteps.com/blogs/5-ways-machine-learning-impacts-your-everyday-life"> implementation of machine learning</a> around us such as Apple series, Tesla&rsquo;s self-driving car, Sophia AI robot and many more are there. So what exactly is Machine Learning? &ldquo;Machine Learning is a subset of artificial intelligence. It focuses mainly on the designing of systems, thereby allowing them to learn and make predictions based on some set of matrices in machines&rdquo;.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><img alt="" class="images" src="/backend/media/uploads/2019/09/09/banner3-728x90_CiPyZjm.jpg" style="height:90px; width:728px" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Do you know why is Machine Learning important, how does it work, what are the different types of Machine Learning or where is it headed? &ndash; So, let&rsquo;s dive into the answer to these questions one after another. The value of Machine learning has just begun to show itself, there&rsquo;s a lot of data in the world today generated not only by people but also by computers, mobile phones, and other devices. This data is in continuation to increase as a number of user increases. Traditionally, humans have analyzed data and adapted their culture from their past data. However, as the volume of data exceeds the ability for the human approach, it becomes possible to quickly and automatically produce models that can analyze bigger, more complex data and deliver faster, more accurate results &ndash; even on a very large scale.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>How does Machine Learning work?</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">One of the approaches is where the machine learning( ML) algorithm is trained using a labelled or unlabelled training data set to produce a model. New input data is introduced to the ML algorithm and make a prediction based on the model, the prediction is then evaluated for accuracy and if the accuracy is acceptable the machine learning algorithm is deployed. But, what if the accuracy is not acceptable, the ML algorithm is trained again and again within an augmented training data set, this was just a high-level example as there are other steps involved in it. Let&rsquo;s move on and quickly parse through Machine learning into different types, see how each of them are, how they worked and how each of them is used in various fields. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Types of Machine Learning</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Supervised Learning</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Unsupervised Learning</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Reinforcement Learning</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Supervised Learning,Unsupervised Learning and Reinforcement learning" class="images" src="/backend/media/uploads/2019/09/06/image-20190906144253-1.png" style="height:384px; width:780px" title="Types of machine learning" /></p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Supervised Machine Learning</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In supervised learning, you train your model on a labelled dataset that means we have both raw input data as well as its results. We split our data into a training dataset and test dataset where the training dataset is used to train our network whereas the test dataset acts as new data for predicting results or to see the accuracy of our model. Hence, in supervised learning, our model learns from seen results the same as a teacher teaches his students because the teacher already knows the results. Accuracy is what we achieve in supervised learning as model perfection is usually high.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">The model performs fast because the training time taken is less as we already have desired results in our dataset. This model predicts accurate results on unseen data or new data without even knowing a prior target. In some of the supervised learning models, we revert back the output result to learn more in order to achieve the highest possible accuracy.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">For each input instance an expected value associates, the value can be discreetly presenting a category or it can be real or continuous value. The algorithm learns the input patterns that generate the expected output and now once the algorithm is trained it can be used to predict the correct output of a never seen input.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Supervised learning in machine learning example" class="images" src="/backend/media/uploads/2019/09/06/image-20190906144253-2.png" style="height:448px; width:780px" title="Supervised Machine Learning" /></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-small"><em><u>Supervised Learning </u></em></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In this image above you can see that we are feeding raw inputs as an image of apple to the algorithm as a part of the algorithm we have a supervisor who keeps on correcting the machine or who keeps on training the machines or keeps on telling him that yes it is an apple or no it is not an apple, things like that.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">So this process keeps on repeating until we get a final trained model, once the model is ready it can easily predict the correct output of a never seen input.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style="font-family:Roboto,serif"><span style="font-size:medium">Some algorithms for supervised learning.</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Linear Regression</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Random Forest</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Support Vector Machines (SVM)</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Applications of Supervised Learning</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Sentiment Analysis</strong>: It is a natural language processing technique in which we analyze and categorize some meaning out of the given text data. For example, if we are analyzing tweets of people and want to predict whether a tweet is a query, complaint, suggestion, opinion or news, we will simply use sentiment analysis. </span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Recommendations</strong>: Every e-Commerce site or media, all of them use the recommendation system to recommend their products and new releases to their customers or users on the basis of their activities. Netflix, Amazon, Youtube, Flipkart are earning huge profits with the help of their recommendation system.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Spam Filtration</strong>: Detecting spam emails is indeed a very helpful tool, this filtration techniques can easily detect any sort of virus, malware or even harmful URLs. In recent studies, it was found that about 56.87 percent of all emails revolving around the internet were spam in March 2017 which was a major drop from April 2014&#39;s 71.1 percent spam share.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Unsupervised Learning</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In unsupervised learning, the information used to train is neither classified nor labelled in the dataset. Unsupervised learning studies on how systems can infer a function to describe a hidden structure from unlabelled data. The main task of unsupervised learning is to find patterns in the data. Once a model learns to develop patterns, it can easily predict patterns for any new dataset in the form of clusters. The system doesn&rsquo;t figure out the right output, but it explores the data and can draw inferences from datasets to describe hidden structures from unlabeled data. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Unsupervised Learning in Machine Learning example" class="images" src="/backend/media/uploads/2019/09/06/image-20190906144253-3.png" style="height:383px; width:780px" title="Unsupervised Machine Learning" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As we have already discussed that in unsupervised learning our dataset is not labelled, So if we are feeding apple, carrot, and cheese as raw input data then our model will distinguish all three but it cannot tell whether a given cluster is of apple or not as it is unlabelled but any new data will automatically fit into the clusters that are formed.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><strong><span style="font-family:Roboto,serif"><span style="font-size:medium">Some algorithms available for unsupervised learning are</span></span></strong></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Principal Component Analysis Algorithm</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">K-means Algorithm</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Singular Value Decomposition Algorithm</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Applications of Unsupervised Learning</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Document Clustering</strong>: In order to retrieve some information out of a text document we use techniques like K-means, it is also used to organize the document, topic extraction as well as filtering.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Data Reduction</strong>: visualizing and analyzing data with thousands of dimensions is a hectic task for machine learning models as they break down sometimes after a while, and after that data does not correlate with each other. In order dimensions to prevent dimension related problem, we use unsupervised algorithms such as singular value decomposition or principal component analysis</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Unsupervised learning is used for<strong> Anomaly Detection</strong> where it can help in the detection of any sort of fraud by observing unusual data points in the dataset. It is also used for outliers detection in which we differentiate all the outliers in the available dataset.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Reinforcement Learning</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It is a Machine Learning algorithm that allows software agents and machines to automatically determine the ideal behaviour within a specific context to maximize its performance. It does not have labelled dataset or results associated with data so the only way to perform a given task is to learn from experience. For every correct action or decision of algorithm, it is rewarded with positive reinforcement whereas, for every incorrect action, it is rewarded with negative reinforcement. In this way, it learns which actions are needed to perform and which are not. Reinforcement learning can, therefore, help in industrial automation as well as the gaming sector primarily.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Reinforcement Learning in Machine Learning Example" class="images" src="/backend/media/uploads/2019/09/06/image-20190906144253-4.png" style="height:589px; width:780px" title="Reinforcement Machine Learning" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Let&#39;s understand reinforcement learning by this example in this agent gives itself a reward with correct actions or predictions to improve its environment. So basically, this agent is supposed to get more and more rewards to get better results or achieve goals. Lastly, whichever environment of agents creates better result it will be our best possible model.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Applications of Reinforcement Learning</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Robotics</strong>: Reinforcement learning is used in the advancement of robotics. These models are used to train robots so that they can learn from their experience which is a belief of reinforcement learning.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Traffic Light Management System</strong>: Reinforcement Learning model that was applied on the traffic management system provided better results in comparison to the traditional method for the congestion problem.</span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Personalized Recommendation</strong>: Deep Reinforcement learning can perform better results in personalized recommendation than other ML models, it performed greatly on news recommendation which consisted of the challenges like dynamic news, click-through rate and more. </span></span></p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Machine learning uses algorithms to parse data, learn from that data, and make informative decisions based on what it has learned. The above information has certainly helped you in deciding if you will use supervised, unsupervised or reinforcement learning. For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>\r\n\r\n<p>&nbsp;</p>	t	2019-09-06 09:19:22+00	Introduction to Machine Learning: Supervised and Unsupervised Learning	The concept of Machine Learning, practical examples, and applications of supervised and unsupervised learning are discussed in this tutorial.	Supervised Learning, Unsupervised Learning, Unsupervised Learning example, Supervised Learning in Machine Learning, Unsupervised Learning in Machine Learning, Supervised and Unsupervised Classification, Introduction to Machine Learning with Python		t	t	2019-09-06 09:18:18+00	\N	594	4	\N	t
4	5 Ways Machine Learning Impacts Your Everyday Life?	5-ways-machine-learning-impacts-your-everyday-life	/backend/media/thumbnail/1461010/3957080_1568287754_MachineLearningBanner.jpg	<p style="text-align:left">Machine learning is a concept that has gained immense popularity in the past few years and continues to do so as the field of Data Science makes rapid strides. ML is described as a subfield of Artificial Intelligence (AI) in which the system<span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>	<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Machine learning is a concept that has gained immense popularity in the past few years and continues to do so as the field of Data Science makes rapid strides. ML is described as a subfield of Artificial Intelligence (AI) in which the system is provided with the ability to automatically learn from data and improve from experience without being directly programmed to do so. To simply put, ML involves training computers on available data using an algorithm(s) to create a model and then, this model is applied to the previously unseen data to make predictions.</span></span></p>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Many of you might not be aware but ML is quietly making a significant impact on our day-to-day life, thus making our everyday living hassle-free. Here are the 5 ways through which ML has penetrated everyday life.</span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Spam Email Detection </strong></span></span></p>\r\n</div>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Having an email id is no big deal nowadays. Whenever we login to our email id, there is a folder available in the sidebar named &lsquo;spam&rsquo; that contains all the unwanted emails. And all those emails in the spam folder aren&rsquo;t shifted manually from the inbox by the user. This is done automatically with the help of ML. </span></span></p>\r\n\r\n<p style="text-align:left"><img alt="Machine learning email classification using spam classifier" class="images" src="/backend/media/uploads/2019/09/06/image-20190906151641-1.png" style="height:347px; width:780px" title="Email classification using spam classifier" /><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n<div class="d-block text-center">\r\n<p style="text-align:left"><br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">A variety of algorithms &ndash; the most popular ones being Naive Bayes, K-Nearest Neighbours, and Random Forest are used for spam-filtering. These algorithms use the mails that have been previously successfully pre-classified as spam or non-spam as the training set. Then, they are trained on this dataset and the consequent model created is applied to&nbsp;the new set of received emails for classification into spam or non-spam. Very simple yet effective use of ML capabilities. Out of many abilities of machine learning detecting fraud emails is one of the simplest yet effective ways.</span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Search Engines</strong></span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n</div>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Whenever we are looking for an answer to our queries, the first resort for most of us is to turn to search engines like Google, Yahoo, Bing, etc. and we type our query, press enter and we are provided with a plethora of links that are relevant to our intended query. But how do these search engines come to know what we are looking for? Again, the power of ML is getting harnessed for this purpose. </span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><img alt="Machine learning in search engine is previewed " class="images" src="/backend/media/uploads/2019/09/06/image-20190906151641-2.jpeg" style="height:400px; width:750px" title="Search engine using ML algorithms" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p style="text-align:left"><br />\r\n&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Using algorithms like Natural Language Processing (NLP), Deep Learning and Tensorflow, search engines can decipher the meaning of search query and makes sure that the most relevant results of the highest quality are shown at the top. RankBrain is google&rsquo;s machine learning model for predictive searches, it uses machine learning to find a connection between searchers and users.</span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Transportation</strong></span></span></p>\r\n</div>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Most of us are very well-versed with travelling via cabs that can be booked through mobile apps such as Uber, Ola, etc. All these apps harness the power of ML. When you book a cab, the ML algorithms in place to make sure that the driver is nearby your location or the one going to travel on the same route as your destination (when pooling) picks you up. And not just this, ML is also utilized to provide the fastest route to your destination based on a traffic jam, ongoing construction work or any other possible obstructions occurring on the way to your destination.</span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><img alt="Machine learning in transportation which can be used in traffic management" class="images" src="/backend/media/uploads/2019/09/06/image-20190906151641-3.jpeg" style="height:556px; width:750px" title="Traffic management system using ML" /></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<div class="d-block text-center">\r\n<p style="text-align:left">&nbsp;</p>\r\n</div>\r\n\r\n<div class="content_subheading_18">\r\n<p style="text-align:left"><strong><span style="font-family:Roboto,serif"><span style="font-size:medium">Machine Learning&rsquo;s Influence in Transportation</span></span></strong></p>\r\n</div>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">With the help of image detection techniques, machine learning has already shown its potential in an automated or self-driving car.</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">It can take care of engine safety by collecting data and predicting the health of the engine. Also, it can manage the passenger&rsquo;s safety</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Traffic sign detection for better traffic management.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="margin-left:48px; text-align:left"><img alt="" class="images" src="/backend/media/uploads/2019/09/09/banner3-728x90.jpg" style="height:90px; width:728px" /></p>\r\n\r\n<p style="margin-left:48px; text-align:left">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Online Recommendation Engines</strong></span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n</div>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">Thanks to the advent of the internet and the rapid advancements that have been made in this field ever since we have got a variety of sources of entertainment to access. While the likes of YouTube, Netflix, Amazon Prime are the ones to-go-to when it comes to watching online streaming of movies and TV series, audio streaming apps such as Spotify provide quality real-time access to your favourite music. And the fun isn&rsquo;t just restricted to entertainment as multiple platforms are out there that allows you to do a variety of activities like purchase groceries, order food, buy stuff for your home, etc from anywhere in the World. </span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><img alt="Machine learning in online recommendation system" class="images" src="/backend/media/uploads/2019/09/06/image-20190906151641-4.jpeg" style="height:500px; width:750px" title="ML influence in online recommendations" /></p>\r\n\r\n<div class="d-block text-center">\r\n<p style="text-align:left">&nbsp;</p>\r\n</div>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">The one common thing among them all is the recommendation engines that provide the user with suggestions such as &lsquo;similar products&rsquo; or &lsquo;people who bought this also this&rsquo; when you select/purchase a product. All these oh-so-perfect recommendations are being made possible thanks to, once again, ML. All the companies providing such online services store the data provided by the user (past searches, purchases, etc) and based on these, they make recommendations based on your behaviour and preferences. </span></span></p>\r\n\r\n<p style="text-align:left"><br />\r\n&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Fraud Transaction Detection</strong></span></span></p>\r\n</div>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">There are millions of transactions being made every day online. Of them, there is always a chance of some of those being fraudulent. It won&#39;t be possible for the employees to manually go through each transaction and find the ones that seem suspicious. Not only it would cause the customers potential huge financial losses, but it would also lead to massive loss of potential revenues for the banks as well as customers would begin to drift away from them.</span></span></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><img alt="Machine learning in payments and fraud detection" class="images" src="/backend/media/uploads/2019/09/06/image-20190906151641-5.jpeg" style="height:350px; width:750px" title="Fraud Detection using ML" /></p>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<div class="d-block">\r\n<p dir="ltr">ML comes in as the saviour here for both you and the bank. ML algorithms use location data of the customer and the device used for transactions to detect whether a fraudulent transaction is being made and issues a warning message to the customer about it via message or email or even both. It would be fair to say that without ML, many online businesses would cease to exist.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n</div>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n</div>\r\n\r\n<p style="text-align:left">&nbsp;</p>\r\n\r\n<p style="text-align:left"><span style="font-family:Roboto,serif"><span style="font-size:medium">We have discussed some of the ways <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning">machine learning</a> can impact our lives, but machine learning has vast application and implementation that can impact our day to day life in the near future, machine learning is doing miracles every day and is fastly growing industry. For more blogs in Analytics and new technologies do read </span></span><a href="http://www.analyticssteps.com/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">.</span></span></p>	t	2019-09-06 09:50:52+00	5 Ways Machine Learning Impacts Your Everyday Life?	Top-most application of machine learning as in transportation, payments, and email classification make work more accessible, have information in this tutorial.	Top Applications for Machine Learning, Machine Learning Application Examples, What is Machine Learning, Machine Learning Transportation, Machine Learning in Payments, Machine Learning email Classification		t	t	2019-09-06 09:50:33+00	\N	498	4	\N	f
18	Understanding Bioinformatics as the application of Machine Learning	understanding-bioinformatics-application-machine-learning	/backend/media/thumbnail/1004418/3510768_1569924603_Banner_2(BDM).jpg	<p>This blog&nbsp;reviews Bioinformatics and the role of neural networks as a machine learning tools for Bioinformatics. Issues in Bioinformatics also discussed.</p>	<p>Machine learning is an adaptive process that improves models or computers from their experience, it enables computers to increase their efficiency. Because of its specific characteristics, it is widely used in real-life problems. This blog contains a real-life scenario in Bioinformatics. Starting from introduction to machine learning and Bioinformatics as one of its applications, we bring your attention to how Bioinformatics uses Machine learning tools such as ANN, PCA, RNN, and many more to the solution of biological data. Most of the time this data is unstructured which needs to be handled and organized very precisely. Also, we see some applications of neural networks in Bioinformatics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p dir="ltr"><strong>Introduction</strong></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Machine learning is purely associated with computational statistics, it not only focuses on different prediction-making using statistics but also ties to mathematical optimization which further delivers procedure, theory and application domain in the individual field. Machine learning has many characteristics, one is used to decrease false-positive rates, and it has the ability of computing machine in order to increase the performance based on past data. As we have seen in previous blogs that Machine learning has different applications and can be implemented based on business problems. Bioinformatics is also one of another application of Machine Learning. Also, it can be seen in many research that Machine Learning tools play a vital role in the field of Bioinformatics.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">Let&rsquo;s have a small glimpse of Bioinformatics, here we discover what is Bioinformatics? How this is useful? And the role of Machine Learning in Bioinformatics. It is the interdisciplinary field of molecular biology and genetics, computer science, mathematics, and statistics. It uses computation to get relevant information from biological data through different methods to explore, analyze, manage and store data. It is mainly used for the identification of genes and nucleotides for a better understanding of disease based on genes. Classification of gene sequence has an important role to understand the principle within nucleic acid and protein sequence. So in Bioinformatics, data is collected, stored, manipulated, in addition, this includes modeling of data for analysis, visualization and foresight by the deployment of algorithms and software.&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">Sometimes Machine Learning is combined with mining of data, which covers deep data analysis of unsupervised learning and <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning" target="_blank">supervised learning</a>. Here, supervised learning is used to determine and discovered a biological database that helps in finding laws in gene sequences. We know that various computational techniques are used for adaption and fault tolerance or error limits which made them engaging for investigation in Bioinformatics. Similarly in Machine Learning, a computational technique used to classify networks, to explore and learn then adapt to changing circumstances and therefore improving the performance of the machine, i.e. this technique trains the network for better performance and enhancing the accuracy of the system-network.</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p dir="ltr"><strong>Let&rsquo;s have a look at various issues in Bioinformatics.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">The Study of DNA and Protein sequences includes signs regarding functioning and subproblems such as classification of homologs, varied sequences alignment, searching sequence patterns, and evolutionary analyses. All of these problems covered under sequence analysis, and hence machine learning algorithms are preferred for the same. The structures of protein represent three-dimensional data, problems associated with it are;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<ol>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Structure prediction (having a secondary and tertiary protein structure)</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Analysis of structures of protein for marks of a functioning</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Alignment of structures.&nbsp;</p>\r\n\t</li>\r\n</ol>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><strong><img alt="The image is showing the basic animated structure of DNA" class="images" src="https://lh4.googleusercontent.com/16TYop70rKYf8w3P_Xn7ZQ4dItyn1E1WCKqIDt6fjIyfG6f3xqtToAtM3gxXW7Ueg2_P3vJFc8W9HetVhTgEfJf7tl8hB-6mItv5yTrBUApqR7StNw_aeIZJMW34nHI-D4V8AypH" style="height:281px; width:500px" title="Animated Structure of DNA" /></strong></p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">Gene expression data usually is expressed in matrices form and its analysis comprises statistical analysis, classification, and clustering strategies. Many biological networks such as Gene Regulatory Network, protein-protein interaction networks etc, are displayed on graphs and the various associated problems such as building and interpretation of massive-range networks are solved using graph-theoretic methods. Moreover, classification becomes a difficult task in handling biological data, this is not possible by traditional methods of analysis, so Artificial Neural Network is widely used as a Machine Learning tool in Bioinformatics. Neural networks are a component of soft computing, they provide learning capability to network-system. The architecture of the neural network consists of one input layer, one or more numbers of hidden layers and one output layer. In Bioinformatics, neural networks produce the properties of prediction and analysis or classification of genes in several classes.&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">In terms of Biological sequence, this is one of the main issues correlated with sequencing difficulties such as RNA, protein-sequence, DNA, etc. In <a href="https://en.wikipedia.org/wiki/Whole_genome_sequencing" target="_blank"><strong>Genome Sequencing</strong></a>, improvements in sequencing strategies give opportunities in bioinformatics for organizing, processing and interpreting the sequences. Each sequencing faces challenges in experimenting with the design, interpretation, and analysis of data. In gene findings and genome annotation, Introns and exons are nucleotide sequences within a gene, gene findings suggest for predicting introns and exons in DNA-sequence segments whereas genome annotation analyzes the repetitive DNA which is copied from the same or nearly the same sequence within the genome. In Sequence comparison, it provides a base for many Bioinformatics tools and allows the conclusions of the function, design, and progression of genes and genomes.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p dir="ltr"><strong>Steps in solving Sequence Analysis</strong></p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">While modeling biological processes at the molecular level and making conclusions from the stored data, the following steps are considered for Bioinformatics solutions;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Collect statistics from biological data</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Build a computational model</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Solve a computational modeling problem</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Test and evaluate computational algorithms</p>\r\n\t</li>\r\n</ol>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p dir="ltr"><strong>Application of neural networks in Bioinformatics</strong></p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">With the exponential growth of biological data, one needs to pay attention to the efficient storage and management of information, also to extract relevant information from this data. Further, appropriate computational methods must be applied for transforming this heterogeneous data into useful information. These computational tools and methods or you would say machine learning tools allow grasping more described data and provide knowledge in the form of testable models by which we are able to obtain predictions of the system. There are several biological domains where <a href="https://www.analyticssteps.com/blogs/5-ways-machine-learning-impacts-your-everyday-life" target="_blank">machine learning</a> tools can be utilized for extracting the information from data, following are applications of <a href="https://www.analyticssteps.com/blogs/neural-network-using-keras-functional-api-overview-structure-and-its-applications" target="_blank">neural network</a> in bioinformatics;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<ol>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">In the recognition of coding region of genes</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">In the identification of genes problems</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Identification and analysis of signals generated from regulatory sites</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Sequence, classification, and features detection</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Expression of genetic and genomic data</p>\r\n\t</li>\r\n\t<li dir="ltr">\r\n\t<p dir="ltr">Image and signal processing</p>\r\n\t</li>\r\n</ol>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p dir="ltr"><strong>Conclusion</strong></p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n</div>\r\n\r\n<p dir="ltr">As we enter the era of artificial intelligence and big data, machine learning is taking central place for business applications. <a href="https://www.analyticssteps.com/blogs/introduction-machine-learning-supervised-and-unsupervised-learning" target="_blank">Machine learning</a> is also producing promising results with great advances in Bioinformatics. In this blog, an extensive review of Bioinformatics and the role of machine learning are described. We saw the issue of sequence analysis in Bioinformatics and valuable insight Bioinformatics as a starting point. For more blogs in Analytics and new technologies do read <a href="https://www.analyticssteps.com">Analytics Steps</a>.&nbsp;&nbsp;</p>	t	2019-10-01 10:03:28+00	Understanding Bioinformatics as the application of Machine Learning	This blog reviews Bioinformatics and the role of neural networks as a machine learning tools for Bioinformatics. Issues in Bioinformatics also discussed.	Bioinformatics, classification, sequence analysis, machine learning, machine learning tools, neural networks		t	t	2019-10-01 10:03:25+00	\N	81	9	\N	t
10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	neural-network-using-keras-functional-api-overview-structure-and-its-applications	/backend/media/thumbnail/7512339/1202535_1568284940_CNN_Banner2.jpg	<p>An introductory tutorial on neural network using Keras&nbsp;functional API, covering its structure, applications, and implementation in machine learning.</p>	<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>T</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">he main idea behind machine learning is to provide human brain like abilities to our machine, and therefore neural network is like a boon to this ideology. Neural networks are said so because it is inspired by the working of the human brain&rsquo;s neurons. So, how does the human brain neurons work? And how this structure helped neural networks and deep learning? Let&rsquo;s discuss this all.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="heading_14" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-size:14px"><span style="font-family:Roboto,serif"><strong>Topics Covered </strong></span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Overview of Neural Network</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Structure of Neural Network</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Neural Network Implementation Using Keras Functional API</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Application of Neural Network</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Conclusion</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Structure of Neural Network</strong></span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Let&rsquo;s see the basic structure of neurons working in the human brain. </span></span></p>\r\n\r\n<p><img alt="working of neurons in human brain that includes axon , nucleus and dendrite " class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-1.jpeg" style="height:450px; width:750px" title="working of neuron in human brain" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><strong><span style="font-family:Roboto,serif"><span style="font-size:medium">Neurons in brains have three most important features&nbsp;</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Dendrites</strong>: that gives input to the nucleus of the neuron. </span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Nucleus</strong>:&nbsp; that processes the information.</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Axon</strong>:&nbsp; that acts as an output layer.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>Basic neural network structure</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="neural network structure with weights and activation function" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-2.jpeg" style="height:224px; width:300px" title="Neural network structure" /></p>\r\n\r\n<p><span style="font-family:Nova Mono,serif"><span style="font-size:medium">Input x1, x2, x3 which contains information in association with weights w1, w2, w3 acts as input layer and is stored in a matrice form known as hidden layers. Further in the structure &sum; shows the </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>activation function</strong></em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> which acts as a decision-maker and allows only certain useful information to fire forward further in the network towards the output layer.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18, d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Input -&gt; matrix activation -&gt; activation -&gt; output</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Here, the <a href="https://www.analyticssteps.com/blogs/7-types-activation-functions-neural-network">activation function</a> decides which feature or information to fire forward towards output in order to minimize error. Generally, the sigmoid function or softmax is seen to be preferred by data scientists and machine learning engineers.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Here is the sigmoid function</span></span><span style="font-family:Roboto,serif"> </span></p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:x-large">f(x) =</span></span><img src="/backend/media/uploads/2019/09/06/image-20190906162931-3.png" style="height:40px; width:50px" /><span style="font-family:Roboto,serif"><span style="font-size:x-large"> </span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Other activation functions that&nbsp;are widely used and accepted are tanh and softmax.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Now we shall visualize</span></span></p>\r\n\r\n<p><img alt="Neural Network Architecture showing various layers, including input , hidden and output layer." class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-4.jpeg" style="height:560px; width:750px" title="How does a neural network work?" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Above is the structure followed by Neural Networks, firstly we have an input layer which includes dataset(either labelled or unlabelled) then there are hidden layers, we can use as many hidden layers as we want as all it does is extraction of informative features from the dataset, we must choose our number of hidden layers wisely as too many features can lead to overfitting which may disturb the accuracy of our model to some extent. Lastly, we have our final layer which is the output layer to give results. For more accuracy, we train our data again and again till then it learns all the features that are required. This information as input is stored as a matrix form which includes information with weight and bias associated with it. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" class="images" src="/backend/media/uploads/2019/09/09/banner2-728x90.jpg" style="height:90px; width:728px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Loss compilation and reducing the loss function is one of the most important work to do in neural networks, we reduce our loss function using a very intuitive algorithm known as </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>gradient descent</strong></em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> which finds out the error and minimizes it, in the mathematical statement, it can optimize the convex function.</span></span></p>\r\n\r\n<p><img alt="Gradient Descent algorithm to compute loss" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-5.jpeg" style="height:450px; width:533px" title="Gradient Descent 2D plot" /></p>\r\n\r\n<p><strong><span style="font-family:Roboto,serif"><span style="font-size:medium">Steps for Gradient Descent</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Take random 𝚹</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Update 𝚹 in a direction of decreasing gradient(slope)</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Update gradients</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="d-block text-center" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p style="margin-left:48px">𝚹 <span style="font-family:Roboto,serif"><span style="font-size:medium">= 𝚹 - ղ*ძf(𝚹) / ძ(𝚹)</span></span></p>\r\n\r\n<p style="margin-left:48px">&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Tahoma,serif"><span style="font-size:medium">Here ղ is learning rate, we have to repeat step 2 until we reach to the local minima.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Like we teach a child when it makes mistakes, for our model is also like that child, it makes mistakes and needs someone to teach it whenever it makes mistakes, this is handled by an algorithm known to be </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><em><strong>Backpropagation</strong></em></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">. </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">It works with the help of gradient descent and other functionality. It moves in a backward direction re-training the network by changing weights and this retraining happens till our model gives us optimum results with the least possible errors. This algorithm is a work of David Rumelhart, when in 1986 he published famous note on this algorithm, although it introduced a long back in 1970.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Gif visualization of the neural network:</span></span></p>\r\n\r\n<div class="d-block text-center">\r\n<p><strong><img alt="Neural Network GIF showing how neural network is predicting correct label" class="images" src="https://lh5.googleusercontent.com/zVtbyAgYuJ-Fyp2zgx8b0AJEDsZYHBRT2K8kzebkjv4foyp7so5DWDMaqNgJXeatLdMQdp1ZPLtNUz-q_fB108zA3zAA0vf7Bq2is-duvPD0w-j0v5zMlD03Z0MLNx_B6eyn_Hdg" style="height:465px; width:624px" title="Neural Network working" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In the above visualization, two images are provided as an input, our model processes and learn the features of input images, further our model becomes capable of classifying both images on the basis of features it has learned as we can see in our output layer.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Neural Network Implementation Using Keras Functional API</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p>Step 1</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img alt="keras Neural Network Code in python using Keras" class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-7.png" style="height:288px; width:780px" title="Neural Network Tutorial" /><span style="font-family:Roboto,serif"><span style="font-size:medium"> </span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Importing every necessary library, including train_test_split from sklearn and also importing layers like convolutional 2D, Activation, Max pooling etc.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 2</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-8.png" style="height:457px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Reading our dataset with the help of the panda&#39;s library and visualizing our data. we can analyse the shape of our dataset which contains 1000 rows and 785 columns.</span></span></p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Here is the </span></span><a href="https://www.kaggle.com/zalando-research/fashionmnist"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u> Dataset</u></span></span></span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 3</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-9.png" style="height:351px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">In this step we specified x and y, afterwards, we did splitting&nbsp;into training and testing (80% - 20%).&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Here np.utils convert&nbsp;a class integer to the binary class matrix for use with categorical cross-entropy.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 4</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-10.png" style="height:191px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Reshaping our x_train and x_test for use in conv2D. And we can observe the change in the shape of our data.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 5</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-11.png" style="height:290px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Initializing our model, first addition adds input layer, another layer is hidden layer 1 and next is the output layer. We can observe that we have taken different activation function such as sigmoid, tanh, and softmax. All these are one of a kind activation function.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 6</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-12.png" style="height:565px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">We can see the output shape at every layer with the number of parameters.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">There are none non-trainable parameter which means every parameter has been analyzed.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 7</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-13.png" style="height:114px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">As commented in our code, we are initializing our weights here.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 8</span></span></p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-14.png" style="height:176px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Fitted our training data to our model with 100 epochs and 256 as batch size.&nbsp;</span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">Epochs are the number of times we need to validate our data and batch size batch which contain all the parameters but are computed simultaneously.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_subheading_18" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Step 9</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-15.png" style="height:362px; width:780px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img class="images" src="/backend/media/uploads/2019/09/06/image-20190906162931-16.png" style="height:562px; width:662px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Plotting our data, here we can see the slight difference between the loss of our training and testing data, we can also observe the difference between the accuracy of our training and testing data.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Applications of Neural Networks</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>To Solve a Regression Problem</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> - In predicting an accurate continuous value, we can use a simple neural network.</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>For Clustering</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> - If the given dataset is unlabelled or unsupervised, our neural network will form clusters to distinguish classes.</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Pattern Recognition </strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium">- There are feedback neural networks which help in tasks like pattern recognition.</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Dimension Reduction</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> - To understand our data and to extract maximum features out of the data we need to reduce its dimension which can be easily done with the help of artificial neural networks.</span></span></p>\r\n\t</li>\r\n\t<li>\r\n\t<p><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Machine Translation</strong></span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"> - We must have used keyboards that translates from one language to another, this is nothing but a machine translation which can be achieved using neural networks.</span></span></p>\r\n\t</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<div class="content_heading_20" style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:large"><strong>Conclusion</strong></span></span></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p><span style="font-family:Roboto,serif"><span style="font-size:medium">Neural networks are the foundation of deep learning which helps in performing various tasks, we have learned about the basics of how it works and learned the coding part with the help of Keras functional API. For more blogs keep exploring and keep reading </span></span><a href="/"><span style="color:#1155cc"><span style="font-family:Roboto,serif"><span style="font-size:medium"><u>Analytics Steps</u></span></span></span></a><span style="font-family:Roboto,serif"><span style="font-size:medium">. </span></span><span style="font-family:Roboto,serif"><span style="font-size:medium"><strong>Happy Reading!</strong></span></span></p>	t	2019-09-06 11:04:16+00	Neural Network Using Keras Functional API: Overview, Structure, and it's Applications	An introductory tutorial on neural network using Keras functional API, covering its structure, applications, and implementation in machine learning.	neural networks, keras neural network, neural networks applications, neural network example python, neural network brain, how does a neural network work, gradient descent neural network		t	t	2019-09-01 11:04:06+00	\N	1634	4	\N	t
\.


--
-- Data for Name: blogs_category; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.blogs_category (id, blogpost_id, blogcategory_id) FROM stdin;
1	2	2
2	4	2
3	5	2
4	6	2
10	12	2
11	10	3
12	7	3
13	3	2
14	1	2
15	11	5
16	9	3
17	8	4
18	6	4
19	2	5
20	13	4
21	14	3
22	15	3
23	16	2
24	17	5
25	18	2
\.


--
-- Name: blogs_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.blogs_category_id_seq', 25, true);


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.blogs_id_seq', 18, true);


--
-- Data for Name: career_leads; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.career_leads (id, job_profile, first_name, last_name, email, phone, resume, status, created_on) FROM stdin;
1	Senior Business Analyst - Tableau - BFS	Tes	Vhh	Hhh@jdj.com	0000000000	/backend/media/career/7140796/Test Document - Assignment.docx	t	2019-09-09 15:00:46.342159+00
2	Data Scientist	ruruu	ururu	ruurur@iitit.com	0202020202	/backend/media/career/7669243/test.pdf	t	2019-09-11 05:56:54.742153+00
3	Data Scientist	Testing new	neww	testing@yopmail.com	3201269555	/backend/media/career/1512352/test.pdf	t	2019-09-13 06:18:10.768447+00
4	Data Scientist	vivek	vikash	v@yopmail.com	1458458448	/backend/media/career/735863/resume.pdf	t	2019-09-13 08:48:20.767952+00
5	Senior Business Analyst - Tableau - BFS	Test	iyuiiyu	abhisheksoni500@gmail.com	9720457881	/backend/media/career/9728739/Abhishek-Soni-final-resume.pdf	t	2019-09-13 08:50:03.221906+00
6	Data Scientist	Niraj	kuas	niraj.kumar@codeflowtech.com	8266544564	/backend/media/career/9160037/Format-for-recording-tally-of-Postal-ballot-papers--regarding..pdf	t	2019-09-13 08:52:23.422113+00
7	Data Scientist	rajes	klsjklsdq	rajesh.mehla@codeflowtech.com	5658787878	/backend/media/career/8648002/invoice-(1).pdf	t	2019-09-13 08:59:34.4283+00
8	Data Scientist	viv	vik	vivek.vikash2014@vit.ac.in	5845845845	/backend/media/career/9233179/crvvf.Django.By.Example.eBook.pdf	t	2019-09-13 09:02:17.444925+00
9	Data Scientist	test	tetet	tetetetet@yopmail.com	7276363727	/backend/media/career/1837418/test.pdf	t	2019-09-13 11:33:58.490995+00
10	Data Scientist	test	test	richa.grover@codeflowtech.com	8083083083	/backend/media/career/372443/test.pdf	t	2019-09-13 11:37:38.846002+00
11	Senior Business Analyst - Tableau - BFS	test	tetet	test@yopmail.com	8301840801	/backend/media/career/2677663/test.pdf	t	2019-09-13 11:55:41.812873+00
12	Data Scientist	VIDIFK	SDFJSDF	a@yopmail.com	5845845845	/backend/media/career/9825561/django-cheat-sheet.pdf	t	2019-09-16 09:51:26.365789+00
13	Data Scientist	tetrt	trtrtrt	richa.grover@codeflowtech.com	8679797644	/backend/media/career/7543163/test.pdf	t	2019-09-20 09:57:58.509415+00
\.


--
-- Name: career_leads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.career_leads_id_seq', 13, true);


--
-- Data for Name: comment_reactions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.comment_reactions (id, created_on, comment_id, user_id) FROM stdin;
\.


--
-- Name: comment_reactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.comment_reactions_id_seq', 1062, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.comments (id, comment, created_date, is_approved, blog_id, parent_id, user_id) FROM stdin;
248	Great article...	2019-09-23 05:08:23.681319+00	f	2	\N	73
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.comments_id_seq', 248, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-09-06 09:11:01.521949+00	1	Machine	1	[{"added": {}}]	16	1
2	2019-09-06 09:11:31.129209+00	1	Machine	3		16	1
3	2019-09-06 09:11:59.576842+00	2	MACHINE LEARNING	1	[{"added": {}}]	16	1
4	2019-09-06 09:19:07.089509+00	2		1	[{"added": {}}]	9	1
5	2019-09-06 09:20:26.026818+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	1	[{"added": {}}]	19	1
6	2019-09-06 09:28:12.271413+00	2	Real-World Applications of Business Analytics	1	[{"added": {}}]	19	1
7	2019-09-06 09:32:13.260953+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["tags", "is_published", "created_on", "created_by", "published_on", "is_featured", "meta_title", "select_thumbnail"]}}]	19	1
8	2019-09-06 09:45:06.237263+00	3	Understanding Principal Component Analysis (PCA)	1	[{"added": {}}]	19	1
9	2019-09-06 09:51:35.50576+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	1	[{"added": {}}]	19	1
10	2019-09-06 09:58:05.791137+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	1	[{"added": {}}]	19	1
11	2019-09-06 10:10:58.277588+00	6	Difference Between Business Intelligence, Data Science and Machine Learning	1	[{"added": {}}]	19	1
12	2019-09-06 10:39:35.189671+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	1	[{"added": {}}]	19	1
13	2019-09-06 10:50:31.061712+00	8	Tableau: Features And its Usage	1	[{"added": {}}]	19	1
14	2019-09-06 10:57:12.451314+00	9	7 Types of Activation Functions in Neural Network	1	[{"added": {}}]	19	1
15	2019-09-06 10:58:08.654401+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["tags", "is_published", "created_on", "created_by", "published_on", "meta_title", "select_thumbnail"]}}]	19	1
16	2019-09-06 11:09:43.834839+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	1	[{"added": {}}]	19	1
17	2019-09-06 11:16:25.069634+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	1	[{"added": {}}]	19	1
18	2019-09-06 11:16:39.106537+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[]	19	1
19	2019-09-06 11:20:44.306865+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	1	[{"added": {}}]	19	1
20	2019-09-06 11:27:00.982363+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
21	2019-09-06 11:42:16.947755+00	1	niraj@fsad.sad	2	[{"changed": {"fields": ["biography", "created_on", "updated_on"]}}]	8	1
22	2019-09-06 11:42:38.952314+00	3	niraj	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
23	2019-09-06 11:43:05.097807+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["created_by"]}}]	19	1
24	2019-09-06 11:43:11.625232+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["created_by"]}}]	19	1
25	2019-09-06 11:43:18.032364+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["created_by"]}}]	19	1
26	2019-09-06 11:43:25.112853+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["created_by"]}}]	19	1
27	2019-09-06 11:43:31.949292+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["created_by"]}}]	19	1
28	2019-09-06 11:43:40.821062+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["created_by"]}}]	19	1
29	2019-09-06 11:43:49.030833+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["created_by"]}}]	19	1
30	2019-09-06 11:43:55.503453+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["created_by"]}}]	19	1
31	2019-09-06 11:44:01.4614+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["created_by"]}}]	19	1
32	2019-09-06 11:44:08.723955+00	6	Difference Between Business Intelligence, Data Science and Machine Learning	2	[{"changed": {"fields": ["created_by"]}}]	19	1
33	2019-09-06 11:44:15.853867+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["created_by"]}}]	19	1
34	2019-09-06 11:44:22.455562+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["created_by"]}}]	19	1
35	2019-09-06 11:48:47.805747+00	1	Art	1	[{"added": {}}]	10	1
36	2019-09-06 11:49:13.938703+00	2	Artificial intelligence	1	[{"added": {}}]	10	1
37	2019-09-06 11:49:47.107262+00	1	Police in China will use AI face recognition to identify “lost” elderly	1	[{"added": {}}]	11	1
38	2019-09-06 11:50:26.342121+00	2	How coca-cola is using AI to stay at the top of soft drinks market	1	[{"added": {}}]	11	1
39	2019-09-06 11:50:42.358881+00	3	MACHINE LEARNING	1	[{"added": {}}]	10	1
40	2019-09-06 11:51:10.154057+00	3	How to engineer a self driving Car	1	[{"added": {}}]	11	1
41	2019-09-06 11:52:27.947696+00	4	Google’s lung cancer AI: a promising tool that needs further validation	1	[{"added": {}}]	11	1
42	2019-09-06 11:52:52.350561+00	4	Big Data	1	[{"added": {}}]	10	1
43	2019-09-06 11:53:12.954522+00	5	3 Fundamentals for supercharging your Data Strategy	1	[{"added": {}}]	11	1
44	2019-09-06 11:54:19.141802+00	6	What is Data streaming? A Data architect’s guide	1	[{"added": {}}]	11	1
45	2019-09-06 11:58:41.710916+00	7	India among top 20 countries in artificial intelligence readiness ranking	1	[{"added": {}}]	11	1
46	2019-09-06 11:59:22.937444+00	8	Alphabet’s AI Might be able to Predict Kidney Disease	1	[{"added": {}}]	11	1
47	2019-09-06 12:00:31.513677+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	1	[{"added": {}}]	11	1
48	2019-09-06 12:03:00.03091+00	4	Google’s lung cancer AI: a promising tool that needs further validation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
49	2019-09-06 12:03:16.104271+00	5	3 Fundamentals for supercharging your Data Strategy	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
50	2019-09-06 12:03:25.111939+00	7	India among top 20 countries in artificial intelligence readiness ranking	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
51	2019-09-06 12:03:39.244914+00	6	What is Data streaming? A Data architect’s guide	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
52	2019-09-06 12:03:52.936388+00	7	India among top 20 countries in artificial intelligence readiness ranking	2	[]	11	1
53	2019-09-06 12:04:04.559301+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
54	2019-09-06 12:04:14.493142+00	8	Alphabet’s AI Might be able to Predict Kidney Disease	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
55	2019-09-06 12:06:20.660669+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["is_featured"]}}]	19	1
56	2019-09-06 12:06:26.919391+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["is_featured"]}}]	19	1
437	2019-09-14 03:19:35.427724+00	163	dgdg	3		18	1
57	2019-09-06 12:07:53.373278+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
58	2019-09-06 12:17:25.383463+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
59	2019-09-06 12:18:55.65458+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
60	2019-09-06 12:19:28.34063+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
61	2019-09-06 12:19:48.626522+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
62	2019-09-06 12:20:23.877808+00	6	Difference Between Business Intelligence, Data Science and Machine Learning	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
63	2019-09-06 12:20:59.682322+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
64	2019-09-06 12:35:42.911799+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
65	2019-09-06 12:36:41.943631+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
66	2019-09-06 12:58:18.788531+00	9	neelam	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
67	2019-09-06 12:58:25.786258+00	8	richa	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
68	2019-09-06 12:58:32.966687+00	7	gaurav	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
69	2019-09-06 12:58:39.919204+00	6	ayush	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
70	2019-09-06 12:58:47.656442+00	5	sheetal	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
71	2019-09-06 12:58:54.815372+00	4	tanesh	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
72	2019-09-06 13:00:58.059946+00	3	DEEP LEARNING	1	[{"added": {}}]	16	1
73	2019-09-06 13:01:05.559352+00	4	BIG DATA	1	[{"added": {}}]	16	1
74	2019-09-06 13:01:28.982902+00	5	NATURAL LANGUAGE PROCESSING	1	[{"added": {}}]	16	1
75	2019-09-06 13:02:16.282609+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
76	2019-09-06 13:02:35.648895+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
77	2019-09-06 13:02:48.272862+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["created_by"]}}]	19	1
78	2019-09-06 13:03:00.553742+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
79	2019-09-06 13:03:25.369692+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
80	2019-09-06 13:03:42.151046+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
81	2019-09-06 13:03:56.350404+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
82	2019-09-06 13:04:12.65653+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
83	2019-09-06 13:04:31.258883+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["created_by"]}}]	19	1
84	2019-09-06 13:04:55.999374+00	6	Difference Between Business Intelligence, Data Science and Machine Learning	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
85	2019-09-06 13:05:18.128584+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["created_by"]}}]	19	1
86	2019-09-06 13:05:39.707875+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["category", "created_by"]}}]	19	1
87	2019-09-06 13:07:36.615367+00	5	NATURAL LANGUAGE PROCESSING	2	[]	16	1
88	2019-09-06 13:07:56.192113+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[]	19	1
89	2019-09-06 13:09:52.775448+00	5	NATURAL LANGUAGE PROCESSING	2	[{"changed": {"fields": ["slug"]}}]	16	1
90	2019-09-06 13:12:52.825785+00	1	Sayantini	1	[{"added": {}}]	23	1
91	2019-09-06 13:13:15.238253+00	2	Narla Sameer Krishna	1	[{"added": {}}]	23	1
92	2019-09-06 13:13:44.988892+00	3	Ankush Jindal	1	[{"added": {}}]	23	1
93	2019-09-06 13:14:07.496935+00	3	Ankush Jindal	3		23	1
94	2019-09-06 13:14:29.475973+00	4	Vilochana Maheshwari	1	[{"added": {}}]	23	1
95	2019-09-06 13:14:50.649655+00	5	Toufiq Mohammed H.	1	[{"added": {}}]	23	1
96	2019-09-06 13:15:14.312617+00	6	Kunal Chakraborty	1	[{"added": {}}]	23	1
97	2019-09-06 13:15:42.198157+00	7	Amrendra Kumar	1	[{"added": {}}]	23	1
98	2019-09-06 13:16:08.386569+00	8	Deepika	1	[{"added": {}}]	23	1
99	2019-09-06 13:16:29.908628+00	9	Ankush Jindal	1	[{"added": {}}]	23	1
100	2019-09-06 13:16:56.704202+00	10	Udit Bhan	1	[{"added": {}}]	23	1
101	2019-09-06 13:17:13.673264+00	11	Sheetal Sharma	1	[{"added": {}}]	23	1
102	2019-09-06 13:23:19.588768+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
103	2019-09-06 13:25:13.742856+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
104	2019-09-06 13:27:32.798554+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
105	2019-09-06 13:29:59.842373+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["contents"]}}]	19	1
106	2019-09-06 13:30:31.992362+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["contents"]}}]	19	1
107	2019-09-06 13:31:29.959584+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
108	2019-09-06 13:33:00.788659+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
109	2019-09-06 13:35:28.047977+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
110	2019-09-06 13:36:30.048154+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
111	2019-09-06 13:37:45.067692+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
112	2019-09-06 13:38:09.819966+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
113	2019-09-06 13:40:31.841787+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
114	2019-09-09 04:13:49.497429+00	1	Data Scientist	1	[{"added": {}}]	22	1
438	2019-09-14 03:19:35.429227+00	162	ggd	3		18	1
115	2019-09-09 04:15:46.476164+00	2	Senior Business Analyst - Tableau - BFS	1	[{"added": {}}]	22	1
116	2019-09-09 04:18:18.363103+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
117	2019-09-09 04:18:49.731349+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
118	2019-09-09 04:20:28.755542+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
119	2019-09-09 04:20:56.547999+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
120	2019-09-09 04:22:15.758461+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
121	2019-09-09 04:29:23.843871+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
122	2019-09-09 04:54:13.99358+00	3	tanesh@analyticssteps.com	2	[{"changed": {"fields": ["linkedin_link"]}}]	8	1
123	2019-09-09 04:54:23.202965+00	4	sheetal@yopmail.com	2	[{"changed": {"fields": ["linkedin_link"]}}]	8	1
124	2019-09-09 04:54:30.805422+00	5	ayush@yopmail.com	2	[{"changed": {"fields": ["linkedin_link"]}}]	8	1
125	2019-09-09 04:54:37.993176+00	6	gaurav@yopmail.com	2	[{"changed": {"fields": ["linkedin_link"]}}]	8	1
126	2019-09-09 04:54:47.400278+00	7	richa@yopmail.com	2	[{"changed": {"fields": ["linkedin_link"]}}]	8	1
127	2019-09-09 04:55:05.832351+00	8	neelam@yopmail.com	2	[{"changed": {"fields": ["linkedin_link"]}}]	8	1
128	2019-09-09 04:57:02.566161+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
129	2019-09-09 04:59:18.671856+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
130	2019-09-09 05:16:46.548599+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
131	2019-09-09 05:18:13.613951+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["contents"]}}]	19	1
132	2019-09-09 05:21:53.042192+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[{"changed": {"fields": ["created_on"]}}]	11	1
133	2019-09-09 05:37:43.772306+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[]	11	1
134	2019-09-09 05:37:50.509108+00	1	Police in China will use AI face recognition to identify “lost” elderly	2	[]	11	1
135	2019-09-09 05:38:00.492363+00	2	How coca-cola is using AI to stay at the top of soft drinks market	2	[]	11	1
136	2019-09-09 05:38:08.35698+00	3	How to engineer a self driving Car	2	[]	11	1
137	2019-09-09 05:38:33.525829+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[{"changed": {"fields": ["created_on"]}}]	11	1
138	2019-09-09 06:04:39.022108+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
139	2019-09-09 06:05:12.63354+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
140	2019-09-09 06:06:29.595099+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
141	2019-09-09 06:08:25.276229+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
142	2019-09-09 06:10:19.567266+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
143	2019-09-09 06:12:15.021863+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
144	2019-09-09 06:14:47.801937+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["contents"]}}]	19	1
145	2019-09-09 06:16:34.235298+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
146	2019-09-09 06:17:04.742349+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
147	2019-09-09 07:00:00.303887+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["excerpt", "view_count"]}}]	19	1
148	2019-09-09 07:00:20.159723+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
149	2019-09-09 07:05:27.781839+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
150	2019-09-09 08:26:44.745676+00	3	tanesh@analyticssteps.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
151	2019-09-09 08:26:59.608144+00	5	ayush@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
152	2019-09-09 08:27:12.02632+00	6	gaurav@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
153	2019-09-09 08:27:23.168919+00	4	sheetal@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
154	2019-09-09 08:27:34.888507+00	7	richa@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
155	2019-09-09 08:27:45.288789+00	8	neelam@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
156	2019-09-09 08:29:46.538574+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
157	2019-09-09 08:37:33.483914+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[]	19	1
158	2019-09-09 10:59:49.490488+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents"]}}]	19	1
159	2019-09-09 11:00:22.385872+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
160	2019-09-09 11:00:37.333302+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[]	19	1
161	2019-09-09 11:00:51.016038+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["contents"]}}]	19	1
162	2019-09-09 11:01:03.172606+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
163	2019-09-09 11:01:17.346706+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[]	19	1
164	2019-09-09 11:02:52.348107+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
165	2019-09-09 11:30:05.28609+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
166	2019-09-09 11:33:54.263363+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
167	2019-09-09 11:35:14.281773+00	8	neelam@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
168	2019-09-09 11:58:44.465704+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents", "select_thumbnail"]}}]	19	1
169	2019-09-09 12:03:42.718566+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
170	2019-09-09 12:09:53.911389+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["is_featured"]}}]	19	1
171	2019-09-09 12:10:17.153203+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["is_featured"]}}]	19	1
172	2019-09-09 12:19:04.296475+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
173	2019-09-09 12:21:00.694204+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
174	2019-09-09 12:29:55.526236+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[]	19	1
175	2019-09-09 12:31:02.148112+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[]	19	1
176	2019-09-09 12:33:10.901999+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents"]}}]	19	1
177	2019-09-09 12:34:57.337973+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents"]}}]	19	1
178	2019-09-10 08:42:39.430588+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
179	2019-09-10 08:42:55.103299+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
180	2019-09-10 08:43:11.035778+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents"]}}]	19	1
181	2019-09-10 08:43:23.055476+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["contents"]}}]	19	1
182	2019-09-10 08:43:35.183085+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
183	2019-09-10 08:43:45.729383+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[]	19	1
184	2019-09-10 09:02:07.93806+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[{"changed": {"fields": ["description"]}}]	11	1
185	2019-09-10 10:57:05.520281+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
186	2019-09-10 10:58:00.398491+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
187	2019-09-10 11:22:54.861428+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
188	2019-09-10 11:39:54.756637+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
189	2019-09-10 11:40:30.876246+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
190	2019-09-10 11:40:51.958903+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
191	2019-09-10 11:42:57.13208+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
192	2019-09-10 11:48:36.098661+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
193	2019-09-10 11:49:09.505098+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
194	2019-09-10 11:51:02.34973+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
195	2019-09-10 11:51:41.894121+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
196	2019-09-10 12:19:08.156324+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
197	2019-09-10 13:05:42.966015+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
198	2019-09-11 04:22:05.739987+00	114	gjbn	3		18	1
199	2019-09-11 04:22:05.742002+00	113	test	3		18	1
200	2019-09-11 04:22:05.743303+00	112	test	3		18	1
201	2019-09-11 04:22:05.744587+00	111	test	3		18	1
202	2019-09-11 04:22:05.745902+00	110	Great article...	3		18	1
203	2019-09-11 04:22:05.74715+00	109	d,asmdns	3		18	1
204	2019-09-11 04:22:05.748509+00	108	nsas	3		18	1
205	2019-09-11 04:22:05.749759+00	107	dbahsgfkjsds	3		18	1
206	2019-09-11 04:22:05.750972+00	106	KKSBDJLNKSD	3		18	1
207	2019-09-11 04:22:05.752607+00	105	JKDBVSD	3		18	1
208	2019-09-11 04:22:05.753905+00	104	Hey Richa ....Ricj	3		18	1
209	2019-09-11 04:22:05.755133+00	103	Hello all	3		18	1
210	2019-09-11 04:22:05.756341+00	102	sckjsdvsd;	3		18	1
211	2019-09-11 04:22:05.757613+00	101	acnsdlv	3		18	1
212	2019-09-11 04:22:05.758834+00	100	lashkfsdv	3		18	1
213	2019-09-11 04:22:05.760347+00	99	60[ret	3		18	1
214	2019-09-11 04:22:05.761517+00	98	efwefelrghqe'rou	3		18	1
215	2019-09-11 04:22:05.762674+00	97	fgdgfdgd	3		18	1
216	2019-09-11 04:22:05.763846+00	96	hgjklhj	3		18	1
217	2019-09-11 04:22:05.766723+00	95	sjdasojcs	3		18	1
218	2019-09-11 04:22:05.767884+00	94	dwelkfewrvl	3		18	1
219	2019-09-11 04:22:05.769062+00	93	73737	3		18	1
220	2019-09-11 04:22:05.770321+00	92	test	3		18	1
221	2019-09-11 04:22:05.77183+00	91	Niraj Kumar\nVivek vikash	3		18	1
222	2019-09-11 04:22:05.773243+00	90	Who are you tester??	3		18	1
223	2019-09-11 04:22:05.774434+00	89	sd asd asd as\n DASD asd asd\n ASD asd	3		18	1
224	2019-09-11 04:22:05.775616+00	88	test	3		18	1
225	2019-09-11 04:22:05.777309+00	87	SKJCBSDVLSD\\	3		18	1
226	2019-09-11 04:22:05.778529+00	86	dasd asd as\nsadasdaSD\nASD\nASDA\nSD\nASD\nAS\nD	3		18	1
227	2019-09-11 04:22:05.779732+00	85	slfskdhgvorls	3		18	1
228	2019-09-11 04:22:05.781027+00	84	sdf sd sd sdf	3		18	1
229	2019-09-11 04:22:05.782266+00	83	sad asda	3		18	1
230	2019-09-11 04:22:05.783408+00	82	sada sdasdasd a	3		18	1
231	2019-09-11 04:22:05.786884+00	81	dasdf	3		18	1
232	2019-09-11 04:22:05.788308+00	80	das\nsdsdasd	3		18	1
233	2019-09-11 04:22:05.789548+00	79	adasd ad	3		18	1
234	2019-09-11 04:22:05.790745+00	78	sad asd asd	3		18	1
235	2019-09-11 04:22:05.791934+00	77	\\\\	3		18	1
236	2019-09-11 04:22:05.793103+00	76	,Y.ITUPO	3		18	1
237	2019-09-11 04:22:05.794267+00	75	,masnfcsd.m/vdbfbngfmklnlsbksA;k;SL'D	3		18	1
238	2019-09-11 04:22:05.795478+00	74	asohlsdbkj;ldf	3		18	1
239	2019-09-11 04:22:05.796641+00	73	fdgdfg	3		18	1
240	2019-09-11 04:22:05.797778+00	72	sgfdgfdgfd	3		18	1
241	2019-09-11 04:22:05.798923+00	71	ggfdgfdg	3		18	1
242	2019-09-11 04:22:05.800052+00	70	fggffdgfdgfdgfdg	3		18	1
243	2019-09-11 04:22:05.801335+00	69	dsadasdasd	3		18	1
244	2019-09-11 04:22:05.804649+00	68	kjshdvklsdfbd	3		18	1
245	2019-09-11 04:22:05.80595+00	67	jkhascsdklv	3		18	1
246	2019-09-11 04:22:05.807119+00	66	kjscshdljvksd	3		18	1
247	2019-09-11 04:22:05.808247+00	65	f,sdmnvsd;klv;df	3		18	1
248	2019-09-11 04:22:05.809455+00	64	asjcmbsdjovlksd;	3		18	1
249	2019-09-11 04:22:05.81071+00	63	ascbsdvnlds,s	3		18	1
250	2019-09-11 04:22:05.811873+00	62	hsdlkvjsdl;vkdfbdfbdf;bdfkmlva	3		18	1
251	2019-09-11 04:22:05.813111+00	61	hkasdjcksd	3		18	1
252	2019-09-11 04:22:05.814355+00	60	dwe	3		18	1
253	2019-09-11 04:22:05.815836+00	59	xdw/qdw	3		18	1
254	2019-09-11 04:22:05.817018+00	58	\\\\\\	3		18	1
255	2019-09-11 04:22:05.818208+00	57	;lfsdv['df;,fgF>B V	3		18	1
256	2019-09-11 04:22:05.819409+00	56	hsdgfbsjdlkv;dfm';b	3		18	1
257	2019-09-11 04:22:05.82068+00	55	lkahfsoehifsdgeirsg	3		18	1
258	2019-09-11 04:22:05.821939+00	54	sacsadcs	3		18	1
259	2019-09-11 04:22:05.823128+00	53	cbjaskvjdsl	3		18	1
260	2019-09-11 04:22:05.824304+00	52	dsjcsdvkljsfvfs	3		18	1
261	2019-09-11 04:22:05.825478+00	51	lvksdhknvlsdf;ak'b;nrwtk\\	3		18	1
262	2019-09-11 04:22:05.826713+00	50	jkschsdovlds	3		18	1
263	2019-09-11 04:22:05.82796+00	49	shacshlalca	3		18	1
264	2019-09-11 04:22:05.829118+00	48	estsigsisyyosyos	3		18	1
265	2019-09-11 04:22:05.830397+00	47	testhttps://www.screencast.com/t/lRbF15zHhttps://www.screencast.com/t/lRbF15zHhttps://www.screencast.com/t/lRbF15zHhttps://www.screencast.com/t/lRbF15zHhttps://www.screencast.com/t/lRbF15zHhttps://www	3		18	1
266	2019-09-11 04:22:05.831636+00	46	Pintu hi this is meudfnldfs  dsd;l' f	3		18	1
267	2019-09-11 04:22:05.832872+00	45	f	3		18	1
268	2019-09-11 04:22:05.83411+00	44	kk fjsdf jds; fjsd; fds	3		18	1
269	2019-09-11 04:22:05.835284+00	43	Jajakakkakakaloalakalalksksnjsjajsksjskkwakkw	3		18	1
270	2019-09-11 04:22:05.836469+00	42	Gshdjdjsn	3		18	1
271	2019-09-11 04:22:05.837783+00	41	Relen she dbbdhdbdh dheh hehehhe dhdhjdjdTestbbRelen she dbbdhdbdh dheh hehehhe dhdhjdjddbbRelen she dbbdhdbdh dheh hehehhe dhdhjdjdRelen she dbbdhdbdh dheh hehehhe dhdhjdjdRelen she dbbdhdbdh dheh he	3		18	1
272	2019-09-11 04:22:05.839116+00	40	Test	3		18	1
273	2019-09-11 04:22:05.840375+00	39	Hello, This is really amazing!!	3		18	1
274	2019-09-11 04:22:05.841589+00	38	Vtvt	3		18	1
275	2019-09-11 04:22:05.84275+00	37	wej,fncwe	3		18	1
276	2019-09-11 04:22:05.843907+00	36	wdjwebwl	3		18	1
277	2019-09-11 04:22:05.8451+00	35	wdjwebwl	3		18	1
278	2019-09-11 04:22:05.846255+00	34	Hldjnskalj	3		18	1
279	2019-09-11 04:22:05.84736+00	33	asdsd	3		18	1
280	2019-09-11 04:22:05.848587+00	32	Hey	3		18	1
281	2019-09-11 04:22:05.850459+00	31	hfghfhf	3		18	1
282	2019-09-11 04:22:05.851665+00	30	fsd fsdf	3		18	1
283	2019-09-11 04:22:05.85286+00	29	dfsd	3		18	1
284	2019-09-11 04:22:05.854029+00	28	as	3		18	1
285	2019-09-11 04:22:05.855284+00	27	asdas	3		18	1
286	2019-09-11 04:22:05.856457+00	26	da sfdasdasd.	3		18	1
287	2019-09-11 04:22:05.857609+00	25	sadas	3		18	1
288	2019-09-11 04:22:05.858795+00	24	gdfgd	3		18	1
289	2019-09-11 04:22:05.860053+00	23	Like	3		18	1
290	2019-09-11 04:22:05.861248+00	22	Like	3		18	1
291	2019-09-11 04:22:05.862353+00	21	gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg	3		18	1
292	2019-09-11 04:22:05.863628+00	20	Hey great article..!!!	3		18	1
293	2019-09-11 04:22:05.864835+00	19	vhg	3		18	1
294	2019-09-11 04:22:05.866043+00	18	yes	3		18	1
295	2019-09-11 04:22:05.867202+00	17	nice	3		18	1
296	2019-09-11 04:22:05.868432+00	16	jjj	3		18	1
297	2019-09-11 04:22:05.869592+00	15	fhfghfg	3		18	1
298	2019-09-11 04:24:55.659031+00	14	fssdf	3		18	1
299	2019-09-11 04:24:55.661357+00	13	This blog is amazing..!!	3		18	1
300	2019-09-11 04:24:55.662591+00	12	Hey there..!	3		18	1
301	2019-09-11 04:24:55.663944+00	11	Hey	3		18	1
302	2019-09-11 04:24:55.665406+00	10	Nice	3		18	1
303	2019-09-11 04:24:55.666804+00	9	Yeahhh	3		18	1
304	2019-09-11 04:24:55.668318+00	8	vbvbv	3		18	1
305	2019-09-11 04:24:55.6696+00	7	Hsbshbd	3		18	1
306	2019-09-11 04:24:55.67092+00	6	Hello	3		18	1
307	2019-09-11 04:24:55.672176+00	5	OOOHHHH	3		18	1
308	2019-09-11 04:24:55.673366+00	4	Yeaahhh	3		18	1
309	2019-09-11 04:24:55.67458+00	3	Ohhooo!!	3		18	1
310	2019-09-11 04:24:55.675816+00	2	Hii there..!!	3		18	1
311	2019-09-11 04:24:55.677131+00	1	Hello all	3		18	1
312	2019-09-11 10:25:20.815925+00	4	tanesh	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
313	2019-09-11 10:25:39.949138+00	5	sheetal	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
314	2019-09-11 10:25:58.312313+00	6	ayush	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
315	2019-09-11 10:26:09.290979+00	8	richa	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
316	2019-09-11 10:26:46.730323+00	7	gaurav	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
317	2019-09-11 10:29:59.93175+00	21	Neelam	2	[{"changed": {"fields": ["updated_on", "select_profile_pic"]}}]	9	1
318	2019-09-11 10:30:22.431177+00	9	neelam	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
319	2019-09-11 10:47:57.572537+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[]	11	1
320	2019-09-11 10:48:52.707826+00	1	Police in China will use AI face recognition to identify “lost” elderly	2	[{"changed": {"fields": ["published_on"]}}]	11	1
321	2019-09-11 10:49:27.704511+00	2	How coca-cola is using AI to stay at the top of soft drinks market	2	[{"changed": {"fields": ["published_on"]}}]	11	1
322	2019-09-11 10:49:55.577829+00	3	How to engineer a self driving Car	2	[{"changed": {"fields": ["published_on"]}}]	11	1
323	2019-09-11 10:50:28.730068+00	4	Google’s lung cancer AI: a promising tool that needs further validation	2	[{"changed": {"fields": ["published_on"]}}]	11	1
324	2019-09-11 10:51:40.736711+00	6	What is Data streaming? A Data architect’s guide	2	[{"changed": {"fields": ["published_on"]}}]	11	1
325	2019-09-11 10:52:00.546117+00	7	India among top 20 countries in artificial intelligence readiness ranking	2	[{"changed": {"fields": ["published_on"]}}]	11	1
326	2019-09-11 10:52:26.840532+00	8	Alphabet’s AI Might be able to Predict Kidney Disease	2	[{"changed": {"fields": ["published_on"]}}]	11	1
327	2019-09-11 10:52:35.600769+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[{"changed": {"fields": ["published_on"]}}]	11	1
328	2019-09-11 10:56:17.828599+00	5	3 Fundamentals for supercharging your Data Strategy	2	[{"changed": {"fields": ["published_on"]}}]	11	1
439	2019-09-14 03:19:35.430643+00	161	gos	3		18	1
329	2019-09-11 12:04:10.143793+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["excerpt", "view_count"]}}]	19	1
330	2019-09-11 12:24:53.795291+00	41	singhsandeepsln@gmail.com	3		9	1
331	2019-09-11 12:24:53.797392+00	22	Sandy	3		9	1
332	2019-09-11 12:24:53.798705+00	12	sandeep.singh@codeflowtech.com	3		9	1
333	2019-09-11 12:27:07.811974+00	46	sandeep.singh@codeflowtech.com	3		9	1
334	2019-09-11 15:51:25.019865+00	125	jkhk h h h h h\nkljl	3		18	1
335	2019-09-11 15:51:25.022085+00	124	jkh kjh	3		18	1
336	2019-09-11 15:51:25.023381+00	123	klkl	3		18	1
337	2019-09-11 15:51:25.024684+00	122	klkl	3		18	1
338	2019-09-11 15:51:25.025948+00	121	tetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoue	3		18	1
339	2019-09-11 15:51:25.027276+00	120	tetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoueoieoiepiepeipeieitetststyyeeoue	3		18	1
340	2019-09-11 15:51:25.028561+00	119	awesome	3		18	1
341	2019-09-11 15:51:25.029927+00	118	Great Blog..	3		18	1
342	2019-09-11 15:51:25.031262+00	117	test	3		18	1
343	2019-09-11 15:51:25.032537+00	116	manual test	3		18	1
344	2019-09-11 15:51:25.033848+00	115	test	3		18	1
345	2019-09-12 05:16:25.360622+00	4	tanesh	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
346	2019-09-12 05:16:38.854662+00	8	richa	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
347	2019-09-12 05:17:00.640867+00	9	neelam	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
348	2019-09-12 05:19:39.578066+00	5	sheetal	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
349	2019-09-12 05:21:03.864439+00	7	gaurav	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
350	2019-09-12 05:27:35.173941+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
351	2019-09-12 05:40:26.76007+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
352	2019-09-12 05:41:17.263465+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
353	2019-09-12 05:41:49.209719+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
354	2019-09-12 05:43:02.973921+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
355	2019-09-12 05:44:24.838958+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
356	2019-09-12 10:42:20.749921+00	10	Neural Network Using Keras Functional API: Overview, Structure, Applications	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
357	2019-09-12 11:28:53.647698+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
358	2019-09-12 11:29:14.072887+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
359	2019-09-12 11:29:25.257858+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
360	2019-09-12 11:29:34.188368+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
361	2019-09-12 11:29:46.071694+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
362	2019-09-12 11:29:59.062447+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
363	2019-09-12 11:30:11.789039+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
364	2019-09-12 11:30:29.206294+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
365	2019-09-12 11:30:41.939531+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
366	2019-09-13 04:55:10.473566+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
367	2019-09-13 04:58:46.485183+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
368	2019-09-13 04:59:24.106589+00	6	Difference Between Business Intelligence, Data Science and Machine Learning	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
369	2019-09-13 05:00:29.357754+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
370	2019-09-13 05:01:12.931174+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
371	2019-09-13 05:01:47.905755+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
372	2019-09-13 05:02:44.446295+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["view_count", "select_thumbnail"]}}]	19	1
373	2019-09-13 05:03:25.666537+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["view_count", "select_thumbnail"]}}]	19	1
374	2019-09-13 05:04:59.719159+00	8	Tableau: Features And its Usage	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
375	2019-09-13 05:07:15.57565+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
376	2019-09-13 05:08:25.353598+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
377	2019-09-13 05:54:04.873075+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
378	2019-09-13 05:57:50.66232+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
379	2019-09-13 05:59:24.570309+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
380	2019-09-13 06:17:45.792604+00	40	dinesh.kumawat@codeflowtech.com	3		12	1
381	2019-09-13 06:17:45.794924+00	4	dinesh@analyticssteps.com	3		12	1
382	2019-09-13 06:40:48.410381+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
383	2019-09-13 06:41:45.08498+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
384	2019-09-13 06:52:16.158789+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
440	2019-09-14 03:19:35.431904+00	160	gos	3		18	1
385	2019-09-13 06:52:25.567858+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
386	2019-09-13 08:44:30.949492+00	2	vivek.vikash@codeflowtech.com	3		9	1
387	2019-09-13 09:46:09.203044+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
388	2019-09-13 09:52:02.32852+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
389	2019-09-13 09:54:01.335931+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
390	2019-09-13 09:55:28.106381+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
391	2019-09-13 09:59:28.387425+00	57	rahul gupta	2	[{"changed": {"fields": ["is_author", "is_email_verified", "is_mobile_verified", "updated_on"]}}]	9	1
392	2019-09-13 10:00:59.515258+00	131	rahul.gupta@codeflowtech.com	2	[{"changed": {"fields": ["biography", "linkedin_link"]}}]	8	1
393	2019-09-13 10:01:36.869332+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["created_by"]}}]	19	1
394	2019-09-13 10:03:05.700484+00	57	rahul gupta	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
395	2019-09-13 10:11:25.242532+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
396	2019-09-13 10:32:17.423379+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["created_by"]}}]	19	1
397	2019-09-13 11:22:27.010972+00	54	vivek.vikash@codeflowtech.com	3		9	1
398	2019-09-13 11:57:32.789009+00	5	DEEP LEARNING	1	[{"added": {}}]	10	1
399	2019-09-13 11:58:40.194894+00	10	An optimistic view of Deep Fakes	1	[{"added": {}}]	11	1
400	2019-09-13 11:59:46.401108+00	11	AI app identifies rare genetic disorders from photos of patient faces.	1	[{"added": {}}]	11	1
401	2019-09-13 12:01:11.740262+00	12	State of AI: Artificial Intelligence, the Military and Increasingly Autonomous Weapons	1	[{"added": {}}]	11	1
402	2019-09-13 12:01:18.441985+00	12	State of AI: Artificial Intelligence, the Military and Increasingly Autonomous Weapons	2	[]	11	1
403	2019-09-13 12:02:00.732528+00	11	AI app identifies rare genetic disorders from photos of patient faces.	2	[{"changed": {"fields": ["url"]}}]	11	1
404	2019-09-13 12:02:13.149091+00	10	An optimistic view of Deep Fakes	2	[{"changed": {"fields": ["url"]}}]	11	1
405	2019-09-14 03:19:35.385236+00	195	test	3		18	1
406	2019-09-14 03:19:35.387491+00	194	test	3		18	1
407	2019-09-14 03:19:35.388849+00	193	kdjascla	3		18	1
408	2019-09-14 03:19:35.390187+00	192	tetee	3		18	1
409	2019-09-14 03:19:35.391866+00	191	epepe	3		18	1
410	2019-09-14 03:19:35.393271+00	190	7e770	3		18	1
411	2019-09-14 03:19:35.394587+00	189	kljhjh	3		18	1
412	2019-09-14 03:19:35.395878+00	188	hhjhjhj	3		18	1
413	2019-09-14 03:19:35.397077+00	187	Yoho	3		18	1
414	2019-09-14 03:19:35.398274+00	186	Able to like multiple times without heart getting filled.	3		18	1
415	2019-09-14 03:19:35.399496+00	185	https://analyticssteps.com/backend/media/user-profile/5876225/ayush.jpg	3		18	1
416	2019-09-14 03:19:35.40079+00	184	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
417	2019-09-14 03:19:35.402222+00	183	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
418	2019-09-14 03:19:35.403467+00	182	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
419	2019-09-14 03:19:35.404819+00	181	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
420	2019-09-14 03:19:35.406037+00	180	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
421	2019-09-14 03:19:35.407286+00	179	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
422	2019-09-14 03:19:35.408451+00	178	ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte 	3		18	1
423	2019-09-14 03:19:35.409765+00	177	ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte 	3		18	1
424	2019-09-14 03:19:35.411313+00	176	ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte ttwttwtwtwtwtwttwte 	3		18	1
425	2019-09-14 03:19:35.412522+00	175	tetststs	3		18	1
426	2019-09-14 03:19:35.413903+00	174	f	3		18	1
427	2019-09-14 03:19:35.415153+00	173	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
428	2019-09-14 03:19:35.416581+00	172	dddddd	3		18	1
429	2019-09-14 03:19:35.417791+00	171	0000000000	3		18	1
430	2019-09-14 03:19:35.418978+00	170	https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document	3		18	1
431	2019-09-14 03:19:35.420233+00	169	testibg new requirement.https://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://docs.google.com/document/d/1ozxwRDN1J4lLB9_CowYGGLcoLMjbBrY0NZ2_hcd2IaI/edithttps://	3		18	1
432	2019-09-14 03:19:35.421449+00	168	k'l\\	3		18	1
433	2019-09-14 03:19:35.422622+00	167	oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo	3		18	1
434	2019-09-14 03:19:35.423884+00	166	oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo	3		18	1
435	2019-09-14 03:19:35.425093+00	165	oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo	3		18	1
436	2019-09-14 03:19:35.426385+00	164	hhh]	3		18	1
441	2019-09-14 03:19:35.433148+00	159	so	3		18	1
442	2019-09-14 03:19:35.434828+00	158	gs	3		18	1
443	2019-09-14 03:19:35.436057+00	157	gs	3		18	1
444	2019-09-14 03:19:35.437298+00	156	s	3		18	1
445	2019-09-14 03:19:35.438578+00	155	os	3		18	1
446	2019-09-14 03:19:35.439853+00	154	o	3		18	1
447	2019-09-14 03:19:35.441047+00	153	ov	3		18	1
448	2019-09-14 03:19:35.442255+00	152	oww	3		18	1
449	2019-09-14 03:19:35.443489+00	151	owow	3		18	1
450	2019-09-14 03:19:35.444823+00	150	wow	3		18	1
451	2019-09-14 03:19:35.446017+00	149	o	3		18	1
452	2019-09-14 03:19:35.447314+00	148	wo	3		18	1
453	2019-09-14 03:19:35.448589+00	147	wowo	3		18	1
454	2019-09-14 03:19:35.449923+00	146	w	3		18	1
455	2019-09-14 03:19:35.451212+00	145	owowowow	3		18	1
456	2019-09-14 03:19:35.452421+00	144	ow	3		18	1
457	2019-09-14 03:19:35.453658+00	143	ow	3		18	1
458	2019-09-14 03:19:35.454931+00	142	wow	3		18	1
459	2019-09-14 03:19:35.456179+00	141	kwwpwWPWWPPPW	3		18	1
460	2019-09-14 03:19:35.45736+00	140	kdkdkd	3		18	1
461	2019-09-14 03:19:35.458563+00	139	kdk	3		18	1
462	2019-09-14 03:19:35.459781+00	138	k	3		18	1
463	2019-09-14 03:19:35.461023+00	137	kd	3		18	1
464	2019-09-14 03:19:35.462287+00	136	kd	3		18	1
465	2019-09-14 03:19:35.463522+00	135	dk	3		18	1
466	2019-09-14 03:19:35.464845+00	134	kkd	3		18	1
467	2019-09-14 03:19:35.466119+00	133	Manual	3		18	1
468	2019-09-14 03:19:35.46748+00	132	Manual	3		18	1
469	2019-09-14 03:19:35.468918+00	131	test	3		18	1
470	2019-09-14 03:19:35.470179+00	130	test	3		18	1
471	2019-09-14 03:19:35.471491+00	129	test	3		18	1
472	2019-09-14 03:19:35.472769+00	128	test	3		18	1
473	2019-09-14 03:19:35.474001+00	127	test	3		18	1
474	2019-09-14 03:19:35.475387+00	126	Amazing blog..	3		18	1
475	2019-09-14 07:10:21.307287+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["title", "excerpt", "contents", "meta_description", "meta_keywords", "view_count"]}}]	19	1
476	2019-09-14 07:13:54.268605+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["excerpt", "contents", "meta_description"]}}]	19	1
477	2019-09-14 07:17:10.522564+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
478	2019-09-14 07:22:56.527869+00	3	tanesh@analyticssteps.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
479	2019-09-16 04:39:52.638349+00	5	Deep Learning	2	[{"changed": {"fields": ["name"]}}]	10	1
480	2019-09-16 04:40:11.095014+00	3	Machine learning	2	[{"changed": {"fields": ["name"]}}]	10	1
481	2019-09-16 05:07:43.371039+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
482	2019-09-17 05:11:24.973779+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
483	2019-09-17 05:13:06.819959+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
484	2019-09-17 05:14:12.898337+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
485	2019-09-17 05:17:01.159418+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
486	2019-09-17 05:18:04.790436+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
487	2019-09-17 05:24:52.919515+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
488	2019-09-17 05:26:57.704082+00	204	klfgd gdf	3		18	1
489	2019-09-17 05:26:57.706343+00	203	das dasd\nSAdas	3		18	1
490	2019-09-17 05:26:57.707808+00	202	sadas	3		18	1
491	2019-09-17 05:26:57.709132+00	201	ddddddddddddddd	3		18	1
492	2019-09-17 05:26:57.710575+00	200	teststss	3		18	1
493	2019-09-17 05:26:57.711984+00	199	teststsltlt	3		18	1
494	2019-09-17 05:26:57.713228+00	198	Testing new.	3		18	1
495	2019-09-17 05:26:57.714538+00	197	test	3		18	1
496	2019-09-17 05:26:57.715863+00	196	Test	3		18	1
497	2019-09-17 05:29:37.884618+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
498	2019-09-17 05:55:54.033162+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
499	2019-09-17 05:58:46.571236+00	3	tanesh@analyticssteps.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
500	2019-09-17 06:10:41.001827+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
501	2019-09-17 06:13:35.218692+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
502	2019-09-17 06:17:20.939219+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
503	2019-09-17 06:20:02.36215+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
504	2019-09-17 06:21:25.314228+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
505	2019-09-17 06:24:08.482662+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
506	2019-09-17 09:56:21.541659+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[]	19	1
507	2019-09-17 10:00:26.058613+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
508	2019-09-17 10:01:38.019426+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
509	2019-09-17 10:50:14.209112+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
510	2019-09-17 10:51:28.111823+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[]	19	1
511	2019-09-17 11:01:21.057705+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[]	19	1
560	2019-09-18 10:32:45.202284+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
512	2019-09-17 11:04:41.326339+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["excerpt", "meta_description", "view_count"]}}]	19	1
513	2019-09-17 11:22:53.390706+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["excerpt", "contents", "meta_description"]}}]	19	1
514	2019-09-17 11:23:57.608153+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
515	2019-09-17 11:28:21.770052+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[]	19	1
516	2019-09-17 11:43:21.904402+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
517	2019-09-17 11:44:40.401665+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents", "created_by"]}}]	19	1
518	2019-09-17 11:45:29.996615+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
519	2019-09-17 11:46:15.687429+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
520	2019-09-17 11:49:28.321375+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
521	2019-09-17 12:07:11.039474+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
522	2019-09-17 12:26:17.046838+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["excerpt", "contents", "meta_description", "meta_keywords", "view_count"]}}]	19	1
523	2019-09-17 12:43:54.402037+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[]	19	1
524	2019-09-17 12:50:11.700339+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
525	2019-09-18 05:26:47.04845+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords", "view_count"]}}]	19	1
526	2019-09-18 05:41:08.294035+00	3	Understanding Principal Component Analysis (PCA)	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords"]}}]	19	1
527	2019-09-18 05:55:23.492576+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords", "view_count"]}}]	19	1
528	2019-09-18 06:13:03.753768+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords", "view_count"]}}]	19	1
529	2019-09-18 06:25:59.610193+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords"]}}]	19	1
530	2019-09-18 06:27:10.851634+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
531	2019-09-18 06:50:16.025866+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["title", "contents", "meta_description", "meta_keywords"]}}]	19	1
532	2019-09-18 06:50:42.007135+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[]	19	1
533	2019-09-18 06:56:05.655923+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords"]}}]	19	1
534	2019-09-18 07:04:57.98581+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["title", "contents"]}}]	19	1
535	2019-09-18 07:06:13.812961+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents"]}}]	19	1
536	2019-09-18 07:07:13.546623+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents"]}}]	19	1
537	2019-09-18 07:09:07.456604+00	212	tests	3		18	1
538	2019-09-18 07:09:07.458664+00	211	e	3		18	1
539	2019-09-18 07:09:07.459934+00	210	e	3		18	1
540	2019-09-18 07:09:07.461228+00	209	ee	3		18	1
541	2019-09-18 07:09:07.462685+00	208	e	3		18	1
542	2019-09-18 07:09:07.463965+00	207	e	3		18	1
543	2019-09-18 07:09:07.465286+00	206	e	3		18	1
544	2019-09-18 07:09:07.466549+00	205	testststetsts	3		18	1
545	2019-09-18 08:25:27.254205+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords"]}}]	19	1
546	2019-09-18 08:31:35.127334+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords", "view_count"]}}]	19	1
547	2019-09-18 08:36:25.482446+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
548	2019-09-18 08:45:25.974529+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents", "meta_description", "meta_keywords"]}}]	19	1
549	2019-09-18 10:00:10.430247+00	3	tanesh@analyticssteps.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
550	2019-09-18 10:04:02.082148+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
551	2019-09-18 10:04:39.812617+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["view_count"]}}]	19	1
552	2019-09-18 10:05:02.810974+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
553	2019-09-18 10:05:31.827706+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
554	2019-09-18 10:06:40.770792+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
555	2019-09-18 10:08:16.379346+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
556	2019-09-18 10:08:46.853067+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
557	2019-09-18 10:09:13.037157+00	11	Bag of Words in NLP: Overview with Code Explanation in Python	2	[{"changed": {"fields": ["view_count"]}}]	19	1
558	2019-09-18 10:10:28.619425+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
559	2019-09-18 10:30:32.646062+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["view_count"]}}]	19	1
561	2019-09-18 10:33:22.271357+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
562	2019-09-18 10:47:55.275458+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["view_count"]}}]	19	1
563	2019-09-18 10:50:48.726374+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
564	2019-09-18 10:51:34.300146+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["title"]}}]	19	1
565	2019-09-18 10:55:52.521878+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
566	2019-09-18 10:56:28.003016+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["contents"]}}]	19	1
567	2019-09-18 10:58:17.945886+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
568	2019-09-18 11:00:19.895332+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["contents"]}}]	19	1
569	2019-09-18 11:00:58.136719+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["view_count"]}}]	19	1
570	2019-09-18 11:01:32.322189+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["title"]}}]	19	1
571	2019-09-18 11:02:46.263677+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["view_count"]}}]	19	1
572	2019-09-18 11:05:27.384488+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["contents"]}}]	19	1
573	2019-09-18 11:05:34.219975+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[]	19	1
574	2019-09-18 11:06:55.851301+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	1	[{"added": {}}]	19	1
575	2019-09-18 11:07:29.557398+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
576	2019-09-18 11:09:53.026907+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
577	2019-09-18 11:13:49.416424+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
578	2019-09-18 11:18:53.22393+00	7	richa@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
579	2019-09-18 11:26:32.150629+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["contents", "meta_title", "view_count"]}}]	19	1
580	2019-09-18 11:27:45.187806+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
581	2019-09-18 11:30:32.595069+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
582	2019-09-18 11:32:52.5355+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["meta_title", "view_count"]}}]	19	1
583	2019-09-18 11:39:24.454758+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["select_thumbnail"]}}]	19	1
584	2019-09-18 11:43:19.561312+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
585	2019-09-18 11:44:51.67648+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
586	2019-09-18 12:05:06.352983+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[]	19	1
587	2019-09-18 12:05:20.670201+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["view_count"]}}]	19	1
588	2019-09-18 12:05:20.913311+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
589	2019-09-18 12:05:33.07057+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
590	2019-09-18 12:08:11.609414+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["slug", "meta_title", "meta_description"]}}]	19	1
591	2019-09-18 12:08:58.113463+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["meta_title", "meta_description", "view_count"]}}]	19	1
592	2019-09-18 12:10:29.916283+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["slug", "meta_title"]}}]	19	1
593	2019-09-18 12:10:45.93531+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
594	2019-09-18 12:12:34.900691+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["slug", "meta_title"]}}]	19	1
595	2019-09-18 12:12:56.569018+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
596	2019-09-18 12:14:32.61557+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["slug", "meta_title"]}}]	19	1
597	2019-09-18 12:14:49.481625+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
598	2019-09-18 12:15:05.884053+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
599	2019-09-18 12:20:30.69227+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
600	2019-09-18 12:24:21.841268+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
601	2019-09-19 04:48:52.494349+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
602	2019-09-19 04:50:55.949533+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
603	2019-09-19 04:51:14.664345+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
604	2019-09-19 04:51:35.262069+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
721	2019-09-21 13:00:08.251043+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[]	19	1
605	2019-09-19 04:54:29.090301+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["view_count"]}}]	19	1
606	2019-09-19 05:11:48.104614+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
607	2019-09-19 05:32:43.839794+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
608	2019-09-19 05:33:15.309195+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
609	2019-09-19 05:39:44.893212+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
610	2019-09-19 05:42:35.153319+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
611	2019-09-19 05:44:05.301046+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
612	2019-09-19 05:48:46.140977+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
613	2019-09-19 05:56:30.069958+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["contents"]}}]	19	1
614	2019-09-19 05:57:01.842734+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
615	2019-09-19 06:01:12.610236+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
616	2019-09-19 06:06:43.424402+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
617	2019-09-19 06:09:49.59308+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
618	2019-09-19 06:27:14.733721+00	2	Real-World Applications of Business Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
619	2019-09-19 06:32:04.248846+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["contents"]}}]	19	1
620	2019-09-19 06:34:49.358795+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents"]}}]	19	1
621	2019-09-19 06:37:04.750988+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
622	2019-09-19 06:41:53.817227+00	6	Detailed classification of Data Science, Machine Learning, and Business Intelligence	2	[{"changed": {"fields": ["contents"]}}]	19	1
623	2019-09-19 06:45:35.159938+00	8	Why is Tableau used for? Read the working and key features of Tableau	2	[{"changed": {"fields": ["contents"]}}]	19	1
624	2019-09-19 06:47:01.948688+00	9	7 Types of Activation Functions in Neural Network	2	[{"changed": {"fields": ["contents"]}}]	19	1
625	2019-09-19 06:50:49.378751+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
626	2019-09-19 07:14:51.768822+00	11	An Optimum Approach Towards the Bag of Words with Code Illustration in Python	2	[{"changed": {"fields": ["contents", "meta_keywords", "view_count"]}}]	19	1
627	2019-09-19 08:29:09.466034+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	1	[{"added": {}}]	11	1
628	2019-09-19 08:30:01.848724+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	2	[{"changed": {"fields": ["description"]}}]	11	1
629	2019-09-19 08:30:18.468918+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	2	[]	11	1
630	2019-09-19 10:25:45.352656+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	2	[{"changed": {"fields": ["status"]}}]	11	1
631	2019-09-19 10:27:24.803714+00	3	How to engineer a self driving Car	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
632	2019-09-19 10:27:57.84052+00	10	An optimistic view of Deep Fakes	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
633	2019-09-19 10:29:59.080873+00	9	dinesh@analyticssteps.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
634	2019-09-19 11:51:27.194055+00	239	e	3		18	1
635	2019-09-19 11:51:27.196512+00	238	e	3		18	1
636	2019-09-19 11:51:27.197844+00	237	e	3		18	1
637	2019-09-19 11:51:27.199175+00	236	e	3		18	1
638	2019-09-19 11:51:27.200389+00	235	e	3		18	1
639	2019-09-19 11:51:27.201579+00	234	e	3		18	1
640	2019-09-19 11:51:27.202986+00	233	e	3		18	1
641	2019-09-19 11:51:27.204332+00	232	e	3		18	1
642	2019-09-19 11:51:27.205494+00	231	e	3		18	1
643	2019-09-19 11:51:27.206631+00	230	e	3		18	1
644	2019-09-19 11:51:27.207848+00	229	e	3		18	1
645	2019-09-19 11:51:27.209022+00	228	e	3		18	1
646	2019-09-19 11:51:27.21015+00	227	e	3		18	1
647	2019-09-19 11:51:27.211388+00	226	e	3		18	1
648	2019-09-19 11:51:27.212587+00	225	e	3		18	1
649	2019-09-19 11:51:27.213784+00	224	e	3		18	1
650	2019-09-19 11:51:27.214913+00	223	e	3		18	1
651	2019-09-19 11:51:27.216153+00	222	e	3		18	1
652	2019-09-19 11:51:27.217306+00	221	e	3		18	1
653	2019-09-19 11:51:27.218605+00	220	e	3		18	1
654	2019-09-19 11:51:27.219874+00	219	e	3		18	1
655	2019-09-19 11:51:27.22111+00	218	e	3		18	1
656	2019-09-19 11:51:27.222286+00	217	e	3		18	1
657	2019-09-19 11:51:27.223468+00	216	test	3		18	1
658	2019-09-19 11:51:27.22485+00	215	test	3		18	1
659	2019-09-19 11:51:27.226101+00	214	testet tet stet st eet e	3		18	1
660	2019-09-19 11:51:27.227307+00	213	sdadhjsahdjada	3		18	1
661	2019-09-19 11:53:28.073163+00	7	richa@yopmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
662	2019-09-19 11:55:31.630524+00	13	Why does Big Data Analytics in trends? Advantages, Application, and Challenges in Big Data	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
663	2019-09-19 11:56:18.232823+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
664	2019-09-19 11:56:57.85414+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[]	19	1
665	2019-09-19 11:57:46.275637+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
666	2019-09-19 11:58:15.92293+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
667	2019-09-19 11:58:52.353935+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
668	2019-09-19 11:59:17.97296+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
669	2019-09-19 11:59:43.171592+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
670	2019-09-19 12:00:46.341877+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents"]}}]	19	1
671	2019-09-19 12:01:28.372727+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
672	2019-09-19 12:02:16.582282+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[]	19	1
673	2019-09-19 12:03:04.879775+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
674	2019-09-19 12:04:33.655465+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents"]}}]	19	1
675	2019-09-19 12:06:31.000979+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["slug"]}}]	19	1
676	2019-09-19 12:08:07.634783+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["view_count"]}}]	19	1
677	2019-09-19 12:10:09.122324+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
678	2019-09-19 12:11:14.774735+00	4	5 Ways Machine Learning Impacts Your Everyday Life?	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
679	2019-09-19 12:19:19.253722+00	3	Implementing Variance and Normalization under Principal Component Analysis with Python code	2	[{"changed": {"fields": ["contents"]}}]	19	1
680	2019-09-19 12:22:01.374438+00	1	Introduction to Machine Learning: Supervised and Unsupervised Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
681	2019-09-19 12:31:42.309686+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	2	[{"changed": {"fields": ["is_active", "published_on"]}}]	11	1
682	2019-09-19 12:31:52.990115+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	2	[{"changed": {"fields": ["is_active", "status"]}}]	11	1
683	2019-09-19 12:34:00.652763+00	14	Key to success in data science: Domain expertise	1	[{"added": {}}]	11	1
684	2019-09-19 12:34:48.13804+00	14	Key to success in data science: Domain expertise	2	[{"changed": {"fields": ["is_active", "status"]}}]	11	1
685	2019-09-19 12:54:06.520722+00	13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	2	[{"changed": {"fields": ["is_active", "status"]}}]	11	1
686	2019-09-20 04:24:17.605888+00	12	State of AI: Artificial Intelligence, the Military and Increasingly Autonomous Weapons	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
687	2019-09-20 04:24:48.826875+00	2	How coca-cola is using AI to stay at the top of soft drinks market	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
688	2019-09-20 05:56:41.820826+00	10	Neural Network Using Keras Functional API : Overview, Structure, and it's Applications	2	[{"changed": {"fields": ["meta_title"]}}]	19	1
689	2019-09-20 07:23:32.249156+00	1	Sayantini	2	[{"changed": {"fields": ["rating"]}}]	23	1
690	2019-09-20 07:23:47.754697+00	8	Deepika	2	[{"changed": {"fields": ["rating"]}}]	23	1
691	2019-09-20 07:24:20.192615+00	10	Udit Bhan	2	[{"changed": {"fields": ["rating"]}}]	23	1
692	2019-09-20 07:24:27.347655+00	7	Amrendra Kumar	2	[{"changed": {"fields": ["rating"]}}]	23	1
693	2019-09-20 07:24:34.752362+00	4	Vilochana Maheshwari	2	[{"changed": {"fields": ["rating"]}}]	23	1
694	2019-09-20 08:57:28.528234+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	1	[{"added": {}}]	19	1
695	2019-09-20 09:00:24.716567+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["contents"]}}]	19	1
696	2019-09-20 09:02:54.281854+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["contents"]}}]	19	1
697	2019-09-20 09:04:05.587168+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["contents"]}}]	19	1
698	2019-09-20 09:04:54.960074+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
699	2019-09-20 09:32:07.687976+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["contents"]}}]	19	1
700	2019-09-20 10:08:03.722567+00	35	richa.grover@codeflowtech.com	3		9	1
701	2019-09-20 10:59:13.303205+00	15	Google to launch AI Research Lab in Bengaluru	1	[{"added": {}}]	11	1
702	2019-09-20 11:36:42.467578+00	247	t	3		18	1
703	2019-09-20 11:36:42.469715+00	246	t	3		18	1
704	2019-09-20 11:36:42.471025+00	245	Testtt	3		18	1
705	2019-09-20 11:36:42.47236+00	244	dlhjh:fj	3		18	1
706	2019-09-20 11:36:42.473571+00	243	Thanks	3		18	1
707	2019-09-20 11:36:42.474802+00	242	Good work!!!!!	3		18	1
708	2019-09-20 11:36:42.476027+00	241	Thank You!	3		18	1
709	2019-09-20 11:36:42.477208+00	240	Amazing blog.	3		18	1
710	2019-09-20 12:06:31.22105+00	15	Google to launch AI Research Lab in Bengaluru	2	[{"changed": {"fields": ["description"]}}]	11	1
711	2019-09-20 12:44:16.202683+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
712	2019-09-20 12:49:39.662333+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
713	2019-09-20 12:50:33.382421+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
714	2019-09-20 12:51:33.34727+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
715	2019-09-20 12:54:15.417351+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
716	2019-09-20 12:57:29.363381+00	7	Convolutional Neural Network (CNN): Graphical Visualization with Code Explanation	2	[{"changed": {"fields": ["contents"]}}]	19	1
717	2019-09-20 13:16:59.185367+00	12	8 Most Popular Business Analysis Techniques used by Business Analyst	2	[{"changed": {"fields": ["contents"]}}]	19	1
718	2019-09-21 08:38:21.332232+00	15	Google to launch AI Research Lab in Bengaluru	2	[{"changed": {"fields": ["posted_by"]}}]	11	1
719	2019-09-21 08:42:28.563912+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["excerpt", "meta_description"]}}]	19	1
720	2019-09-21 08:51:25.39198+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[{"changed": {"fields": ["contents"]}}]	19	1
722	2019-09-24 08:53:34.88572+00	1	Data Science Intern	2	[{"changed": {"fields": ["job_profile", "experience"]}}]	22	1
723	2019-09-24 08:54:18.05126+00	2	Senior Business Analyst - Tableau - BFS	3		22	1
724	2019-09-24 09:25:49.169847+00	16	Medical marvel: AI can now help detect heart failure risk with 100% accuracy	1	[{"added": {}}]	11	1
725	2019-09-24 10:27:14.972758+00	15	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	1	[{"added": {}}]	19	1
726	2019-09-24 10:28:28.571195+00	15	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
727	2019-09-24 10:30:00.015476+00	15	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
728	2019-09-24 10:48:05.445396+00	15	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	2	[{"changed": {"fields": ["excerpt"]}}]	19	1
729	2019-09-24 10:50:32.140381+00	15	Learning Recurrent Neural Network, applications, and its role for Sentiment Analysis	2	[{"changed": {"fields": ["contents"]}}]	19	1
730	2019-09-24 12:39:51.017957+00	14	Deep Learning - Overview, Practical Examples, Popular Algorithms	2	[]	19	1
731	2019-09-24 12:55:45.885698+00	17	Quilt Data Launches, Introduces Visual Index to Amazon’s Public Data	1	[{"added": {}}]	11	1
732	2019-09-24 12:56:20.278831+00	17	Quilt Data Launches, Introduces Visual Index to Amazon’s Public Data	2	[{"changed": {"fields": ["published_on"]}}]	11	1
733	2019-09-24 12:58:11.649235+00	9	The basics of Modern AI- how does this work and will it destroy the society this year?	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
734	2019-09-25 09:25:14.227237+00	18	Retailers adopting advanced tech to target niche consumer segments: Deloitte report	1	[{"added": {}}]	11	1
735	2019-09-25 09:26:27.650162+00	19	New Amazon initiative aims to offer Alexa and Cortana on a single device	1	[{"added": {}}]	11	1
736	2019-09-25 09:27:01.608337+00	6	What is Data streaming? A Data architect’s guide	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
737	2019-09-25 09:28:04.658229+00	1	Police in China will use AI face recognition to identify “lost” elderly	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
738	2019-09-25 09:48:22.613439+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	1	[{"added": {}}]	19	1
739	2019-09-25 09:50:15.468521+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["is_published", "created_by", "published_on", "is_featured", "meta_title", "meta_description", "meta_keywords", "select_thumbnail"]}}]	19	1
740	2019-09-25 09:52:11.157875+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
741	2019-09-25 09:53:43.314199+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["contents"]}}]	19	1
742	2019-09-25 11:39:07.902864+00	3	Campus Ambassador Intern	1	[{"added": {}}]	22	1
743	2019-09-26 05:20:57.723184+00	187	amdavinash97@gmail.com	2	[{"changed": {"fields": ["biography", "linkedin_link"]}}]	8	1
744	2019-09-26 05:21:05.960937+00	187	amdavinash97@gmail.com	2	[]	8	1
745	2019-09-26 05:23:47.291559+00	79	Antigone	2	[{"changed": {"fields": ["is_author", "updated_on"]}}]	9	1
746	2019-09-26 05:23:58.995767+00	79	Antigone	2	[{"changed": {"fields": ["select_profile_pic"]}}]	9	1
747	2019-09-26 05:24:38.742898+00	5	Introduction to Logistic Regression - Sigmoid Function, Code Explanation	2	[{"changed": {"fields": ["created_by"]}}]	19	1
748	2019-09-27 06:11:40.670569+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["excerpt", "meta_description"]}}]	19	1
749	2019-09-27 12:04:40.477036+00	17	Natural Language Processing: A Discussion for NLP Working and Applications	1	[{"added": {}}]	19	1
750	2019-09-27 12:05:41.20099+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["is_published", "is_featured"]}}]	19	1
751	2019-09-27 12:06:12.059824+00	17	Natural Language Processing: A Discussion for NLP Working and Applications	2	[{"changed": {"fields": ["is_published", "is_active", "status", "is_featured"]}}]	19	1
752	2019-09-28 12:28:24.699599+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["is_featured"]}}]	19	1
753	2019-09-28 12:29:24.458735+00	16	Decisive Analytical Initiative: 5 Leading Steps towards Qualitative Data Analytics	2	[{"changed": {"fields": ["is_published", "view_count"]}}]	19	1
754	2019-09-28 12:52:32.764001+00	17	Natural Language Processing: A Discussion for NLP Working and Applications	2	[{"changed": {"fields": ["excerpt", "contents", "tags", "is_published", "is_active", "status", "updated_on", "published_on", "is_featured"]}}]	19	1
755	2019-09-28 12:55:20.251272+00	17	Natural Language Processing: A Discussion for NLP Working and Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
756	2019-09-28 12:59:48.91021+00	20	Army plans to induct AI to bolster capability	1	[{"added": {}}]	11	1
757	2019-09-28 13:01:20.617306+00	21	Serverless Data: The Winning Cloud Adoption Strategy	1	[{"added": {}}]	11	1
758	2019-09-28 13:02:18.094707+00	22	Interview: Nancy Duarte, Author and CEO of Duarte, Inc.	1	[{"added": {}}]	11	1
759	2019-09-28 13:03:34.004351+00	17	Quilt Data Launches, Introduces Visual Index to Amazon’s Public Data	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
760	2019-09-28 13:03:57.804336+00	15	Google to launch AI Research Lab in Bengaluru	2	[{"changed": {"fields": ["select_thumbnail"]}}]	11	1
761	2019-09-28 13:07:39.812974+00	1	Data Science Intern	2	[{"changed": {"fields": ["description"]}}]	22	1
762	2019-09-30 04:55:46.814472+00	17	Natural Language Processing: A Discussion for NLP Working and Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
763	2019-09-30 05:11:57.266176+00	17	Natural Language Processing: A Discussion for NLP Working and Applications	2	[{"changed": {"fields": ["contents"]}}]	19	1
764	2019-09-30 05:13:43.473256+00	187	amdavinash97@gmail.com	2	[{"changed": {"fields": ["biography"]}}]	8	1
765	2019-10-01 10:10:03.497531+00	18	Understanding Bioinformatics as the application of Machine Learning	1	[{"added": {}}]	19	1
766	2019-10-01 10:13:09.36403+00	18	Understanding Bioinformatics as the application of Machine Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
767	2019-10-01 10:18:31.849574+00	18	Understanding Bioinformatics as the application of Machine Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
768	2019-10-01 10:19:26.710599+00	18	Understanding Bioinformatics as the application of Machine Learning	2	[{"changed": {"fields": ["contents"]}}]	19	1
769	2019-10-01 10:23:38.284371+00	18	Understanding Bioinformatics as the application of Machine Learning	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
770	2019-10-01 10:30:00.607644+00	18	Understanding Bioinformatics as the application of Machine Learning	2	[{"changed": {"fields": ["contents", "view_count"]}}]	19	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 770, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	taggit	taggeditem
7	taggit	tag
8	users	userprofile
9	users	user
10	news	newscategory
11	news	news
12	news	newslettersubscription
13	blogs	commentreaction
14	blogs	blogrequest
15	blogs	blogreaction
16	blogs	blogcategory
17	blogs	userblogread
18	blogs	comment
19	blogs	blogpost
20	utility	career
21	utility	advertisement
22	utility	jobopenings
23	utility	testimonial
24	authtoken	token
25	social_django	usersocialauth
26	social_django	partial
27	social_django	code
28	social_django	association
29	social_django	nonce
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 29, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-08-30 12:33:38.178037+00
2	contenttypes	0002_remove_content_type_name	2019-08-30 12:33:38.190958+00
3	auth	0001_initial	2019-08-30 12:33:38.216967+00
4	auth	0002_alter_permission_name_max_length	2019-08-30 12:33:38.250322+00
5	auth	0003_alter_user_email_max_length	2019-08-30 12:33:38.257088+00
6	auth	0004_alter_user_username_opts	2019-08-30 12:33:38.263852+00
7	auth	0005_alter_user_last_login_null	2019-08-30 12:33:38.27086+00
8	auth	0006_require_contenttypes_0002	2019-08-30 12:33:38.272825+00
9	auth	0007_alter_validators_add_error_messages	2019-08-30 12:33:38.279493+00
10	auth	0008_alter_user_username_max_length	2019-08-30 12:33:38.286125+00
11	auth	0009_alter_user_last_name_max_length	2019-08-30 12:33:38.292813+00
12	auth	0010_alter_group_name_max_length	2019-08-30 12:33:38.29958+00
13	auth	0011_update_proxy_permissions	2019-08-30 12:33:38.306236+00
14	users	0001_initial	2019-08-30 12:33:38.332322+00
15	admin	0001_initial	2019-08-30 12:33:38.370187+00
16	admin	0002_logentry_remove_auto_add	2019-08-30 12:33:38.388543+00
17	admin	0003_logentry_add_action_flag_choices	2019-08-30 12:33:38.398757+00
18	authtoken	0001_initial	2019-08-30 12:33:38.414586+00
19	authtoken	0002_auto_20160226_1747	2019-08-30 12:33:38.467889+00
20	taggit	0001_initial	2019-08-30 12:33:38.493163+00
21	taggit	0002_auto_20150616_2121	2019-08-30 12:33:38.515744+00
22	taggit	0003_taggeditem_add_unique_index	2019-08-30 12:33:38.52519+00
23	blogs	0001_initial	2019-08-30 12:33:38.626425+00
24	blogs	0002_auto_20190719_1212	2019-08-30 12:33:38.721897+00
25	blogs	0003_blogpost_is_featured	2019-08-30 12:33:38.760722+00
26	blogs	0004_blogrequest	2019-08-30 12:33:38.786532+00
27	blogs	0005_userblogread	2019-08-30 12:33:38.815155+00
28	blogs	0006_auto_20190801_0918	2019-08-30 12:33:38.87308+00
29	blogs	0007_auto_20190801_0949	2019-08-30 12:33:38.893251+00
30	blogs	0008_auto_20190801_1007	2019-08-30 12:33:38.919883+00
31	blogs	0009_auto_20190801_1020	2019-08-30 12:33:38.962249+00
32	blogs	0010_blogcategory_file	2019-08-30 12:33:38.970067+00
33	blogs	0011_remove_blogcategory_file	2019-08-30 12:33:38.978954+00
34	blogs	0012_auto_20190814_1117	2019-08-30 12:33:39.055524+00
35	news	0001_initial	2019-08-30 12:33:39.082496+00
36	news	0002_news_thumbnail	2019-08-30 12:33:39.104583+00
37	news	0003_auto_20190801_1303	2019-08-30 12:33:39.115709+00
38	news	0004_newslettersubscription	2019-08-30 12:33:39.123179+00
39	sessions	0001_initial	2019-08-30 12:33:39.133221+00
40	default	0001_initial	2019-08-30 12:33:39.215591+00
41	social_auth	0001_initial	2019-08-30 12:33:39.216816+00
42	default	0002_add_related_name	2019-08-30 12:33:39.251916+00
43	social_auth	0002_add_related_name	2019-08-30 12:33:39.253136+00
44	default	0003_alter_email_max_length	2019-08-30 12:33:39.258893+00
45	social_auth	0003_alter_email_max_length	2019-08-30 12:33:39.260006+00
46	default	0004_auto_20160423_0400	2019-08-30 12:33:39.280223+00
47	social_auth	0004_auto_20160423_0400	2019-08-30 12:33:39.281445+00
48	social_auth	0005_auto_20160727_2333	2019-08-30 12:33:39.289007+00
49	social_django	0006_partial	2019-08-30 12:33:39.29915+00
50	social_django	0007_code_timestamp	2019-08-30 12:33:39.326661+00
51	social_django	0008_partial_timestamp	2019-08-30 12:33:39.345779+00
52	users	0002_userprofile	2019-08-30 12:33:39.38109+00
53	users	0003_auto_20190722_1100	2019-08-30 12:33:39.404363+00
54	users	0004_auto_20190724_0450	2019-08-30 12:33:39.509223+00
55	utility	0001_initial	2019-08-30 12:33:39.530762+00
56	utility	0002_career_jobopenings	2019-08-30 12:33:39.550949+00
57	social_django	0001_initial	2019-08-30 12:33:39.55476+00
58	social_django	0003_alter_email_max_length	2019-08-30 12:33:39.556587+00
59	social_django	0002_add_related_name	2019-08-30 12:33:39.558422+00
60	social_django	0004_auto_20160423_0400	2019-08-30 12:33:39.560136+00
61	social_django	0005_auto_20160727_2333	2019-08-30 12:33:39.561904+00
62	news	0005_news_published_on	2019-09-09 12:47:13.418929+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ekw849ret3fokedkmiyt8zwzad3wcysi	ZjE0MzljMjI3MTYzYTk5ZTQ0NzBhNjkwZTNkOGZkNjU2NWY4YTkwODp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwZmJlYzYzOWRlOTEyMDQ2NWM0NjU4MDgwODk0YTNhMjU0MTg0MWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-16 08:00:08.475151+00
4pufu6jjq9iqss46baykbija5mgrqy9j	ZjE0MzljMjI3MTYzYTk5ZTQ0NzBhNjkwZTNkOGZkNjU2NWY4YTkwODp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwZmJlYzYzOWRlOTEyMDQ2NWM0NjU4MDgwODk0YTNhMjU0MTg0MWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-20 08:57:34.537745+00
i4l7jin2vlqwafdwhzmbvquz7z4f6s16	ZjE0MzljMjI3MTYzYTk5ZTQ0NzBhNjkwZTNkOGZkNjU2NWY4YTkwODp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwZmJlYzYzOWRlOTEyMDQ2NWM0NjU4MDgwODk0YTNhMjU0MTg0MWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-20 09:01:47.955157+00
w85ejt335e1nbu0dhlgbntyjfbdf9z5d	ZmNiMTgxNzNhNDhhZjE2Yjg5YzMwMjgwOGUwYjZkNzQ1OTFiOTU1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-09-20 12:57:59.653302+00
aix2jr42pixdfki76o2i2kbytgpeumxs	NzEzOWRkMTc4MTVlYTU2MTc0OTA3OTEzNzIyODQ4YTQzMzkwNTM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjBmYmVjNjM5ZGU5MTIwNDY1YzQ2NTgwODA4OTRhM2EyNTQxODQxZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-23 11:57:36.648678+00
z0k63n96i3k4d3sauw6oji22u9nf7o3k	ZjE0MzljMjI3MTYzYTk5ZTQ0NzBhNjkwZTNkOGZkNjU2NWY4YTkwODp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwZmJlYzYzOWRlOTEyMDQ2NWM0NjU4MDgwODk0YTNhMjU0MTg0MWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-24 11:22:36.692542+00
vbze2pzb4n2ga29rrg27fm7w5ys5g79p	ZmNiMTgxNzNhNDhhZjE2Yjg5YzMwMjgwOGUwYjZkNzQ1OTFiOTU1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-09-24 22:40:08.005977+00
u6rg03ficoloo33ptcni8qpinw4r1o3o	ZmNiMTgxNzNhNDhhZjE2Yjg5YzMwMjgwOGUwYjZkNzQ1OTFiOTU1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-09-25 04:21:44.609091+00
fg0emyn9gwxmyy0wqelk6ogtzmaq23bw	NzEzOWRkMTc4MTVlYTU2MTc0OTA3OTEzNzIyODQ4YTQzMzkwNTM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjBmYmVjNjM5ZGU5MTIwNDY1YzQ2NTgwODA4OTRhM2EyNTQxODQxZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-25 12:02:36.239379+00
hp5nbtpp00d5htjexu18ah2u58wmwppi	NzEzOWRkMTc4MTVlYTU2MTc0OTA3OTEzNzIyODQ4YTQzMzkwNTM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjBmYmVjNjM5ZGU5MTIwNDY1YzQ2NTgwODA4OTRhM2EyNTQxODQxZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-25 12:24:23.715395+00
3immkyfu8v3lm7eru9wc5j3118zkub6v	NzEzOWRkMTc4MTVlYTU2MTc0OTA3OTEzNzIyODQ4YTQzMzkwNTM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjBmYmVjNjM5ZGU5MTIwNDY1YzQ2NTgwODA4OTRhM2EyNTQxODQxZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-27 06:51:41.070241+00
8ba8kziegn9fn25r8a65n0mmr964zc0k	MmIyNTM3NGMyZDYxNmRlMDhkY2UwMDMwNGExYTk4NGNkMTNjNmE2Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-09-28 15:59:44.523065+00
3o5be5kt6wnglks7frtbu51kvrzb4p36	NzEzOWRkMTc4MTVlYTU2MTc0OTA3OTEzNzIyODQ4YTQzMzkwNTM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjBmYmVjNjM5ZGU5MTIwNDY1YzQ2NTgwODA4OTRhM2EyNTQxODQxZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-10-01 10:59:46.514269+00
2im6nrwtbxp3uzpdrv0s631vq0f9qqdp	NzEzOWRkMTc4MTVlYTU2MTc0OTA3OTEzNzIyODQ4YTQzMzkwNTM4Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjBmYmVjNjM5ZGU5MTIwNDY1YzQ2NTgwODA4OTRhM2EyNTQxODQxZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-10-02 05:12:45.370866+00
n4jrqpa7o093dfs5ue5gvjzp6dbyubmo	ZmNiMTgxNzNhNDhhZjE2Yjg5YzMwMjgwOGUwYjZkNzQ1OTFiOTU1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-10-04 10:31:14.213881+00
oobwz8cc7tv5hponk6005r5enwm1v7t2	ZmNiMTgxNzNhNDhhZjE2Yjg5YzMwMjgwOGUwYjZkNzQ1OTFiOTU1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-10-04 12:06:09.103998+00
7s0oiukhpou4r5o3postqqq3eovbqpyc	ZmNiMTgxNzNhNDhhZjE2Yjg5YzMwMjgwOGUwYjZkNzQ1OTFiOTU1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MGZiZWM2MzlkZTkxMjA0NjVjNDY1ODA4MDg5NGEzYTI1NDE4NDFkIn0=	2019-10-07 17:11:45.466514+00
\.


--
-- Data for Name: job_openings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.job_openings (id, job_profile, experience, location, description, is_active, status, created_on) FROM stdin;
3	Campus Ambassador Intern	\N	Work From Home	Requirement of an undergraduate Campus Ambassador for a paid internship (from IITs, NITs, or BITs) in our IT-based company in the Analytics industry.\r\nRequirements & Responsibilities:\r\n1. Responsible for end to end marketing of blogs and analytics content inside/outside campus.\r\n2. Publicize our blogs on social media like LinkedIn, Twitter, Facebook, etc.\r\n3. Seek out proactive enthusiasts inside the campus to write a blog with us and to connect with other \r\n    bloggers and share resources.\r\n4. Make offers with candidates to sign up and subscribe to our website.\r\n5. Come up with engaging ideas for online/offline marketing, campaigns, and execute them.\r\n6. Should have good communication and interpersonal skills.\r\n7. Must have a good network in the college campus and proactive on social media.\r\n8. Bridging link between the company and the campus.	t	t	2019-09-25 11:39:07.902164+00
1	Data Science Intern	\N	Noida, India	We are looking for Lead Data Scientist with competencies to understand client requirements, develop and deliver analytical solutions as per the defined scope. \r\nThe role requires passion for building large scale data processing systems to help manage the ever-growing information needs of our clients with sound business understanding, knowledge of statistical modeling, and problem-solving skills. Individual may have to lead team as per the project requirement	t	t	2019-09-09 04:13:49.494927+00
\.


--
-- Name: job_openings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.job_openings_id_seq', 3, true);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.news (id, title, posted_by, description, url, created_on, updated_on, is_active, status, view_count, thumbnail, published_on) FROM stdin;
8	Alphabet’s AI Might be able to Predict Kidney Disease	Tim Simonite and Gregory Barber, Wired	<p>Alphabet&rsquo;s AI lab, Deepmind has developed an app that can predict the severity of cases and possible diagnosis needed 48 hours well before the doctors realize. The lab has made an app which says, it makes the doctor&rsquo;s as proactive rather than reactive people. It can prove to be a milestone in the Healthcare industry.</p>	https://www.wired.com/story/alphabets-ai-predict-kidney-disease/	2019-09-06 11:58:49+00	\N	t	t	0	/backend/media/news_thumbnail/5318160/6554510_1567771454_Alphabet’s-AI_banner.jpg	2019-07-31 10:52:25+00
6	What is Data streaming? A Data architect’s guide	Joe deBuzna, Dataversity	<p>In this article the author talks about the three V&rsquo;s that are always associated with Big Data and adds another V that is an important concern for the enterprises. He furthers his case of why data streaming is a necessity for producing real time analytic results.</p>	https://www.dataversity.net/what-is-data-streaming-a-data-architects-guide/	2019-09-06 11:53:24+00	\N	t	t	0	/backend/media/news_thumbnail/2633427/914103_1569403621_Fundamentals for supercharging your Data Strategy.jpg	2019-08-06 10:51:39+00
5	3 Fundamentals for supercharging your Data Strategy	Kenneth Corbin, CIO	<p>Modern enterprises are flooded with data. It needs some expert to create a buy-in for businesses from that data. In this article for CIO, writer Kenneth Corbin suggests three methodologies, how these seemingly large pools of data can be converted to assets for the enterprises.</p>	https://www.cio.com/article/3402319/3-fundamentals-for-supercharging-your-data-strategy.html	2019-09-06 11:52:29+00	\N	t	t	0	/backend/media/news_thumbnail/3268231/1144568_1567771396_Fundamentals for supercharging your Data Strategy.jpg	2019-06-21 10:56:15+00
10	An optimistic view of Deep Fakes	Sunny Dhillon, Techcrunch	<p>A technology that simulates to change or create new voices, faces and expressions is always looked down with sceptical eyes. Sunny Dhillon of Techcrunch.com writes about the optimistic side of Deep fakes as these technologies are here to stay. And he furthers the case of usage of these technologies.</p>	https://techcrunch.com/2019/07/04/an-optimistic-view-of-deepfakes/	2019-09-13 11:55:54+00	\N	t	t	0	/backend/media/news_thumbnail/7389337/4169311_1568888877_Modern-AI.jpg	2019-06-28 11:58:35+00
4	Google’s lung cancer AI: a promising tool that needs further validation	Colin Jacobs & Bran Van Ginneken, Nature.com	<p>At google, researchers have developed a technique using deep learning that would scan the CT images and can judge of lung cancer. The researchers suggest it has better accuracy rate than that of radiologists. Read this article to find out what lies ahead in Cancer Treatment methodologies?</p>	https://www.nature.com/articles/s41571-019-0248-7	2019-09-06 11:51:50+00	\N	t	t	0	/backend/media/news_thumbnail/1584298/9505210_1567771379_Google’s-lung-cancer-AI.jpg	2019-06-27 10:50:27+00
7	India among top 20 countries in artificial intelligence readiness ranking	Nandita Mathur, Livemint	<p>The AI readiness ranking which identifies 194 countries puts India at the 19th place. The list is dominated by the countries having robust structure and bigger economies and strong system of governance. Nandita mathur talks about the ways in which the AI readiness rank can be increased and how to use this for further technological advancements.</p>	https://www.livemint.com/ai/artificial-intelligence/india-among-top-20-countries-in-the-artificial-intelligence-readiness-ranking-1558443934744.html	2019-09-06 11:58:39+00	\N	t	t	0	/backend/media/news_thumbnail/8995525/1093521_1567771405_India-among-top-20-countries-in-artificial-intelligence-readiness-ranking2.jpg	2019-05-21 10:51:58+00
1	Police in China will use AI face recognition to identify “lost” elderly	Ryan Daws, Artificial Intelligence News	<p>Chinese police hope to use AI-powered facial recognition, in combination with the nation&rsquo;s mass surveillance network, to identify lost elderly people.Public data suggests around 500,000 elderly people get lost each year, the equivalent of around 1,370 per day. About 72 percent of the missing persons were reported mentally challenged, requiring extra policing effort to identify them and ensure they get home safe.</p>	https://artificialintelligence-news.com/2019/08/05/police-china-ai-face-recognition-identify-lost-elderly/	2019-09-06 11:46:14+00	\N	t	t	0	/backend/media/news_thumbnail/9362461/6326740_1569403684_Google’s-lung-cancer-AI.jpg	2019-08-05 10:48:50+00
11	AI app identifies rare genetic disorders from photos of patient faces.	Catherine Offord, The scientist	<p>Boston based start-up FDNA has developed unique image analyser through the help of deep learning which could possibly revolutionize the medical Industry. This software can assess the images of the patients and predict rare genetic disorders and thus narrow down the possibilities. The algorithm reaches about 64 percent accuracy much higher than any available algorithms.</p>	https://www.the-scientist.com/news-opinion/ai-app-identifies-rare-genetic-disorders-from-photos-of-patient-faces-65295	2019-09-13 11:59:08+00	\N	t	t	0	\N	2019-01-08 11:59:43+00
2	How coca-cola is using AI to stay at the top of soft drinks market	Bernard Marr, Artificial Intelligence News	<p>Artificial intelligence is the foundation for everything we do. We create intelligent experiences. Artificial intelligence is the kernel that powers that experience,&rdquo;says the CEO of Coca Cola. AI uses to analyse the large amount of data which aids the company in making products suitable for the flavour and sugar and calorie contents.&nbsp;</p>	https://artificialintelligence-news.com/2019/05/07/how-coca-cola-is-using-ai-to-stay-at-the-top-of-the-soft-drinks-market/	2019-09-06 11:50:03+00	\N	t	t	0	/backend/media/news_thumbnail/4135347/1132392_1568953488_Data-streaming.jpg	2019-05-07 10:49:26+00
13	E-commerce firms focusing on AI, virtual reality to cut logistics cost and fraudulent orders.	Live Mint	<p>&nbsp;</p>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p dir="ltr">Most of the e-commerce ventures are investing heavily in AI technologies to identify and manage the fraudulent orders. It would talk to customers in vernacular languages creating a deeper customer engagement and thus would help the e-commerce ventures to cut down logistics cost heavily. It can also track the customer engagement through deeper analytics.</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>	https://www.livemint.com/AI/7aCVPiWq0ovp7IQ00St05L/Ecommerce-firms-focusing-on-AI-virtual-reality-to-cut-logi.html	2019-09-19 08:27:23+00	\N	f	f	0	/backend/media/news_thumbnail/1046222/5354499_1568881749_Banner_Supervised&UnSupervised .jpg	2019-08-04 08:29:02+00
12	State of AI: Artificial Intelligence, the Military and Increasingly Autonomous Weapons	Kirsten Gronlund, Future of life	<p>As the applications of AI find their use in various sectors such as finance, healthcare, governments are now trying to use AI to make Autonomous weapons. The UN has issued guidelines for such weapons and the havoc they could wreak upon. This article illustrates how AI are helping various countries in developing such weapons and how they could be regulated with mutual understandings.</p>	https://futureoflife.org/2019/05/09/state-of-ai/	2019-09-13 12:00:14+00	\N	t	t	0	/backend/media/news_thumbnail/2685461/4388750_1568953457_Alphabet’s-AI_banner.jpg	2019-05-09 12:00:27+00
3	How to engineer a self driving Car	Habeeba Salim, The EconomicTimes	<p>If you are looking for a career in developing and building self driving cars, then you might think of gate-crashing the AI and ML party. To develop a system that can think, act on its own. Habeeba salim pens down the essential knowledge of fields and expertise to break the door of Self driving cars industry.</p>	https://economictimes.indiatimes.com/jobs/how-to-engineer-a-self-driving-car/articleshow/70445122.cms	2019-09-06 11:50:28+00	\N	t	t	0	/backend/media/news_thumbnail/3780278/9961842_1568888844_Data-streaming.jpg	2019-07-03 10:49:54+00
16	Medical marvel: AI can now help detect heart failure risk with 100% accuracy	IANS, The Economic Times	<p dir="ltr">By Author reference, &ldquo;CHF is a chronic progressive condition that affects pumping power of the heart muscles&rdquo;, In this article, the author described CNN based model is created to understand patterns and structures of ECG datasets that provide 100% reliable result to recognize heart failure or not in one ECG heartbeat. A combined impact of advanced signal processing and ML tools as raw ECG signals used by CNN&nbsp; model to achieve results with 100% accuracy.</p>	https://economictimes.indiatimes.com/magazines/panache/medical-marvel-ai-can-now-help-detect-heart-failure-risk-with-100-accuracy/articleshow/71095530.cms	2019-09-24 09:21:16+00	\N	t	t	0	/backend/media/news_thumbnail/7299002/2996880_1569317149_4388750_1568953457_Alphabet’s-AI_banner.jpg	2019-09-12 06:30:00+00
14	Key to success in data science: Domain expertise	Habeeba Salim and Swati rathore, The Economic Times	<p>&nbsp;</p>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>\r\n\t\t\t<p dir="ltr">Companies having large piles of data now need Humans who can work with machines to dive deep in the huge data sets and shred out some valuable information. This article of economic times tells the opportunities and requirements of Data scientist for the companies.&nbsp;</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>	https://cio.economictimes.indiatimes.com/news/big-data/key-to-success-in-data-science-domain-expertise/70041945	2019-09-19 12:32:29+00	\N	f	f	0	/backend/media/news_thumbnail/4659620/2508113_1568896440_pca.jpg	2019-09-19 12:33:58+00
15	Google to launch AI Research Lab in Bengaluru	Saurabhi Agarwal, The Economic Times	<p dir="ltr">Google is soon launching a new lab to design more new products, firmly will be led by Mr. Manish Gupta, an SEM fellow. This project includes a tie-up with BSNL to expend WiFi in villages of Gujarat, Bihar, and Maharastra. Google&rsquo;s new initiatives include adopting local Indian languages to products for Search, Bolo, Google Assistant, expanding Google Pay app to tokenization as &lsquo;tokenized cards&rsquo; and &lsquo;Spot platform&rsquo;&nbsp; to invent exclusive stores within the Google Pay app which basically targets the disordered fragments of retail and hospitality. In this article, the author talks about the AI-based new research lab to be opened in Bengaluru by Google.</p>	https://economictimes.indiatimes.com/tech/internet/google-to-launch-ai-research-lab-in-bengaluru/articleshow/71198037.cms	2019-09-20 10:57:50+00	\N	t	t	0	/backend/media/news_thumbnail/1322758/1013052_1569675837_Data-streaming.jpg	2019-09-19 06:30:00+00
9	The basics of Modern AI- how does this work and will it destroy the society this year?	Haomiao huang,  ArsTechnica	<p dir="ltr">Artificial intelligence, is huge right now. &ldquo;Unsolvable&rdquo; problems are being solved, billions of dollars are being invested, and Microsoft even hired Common to tell you how great its AI is with spoken word poetry. Yikes.</p>\r\n\r\n<p dir="ltr">There&rsquo;s an old joke in computer science that goes like this: what&rsquo;s the difference between AI and automation? Well, automation is what we can do with computers, and AI is what we wish we could do.</p>\r\n\r\n<p>&nbsp;In this article the author explains the field of study and basic terms related to it in a fun and engaging way.</p>	https://arstechnica.com/features/2019/04/from-ml-to-gan-to-hal-a-peak-behind-the-modern-artificial-intelligence-curtain/?utm_campaign=Deep%20Learning%20Weekly&utm_medium=email&utm_source=Revue%20newsletter	2019-09-09 11:59:30+00	\N	t	t	0	/backend/media/news_thumbnail/2571213/2694792_1569329891_India-among-top-20-countries-in-artificial-intelligence-readiness-ranking2.jpg	2019-08-04 10:52:34+00
18	Retailers adopting advanced tech to target niche consumer segments: Deloitte report	PTI, The Economic Times	<p dir="ltr">&ldquo;Retail firms are using a strategy, Tribetailing, to identify and provide to a niche set of users.&rdquo; From this article, Retailers are using advanced technology such as Artificial Technology, Machine Learning, social media analytics for getting knowledge about users&#39; shopping history, behavior, preferences, etc. This is helpful for retailers to group up customers of different categories and come up with demonstrated solutions.</p>	https://economictimes.indiatimes.com/industry/services/retail/retailers-adopting-advanced-tech-to-target-niche-consumer-segments-deloitte-report/articleshow/71275708.cms	2019-09-25 09:24:11+00	\N	t	t	0	\N	2019-09-24 09:25:06+00
19	New Amazon initiative aims to offer Alexa and Cortana on a single device	Reuters, Tech2 under Firstpost	<p dir="ltr">Almost two years back, Amazon and Microsoft had announced that their virtual voice assistant will be able to talk to each other, this step has been taken due to the competition among global technology to stay ahead in the market of voice assistant like Amazon&#39;s &#39;Voice Interoperability Initiative&#39; are Alphabet&#39;s Google Assistant, Apple&#39;s Siri, and Samsung Electronics&#39;s Bixby. This proposal includes more than 300 companies including Salesforce.com&#39;s Einstein, Intel, Qualcomm, MediaTek, and NXP Semiconductors, etc. and supporting the partnership.</p>	https://www.firstpost.com/tech/news-analysis/new-amazon-initiative-aims-to-offer-alexa-and-cortana-on-a-single-device-7398871.html	2019-09-25 09:25:35+00	\N	t	t	0	\N	2019-09-25 09:26:23+00
20	Army plans to induct AI to bolster capability	Shaurya Karanbir Gurung, The Economic Times	<p dir="ltr">In this article, the writer focused on the Indian Army, he informed the Indian Army will induct constructive and destructive artificial intelligence and used by mechanized forces such as tanks and infantry combat vehicles, this technology is used by mechanized welfare and its formation will be network-centric, added by South-Western Army Commander Lieutenant General Alok Kler in &lsquo;Sapta-Shakti AI seminar&rsquo;. He also told the media that AI will help constructively such as helping a commander in making his decision and making sure information is converted into intelligence.&nbsp;</p>	https://economictimes.indiatimes.com/news/defence/army-plans-to-induct-ai-to-bolster-capability/articleshow/71298874.cms	2019-09-28 12:58:08+00	\N	t	t	0	\N	2019-09-25 12:59:24+00
21	Serverless Data: The Winning Cloud Adoption Strategy	Editorial Team, InsideBigData	<p dir="ltr">From author reference, the company presents guest feature in this section about Venkat Venkataramani, CEO and C0-founder of the Rockset. Previously, he worked in Oracle Database and Facebook infrastructure team as Engineering Director. In this news article, the editor told about that he discussed how he explored the benefits of eliminations of serverless technology so that developers focus on the creativity of apps and improve them.&nbsp;&nbsp;</p>	https://insidebigdata.com/2019/09/25/serverless-data-the-winning-cloud-adoption-strategy/	2019-09-28 13:00:04+00	\N	t	t	0	\N	2019-09-25 13:01:19+00
22	Interview: Nancy Duarte, Author and CEO of Duarte, Inc.	Daniel Gutierrez, InsideBigData	<p dir="ltr">Nancy Duarte, CEO of Duarte.Inc. gave an interview to InsideBigdata, conducted by Daniel Gutierrez. She is an author of DataStory- Explain Data and Inspires Action through Story. In addition, she is a regular contributor to Harvard Business Review and Linkedin&rsquo;s Influencer Program The interview mainly focused on her experience in writing a book and her successful career an MIT and Forbes. She highlighted the &lsquo;importance of data&rsquo; and &lsquo;story&rsquo; to communicating data, and &lsquo;Data point of view&rsquo;.&nbsp;&nbsp;</p>	https://insidebigdata.com/2019/09/26/interview-nancy-duarte-author-and-ceo-of-duarte-inc/	2019-09-28 13:01:23+00	\N	t	t	0	\N	2019-09-26 13:02:16+00
17	Quilt Data Launches, Introduces Visual Index to Amazon’s Public Data	Editorial Team, InsideBigData	<p dir="ltr">Amazon&rsquo;s public cloud data launched Quilt data where the world&rsquo;s data come together to discover and share petabytes of data, it enables users to search, understand and explore data from a standard web browser. Silicon Valley investors gave back up to this which works in different domains like cell biology, image recognition, sports performance, drug discovery, and geospatial analysis. The executive team came from research and software development backgrounds from MNC like Apple, Oracle Labs, NVIDIA, etc.&nbsp;</p>	https://insidebigdata.com/2019/09/22/quilt-data-launches-introduces-visual-index-to-amazons-public-data/	2019-09-24 12:54:33+00	\N	t	t	0	/backend/media/news_thumbnail/1627951/6852315_1569675813_Modern-AI.jpg	2019-09-22 12:55:30+00
\.


--
-- Data for Name: news_categories; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.news_categories (id, name, slug, description, thumbnail, meta_title, meta_description, meta_keywords, head_script, is_active, status, created_on, updated_on, parent_id) FROM stdin;
1	Art	art		\N	\N				t	t	\N	\N	\N
2	Artificial intelligence	artificial-intelligence		\N	\N				t	t	2019-09-06 11:49:11+00	\N	\N
4	Big Data	big-data		\N	\N				t	t	\N	\N	\N
5	Deep Learning	deep-learning		\N	\N				t	t	\N	\N	\N
3	Machine learning	machine-learning		\N	\N				t	t	\N	\N	\N
\.


--
-- Name: news_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.news_categories_id_seq', 5, true);


--
-- Data for Name: news_category; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.news_category (id, news_id, newscategory_id) FROM stdin;
1	1	2
2	2	2
3	3	3
4	4	3
5	5	4
6	6	4
7	7	2
8	8	2
9	9	2
10	10	5
11	11	5
12	12	2
13	13	2
14	14	4
15	15	2
16	16	2
17	17	4
18	18	3
19	19	2
20	20	2
21	21	4
22	22	4
\.


--
-- Name: news_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.news_category_id_seq', 22, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.news_id_seq', 22, true);


--
-- Data for Name: news_newslettersubscription; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.news_newslettersubscription (id, email, is_subscribed, created_on, updated_on) FROM stdin;
1	sadas@dsa.sad	t	2019-09-06 15:06:59.241109+00	\N
2	gsh@gg.com	t	2019-09-07 07:10:46.316146+00	\N
3	hxndn@jxn.com	t	2019-09-07 08:07:33.802713+00	\N
5	sdsd@dgdf.com	t	2019-09-07 12:18:30.760276+00	\N
6	dsadas@bbn.com	t	2019-09-07 12:18:43.72378+00	\N
7	zadhjh@jjhhjhj.com	t	2019-09-07 12:19:13.124584+00	\N
8	anbndabsn@ghghg.com	t	2019-09-07 12:19:35.302802+00	\N
9	hjdsahjdhj@jhjhj.com	t	2019-09-07 12:20:35.384493+00	\N
10	dsadsa@njhh.com	t	2019-09-07 12:22:57.566722+00	\N
11	nbnb@vvvv.co	t	2019-09-07 12:31:40.925639+00	\N
12	fgfg@h.com	t	2019-09-07 12:33:01.664003+00	\N
13	sdfs@dsfs.gfd	t	2019-09-08 17:40:21.874612+00	\N
14	ghfgh@hg.hj	t	2019-09-08 17:59:00.292784+00	\N
15	abc@info.com	t	2019-09-08 17:59:06.868126+00	\N
16	das@dfs.dsf	t	2019-09-08 17:59:27.622315+00	\N
17	dsda@klsf.dsf	t	2019-09-08 18:00:35.866089+00	\N
18	akda@dfs.dsf	t	2019-09-08 18:00:48.992203+00	\N
19	dfsdfd@info.com	t	2019-09-08 18:03:40.9618+00	\N
20	dfsfsdf@gmail.com	t	2019-09-08 18:03:56.475403+00	\N
21	dfd@dsas.sad	t	2019-09-09 04:31:04.358921+00	\N
22	asda@asd.sad	t	2019-09-09 04:31:24.091274+00	\N
23	sa@sasdas.asd	t	2019-09-09 04:31:36.922896+00	\N
24	asd@sdas.sda	t	2019-09-09 04:33:45.082765+00	\N
25	das@asdasda.da	t	2019-09-09 04:33:54.146587+00	\N
26	asd@dsa.as	t	2019-09-09 04:34:03.370804+00	\N
27	das@sd.sda	t	2019-09-09 04:34:15.473782+00	\N
28	sada@s.da	t	2019-09-09 04:34:24.753661+00	\N
29	das@sad.sad	t	2019-09-09 04:34:54.952922+00	\N
30	as@sad.sda	t	2019-09-09 04:35:08.546116+00	\N
31	sfsdfsd@fgfdf.com	t	2019-09-09 04:55:46.251792+00	\N
32	assa@sf.com	t	2019-09-09 05:23:47.07267+00	\N
33	fhghhghghghgh@ghhgh.com	t	2019-09-09 06:52:49.05556+00	\N
34	sgfsdgs@ffgh.com	t	2019-09-09 06:53:01.412865+00	\N
35	fsdfds@nghg.com	t	2019-09-09 06:53:17.623156+00	\N
36	sdinesh718@gmail.com	t	2019-09-09 06:54:16.507283+00	\N
37	dinesh@gmail.com	t	2019-09-09 06:54:40.64593+00	\N
38	cxzcxz@dfd.cm	t	2019-09-09 08:29:28.475378+00	\N
39	dsadsad@gfhf.vv	t	2019-09-09 08:30:44.723761+00	\N
41	tehe@jdjdj.com	t	2019-09-09 15:07:54.030124+00	\N
42	tetr@yopmail.com	t	2019-09-10 04:07:35.271754+00	\N
43	yep@yopmail.com	t	2019-09-10 04:53:40.334635+00	\N
44	smartboyvicky05@gmail.com	t	2019-09-10 06:49:40.060017+00	\N
45	ram@yopmail.com	t	2019-09-10 06:58:01.733395+00	\N
46	testeiye@yopmail.com	t	2019-09-10 10:48:33.545874+00	\N
47	test@yopmail.com	t	2019-09-10 10:48:48.427352+00	\N
48	abc@yopmail.com	t	2019-09-10 11:01:06.095846+00	\N
49	jkjhsfjkdfhsjkdfhsjkdfsdfsdf@dfghj.com	t	2019-09-10 13:40:04.940999+00	\N
50	dddd@yahoo.com	t	2019-09-11 04:17:34.296052+00	\N
51	hdhdhd2ydyd@jfjf.com	t	2019-09-11 04:18:14.280241+00	\N
52	hishshs@kdkd.com	t	2019-09-11 05:55:06.435282+00	\N
53	gfdg@hfghf.com	t	2019-09-11 12:00:32.905351+00	\N
54	a@yopmail.com	t	2019-09-11 12:54:39.7088+00	\N
55	po@yopmail.com	t	2019-09-12 09:49:16.553805+00	\N
56	fdsfsd@ghghg.com	t	2019-09-13 05:08:27.026899+00	\N
57	gfhsdgfhds@hjhjh.com	t	2019-09-13 05:08:56.06572+00	\N
58	vik@yopmail.com	t	2019-09-13 05:58:51.561381+00	\N
59	dinesh@analyticssteps.com	t	2019-09-13 06:19:10.030904+00	\N
60	richa.grover22@gmail.com	t	2019-09-13 06:36:30.643975+00	\N
61	jindal.ankush95@gmail.om	t	2019-09-13 10:33:09.383924+00	\N
62	sssjsjsj@yop.com	t	2019-09-13 11:25:53.553007+00	\N
63	richa.grover@codeflowtech.com	t	2019-09-13 11:39:53.865908+00	\N
64	dinesh.kumawat@codeflowtech.com	t	2019-09-16 05:47:45.348067+00	\N
65	tripathir612@gmail.com	t	2019-09-17 04:12:31.976714+00	\N
66	ffhfhfh@kfkf.com	t	2019-09-19 05:27:24.048613+00	\N
67	poojakumawat6137@gmail.com	t	2019-09-19 16:07:09.360275+00	\N
68	test@toppv.vom	t	2019-09-20 09:37:30.174893+00	\N
69	y@yopmail.com	t	2019-09-20 09:53:34.742611+00	\N
70	rajesh.mehla@codeflowtech.com	t	2019-09-20 09:55:04.315218+00	\N
71	mukeshkumawatkdl.mk@gmail.com	t	2019-09-22 10:13:23.770151+00	\N
\.


--
-- Name: news_newslettersubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.news_newslettersubscription_id_seq', 71, true);


--
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);


--
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
\.


--
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);


--
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);


--
-- Data for Name: social_auth_partial; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
\.


--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);


--
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
69	google-oauth2	analyticssteps@gmail.com	{"token_type": null, "expires": null, "access_token": "ya29.GluAB1twyIknw76RZtlwbatLCqUyofVqTBdDYtAN6dCnpU1Nw_Or2hiCzM737T8JUCTeBOklv4zHn2EpNqgFzMhOZEDSOjaMGLp6_EoF-e_0GMheuRybWUgQ9_Jn", "auth_time": 1568217430}	47
70	google-oauth2	sandeep.singh@codeflowtech.com	{"expires": null, "access_token": "ya29.Gl2JB0p53jrL0lzFkdE1dcdzMljQgLw6qBut1blteoRzQEffBGThJ-KwWFh1dINCbuU9Q53rj7QeH_gZHQcLqx9OQr83IkCrdtSPJ3CK2pvwl-nAkXIFC6S-v_sZXW0", "auth_time": 1568979325, "token_type": null}	48
30	google-oauth2	smartboyvicky05@gmail.com	{"token_type": null, "auth_time": 1568176075, "expires": null, "access_token": "ya29.GlyAB_Ct1Q1Pqr3t_hho-azh1a4HJ5Kw8vm8xpdcOzBhnYCPHa2ws5MOOHz9RYqywQdS9SfGWZg4TfCFvd48NedL76dYQHPsHd-rMxCL_XkGnChK6oqY7wkhlzzkqg"}	33
53	google-oauth2	dinesh.kumawat@codeflowtech.com	{"access_token": "ya29.ImCUB7E3iSg4Cc7q26ba5GfQDk5y5-xjv22kC-5vbnMX9YwnQlg8HpwrBy3VeOwxovUUl6upPyGIInV3TInljTdR-vX___zEz4oqBSx2ZYqKItYo8_5IOnnki_NZiIMKuEU", "auth_time": 1569926543, "expires": null, "token_type": null}	40
64	google-oauth2	aditi.chamoli@codeflowtech.com	{"auth_time": 1568354285, "token_type": null, "access_token": "ya29.GlyCB6_0VcVbvpnYOrbX5xwNomyWaGFIUts5Yzxa3FmQW4yYOenCnO5-vkJZ6gM27n7mmkB13gYoQcFeuMVXPtVQNs2bCCdIZRpo6pfAvWiOeWv7ly68dvt_tBjVQg", "expires": null}	45
21	google-oauth2	abhishek.soni@codeflowtech.com	{"expires": null, "access_token": "ya29.Gl2KB9GgwXx6u3WPAR72WEEWLYFMBakBbv3nkwnLFIR9DhVOAr9vYIKv2lNAh4j-H_miTOh8LScvoaGpsu54ijnQvOJ_1WRNwQhAJjCq5q93moPY--yASz6NDRQBBz0", "auth_time": 1569057384, "token_type": null}	30
132	google-oauth2	deepak.iant1996@gmail.com	{"auth_time": 1569068978, "expires": null, "access_token": "ya29.GluKB297jSc02uUyNyYd32o744FKW9oGoqeMU8H_aHZCIoG3YxepKhvw63gN8hZtJeIYku9MtkQVRxdbncfePYZHPC82XNf2kEG7w7DS54I5UWbhAd3hweu6PORI", "token_type": null}	74
133	google-oauth2	dilipkumawat1222@gmail.com	{"auth_time": 1569083965, "expires": null, "access_token": "ya29.GluKB5opacRtKVuxI1qmy014Y1YYRud5Ma9XTB12OEoiseZ63Q12CRB37JYVbdqFwxaz6aCCzSxTpdqa9S1ipfPPimXDO7noKOKeYKalsQULKV9jpO1azAM6e_E8", "token_type": null}	75
127	google-oauth2	richa.grover@codeflowtech.com	{"auth_time": 1569213357, "expires": null, "access_token": "ya29.GlyMB6jaR6K37BlPAoDiicuv9ws7d1ofWMgl1B6DWlCsVL0jW8AOMtENd8LwnxpzHgp3aXZ4n5EBeQoT2FMqnR7dTUX0GnJuHq5LxqrkYkPGXkSELih2a5ZOHV8AgQ", "token_type": null}	73
136	google-oauth2	shivanikumawat6137@gmail.com	{"auth_time": 1569257323, "expires": null, "access_token": "ya29.GluMB4mrjpA76aQf4-t4uYX-M2K-d2OVVonmpl6uDbc1pPhCoDoYo9U1J0UqdqOPUUxi58d11NE_xiVfxjvTQW6v_Ph5ZyovNOdE7IhOAuiz4eEkHp5xrEAUlAuV", "token_type": null}	77
90	google-oauth2	taniya.verma@codeflowtech.com	{"auth_time": 1568355415, "token_type": null, "access_token": "ya29.Il-CBwtFwtLkLeeSccWmXsDBny0Zcfv0l5za5d9J5Mmla1j7NbGIrKf7KzT2yQkgNAdqhiok6CG60090mBuYaRR-QgQ8ZnRN7gDtwcFDExaKhSb419QqvkaWv1g8Jo1fAw", "expires": null}	52
42	google-oauth2	rajesh.mehla@codeflowtech.com	{"token_type": null, "access_token": "ya29.GluAB1r1r2py_2nNjrFRadNoCGEf836UxIl7tdaK3kcqa7O1JNWosAPhIfQbQVT9ZvSww5Rgk9Fk_7C_hrktPZdmVZFrPt54yfmY66x-GK8Bo2UbNqsrnW76B8dD", "auth_time": 1568180759, "expires": null}	38
50	google-oauth2	abhisheksoni500@gmail.com	{"token_type": null, "access_token": "ya29.GlyRB9Ch2wSIULYC1QLVfFfTxPU2Srn6Ojf15KNRKlwg4agT4WauT1sAb1v87bwZr42TTt1-JPUKbwvAxnpOd8iOyeGH8ZktTHmHf1lufnj_CdcDiVFSAyghEyRtNw", "auth_time": 1569752511, "expires": null}	11
38	google-oauth2	deepanshu.d@codeflowtech.com	{"token_type": null, "auth_time": 1568195801, "expires": null, "access_token": "ya29.GlyAB_0BMtMRnevWJWqSbMhgxP3QgER-EO21i7NKPLgSK3Cv8rolLuDubtUOXQc0N_NyQkpuerr1VqPbb6go-h-5xGcBkzDMzjhklVHoYNMbkoS4Wh_vsd4N2jucYw"}	36
87	google-oauth2	preeti.sharma@codeflowtech.com	{"auth_time": 1568364346, "access_token": "ya29.GluCB9u-qgw4HFCv3kc5FSOzF4eEgrmdp0kA709NbiaYRG1a6qVcUdfavR2_BCuFbzpY2uSYXohYRC7IYwfUwrik9gD-z4fmW_Ia4m62miaBk8KGlBGFy1Flykxl", "token_type": null, "expires": null}	51
23	google-oauth2	dinesh@analyticssteps.com	{"expires": null, "access_token": "ya29.ImCUB_rnGrIqJU-cVX8e6e8u6TEiGF7jVGe_kW3SHj-jtjlk708BmTQveo_n3-ve-kAJh_9aQ4VdZkAWfrufXuMpyarlieYLkv6-IoCmbshSdk2ap8GOftamHavAkTjfZmA", "auth_time": 1569926521, "token_type": null}	10
152	google-oauth2	sdinesh718@gmail.com	{"auth_time": 1569926605, "expires": null, "access_token": "ya29.ImGUB8U-1XW3CUGvsIF3K0Dzfk5vSilII_Euj7S5QesKkY4s_sDlS4ealo6QffiIBHcx6RPtBg2PZhJrqxaUsjetPsKr0PDfdc5vpr08sgi_SW9ABHTOXXh2fXrjH7uqsgzu", "token_type": null}	82
46	google-oauth2	richa.grover22@gmail.com	{"access_token": "ya29.GlyCB4AjeGO8wAj82zpT7OD2X_bB35mEM5jNJjYrQQtlx78TGh2XbbpLNazi35d4b5bLLF-1XBwh54NSFewYLwUCFtIyXLeqJoT4P6PonH9w6ZXgCrIS-CmpeTg2Mg", "expires": null, "token_type": null, "auth_time": 1568375409}	39
96	google-oauth2	harvinkour.dutta@codeflowtech.com	{"access_token": "ya29.GluCB-cYszDDSxK-g45TrXweCNqIbrCj4hZgKGdqdXDrZQS2QZgsRJEDNi886De3sLWQEECGr4WuqpMwle9Qe4lCctRYnOKkM9SBlxe2BzOTvWlGKW57pS4-GJFh", "expires": null, "token_type": null, "auth_time": 1568373831}	55
153	google-oauth2	rahul.tripathi@codeflowtech.com	{"auth_time": 1569926701, "expires": null, "access_token": "ya29.Il-UB54ssPz6xo6E5FdMhfraeVgchG48eyGkwmg6tiMT8olwVOOfqpIeL99NOpiXoo80q1P9GkHMGfkWavys_lNemzW1bzhFV_Bi840vDrS4PCHPoelIut8tjh1ObiIwUg", "token_type": null}	83
155	google-oauth2	ayush.gandhi@analyticssteps.com	{"auth_time": 1569926732, "expires": null, "access_token": "ya29.Il-UB5kh445t9gB8iTWyZUqAZ9cc_Y3JOOBVrsHBjlz_qozvqMloX9C26RpMqKOmFRmkfRjvqwuNt3Jkkx5VcBV8vyV3n2HjZAEFabJfuqq2orx6rJcd0ea3VwNXYtlZWg", "token_type": null}	84
62	google-oauth2	taneshbalodi8@gmail.com	{"auth_time": "2019-09-11T12:12:46.125Z", "token_type": "Bearer", "expires": null, "access_token": "token"}	18
63	google-oauth2	dineshchandrasinghkumawatbad@gmail.com	{"auth_time": 1568204057, "token_type": null, "expires": null, "access_token": "ya29.GluAByj_0p-O4hbPrYb1ImjM6YDNvqCZM9jo7UcvnX-SkrnNRpnVSpKb90MPOmcS1U8oSKHEWTZbpSym5Sno8tjfqBOkM7vFMhl-hbnm1aXRoOd1qj2DCMFsG_tn"}	44
12	google-oauth2	vivek.vikash2014@vitalum.ac.in	{"expires": null, "access_token": "ya29.GlyAB5iK-Qd7usj3PGN6bA3xn87DzPljjzORCMvhu4DX-9hI07BIF7-o8SELRTDPXlY_vJHV_q5r0viEtzU10Cfn2qZenULN_xG0Xl_C1Is4Yw4gStltHEOSIGPELQ", "auth_time": 1568204954, "token_type": null}	17
3	google-oauth2	niraj.kumar@codeflowtech.com	{"expires": null, "access_token": "ya29.ImGIB1KBur0Rm36xVTo1NK1sKpuyH14-Xww73HDGUmqcWmo_r88wwsIsZMOUGIMhIuQy0YU5xYC4px8f2YYrkwUuw_IKLs9CYrKMo4fxhiscCXA0HqKVQqhRZqm1EoGIR2rn", "auth_time": 1568890457, "token_type": null}	16
138	google-oauth2	sameerkrishna.narla@gmail.com	{"auth_time": 1569316316, "expires": null, "access_token": "ya29.GluNBz1HbcLS7S1uZzSkrXC-g1lM8Y2o8FCazKcLdkSy7ZBB_u5nlolWkIAnTCnjSDFA42W35iSgCNihRUz-JaBSI_LNY5MvpQAKeCWGs5Lc1m0EH6jBla6lW86Q", "token_type": null}	78
125	google-oauth2	poojakumawat6137@gmail.com	{"auth_time": 1569782234, "expires": null, "access_token": "ya29.ImCRB6qETxwQn-5KCItb3VFJ6SvhDYLhCT07pxVMXAuYMNMqOCT_XTIggVNAKkRx2Nmw0E6kLJHku3NGv3MNmDpNg3ijCvJUF8GPP8su4cF4kr1IzGKafsh0GRfCDu-kNUA", "token_type": null}	71
101	google-oauth2	vivek.vikash@codeflowtech.com	{"expires": null, "access_token": "ya29.ImGUByQLpHfxOHAT9Uax1MaOlTj1mikcwGPxcoNV5BMdl7lfIgN6UowP3lfluTwNROH3kVIRGmO4c6T-ETqHHdB_z_YHNnvljBuLmJ2kQhCkfX6QRlHBSDCURn5k5zWWuMhg", "auth_time": 1569926725, "token_type": null}	59
32	google-oauth2	neelam.tyagi@analyticssteps.com	{"token_type": null, "access_token": "ya29.ImCUB68HxnAaGyiKbzVmyuuFdeALF-OTzg8C4bEUuqSNojxgS_LvxU04YdDr9Kcb1Ol_C0P4H_siluE9_DN0bzkA3GulnZu-E6QY9kqfE-BqhAqKRmC663UONCjiQ6qFP9o", "auth_time": 1569927922, "expires": null}	21
\.


--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 158, true);


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys  FROM stdin;
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	Learning	learning
2	Machine	machine
3	Business	business
4	Analytics	analytics
5	Business analytics	business-analytics
6	Machine Learning	machine-learning
7	Deep Learning	deep-learning
8	CNN	cnn
9	Analysis	analysis
10	Charts	charts
11	Big Data	big-data
12	DE	de
13	Neural network	neural-network
14	NLP	nlp
15	data	data
16	Big	big
18	learning	learning_1
19	deep	deep
21	machine	machine_1
22	Language	language
23	Processing	processing
24	Natural	natural
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 24, true);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	19	1
2	1	19	2
5	2	19	5
6	2	19	6
7	3	19	1
8	3	19	2
9	4	19	1
10	4	19	2
11	5	19	1
12	5	19	2
13	6	19	5
14	6	19	6
15	7	19	8
16	7	19	7
17	8	19	9
18	8	19	10
19	8	19	11
21	9	19	13
22	9	19	7
23	10	19	13
24	10	19	7
25	11	19	14
26	12	19	5
27	12	19	6
28	13	19	16
29	13	19	15
30	14	19	18
31	14	19	19
32	15	19	18
33	15	19	19
34	16	19	18
35	16	19	21
39	17	19	14
40	18	19	18
41	18	19	21
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 41, true);


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.testimonials (id, name, location, image, message, rating, created_on, updated_on) FROM stdin;
2	Narla Sameer Krishna	Sr. Machine Learning Engineer,  ATCS	/backend/media/utility_image/728514/6079958_1567775595_Untitled-1_05.jpg	I am an ML Engineer for a while now, and I visit Analytics steps on a regular basis for their interactive blogs and engaging user experience they provide. It’s a true pleasure to see the blogging experience change completely.	5	2019-09-06 13:12:57+00	\N
5	Toufiq Mohammed H.	Business Analyst, Rivigo	/backend/media/utility_image/5149453/9684363_1567775690_Untitled-1_09.png	I have been working as a Business Analyst for more than a year. Analytics Steps helped me to quickly learn and utilize the various tools and analytical techniques that are essential to any person starting out as an Analyst. They helped to cover the basics of Machine learning and some advanced stats, that has really helped me in my professional life.	5	2019-09-06 13:14:35+00	\N
6	Kunal Chakraborty	Data Scientist, Big MNC	/backend/media/utility_image/1720628/9243939_1567775714_Untitled-1_08.png	I visit analytics steps daily and it is without a doubt one of my core sources of machine learning education. \r\nThe blogs are great, the writing is lucid and the entire reading experience is enriching	5	2019-09-06 13:14:55+00	\N
9	Ankush Jindal	Co-founder, The Solar Labs	/backend/media/utility_image/8654510/9955194_1567775789_Untitled-1_10.png	All the current technological advancements explained in simple way in Analytics Steps with precision is icing on the cake for a tech geek like me, who used to be fed up information in rather prosaic way.	5	2019-09-06 13:16:12+00	\N
11	Sheetal Sharma	Senior Content Writer	/backend/media/utility_image/440568/1409111_1567775833_Untitled-1_01.png	I have been doing content writing since 2014, and I have to say that analytics steps has helped me create anything I envision. I am happy to recommend analytics steps to my contacts and followers.	5	2019-09-06 13:17:00+00	\N
1	Sayantini	Director, Code Flow Tech LLP	/backend/media/utility_image/5639811/9009019_1567775572_Untitled-1_06.png	I absolutely love the news section of your Website. The concise and yet detailed information lets us choose what to read and what not to. All the new technological advancements are mentioned here. Hats off to hardworking engineers and domain experts.	4	2019-09-06 13:12:04+00	\N
8	Deepika	NLP Consultant, EXL	/backend/media/utility_image/1960206/1926526_1567775768_Untitled-1_02.png	I started out as tech enthusiast and explored various blogs and websites. But, at Analytics Steps, I found my one-way route to the NLP world. A beautiful and informative space with blogs from the people of expertise.	4	2019-09-06 13:15:47+00	\N
10	Udit Bhan	Founder, Mentyor	/backend/media/utility_image/6913032/115973_1567775816_Untitled-1_07.png	I am a firm believer of the saying, “Read better to Act better”. Analytics steps is the team of engaging and expert people who are dedicated to quality and regular updating of the website.	4	2019-09-06 13:16:35+00	\N
7	Amrendra Kumar	Data scientist,Trunnek	/backend/media/utility_image/9481897/9414703_1567775742_Untitled-1_03.png	Analytics step is very helpful and informative all the time throughout my analytics carrier. The best thing about it is they cover every new things in field of Analytics in simplified manner.	5	2019-09-06 13:15:20+00	\N
4	Vilochana Maheshwari	Machine learning engineer, Quantiphi inc.	/backend/media/utility_image/8895708/2226057_1567775669_Untitled-1_04.png	I've been in the machine learning field for quite a few years now and I find Analytics Steps very\r\nhelpful and informative. Be it the fundamentals of ML engineer or the most advanced developments\r\nin the field, it covers everything in the most simplified manner. It's great to have a single platform to\r\nlook up for everything related to machine learning.	4	2019-09-06 13:14:10+00	\N
\.


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.testimonials_id_seq', 11, true);


--
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_profile (id, biography, highest_qualification, passing_year, college, university, created_on, updated_on, user_id, facebook_link, instagram_link, linkedin_link, twitter_link) FROM stdin;
33	test	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N
10		\N	\N	\N	\N	\N	\N	11	\N	\N	\N	\N
34		\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N
32	Relen she dbbdhdbdh dheh hehehhe dhdhjdjdRelen she dbbdhdbdh dheh hehehhe dhdhjdjdRelen she Relen she dbbdhdbdh dheh hehehhe Relen she dbbdhdbdh dheh hehehhe dhdhjdjddhdhjdjddbbdhdbdh dhRelen she dbbdhdbdh dheh hehehhe dhdhjdjdeh hehehhe dhdhjdjd	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N
48	Ratan is very hardworking...	\N	\N	\N	\N	\N	\N	31	\N	\N	\N	\N
12		\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N
13		\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N
131	I’ve always been enamored with the versatility of Python and its multifarious applications. Whether Machine Learning, Data Science or Web Applications, Python is the Zeus of the world of Programming.	\N	\N	\N	\N	\N	\N	57	\N	\N	https://www.linkedin.com/in/rahul-gupta-bbb35314b/	\N
96	\n\n\n	\N	\N	\N	\N	\N	\N	48	\N	\N	\N	\N
64		\N	\N	\N	\N	\N	\N	37	\N	\N	\N	\N
37	hihhhjhjhjh\n	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N
39	njhjhjh	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N
125		\N	\N	\N	\N	\N	\N	55	\N	\N	\N	\N
25		\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N
29		\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N
176	\N	\N	\N	\N	\N	\N	\N	74	\N	\N	\N	\N
177	\N	\N	\N	\N	\N	\N	\N	75	\N	\N	\N	\N
63		\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N
165		\N	\N	\N	\N	\N	\N	68	\N	\N	\N	\N
5	A enthusiastic Machine learning engineer, passion for creativity and enjoys experimenting with various techniques in multiple fields.	\N	\N	\N	\N	\N	\N	6	\N	\N	https://www.linkedin.com/in/ayush-gandhi-2572b796/	\N
6	A mathematics graduate keen to explore the world of machine learning.Always looking for new ways to improve processes using ML and AI.	\N	\N	\N	\N	\N	\N	7	\N	\N	https://www.linkedin.com/in/gaurav-pathak-630048130/	\N
4	A Masters in English Literature. Simply blogger by choice & sheer curiosity. When I need some space from this world I love to sit all alone and pen what my heart speaks to me.	\N	\N	\N	\N	\N	\N	5	\N	\N	https://www.linkedin.com/in/sheetal-sharma-a188aa157/	\N
1	\n\n\n	\N	\N	\N	\N	2019-09-06 11:42:14+00	2019-09-06 11:42:15+00	3	\N	\N	\N	\N
46		\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N
8	A versatile and creative technical writer intern in Analytics Steps. She has cross-functional experience in qualitative and quantitative analysis. She is focused and enthusiastic to achieve targets on time.	\N	\N	\N	\N	\N	\N	9	\N	\N	https://www.linkedin.com/in/neelam-tyagi-32011410b/	\N
15	assda	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N
95	\N	\N	\N	\N	\N	\N	\N	47	\N	\N	\N	\N
43	Tell me something that i should know...	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N
38	\n\n\n\n\n\n\n\n	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N
42	\n	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N
171	test	\N	\N	\N	\N	\N	\N	73	\N	\N	\N	\N
180		\N	\N	\N	\N	\N	\N	76	\N	\N	\N	\N
181	\N	\N	\N	\N	\N	\N	\N	77	\N	\N	\N	\N
99		\N	\N	\N	\N	\N	\N	49	\N	\N	\N	\N
78	My name is gogo..!!	\N	\N	\N	\N	\N	\N	40	\N	\N	\N	\N
183	\N	\N	\N	\N	\N	\N	\N	78	\N	\N	\N	\N
44	\n\n\n\n	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N
45	Hello all, Myself dinesh kumawat..!!\n	\N	\N	\N	\N	\N	\N	29	\N	\N	\N	\N
102		\N	\N	\N	\N	\N	\N	50	\N	\N	\N	\N
68		\N	\N	\N	\N	\N	\N	38	\N	\N	\N	\N
55	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N
190		\N	\N	\N	\N	\N	\N	80	\N	\N	\N	\N
191		\N	\N	\N	\N	\N	\N	81	\N	\N	\N	\N
187	Avinash claims words should be filled in the void of Knowledge and thus, he started writing on various topics that covers, all what is under Sun. His interests range from political pessimism to Technological scepticism.	\N	\N	\N	\N	\N	\N	79	\N	\N	https://www.linkedin.com/in/avinash-mishra-299a71134/	\N
200	\N	\N	\N	\N	\N	\N	\N	82	\N	\N	\N	\N
201	\N	\N	\N	\N	\N	\N	\N	83	\N	\N	\N	\N
203	\N	\N	\N	\N	\N	\N	\N	84	\N	\N	\N	\N
133	\N	\N	\N	\N	\N	\N	\N	59	\N	\N	\N	\N
84	teststts	\N	\N	\N	\N	\N	\N	42	\N	\N	\N	\N
205		\N	\N	\N	\N	\N	\N	85	\N	\N	\N	\N
118	null	\N	\N	\N	\N	\N	\N	52	\N	\N	\N	\N
167		\N	\N	\N	\N	\N	\N	70	\N	\N	\N	\N
89	null	\N	\N	\N	\N	\N	\N	44	\N	\N	\N	\N
90	null	\N	\N	\N	\N	\N	\N	45	\N	\N	\N	\N
57	tetststs\r\n	\N	\N	\N	\N	\N	\N	34	\N	\N	\N	\N
115	testing is important\ntesting is important\n\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\ntesting is important\n	\N	\N	\N	\N	\N	\N	51	\N	\N	\N	\N
121		\N	\N	\N	\N	\N	\N	53	\N	\N	\N	\N
166		\N	\N	\N	\N	\N	\N	69	\N	\N	\N	\N
132		\N	\N	\N	\N	\N	\N	58	\N	\N	\N	\N
72	test	\N	\N	\N	\N	\N	\N	39	\N	\N	\N	\N
137		\N	\N	\N	\N	\N	\N	60	\N	\N	\N	\N
168	\N	\N	\N	\N	\N	\N	\N	71	\N	\N	\N	\N
127	testing\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nhejeejehhdoahxodaqhohaohohoa	\N	\N	\N	\N	\N	\N	56	\N	\N	\N	\N
138	test	\N	\N	\N	\N	\N	\N	61	\N	\N	\N	\N
139		\N	\N	\N	\N	\N	\N	62	\N	\N	\N	\N
140		\N	\N	\N	\N	\N	\N	63	\N	\N	\N	\N
141		\N	\N	\N	\N	\N	\N	64	\N	\N	\N	\N
85	\n\n\n\n\n\n\n\n\n\n\n	\N	\N	\N	\N	\N	\N	43	\N	\N	\N	\N
159	\n\n\n\n	\N	\N	\N	\N	\N	\N	66	\N	\N	\N	\N
160	\n\n\n\n	\N	\N	\N	\N	\N	\N	67	\N	\N	\N	\N
3	A splendid and inventive Machine Learning Intern in Analytics Steps. He loves deploying data in ML and finds out different insights to play with industry trends.	\N	\N	\N	\N	\N	\N	4	\N	\N	https://www.linkedin.com/in/tanesh-balodi-70bbab17a	\N
9	Hello, mister, my name is gogo	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N
16		\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N
7	A learning enthusiast and open to learn new technologies. She has an extensive 3 year of experience in exploring data science and technical writing. Published research paper in IEEE on Cloud forensics.	\N	\N	\N	\N	\N	\N	8	\N	\N	http://linkedin.com/in/richa-grover-1b494361	\N
158	Hello my name is dinesh?	\N	\N	\N	\N	\N	\N	65	\N	\N	\N	\N
170	testing now...........................\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n	\N	\N	\N	\N	\N	\N	72	\N	\N	\N	\N
49	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N
\.


--
-- Name: user_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_profile_id_seq', 207, true);


--
-- Data for Name: user_read_blog; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_read_blog (id, percent_read, status, created_on, updated_on, blog_id, user_id) FROM stdin;
42	100	t	2019-09-09 06:52:52.522269+00	2019-09-19 10:57:13.118743+00	10	16
9	80	t	2019-09-07 08:19:13.38292+00	2019-09-19 06:38:14.127292+00	10	11
65	4	t	2019-09-09 17:30:13.354836+00	2019-09-09 17:30:46.629792+00	3	23
17	100	t	2019-09-08 13:38:47.601472+00	2019-09-13 10:06:18.686119+00	3	10
123	100	t	2019-09-11 04:18:05.703011+00	2019-09-20 05:51:11.775386+00	6	30
29	100	t	2019-09-09 05:24:37.642717+00	2019-09-09 11:30:09.891255+00	4	15
37	100	t	2019-09-09 06:35:38.898758+00	2019-09-19 11:13:57.730661+00	8	3
43	19	t	2019-09-09 07:02:31.185353+00	2019-09-09 07:02:47.201413+00	3	17
80	100	t	2019-09-10 05:33:06.126014+00	2019-09-10 05:37:03.78368+00	4	20
16	100	t	2019-09-07 14:15:05.976056+00	2019-09-07 14:18:02.104656+00	3	13
50	17	t	2019-09-09 15:02:50.571408+00	2019-09-09 15:05:23.966025+00	1	19
22	99	t	2019-09-08 15:31:13.749073+00	2019-09-08 15:31:20.645825+00	7	14
35	100	t	2019-09-09 06:19:23.716613+00	2019-09-09 06:19:30.10805+00	2	15
8	100	t	2019-09-07 08:17:45.310851+00	2019-09-18 10:20:56.238211+00	6	10
7	100	t	2019-09-07 08:14:33.1155+00	2019-09-13 08:43:48.620557+00	2	10
30	100	t	2019-09-09 05:30:31.720558+00	2019-09-09 05:30:54.291048+00	6	15
21	98	t	2019-09-08 15:30:36.393156+00	2019-09-08 15:30:41.692018+00	2	14
115	99	t	2019-09-11 02:53:06.179061+00	2019-09-11 02:53:24.326597+00	8	31
122	54	t	2019-09-11 04:16:21.869278+00	2019-09-11 05:14:13.640538+00	5	31
19	99	t	2019-09-08 15:29:28.186517+00	2019-09-08 15:31:48.809207+00	10	14
103	27	t	2019-09-10 13:03:43.527587+00	2019-09-10 13:04:09.968773+00	8	28
47	100	t	2019-09-09 14:39:04.433723+00	2019-09-13 10:29:37.613616+00	12	10
89	90	t	2019-09-10 06:42:06.48327+00	2019-09-10 06:42:08.237285+00	1	24
113	91	t	2019-09-10 22:40:56.323764+00	2019-09-11 05:41:42.590869+00	11	30
78	100	t	2019-09-10 05:20:03.494133+00	2019-09-10 05:20:26.604124+00	2	3
52	100	t	2019-09-09 15:09:00.945148+00	2019-09-10 10:52:04.608107+00	7	20
11	100	t	2019-09-07 08:59:54.447561+00	2019-09-19 04:58:08.056614+00	9	10
72	100	t	2019-09-10 04:46:30.235457+00	2019-09-10 04:47:12.295728+00	11	24
292	66	t	2019-09-13 10:33:40.572488+00	2019-09-13 10:46:09.808528+00	1	58
3	100	t	2019-09-07 08:10:06.700914+00	2019-09-18 12:36:10.463042+00	7	10
120	100	t	2019-09-11 04:11:14.785028+00	2019-09-18 11:51:33.21089+00	7	16
101	14	t	2019-09-10 12:20:22.212342+00	2019-09-10 12:20:23.286897+00	8	26
88	95	t	2019-09-10 06:34:58.125065+00	2019-09-10 06:38:46.994593+00	6	27
295	100	t	2019-09-13 11:37:09.745043+00	2019-09-13 11:51:12.360978+00	9	39
73	91	t	2019-09-10 04:53:52.218573+00	2019-09-10 05:37:02.793452+00	2	20
106	79	t	2019-09-10 13:05:34.009867+00	2019-09-10 13:06:31.683012+00	2	28
83	100	t	2019-09-10 05:44:00.904236+00	2019-09-18 10:19:57.656923+00	4	10
118	100	t	2019-09-11 04:05:37.871091+00	2019-09-20 11:15:23.277659+00	10	32
46	100	t	2019-09-09 11:48:53.59548+00	2019-09-09 11:48:53.65921+00	1	15
98	12	t	2019-09-10 12:19:20.849276+00	2019-09-10 12:19:28.277823+00	9	6
23	96	t	2019-09-08 15:32:14.008458+00	2019-09-08 15:32:21.398027+00	5	14
75	100	t	2019-09-10 05:09:25.273119+00	2019-09-10 05:09:42.006283+00	4	26
20	97	t	2019-09-08 15:29:41.384197+00	2019-09-08 15:29:43.677412+00	4	14
40	100	t	2019-09-09 06:47:41.930171+00	2019-09-19 10:32:46.943285+00	7	3
131	100	t	2019-09-11 04:48:00.424308+00	2019-09-26 10:53:56.894169+00	4	21
95	100	t	2019-09-10 11:43:16.870098+00	2019-09-10 11:44:00.435285+00	4	28
2	100	t	2019-09-07 08:09:23.234207+00	2019-09-18 10:03:29.697085+00	8	10
34	100	t	2019-09-09 06:14:20.81405+00	2019-09-19 11:15:20.40573+00	1	3
66	99	t	2019-09-09 19:05:16.782636+00	2019-09-19 07:22:20.352888+00	11	11
127	99	t	2019-09-11 04:22:50.740431+00	2019-09-19 11:44:06.633668+00	5	18
51	100	t	2019-09-09 15:04:57.211852+00	2019-09-10 04:57:23.702685+00	10	20
74	100	t	2019-09-10 04:56:39.240914+00	2019-09-10 04:56:44.638435+00	10	26
56	100	t	2019-09-09 15:18:30.126836+00	2019-09-11 04:53:45.546882+00	7	21
33	100	t	2019-09-09 05:32:09.297141+00	2019-09-09 05:40:27.704378+00	9	15
32	96	t	2019-09-09 05:31:45.849712+00	2019-09-09 05:31:47.080521+00	8	15
28	17	t	2019-09-09 05:20:41.796373+00	2019-09-09 11:39:26.82689+00	7	15
64	12	t	2019-09-09 17:28:59.491141+00	2019-09-09 17:30:08.340803+00	10	23
41	100	t	2019-09-09 06:49:41.619773+00	2019-09-19 07:03:55.27227+00	3	3
26	100	t	2019-09-09 05:03:57.417182+00	2019-09-19 07:17:58.656752+00	10	3
44	98	t	2019-09-09 11:43:02.494007+00	2019-09-09 11:43:04.916889+00	5	15
299	100	t	2019-09-13 12:05:34.466622+00	2019-09-13 12:05:35.596657+00	10	60
39	96	t	2019-09-09 06:47:28.123831+00	2019-09-19 07:17:47.657316+00	6	3
49	100	t	2019-09-09 15:02:49.273043+00	2019-09-09 15:06:54.988478+00	7	19
62	100	t	2019-09-09 17:24:19.714769+00	2019-09-11 11:30:42.402918+00	11	3
97	42	t	2019-09-10 11:45:46.623746+00	2019-09-10 11:45:46.80083+00	2	6
67	100	t	2019-09-10 04:24:48.002627+00	2019-09-10 05:03:09.898998+00	10	24
99	32	t	2019-09-10 12:19:28.424356+00	2019-09-10 13:01:29.840034+00	7	6
87	99	t	2019-09-10 06:14:27.047617+00	2019-09-10 10:40:25.80025+00	6	26
112	100	t	2019-09-10 22:40:36.974373+00	2019-09-21 10:12:12.40743+00	10	30
322	21	t	2019-09-16 08:46:07.206191+00	2019-09-19 06:14:18.118765+00	1	43
68	100	t	2019-09-10 04:36:24.381776+00	2019-09-10 04:37:57.811074+00	3	20
85	96	t	2019-09-10 06:03:00.56115+00	2019-09-16 10:06:08.060213+00	10	27
69	71	t	2019-09-10 04:38:39.443635+00	2019-09-10 10:58:19.516978+00	8	20
58	83	t	2019-09-09 15:30:00.550089+00	2019-09-10 11:18:41.890787+00	9	20
77	100	t	2019-09-10 05:15:18.773112+00	2019-09-10 06:47:16.896347+00	7	26
82	100	t	2019-09-10 05:33:39.457568+00	2019-09-10 05:33:42.834922+00	11	26
297	99	t	2019-09-13 12:04:44.34926+00	2019-09-13 12:24:51.781603+00	10	25
301	37	t	2019-09-13 12:14:59.988736+00	2019-09-20 11:37:12.31131+00	9	48
1	100	t	2019-09-07 08:09:03.529911+00	2019-09-19 05:13:16.010204+00	10	10
86	100	t	2019-09-10 06:08:09.859037+00	2019-09-10 06:08:12.17556+00	3	26
102	2	t	2019-09-10 12:58:46.062978+00	2019-09-10 13:01:22.202275+00	1	6
54	100	t	2019-09-09 15:09:58.165786+00	2019-09-10 05:32:41.750484+00	1	20
93	52	t	2019-09-10 11:40:54.198938+00	2019-09-10 11:41:42.093881+00	1	28
10	100	t	2019-09-07 08:26:26.245784+00	2019-09-10 11:46:18.391189+00	5	10
121	81	t	2019-09-11 04:14:46.608548+00	2019-09-25 11:33:20.854371+00	9	18
70	100	t	2019-09-10 04:46:17.848949+00	2019-09-10 10:52:48.532279+00	11	20
92	29	t	2019-09-10 11:32:58.163929+00	2019-09-10 11:41:52.252401+00	7	28
111	51	t	2019-09-10 16:11:33.881997+00	2019-09-10 16:14:18.341719+00	7	29
109	32	t	2019-09-10 16:10:15.636175+00	2019-09-10 16:11:19.479788+00	10	29
96	34	t	2019-09-10 11:45:20.82694+00	2019-09-10 11:45:46.592483+00	3	6
91	100	t	2019-09-10 08:28:22.87243+00	2019-09-10 08:38:48.857275+00	1	26
421	26	t	2019-09-24 10:56:59.604759+00	2019-09-25 09:55:20.639785+00	15	65
27	100	t	2019-09-09 05:18:01.981913+00	2019-09-19 11:53:03.597149+00	10	15
84	20	t	2019-09-10 05:46:36.151058+00	2019-09-10 10:38:23.7313+00	2	24
4	100	t	2019-09-07 08:13:27.725833+00	2019-09-18 10:02:36.712231+00	11	10
215	100	t	2019-09-11 11:50:37.480149+00	2019-09-18 10:05:39.840044+00	10	43
12	100	t	2019-09-07 10:22:26.404372+00	2019-09-19 05:11:54.143334+00	1	10
100	15	t	2019-09-10 12:19:51.995012+00	2019-09-10 12:26:36.262775+00	11	6
108	99	t	2019-09-10 13:09:43.484268+00	2019-09-10 13:09:44.065454+00	11	28
105	43	t	2019-09-10 13:04:23.558093+00	2019-09-10 13:04:25.211612+00	3	28
116	98	t	2019-09-11 03:04:54.060042+00	2019-09-11 03:06:01.919611+00	3	31
107	100	t	2019-09-10 13:08:27.594478+00	2019-09-10 13:08:29.560245+00	10	28
124	90	t	2019-09-11 04:19:30.731981+00	2019-09-19 11:49:24.452696+00	11	18
61	100	t	2019-09-09 15:31:17.782491+00	2019-09-26 10:52:07.886956+00	10	21
57	100	t	2019-09-09 15:20:13.253376+00	2019-09-26 10:53:27.402929+00	9	21
119	10	t	2019-09-11 04:09:41.553678+00	2019-09-11 04:21:47.299337+00	2	32
45	100	t	2019-09-09 11:43:53.042719+00	2019-09-25 11:30:46.767953+00	10	18
59	99	t	2019-09-09 15:31:02.294053+00	2019-09-26 10:53:46.10595+00	12	21
126	100	t	2019-09-11 04:21:47.309686+00	2019-09-11 04:22:12.211862+00	1	32
129	37	t	2019-09-11 04:44:03.258842+00	2019-09-11 04:46:41.21095+00	7	32
114	100	t	2019-09-11 02:51:16.87405+00	2019-09-11 04:56:31.160313+00	10	31
265	99	t	2019-09-13 07:25:32.816171+00	2019-09-13 10:08:28.096603+00	1	47
155	99	t	2019-09-11 05:34:06.262533+00	2019-09-11 11:37:58.057139+00	10	37
153	99	t	2019-09-11 05:33:21.910049+00	2019-09-11 10:27:07.618057+00	7	33
148	40	t	2019-09-11 05:31:44.196558+00	2019-09-11 05:31:44.868232+00	5	34
278	11	t	2019-09-13 08:31:43.494593+00	2019-09-13 09:46:22.981058+00	6	31
158	29	t	2019-09-11 05:35:11.42512+00	2019-09-11 05:35:18.712495+00	2	37
220	29	t	2019-09-11 11:54:22.808454+00	2019-09-18 05:26:20.388591+00	4	43
238	99	t	2019-09-12 07:26:19.123786+00	2019-09-12 11:25:46.882529+00	12	40
139	5	t	2019-09-11 05:11:25.890708+00	2019-09-11 06:29:43.404319+00	11	31
152	100	t	2019-09-11 05:33:11.098789+00	2019-09-11 05:36:57.121596+00	1	33
216	9	t	2019-09-11 11:52:07.115628+00	2019-09-11 11:52:08.698307+00	6	42
190	29	t	2019-09-11 11:04:23.369224+00	2019-09-12 07:05:31.376053+00	9	40
132	18	t	2019-09-11 04:49:28.086679+00	2019-09-11 05:21:44.471518+00	11	34
149	75	t	2019-09-11 05:32:14.674317+00	2019-09-11 11:29:21.340104+00	6	34
264	84	t	2019-09-13 06:58:04.060531+00	2019-09-13 07:14:43.599116+00	4	51
286	38	t	2019-09-13 09:05:52.297571+00	2019-09-13 09:47:43.776735+00	7	56
207	53	t	2019-09-11 11:39:23.064023+00	2019-09-11 11:45:35.395367+00	9	37
169	63	t	2019-09-11 06:18:25.161659+00	2019-09-13 11:45:41.840579+00	10	39
234	100	t	2019-09-11 15:58:04.470621+00	2019-09-18 09:12:08.148196+00	7	47
438	1	t	2019-09-30 08:26:58.712583+00	2019-09-30 11:29:38.201752+00	4	59
235	100	t	2019-09-11 17:08:23.320218+00	2019-09-25 08:38:52.992822+00	1	48
145	100	t	2019-09-11 05:27:18.318518+00	2019-09-11 05:37:38.192433+00	10	36
240	100	t	2019-09-12 10:24:06.025707+00	2019-09-25 08:38:51.117383+00	7	48
171	100	t	2019-09-11 06:37:02.79855+00	2019-09-24 08:14:37.887876+00	7	18
143	100	t	2019-09-11 05:26:59.39754+00	2019-09-11 05:29:18.546456+00	1	34
136	36	t	2019-09-11 04:55:11.379286+00	2019-09-11 05:23:37.07169+00	7	34
154	46	t	2019-09-11 05:33:59.181065+00	2019-09-11 10:27:28.437569+00	4	33
426	100	t	2019-09-25 11:30:26.283031+00	2019-09-25 11:35:38.492749+00	16	18
146	22	t	2019-09-11 05:29:45.896421+00	2019-09-11 05:29:53.924363+00	3	34
221	100	t	2019-09-11 11:54:44.317108+00	2019-09-16 06:32:11.8939+00	8	43
293	5	t	2019-09-13 10:50:26.669896+00	2019-09-13 10:50:30.616007+00	7	58
188	39	t	2019-09-11 11:03:15.389445+00	2019-09-11 11:03:20.881323+00	11	40
156	41	t	2019-09-11 05:34:17.76458+00	2019-09-11 05:34:31.350776+00	11	37
243	59	t	2019-09-12 11:56:55.670876+00	2019-09-12 11:57:59.22813+00	11	50
428	1	t	2019-09-25 15:53:58.561199+00	2019-09-25 15:53:58.583193+00	15	71
160	100	t	2019-09-11 05:42:50.577037+00	2019-09-11 05:43:41.370816+00	7	36
226	98	t	2019-09-11 11:59:17.561052+00	2019-09-19 06:01:36.551203+00	7	43
219	75	t	2019-09-11 11:54:11.02676+00	2019-09-18 05:22:14.341877+00	11	43
137	100	t	2019-09-11 04:56:47.235375+00	2019-09-11 04:56:50.971792+00	1	31
168	12	t	2019-09-11 06:01:16.162517+00	2019-09-11 06:18:06.222197+00	7	37
246	98	t	2019-09-12 16:30:19.085845+00	2019-09-18 09:11:38.848047+00	11	47
142	100	t	2019-09-11 05:22:36.761963+00	2019-09-11 05:25:30.773066+00	10	34
236	100	t	2019-09-11 17:14:23.357189+00	2019-09-18 18:06:36.695652+00	10	48
233	100	t	2019-09-11 15:57:47.947818+00	2019-09-18 09:11:58.900068+00	10	47
203	50	t	2019-09-11 11:34:52.122036+00	2019-09-11 11:35:23.010548+00	12	37
147	46	t	2019-09-11 05:30:09.786722+00	2019-09-11 05:30:20.992954+00	9	34
162	87	t	2019-09-11 05:43:08.206063+00	2019-09-19 11:11:58.356513+00	1	30
179	95	t	2019-09-11 10:47:04.514915+00	2019-09-11 10:47:05.310411+00	11	33
245	100	t	2019-09-12 15:40:24.29582+00	2019-09-12 15:40:32.47498+00	2	47
430	99	t	2019-09-26 06:11:18.841802+00	2019-09-26 06:15:27.40872+00	7	71
159	95	t	2019-09-11 05:37:22.157086+00	2019-09-11 10:47:05.35707+00	2	33
172	100	t	2019-09-11 09:39:56.404463+00	2019-09-21 12:39:05.766156+00	7	30
432	100	t	2019-09-28 13:20:53.21031+00	2019-09-29 05:51:51.914994+00	17	65
239	99	t	2019-09-12 09:19:52.550604+00	2019-09-18 18:08:52.252079+00	3	48
157	87	t	2019-09-11 05:34:19.56274+00	2019-09-11 05:39:23.530561+00	12	33
206	22	t	2019-09-11 11:38:45.17371+00	2019-09-11 11:39:12.838924+00	1	37
163	100	t	2019-09-11 05:48:47.783855+00	2019-09-11 06:57:15.382702+00	11	38
285	36	t	2019-09-13 09:05:49.717586+00	2019-09-13 09:23:17.215441+00	11	56
175	58	t	2019-09-11 10:24:21.876685+00	2019-09-11 10:25:45.075862+00	4	36
173	34	t	2019-09-11 10:20:38.408843+00	2019-09-11 10:24:02.609225+00	1	36
151	17	t	2019-09-11 05:32:58.081145+00	2019-09-11 05:37:51.841483+00	10	33
178	98	t	2019-09-11 10:27:28.591513+00	2019-09-11 10:30:05.139248+00	6	33
224	97	t	2019-09-11 11:58:48.828738+00	2019-09-19 12:58:21.766877+00	4	30
436	1	t	2019-09-30 08:26:24.456706+00	2019-09-30 11:29:34.066051+00	17	59
437	1	t	2019-09-30 08:26:38.017733+00	2019-09-30 11:29:40.138774+00	16	59
422	100	t	2019-09-24 11:30:56.494654+00	2019-09-30 11:29:42.181721+00	15	59
174	99	t	2019-09-11 10:24:11.386607+00	2019-09-11 10:26:11.052572+00	5	36
187	68	t	2019-09-11 11:02:26.661644+00	2019-09-11 11:02:54.774934+00	1	40
185	100	t	2019-09-11 11:00:47.84271+00	2019-09-12 11:21:58.48375+00	10	40
201	21	t	2019-09-11 11:27:15.839186+00	2019-09-19 11:02:43.914538+00	1	16
213	31	t	2019-09-11 11:49:32.13211+00	2019-09-11 11:49:42.595299+00	1	42
441	24	t	2019-10-01 10:42:38.028273+00	2019-10-01 10:42:49.94177+00	18	40
435	1	t	2019-09-30 05:03:07.640143+00	2019-10-01 10:48:54.33075+00	16	57
439	100	t	2019-10-01 10:19:00.301323+00	2019-10-01 11:28:05.4854+00	18	21
237	100	t	2019-09-12 07:06:25.695645+00	2019-09-12 11:30:21.91702+00	3	40
230	98	t	2019-09-11 15:29:14.820225+00	2019-09-11 15:29:25.336639+00	7	17
211	14	t	2019-09-11 11:49:19.868379+00	2019-09-11 11:49:24.427277+00	4	42
228	6	t	2019-09-11 12:15:25.19539+00	2019-09-11 12:15:25.324167+00	1	44
208	14	t	2019-09-11 11:48:12.191889+00	2019-09-11 11:48:40.798936+00	10	42
210	25	t	2019-09-11 11:48:18.027127+00	2019-09-11 11:49:24.551412+00	7	42
214	26	t	2019-09-11 11:50:30.12415+00	2019-09-11 11:50:45.726542+00	9	42
204	60	t	2019-09-11 11:34:57.522268+00	2019-09-11 11:35:35.418742+00	4	37
232	98	t	2019-09-11 15:29:35.831489+00	2019-09-11 15:29:36.738887+00	4	17
186	94	t	2019-09-11 11:01:04.318728+00	2019-09-12 12:58:33.997688+00	7	40
231	98	t	2019-09-11 15:29:34.611671+00	2019-09-11 15:29:35.375876+00	11	17
223	100	t	2019-09-11 11:55:22.790469+00	2019-09-11 11:55:24.232879+00	5	43
191	40	t	2019-09-11 11:04:26.303941+00	2019-09-12 07:05:08.839051+00	6	40
189	29	t	2019-09-11 11:03:35.154734+00	2019-09-13 04:24:42.064803+00	8	40
217	100	t	2019-09-11 11:52:24.253689+00	2019-09-11 12:21:10.142626+00	11	42
229	100	t	2019-09-11 12:15:25.809523+00	2019-09-11 12:15:51.601919+00	11	44
242	99	t	2019-09-12 11:42:26.893325+00	2019-09-12 11:44:08.28873+00	10	50
255	98	t	2019-09-13 06:02:58.016745+00	2019-09-13 08:23:27.085654+00	10	51
244	64	t	2019-09-12 12:00:43.245194+00	2019-09-13 04:23:48.530315+00	4	40
267	16	t	2019-09-13 07:29:52.216736+00	2019-09-13 08:31:23.144029+00	2	31
256	100	t	2019-09-13 06:02:59.206465+00	2019-09-13 06:04:57.986902+00	11	51
263	100	t	2019-09-13 06:46:21.561205+00	2019-09-13 06:46:29.37196+00	10	52
262	11	t	2019-09-13 06:41:36.127129+00	2019-09-13 06:41:46.895297+00	8	51
260	83	t	2019-09-13 06:41:29.400817+00	2019-09-13 06:58:12.507854+00	2	51
271	13	t	2019-09-13 08:11:39.648326+00	2019-09-13 08:23:11.00123+00	7	52
273	28	t	2019-09-13 08:17:16.9986+00	2019-09-13 08:24:49.608547+00	4	52
275	49	t	2019-09-13 08:23:29.35139+00	2019-09-13 08:23:55.133092+00	3	52
276	21	t	2019-09-13 08:24:49.730438+00	2019-09-13 08:25:01.115749+00	2	52
257	35	t	2019-09-13 06:03:04.747208+00	2019-09-13 08:27:10.288538+00	1	51
277	100	t	2019-09-13 08:25:08.474825+00	2019-09-13 08:25:16.875321+00	1	52
258	100	t	2019-09-13 06:05:49.8597+00	2019-09-13 08:33:19.555259+00	12	51
280	6	t	2019-09-13 08:32:53.290934+00	2019-09-13 08:33:14.363377+00	7	51
287	49	t	2019-09-13 09:09:04.63429+00	2019-09-13 09:23:51.500158+00	1	56
288	21	t	2019-09-13 09:18:28.564219+00	2019-09-13 09:28:51.847187+00	2	56
283	100	t	2019-09-13 09:01:50.340145+00	2019-09-13 09:22:50.381709+00	10	56
356	31	t	2019-09-19 07:01:03.904599+00	2019-09-19 07:08:24.815958+00	11	67
312	11	t	2019-09-13 12:45:04.760541+00	2019-09-20 11:26:24.575493+00	10	64
336	25	t	2019-09-19 06:39:36.30033+00	2019-09-19 06:56:31.367445+00	7	4
347	100	t	2019-09-19 06:52:23.184018+00	2019-09-19 07:05:16.038231+00	13	67
372	100	t	2019-09-19 11:49:33.677806+00	2019-09-19 11:57:51.976819+00	13	18
364	14	t	2019-09-19 10:09:09.590534+00	2019-09-19 10:09:11.738849+00	4	3
348	100	t	2019-09-19 06:53:01.65962+00	2019-09-19 07:06:09.156258+00	4	67
307	32	t	2019-09-13 12:34:45.140164+00	2019-09-13 12:34:55.627839+00	5	25
308	4	t	2019-09-13 12:39:06.895024+00	2019-09-13 12:39:22.818941+00	10	62
315	100	t	2019-09-13 12:47:07.52672+00	2019-09-13 12:47:47.037178+00	9	64
389	100	t	2019-09-20 09:34:52.961363+00	2019-09-28 12:20:31.993832+00	13	21
324	24	t	2019-09-17 04:21:06.689456+00	2019-09-19 11:58:09.323411+00	11	59
338	100	t	2019-09-19 06:46:29.60636+00	2019-09-20 08:42:59.229273+00	13	65
305	61	t	2019-09-13 12:27:33.496584+00	2019-09-13 12:35:50.152234+00	11	25
306	41	t	2019-09-13 12:33:12.786904+00	2019-09-13 12:33:25.090983+00	1	25
339	94	t	2019-09-19 06:46:47.077147+00	2019-09-19 16:17:53.993153+00	3	65
402	31	t	2019-09-20 11:25:47.866248+00	2019-09-20 11:26:13.284736+00	14	64
379	2	t	2019-09-19 12:43:06.193087+00	2019-09-19 12:58:23.727771+00	4	69
316	24	t	2019-09-14 03:23:41.303371+00	2019-09-14 06:53:47.22446+00	11	57
353	12	t	2019-09-19 06:57:34.182581+00	2019-09-19 06:59:47.998864+00	9	67
291	100	t	2019-09-13 10:27:54.125219+00	2019-09-13 10:39:42.141132+00	10	58
296	26	t	2019-09-13 11:50:56.977159+00	2019-09-13 11:51:19.650055+00	2	39
369	99	t	2019-09-19 11:31:10.719119+00	2019-09-19 11:31:18.159845+00	6	65
388	93	t	2019-09-20 09:34:52.864749+00	2019-09-20 09:42:12.133513+00	2	21
376	100	t	2019-09-19 12:41:13.321048+00	2019-09-19 12:58:24.64636+00	13	69
370	75	t	2019-09-19 11:49:04.679759+00	2019-09-19 11:49:07.871833+00	1	18
344	100	t	2019-09-19 06:48:38.555778+00	2019-09-25 09:55:31.919639+00	9	65
310	3	t	2019-09-13 12:39:39.346796+00	2019-09-13 12:42:01.266708+00	11	62
300	8	t	2019-09-13 12:13:21.624236+00	2019-09-13 12:15:29.190832+00	10	61
323	47	t	2019-09-16 10:06:32.860764+00	2019-09-16 10:06:34.924712+00	9	27
401	95	t	2019-09-20 11:07:21.678269+00	2019-09-20 11:15:23.267183+00	14	32
393	100	t	2019-09-20 10:10:31.307705+00	2019-09-20 11:29:32.249296+00	4	72
390	90	t	2019-09-20 09:38:51.778497+00	2019-09-20 09:40:26.871963+00	8	21
325	100	t	2019-09-17 04:24:59.844331+00	2019-10-01 11:04:41.064299+00	10	59
351	45	t	2019-09-19 06:54:25.621204+00	2019-09-19 07:00:32.093693+00	6	67
387	99	t	2019-09-20 09:24:40.938627+00	2019-09-26 10:54:20.965837+00	14	21
349	85	t	2019-09-19 06:53:11.745545+00	2019-09-19 07:00:51.395249+00	10	67
270	4	t	2019-09-13 07:35:28.89406+00	2019-09-14 03:18:44.335591+00	9	31
352	100	t	2019-09-19 06:56:47.563029+00	2019-09-19 06:56:49.573391+00	13	4
354	41	t	2019-09-19 06:57:40.564484+00	2019-09-19 06:59:03.40057+00	8	67
329	5	t	2019-09-18 11:10:26.382852+00	2019-10-01 11:04:40.772407+00	8	59
330	100	t	2019-09-18 11:14:34.811313+00	2019-09-19 05:13:08.561387+00	13	10
394	100	t	2019-09-20 10:11:37.354117+00	2019-09-20 10:13:28.364059+00	8	72
290	15	t	2019-09-13 09:34:18.637235+00	2019-09-13 09:47:27.23556+00	9	56
328	98	t	2019-09-18 09:58:33.192156+00	2019-10-01 10:22:03.077171+00	1	21
303	11	t	2019-09-13 12:15:51.803574+00	2019-09-13 12:15:52.72355+00	7	61
298	62	t	2019-09-13 12:05:01.151849+00	2019-09-13 12:24:33.713026+00	7	25
359	100	t	2019-09-19 07:20:07.563932+00	2019-09-29 05:45:58.601259+00	1	65
415	100	t	2019-09-24 05:26:35.75169+00	2019-09-25 11:33:20.65254+00	14	18
368	100	t	2019-09-19 11:02:50.179963+00	2019-09-19 12:58:20.836119+00	13	16
342	10	t	2019-09-19 06:48:35.042264+00	2019-09-19 06:49:37.185185+00	1	66
381	1	t	2019-09-19 12:45:02.287411+00	2019-09-19 12:45:03.26326+00	4	70
294	98	t	2019-09-13 11:22:17.480858+00	2019-09-19 11:14:48.403048+00	4	16
367	51	t	2019-09-19 10:54:37.699754+00	2019-09-19 11:02:39.735064+00	2	16
366	100	t	2019-09-19 10:41:36.32994+00	2019-09-19 12:45:09.44958+00	2	65
318	20	t	2019-09-14 07:43:50.93196+00	2019-09-14 07:47:08.484161+00	7	57
321	6	t	2019-09-15 14:40:54.902232+00	2019-09-15 14:40:54.90521+00	3	47
371	95	t	2019-09-19 11:49:22.30551+00	2019-09-24 11:31:27.18391+00	13	59
333	100	t	2019-09-19 05:27:52.090456+00	2019-09-19 06:01:48.159941+00	13	43
360	22	t	2019-09-19 07:21:21.574063+00	2019-09-29 10:22:37.009569+00	1	11
327	100	t	2019-09-17 09:53:57.686544+00	2019-09-30 08:26:49.539128+00	7	59
355	21	t	2019-09-19 06:57:46.659333+00	2019-09-19 06:59:28.836304+00	2	67
406	4	t	2019-09-20 12:49:33.588343+00	2019-09-23 08:18:30.751686+00	1	73
391	100	t	2019-09-20 10:09:45.264415+00	2019-09-20 11:01:23.944653+00	14	72
337	100	t	2019-09-19 06:43:19.776816+00	2019-09-19 15:39:35.369839+00	13	11
377	5	t	2019-09-19 12:42:40.2061+00	2019-09-19 12:58:21.142801+00	10	69
335	100	t	2019-09-19 06:39:13.092329+00	2019-09-19 07:02:15.961176+00	1	4
350	90	t	2019-09-19 06:54:21.723453+00	2019-09-19 07:02:51.675225+00	7	67
374	100	t	2019-09-19 12:01:08.460561+00	2019-09-19 12:20:59.416825+00	4	18
362	29	t	2019-09-19 08:24:44.760149+00	2019-09-20 12:24:18.296816+00	8	65
373	99	t	2019-09-19 11:52:28.320851+00	2019-09-19 11:59:39.046993+00	13	15
357	1	t	2019-09-19 07:06:56.920291+00	2019-09-19 07:06:56.988897+00	3	67
282	81	t	2019-09-13 08:54:48.608988+00	2019-09-19 12:59:15.207074+00	12	30
358	1	t	2019-09-19 07:08:27.825029+00	2019-09-19 10:32:46.568477+00	1	67
332	20	t	2019-09-18 11:48:59.626887+00	2019-09-19 13:06:06.246982+00	13	3
403	1	t	2019-09-20 11:37:10.257947+00	2019-09-25 08:39:10.358777+00	11	48
340	100	t	2019-09-19 06:47:07.214301+00	2019-09-24 09:05:58.98327+00	10	65
365	11	t	2019-09-19 10:34:50.12602+00	2019-09-19 11:47:37.796019+00	7	65
398	98	t	2019-09-20 10:51:24.438075+00	2019-09-21 09:16:50.286447+00	14	30
375	29	t	2019-09-19 12:07:25.563548+00	2019-09-19 15:39:35.941367+00	3	11
341	100	t	2019-09-19 06:48:11.045041+00	2019-09-19 12:19:47.537021+00	13	66
380	16	t	2019-09-19 12:44:47.20178+00	2019-09-19 12:47:15.652723+00	13	70
361	4	t	2019-09-19 07:21:44.351537+00	2019-09-19 15:39:36.085427+00	7	11
317	100	t	2019-09-14 07:23:27.128371+00	2019-10-01 10:49:17.736307+00	10	57
378	3	t	2019-09-19 12:42:57.920337+00	2019-09-19 12:58:22.090289+00	1	69
400	100	t	2019-09-20 11:01:53.426796+00	2019-09-20 11:08:37.44892+00	5	72
334	100	t	2019-09-19 05:47:29.594428+00	2019-09-25 08:39:08.542195+00	13	48
411	100	t	2019-09-23 05:08:02.456837+00	2019-09-23 08:18:31.761905+00	2	73
314	32	t	2019-09-13 12:45:13.327146+00	2019-09-20 11:26:17.998612+00	7	64
392	100	t	2019-09-20 10:09:54.395148+00	2019-09-20 11:01:39.446066+00	7	72
396	100	t	2019-09-20 10:22:57.547103+00	2019-09-20 11:04:35.048686+00	11	72
399	47	t	2019-09-20 10:52:33.332436+00	2019-09-20 10:53:19.600826+00	2	72
384	63	t	2019-09-19 15:39:59.432567+00	2019-09-21 10:12:14.93723+00	9	30
397	100	t	2019-09-20 10:48:45.571693+00	2019-09-20 11:13:48.904457+00	13	72
395	100	t	2019-09-20 10:20:14.577053+00	2019-09-20 11:29:47.885208+00	1	72
383	100	t	2019-09-19 13:07:32.384597+00	2019-09-20 11:37:17.96867+00	8	48
405	1	t	2019-09-20 12:49:33.50483+00	2019-09-20 12:49:52.738781+00	4	73
404	100	t	2019-09-20 11:54:27.196451+00	2019-09-20 12:52:31.498863+00	14	73
407	99	t	2019-09-20 13:18:28.713595+00	2019-09-20 13:18:30.745313+00	14	48
423	100	t	2019-09-25 08:38:35.045119+00	2019-09-25 08:38:48.937756+00	2	48
408	100	t	2019-09-20 13:55:45.047062+00	2019-09-20 14:03:26.350708+00	11	71
409	18	t	2019-09-21 12:30:16.285866+00	2019-09-21 12:30:19.013706+00	4	74
410	100	t	2019-09-21 12:30:23.028399+00	2019-09-21 12:32:01.021299+00	14	74
363	100	t	2019-09-19 09:10:29.105747+00	2019-09-21 12:39:05.746375+00	13	30
346	96	t	2019-09-19 06:50:22.836834+00	2019-09-25 09:55:43.647669+00	4	65
386	18	t	2019-09-20 08:57:46.141643+00	2019-09-24 09:05:47.162292+00	14	65
412	14	t	2019-09-23 12:21:34.796279+00	2019-09-23 12:25:30.851577+00	14	76
413	35	t	2019-09-23 12:22:11.968411+00	2019-09-23 12:22:42.095411+00	4	76
414	44	t	2019-09-23 12:22:23.663034+00	2019-09-23 12:22:40.846288+00	7	76
382	1	t	2019-09-19 13:06:10.395167+00	2019-09-25 08:38:55.257638+00	4	48
345	99	t	2019-09-19 06:49:48.96276+00	2019-09-25 09:55:28.418456+00	11	65
385	100	t	2019-09-19 16:12:15.95426+00	2019-09-26 06:11:18.045402+00	13	71
461	52	t	2019-10-01 10:54:10.601151+00	2019-10-01 10:54:32.071984+00	11	83
462	1	t	2019-10-01 11:03:56.413781+00	2019-10-01 11:03:56.413817+00	18	85
463	1	t	2019-10-01 11:04:02.876776+00	2019-10-01 11:04:02.8768+00	10	85
464	1	t	2019-10-01 11:04:05.629651+00	2019-10-01 11:04:05.629675+00	7	85
465	1	t	2019-10-01 11:04:09.091812+00	2019-10-01 11:04:09.091836+00	1	85
466	1	t	2019-10-01 11:04:12.416813+00	2019-10-01 11:04:12.416837+00	4	85
455	100	t	2019-10-01 10:47:25.822348+00	2019-10-01 10:47:59.099699+00	16	83
419	97	t	2019-09-24 10:29:35.157622+00	2019-09-25 10:00:39.267896+00	15	21
456	1	t	2019-10-01 10:48:46.528307+00	2019-10-01 10:48:46.52833+00	17	57
425	96	t	2019-09-25 09:58:08.085331+00	2019-09-25 11:33:21.056571+00	16	21
457	1	t	2019-10-01 10:48:59.216031+00	2019-10-01 10:48:59.216054+00	15	57
458	1	t	2019-10-01 10:49:04.687599+00	2019-10-01 10:49:04.687622+00	14	57
459	1	t	2019-10-01 10:49:12.285142+00	2019-10-01 10:49:12.285166+00	13	57
418	1	t	2019-09-24 09:13:43.09668+00	2019-09-24 09:13:43.096704+00	13	78
460	1	t	2019-10-01 10:49:22.789228+00	2019-10-01 10:49:22.789252+00	18	57
429	100	t	2019-09-26 06:08:14.208311+00	2019-09-26 06:10:39.435135+00	10	71
433	38	t	2019-09-29 10:21:58.326129+00	2019-09-29 10:22:02.350829+00	16	11
471	100	t	2019-10-01 11:04:31.645009+00	2019-10-01 11:04:42.318249+00	8	85
447	100	t	2019-10-01 10:45:45.656344+00	2019-10-01 10:46:38.070766+00	17	83
442	100	t	2019-10-01 10:43:43.571788+00	2019-10-01 10:43:49.602359+00	18	82
449	1	t	2019-10-01 10:45:51.36932+00	2019-10-01 10:45:51.369336+00	14	84
467	3	t	2019-10-01 11:04:15.073592+00	2019-10-01 11:04:19.041569+00	14	85
468	1	t	2019-10-01 11:04:19.277495+00	2019-10-01 11:04:19.277516+00	11	85
444	19	t	2019-10-01 10:45:35.039482+00	2019-10-01 10:45:37.88922+00	18	84
445	1	t	2019-10-01 10:45:39.461692+00	2019-10-01 10:45:39.461715+00	17	84
469	1	t	2019-10-01 11:04:24.301467+00	2019-10-01 11:04:24.30149+00	13	85
434	100	t	2019-09-29 18:37:17.974966+00	2019-09-29 18:45:04.055347+00	17	71
416	100	t	2019-09-24 05:29:44.489657+00	2019-09-30 08:26:30.790819+00	14	59
417	99	t	2019-09-24 05:30:17.370683+00	2019-09-30 11:29:34.173402+00	1	59
452	5	t	2019-10-01 10:46:48.433232+00	2019-10-01 10:46:49.467274+00	1	84
453	1	t	2019-10-01 10:46:53.037199+00	2019-10-01 10:46:53.037222+00	4	84
454	1	t	2019-10-01 10:46:56.631518+00	2019-10-01 10:46:56.631542+00	7	84
451	1	t	2019-10-01 10:46:22.241558+00	2019-10-01 10:47:01.245185+00	10	84
470	4	t	2019-10-01 11:04:26.974448+00	2019-10-01 11:04:31.446263+00	3	85
446	1	t	2019-10-01 10:45:43.514163+00	2019-10-01 10:47:04.006034+00	16	84
431	54	t	2019-09-28 11:10:10.664517+00	2019-09-28 17:13:19.119165+00	14	81
424	62	t	2019-09-25 09:55:11.330834+00	2019-09-29 05:45:58.358991+00	16	65
443	100	t	2019-10-01 10:45:07.140202+00	2019-10-01 10:47:25.623339+00	18	83
427	100	t	2019-09-25 15:50:01.530626+00	2019-09-26 06:04:19.499987+00	16	71
420	100	t	2019-09-24 10:31:19.572545+00	2019-09-24 10:32:21.357992+00	15	18
472	4	t	2019-10-01 11:04:42.511732+00	2019-10-01 11:04:45.999929+00	16	85
448	1	t	2019-10-01 10:45:47.490001+00	2019-10-01 10:45:47.490023+00	15	84
440	7	t	2019-10-01 10:20:16.697581+00	2019-10-01 10:20:17.678649+00	18	65
450	1	t	2019-10-01 10:45:55.100355+00	2019-10-01 10:45:55.100378+00	13	84
\.


--
-- Name: user_read_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.user_read_blog_id_seq', 472, true);


--
-- Name: advertisements_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.advertisements
    ADD CONSTRAINT advertisements_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: blog_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_categories
    ADD CONSTRAINT blog_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_categories_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_categories
    ADD CONSTRAINT blog_categories_slug_key UNIQUE (slug);


--
-- Name: blog_reactions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_reactions
    ADD CONSTRAINT blog_reactions_pkey PRIMARY KEY (id);


--
-- Name: blog_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_requests
    ADD CONSTRAINT blog_requests_pkey PRIMARY KEY (id);


--
-- Name: blogs_category_blogpost_id_blogcategory_id_fe289cb4_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs_category
    ADD CONSTRAINT blogs_category_blogpost_id_blogcategory_id_fe289cb4_uniq UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blogs_category_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs_category
    ADD CONSTRAINT blogs_category_pkey PRIMARY KEY (id);


--
-- Name: blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: blogs_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_slug_key UNIQUE (slug);


--
-- Name: career_leads_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.career_leads
    ADD CONSTRAINT career_leads_pkey PRIMARY KEY (id);


--
-- Name: comment_reactions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comment_reactions
    ADD CONSTRAINT comment_reactions_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: job_openings_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.job_openings
    ADD CONSTRAINT job_openings_pkey PRIMARY KEY (id);


--
-- Name: news_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_pkey PRIMARY KEY (id);


--
-- Name: news_categories_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_slug_key UNIQUE (slug);


--
-- Name: news_category_news_id_newscategory_id_e630e556_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_news_id_newscategory_id_e630e556_uniq UNIQUE (news_id, newscategory_id);


--
-- Name: news_category_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_pkey PRIMARY KEY (id);


--
-- Name: news_newslettersubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_newslettersubscription
    ADD CONSTRAINT news_newslettersubscription_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association_server_url_handle_078befa2_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);


--
-- Name: social_auth_code_email_code_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);


--
-- Name: social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce_server_url_timestamp_salt_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- Name: social_auth_partial_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth_provider_uid_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: user_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (id);


--
-- Name: user_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_user_id_key UNIQUE (user_id);


--
-- Name: user_read_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_read_blog
    ADD CONSTRAINT user_read_blog_pkey PRIMARY KEY (id);


--
-- Name: user_read_blog_user_id_blog_id_e69d1e0a_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_read_blog
    ADD CONSTRAINT user_read_blog_user_id_blog_id_e69d1e0a_uniq UNIQUE (user_id, blog_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: blog_categories_parent_id_6f46ebde; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blog_categories_parent_id_6f46ebde ON public.blog_categories USING btree (parent_id);


--
-- Name: blog_categories_slug_b3eb2d7a_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blog_categories_slug_b3eb2d7a_like ON public.blog_categories USING btree (slug varchar_pattern_ops);


--
-- Name: blog_reactions_blog_id_cc44e73a; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blog_reactions_blog_id_cc44e73a ON public.blog_reactions USING btree (blog_id);


--
-- Name: blog_reactions_user_id_57a8b9c8; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blog_reactions_user_id_57a8b9c8 ON public.blog_reactions USING btree (user_id);


--
-- Name: blog_requests_user_id_f3e35629; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blog_requests_user_id_f3e35629 ON public.blog_requests USING btree (user_id);


--
-- Name: blogs_category_blogcategory_id_0753378a; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blogs_category_blogcategory_id_0753378a ON public.blogs_category USING btree (blogcategory_id);


--
-- Name: blogs_category_blogpost_id_c0ccce76; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blogs_category_blogpost_id_c0ccce76 ON public.blogs_category USING btree (blogpost_id);


--
-- Name: blogs_created_by_id_642683e0; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blogs_created_by_id_642683e0 ON public.blogs USING btree (created_by_id);


--
-- Name: blogs_slug_cb667366_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blogs_slug_cb667366_like ON public.blogs USING btree (slug varchar_pattern_ops);


--
-- Name: blogs_updated_by_id_b79569f6; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX blogs_updated_by_id_b79569f6 ON public.blogs USING btree (updated_by_id);


--
-- Name: comment_reactions_comment_id_87c59446; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX comment_reactions_comment_id_87c59446 ON public.comment_reactions USING btree (comment_id);


--
-- Name: comment_reactions_user_id_de8dbdab; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX comment_reactions_user_id_de8dbdab ON public.comment_reactions USING btree (user_id);


--
-- Name: comments_blog_id_9618bb05; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX comments_blog_id_9618bb05 ON public.comments USING btree (blog_id);


--
-- Name: comments_parent_id_d317363b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX comments_parent_id_d317363b ON public.comments USING btree (parent_id);


--
-- Name: comments_user_id_b8fd0b64; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX comments_user_id_b8fd0b64 ON public.comments USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: news_categories_parent_id_97f2e294; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX news_categories_parent_id_97f2e294 ON public.news_categories USING btree (parent_id);


--
-- Name: news_categories_slug_0500f19f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX news_categories_slug_0500f19f_like ON public.news_categories USING btree (slug varchar_pattern_ops);


--
-- Name: news_category_news_id_9b186847; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX news_category_news_id_9b186847 ON public.news_category USING btree (news_id);


--
-- Name: news_category_newscategory_id_04e9614d; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX news_category_newscategory_id_04e9614d ON public.news_category USING btree (newscategory_id);


--
-- Name: social_auth_code_code_a2393167; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);


--
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);


--
-- Name: social_auth_code_timestamp_176b341f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");


--
-- Name: social_auth_partial_timestamp_50f2119f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");


--
-- Name: social_auth_partial_token_3017fea3; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);


--
-- Name: social_auth_partial_token_3017fea3_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);


--
-- Name: social_auth_usersocialauth_user_id_17d28448; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: user_read_blog_blog_id_9a448ce1; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX user_read_blog_blog_id_9a448ce1 ON public.user_read_blog USING btree (blog_id);


--
-- Name: user_read_blog_user_id_70a2e967; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX user_read_blog_user_id_70a2e967 ON public.user_read_blog USING btree (user_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_categories_parent_id_6f46ebde_fk_blog_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_categories
    ADD CONSTRAINT blog_categories_parent_id_6f46ebde_fk_blog_categories_id FOREIGN KEY (parent_id) REFERENCES public.blog_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_reactions_blog_id_cc44e73a_fk_blogs_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_reactions
    ADD CONSTRAINT blog_reactions_blog_id_cc44e73a_fk_blogs_id FOREIGN KEY (blog_id) REFERENCES public.blogs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_reactions_user_id_57a8b9c8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_reactions
    ADD CONSTRAINT blog_reactions_user_id_57a8b9c8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_requests_user_id_f3e35629_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blog_requests
    ADD CONSTRAINT blog_requests_user_id_f3e35629_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogs_category_blogcategory_id_0753378a_fk_blog_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs_category
    ADD CONSTRAINT blogs_category_blogcategory_id_0753378a_fk_blog_categories_id FOREIGN KEY (blogcategory_id) REFERENCES public.blog_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogs_category_blogpost_id_c0ccce76_fk_blogs_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs_category
    ADD CONSTRAINT blogs_category_blogpost_id_c0ccce76_fk_blogs_id FOREIGN KEY (blogpost_id) REFERENCES public.blogs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogs_created_by_id_642683e0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_created_by_id_642683e0_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogs_updated_by_id_b79569f6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_updated_by_id_b79569f6_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_reactions_comment_id_87c59446_fk_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comment_reactions
    ADD CONSTRAINT comment_reactions_comment_id_87c59446_fk_comments_id FOREIGN KEY (comment_id) REFERENCES public.comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_reactions_user_id_de8dbdab_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comment_reactions
    ADD CONSTRAINT comment_reactions_user_id_de8dbdab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_blog_id_9618bb05_fk_blogs_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_blog_id_9618bb05_fk_blogs_id FOREIGN KEY (blog_id) REFERENCES public.blogs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_parent_id_d317363b_fk_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_parent_id_d317363b_fk_comments_id FOREIGN KEY (parent_id) REFERENCES public.comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_user_id_b8fd0b64_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_b8fd0b64_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_categories_parent_id_97f2e294_fk_news_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_parent_id_97f2e294_fk_news_categories_id FOREIGN KEY (parent_id) REFERENCES public.news_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_category_news_id_9b186847_fk_news_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_news_id_9b186847_fk_news_id FOREIGN KEY (news_id) REFERENCES public.news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_category_newscategory_id_04e9614d_fk_news_categories_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT news_category_newscategory_id_04e9614d_fk_news_categories_id FOREIGN KEY (newscategory_id) REFERENCES public.news_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_profile_user_id_8fdce8e2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_user_id_8fdce8e2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_read_blog_blog_id_9a448ce1_fk_blogs_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_read_blog
    ADD CONSTRAINT user_read_blog_blog_id_9a448ce1_fk_blogs_id FOREIGN KEY (blog_id) REFERENCES public.blogs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_read_blog_user_id_70a2e967_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_read_blog
    ADD CONSTRAINT user_read_blog_user_id_70a2e967_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

