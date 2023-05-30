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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: attends; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.attends (
    student character varying(50),
    course character varying(50)
);


ALTER TABLE public.attends OWNER TO mikkelkjaerulf;

--
-- Name: client; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.client (
    id integer NOT NULL,
    name character(20),
    address character(20),
    email character(20),
    phone_number integer
);


ALTER TABLE public.client OWNER TO mikkelkjaerulf;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.customers (
    id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO mikkelkjaerulf;

--
-- Name: laptop; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.laptop (
    model integer,
    speed double precision,
    ram integer,
    hd integer,
    screen double precision,
    price integer
);


ALTER TABLE public.laptop OWNER TO mikkelkjaerulf;

--
-- Name: likes; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.likes (
    student character varying(50),
    lecturer character varying(50)
);


ALTER TABLE public.likes OWNER TO mikkelkjaerulf;

--
-- Name: pc; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.pc (
    model integer,
    speed double precision,
    ram integer,
    hd integer,
    price integer
);


ALTER TABLE public.pc OWNER TO mikkelkjaerulf;

--
-- Name: printer; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.printer (
    model integer,
    color boolean,
    type character varying(10),
    price integer
);


ALTER TABLE public.printer OWNER TO mikkelkjaerulf;

--
-- Name: product; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.product (
    maker character varying(1),
    model integer,
    type character varying(10)
);


ALTER TABLE public.product OWNER TO mikkelkjaerulf;

--
-- Name: s; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.s (
    name character(50)
);


ALTER TABLE public.s OWNER TO mikkelkjaerulf;

--
-- Name: s1; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.s1 (
    name character(140)
);


ALTER TABLE public.s1 OWNER TO mikkelkjaerulf;

--
-- Name: teaches; Type: TABLE; Schema: public; Owner: mikkelkjaerulf
--

CREATE TABLE public.teaches (
    lecturer character varying(50),
    course character varying(50)
);


ALTER TABLE public.teaches OWNER TO mikkelkjaerulf;

--
-- Name: trains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trains (
    index bigint,
    name text,
    operators text,
    family text,
    manufacturer text,
    power_supply text,
    max_speed_operational text,
    max_speed_designed text,
    max_speed_record text,
    in_service text,
    picture text
);


ALTER TABLE public.trains OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint,
    name text,
    mail text,
    password text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: attends; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.attends (student, course) FROM stdin;
Anna	DIS
Bernie	MicroB
Chris	MacroB
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.client (id, name, address, email, phone_number) FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.customers (id) FROM stdin;
\.


--
-- Data for Name: laptop; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.laptop (model, speed, ram, hd, screen, price) FROM stdin;
2001	2	2048	240	20.1	3673
2002	1.73	1024	80	17	949
2003	1.8	512	60	15.4	549
2004	2	512	60	13.3	1150
2005	2.16	1024	120	17	2500
2006	2	2048	80	15.4	1700
2007	1.83	1024	120	13.3	1249
2008	1.6	1024	100	15.4	900
2009	1.6	512	80	14.1	680
2010	2	2048	160	15.4	2300
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.likes (student, lecturer) FROM stdin;
Anna	Dmitriy
Bernie	Laura
Chris	Dmitriy
\.


--
-- Data for Name: pc; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.pc (model, speed, ram, hd, price) FROM stdin;
1001	2.66	1024	250	2114
1002	2.1	512	250	995
1003	1.42	512	80	478
1004	2.8	1024	250	649
1005	3.2	512	250	630
1006	3.2	1024	320	1049
1007	2.2	1024	200	510
1008	2.2	2048	250	770
1009	2	1024	250	650
1010	2.8	2048	300	770
1011	1.86	2048	160	959
1012	2.8	1024	160	649
1013	3.06	512	80	529
\.


--
-- Data for Name: printer; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.printer (model, color, type, price) FROM stdin;
3001	t	ink-jet	99
3002	f	laser	239
3003	t	laser	899
3004	t	ink-jet	120
3005	f	laser	120
3006	t	ink-jet	100
3007	t	laser	200
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.product (maker, model, type) FROM stdin;
A	1001	pc
A	1002	pc
A	1003	pc
A	2004	laptop
A	2005	laptop
A	2006	laptop
B	1004	pc
B	1005	pc
B	1006	pc
B	2007	laptop
C	1007	pc
D	1008	pc
D	1009	pc
D	1010	pc
D	3004	printer
D	3005	printer
E	1011	pc
E	1012	pc
E	1013	pc
E	2001	laptop
E	2002	laptop
E	2003	laptop
E	3001	printer
E	3002	printer
E	3003	printer
F	2008	laptop
F	2009	laptop
G	2010	laptop
H	3006	printer
H	3007	printer
\.


--
-- Data for Name: s; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.s (name) FROM stdin;
\.


--
-- Data for Name: s1; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.s1 (name) FROM stdin;
\.


--
-- Data for Name: teaches; Type: TABLE DATA; Schema: public; Owner: mikkelkjaerulf
--

COPY public.teaches (lecturer, course) FROM stdin;
Dmitriy	DIS
Anders	MicroB
Laura	MacroB
\.


--
-- Data for Name: trains; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trains (index, name, operators, family, manufacturer, power_supply, max_speed_operational, max_speed_designed, max_speed_record, in_service, picture) FROM stdin;
\N	Acela Express (1st generation)	Amtrak	TGV & LRC derived	Alstom Bombardier	25 kV 60 Hz AC 12 kV 60 Hz AC 12 kV 25 Hz AC	240 (150 mph)	266 (165 mph)	266 (165 mph)	2000	images/Acela Express (1st generation).png
\N	Afrosiyob	Uzbekistan Railways	Talgo 250	Talgo	25 kV 50 Hz AC	250	250	\N	2011	images/Afrosiyob.png
\N	AGV 575	NTV	AGV	Alstom	25 kV 50 Hz AC 3 kV DC	300	360	\N	2012	images/AGV 575.png
\N	Alfa Pendular	CP	Pendolino	Fiat Ferroviaria Adtranz Siemens	25 kV 50 Hz AC	220[1]	250	\N	1999[1]	images/Alfa Pendular.png
\N	Alvia Class 120, 121 (variable gauge)	Renfe	CAF Cepia	CAF Alstom	25 kV 50 Hz AC 3 kV DC	250	250	\N	2004	images/Alvia Class 120, 121 (variable gauge).png
\N	Alvia Class 130, 730 (variable gauge)	Renfe	Talgo 250	Talgo Bombardier	25 kV 50 Hz AC 3 kV DC Diesel [N 1]	250	250	\N	2007	images/Alvia Class 130, 730 (variable gauge).png
\N	Avant Class 104	Renfe	Pendolino	Alstom CAF	25 kV 50 Hz AC	250	250	\N	2003	images/Avant Class 104.png
\N	Avant Class 114	Renfe	New Pendolino	Alstom CAF	25 kV 50 Hz AC	250	250	\N	2009	images/Avant Class 114.png
\N	AVE Class 100	Renfe	TGV	GEC-Alstom CAF	25 kV 50 Hz AC 3 kV DC	300	300	357	1992	images/AVE Class 100.png
\N	AVE Class 102, 112	Renfe	Talgo 350	Talgo Bombardier	25 kV 50 Hz AC	300	350	365	2005	images/AVE Class 102, 112.png
\N	AVE Class 103	Renfe	Velaro	Siemens	25 kV 50 Hz AC	310	380	403.7[2]	2006	images/AVE Class 103.png
\N	Avelia Liberty (Acela 2nd generation)	Amtrak	TGV & New Pendolino derived	Alstom	25 kV 60 Hz AC 12 kV 60 Hz AC 12 kV 25 Hz AC	\N	350 (220 mph)[3]	\N	2023	images/Avelia Liberty (Acela 2nd generation).png
\N	Avelia Horizon	SNCF	TGV	Alstom	25 kV 50 Hz AC 1.5 kV DC	\N	350[4]	\N	2024	images/Avelia Horizon.png
\N	BR Class 43 (InterCity 125)	Abellio ScotRail  CrossCountry  Network Rail	HST	BREL	Diesel	201 (125 mph)	201 (125 mph)	238 (148 mph)	1976	images/BR Class 43 (InterCity 125).png
\N	BR Class 180 Alstom Coradia	East Midlands Railway  Grand Central	Coradia	Alstom	Diesel	201 (125 mph)	201 (125 mph)	\N	2002	images/BR Class 180 Alstom Coradia.png
\N	BR Class 220	CrossCountry	Voyager	Bombardier	Diesel	201 (125 mph)	201 (125 mph)	\N	2001	images/BR Class 220.png
\N	BR Class 221 Bombardier Voyager	CrossCountry  Avanti West Coast	Voyager	Bombardier	Diesel	201 (125 mph)	201 (125 mph)	\N	2002	images/BR Class 221 Bombardier Voyager.png
\N	BR Class 222	East Midlands Railway	Voyager	Bombardier	Diesel	201 (125 mph)	201 (125 mph)	\N	2004	images/BR Class 222.png
\N	BR Class 390 Alstom Pendolino	Avanti West Coast	Pendolino	Alstom	25 kV 50 Hz AC	201 (125 mph)	225 (140 mph)	248 (154 mph)	2002	images/BR Class 390 Alstom Pendolino.png
\N	BR Class 395 Javelin Hitachi AT300	Southeastern	A-train	Hitachi Rail	25 kV 50 Hz AC 750 V DC (3rd rail)	225 (140 mph)	225 (140 mph)	252 (157 mph)[5]	2009	images/BR Class 395 Javelin Hitachi AT300.png
\N	BR Class 397	TransPennine Express	CAF Civity	CAF	25 kV 50 Hz AC	201 (125 mph)	201 (125 mph)	\N	2019	images/BR Class 397.png
\N	BR Class 800	Great Western Railway  London North Eastern Railway	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	201 (125 mph)	225 (140 mph)	\N	2017	images/BR Class 800.png
\N	BR Class 801	London North Eastern Railway	A-train	Hitachi Rail	25 kV 50 Hz AC	201 (125 mph)	225 (140 mph)	\N	2019	images/BR Class 801.png
\N	BR Class 802	Great Western Railway  Hull Trains  TransPennine Express	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	201 (125 mph)	225 (140 mph)	\N	2018	images/BR Class 802.png
\N	BR Class 803	Lumo	A-train	Hitachi Rail	25 kV 50 Hz AC	201 (125 mph)	225 (140 mph)	\N	2021	images/BR Class 803.png
\N	BR Class 805	Avanti West Coast	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	\N	225 (140 mph)	\N	2023	images/BR Class 805.png
\N	BR Class 807	Avanti West Coast	A-train	Hitachi Rail	25 kV 50 Hz AC	\N	225 (140 mph)	\N	2023	images/BR Class 807.png
\N	BR Class 810	East Midlands Railway	A-train	Hitachi Rail	25 kV 50 Hz AC Diesel	\N	225 (140 mph)	\N	2024	images/BR Class 810.png
\N	CRH1A & CRH1B	China Railway	Regina	Bombardier CSR Sifang	25 kV 50 Hz AC	250	250	278	2007	images/CRH1A & CRH1B.png
\N	CRH1E	China Railway	Zefiro	Bombardier CSR Sifang	25 kV 50 Hz AC	250	250	\N	2009	images/CRH1E.png
\N	CRH1A-A CRH1E-250	China Railway	Zefiro	CSR Sifang	25 kV 50 Hz AC	250	250	\N	2016	images/CRH1A-A CRH1E-250.png
\N	CRH2A CRH2B CRH2E	China Railway	Shinkansen	Kawasaki CSR Sifang	25 kV 50 Hz AC	250	250	\N	2007	images/CRH2A CRH2B CRH2E.png
\N	CRH2E (New Batch, sleeper)	China Railway	Shinkansen	CSR Sifang	25 kV 50 Hz AC	250	250	\N	2017	images/CRH2E (New Batch, sleeper).png
\N	CRH2C	China Railway	Shinkansen	CSR Sifang	25 kV 50 Hz AC	310	350	350	2008	images/CRH2C.png
\N	CRH3A	China Railway	\N	CNR Tangshan CNR Changchun	25 kV 50 Hz AC	250	250	\N	2017	images/CRH3A.png
\N	CRH3C	China Railway	Velaro	Siemens CNR Tangshan CNR Changchun	25 kV 50 Hz AC	310	350	394.2	2008	images/CRH3C.png
\N	CRH5A	China Railway	New Pendolino	Alstom CNR Changchun	25 kV 50 Hz AC	250	250	\N	2007	images/CRH5A.png
\N	CRH5G	China Railway	New Pendolino	CNR Changchun	25 kV 50 Hz AC	250	250	\N	2017	images/CRH5G.png
\N	CRH6A	China Railway	\N	CSR Sifang	25 kV 50 Hz AC	200	220	\N	2014	images/CRH6A.png
\N	CRH380A & AL	China Railway	Shinkansen derived[6]	CSR Sifang	25 kV 50 Hz AC	350	380	486.1	2010	images/CRH380A & AL.png
\N	CRH380B, BL & CL	China Railway	Velaro	Siemens CNR Tangshan CNR Changchun	25 kV 50 Hz AC	350	380	487.3	2011	images/CRH380B, BL & CL.png
\N	CRH380D	China Railway	Zefiro	Bombardier CSR Sifang	25 kV 50 Hz AC	350	380	483	2012	images/CRH380D.png
\N	CR300AF	China Railway	Fuxing	CRRC Sifang	25 kV 50 Hz AC	250	300	\N	2019	images/CR300AF.png
\N	CR300BF	China Railway	Fuxing	CRRC Changchun	25 kV 50 Hz AC	250	300	\N	2019	images/CR300BF.png
\N	CR400AF, -A & -B	China Railway	Fuxing	CRRC Sifang	25 kV 50 Hz AC	350[7]	400	420	2017	images/CR400AF, -A & -B.png
\N	CR400BF, -A & -B	China Railway	Fuxing	CRRC Tangshan CRRC Changchun	25 kV 50 Hz AC	350[7]	400	420	2017	images/CR400BF, -A & -B.png
\N	DSB IC5	DSB	Coradia Stream	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC	\N	200	\N	2025	images/DSB IC5.png
\N	DSB IC4	DSB	IC4	AnsaldoBreda	Diesel	180	200	\N	2007	images/DSB IC4.png
\N	ED250	PKP Intercity	New Pendolino	Alstom	3 kV DC	200	250	293[8]	2014	images/ED250.png
\N	ČD Class 680	ČD	Pendolino	Alstom	25 kV 50 Hz AC, 15 kV 16.7 Hz AC and 3 kV DC	200	230	237	2006	images/ČD Class 680.png
\N	EMU-320	Korail	KTX	Hyundai Rotem	25 kV 60 Hz AC	305	352	\N	2023	images/EMU-320.png
\N	ETR 460	Trenitalia	Pendolino	Fiat Ferroviaria	3 kV DC	250	250	\N	1994	images/ETR 460.png
\N	ETR 470	SBB	Pendolino	Fiat Ferroviaria	3 kV DC 15 kV 16.7 Hz AC 25 kV 50 Hz	200	250	\N	1996–2014	images/ETR 470.png
\N	ETR 470	Trenitalia	Pendolino	Fiat Ferroviaria	3 kV DC 15 kV 16.7 Hz AC 25 kV 50 Hz	200	250	\N	1996–2021	images/ETR 470.png
\N	ETR 470	Hellenic Train	Pendolino	Fiat Ferroviaria	3 kV DC 15 kV 16.7 Hz AC 25 kV 50 Hz	200	250	\N	2022	images/ETR 470.png
\N	ETR 480 / ETR 485	Trenitalia	Pendolino	Fiat Ferroviaria	3 kV DC 25 kV 50 Hz AC	250	250	\N	1997	images/ETR 480 / ETR 485.png
\N	ETR 500 (2nd gen)	Trenitalia	\N	Alstom Bombardier AnsaldoBreda	25 kV 50 Hz AC 3 kV DC 1.5 kV DC (500F)	300	300	362[9]	2000	images/ETR 500 (2nd gen).png
\N	ETR 600	Trenitalia	New Pendolino	Alstom	25 kV 50 Hz AC 3 kV DC	250	250	\N	2008	images/ETR 600.png
\N	ETR 610	Trenitalia	New Pendolino	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 3 kV DC	250	250	\N	2008	images/ETR 610.png
\N	ETR 675	NTV	New Pendolino	Alstom	25 kV 50 Hz AC 3 kV DC	250	250	\N	2017	images/ETR 675.png
\N	ETR 700 (Previously known as V250)	Trenitalia (Previously NS  SNCB)	\N	AnsaldoBreda	25 kV 50 Hz AC 3 kV DC 1.5 kV DC	250	250	\N	2012 - 2013 2019	images/ETR 700 (Previously known as V250).png
\N	ETR 1000 (Frecciarossa 1000)	Trenitalia Iryo	Zefiro	Bombardier AnsaldoBreda	25 kV 50 Hz AC 3 kV DC 1.5 kV DC 15 kV 16.7 Hz AC	300	360	393.8[10]	2015	images/ETR 1000 (Frecciarossa 1000).png
\N	BR Class 373 Eurostar e300 Alstom TGV TMST (initially known as BR Class 373 or TGV TMST)	Eurostar  IZY	TGV	GEC-Alsthom	25 kV 50 Hz AC 3 kV DC 1.5 kV DC 750 V DC (3rd rail, no longer in use)	300 (190 mph)	300 (190 mph)	334.7 (208.0 mph)	1993	images/BR Class 373 Eurostar e300 Alstom TGV TMST (initially known as BR Class 373 or TGV TMST).png
\N	Eurostar e320 Siemens Velaro	Eurostar	Velaro	Siemens	25 kV 50 Hz AC 15 kV 16.7 Hz AC 3 kV DC 1.5 kV DC	300 (190 mph)	320 (200 mph)	352 (219 mph)	2015	images/Eurostar e320 Siemens Velaro.png
\N	Flytoget Class 78	Flytoget	Oaris	CAF	15 kV 16.7 Hz AC	210	250	\N	2021	images/Flytoget Class 78.png
\N	GMB Class 71	Flytoget	X 2000 derived	Adtranz Strømmen	15 kV 16.7 Hz AC	210	210	\N	1998	images/GMB Class 71.png
\N	ICE 1	DB	ICE	Siemens ABB AEG Krauss-Maffei Krupp Thyssen Henschel	15 kV 16.7 Hz AC	280	280	310	1991	images/ICE 1.png
\N	ICE 2	DB	ICE	Siemens Adtranz	15 kV 16.7 Hz AC	280	280	316	1996	images/ICE 2.png
\N	ICE 3 Class 403, 406	DB  NS	ICE	Siemens Bombardier	15 kV 16.7 Hz AC 25 kV 50 Hz AC [N 2] 1.5 kV DC [N 3] 3 kV DC [N 3]	320	330	368	2000	images/ICE 3 Class 403, 406.png
\N	ICE 3 Class 407	DB	Velaro	Siemens	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	320	320	352[11]	2013	images/ICE 3 Class 407.png
\N	ICE 3 Class 408	DB	Velaro Neo	Siemens	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	320	320	352	2022[12]	images/ICE 3 Class 408.png
\N	ICE T	DB  ÖBB	ICE (contains Pendolino technology)	Siemens Duewag Fiat Ferroviaria	15 kV 16.7 Hz AC	230	230	255	2005	images/ICE T.png
\N	ICE 4	DB	ICE	Siemens Bombardier (now Alstom)	15 kV 16.7 Hz AC	265	265	292[13]	2017	images/ICE 4.png
\N	IC2	DB	KISS	Stadler Rail	15 kV 16.7 Hz AC	200	200	\N	2020	images/IC2.png
\N	Stadler KISS	WESTbahn	KISS	Stadler Rail	15 kV 16.7 Hz AC	200	200	\N	2011	images/Stadler KISS.png
\N	SOKO	Srbija Voz	KISS	Stadler Rail	4000 kV	200	200	\N	2022	images/SOKO.png
\N	Intercity Nieuwe Generatie	NS	Coradia Stream	Alstom	25 kV 50 Hz AC 1.5 kV DC 3 kV DC	200	200	\N	2023	images/Intercity Nieuwe Generatie.png
\N	KCIC400AF	KCIC	Fuxing (CR400AF variant)	CRRC Qingdao Sifang	25 kV 50 Hz AC	\N	350[14]	\N	2023	images/KCIC400AF.png
\N	KTX-I	Korail	TGV	Alstom Hyundai Rotem	25 kV 60 Hz AC	305	330	\N	2004	images/KTX-I.png
\N	KTX-Eum	Korail	KTX	Hyundai Rotem	25 kV 60 Hz AC	260	286	\N	2020	images/KTX-Eum.png
\N	KTX-Sancheon	Korail	KTX	Hyundai Rotem	25 kV 60 Hz AC	305	330	\N	2010	images/KTX-Sancheon.png
\N	NSB Class 73	Go-Ahead Norge  SJ Norge  Vy	X 2000 derived	Adtranz Strømmen	15 kV 16.7 Hz AC	210	210	\N	1999	images/NSB Class 73.png
\N	NSB Class 74/75	Vy	FLIRT	Stadler Rail	15 kV 16.7 Hz AC	200[15]	200	\N	2012	images/NSB Class 74/75.png
\N	RABDe 500	SBB	ICN	Alstom Bombardier	15 kV 16.7 Hz AC	200	200	\N	2000	images/RABDe 500.png
\N	RABe 501	SBB	SMILE	Stadler Rail	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	250	250	275	2019	images/RABe 501.png
\N	RABe 502	SBB	TWINDEXX	Bombardier	15 kV 16.7 Hz AC	200[16]	200	\N	2018	images/RABe 502.png
\N	RABe 503	SBB	New Pendolino	Alstom	15 kV 16.7 Hz AC 25 kV 50 Hz AC 3 kV DC	250	250	\N	2008	images/RABe 503.png
\N	Regio 2N (Z 56500)	SNCF	Omneo	Bombardier	25 kV 50 Hz AC 1.5 kV DC	200	200	\N	2017	images/Regio 2N (Z 56500).png
\N	EVS1/EVS2 Sapsan	RZD	Velaro	Siemens	3 kV DC 25 kV 50 Hz AC	250	350	290	2009	images/EVS1/EVS2 Sapsan.png
\N	SAR push-pull train	SAR	\N	CAF	Diesel	200	200	\N	2017	images/SAR push-pull train.png
\N	500 Series Shinkansen	JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	300	320	\N	1997	images/500 Series Shinkansen.png
\N	700 Series Shinkansen	JR Central  JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	285	285	\N	1999	images/700 Series Shinkansen.png
\N	N700 Series Shinkansen	JR Central  JR Kyushu  JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	300	300	332[17]	2007	images/N700 Series Shinkansen.png
\N	N700A Series Shinkansen	JR Central  JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo Nippon Sharyo	25 kV 60 Hz AC	300	300	\N	2013	images/N700A Series Shinkansen.png
\N	N700S Series Shinkansen	JR Central	Shinkansen	Nippon Sharyo	25 kV 60 Hz AC	300	360	362[18]	2020	images/N700S Series Shinkansen.png
\N	N700S Series Shinkansen	JR Kyushu	Shinkansen	Nippon Sharyo	25 kV 60 Hz AC	260	360	\N	2022	images/N700S Series Shinkansen.png
\N	N700S Series Shinkansen	Texas Central Railway	Shinkansen	Nippon Sharyo	25 kV 60 Hz AC	\N	360 (220 mph)	\N	2026	images/N700S Series Shinkansen.png
\N	800 Series Shinkansen	JR Kyushu	Shinkansen	Hitachi Rail	25 kV 60 Hz AC	260	285	\N	2004	images/800 Series Shinkansen.png
\N	E2 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki Nippon Sharyo Tokyu Car	25 kV 50/60 Hz AC	275	275	362	1997	images/E2 Series Shinkansen.png
\N	E3 Series Shinkansen	JR East	Shinkansen	Kawasaki Tokyu Car	20/25 kV 50 Hz AC	275[19]	275	\N	1997	images/E3 Series Shinkansen.png
\N	E5 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki	25 kV 50 Hz AC	320[19]	320	\N	2011	images/E5 Series Shinkansen.png
\N	E5 Series Shinkansen	NHSRCL	Shinkansen	Hitachi Rail Kawasaki	25 kV 50 Hz AC	\N	320	\N	2026	images/E5 Series Shinkansen.png
\N	H5 Series Shinkansen	JR Hokkaido	Shinkansen	Hitachi Rail Kawasaki	25 kV 50 Hz AC	320	320	\N	2016	images/H5 Series Shinkansen.png
\N	E6 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki	20/25 kV 50 Hz AC	320[20]	320	\N	2013	images/E6 Series Shinkansen.png
\N	E7 Series Shinkansen	JR East	Shinkansen	Hitachi Rail Kawasaki J-TREC	25 kV 50/60 Hz AC	260[21]	275[21]	\N	2014	images/E7 Series Shinkansen.png
\N	W7 Series Shinkansen	JR West	Shinkansen	Hitachi Rail Kawasaki Kinki Sharyo	25 kV 50/60 Hz AC	260[21]	275[21]	\N	2015	images/W7 Series Shinkansen.png
\N	E8 Series Shinkansen	JR East	Shinkansen	Kawasaki	20/25 kV 50 Hz AC	\N	300	\N	2024	images/E8 Series Shinkansen.png
\N	Sm3	VR	Pendolino	Fiat Ferroviaria Rautaruukki Transtech	25 kV 50 Hz AC	220	220	242	1995	images/Sm3.png
\N	Sm6 Allegro	Karelian Trains	Pendolino	Alstom	25 kV 50 Hz AC 3 kV DC	220	220	\N	2010	images/Sm6 Allegro.png
\N	Talgo 350 SRO	SRO	Talgo 350	Talgo Bombardier	25 kV 50 Hz AC	300	350	\N	2018[22]	images/Talgo 350 SRO.png
\N	TCDD HT65000	TCDD Taşımacılık	Cepia	CAF	25 kV 50 Hz AC	250	250	\N	2009	images/TCDD HT65000.png
\N	TCDD HT80000	TCDD Taşımacılık	Velaro	Siemens	25 kV 50 Hz AC	250	300	\N	2015	images/TCDD HT80000.png
\N	TGV Atlantique	SNCF	TGV	Alsthom	25 kV 50 Hz AC 1.5 kV DC	300	300	515.3	1989	images/TGV Atlantique.png
\N	TGV Réseau	SNCF	TGV	GEC-Alsthom	25 kV 50 Hz AC 1.5 kV DC 3 kV DC	320	320	\N	1993	images/TGV Réseau.png
\N	TGV Duplex	SNCF	TGV	GEC-Alsthom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC	320	320	\N	1995	images/TGV Duplex.png
\N	TGV Oceane	SNCF	TGV	GEC-Alsthom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC	320	320	\N	2017	images/TGV Oceane.png
\N	TGV POS	SNCF	TGV	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC	320	320	574.8	2006	images/TGV POS.png
\N	TGV Euroduplex	SNCF  TGV Lyria  ONCF  Ouigo España	TGV	Alstom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC 3 kV DC	320	320	\N	2011	images/TGV Euroduplex.png
\N	Thalys PBA	Thalys	TGV	GEC-Alsthom	25 kV 50 Hz AC 1.5 kV DC 3 kV DC	300	320	\N	1996	images/Thalys PBA.png
\N	Thalys PBKA	Thalys	TGV	GEC-Alsthom	25 kV 50 Hz AC 15 kV 16.7 Hz AC 1.5 kV DC 3 kV DC	300	320	\N	1997	images/Thalys PBKA.png
\N	THSR 700T	THSR	Shinkansen	Hitachi Rail Kawasaki Nippon Sharyo	25 kV 60 Hz AC	300	315	315[23]	2007	images/THSR 700T.png
\N	Velaro Novo	Brightline West	Velaro	Siemens Mobility	25 kV 60 Hz AC	\N	380 (240 mph)	\N	2027	images/Velaro Novo.png
\N	Vibrant Express	MTR Corporation[24]	.mw-parser-output .plainlist ol,.mw-parser-output .plainlist ul{line-height:inherit;list-style:none;margin:0;padding:0}.mw-parser-output .plainlist ol li,.mw-parser-output .plainlist ul li{margin-bottom:0} CRH380A variant Shinkansen-derived (allegedly)[6]	CRRC Qingdao Sifang[25]	25 kV 50 Hz AC	300	380	\N	2018[26][27]	images/Vibrant Express.png
\N	X2	SJ	X 2000	Adtranz ABB	15 kV 16.7 Hz AC 25 kV 50 Hz AC	200	210	276	1989	images/X2.png
\N	X3	Arlanda Express	Coradia	GEC-Alsthom	15 kV 16.7 Hz AC	200	205	\N	1998	images/X3.png
\N	X40	SJ	Coradia	Alstom	15 kV 16.7 Hz AC	200	200	\N	2006	images/X40.png
\N	X50 - 55	SJ  Tågkompaniet  Västtrafik  Veolia Transport  Upplands Lokaltrafik	Regina	Bombardier	15 kV 16.7 Hz AC	200	200	303	2000	images/X50 - 55.png
\N	X74	MTRX	Stadler FLIRT	Stadler Rail	15 kV 16.7 Hz AC	200	200	\N	2015	images/X74.png
\N	ER1	Mälardalstrafik  Upplands Lokaltrafik  Tågkompaniet	Stadler Dosto	Stadler Rail	6 000 kW	200	200	\N	2019	images/ER1.png
\N	X80	Västtrafik	Zefiro	Bombardier	15 kV 16.7 Hz AC	\N	200	\N	2023	images/X80.png
\N	Zefiro Express	SJ	Zefiro	Alstom	15 kV 16.7 Hz AC	\N	250	\N	2026	images/Zefiro Express.png
\N	Z-TER	SNCF	\N	Alstom Bombardier	25 kV 50 Hz AC 1.5 kV DC	200	200	\N	2003	images/Z-TER.png
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, mail, password) FROM stdin;
1	John Doe	johndoe@example.com	pass123
2	Jane Smith	janesmith@example.com	hello456
3	Michael Johnson	michaeljohnson@example.com	abc123
4	Sarah Davis	sarahdavis@example.com	password789
5	Robert Brown	robertbrown@example.com	securepass
6	Emily Wilson	emilywilson@example.com	letmein
7	David Taylor	davidtaylor@example.com	p@ssw0rd
8	Lisa Anderson	lisaanderson@example.com	welcome123
9	Matthew Thomas	matthewthomas@example.com	secretword
10	Amanda Martinez	amandamartinez@example.com	test123
11	James Garcia	jamesgarcia@example.com	mysecret
12	Olivia Rodriguez	oliviarodriguez@example.com	password1234
13	Christopher Wilson	christopherwilson@example.com	securepassword
14	Emma Lopez	emmalopez@example.com	12345678
15	Alexander Lee	alexanderlee@example.com	letmein123
16	Abigail Hernandez	abigailhernandez@example.com	password!
17	Daniel Walker	danielwalker@example.com	welcome1234
18	Isabella Green	isabellagreen@example.com	passw0rd
19	Anthony Hill	anthonyhill@example.com	test456
20	Sophia Adams	sophiaadams@example.com	mysecret123
21	Andrew Clark	andrewclark@example.com	abcde123
22	Elizabeth Baker	elizabethbaker@example.com	pa$$w0rd
23	Joseph White	josephwhite@example.com	hello1234
24	Mia Harris	miaharris@example.com	secretpass123
25	William Turner	williamturner@example.com	password@123
26	Grace Lewis	gracelewis@example.com	test789
27	Ethan Lewis	ethanlewis@example.com	mysecretword
28	Chloe Turner	chloeturner@example.com	pass1234
29	Charlotte Young	charlotteyoung@example.com	letmein1234
30	Alexander Davis	alexanderdavis@example.com	password12345
31	Sophia Adams	sophiaadams@example.com	securepass123
32	Logan Martin	loganmartin@example.com	welcome12345
33	Mia Thompson	miathompson@example.com	abc12345
34	Liam Smith	liamsmith@example.com	pa$$w0rd123
35	Olivia Johnson	oliviajohnson@example.com	hello12345
36	Noah Davis	noahdavis@example.com	secretpass12345
37	Emma Brown	emmabrown@example.com	test12345
38	Ava Anderson	avaanderson@example.com	mysecretpass
39	William Jones	williamjones@example.com	pass@12345
40	Sophia Wilson	sophiawilson@example.com	letmein@12345
41	Logan Harris	loganharris@example.com	password123456
42	Amelia Garcia	ameliagarcia@example.com	securepass12345
43	James Thomas	jamesthomas@example.com	welcome123456
44	Oliver Davis	oliverdavis@example.com	abcde12345
45	Isabella Jackson	isabellajackson@example.com	pa$$w0rd@123
46	Sophia Green	sophiagreen@example.com	hello123456
47	Charlotte Lopez	charlotte-lopez@example.com	secretpass123456
48	Liam Martinez	liammartinez@example.com	test123456
49	Ava Taylor	avataylor@example.com	mysecret123456
50	Noah Wilson	noahwilson@example.com	pass123456
51	Emma Hernandez	emmahernandez@example.com	letmein123456
52	Oliver Anderson	oliveranderson@example.com	password1234567
53	Isabella Clark	isabellaclark@example.com	securepass123456
54	Sophia Walker	sophiawalker@example.com	welcome1234567
55	Mia Turner	miaturner@example.com	abc1234567
56	Liam Martinez	liammartinez@example.com	pa$$w0rd1234567
57	Ava Adams	avaadams@example.com	hello1234567
58	Noah Garcia	noahgarcia@example.com	secretpass1234567
59	Emma Brown	emmabrown@example.com	test1234567
60	Oliver Harris	oliverharris@example.com	mysecret1234567
61	Isabella Davis	isabelladavis@example.com	pass@1234567
62	Sophia White	sophiawhite@example.com	letmein@1234567
63	Liam Wilson	liamwilson@example.com	password12345678
64	Ava Johnson	avajohnson@example.com	securepass1234567
65	Noah Smith	noahsmith@example.com	welcome12345678
66	Emma Thompson	emmathompson@example.com	abc12345678
67	Oliver Lewis	oliverlewis@example.com	pa$$w0rd12345678
68	Isabella Harris	isabellaharris@example.com	hello12345678
69	Sophia Adams	sophiaadams@example.com	secretpass12345678
70	Liam Clark	liamclark@example.com	test12345678
71	Ava Baker	avabaker@example.com	mysecret12345678
72	Noah Walker	noahwalker@example.com	pass12345678
73	Emma Young	emmayoutg@example.com	letmein12345678
74	Oliver Davis	oliverdavis@example.com	password123456789
75	Isabella Hernandez	isabellahernandez@example.com	securepass12345678
76	Sophia Wilson	sophiawilson@example.com	welcome123456789
77	Liam Thompson	liamthompson@example.com	abc123456789
78	Ava Smith	avasmith@example.com	pa$$w0rd123456789
79	Noah Garcia	noahgarcia@example.com	hello123456789
80	Emma Brown	emmabrown@example.com	secretpass123456789
81	Oliver Harris	oliverharris@example.com	test123456789
82	Isabella Davis	isabelladavis@example.com	mysecret123456789
83	Sophia White	sophiawhite@example.com	pass@123456789
84	Liam Wilson	liamwilson@example.com	letmein@123456789
85	Ava Johnson	avajohnson@example.com	password123456789
86	Noah Smith	noahsmith@example.com	securepass123456789
87	Emma Thompson	emmathompson@example.com	welcome123456789
88	Oliver Lewis	oliverlewis@example.com	abc1234567890
89	Isabella Harris	isabellaharris@example.com	pa$$w0rd123456789
90	Sophia Adams	sophiaadams@example.com	hello1234567890
91	Liam Clark	liamclark@example.com	secretpass1234567890
92	Ava Baker	avabaker@example.com	test1234567890
93	Noah Walker	noahwalker@example.com	mysecret1234567890
94	Emma Young	emmayoutg@example.com	pass1234567890
95	Oliver Davis	oliverdavis@example.com	letmein1234567890
96	Isabella Hernandez	isabellahernandez@example.com	password1234567890
97	Sophia Wilson	sophiawilson@example.com	securepass1234567890
98	Liam Thompson	liamthompson@example.com	welcome1234567890
99	Ava Smith	avasmith@example.com	abc1234567890
100	Noah Garcia	noahgarcia@example.com	pa$$w0rd1234567890
101	test	test	123
2	HELLO	TEST	123
102	Mikkel	mikkel.doha@gmail.com	123
103	Mikkel	mikkel.doha@gmail.com	123
104	Test	test@testmail.com	123
\.


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: mikkelkjaerulf
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: mikkelkjaerulf
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: ix_trains_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_trains_index ON public.trains USING btree (index);


--
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


--
-- Name: customers customers_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mikkelkjaerulf
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_id_fkey FOREIGN KEY (id) REFERENCES public.client(id);


--
-- PostgreSQL database dump complete
--

