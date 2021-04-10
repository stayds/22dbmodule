--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

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

SET default_with_oids = false;

--
-- Name: bettype; Type: TABLE; Schema: public; Owner: datadmin
--

CREATE TABLE public.bettype (
    id integer NOT NULL,
    groupid bigint NOT NULL,
    standard character varying NOT NULL
);


ALTER TABLE public.bettype OWNER TO datadmin;

--
-- Name: bettype_id_seq; Type: SEQUENCE; Schema: public; Owner: datadmin
--

CREATE SEQUENCE public.bettype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bettype_id_seq OWNER TO datadmin;

--
-- Name: bettype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: datadmin
--

ALTER SEQUENCE public.bettype_id_seq OWNED BY public.bettype.id;


--
-- Name: bettype id; Type: DEFAULT; Schema: public; Owner: datadmin
--

ALTER TABLE ONLY public.bettype ALTER COLUMN id SET DEFAULT nextval('public.bettype_id_seq'::regclass);


--
-- Data for Name: bettype; Type: TABLE DATA; Schema: public; Owner: datadmin
--

INSERT INTO public.bettype VALUES (1, 1, 'm_1x2');
INSERT INTO public.bettype VALUES (3, 8, 'd_chance');
INSERT INTO public.bettype VALUES (4, 11, 'hf_time');
INSERT INTO public.bettype VALUES (5, 14, 'odd_even');
INSERT INTO public.bettype VALUES (6, 15, 'total_1');
INSERT INTO public.bettype VALUES (7, 62, 'total_2');
INSERT INTO public.bettype VALUES (8, 19, 'gn_goal');
INSERT INTO public.bettype VALUES (9, 17, 'over_under');
INSERT INTO public.bettype VALUES (10, 18, 'h_score_half');
INSERT INTO public.bettype VALUES (11, 43, 'h_wins_eith');
INSERT INTO public.bettype VALUES (12, 44, 'a_wins_eith');
INSERT INTO public.bettype VALUES (13, 91, 'home_oddeven');
INSERT INTO public.bettype VALUES (14, 92, 'away_oddeven');
INSERT INTO public.bettype VALUES (15, 2854, 'asain_hcap');
INSERT INTO public.bettype VALUES (16, 27, 'handicap');
INSERT INTO public.bettype VALUES (17, 154, 'last_goal');
INSERT INTO public.bettype VALUES (18, 2418, 'h_clean_sheet');
INSERT INTO public.bettype VALUES (19, 2422, 'h_highest_score');
INSERT INTO public.bettype VALUES (20, 2424, 'a_highest_score');
INSERT INTO public.bettype VALUES (21, 2876, 'h_score_home');
INSERT INTO public.bettype VALUES (22, 2878, 'a_score_away');
INSERT INTO public.bettype VALUES (23, 2866, 'h_win_nil');
INSERT INTO public.bettype VALUES (24, 2867, 'a_win_nil');
INSERT INTO public.bettype VALUES (25, 7142, 'first_goal_1x2');
INSERT INTO public.bettype VALUES (26, 9939, 'exact_goal');
INSERT INTO public.bettype VALUES (29, 2668, 'dc_ov_goal');
INSERT INTO public.bettype VALUES (2, 2, 'handicap_norm');
INSERT INTO public.bettype VALUES (31, 136, 'c_score');
INSERT INTO public.bettype VALUES (27, 10047, 'a_win_both_half');
INSERT INTO public.bettype VALUES (28, 10046, 'h_win_both_half');
INSERT INTO public.bettype VALUES (32, 27, 'handicap_half');
INSERT INTO public.bettype VALUES (33, 27, 'handicap_2ht');
INSERT INTO public.bettype VALUES (34, 2, 'handicap_2half');
INSERT INTO public.bettype VALUES (35, 2, 'handicap_1half');
INSERT INTO public.bettype VALUES (36, 2854, 'ahcap_1half');
INSERT INTO public.bettype VALUES (37, 2854, 'ahcap_2half');
INSERT INTO public.bettype VALUES (39, 14, 'even_odd_2half');
INSERT INTO public.bettype VALUES (40, 15, 'ou_home_ht');
INSERT INTO public.bettype VALUES (41, 15, 'ov_home_2ht');
INSERT INTO public.bettype VALUES (42, 62, 'ov_away_ht');
INSERT INTO public.bettype VALUES (43, 62, 'ov_away_2ht');
INSERT INTO public.bettype VALUES (44, 8, 'dc_first_half');
INSERT INTO public.bettype VALUES (45, 8, 'dc_2half');
INSERT INTO public.bettype VALUES (46, 1, 'm1x2_ht');
INSERT INTO public.bettype VALUES (47, 1, 'm1x2_2ht');
INSERT INTO public.bettype VALUES (50, 136, 'c_score_half');
INSERT INTO public.bettype VALUES (51, 136, 'c_score_2half');
INSERT INTO public.bettype VALUES (52, 9939, 'exact_goal_2ht');
INSERT INTO public.bettype VALUES (53, 9939, 'exact_goal_ht');
INSERT INTO public.bettype VALUES (38, 14, 'even_odd_half');
INSERT INTO public.bettype VALUES (54, 7961, 'multi_goal');
INSERT INTO public.bettype VALUES (55, 7961, 'multigoal_ht');
INSERT INTO public.bettype VALUES (56, 7961, 'multigoal_2ht');
INSERT INTO public.bettype VALUES (57, 2440, 'team_to_score');
INSERT INTO public.bettype VALUES (58, 8801, 'home_mgoal');
INSERT INTO public.bettype VALUES (59, 8803, 'away_mgoal');
INSERT INTO public.bettype VALUES (60, 3265, 'multiscore');
INSERT INTO public.bettype VALUES (61, 2418, 'a_clean_sheet');
INSERT INTO public.bettype VALUES (62, 17, 'un_over_half');
INSERT INTO public.bettype VALUES (63, 17, 'un_over_2half');
INSERT INTO public.bettype VALUES (64, 9322, 'dc_btts');
INSERT INTO public.bettype VALUES (65, 2880, 'home_to_score2row');
INSERT INTO public.bettype VALUES (66, 2880, 'home_to_score3row');
INSERT INTO public.bettype VALUES (67, 2882, 'away_score_2row');
INSERT INTO public.bettype VALUES (68, 2882, 'away_score_3row');
INSERT INTO public.bettype VALUES (69, 1, 'm1x2_corner');
INSERT INTO public.bettype VALUES (70, 1, 'm1x2_corner_2ht');
INSERT INTO public.bettype VALUES (71, 1, 'm1x2_corner_ht');
INSERT INTO public.bettype VALUES (72, 49, 'at_least_half_x');
INSERT INTO public.bettype VALUES (73, 2867, 'away_win_nil_2ht');
INSERT INTO public.bettype VALUES (74, 2867, 'away_win_nil_ht');
INSERT INTO public.bettype VALUES (75, 11, 'cor_htft');
INSERT INTO public.bettype VALUES (76, 2, 'corner_handicap');
INSERT INTO public.bettype VALUES (77, 17, 'corner_ou_first_ht');
INSERT INTO public.bettype VALUES (78, 17, 'corner_ou_second_ht');
INSERT INTO public.bettype VALUES (79, 2444, 'ggng_ou');
INSERT INTO public.bettype VALUES (80, 15, 'home_ou_corner');
INSERT INTO public.bettype VALUES (81, 2866, 'home_win_nil_2ht');
INSERT INTO public.bettype VALUES (82, 2866, 'home_win_nil_ht');
INSERT INTO public.bettype VALUES (83, 62, 'ht_ou');
INSERT INTO public.bettype VALUES (84, 17, 'over_under_card');
INSERT INTO public.bettype VALUES (85, 17, 'over_under_corner');
INSERT INTO public.bettype VALUES (86, 14, 'odd_even_corner');
INSERT INTO public.bettype VALUES (87, 50, 'penalty_yes_no');
INSERT INTO public.bettype VALUES (88, 10065, 'penalty_scored_missed');
INSERT INTO public.bettype VALUES (89, 10064, 'red_card');
INSERT INTO public.bettype VALUES (90, 829, 'htft_ov');
INSERT INTO public.bettype VALUES (91, 19, 'gn_goal_2plus');
INSERT INTO public.bettype VALUES (92, 75, 'first_goal');
INSERT INTO public.bettype VALUES (93, 864, 'win_margin');
INSERT INTO public.bettype VALUES (94, 9322, 'dc_both_score_ht');
INSERT INTO public.bettype VALUES (95, 9322, 'dc_both_score_2ht');
INSERT INTO public.bettype VALUES (96, 19, 'ggng_ht');
INSERT INTO public.bettype VALUES (97, 19, 'ggng_2ht');
INSERT INTO public.bettype VALUES (98, 2382, 'f5min_first_happen');
INSERT INTO public.bettype VALUES (30, 8863, 'c_score17');
INSERT INTO public.bettype VALUES (48, 8863, 'c_score17_half');
INSERT INTO public.bettype VALUES (49, 8863, 'c_score17_2half');
INSERT INTO public.bettype VALUES (99, 10038, 'a_score_both');
INSERT INTO public.bettype VALUES (100, 10037, 'h_score_both');


--
-- Name: bettype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: datadmin
--

SELECT pg_catalog.setval('public.bettype_id_seq', 100, true);


--
-- Name: bettype bettype_pkey; Type: CONSTRAINT; Schema: public; Owner: datadmin
--

ALTER TABLE ONLY public.bettype
    ADD CONSTRAINT bettype_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

