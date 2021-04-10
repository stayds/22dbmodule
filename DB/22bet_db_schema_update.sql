--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.9
-- Dumped by pg_dump version 11.2

-- Started on 2021-02-08 13:41:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 199 (class 1259 OID 5205212)
-- Name: bet22; Type: TABLE; Schema: public; Owner: mtech
--

CREATE TABLE public.bet22 (
    id integer NOT NULL,
    matchid character varying(20),
    sport character varying(200),
    datestring character varying(50),
    league character varying(150),
    hometeam character varying(200),
    awayteam character varying(200),
    kind integer NOT NULL,
    corner_id bigint,
    card_id bigint,
    matchi character varying(20),
    m_1x2 text,
    m1x2_ht text,
    m1x2_2ht text,
    handicap_norm text,
    d_chance text,
    hf_time text,
    odd_even text,
    total_1 text,
    total_2 text,
    gn_goal text,
    over_under text,
    h_score_half text,
    h_wins_eith text,
    a_wins_eith text,
    home_oddeven text,
    away_oddeven text,
    asain_hcap text,
    handicap text,
    last_goal text,
    h_clean_sheet text,
    h_highest_score text,
    a_highest_score text,
    h_score_home text,
    a_score_away text,
    h_win_nil text,
    a_win_nil text,
    first_goal_1x2 text,
    exact_goal text,
    a_score_both text,
    h_score_both text,
    dc_ov_goal text,
    c_score17 text,
    c_score text,
    handicap_half text,
    handicap_2ht text,
    handicap_2half text,
    handicap_1half text,
    ahcap_1half text,
    ahcap_2half text,
    even_odd_half text,
    even_odd_2half text,
    ou_home_ht text,
    ov_home_2ht text,
    ov_away_ht text,
    ov_away_2ht text,
    dc_first_half text,
    dc_2half text,
    c_score17_half text,
    c_score17_2half text,
    c_score_half text,
    c_score_2half text,
    exact_goal_2ht text,
    exact_goal_ht text,
    multi_goal text,
    multigoal_ht text,
    multigoal_2ht text,
    team_to_score text,
    home_mgoal text,
    away_mgoal text,
    multiscore text,
    a_clean_sheet text,
    un_over_half text,
    un_over_2half text,
    dc_btts text,
    home_to_score2row text,
    home_to_score3row text,
    away_score_2row text,
    away_score_3row text,
    m1x2_corner text,
    m1x2_corner_2ht text,
    m1x2_corner_ht text,
    at_least_half_x text,
    away_win_nil_2ht text,
    away_win_nil_ht text,
    cor_htft text,
    corner_handicap text,
    corner_ou_first_ht text,
    corner_ou_second_ht text,
    ggng_ou text,
    home_ou_corner text,
    home_win_nil_2ht text,
    home_win_nil_ht text,
    ht_ou text,
    over_under_card text,
    over_under_corner text,
    odd_even_corner text,
    penalty_yes_no text,
    penalty_scored_missed text,
    red_card text,
    htft_ov text,
    gn_goal_2plus text,
    first_goal text,
    win_margin text,
    dc_both_score_ht text,
    dc_both_score_2ht text,
    ggng_ht text,
    ggng_2ht text,
    f5min_first_happen text
);

ALTER TABLE public.bet22 OWNER TO datadmin;

--
-- Name: onexbet_id_seq; Type: SEQUENCE; Schema: public; Owner: datadmin
--

CREATE SEQUENCE public.bet22_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bet22_id_seq OWNER TO datadmin;

--
-- Name: onexbet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: datadmin
--

ALTER SEQUENCE public.bet22_id_seq OWNED BY public.bet22.id;


--
-- Name: onexbet id; Type: DEFAULT; Schema: public; Owner: datadmin
--

ALTER TABLE ONLY public.bet22 ALTER COLUMN id SET DEFAULT nextval('public.bet22_id_seq'::regclass);


--
-- Name: onexbet onexbet_pkey; Type: CONSTRAINT; Schema: public; Owner: datadmin
--

ALTER TABLE ONLY public.bet22
    ADD CONSTRAINT bet22_pkey PRIMARY KEY (id);
