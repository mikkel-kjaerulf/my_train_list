--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

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

ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.trains DROP CONSTRAINT trains_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.trains ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.trains_id_seq;
DROP TABLE public.trains;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: trains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trains (
    name text,
    operators text,
    family text,
    manufacturer text,
    power_supply text,
    max_speed_operational text,
    max_speed_designed text,
    max_speed_record text,
    in_service text,
    picture text,
    id integer NOT NULL
);


--
-- Name: trains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trains_id_seq OWNED BY public.trains.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    name text,
    mail text,
    password text,
    id integer NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: trains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trains ALTER COLUMN id SET DEFAULT nextval('public.trains_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: trains; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trains (name, operators, family, manufacturer, power_supply, max_speed_operational, max_speed_designed, max_speed_record, in_service, picture, id) FROM stdin;
Acela Express (1st generation)	Amtrak	TGV & LRC derived	Alstom Bombardier	25 kV 60 Hz AC 12 kV 60 Hz AC 12 kV 25 Hz AC	240 (150 mph)	266 (165 mph)	266 (165 mph)	2000	images/Acela Express (1st generation).png	1
Afrosiyob	Uzbekistan Railways	Talgo 250	Talgo	25 kV 50 Hz AC	250	250	\N	2011	images/Afrosiyob.png	2
AGV 575	NTV	AGV	Alstom	25 kV 50 Hz AC 3 kV DC	300	360	\N	2012	images/AGV 575.png	3
Alfa Pendular	CP	Pendolino	Fiat Ferroviaria Adtranz Siemens	25 kV 50 Hz AC	220[1]	250	\N	1999[1]	images/Alfa Pendular.png	4
Alvia Class 120, 121 (variable gauge)	Renfe	CAF Cepia	CAF Alstom	25 kV 50 Hz AC 3 kV DC	250	250	\N	2004	images/Alvia Class 120, 121 (variable gauge).png	5
Alvia Class 130, 730 (variable gauge)	Renfe	Talgo 250	Talgo Bombardier	25 kV 50 Hz AC 3 kV DC Diesel [N 1]	250	250	\N	2007	images/Alvia Class 130, 730 (variable gauge).png	6
Avant Class 104	Renfe	Pendolino	Alstom CAF	25 kV 50 Hz AC	250	250	\N	2003	images/Avant Class 104.png	7
Avant Class 114	Renfe	New Pendolino	Alstom CAF	25 kV 50 Hz AC	250	250	\N	2009	images/Avant Class 114.png	8
AVE Class 100	Renfe	TGV	GEC-Alstom CAF	25 kV 50 Hz AC 3 kV DC	300	300	357	1992	images/AVE Class 100.png	9
AVE Class 102, 112	Renfe	Talgo 350	Talgo Bombardier	25 kV 50 Hz AC	300	350	365	2005	images/AVE Class 102, 112.png	10
AVE Class 103	Renfe	Velaro	Siemens	25 kV 50 Hz AC	310	380	403.7[2]	2006	images/AVE Class 103.png	11
Avelia Liberty (Acela 2nd generation)	Amtrak	TGV & New Pendolino derived	Alstom	25 kV 60 Hz AC 12 kV 60 Hz AC 12 kV 25 Hz AC	\N	350 (220 mph)[3]	\N	2023	images/Avelia Liberty (Acela 2nd generation).png	12
Avelia Horizon	SNCF	TGV	Alstom	25 kV 50 Hz AC 1.5 kV DC	\N	350[4]	\N	2024	images/Avelia Horizon.png	13
BR Class 43 (InterCity 125)	Abellio ScotRail  CrossCountry  Network Rail	HST	BREL	Diesel	201 (125 mph)	201 (125 mph)	238 (148 mph)	1976	images/BR Class 43 (InterCity 125).png	14
BR Class 180 Alstom Coradia	East Midlands Railway  Grand Central	Coradia	Alstom	Diesel	201 (125 mph)	201 (125 mph)	\N	2002	images/BR Class 180 Alstom Coradia.png	15
BR Class 220	CrossCountry	Voyager	Bombardier	Diesel	201 (125 mph)	201 (125 mph)	\N	2001	images/BR Class 220.png	16
BR Class 221 Bombardier Voyager	CrossCountry  Avanti West Coast	Voyager	Bombardier	Diesel	201 (125 mph)	201 (125 mph)	\N	2002	images/BR Class 221 Bombardier Voyager.png	17
BR Class 222	East Midlands Railway	Voyager	Bombardier	Diesel	201 (125 mph)	201 (125 mph)	\N	2004	images/BR Class 222.png	18
BR Class 390 Alstom Pendolino	Avanti West Coast	Pendolino	Alstom	25 kV 50 Hz AC	201 (125 mph)	225 (140 mph)	248 (154 mph)	2002	images/BR Class 390 Alstom Pendolino.png	19
BR Class 395 Javelin Hitachi AT300	Southeastern	A-train	Hitachi Rail	25 kV 50 Hz AC 750 V DC (3rd rail)	225 (140 mph)	225 (140 mph)	252 (157 mph)[5]	2009	images/BR Class 395 Javelin Hitachi AT300.png	20
BR Class 397	TransPennine Express	CAF Civity	CAF	25 kV 50 Hz AC	201 (125 mph)	201 (125 mph)	\N	2019	images/BR Class 397.png	21
BR Class 800	Great Western Railway  London North Eastern Railway	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	201 (125 mph)	225 (140 mph)	\N	2017	images/BR Class 800.png	22
BR Class 801	London North Eastern Railway	A-train	Hitachi Rail	25 kV 50 Hz AC	201 (125 mph)	225 (140 mph)	\N	2019	images/BR Class 801.png	23
BR Class 802	Great Western Railway  Hull Trains  TransPennine Express	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	201 (125 mph)	225 (140 mph)	\N	2018	images/BR Class 802.png	24
BR Class 803	Lumo	A-train	Hitachi Rail	25 kV 50 Hz AC	201 (125 mph)	225 (140 mph)	\N	2021	images/BR Class 803.png	25
BR Class 805	Avanti West Coast	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	\N	225 (140 mph)	\N	2023	images/BR Class 805.png	26
BR Class 807	Avanti West Coast	A-train	Hitachi Rail	25 kV 50 Hz AC	\N	225 (140 mph)	\N	2023	images/BR Class 807.png	27
BR Class 810	East Midlands Railway	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	\N	225 (140 mph)	\N	2024	images/BR Class 810.png	28
CRH1A & CRH1B	China Railway	Regina	Bombardier CSR Sifang	25 kV 50 Hz AC	250	250	278	2007	images/CRH1A & CRH1B.png	29
CRH1E	China Railway	Zefiro	Bombardier CSR Sifang	25 kV 50 Hz AC	250	250	\N	2009	images/CRH1E.png	30
CRH1A-A CRH1E-250	China Railway	Zefiro	CSR Sifang	25 kV 50 Hz AC	250	250	\N	2016	images/CRH1A-A CRH1E-250.png	31
CRH2A CRH2B CRH2E	China Railway	Shinkansen	Kawasaki CSR Sifang	25 kV 50 Hz AC	250	250	\N	2007	images/CRH2A CRH2B CRH2E.png	32
CRH2E (New Batch, sleeper)	China Railway	Shinkansen	CSR Sifang	25 kV 50 Hz AC	250	250	\N	2017	images/CRH2E (New Batch, sleeper).png	33
CRH2C	China Railway	Shinkansen	CSR Sifang	25 kV 50 Hz AC	310	350	350	2008	images/CRH2C.png	34
CRH3A	China Railway	\N	CNR Tangshan CNR Changchun	25 kV 50 Hz AC	250	250	\N	2017	images/CRH3A.png	35
CRH3C	China Railway	Velaro	Siemens CNR Tangshan CNR Changchun	25 kV 50 Hz AC	310	350	394.2	2008	images/CRH3C.png	36
CRH5A	China Railway	New Pendolino	Alstom CNR Changchun	25 kV 50 Hz AC	250	250	\N	2007	images/CRH5A.png	37
CRH5G	China Railway	New Pendolino	CNR Changchun	25 kV 50 Hz AC	250	250	\N	2017	images/CRH5G.png	38
CRH6A	China Railway	\N	CSR Sifang	25 kV 50 Hz AC	200	220	\N	2014	images/CRH6A.png	39
CRH380A & AL	China Railway	Shinkansen derived[6]	CSR Sifang	25 kV 50 Hz AC	350	380	486.1	2010	images/CRH380A & AL.png	40
CRH380B, BL & CL	China Railway	Velaro	Siemens CNR Tangshan CNR Changchun	25 kV 50 Hz AC	350	380	487.3	2011	images/CRH380B, BL & CL.png	41
CRH380D	China Railway	Zefiro	Bombardier CSR Sifang	25 kV 50 Hz AC	350	380	483	2012	images/CRH380D.png	42
CR300AF	China Railway	Fuxing	CRRC Sifang	25 kV 50 Hz AC	250	300	\N	2019	images/CR300AF.png	43
CR300BF	China Railway	Fuxing	CRRC Changchun	25 kV 50 Hz AC	250	300	\N	2019	images/CR300BF.png	44
CR400AF, -A & -B	China Railway	Fuxing	CRRC Sifang	25 kV 50 Hz AC	350[7]	400	420	2017	images/CR400AF, -A & -B.png	45
CR400BF, -A & -B	China Railway	Fuxing	CRRC Tangshan CRRC Changchun	25 kV 50 Hz AC	350[7]	400	420	2017	images/CR400BF, -A & -B.png	46
DSB IC5	DSB	Coradia Stream	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC	\N	200	\N	2025	images/DSB IC5.png	47
DSB IC4	DSB	IC4	AnsaldoBreda	Diesel	180	200	\N	2007	images/DSB IC4.png	48
ED250	PKP Intercity	New Pendolino	Alstom	3 kV DC	200	250	293[8]	2014	images/ED250.png	49
ČD Class 680	ČD	Pendolino	Alstom	25 kV 50 Hz AC, 15 kV 16.7 Hz AC and 3 kV DC	200	230	237	2006	images/ČD Class 680.png	50
EMU-320	Korail	KTX	Hyundai Rotem	25 kV 60 Hz AC	305	352	\N	2023	images/EMU-320.png	51
ETR 460	Trenitalia	Pendolino	Fiat Ferroviaria	3 kV DC	250	250	\N	1994	images/ETR 460.png	52
ETR 470	SBB	Pendolino	Fiat Ferroviaria	3 kV DC 15 kV 16.7 Hz AC 25 kV 50 Hz	200	250	\N	1996–2014	images/ETR 470.png	53
ETR 470	Trenitalia	Pendolino	Fiat Ferroviaria	3 kV DC 15 kV 16.7 Hz AC 25 kV 50 Hz	200	250	\N	1996–2021	images/ETR 470.png	54
ETR 470	Hellenic Train	Pendolino	Fiat Ferroviaria	3 kV DC 15 kV 16.7 Hz AC 25 kV 50 Hz	200	250	\N	2022	images/ETR 470.png	55
ETR 480 / ETR 485	Trenitalia	Pendolino	Fiat Ferroviaria	3 kV DC 25 kV 50 Hz AC	250	250	\N	1997	images/ETR 480 / ETR 485.png	56
ETR 500 (2nd gen)	Trenitalia	\N	Alstom Bombardier AnsaldoBreda	25 kV 50 Hz AC 3 kV DC 1.5 kV DC (500F)	300	300	362[9]	2000	images/ETR 500 (2nd gen).png	57
ETR 600	Trenitalia	New Pendolino	Alstom	25 kV 50 Hz AC 3 kV DC	250	250	\N	2008	images/ETR 600.png	58
ETR 610	Trenitalia	New Pendolino	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 3 kV DC	250	250	\N	2008	images/ETR 610.png	59
ETR 675	NTV	New Pendolino	Alstom	25 kV 50 Hz AC 3 kV DC	250	250	\N	2017	images/ETR 675.png	60
ETR 700 (Previously known as V250)	Trenitalia (Previously NS  SNCB)	\N	AnsaldoBreda	25 kV 50 Hz AC 3 kV DC 1.5 kV DC	250	250	\N	2012 - 2013 2019	images/ETR 700 (Previously known as V250).png	61
ETR 1000 (Frecciarossa 1000)	Trenitalia Iryo	Zefiro	Bombardier AnsaldoBreda	25 kV 50 Hz AC 3 kV DC 1.5 kV DC 15 kV 16.7 Hz AC	300	360	393.8[10]	2015	images/ETR 1000 (Frecciarossa 1000).png	62
BR Class 373 Eurostar e300 Alstom TGV TMST (initially known as BR Class 373 or TGV TMST)	Eurostar  IZY	TGV	GEC-Alsthom	25 kV 50 Hz AC 3 kV DC 1.5 kV DC 750 V DC (3rd rail, no longer in use)	300 (190 mph)	300 (190 mph)	334.7 (208.0 mph)	1993	images/BR Class 373 Eurostar e300 Alstom TGV TMST (initially known as BR Class 373 or TGV TMST).png	63
Eurostar e320 Siemens Velaro	Eurostar	Velaro	Siemens	25 kV 50 Hz AC 15 kV 16.7 Hz AC 3 kV DC 1.5 kV DC	300 (190 mph)	320 (200 mph)	352 (219 mph)	2015	images/Eurostar e320 Siemens Velaro.png	64
Flytoget Class 78	Flytoget	Oaris	CAF	15 kV 16.7 Hz AC	210	250	\N	2021	images/Flytoget Class 78.png	65
GMB Class 71	Flytoget	X 2000 derived	Adtranz Strømmen	15 kV 16.7 Hz AC	210	210	\N	1998	images/GMB Class 71.png	66
ICE 1	DB	ICE	Siemens ABB AEG Krauss-Maffei Krupp Thyssen Henschel	15 kV 16.7 Hz AC	280	280	310	1991	images/ICE 1.png	67
ICE 2	DB	ICE	Siemens Adtranz	15 kV 16.7 Hz AC	280	280	316	1996	images/ICE 2.png	68
ICE 3 Class 403, 406	DB  NS	ICE	Siemens Bombardier	15 kV 16.7 Hz AC 25 kV 50 Hz AC [N 2] 1.5 kV DC [N 3] 3 kV DC [N 3]	320	330	368	2000	images/ICE 3 Class 403, 406.png	69
ICE 3 Class 407	DB	Velaro	Siemens	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	320	320	352[11]	2013	images/ICE 3 Class 407.png	70
ICE 3 Class 408	DB	Velaro Neo	Siemens	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	320	320	352	2022[12]	images/ICE 3 Class 408.png	71
ICE T	DB  ÖBB	ICE (contains Pendolino technology)	Siemens Duewag Fiat Ferroviaria	15 kV 16.7 Hz AC	230	230	255	2005	images/ICE T.png	72
ICE 4	DB	ICE	Siemens Bombardier (now Alstom)	15 kV 16.7 Hz AC	265	265	292[13]	2017	images/ICE 4.png	73
IC2	DB	KISS	Stadler Rail	15 kV 16.7 Hz AC	200	200	\N	2020	images/IC2.png	74
Stadler KISS	WESTbahn	KISS	Stadler Rail	15 kV 16.7 Hz AC	200	200	\N	2011	images/Stadler KISS.png	75
SOKO	Srbija Voz	KISS	Stadler Rail	4000 kV	200	200	\N	2022	images/SOKO.png	76
Intercity Nieuwe Generatie	NS	Coradia Stream	Alstom	25 kV 50 Hz AC 1.5 kV DC 3 kV DC	200	200	\N	2023	images/Intercity Nieuwe Generatie.png	77
KCIC400AF	KCIC	Fuxing (CR400AF variant)	CRRC Qingdao Sifang	25 kV 50 Hz AC	\N	350[14]	\N	2023	images/KCIC400AF.png	78
KTX-I	Korail	TGV	Alstom Hyundai Rotem	25 kV 60 Hz AC	305	330	\N	2004	images/KTX-I.png	79
KTX-Eum	Korail	KTX	Hyundai Rotem	25 kV 60 Hz AC	260	286	\N	2020	images/KTX-Eum.png	80
KTX-Sancheon	Korail	KTX	Hyundai Rotem	25 kV 60 Hz AC	305	330	\N	2010	images/KTX-Sancheon.png	81
NSB Class 73	Go-Ahead Norge  SJ Norge  Vy	X 2000 derived	Adtranz Strømmen	15 kV 16.7 Hz AC	210	210	\N	1999	images/NSB Class 73.png	82
NSB Class 74/75	Vy	FLIRT	Stadler Rail	15 kV 16.7 Hz AC	200[15]	200	\N	2012	images/NSB Class 74/75.png	83
RABDe 500	SBB	ICN	Alstom Bombardier	15 kV 16.7 Hz AC	200	200	\N	2000	images/RABDe 500.png	84
RABe 501	SBB	SMILE	Stadler Rail	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	250	250	275	2019	images/RABe 501.png	85
RABe 502	SBB	TWINDEXX	Bombardier	15 kV 16.7 Hz AC	200[16]	200	\N	2018	images/RABe 502.png	86
RABe 503	SBB	New Pendolino	Alstom	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	250	250	\N	2008	images/RABe 503.png	87
Regio 2N (Z 56500)	SNCF	Omneo	Bombardier	25 kV 50 Hz AC 1.5 kV DC	200	200	\N	2017	images/Regio 2N (Z 56500).png	88
EVS1/EVS2 Sapsan	RZD	Velaro	Siemens	3 kV DC 25 kV 50 Hz AC	250	350	290	2009	images/EVS1/EVS2 Sapsan.png	89
SAR push-pull train	SAR	\N	CAF	Diesel	200	200	\N	2017	images/SAR push-pull train.png	90
500 Series Shinkansen	JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	300	320	\N	1997	images/500 Series Shinkansen.png	91
700 Series Shinkansen	JR Central  JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	285	285	\N	1999	images/700 Series Shinkansen.png	92
N700 Series Shinkansen	JR Central  JR Kyushu  JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	300	300	332[17]	2007	images/N700 Series Shinkansen.png	93
N700A Series Shinkansen	JR Central  JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	300	300	\N	2013	images/N700A Series Shinkansen.png	94
N700S Series Shinkansen	JR Central	Shinkansen	Nippon Sharyo	25 kV 60 Hz AC	300	360	362[18]	2020	images/N700S Series Shinkansen.png	95
N700S Series Shinkansen	JR Kyushu	Shinkansen	Nippon Sharyo	25 kV 60 Hz AC	260	360	\N	2022	images/N700S Series Shinkansen.png	96
N700S Series Shinkansen	Texas Central Railway	Shinkansen	Nippon Sharyo	25 kV 60 Hz AC	\N	360 (220 mph)	\N	2026	images/N700S Series Shinkansen.png	97
800 Series Shinkansen	JR Kyushu	Shinkansen	Hitachi Rail	25 kV 60 Hz AC	260	285	\N	2004	images/800 Series Shinkansen.png	98
E2 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki Nippon Sharyo Tokyu Car	25 kV 50/60 Hz AC	275	275	362	1997	images/E2 Series Shinkansen.png	99
E3 Series Shinkansen	JR East	Shinkansen	Kawasaki Tokyu Car	20/25 kV 50 Hz AC	275[19]	275	\N	1997	images/E3 Series Shinkansen.png	100
E5 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki	25 kV 50 Hz AC	320[19]	320	\N	2011	images/E5 Series Shinkansen.png	101
E5 Series Shinkansen	NHSRCL	Shinkansen	Hitachi Rail Kawasaki	25 kV 50 Hz AC	\N	320	\N	2026	images/E5 Series Shinkansen.png	102
H5 Series Shinkansen	JR Hokkaido	Shinkansen	Hitachi Rail Kawasaki	25 kV 50 Hz AC	320	320	\N	2016	images/H5 Series Shinkansen.png	103
E6 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki	20/25 kV 50 Hz AC	320[20]	320	\N	2013	images/E6 Series Shinkansen.png	104
E7 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki J-TREC	25 kV 50/60 Hz AC	260[21]	275[21]	\N	2014	images/E7 Series Shinkansen.png	105
W7 Series Shinkansen	JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo	25 kV 50/60 Hz AC	260[21]	275[21]	\N	2015	images/W7 Series Shinkansen.png	106
E8 Series Shinkansen	JR East	Shinkansen	Kawasaki	20/25 kV 50 Hz AC	\N	300	\N	2024	images/E8 Series Shinkansen.png	107
Sm3	VR	Pendolino	Fiat Ferroviaria Rautaruukki Transtech	25 kV 50 Hz AC	220	220	242	1995	images/Sm3.png	108
Sm6 Allegro	Karelian Trains	Pendolino	Alstom	25 kV 50 Hz AC 3 kV DC	220	220	\N	2010	images/Sm6 Allegro.png	109
Talgo 350 SRO	SRO	Talgo 350	Talgo Bombardier	25 kV 50 Hz AC	300	350	\N	2018[22]	images/Talgo 350 SRO.png	110
TCDD HT65000	TCDD Taşımacılık	Cepia	CAF	25 kV 50 Hz AC	250	250	\N	2009	images/TCDD HT65000.png	111
TCDD HT80000	TCDD Taşımacılık	Velaro	Siemens	25 kV 50 Hz AC	250	300	\N	2015	images/TCDD HT80000.png	112
TGV Atlantique	SNCF	TGV	Alsthom	25 kV 50 Hz AC 1.5 kV DC	300	300	515.3	1989	images/TGV Atlantique.png	113
TGV Réseau	SNCF	TGV	GEC-Alsthom	25 kV 50 Hz AC 1.5 kV DC 3 kV DC	320	320	\N	1993	images/TGV Réseau.png	114
TGV Duplex	SNCF	TGV	GEC-Alsthom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC	320	320	\N	1995	images/TGV Duplex.png	115
TGV Oceane	SNCF	TGV	GEC-Alsthom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC	320	320	\N	2017	images/TGV Oceane.png	116
TGV POS	SNCF	TGV	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC	320	320	574.8	2006	images/TGV POS.png	117
TGV Euroduplex	SNCF  TGV Lyria  ONCF  Ouigo España	TGV	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC 3 kV DC	320	320	\N	2011	images/TGV Euroduplex.png	118
Thalys PBA	Thalys	TGV	GEC-Alsthom	25 kV 50 Hz AC 1.5 kV DC 3 kV DC	300	320	\N	1996	images/Thalys PBA.png	119
Thalys PBKA	Thalys	TGV	GEC-Alsthom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC 3 kV DC	300	320	\N	1997	images/Thalys PBKA.png	120
THSR 700T	THSR	Shinkansen	Hitachi Rail Kawasaki Nippon Sharyo	25 kV 60 Hz AC	300	315	315[23]	2007	images/THSR 700T.png	121
Velaro Novo	Brightline West	Velaro	Siemens Mobility	25 kV 60 Hz AC	\N	380 (240 mph)	\N	2027	images/Velaro Novo.png	122
Vibrant Express	MTR Corporation[24]	.mw-parser-output .plainlist ol,.mw-parser-output .plainlist ul{line-height:inherit;list-style:none;margin:0;padding:0}.mw-parser-output .plainlist ol li,.mw-parser-output .plainlist ul li{margin-bottom:0} CRH380A variant Shinkansen-derived (allegedly)[6]	CRRC Qingdao Sifang[25]	25 kV 50 Hz AC	300	380	\N	2018[26][27]	images/Vibrant Express.png	123
X2	SJ	X 2000	Adtranz ABB	15 kV 16.7 Hz AC 25 kV 50 Hz AC	200	210	276	1989	images/X2.png	124
X3	Arlanda Express	Coradia	GEC-Alsthom	15 kV 16.7 Hz AC	200	205	\N	1998	images/X3.png	125
X40	SJ	Coradia	Alstom	15 kV 16.7 Hz AC	200	200	\N	2006	images/X40.png	126
X50 - 55	SJ  Tågkompaniet  Västtrafik  Veolia Transport  Upplands Lokaltrafik	Regina	Bombardier	15 kV 16.7 Hz AC	200	200	303	2000	images/X50 - 55.png	127
X74	MTRX	Stadler FLIRT	Stadler Rail	15 kV 16.7 Hz AC	200	200	\N	2015	images/X74.png	128
ER1	Mälardalstrafik  Upplands Lokaltrafik  Tågkompaniet	Stadler Dosto	Stadler Rail	6 000 kW	200	200	\N	2019	images/ER1.png	129
X80	Västtrafik	Zefiro	Bombardier	15 kV 16.7 Hz AC	\N	200	\N	2023	images/X80.png	130
Zefiro Express	SJ	Zefiro	Alstom	15 kV 16.7 Hz AC	\N	250	\N	2026	images/Zefiro Express.png	131
Z-TER	SNCF	\N	Alstom Bombardier	25 kV 50 Hz AC 1.5 kV DC	200	200	\N	2003	images/Z-TER.png	132
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (name, mail, password, id) FROM stdin;
John Doe	johndoe@example.com	pass123	1
Jane Smith	janesmith@example.com	hello456	2
Michael Johnson	michaeljohnson@example.com	abc123	3
Sarah Davis	sarahdavis@example.com	password789	4
Robert Brown	robertbrown@example.com	securepass	5
Emily Wilson	emilywilson@example.com	letmein	6
David Taylor	davidtaylor@example.com	p@ssw0rd	7
Lisa Anderson	lisaanderson@example.com	welcome123	8
Matthew Thomas	matthewthomas@example.com	secretword	9
Amanda Martinez	amandamartinez@example.com	test123	10
James Garcia	jamesgarcia@example.com	mysecret	11
Olivia Rodriguez	oliviarodriguez@example.com	password1234	12
Christopher Wilson	christopherwilson@example.com	securepassword	13
Emma Lopez	emmalopez@example.com	12345678	14
Alexander Lee	alexanderlee@example.com	letmein123	15
Abigail Hernandez	abigailhernandez@example.com	password!	16
Daniel Walker	danielwalker@example.com	welcome1234	17
Isabella Green	isabellagreen@example.com	passw0rd	18
Anthony Hill	anthonyhill@example.com	test456	19
Sophia Adams	sophiaadams@example.com	mysecret123	20
Andrew Clark	andrewclark@example.com	abcde123	21
Elizabeth Baker	elizabethbaker@example.com	pa$$w0rd	22
Joseph White	josephwhite@example.com	hello1234	23
Mia Harris	miaharris@example.com	secretpass123	24
William Turner	williamturner@example.com	password@123	25
Grace Lewis	gracelewis@example.com	test789	26
Ethan Lewis	ethanlewis@example.com	mysecretword	27
Chloe Turner	chloeturner@example.com	pass1234	28
Charlotte Young	charlotteyoung@example.com	letmein1234	29
Alexander Davis	alexanderdavis@example.com	password12345	30
Sophia Adams	sophiaadams@example.com	securepass123	31
Logan Martin	loganmartin@example.com	welcome12345	32
Mia Thompson	miathompson@example.com	abc12345	33
Liam Smith	liamsmith@example.com	pa$$w0rd123	34
Olivia Johnson	oliviajohnson@example.com	hello12345	35
Noah Davis	noahdavis@example.com	secretpass12345	36
Emma Brown	emmabrown@example.com	test12345	37
Ava Anderson	avaanderson@example.com	mysecretpass	38
William Jones	williamjones@example.com	pass@12345	39
Sophia Wilson	sophiawilson@example.com	letmein@12345	40
Logan Harris	loganharris@example.com	password123456	41
Amelia Garcia	ameliagarcia@example.com	securepass12345	42
James Thomas	jamesthomas@example.com	welcome123456	43
Oliver Davis	oliverdavis@example.com	abcde12345	44
Isabella Jackson	isabellajackson@example.com	pa$$w0rd@123	45
Sophia Green	sophiagreen@example.com	hello123456	46
Charlotte Lopez	charlotte-lopez@example.com	secretpass123456	47
Liam Martinez	liammartinez@example.com	test123456	48
Ava Taylor	avataylor@example.com	mysecret123456	49
Noah Wilson	noahwilson@example.com	pass123456	50
Emma Hernandez	emmahernandez@example.com	letmein123456	51
Oliver Anderson	oliveranderson@example.com	password1234567	52
Isabella Clark	isabellaclark@example.com	securepass123456	53
Sophia Walker	sophiawalker@example.com	welcome1234567	54
Mia Turner	miaturner@example.com	abc1234567	55
Liam Martinez	liammartinez@example.com	pa$$w0rd1234567	56
Ava Adams	avaadams@example.com	hello1234567	57
Noah Garcia	noahgarcia@example.com	secretpass1234567	58
Emma Brown	emmabrown@example.com	test1234567	59
Oliver Harris	oliverharris@example.com	mysecret1234567	60
Isabella Davis	isabelladavis@example.com	pass@1234567	61
Sophia White	sophiawhite@example.com	letmein@1234567	62
Liam Wilson	liamwilson@example.com	password12345678	63
Ava Johnson	avajohnson@example.com	securepass1234567	64
Noah Smith	noahsmith@example.com	welcome12345678	65
Emma Thompson	emmathompson@example.com	abc12345678	66
Oliver Lewis	oliverlewis@example.com	pa$$w0rd12345678	67
Isabella Harris	isabellaharris@example.com	hello12345678	68
Sophia Adams	sophiaadams@example.com	secretpass12345678	69
Liam Clark	liamclark@example.com	test12345678	70
Ava Baker	avabaker@example.com	mysecret12345678	71
Noah Walker	noahwalker@example.com	pass12345678	72
Emma Young	emmayoutg@example.com	letmein12345678	73
Oliver Davis	oliverdavis@example.com	password123456789	74
Isabella Hernandez	isabellahernandez@example.com	securepass12345678	75
Sophia Wilson	sophiawilson@example.com	welcome123456789	76
Liam Thompson	liamthompson@example.com	abc123456789	77
Ava Smith	avasmith@example.com	pa$$w0rd123456789	78
Noah Garcia	noahgarcia@example.com	hello123456789	79
Emma Brown	emmabrown@example.com	secretpass123456789	80
Oliver Harris	oliverharris@example.com	test123456789	81
Isabella Davis	isabelladavis@example.com	mysecret123456789	82
Sophia White	sophiawhite@example.com	pass@123456789	83
Liam Wilson	liamwilson@example.com	letmein@123456789	84
Ava Johnson	avajohnson@example.com	password123456789	85
Noah Smith	noahsmith@example.com	securepass123456789	86
Emma Thompson	emmathompson@example.com	welcome123456789	87
Oliver Lewis	oliverlewis@example.com	abc1234567890	88
Isabella Harris	isabellaharris@example.com	pa$$w0rd123456789	89
Sophia Adams	sophiaadams@example.com	hello1234567890	90
Liam Clark	liamclark@example.com	secretpass1234567890	91
Ava Baker	avabaker@example.com	test1234567890	92
Noah Walker	noahwalker@example.com	mysecret1234567890	93
Emma Young	emmayoutg@example.com	pass1234567890	94
Oliver Davis	oliverdavis@example.com	letmein1234567890	95
Isabella Hernandez	isabellahernandez@example.com	password1234567890	96
Sophia Wilson	sophiawilson@example.com	securepass1234567890	97
Liam Thompson	liamthompson@example.com	welcome1234567890	98
Ava Smith	avasmith@example.com	abc1234567890	99
Noah Garcia	noahgarcia@example.com	pa$$w0rd1234567890	100
test	test	123	101
Mikkel	mikkel.doha@gmail.com	123	102
Mikkel	mikkel.doha@gmail.com	123	103
Test	test@testmail.com	123	104
\.


--
-- Name: trains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trains_id_seq', 132, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 104, true);


--
-- Name: trains trains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trains
    ADD CONSTRAINT trains_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

