--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.0
-- Dumped by pg_dump version 11.3

-- Started on 2019-09-04 13:50:48

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

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 24690)
-- Name: city_restriction_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city_restriction_rule (
    city_restriction_rule_id integer NOT NULL,
    age integer,
    effective_date date,
    city_id integer,
    restriction_item_id integer
);


ALTER TABLE public.city_restriction_rule OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 24695)
-- Name: city_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city_type (
    city_id integer NOT NULL,
    city_name character varying(255),
    county_id integer
);


ALTER TABLE public.city_type OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 24700)
-- Name: country_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_type (
    country_id integer NOT NULL,
    country_code character varying(255) NOT NULL,
    country_name character varying(255) NOT NULL
);


ALTER TABLE public.country_type OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 24708)
-- Name: county_restriction_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.county_restriction_rule (
    county_restriction_rule_id integer NOT NULL,
    age integer,
    effective_date date,
    county_id integer,
    restriction_item_id integer
);


ALTER TABLE public.county_restriction_rule OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 24713)
-- Name: county_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.county_type (
    county_id integer NOT NULL,
    county_name character varying(255),
    state_id integer
);


ALTER TABLE public.county_type OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 24688)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 24718)
-- Name: restriction_item_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restriction_item_type (
    restriction_item_id integer NOT NULL,
    restriction_item_code character varying(255),
    restriction_item_name character varying(255)
);


ALTER TABLE public.restriction_item_type OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16759)
-- Name: state_restriction_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state_restriction_item (
    state_rule_id integer NOT NULL,
    state_age integer,
    state_effective_date date,
    item_id integer NOT NULL,
    item_name character varying(255),
    state_id integer
);


ALTER TABLE public.state_restriction_item OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 24726)
-- Name: state_restriction_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state_restriction_rule (
    state_restriction_rule_id integer NOT NULL,
    age integer,
    effective_date date,
    restriction_item_id integer,
    state_id integer
);


ALTER TABLE public.state_restriction_rule OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 24731)
-- Name: state_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state_type (
    state_id integer NOT NULL,
    state_code character varying(255),
    state_name character varying(255),
    country_id integer
);


ALTER TABLE public.state_type OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 24739)
-- Name: store_csv_batch_job_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_csv_batch_job_entity (
    store_csv_batch_job_id integer NOT NULL,
    run_date_time timestamp without time zone NOT NULL
);


ALTER TABLE public.store_csv_batch_job_entity OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 24744)
-- Name: store_csv_rule_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_csv_rule_entity (
    store_csv_rule_id integer NOT NULL,
    effective_date date NOT NULL,
    geography_type character varying(255),
    restriction_age integer NOT NULL,
    restriction_item_id integer NOT NULL,
    store_number integer NOT NULL,
    store_csv_batch_job_id integer
);


ALTER TABLE public.store_csv_rule_entity OWNER TO postgres;

--
-- TOC entry 2196 (class 0 OID 24690)
-- Dependencies: 188
-- Data for Name: city_restriction_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city_restriction_rule (city_restriction_rule_id, age, effective_date, city_id, restriction_item_id) FROM stdin;
\.


--
-- TOC entry 2197 (class 0 OID 24695)
-- Dependencies: 189
-- Data for Name: city_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.city_type (city_id, city_name, county_id) FROM stdin;
3277	Reserve	2833
3278	Reserve	1223
3279	Reserve	638
3280	Reserve	2040
3281	Reserve	935
3282	East Dailey	2678
3283	Oak Run	584
3284	North Madison	1328
3285	Rutersville	2567
3286	Shelburne Falls	2129
3287	Penney Farms	1532
3288	Miltonville	785
3289	West Seboeis	392
3290	Jerry City	2338
3291	Elim	717
3292	Elim	3032
3293	Hurt	456
3294	Finleyson	373
3295	Pine Ridge	1177
3296	Pine Ridge	1774
3297	Pine Ridge	799
3298	Pine Ridge	1752
3299	Chico	1147
3300	Chico	766
3301	Chico	1048
3302	Titley	1617
3303	Toftrees	393
3304	Glenburn	221
3305	Glenburn	3057
3306	Pueblo Nuevo	817
3307	Massanetta Springs	2084
3308	Clifton Forge	777
3309	Potter Lake	1094
3310	Oriskany Falls	3238
3311	North Lynnwood	99
3312	Des Peres	3196
3313	Revillo	1121
3314	Rockham	2944
3315	Bonney Lake	1925
3316	Port Saint Joe	2401
3317	Half Moon Bay	1423
3318	Compton	1232
3319	Compton	2098
3320	Compton	404
3321	Wilderness	3142
3322	Wilderness	1690
3323	Dade City	1915
3324	Silver Peak	3194
3325	Dunphy	1716
3326	Aplin	1847
3327	Haw River	1509
3328	Mill Shoals	1907
3329	College Park	2715
3330	College Park	2064
3331	Buffalo Grove	761
3332	Port Allen	2994
3333	Lost Nation	2896
3334	Lost Nation	1978
3335	River Heights	2709
3336	Canastota	2042
3337	Home Garden	861
3338	Madden	1932
3339	Neosho Falls	3025
3340	Marquette Heights	1777
3341	Quapaw	1732
3342	Slate Spring	1278
3343	Taylorstown	483
3344	Chancellor	1693
3345	Chancellor	2193
3346	Chancellor	2535
3347	Paradise Park	1362
3348	Runnemede	2977
3349	Oquossoc	2124
3350	Grand Ridge	2507
3351	Grand Ridge	1816
3352	Sundown	97
3353	Sundown	1157
3354	RÃ­o Lajas	2656
3355	Elko	2116
3356	Elko	108
3357	Elko	2175
3358	Canal Winchester	406
3359	Cottonwood Falls	934
3360	Abo	1625
3361	Conchas	1039
3362	Aredale	782
3363	Foristell	1082
3364	Fort Cobb	307
3365	Ella	1711
3366	Ella	2803
3367	Wooldridge	158
3368	Metolius	983
3369	Parlin	549
3370	Ace	2540
3371	Pontotoc	134
3372	Pontotoc	745
3373	New Cambria	3159
3374	New Cambria	103
3375	Milford	968
3376	Milford	1491
3377	Milford	1177
3378	Milford	1498
3379	Milford	718
3380	Milford	2799
3381	Milford	2409
3382	Milford	778
3383	Milford	1955
3384	Milford	1882
3385	Milford	1887
3386	Milford	1472
3387	Milford	1241
3388	Milford	869
3389	Milford	392
3390	Milford	612
3391	Milford	167
3392	Milford	3266
3393	Milford	1760
3394	Milford	1314
3395	Milford	2663
3396	Milford	2706
3397	Milford	2893
3398	Milford	823
3399	Los Medanos	3143
3400	San Carlos Number 1 Colonia	817
3401	Breslau	978
3402	Saint Cloud	1411
3403	Saint Cloud	2090
3404	Saint Cloud	2157
3405	Saint Cloud	1709
3406	Celeste	3215
3407	Westervelt	191
3408	Sledge	3119
3409	Acy	1618
3410	Biddle	210
3411	Flintville	1187
3412	Farr West	1433
3413	Lincroft	278
3414	Ferney	635
3415	Belleair Shores	2785
3416	Fruithurst	3275
3417	Kremlin	3004
3418	Kremlin	453
3419	Jensen Beach	2212
3420	Palisade	1716
3421	Palisade	2300
3422	Palisade	2802
3423	Palisade	2167
3424	East Hampton	940
3425	East Hampton	96
3426	Ada	2388
3427	Ada	1762
3428	Ada	915
3429	Ada	529
3430	Ada	1731
3431	Ada	133
3432	Theba	3086
3433	Hickory Flat	1640
3434	Valley Cottage	2960
3435	Glastonbury Center	1712
3436	Maribel	626
3437	Needville	1890
3438	Seward	2691
3439	Seward	2385
3440	Seward	1806
3441	Seward	2182
3442	Seward	167
3443	Seward	1319
3444	Elmo	796
3445	Elmo	1322
3446	Elmo	2361
3447	Elmo	2810
3448	Elmo	1316
3449	Elmo	1778
3450	Southton	1083
3451	Cloverton	1358
3452	Bergland	3072
3453	San Perlita	1141
3454	Rocky Hill	1828
3455	Rocky Hill	129
3456	Poynor	2652
3457	Winneconne	2690
3458	Avonia	1512
3459	Pedley	3210
3460	Ady	714
3461	Ady	2959
3462	Foley	1644
3463	Foley	1201
3464	Foley	1988
3465	Foley	1064
3466	Emmitsburg	3153
3467	Johntown	2235
3468	Torboy	1150
3469	Wheatland	2010
3470	Wheatland	1775
3471	Wheatland	1253
3472	Wheatland	1051
3473	Wheatland	581
3474	Wheatland	2896
3475	Wheatland	3180
3476	Wheatland	1849
3477	Dike	2503
3478	Hayfield	1965
3479	Hayfield	2405
3480	Hayfield	953
3481	Monowi	72
3482	Jewell	2333
3483	Jewell	174
3484	Jewell	2070
3485	Lavalette	2607
3486	Phoenixville	90
3487	Naples Manor	832
3488	Wilkinson	1967
3489	Wilkinson	182
3490	Wilkinson	3179
3491	Wilkinson	1667
3492	Libertyville	2575
3493	Libertyville	1889
3494	Libertyville	230
3495	Libertyville	3110
3496	Libertyville	1326
3497	Libertyville	1001
3498	Redstone	1223
3499	Redstone	399
3500	Beattystown	2306
3501	Elsmere	2016
3502	Elsmere	2397
3503	Elsmere	2563
3504	Hilldale	2641
3505	Cleo Springs	397
3506	Elma	256
3507	Elma	2499
3508	Enola	83
3509	Enola	2050
3510	Enola	333
3511	Casas Adobes	1247
3512	Kwethluk	2260
3513	Meers	2512
3514	Capistrano Beach	3140
3515	Fork	1498
3516	Chamita	2725
3517	Chalmette	2298
3518	Elon	1509
3519	Saint Bernard	1850
3520	Saint Bernard	2075
3521	Saint Bernard	2298
3522	McKinleyville	319
3523	Nesbit	871
3524	Hercules	3143
3525	Eloy	1914
3526	Clarinda	1517
3527	Whitley Gardens	2207
3528	Mount Harmony	2983
3529	Hyampom	317
3530	Kenvir	1898
3531	Judyville	2303
3532	Kenvil	2877
3533	Dime	775
3534	Sharpsville	2010
3535	Sharpsville	1683
3536	Alpine Village	1937
3537	Fingerville	3162
3538	Arivaca Junction	1247
3539	Kerby	2203
3540	Crewe	1953
3541	New York	2652
3542	New York	213
3543	Middle Island	940
3544	Henshaw	498
3545	Tampico	1718
3546	Tampico	3168
3547	Tampico	3268
3548	Charter Oak	1408
3549	Charter Oak	404
3550	Meadowview Estates	997
3551	Jasmine Estates	1915
3552	Gwenford	3240
3553	Homecroft	678
3554	Bridgton	79
3555	Sherburn	2211
3556	Mascoutah	918
3557	West Kittanning	775
3558	Edray	1243
3559	Avery Creek	2270
3560	Socorro	228
3561	Socorro	3227
3562	McCurtain	1180
3563	Kenwood	1790
3564	Kenwood	2075
3565	Kenwood	2808
3566	Boschertown	1082
3567	Chical	3272
3568	Dickerson	740
3569	Forest Home	787
3570	Forest Home	2614
3571	Comobabi	1247
3572	Amiret	140
3573	Ford	657
3574	Ford	233
3575	Melder	2402
3576	Catlin	2036
3577	Catlin	2791
3578	Rocky Boy's Agency	453
3579	Unionville Center	510
3580	Belle Chasse	2473
3581	Hayes Center	703
3582	North Albany	1638
3583	South Bend	3102
3584	South Bend	214
3585	South Bend	3181
3586	South Bend	1306
3587	Model City	2910
3588	South Yarmouth	1162
3589	Quemado	867
3590	Quemado	2040
3591	Dalzell	1704
3592	Dalzell	515
3593	Moline	1363
3594	Moline	163
3595	Curran	695
3596	Molina	2167
3597	Franktown	2815
3598	Cheat Lake	830
3599	Nabesna	3172
3600	Emmett	2033
3601	Emmett	1608
3602	Emmett	920
3603	Mammoth Cave	309
3604	Harbor Springs	2519
3605	Island Heights	2627
3606	Morocco	1231
3607	Laramie	923
3608	Pine Springs	1097
3609	Pine Springs	480
3610	Linn Creek	2978
3611	Pennsburg	731
3612	Golf View	2628
3613	Weatherby	1756
3614	Rockerville	907
3615	Tarver	1400
3616	Aid	537
3617	Ovilla	823
3618	Roanoke Rapids	795
3619	East Palo Alto	1423
3620	South Coatesville	90
3621	Barkeyville	2990
3622	Teller	717
3623	Foss	757
3624	Wilton	2360
3625	Wilton	195
3626	Wilton	869
3627	Wilton	2688
3628	Wilton	546
3629	Wilton	1702
3630	Wilton	2124
3631	Wilton	2282
3632	Wilton	833
3633	Waltreak	2869
3634	Sargents	384
3635	Whitewater	2600
3636	Whitewater	2619
3637	Whitewater	1557
3638	Whitewater	1128
3639	Whitewater	1094
3640	Whitewater	786
3641	Whitewater	2167
3642	Eldred	2543
3643	Eldred	1217
3644	Eldred	564
3645	Eldred	1946
3646	Cairnbrook	131
3647	Bendena	2028
3648	Enders	933
3649	South Lake Tahoe	1594
3650	Granite Shoals	1339
3651	Cole Camp	1643
3652	Clarks Point	2019
3653	Parkston	1757
3654	Elberta	180
3655	Elberta	1988
3656	Burkeville	1953
3657	Burkeville	1233
3658	Wytopitlock	2201
3659	Risingsun	2338
3660	Port Henry	2742
3661	Crete	106
3662	Crete	875
3663	Crete	3010
3664	Lee Bayou	3248
3665	Pawling	3031
3666	Zion	393
3667	Zion	652
3668	Zion	2055
3669	Zion	1326
3670	Zion	1633
3671	Zion	1385
3672	Shinnston	615
3673	Creta	1811
3674	Hoytville	2338
3675	Cochranville	90
3676	Ajo	1247
3677	Rupert	2299
3678	Rupert	1063
3679	Rupert	1079
3680	Rupert	2836
3681	Bean Station	980
3682	Meppen	1280
3683	Montrose Manor	362
3684	Hopeland	1139
3685	Edwardsville	2054
3686	Edwardsville	3275
3687	Edwardsville	1312
3688	Edwardsville	2641
3689	Mattawoman	335
3690	Haymarket	321
3691	Bondurant	2539
3692	Bondurant	2713
3693	Bondurant	2412
3694	Theresa	955
3695	Theresa	995
3696	Adelino	3272
3697	O'Donnell	60
3698	Ocean Springs	1822
3699	Vero Beach	2114
3700	Kerrick	521
3701	Kerrick	1358
3702	Fairbanks	209
3703	Fairbanks	1947
3704	Fairbanks	132
3705	Fairbanks	243
3706	Fort Kent	2201
3707	Leamington	2152
3708	Holcombe	660
3709	Poinciana	2157
3710	Rural Hill	2939
3711	Butte Meadows	766
3712	Chicopee	1024
3713	Chicopee	542
3714	Chicopee	1414
3715	Fort Ann	477
3716	Emerald Isle	1182
3717	Colonial Beach	2384
3718	Zinc	252
3719	Goose Prairie	3268
3720	Patricksburg	1044
3721	Winnsboro Mills	407
3722	Pittsford	2588
3723	Pittsford	2344
3724	Crest	2381
3725	Molino	2667
3726	Elsa	1353
3727	Edmonson	1012
3728	Garrett	2816
3729	Garrett	131
3730	Garrett	1753
3731	Garrett	2989
3732	Garrett	823
3733	Meggett	905
3734	Ariton	674
3735	Kinmundy	690
3736	Cool Valley	3196
3737	Dares Beach	2983
3738	Arkansas City	1661
3739	Arkansas City	1026
3740	Arrey	170
3741	Wyncote	731
3742	Okarche	1368
3743	La Villa	1353
3744	Bridgetown	2894
3745	Bridgetown	2075
3746	Lufkin	1859
3747	Ware Shoals	3075
3748	Hollyvilla	997
3749	Trinity	2677
3750	Trinity	1915
3751	Trinity	119
3752	Trinity	316
3753	Sunset Village	67
3754	Forest Glen	740
3755	North Randall	708
3756	Angela	2377
3757	College Station	375
3758	College Station	1626
3759	Little Marais	1329
3760	Connoquenessing	789
3761	Plum	2632
3762	Silverthorne	1724
3763	Ama	1081
3764	Madrone	3272
3765	Glen Rock	1572
3766	Glen Rock	853
3767	Estes Park	831
3768	South River	94
3769	Amo	1891
3770	Texola	3269
3771	Jewett	1208
3772	Jewett	622
3773	Jewett	78
3774	Sand Hill	1493
3775	La Sal	2932
3776	Huron	937
3777	Huron	531
3778	Huron	1511
3779	Huron	3259
3780	Huron	2934
3781	Elberon	1861
3782	Garden Valley	3171
3783	Kenneth City	2785
3784	Amy	1447
3785	Amy	244
3786	Nestorville	289
3787	Ohatchee	1283
3788	Adeline	1978
3789	Elk Mills	652
3790	Rockwell City	1277
3791	Chariton	2941
3792	Bartlesville	468
3793	Adwolf	2410
3794	Mountainaire	353
3795	Goffs	721
3796	Waynetown	725
3797	Markham	2674
3798	Markham	761
3799	Markham	2499
3800	Willow Creek	319
3801	Willow Creek	579
3802	Willow Creek	3172
3803	Valley Head	2678
3804	Valley Head	1752
3805	Groom	3094
3806	Sansom Park	3084
3807	Ashburn	3118
3808	Ashburn	1171
3809	Ashburn	2536
3810	Amboy	2326
3811	Amboy	2098
3812	Amboy	1444
3813	Amboy	721
3814	Amboy	667
3815	Yamhill	363
3816	Justiceburg	855
3817	Eyota	1258
3818	Latham Park	2691
3819	Eucha	2808
3820	Mashulaville	1962
3821	Ewing	2139
3822	Ewing	1869
3823	Ewing	2531
3824	Ewing	914
3825	Ewing	2103
3826	Stoneham	847
3827	Stoneham	1101
3828	Stoneham	95
3829	Toro Canyon	2107
3830	Zita	2279
3831	Thompsonville	1712
3832	Thompsonville	2139
3833	Thompsonville	3189
3834	Thompsonville	180
3835	Thompsonville	483
3836	Tonawanda	1510
3837	Bayonet Point	1915
3838	Bald Creek	1237
3839	Framingham	95
3840	Nora Springs	265
3841	Paynes Creek	3186
3842	Orchard City	1797
3843	Wishek	1041
3844	Kelayres	2826
3845	Jan-Phyl Village	2545
3846	Manack	3065
3847	Aneta	273
3848	Indian Trail	494
3849	Estral Beach	2352
3850	Livingston	2054
3851	Livingston	385
3852	Livingston	2108
3853	Livingston	514
3854	Livingston	1749
3855	Livingston	3183
3856	Livingston	2540
3857	Livingston	1910
3858	Livingston	1985
3859	Livingston	1131
3860	Edneyville	2651
3861	Pettigrew	2049
3862	Fox Island	1925
3863	Aneth	2932
3864	Saint Helens	1072
3865	North Bennington	1780
3866	Spottsville	2655
3867	Calpine	171
3868	Christiansted	648
3869	Dresbach	2423
3870	Grand Terrace	721
3871	West Carrollton	737
3872	Wolfhurst	1591
3873	Hallsville	250
3874	Hallsville	619
3875	Home Gardens	3210
3876	Saint Helena	65
3877	Saint Helena	3151
3878	Saint Helena	451
3879	Summit Park	1726
3880	Steamboat Rock	2387
3881	Preston Heights	875
3882	Merrionette Park	761
3883	Keensburg	1246
3884	Bushkill	1177
3885	Winterport	450
3886	Loch Sheldrake	1946
3887	Valley Acres	263
3888	Bloomsbury	1491
3889	Ponchatoula	169
3890	Schaal	260
3891	Stobo	1883
3892	Currie	2195
3893	Currie	108
3894	Currie	451
3895	Ancient Oaks	1372
3896	Federal Hill	2959
3897	Bradgate	318
3898	High Amana	3081
3899	Aulander	1681
3900	Taunton	140
3901	Taunton	597
3902	Oklee	569
3903	Ryland	2397
3904	Highpoint	2075
3905	Highpoint	2971
3906	Highpoint	2785
3907	Mescalero	344
3908	Erbacon	2589
3909	Meadow	2152
3910	Meadow	3099
3911	Meadow	1134
3912	Needham	894
3913	Needham	2618
3914	Niles	761
3915	Niles	2946
3916	Niles	1767
3917	Niles	1731
3918	Vulcan	1315
3919	Beason	2181
3920	Waucoma	2565
3921	Tullahoma	768
3922	Broomall	2809
3923	Bois D'Arc	565
3924	Hurst	123
3925	Hurst	3084
3926	Beaufort	439
3927	Beaufort	1182
3928	Pierpont	250
3929	Pierpont	2449
3930	Pierpont	462
3931	Snover	445
3932	Durhamville	3238
3933	Tensed	3083
3934	Naranjito Zona Urbana	1734
3935	Waycross	1550
3936	Waldoboro	1189
3937	Basin City	2127
3938	Society Hill	94
3939	Society Hill	647
3940	Society Hill	3156
3941	Shallowater	300
3942	Gross	72
3943	Arm	530
3944	Arp	1603
3945	De Leon	2511
3946	East Pepperell	95
3947	La Rue	692
3948	Yaurel	2659
3949	Art	745
3950	Pinebluff	326
3951	Culloden	1979
3952	Culloden	2359
3953	Ekalaka	2558
3954	Tonopah	874
3955	Tonopah	3086
3956	Colonial Park	1369
3957	Dante	1452
3958	Dante	3096
3959	South Uniontown	2574
3960	Sweden	2201
3961	Kinsman	2505
3962	Kinsman	2946
3963	Castle Rock	764
3964	Castle Rock	198
3965	Castle Rock	2815
3966	Tappen	1479
3967	Winesburg	2277
3968	Maybell	1721
3969	South China	1500
3970	Frannie	2723
3971	Valentine	2016
3972	Valentine	793
3973	Valentine	2061
3974	Valentine	829
3975	UtqiagÌ‡vik	1801
3976	Dixonville	482
3977	Grabill	443
3978	Ramsay	2026
3979	Ramsay	1772
3980	Pottawattamie Park	2792
3981	Springview	420
3982	Callender	2590
3983	Callender	2207
3984	New Virginia	2308
3985	Bristow	782
3986	Bristow	321
3987	Bristow	72
3988	Bristow	755
3989	Glenwood Springs	3003
3990	McDonald Chapel	987
3991	Wasilla	150
3992	Greenhills	2075
3993	Yauco	545
3994	Grove	2940
3995	Grove	2808
3996	Hanlontown	1835
3997	Gullett	169
3998	Pineview	410
3999	Svea	2457
4000	Toulon	1104
4001	Toulon	237
4002	Swansboro	329
4003	Last Chance	474
4004	Smithwick	124
4005	La Dolores	1676
4006	Greene	782
4007	Greene	215
4008	Greene	650
4009	North New Hyde Park	101
4010	Bloomsburg	1079
4011	Red Lake	353
4012	Red Lake	546
4013	Trout Creek	1576
4014	Trout Creek	3072
4015	Trout Creek	75
4016	Salter Path	1182
4017	Barretts	3067
4018	Barretts	3196
4019	Deckerville	445
4020	Deckerville	1499
4021	Port Mansfield	1141
4022	Lacombe	2905
4023	Alford	1816
4024	Nounan	1632
4025	Triplett	350
4026	Palos Hills	761
4027	Cullison	336
4028	Suqualena	607
4029	Rockaway Beach	753
4030	Rockaway Beach	2093
4031	Belspring	374
4032	Saugerties	1952
4033	Lamar Heights	612
4034	Ranchettes	264
4035	Great Bend	3015
4036	Great Bend	1673
4037	Great Bend	995
4038	Great Bend	613
4039	Mount Juliet	2939
4040	Marine City	920
4041	Bristol	1656
4042	Bristol	1712
4043	Bristol	2449
4044	Bristol	3145
4045	Bristol	3106
4046	Bristol	3134
4047	Bristol	2634
4048	Bristol	2440
4049	Bristol	3008
4050	Bristol	2582
4051	Bristol	1948
4052	Bristol	2840
4053	Bristol	823
4054	Anchor Point	1806
4055	West Middletown	483
4056	West Middletown	785
4057	Pedro Bay	2011
4058	Midway	2759
4059	Midway	3105
4060	Midway	2689
4061	Midway	3068
4062	Midway	2053
4063	Midway	483
4064	Midway	1441
4065	Midway	3078
4066	Midway	3086
4067	Midway	1925
4068	Midway	2062
4069	Midway	1792
4070	Midway	2057
4071	Midway	2000
4072	Midway	2441
4073	Midway	1336
4074	Springmont	362
4075	Longhurst	1960
4076	Ravalli	1322
4077	Burnstad	2186
4078	Chalfont	2634
4079	Saint Nicholas	1709
4080	McFall	528
4081	Magalia	766
4082	Shore Acres	1925
4083	Shore Acres	1936
4084	Shore Acres	3143
4085	Hornick	3024
4086	Hanksville	2603
4087	Ava	1825
4088	Ava	3231
4089	Ava	2817
4090	Tagg Flats	2808
4091	Theta	2398
4092	Evergreen Park	761
4093	Intercourse	1139
4094	Point Venture	3050
4095	South Browning	1740
4096	Hunnewell	192
4097	Hunnewell	2492
4098	The Crossings	1705
4099	Ratamosa	1832
4100	Ludell	421
4101	Chicot	629
4102	Greenview	2543
4103	Greenview	403
4104	Greenview	246
4105	Greenview	337
4106	Big Plain	2057
4107	Pearland	1984
4108	Barnard	2810
4109	Barnard	1193
4110	Oconee	191
4111	Oconee	490
4112	Southwest Ranches	2729
4113	Dennis	1954
4114	Dennis	2808
4115	Dennis	1162
4116	Dennis	173
4117	Merwin	1067
4118	Oakbrook	251
4119	Gilliatt	3016
4120	Saxis	3027
4121	New York Mills	3238
4122	New York Mills	2763
4123	Aldine	145
4124	Broadlands	3118
4125	Broadlands	519
4126	Gauley Bridge	2564
4127	Mountain	2776
4128	Mountain	2418
4129	Mountain	2959
4130	Wabeno	1419
4131	Tappan	2960
4132	Hopwood	2574
4133	South Eliot	850
4134	Ramsey	524
4135	Ramsey	1572
4136	Ramsey	2569
4137	Ramsey	1260
4138	Rocky Grove	2990
4139	Mossy Head	1547
4140	Hacoda	2193
4141	McCaulley	961
4142	Purchase	1919
4143	Culpeper	656
4144	Devereux	1973
4145	Fairfield Bay	2431
4146	Archbald	3057
4147	Ambia	1641
4148	Coolin	623
4149	Sewanee	2123
4150	Boring	3223
4151	Fountain N' Lakes	1201
4152	Willamina	363
4153	West Hickory	1420
4154	Mono Vista	2798
4155	Ohioville	1883
4156	Sisters	3246
4157	Springboro	2312
4158	Springboro	1417
4159	Chattaroy	673
4160	Chattaroy	1431
4161	Talbert	670
4162	Wessington Springs	1584
4163	North White Plains	1919
4164	Daly City	1423
4165	Hecla	635
4166	Kismet	168
4167	Gandeeville	665
4168	Cheyenne Wells	1609
4169	Sunburst	2866
4170	Paintersville	2474
4171	Frankfort Square	875
4172	Sault Sainte Marie	662
4173	Port Saint John	2189
4174	Coral Hills	2064
4175	Amber	3019
4176	Amber	1431
4177	Amber	2493
4178	West Alexander	483
4179	Hoopeston	2036
4180	Rest Haven	1373
4181	East Nicolaus	220
4182	Cuzzart	1961
4183	Hayes	364
4184	Hayes	2330
4185	Ballenger Creek	3153
4186	Heritage Lake	1777
4187	Heritage Lake	2752
4188	Hendersonville	2109
4189	Hendersonville	2491
4190	Hendersonville	483
4191	Hendersonville	2651
4192	Greece	2344
4193	Deerbrook	2639
4194	Elmer City	1874
4195	Crosbyton	574
4196	Pecan Hill	823
4197	Bewleyville	930
4198	Ayr	3180
4199	Ayr	1297
4200	Ellamar	3172
4201	Browns Point	1925
4202	Jenkinjones	2379
4203	North Waterford	1703
4204	Kosciusko	3121
4205	Robards	2655
4206	Jenkinsburg	806
4207	East Sandwich	1162
4208	Cathedral	1346
4209	Shawmut	172
4210	Athens	570
4211	Athens	416
4212	Athens	403
4213	Athens	741
4214	Athens	556
4215	Athens	2003
4216	Athens	1213
4217	Athens	3254
4218	Athens	628
4219	Athens	1286
4220	Athens	2652
4221	Athens	2789
4222	Athens	2570
4223	Scottsmoor	2189
4224	Holopaw	2157
4225	Woodbourne	2634
4226	Woodbourne	1946
4227	Woodbourne	737
4228	Hinchcliff	3119
4229	Dickworsham	1539
4230	Arcadia	870
4231	Arcadia	2224
4232	Arcadia	3162
4233	Arcadia	958
4234	Arcadia	2147
4235	Arcadia	854
4236	Arcadia	2162
4237	Arcadia	3169
4238	Arcadia	2523
4239	Arcadia	1865
4240	Arcadia	2071
4241	Arcadia	1762
4242	Arcadia	404
4243	Arcadia	1972
4244	Arcadia	1414
4245	Fishers Island	940
4246	Neelyville	783
4247	Cienega Springs	2638
4248	Hawick	2457
4249	Monahans	1552
4250	Swanwick	1842
4251	Huntingtown	2983
4252	Ukiah	1053
4253	Ukiah	1544
4254	Bluejacket	352
4255	Athena	1064
4256	Athena	1544
4257	Lake Ariel	2605
4258	River Grove	761
4259	Alafaya	3141
4260	Hamlet	703
4261	Hamlet	1655
4262	Hamlet	1241
4263	Hamlet	3089
4264	Churubusco	1304
4265	Hamler	1112
4266	Meadowdale	99
4267	Swinomish Village	1422
4268	Regina	971
4269	Ojai	3221
4270	Edgewater	2440
4271	Edgewater	1572
4272	Edgewater	1510
4273	Edgewater	987
4274	Edgewater	992
4275	Edgewater	814
4276	East Helena	2206
4277	Melvin Village	2227
4278	Collegedale	2073
4279	Beards Fork	2564
4280	Butte	2282
4281	Butte	72
4282	Butte	2026
4283	Butte	150
4284	Luis M. Cintron	330
4285	Coco Comunidad	2259
4286	Glassboro	2626
4287	West Alto Bonito Colonia	166
4288	Kotlik	2367
4289	Las Palmas	2781
4290	Grayson Valley	987
4291	Kittredge	992
4292	Alsuma	2906
4293	South Lake	263
4294	Buffalo Prairie	1363
4295	Huntoon	285
4296	Standing Rock	1342
4297	Lock Springs	436
4298	Green River	3093
4299	Green River	1778
4300	Hot Springs Landing	170
4301	Export	2385
4302	Lincoln Park	2452
4303	Lincoln Park	2606
4304	Lincoln Park	67
4305	Lincoln Park	969
4306	Lincoln Park	2877
4307	Lincoln Park	362
4308	Lincoln Park	1952
4309	Ingalls Park	875
4310	Ashkum	1955
4311	Butler	894
4312	Butler	1672
4313	Butler	735
4314	Butler	1063
4315	Butler	2877
4316	Butler	2449
4317	Butler	2426
4318	Butler	789
4319	Butler	303
4320	Butler	358
4321	Butler	1753
4322	Butler	3062
4323	Butler	1067
4324	Rangerville	1832
4325	San Clemente	3140
4326	Grosse Tete	2694
4327	Mellette	1038
4328	Magnet	65
4329	Magnet	3047
4330	West Pocomoke	128
4331	Glen Dean	930
4332	Josephville	1082
4333	Ripley	1820
4334	Ripley	606
4335	Ripley	3112
4336	Ripley	3210
4337	Ripley	636
4338	Ripley	1648
4339	Ripley	181
4340	Ripley	634
4341	Scottsboro	1817
4342	Charleston Park	2101
4343	California City	263
4344	Dillon Beach	1515
4345	Natrona	805
4346	Natrona	336
4347	Moosic	3057
4348	Madeira	2075
4349	Lafferty	1591
4350	Keshena	543
4351	Del Mar Woods	1326
4352	Colorado Springs	3228
4353	Detroit Beach	2352
4354	Hightstown	2009
4355	Harshaw	3239
4356	Latham	2181
4357	Latham	786
4358	Latham	924
4359	San Felipe	61
4360	Tyro	728
4361	Tyro	2027
4362	Tyro	1194
4363	Tyro	2759
4364	Clarkton	2063
4365	Clarkton	1546
4366	Montville	2877
4367	Montville	1899
4368	Ackermanville	314
4369	Mays Chapel	1498
4370	Herbst	1118
4371	Prince	2564
4372	Gardendale	928
4373	Gardendale	987
4374	Gardendale	920
4375	Silverado	3140
4376	Buena Vista Comunidad	2659
4377	Wind Point	426
4378	Wamego	2033
4379	Saxon	1863
4380	Saxon	3162
4381	North Pearsall	2408
4382	New Centerville	131
4383	Rhodell	1634
4384	Noatak	2907
4385	Manawa	279
4386	Mableton	394
4387	Cohassett Beach	2499
4388	Verdi	171
4389	Verdi	2332
4390	Verdi	1192
4391	Verdi	1731
4392	Morrison Bluff	2187
4393	Lingle	356
4394	Clarksboro	2626
4395	White Horse	2009
4396	White Horse	2648
4397	Gassaway	1765
4398	Wartburg	112
4399	Okeana	785
4400	Conception	2810
4401	Pamelia Center	995
4402	Verda	1129
4403	Swainsboro	301
4404	Womelsdorf	362
4405	Three Points	1247
4406	Round Lake	1484
4407	Round Lake	1326
4408	Round Lake	1090
4409	Round Lake	1816
4410	Coushatta	2234
4411	Yreka	337
4412	Searchlight	2329
4413	Cold Brook	1597
4414	Town West	1890
4415	Prattville	3011
4416	Prattville	413
4417	Upper Crossroads	2959
4418	Mascotte	1331
4419	Paige	358
4420	Blackberry	2777
4421	Blue Ash	2075
4422	Chesterland	1899
4423	Winfield	504
4424	Winfield	950
4425	Winfield	1106
4426	Winfield	1075
4427	Winfield	1323
4428	Winfield	1667
4429	Winfield	2242
4430	Winfield	1201
4431	Winfield	683
4432	Winfield	2750
4433	Winfield	1026
4434	CaÃ±ones	2725
4435	Broncho	1625
4436	Des Plaines	761
4437	East Farms	1431
4438	El MangÃ³	2271
4439	Queenstown	2701
4440	Gettysburg	2636
4441	Gettysburg	1298
4442	Gettysburg	713
4443	Tensaw	1988
4444	Cape Vincent	995
4445	Orrville	2612
4446	Orrville	523
4447	Kreole	1822
4448	Guayabal Comunidad	846
4449	Dellvale	3033
4450	Antler	1717
4451	Rolinda	937
4452	Indian Creek	1326
4453	Assaria	103
4454	Ash Grove	565
4455	Ash Grove	1193
4456	Westway	3227
4457	California Pines	1771
4458	Flinn Springs	2381
4459	Navarro	881
4460	Lincolnia	2405
4461	Pike Creek Valley	2563
4462	Criders Corners	789
4463	Megargel	3095
4464	Megargel	2349
4465	Negreet	1032
4466	Wool Market	617
4467	Beebe	1905
4468	Kanopolis	293
4469	Eagledale	1048
4470	Trout Valley	3192
4471	Star Prairie	649
4472	Melody Hills	3084
4473	Hamlin	3022
4474	Hamlin	1197
4475	Hamlin	2640
4476	Hamlin	638
4477	Hamlin	2605
4478	Hamlin	2344
4479	Herminie	2385
4480	Bay	2621
4481	Spring Gardens	819
4482	Waggaman	1005
4483	Colemans Lake	301
4484	Fellsmere	2114
4485	Navarre	238
4486	Navarre	1316
4487	Navarre	758
4488	Mountain Lakes	3134
4489	Mountain Lakes	2877
4490	Huntersville	1243
4491	Huntersville	2177
4492	Waukomis	3004
4493	Comertown	1223
4494	Pennington	2009
4495	Pennington	894
4496	Pennington	546
4497	Climax	2543
4498	Climax	2485
4499	Climax	419
4500	Climax	3076
4501	Kadoka	1813
4502	Abingdon	2959
4503	Abingdon	584
4504	Abingdon	1001
4505	Abingdon	491
4506	Bison	3004
4507	Bison	2515
4508	Bison	1134
4509	Mintle	1016
4510	Goldens Bridge	1919
4511	Albany	1556
4512	Albany	741
4513	Albany	528
4514	Albany	1709
4515	Albany	2368
4516	Albany	924
4517	Albany	1789
4518	Albany	1436
4519	Albany	385
4520	Albany	458
4521	Albany	943
4522	Albany	70
4523	Albany	2807
4524	Albany	2900
4525	Albany	1718
4526	Albany	923
4527	Lake Lotawana	1826
4528	Danbury	1984
4529	Danbury	1745
4530	Danbury	2204
4531	Danbury	347
4532	Danbury	408
4533	Danbury	3024
4534	Port Trevorton	2163
4535	Boswell	895
4536	Boswell	131
4537	Boswell	1641
4538	Boswell	1633
4539	Rodeo	1352
4540	Rodeo	3143
4541	Parker	2031
4542	Parker	2535
4543	Parker	970
4544	Parker	2815
4545	Parker	3268
4546	Parker	902
4547	Parker	1335
4548	Parker	2638
4549	Parker	775
4550	Parker	945
4551	Hushpuckena	1565
4552	Paguate	1769
4553	Elkins Park	731
4554	Twain Harte	2798
4555	Rodey	1242
4556	Ten Mile	1448
4557	Tilton	2036
4558	Tilton	3049
4559	Tilton	2482
4560	Souderton	731
4561	Higley	3086
4562	Jetmore	1434
4563	Nicasio	1515
4564	Haverstraw	2960
4565	Milner	891
4566	Milner	1519
4567	Port Allegany	1217
4568	Roganville	3042
4569	Gilliam	306
4570	Gilliam	107
4571	South Sarasota	1236
4572	Clayville	3238
4573	Clayville	929
4574	Chaumont	995
4575	Niverton	131
4576	Bosler	923
4577	Hawks	2238
4578	Ahoskie	1439
4579	Hooverson Heights	1069
4580	Ciales Zona Urbana	1700
4581	Tiger	2001
4582	Tiger	1031
4583	Dennis Acres	1234
4584	Reidland	2037
4585	Meredosia	114
4586	Cherryvale	728
4587	Cherryvale	515
4588	Hemby Bridge	494
4589	Beaverville	1955
4590	Cement City	2586
4591	Adams City	1290
4592	Simms	2731
4593	Simms	2334
4594	Simms	826
4595	Sandoval	690
4596	Colesburg	2392
4597	Colesburg	2805
4598	Heart Butte	577
4599	Watters	789
4600	Tickfaw	169
4601	Bee	167
4602	Bee	1166
4603	Lordsburg	1352
4604	Superior Village	2823
4605	Collings Lakes	2617
4606	Peachtree City	2572
4607	Cedar City	2551
4608	Cedar City	1864
4609	Arcade	928
4610	Arcade	1028
4611	Arcade	1829
4612	Gleason	2460
4613	Gleason	1204
4614	Frenchton	1658
4615	Swedeburg	3236
4616	Isabella	1329
4617	Isabella	397
4618	Gilbertville	1901
4619	Chattahoochee	2441
4620	Emma	599
4621	Emma	107
4622	Heath	2575
4623	Heath	2037
4624	Heath	3255
4625	Heath	2061
4626	Heath	2985
4627	Lugoff	365
4628	Coralville	1263
4629	Luhrig	741
4630	Sugar Bush	2266
4631	Mazie	1884
4632	Mazie	535
4633	Wellsford	1993
4634	Upper Brookville	101
4635	Foothill Farms	2688
4636	Wildomar	3210
4637	Rosalia	1464
4638	Rosalia	786
4639	McIntosh	2543
4640	McIntosh	1625
4641	McIntosh	2296
4642	McIntosh	682
4643	McIntosh	470
4644	Smelterville	224
4645	Rosalie	2191
4646	Rosalie	1817
4647	Proctorsville	2483
4648	Westside	1408
4649	Westside	937
4650	Egg Harbor City	2617
4651	Deep Gap	3213
4652	Nicholville	1307
4653	Hollansburg	2636
4654	Roads End	308
4655	Devers	3107
4656	Cienegas Terrace	594
4657	Storla	2156
4658	Brooks	2575
4659	Brooks	677
4660	Brooks	569
4661	Brooks	2366
4662	Brooks	843
4663	Brooks	1295
4664	Brooks	2572
4665	Brooks	1287
4666	Marquette	1942
4667	Marquette	866
4668	Marquette	2078
4669	Marquette	2522
4670	Marquette	1058
4671	Chamberlain	1389
4672	Free Union	2829
4673	Encinal	1769
4674	Encinal	2973
4675	Landenberg	90
4676	New Glarus	2368
4677	Ennis	2043
4678	Ennis	823
4679	Simla	1876
4680	Glenn Dale	2064
4681	Brooke	1318
4682	Progress Village	868
4683	Powells Crossroads	679
4684	Kamiah	2534
4685	Ginger Blue	204
4686	Flora Vista	2929
4687	Gibsonville	710
4688	Parkin	2482
4689	Baxter Springs	432
4690	Wade	1822
4691	Wade	76
4692	Edgecliff Village	3084
4693	Marrowstone	989
4694	Ridgefield Park	1572
4695	Little York	466
4696	Little York	2310
4697	Bautista	327
4698	Templeville	2894
4699	Oronogo	3044
4700	Pottstown	731
4701	Rosser	2361
4702	Doyle	693
4703	Doyle	1906
4704	Doyle	2799
4705	Doyle	3214
4706	Lee Creek	1415
4707	Ravenden Springs	2684
4708	Stigler	1180
4709	Franklin Grove	2098
4710	Casa Colorada	3272
4711	Sugarville	2152
4712	Bradenton	2834
4713	Overgaard	3161
4714	Cashel	2633
4715	Porterville	3247
4716	Porterville	308
4717	Porterville	120
4718	Bayou Cane	910
4719	Wadley	2683
4720	Wadley	1007
4721	Fort Ogden	870
4722	East Pittsburgh	2632
4723	Hearne	750
4724	Inkster	2606
4725	Inkster	1581
4726	Roaring Springs	2629
4727	Jaroso	2068
4728	Palisades Park	1572
4729	Churchton	2440
4730	Zachary	1381
4731	Medon	2045
4732	Chamisal	1930
4733	Haddock	3021
4734	Knife River	1329
4735	Capitola	1207
4736	Capitola	1362
4737	Devils Lake	2586
4738	Devils Lake	653
4739	Ladd	1704
4740	Hines	2823
4741	Hines	212
4742	Hines	546
4743	Hines	2394
4744	Osage	2458
4745	Osage	379
4746	Osage	830
4747	Osage	1474
4748	Osage	1154
4749	Osage	2223
4750	Little America	3093
4751	Sarles	1720
4752	Warminster	2634
4753	Nenahnezad	2929
4754	Tramway	2094
4755	Sudley	321
4756	No Name	3003
4757	Waco	3044
4758	Waco	857
4759	Waco	852
4760	Waco	702
4761	Waco	2577
4762	Madisonville	1507
4763	Madisonville	2053
4764	Madisonville	3253
4765	Madisonville	2905
4766	Madisonville	2346
4767	Strathmoor Manor	997
4768	Dulles Town Center	3118
4769	East Ringgold	1986
4770	La Liga Comunidad	1856
4771	Parksville	1456
4772	Dousman	2426
4773	Cordry Sweetwater Lakes	632
4774	Wauregan	3098
4775	Gahanna	2141
4776	Stony Point	2718
4777	Stony Point	2960
4778	Stony Point	2352
4779	Bammel	145
4780	Round Pond	2980
4781	Arispe	1438
4782	Arispe	505
4783	Sebeka	2171
4784	River Park	1577
4785	Pine Glen	393
4786	Fredericksburg	698
4787	Fredericksburg	862
4788	Fredericksburg	1886
4789	Fredericksburg	2612
4790	Fredericksburg	466
4791	Fredericksburg	1493
4792	Alamillo	228
4793	Lago	1832
4794	Winslow West	353
4795	Devens	1760
4796	Riplinger	2327
4797	Tennent	278
4798	South El Monte	404
4799	Fancy Gap	2231
4800	American Beach	100
4801	Seale	1451
4802	Moark	1534
4803	Chesapeake Beach	2983
4804	Petoskey	2519
4805	Florida	1112
4806	Florida	281
4807	Florida	2357
4808	Florida	1219
4809	Florida	3137
4810	Lafe	560
4811	Glidden	382
4812	Glidden	2224
4813	Glidden	206
4814	Fullerville	3193
4815	Gang Mills	2887
4816	Trail	2543
4817	Trail	201
4818	Trail	1808
4819	Warnerton	488
4820	Three Rocks	937
4821	Hooversville	131
4822	Armorel	938
4823	Canton Valley	1712
4824	Purvis	890
4825	Titonka	1598
4826	Hungry Horse	1761
4827	Sealy	61
4828	Driscoll	2146
4829	Driscoll	819
4830	Powder Springs	394
4831	Chalkhill	2574
4832	Two Rivers	209
4833	Two Rivers	626
4834	Silver Firs	99
4835	MarueÃ±o Comunidad	459
4836	Emlyn	1305
4837	Edgewater Heights	2606
4838	Haycock	717
4839	Van Etten	1524
4840	Bly	759
4841	River Sioux	616
4842	Brilliant	683
4843	Brilliant	1006
4844	Marienville	1420
4845	Majenica	3251
4846	Alum Bridge	2528
4847	Sackets Harbor	995
4848	New Salem	1170
4849	New Salem	853
4850	New Salem	2514
4851	New Salem	1379
4852	Yorkshire	1370
4853	Yorkshire	2636
4854	Yorkshire	321
4855	D'Lo	1787
4856	Lair	621
4857	Storrs	1317
4858	Oronoco	1258
4859	Villa del Sol	1832
4860	Oswego	3168
4861	Oswego	1954
4862	Oswego	515
4863	Oswego	1913
4864	Oswego	1262
4865	Moapa	2329
4866	Allardt	1036
4867	Turbotville	2963
4868	Andrews	1455
4869	Andrews	1299
4870	Andrews	3251
4871	Andrews	427
4872	Andrews	2429
4873	Rossie	1537
4874	Mira Loma	3210
4875	Tomales	1515
4876	Blairs	456
4877	Dollar Point	2289
4878	Bon Homme Colony	2786
4879	Hebardville	741
4880	Oaklyn	2977
4881	Lavinia	546
4882	Lionville	90
4883	Cross Plains	751
4884	Cross Plains	816
4885	Cross Plains	797
4886	Cross Plains	749
4887	Gramercy	1275
4888	Bell Point	2385
4889	Florien	1032
4890	North Puyallup	1925
4891	Gladeville	2939
4892	East Gull Lake	3179
4893	Homeland	2545
4894	Homeland	3210
4895	Homeland	2698
4896	Green Rock	1109
4897	Heber City	1792
4898	Plainfield	464
4899	Plainfield	1949
4900	Plainfield	56
4901	Plainfield	875
4902	Plainfield	1891
4903	Plainfield	954
4904	Plainfield	1873
4905	Plainfield	83
4906	Plainfield	1210
4907	Plainfield	502
4908	Tanglewood Forest	3050
4909	Rexville	797
4910	Tucson	1247
4911	Arista	2003
4912	Lake	1744
4913	Lake	1391
4914	Lake	2240
4915	Saint Clairsville	2954
4916	Saint Clairsville	1591
4917	Awosting	792
4918	Vader	2533
4919	Olancha	2411
4920	Izee	1117
4921	Lakewood Heights	3214
4922	Swan	687
4923	Falling Waters	1722
4924	Schenley	775
4925	Claymont	2563
4926	Luna Pier	2352
4927	Normandy Park	3217
4928	Codman	3242
4929	KÄneÊ»ohe	1878
4930	Avocado Heights	404
4931	Bon	1914
4932	Park Valley	1421
4933	West Yellowstone	579
4934	Hulbert	430
4935	Hulbert	662
4936	Redcrest	319
4937	Traer	2486
4938	Traer	1861
4939	Mount Angel	677
4940	Piney Point	2580
4941	Piney Point	2834
4942	Mount Arlington	2877
4943	Monarch	2334
4944	Box	1140
4945	Bow	1422
4946	Timonium	1498
4947	Chickalah	2869
4948	Maryville	2054
4949	Maryville	2421
4950	Maryville	2810
4951	Talking Rock	368
4952	Bruceville-Eddy	702
4953	Bordentown	2841
4954	San Juan Capistrano	3140
4955	Edmonton	398
4956	DISH	2452
4957	Hockessin	2563
4958	Bucks Lake	3011
4959	Nooksack	1983
4960	Owanka	907
4961	Spade	1374
4962	Wall	907
4963	Wall	3226
4964	Wall	2632
4965	Leedey	201
4966	La Quinta	3210
4967	Quietus	2724
4968	O'Kean	2684
4969	Naperville	950
4970	South Chelmsford	95
4971	Seabrook Island	905
4972	Mazon	2505
4973	Minter	523
4974	Schoolcraft	419
4975	Guymon	2272
4976	Haskins	2338
4977	Brandsville	3184
4978	Sylvarena	1601
4979	Pompton Lakes	792
4980	Center City	2496
4981	Center City	2021
4982	Leetsdale	2632
4983	Buffalo Creek	992
4984	Richmondville	2416
4985	Plentywood	1223
4986	Callaghan	777
4987	Hay Creek	1997
4988	Kaleva	2162
4989	Kimball	2379
4990	Kimball	679
4991	Kimball	1709
4992	Kimball	1389
4993	Kimball	1382
4994	Kimball	603
4995	Kimball	1511
4996	Falcon Village	166
4997	Bellewood	997
4998	Clitherall	2763
4999	Clay Center	1730
5000	Clay Center	1535
5001	Clay Center	1531
5002	Bowmans Addition	1497
5003	Waka	285
5004	Maybee	2352
5005	Redbank	826
5006	Rustburg	176
5007	Tracy	1851
5008	Tracy	2334
5009	Tracy	2935
5010	Tracy	687
5011	Tracy	140
5012	Tracy	590
5013	Anderson	605
5014	Anderson	2044
5015	Anderson	204
5016	Anderson	2306
5017	Anderson	1397
5018	Anderson	967
5019	Anderson	2883
5020	Anderson	781
5021	Anderson	847
5022	Bourne	165
5023	Bourne	1162
5024	Calvert City	2468
5025	Moosup	3098
5026	Blaine	2201
5027	Blaine	1088
5028	Blaine	980
5029	Blaine	535
5030	Blaine	1983
5031	Blaine	1260
5032	Samsula	814
5033	Quenemo	1156
5034	Kerrville	271
5035	Casa Piedra	2160
5036	Stantonville	1647
5037	Ojus	1705
5038	Littlefield	1374
5039	Littlefield	829
5040	Cal-Nev-Ari	2329
5041	Cornville	2495
5042	Petal	1934
5043	Darrouzett	2871
5044	Center Post	1351
5045	Sparr	682
5046	Brielle	278
5047	Wann	3236
5048	Wann	3203
5049	Campbellsburg	466
5050	Campbellsburg	1111
5051	Thorntonville	1552
5052	Stone Lake	2833
5053	Olney	1761
5054	Olney	740
5055	Olney	1670
5056	Olney	214
5057	Mukwonago	2426
5058	Merrillville	3029
5059	Merrillville	1323
5060	North Tewksbury	95
5061	Spring Lake Heights	278
5062	Rivera Colonia	166
5063	Lowsville	830
5064	Creve Coeur	1777
5065	Creve Coeur	3196
5066	Surrency	2252
5067	Bronte	645
5068	Hailesboro	1307
5069	Whitney Point	1153
5070	Barneston	3206
5071	Wells River	3136
5072	Vails Gate	3137
5073	Naylor	3067
5074	Naylor	798
5075	Montier	1668
5076	Wethersfield	1712
5077	Idylside	875
5078	Sinai	109
5079	Lamy	1750
5080	Asherton	2363
5081	Honey Island	2389
5082	Cabazon	3210
5083	Blue Earth	2830
5084	Lane	2133
5085	Lane	711
5086	Lane	1584
5087	Lane	2429
5088	Social Hill	2689
5089	Goose Lake	2896
5090	Pelican Rapids	2763
5091	Bootjack	1660
5092	Argentine	2258
5093	Land	894
5094	Churdan	562
5095	North Eaton	845
5096	Phillipsburg	1427
5097	Phillipsburg	680
5098	Phillipsburg	2306
5099	Phillipsburg	1558
5100	Phillipsburg	2904
5101	Phillipsburg	737
5102	Tallaboa Alta	1030
5103	Kenbridge	1354
5104	Abraham	2152
5105	McBride	3094
5106	McBride	1356
5107	McBride	1843
5108	McBride	2467
5109	Arcata	319
5110	Woodfords	1937
5111	Lake City	1771
5112	Lake City	1346
5113	Lake City	1943
5114	Lake City	2736
5115	Lake City	1588
5116	Lake City	1277
5117	Lake City	1075
5118	Lake City	1512
5119	Lake City	1925
5120	Lake City	3214
5121	Lake City	2621
5122	Lake City	2988
5123	Lake City	2469
5124	Lake City	2024
5125	Presidential Lakes Estates	2841
5126	Fort Stanton	1199
5127	Dry Prong	1129
5128	Wabuska	142
5129	Breedsville	2433
5130	Lathrup Village	2663
5131	Bud	1027
5132	Dorothy	2617
5133	Dorothy	569
5134	Covada	1150
5135	Keefton	2731
5136	Clairfield	571
5137	Oakman	1349
5138	Oakman	879
5139	Jakin	1085
5140	Gothenburg	2999
5141	Mockingbird Valley	997
5142	New Rockford	349
5143	New Hamilton	2355
5144	Muskegon	1485
5145	Tuscola	1061
5146	Tuscola	2816
5147	Tuscola	1932
5148	Wexford	2632
5149	Green Grove	278
5150	Lajas Zona Urbana	1763
5151	Antimony	3005
5152	Cowden	191
5153	Cowden	483
5154	Saranac Lake	2131
5155	Fort Fairfield	2201
5156	Carefree	3086
5157	Carefree	1409
5158	Fort Drum	676
5159	Wilton Center	875
5160	Palenville	556
5161	Heber	3161
5162	Heber	153
5163	Legend Lake	543
5164	Grand Mound	2896
5165	Grand Mound	2190
5166	Lesterville	2208
5167	Lesterville	836
5168	Onton	2593
5169	Lehman	3249
5170	Shelburne	2801
5171	Charlotte	2434
5172	Charlotte	2896
5173	Charlotte	2177
5174	Charlotte	2764
5175	Charlotte	1017
5176	Harborton	3027
5177	Manchac	169
5178	Madera Acres	1563
5179	Suquamish	1048
5180	Cetronia	1372
5181	Harrells	286
5182	Moss Bluff	364
5183	Shaker Heights	708
5184	Brookhurst	805
5185	Monroeton	416
5186	Lisbon Falls	2399
5187	Mannsville	1062
5188	Mannsville	1166
5189	Mannsville	995
5190	Inadale	3193
5191	Parcelas La Milagrosa	1066
5192	High Bridge	382
5193	High Bridge	1491
5194	High Bridge	202
5195	Playita Cortada Comunidad	2086
5196	Grosse Pointe Shores	2606
5197	Neodesha	2937
5198	Bonny Doon	1362
5199	Raisin City	937
5200	Indiahoma	2512
5201	Charlotte Harbor	1506
5202	West Yarmouth	1162
5203	West Mansfield	2184
5204	Marksville	1975
5205	Oak City	2152
5206	Oak City	2210
5207	Liverpool	1984
5208	Liverpool	1323
5209	Liverpool	2979
5210	Liverpool	1848
5211	Liverpool	2712
5212	Chino	721
5213	Mantachie	137
5214	Nunda	1327
5215	Nunda	386
5216	Deputy	984
5217	Bowdon Junction	2230
5218	Fackler	1817
5219	Lark	3094
5220	Lark	1130
5221	Crutchfield	2713
5222	Downey	2863
5223	Downey	404
5224	Downey	64
5225	Clarks Summit	3057
5226	El Dorado Hills	1594
5227	Eastpointe	1481
5228	Fair Haven	2588
5229	Fair Haven	278
5230	Fair Haven	920
5231	Fair Haven	2023
5232	Lyerly	1341
5233	Rocky River	708
5234	East Bangor	314
5235	Downer	1530
5236	Hop Bottom	3015
5237	Foster City	1423
5238	Foster City	1315
5239	Study Butte	1617
5240	Ware	508
5241	Ware	2922
5242	Ware	1244
5243	Ware	521
5244	Watertown	1075
5245	Watertown	95
5246	Watertown	994
5247	Watertown	489
5248	Watertown	1990
5249	Watertown	995
5250	Watertown	1492
5251	Watertown	2939
5252	Watertown	1037
5253	Ward	92
5254	Ward	2267
5255	Ward	1467
5256	Ward	514
5257	Ward	1585
5258	Ward	2585
5259	Forbing	306
5260	Little Valley	1370
5261	Little Valley	2799
5262	North Washington	1290
5263	North Washington	698
5264	North Washington	2385
5265	Rush Valley	1622
5266	West Saint Paul	2864
5267	Purves	1545
5268	Lake Montezuma	2495
5269	Rio Verde	3086
5270	Painted Post	2887
5271	Honobia	2263
5272	Marshville	494
5273	Laud	1304
5274	Verde Village	2495
5275	Seama	1769
5276	Wise River	2331
5277	Taos Pueblo	1930
5278	Renfroe	1025
5279	Renfroe	1932
5280	Shreveport	306
5281	Madera	1563
5282	Madera	1300
5283	Coal Hill	1273
5284	Iron Mountain	230
5285	Iron Mountain	1315
5286	Bacova	2374
5287	China	1003
5288	Camp Springs	179
5289	Camp Springs	2064
5290	Stillwater	3012
5291	Stillwater	480
5292	Stillwater	1484
5293	Stillwater	181
5294	Stillwater	1079
5295	Stillwater	2552
5296	Skaneateles	2979
5297	Nunez	301
5298	Chilchinbito	3161
5299	Chili	2327
5300	Chili	2725
5301	South Plainfield	94
5302	Owentown	1603
5303	Lime Creek	2195
5304	Chilo	1241
5305	Nikep	1497
5306	Fairwater	2090
5307	East Pecos	1039
5308	Groveland	672
5309	Groveland	2798
5310	Groveland	1331
5311	Groveland	71
5312	Yates	3014
5313	Ponderosa Pine	405
5314	San Juan Zona Urbana	2928
5315	Elihu	372
5316	Dumfries	321
5317	Olnes	209
5318	La Luisa	1580
5319	Barnsboro	2626
5320	Carrolltown	3032
5321	Collins Park	2563
5322	Renfrow	1119
5323	South Amboy	94
5324	Odenville	917
5325	Elaine	1559
5326	Horine	993
5327	East Orosi	308
5328	Montfort	1131
5329	Prairie	2355
5330	Prairie	809
5331	Glen Ridge	2744
5332	Glen Ridge	3071
5333	Lawn	1061
5334	Port Alexander	1345
5335	New Marshfield	741
5336	Okay	3079
5337	Elnora	435
5338	Falcon Mesa	2781
5339	Laws	2411
5340	East Liverpool	1662
5341	Hunting Valley	708
5342	Cypress Lake	2101
5343	Cerro Gordo	1238
5344	Cerro Gordo	1995
5345	Fruita	2603
5346	Fruita	2167
5347	Talbotton	1161
5348	Ethridge	2866
5349	Ethridge	532
5350	Nances Creek	1283
5351	Camden on Gauley	2589
5352	Forest Oaks	710
5353	Briartown	2731
5354	Kaylor	1757
5355	Calexico	153
5356	Copper Mountain	1724
5357	Fortescue	1870
5358	Riverlea	2141
5359	Munising	2767
5360	Ringsted	2518
5361	Moxee City	3268
5362	Turlock	1941
5363	Carmel Valley	2955
5364	Long Lake	91
5365	Long Lake	1195
5366	Long Lake	2069
5367	Long Lake	1326
5368	Long Lake	1587
5369	Long Lake	2520
5370	Weigelstown	853
5371	Three Creek	982
5372	Chesterfield	2044
5373	Chesterfield	3196
5374	Chesterfield	1615
5375	Chesterfield	1616
5376	Chesterfield	2653
5377	Chesterfield	712
5378	Chesterfield	461
5379	Gravois Mills	115
5380	Lost Springs	3170
5381	Lost Springs	681
5382	Vanduser	2244
5383	Christie	2327
5384	Christie	1385
5385	San Geronimo	1515
5386	Edroy	3214
5387	Hurtsboro	1451
5388	Coyne Center	1363
5389	Birta	2869
5390	Sandborn	581
5391	Sextonville	1674
5392	Dekle Beach	1064
5393	Petty	893
5394	Forsan	258
5395	Killeen	1958
5396	Ackerman	896
5397	Harrietta	1487
5398	Quinebaug	3098
5399	Osprey	1236
5400	Simpsonville	2031
5401	Simpsonville	193
5402	Simpsonville	261
5403	Bonhomie	1934
5404	Otego	778
5405	Gum Springs	2325
5406	Byhalia	510
5407	Byhalia	2463
5408	Short Pump	59
5409	Chance	128
5410	Buffington	2574
5411	Napoleonville	771
5412	El Moro	205
5413	Conneautville	1417
5414	Klein	2981
5415	Fallsington	2634
5416	Braddock Heights	3153
5417	Spraberry	2986
5418	Elida	1678
5419	Elida	441
5420	Dauberville	362
5421	Knobel	1534
5422	Fort Walton Beach	2038
5423	Enochville	863
5424	Cutlerville	219
5425	Dayton Lakes	3107
5426	Cumberland Gap	571
5427	Enid	3004
5428	Enid	1669
5429	Enid	3147
5430	Eastville	313
5431	Opal Cliffs	1362
5432	North Little Rock	375
5433	Tobyhanna	2351
5434	Stotesbury	227
5435	Moore Haven	1377
5436	RÃ­o Grande	1676
5437	Teaticket	1162
5438	Hydetown	1417
5439	Cashion	1501
5440	Cashion	3086
5441	HanamÄÊ»ulu	2209
5442	Cleary	2370
5443	Bushyhead	2831
5444	Clute	1984
5445	Cestos	201
5446	Leetonia	1662
5447	Concordia	1665
5448	Concordia	2774
5449	Concordia	94
5450	Concordia	2947
5451	Hollis Crossroads	3275
5452	Montello	1057
5453	Montello	108
5454	Rosboro	1176
5455	Enoch	1864
5456	Bellefonte	393
5457	Bellefonte	2563
5458	Bellefonte	252
5459	Bellefonte	1052
5460	Bigler	1300
5461	Chittenango	2042
5462	Matthews	1007
5463	Matthews	1118
5464	Matthews	206
5465	Matthews	1160
5466	Matthews	2177
5467	Matthews	1857
5468	Sea Breeze	254
5469	Logan Elm Village	1986
5470	Slatedale	1372
5471	Searsboro	2265
5472	Timber Pines	3274
5473	Eugene	722
5474	Eugene	1446
5475	Mershon	1923
5476	Mount Storm	1127
5477	Manns Choice	2954
5478	Waukena	308
5479	Spencerville	895
5480	Spencerville	1753
5481	Spencerville	740
5482	Spencerville	2929
5483	Spencerville	441
5484	California Junction	616
5485	Willimantic	3098
5486	Kicking Horse	1322
5487	Stryker	378
5488	Stryker	1185
5489	Glen Arbor	2787
5490	Bear	2563
5491	Elk Neck	652
5492	Pewamo	1613
5493	Brasstown	1525
5494	Mogadore	1725
5495	Kearney	1541
5496	Kearney	2687
5497	Clarkson	3262
5498	Clarkson	2344
5499	Clarkson	2591
5500	Clarkson	2795
5501	Grasmere	982
5502	French Island	3130
5503	Beal	581
5504	Mayfield Heights	708
5505	Tripoli	1873
5506	Tripoli	1204
5507	Pyriton	1533
5508	Destrehan	1081
5509	Biron	2339
5510	East Dundee	322
5511	Alston	738
5512	Navassa	2395
5513	Gasque	1988
5514	Sherrard	2004
5515	Muscatine	1702
5516	Seco Mines	867
5517	Nikolai	1462
5518	Bureau	1704
5519	LaFayette	1351
5520	LaFayette	2951
5521	Salamatof	1806
5522	Snider	75
5523	Riddlesburg	2954
5524	Springerton	1907
5525	Keomah Village	2669
5526	Lake Geneva	1094
5527	Spring Hills	678
5528	Madeira Beach	2785
5529	Palmerton	3038
5530	Twin Hills	2019
5531	Stearns	2268
5532	McSherrystown	1298
5533	Chappells	1657
5534	Maitland	3141
5535	Maitland	1870
5536	Maitland	2474
5537	Marshalltown	2462
5538	Marshalltown	2628
5539	Reeder	1293
5540	Kingsley	1935
5541	Kingsley	1592
5542	Kingsley	997
5543	Kingsley	1532
5544	Brusly Landing	2994
5545	Cortaro	1247
5546	Elm Point	1082
5547	Bebe	1164
5548	Griffin	2859
5549	Griffin	2148
5550	Eureka	1462
5551	Eureka	1739
5552	Eureka	2989
5553	Eureka	1999
5554	Eureka	1185
5555	Eureka	2598
5556	Eureka	3076
5557	Eureka	3196
5558	Eureka	1576
5559	Eureka	646
5560	Eureka	1716
5561	Eureka	319
5562	Eureka	2520
5563	Eureka	2690
5564	Eureka	881
5565	Eureka	682
5566	Seldovia Village	1806
5567	Enka	2270
5568	Milnor	3010
5569	Spillville	2624
5570	Mead	3236
5571	Mead	1431
5572	Mead	1101
5573	Mead	70
5574	Mount Lebanon	1762
5575	Benitez	396
5576	Hebbardsville	2655
5577	Carrollton	2225
5578	Carrollton	366
5579	Carrollton	2229
5580	Carrollton	1595
5581	Carrollton	2230
5582	Carrollton	525
5583	Carrollton	564
5584	Carrollton	2228
5585	Carrollton	2222
5586	Long Neck	1887
5587	Oglesby	2507
5588	Oglesby	468
5589	Oglesby	1877
5590	Oglesby	872
5591	Bodcaw	1783
5592	Seven Hills	2267
5593	Seven Hills	708
5594	Silerton	2697
5595	Keedysville	492
5596	Staley	2677
5597	Williams Park	1326
5598	Gleneagle	3228
5599	Speonk	940
5600	Caguas Zona Urbana	1856
5601	Vesta	876
5602	Vesta	889
5603	Vesta	1274
5604	Vesta	1250
5605	Pemberwick	408
5606	Carta Valley	1649
5607	Postelle	1559
5608	Armagh	2147
5609	Llano	1738
5610	Playas	1352
5611	River Oaks	3084
5612	Shelton	744
5613	Shelton	2687
5614	Shelton	407
5615	Shelton	408
5616	Rehoboth Beach	1887
5617	San Marcial	228
5618	Emerson	2497
5619	Emerson	2532
5620	Emerson	912
5621	Emerson	609
5622	Emerson	1572
5623	Emerson	2237
5624	Emerson	1076
5625	Grays Hill	439
5626	Winter Haven	2545
5627	Winter Haven	2363
5628	Lenape Heights	775
5629	Twin Brooks	1121
5630	Kramer Junction	721
5631	Worcester	778
5632	Worcester	464
5633	Worcester	731
5634	Worcester	1760
5635	Snelling	1985
5636	Snelling	2175
5637	Finland	1329
5638	Moreland	2766
5639	Moreland	672
5640	Moreland	1190
5641	Moreland	2642
5642	Rosebush	1020
5643	Stanwood	1764
5644	Stanwood	99
5645	Stanwood	64
5646	Mecosta	1764
5647	Eagleton	660
5648	Eagleton	3219
5649	Berrysburg	1369
5650	Beda	2780
5651	Bluffs	2243
5652	Dagsboro	1887
5653	La Honda	1423
5654	Desert Hills	829
5655	Beechwood	1733
5656	Beechwood	1045
5657	Beechwood	2618
5658	Beechwood	2309
5659	Orchard Lake	2663
5660	Fountainebleau	1705
5661	Modoc	301
5662	Modoc	2679
5663	Modoc	1456
5664	Enon	1495
5665	Enon	2323
5666	Enon	1615
5667	Affton	3196
5668	Oakwood	726
5669	Oakwood	201
5670	Oakwood	1541
5671	Oakwood	1208
5672	Oakwood	540
5673	Oakwood	2036
5674	Oakwood	1024
5675	Oakwood	737
5676	Makawao	2438
5677	Burgdorf	1458
5678	Millers Falls	2129
5679	Foxfield	2362
5680	Courtenay	2645
5681	Reddick	682
5682	Reddick	387
5683	Eagle Pass	867
5684	Tracy City	2504
5685	Lawtey	415
5686	Willow River	1358
5687	Roseburg	2814
5688	Burns Flat	757
5689	Troutdale	3204
5690	Sonoma	1790
5691	Hermleigh	3193
5692	Duncannon	1848
5693	South Heart	236
5694	Edinboro	1512
5695	Pass Christian	617
5696	West Mayfield	1883
5697	Rocky Ridge Ranch	2631
5698	Circle Hot Springs	1462
5699	Munjor	825
5700	Dinuba	308
5701	Cedar Vale	3113
5702	Merton	2426
5703	Northboro	1517
5704	South Saint Paul	2864
5705	Roxana	2054
5706	West Gilgo Beach	940
5707	Romulus	2261
5708	Romulus	2606
5709	Peridot	2920
5710	Hammon	1741
5711	Nocatee	870
5712	Northmoor	1851
5713	Carlisle	1163
5714	Carlisle	2763
5715	Carlisle	1140
5716	Carlisle	1348
5717	Carlisle	2499
5718	Carlisle	2312
5719	Carlisle	572
5720	Carlisle	2473
5721	Carlisle	1947
5722	Carlisle	83
5723	Carlisle	503
5724	Carlisle	2308
5725	Carlisle	1585
5726	Fiftysix	2664
5727	Nokomis	1236
5728	Nokomis	735
5729	Mineral Bluff	631
5730	Brunersburg	2333
5731	Leitch	2440
5732	Holiday Heights	2627
5733	Nelagoney	1154
5734	Friesland	1078
5735	Moninger	483
5736	Healdsburg	1790
5737	Campo Rico Comunidad	396
5738	Quick City	1269
5739	Wanilla	530
5740	Duffield	2248
5741	Kalispell	1761
5742	Hypoluxo	3071
5743	Ellison Bay	1708
5744	Plant City	868
5745	Wrights Corners	2910
5746	Servia	1245
5747	Wyatte	2027
5748	New Kingstown	83
5749	Tasso	1695
5750	Pachuta	1212
5751	Valmeyer	2356
5752	Oak Leaf	823
5753	Kalida	2756
5754	Rogersville	605
5755	Rogersville	2592
5756	Rogersville	561
5757	Rogersville	2168
5758	Branson	753
5759	Branson	205
5760	Brookvale	2958
5761	Ragland	917
5762	Teresita	430
5763	Kronborg	2078
5764	Gilmore	1785
5765	Gilmore	2891
5766	Gilmore	1497
5767	Indian River Estates	1577
5768	Peconic	2197
5769	Peconic	940
5770	Beaver	1634
5771	Beaver	2093
5772	Beaver	1462
5773	Beaver	1882
5774	Beaver	1881
5775	Beaver	2223
5776	Beaver	613
5777	Beaver	247
5778	Beaver	1173
5779	Beaver	1883
5780	Erin Springs	1879
5781	Lenwood	721
5782	Trumann	1499
5783	Stallo	1429
5784	Bowbells	926
5785	Wainwright	1801
5786	Wainwright	2731
5787	Aguas Buenas	1892
5788	Rowland Heights	404
5789	Buhler	364
5790	Buhler	3201
5791	Louviers	2815
5792	Coon Valley	226
5793	Persia	616
5794	Schofield	628
5795	Toltec	1914
5796	Black Hawk	3055
5797	Black Hawk	2225
5798	Black Hawk	1680
5799	Black Hawk	1344
5800	Greenevers	3126
5801	Fayville	1760
5802	The Dalles	906
5803	San Lorenzo Zona Urbana	3163
5804	Wedron	2507
5805	Northview	219
5806	Northview	2592
5807	Northview	737
5808	Kino Springs	1361
5809	Palisades	1489
5810	Palisades	2960
5811	Palisades	2822
5812	Palisades	2279
5813	Perryton	285
5814	Hookstown	1883
5815	Morro Bay	2207
5816	Scissors	1353
5817	Ryder	1551
5818	Smithville Flats	650
5819	Neame	225
5820	Truxall	2385
5821	Livengood	1462
5822	West Mystic	1593
5823	Iron River	3109
5824	Iron River	1866
5825	Wauhillau	1385
5826	Anchorville	920
5827	Abie	788
5828	Lake Lindsey	3274
5829	Glenvil	1535
5830	Malakoff	2652
5831	Vanceburg	2532
5832	Vista West	805
5833	Cle Elum	400
5834	Angels Camp	3144
5835	Collingswood	2977
5836	Fort Bellefontaine	3196
5837	Port Ludlow	989
5838	Sagamore Hills	1725
5839	Cave Springs	1645
5840	Wenona	128
5841	Wenona	2466
5842	Wenona	548
5843	Naples Park	832
5844	Kansas City	1826
5845	Kansas City	1312
5846	Santa Rosa Beach	1547
5847	Bradbury	404
5848	Clearmont	1225
5849	Clearmont	2810
5850	Hackett	3128
5851	Newfield	2626
5852	Rio Blanco	1938
5853	Highfill	1645
5854	Blooming Valley	1417
5855	Stoystown	131
5856	Adair Village	1638
5857	Fort Bidwell	1771
5858	Maramec	1254
5859	Pendergrass	1829
5860	Dodgeville	3080
5861	Hamilton City	381
5862	Belt	2334
5863	East Greenville	731
5864	Grind Stone City	342
5865	Lake Buena Vista	3141
5866	Palm Shores	2189
5867	Hagarville	1273
5868	Duette	2834
5869	Labette	1954
5870	Newman	1941
5871	Newman	2816
5872	Newman	344
5873	Bell	1549
5874	Bell	404
5875	Bell	1385
5876	Belk	2573
5877	North Lauderdale	2729
5878	South English	960
5879	Tulelake	337
5880	Smiley	1164
5881	Bend	3186
5882	Bend	3246
5883	Bena	3179
5884	Bickleton	149
5885	Hancock	869
5886	Hancock	2804
5887	Hancock	658
5888	Hancock	2065
5889	Hancock	492
5890	Hancock	3016
5891	Hancock	1210
5892	Saukville	608
5893	Pennsuco	1705
5894	Mena	2546
5895	Oakland Park	2729
5896	Oakland Park	3044
5897	Garnet	3210
5898	Byars	1454
5899	Varnville	1606
5900	North Hartland	2483
5901	Pico Rivera	404
5902	Sardis City	1163
5903	Garner	781
5904	Garner	1522
5905	Garner	1399
5906	Garner	931
5907	Garner	1905
5908	Garner	1965
5909	Bayou Sorrel	2694
5910	Coe	1169
5911	Forsyth	753
5912	Forsyth	2359
5913	Forsyth	3158
5914	Forsyth	2377
5915	Saint Jacob	2054
5916	Hilltop Lakes	1208
5917	Neubert	583
5918	Conyers	770
5919	Meno	397
5920	Roma Creek	166
5921	Shackle Island	2491
5922	Goodridge	908
5923	Zolfo Springs	2250
5924	Tonkawa	1366
5925	Port Saint Lucie	1577
5926	Ivyland	2634
5927	Indian Rocks Beach	2785
5928	Del Valle	3050
5929	Coy	1585
5930	Cox	1043
5931	Bay Hill	3141
5932	Elma Center	1510
5933	Chester Springs	90
5934	Cape May	1994
5935	East Laurinburg	2726
5936	Bent	344
5937	Belfalls	1958
5938	Browns Mills	2841
5939	Meadow Vista	2289
5940	Rodessa	306
5941	Foster Center	929
5942	North Falmouth	1162
5943	French Settlement	385
5944	Batchtown	1280
5945	Hobbs	2089
5946	Ortonville	55
5947	Ortonville	2663
5948	Armada	1481
5949	Eldorado Springs	2267
5950	Glenshaw	2632
5951	San Acacia	228
5952	Sawmill	932
5953	Hutto	121
5954	Puerto Real Comunidad	1682
5955	Clearview	99
5956	Clearview	87
5957	Clearview	2779
5958	Zilwaukee	299
5959	Warm Beach	99
5960	Moweaqua	191
5961	Beaverlick	251
5962	Victory Gardens	2877
5963	Naytahwaush	1494
5964	Oregonia	2312
5965	Mountain Lake	3122
5966	Hoban	1781
5967	Standard City	712
5968	Leonore	2507
5969	Eldridge Park	2009
5970	Okaton	3018
5971	Red Oaks Mill	3031
5972	Waverly	2150
5973	Waverly	498
5974	Waverly	2337
5975	Waverly	1138
5976	Waverly	3057
5977	Waverly	114
5978	Waverly	2424
5979	Waverly	2774
5980	Waverly	1054
5981	Waverly	1342
5982	Waverly	2545
5983	Waverly	2976
5984	Waverly	1431
5985	Waverly	1492
5986	Waverly	1173
5987	Waverly	1873
5988	Waverly	2764
5989	Waverly	1888
5990	Waverly	2291
5991	Broadland	2934
5992	Summitview	3268
5993	Singleton	1748
5994	Singleton	847
5995	Indian Hills	1353
5996	Indian Hills	997
5997	Indian Hills	2825
5998	Indian Hills	992
5999	San Acacio	2068
6000	Union Hall	2143
6001	Macedonia	2139
6002	Macedonia	366
6003	Macedonia	3016
6004	Macedonia	1725
6005	Wagram	2726
6006	Woods Tavern	129
6007	Simons	462
6008	Bern	284
6009	Fairchance	2574
6010	Westville	2792
6011	Westville	365
6012	Westville	2276
6013	Westville	2036
6014	Westville	2626
6015	Westville	1385
6016	Lighthouse Point	2729
6017	New Tazewell	571
6018	Pretty Bayou	902
6019	Wading River	940
6020	South Bloomingville	2236
6021	Kealakekua	1488
6022	Cuevitas	1353
6023	Morton Valley	1463
6024	Rubidoux	3210
6025	Sunfish Lake	2864
6026	Red Mesa	932
6027	Wapinitia	906
6028	Four Corners	677
6029	Four Corners	579
6030	Four Corners	740
6031	Four Corners	1890
6032	Gateway	1645
6033	Gateway	150
6034	Gateway	2101
6035	Gateway	2167
6036	Markle	2385
6037	Markle	3251
6038	Stockville	2091
6039	Ruby	1462
6040	Ruby	1031
6041	Ruby	167
6042	Ruby	1616
6043	Rutherford College	925
6044	Au Sable	275
6045	Maeystown	2356
6046	Hoboken	2587
6047	Hoboken	2793
6048	Kountze	2389
6049	Craigville	296
6050	Big Sandy	2379
6051	Big Sandy	1642
6052	Big Sandy	2412
6053	Big Sandy	3219
6054	Big Sandy	1659
6055	Fort Mill	851
6056	Yates Center	3025
6057	Tillamook	2093
6058	Talent	1808
6059	Verdemont	721
6060	Saint Leonard	2983
6061	Devils Slide	120
6062	Onward	592
6063	Onward	3175
6064	Lake Telemark	2877
6065	Elmira	63
6066	Elmira	779
6067	Elmira	2867
6068	Elmira	1524
6069	Elmira	623
6070	Lacoochee	1915
6071	Everglades City	832
6072	PÄÊ»ia	2438
6073	Monrovia	111
6074	Monrovia	3153
6075	Monrovia	404
6076	Potato Creek	1813
6077	McAlester	3211
6078	Drake	2166
6079	Drake	3191
6080	Drake	831
6081	Takotna	1462
6082	Meta	1155
6083	Idabel	229
6084	Ilchester	261
6085	West Long Branch	278
6086	Indiana	2147
6087	Indio Hills	3210
6088	Rudd	265
6089	Greeley Hill	1660
6090	Millard	1386
6091	Dutch Flat	2289
6092	New Minden	487
6093	Lockington	194
6094	Mentmore	3150
6095	Tunas	526
6096	Closter	1572
6097	Moreauville	1975
6098	Centrahoma	331
6099	Tuscumbia	1149
6100	Tuscumbia	2705
6101	Buffalo Center	2692
6102	George West	1706
6103	Carlton Landing	3211
6104	Barrelville	1497
6105	Conger	1713
6106	Orange Heights	132
6107	Metz	227
6108	Metz	2886
6109	Best	2964
6110	Keysville	868
6111	Keysville	1411
6112	Keysville	1507
6113	Keysville	927
6114	Doering	1204
6115	Gapland	492
6116	Saltsburg	2147
6117	South Elgin	322
6118	Angus	881
6119	Angus	2543
6120	Angus	885
6121	Rudy	1415
6122	Mesa	3086
6123	Mesa	1296
6124	Mesa	2127
6125	Mesa	2167
6126	Cut	2118
6127	Battletown	1665
6128	West Helena	1559
6129	Queen City	2739
6130	Queen City	3176
6131	Holikachuk	1462
6132	Drain	2814
6133	Rochelle	410
6134	Rochelle	132
6135	Rochelle	1309
6136	Rochelle	1978
6137	Cat Spring	61
6138	Nellie	56
6139	Ruch	1808
6140	Spring Glen	3037
6141	Spring Glen	3217
6142	Midway Park	329
6143	Mitchellsburg	2527
6144	Connell	2127
6145	Franconia	829
6146	Franconia	2405
6147	Texarkana	2703
6148	Texarkana	826
6149	Olanta	1588
6150	Driftwood	1833
6151	Driftwood	1378
6152	Driftwood	2269
6153	Hughson	1941
6154	Windyville	526
6155	Jenner	1790
6156	Tomahawk	1204
6157	Ruff	1125
6158	Post Lake	2639
6159	Tie Siding	923
6160	Rufe	229
6161	Cannonville	3005
6162	Benns Church	1595
6163	Berwyn Heights	2064
6164	Firesteel	200
6165	Footville	837
6166	Sharon	2010
6167	Sharon	1632
6168	Sharon	84
6169	Sharon	3020
6170	Sharon	2460
6171	Sharon	1782
6172	Sharon	1990
6173	Sharon	2024
6174	Sharon	851
6175	Sharon	3082
6176	Sharon	2618
6177	Sharon	1094
6178	Parish	1262
6179	North Hornell	2887
6180	Floriston	1784
6181	Goodville	1139
6182	Gilman	1065
6183	Gilman	1955
6184	Gilman	1644
6185	Gilman	2974
6186	Gilman	2462
6187	Gilman	2206
6188	Sharpe	2468
6189	Sharpe	1054
6190	Royalty	1552
6191	Mount Prospect	761
6192	Jenifer	1407
6193	Long Barn	2798
6194	Elbing	786
6195	McClure	2719
6196	McClure	1112
6197	McClure	2163
6198	McClure	550
6199	Houlton	2201
6200	Houlton	649
6201	Alamo	228
6202	Alamo	1206
6203	Alamo	725
6204	Alamo	964
6205	Alamo	1353
6206	Alamo	3143
6207	Alamo	377
6208	Alamo	899
6209	Burmester	1622
6210	Nabnasset	95
6211	Cataract	2360
6212	Cataract	1044
6213	Guerra	3189
6214	Franklin Square	101
6215	Cobden	508
6216	Cobden	637
6217	Platte Woods	1851
6218	Richland Center	1674
6219	Ballou	1884
6220	Fort Wright	2397
6221	Wahsatch	1726
6222	Bernstadt	1744
6223	Carroll	2604
6224	Carroll	2224
6225	Carroll	406
6226	Selkirk	295
6227	Withee	2327
6228	Guntown	2096
6229	Gloverville	646
6230	Playita Comunidad	2259
6231	Marys Home	2705
6232	Colts Neck	278
6233	Skyland	2270
6234	Skyland	2825
6235	Artas	175
6236	NÄÊ»Älehu	1488
6237	Kiefer	755
6238	Judson	2031
6239	Judson	1444
6240	Judson	2791
6241	Judson	1379
6242	Newportville Terrace	2634
6243	Pontoon Beach	2054
6244	Mustang Ridge	3050
6245	Gargatha	3027
6246	West Livingston	2540
6247	Muddy Gap	3036
6248	Carthage	228
6249	Carthage	3044
6250	Carthage	449
6251	Carthage	326
6252	Carthage	1604
6253	Carthage	524
6254	Carthage	1932
6255	Carthage	1513
6256	Carthage	2514
6257	Carthage	1969
6258	Carthage	179
6259	Carthage	995
6260	Hazardville	1712
6261	Guin	683
6262	Nicolaus	220
6263	Pemberton Heights	2841
6264	Choctaw Bluff	1214
6265	Eagle Harbor	3125
6266	Eagle Harbor	2064
6267	Country Knolls	1484
6268	Neponset	1704
6269	Trenary	2767
6270	Hosston	306
6271	Green Knoll	129
6272	Poca	2750
6273	Vetal	1047
6274	Wideman	1633
6275	Winthrop	1874
6276	Winthrop	1307
6277	Winthrop	2812
6278	Winthrop	1500
6279	Winthrop	3034
6280	Winthrop	833
6281	Eldora	2267
6282	Eldora	2387
6283	Fourche	1847
6284	Makinen	3195
6285	Conemaugh	3032
6286	Oakley	299
6287	Oakley	1046
6288	Oakley	2185
6289	Oakley	3143
6290	Oakley	2382
6291	Oakley	1726
6292	Oakley	1723
6293	Oakley	3158
6294	Metairie	1005
6295	Flossmoor	761
6296	Highland Park	2606
6297	Highland Park	1326
6298	Highland Park	94
6299	Highland Park	2545
6300	Highland Park	525
6301	Highland Park	2474
6302	Old Fields	1900
6303	Tusculum	558
6304	Poag	2054
6305	Green Camp	692
6306	Captain Cook	1488
6307	Hettick	712
6308	Pattonsburg	436
6309	Fred	1381
6310	Fred	2873
6311	Cazenovia	2042
6312	Cazenovia	1674
6313	Quarry	486
6314	Kentfield	1515
6315	Watseka	1955
6316	Wardell	2383
6317	Oak Vale	530
6318	Crested Butte	549
6319	Peachtree Corners	1373
6320	Bellaire	654
6321	Bellaire	145
6322	Bellaire	1855
6323	Bellaire	887
6324	Bellaire	1591
6325	McDermitt	320
6326	West Puente Valley	404
6327	Cloverdale	605
6328	Cloverdale	950
6329	Cloverdale	2093
6330	Cloverdale	2752
6331	Cloverdale	2158
6332	Cloverdale	2756
6333	Cloverdale	1288
6334	Cloverdale	1790
6335	Cloverdale	1352
6336	Cloverdale	2475
6337	Burning Springs	1528
6338	Hooksett	598
6339	Jennie	629
6340	Randall	164
6341	Randall	174
6342	Randall	2070
6343	Dunmor	1216
6344	Lenox	763
6345	Lenox	1060
6346	Lenox	2553
6347	Lenox	418
6348	Lenox	2672
6349	Caryville	2969
6350	Caryville	178
6351	Caryville	482
6352	Caryville	2618
6353	Pixley	308
6354	Brownton	2386
6355	Chesapeake City	652
6356	Emelle	514
6357	Cobbtown	758
6358	Cobbtown	1791
6359	Yachats	1184
6360	Covesville	2829
6361	Irene	452
6362	Irene	1529
6363	Kayenta	3161
6364	Olar	2890
6365	Aitkin	2300
6366	Addicks	145
6367	Gilbertown	894
6368	Warren	1072
6369	Warren	1481
6370	Warren	2873
6371	Warren	1698
6372	Warren	2946
6373	Warren	1694
6374	Warren	1760
6375	Warren	3035
6376	Warren	2470
6377	Warren	2307
6378	Warren	3251
6379	Warren	1458
6380	Bentonville	1292
6381	Bentonville	2314
6382	Bentonville	1645
6383	Las Palomas	170
6384	Gilmer	1659
6385	Hummels Wharf	2163
6386	Irena	1837
6387	Hiwannee	2609
6388	Center Ridge	1573
6389	Chewey	1385
6390	Du Bois	487
6391	Du Bois	1255
6392	Du Bois	1300
6393	Chuathbaluk	2260
6394	Mount Jewett	1217
6395	Fox Chase	362
6396	Fox Chase	843
6397	Fanwood	502
6398	El Cenizo Colonia	166
6399	Thomaston	1080
6400	Thomaston	585
6401	Thomaston	101
6402	Thomaston	67
6403	Thomaston	1772
6404	Thomaston	1990
6405	Appleby	1666
6406	South Amana	3081
6407	Medicine Park	2512
6408	York Haven Anchorage	849
6409	Pinole	3143
6410	Stover	115
6411	Port Orchard	1048
6412	Holiday Lakes	1984
6413	Kahlotus	2127
6414	Bluebell	2428
6415	Lakehurst	2627
6416	Pinola	1787
6417	Fort Myers Beach	2101
6418	AntÃ³n RuÃ­z Comunidad	2170
6419	Harwich Port	1162
6420	Dunreith	1107
6421	Powers	772
6422	Powers	544
6423	Moorpark	3221
6424	Keenesburg	1101
6425	Okreek	2648
6426	Ironwood	1772
6427	Tunis	820
6428	Rulo	2442
6429	Selmont	523
6430	Bete Grise	3125
6431	Hosmer	835
6432	Breidablick	1048
6433	Weldona	113
6434	Melitota	217
6435	Daysville	2650
6436	Corwith	1965
6437	Boardman	2845
6438	Boardman	1238
6439	Boardman	649
6440	Boardman	2839
6441	Duquette	1358
6442	Tunnelton	1961
6443	Livonia	2606
6444	Livonia	2578
6445	Livonia	386
6446	Livonia	466
6447	Livonia	2755
6448	Laughlin	2329
6449	Macclenny	1470
6450	Ruma	2680
6451	Drayton	2418
6452	Crowheart	968
6453	Kirley	2620
6454	Pahokee	3071
6455	Pageton	2379
6456	Thackerville	2476
6457	Seminary	2576
6458	Gloucester Courthouse	2625
6459	Laurence Harbor	94
6460	Colstrip	2377
6461	Bowdoinham	325
6462	Beech Mountain	1614
6463	RÃ­o Blanco Comunidad	1619
6464	East Lexington	152
6465	Silver Springs	1028
6466	Silver Springs	142
6467	South Bound Brook	129
6468	Peshtigo	1728
6469	University Heights	2829
6470	University Heights	1263
6471	University Heights	708
6472	Parkerton	3170
6473	Gulf	1630
6474	Bryans Road	335
6475	Cusson	3195
6476	Kirtland Hills	1328
6477	Camp Jo-Ann	2385
6478	Spring Church	775
6479	Valley Center	2381
6480	Valley Center	887
6481	Sabana Grande	2406
6482	Netcong	2877
6483	Port Sanilac	445
6484	Courtland	1015
6485	Courtland	1514
6486	Courtland	554
6487	Courtland	1871
6488	Courtland	538
6489	Courtland	2688
6490	Polkton	1383
6491	Marlboro Meadows	2064
6492	Harleyville	2509
6493	Rule	1179
6494	Rule	2223
6495	Emerald Lakes	2351
6496	Northville	2606
6497	Northville	1038
6498	Northville	2710
6499	Jewett City	1593
6500	Adario	1672
6501	Willow Grove	731
6502	Dunkerton	1901
6503	Mandeville	2703
6504	Mandeville	2905
6505	East Ridge	2073
6506	Rockwood	897
6507	Rockwood	2606
6508	Rockwood	3204
6509	Rockwood	2680
6510	Rockwood	131
6511	Rockwood	130
6512	Rockwood	666
6513	Norristown	301
6514	Norristown	731
6515	Grannis	2546
6516	Bens Run	2872
6517	Scotts Valley	1362
6518	Richey	2996
6519	Friend	106
6520	Friend	1086
6521	Oley	362
6522	Agness	811
6523	Sunnyside	3037
6524	Sunnyside	937
6525	Sunnyside	874
6526	Sunnyside	207
6527	Sunnyside	1331
6528	Sunnyside	3268
6529	Sunnyside	1457
6530	Sunnyside	1550
6531	Olex	942
6532	Boden	714
6533	Nice	1330
6534	Venedy	487
6535	Waukesha	2426
6536	Duchesne	2428
6537	Puente	714
6538	Mojave	263
6539	Gwynedd Valley	731
6540	Lake Elmo	480
6541	Southern Shops	3162
6542	Rudeville	1889
6543	Sardinia	2487
6544	Sardinia	636
6545	Seguin	1460
6546	Seguin	1224
6547	Olds	1106
6548	Gibson Flats	2334
6549	Paragon	111
6550	Maunabo	2437
6551	Ozawkie	998
6552	Gunn	1601
6553	Wathena	2028
6554	Cedar Glen Lakes	2627
6555	Dan	664
6556	Broomtown	433
6557	La Farge	226
6558	Richardson	525
6559	Richardson	2930
6560	Angle	2646
6561	Heaton	3073
6562	Hiram	3276
6563	Hiram	2957
6564	Hiram	1637
6565	Copper City	2065
6566	Pleasant Hope	2542
6567	Teasdale	2603
6568	White Crystal Beach	652
6569	Greenbrae	1515
6570	Day	2771
6571	Day	1084
6572	Covenant Life	1963
6573	Spear	1614
6574	Coal Center	483
6575	Beggs	1543
6576	Scotlandville	1381
6577	Kearns	2637
6578	Edson	2080
6579	CaÃ±on City	969
6580	Dobbs Ferry	1919
6581	Webbers Falls	2731
6582	Mankato	1444
6583	Mankato	174
6584	Kearny	2587
6585	Kearny	1914
6586	Choccolocco	1283
6587	East Germantown	2600
6588	Angie	488
6589	Waples	1933
6590	Loves Park	2691
6591	West Hazleton	2641
6592	Pricedale	1168
6593	Pricedale	2385
6594	Walford	1639
6595	McEwensville	2963
6596	Stonington	2949
6597	Stonington	1893
6598	Stonington	1593
6599	Scales Mound	1698
6600	Eola	2538
6601	Goodlettsville	2760
6602	Glen Hope	1300
6603	Beechwood Trails	3255
6604	Oak Point	2452
6605	Lake Fork	2181
6606	Lake Fork	3167
6607	Warroad	877
6608	Round Lake Heights	1326
6609	New Hampton	305
6610	New Hampton	698
6611	New Hampton	620
6612	Rancho Tehama Reserve	3186
6613	Bajadero Comunidad	2087
6614	West Ocean City	1759
6615	Overland	2078
6616	Overland	3196
6617	Twin Grove	2283
6618	Olga	1720
6619	Olga	2101
6620	Chatwood	90
6621	Toughkenamon	90
6622	Christy Manor	775
6623	Metropolis	2288
6624	Stanfield	1914
6625	Stanfield	1539
6626	Stanfield	102
6627	Stanfield	1544
6628	Doucette	2873
6629	Grandview Plaza	2706
6630	Raytown	1826
6631	Pebble Beach	2955
6632	Cedar Valley	2182
6633	Yeagertown	2474
6634	Polo	2854
6635	Polo	1978
6636	Randado	3189
6637	Olin	3019
6638	Olin	2072
6639	Laguna Niguel	3140
6640	Ganado	1823
6641	Ganado	932
6642	Kanosh	2152
6643	Sedley	1015
6644	Matlacha	2101
6645	Patroon	189
6646	East Setauket	940
6647	Alabam	2049
6648	Wood Village	3204
6649	NiuliÊ»i	1488
6650	Harbor Beach	342
6651	North Foster	929
6652	Lanagan	204
6653	Ruso	2282
6654	Cheviot	2075
6655	Middletown	2181
6656	Middletown	2451
6657	Middletown	3137
6658	Middletown	1482
6659	Middletown	1330
6660	Middletown	2563
6661	Middletown	278
6662	Middletown	736
6663	Middletown	1107
6664	Middletown	3152
6665	Middletown	1369
6666	Middletown	3153
6667	Middletown	997
6668	Middletown	96
6669	Middletown	785
6670	Schaumburg	761
6671	Rusk	429
6672	Rusk	2969
6673	Spring Hope	3187
6674	Grand View	3109
6675	Grand View	982
6676	Fort Dix	2841
6677	Rush	73
6678	Rush	3228
6679	Anselmo	3064
6680	Hillside Lake	3031
6681	Des Allemands	1081
6682	Oceola	1412
6683	Lore City	3048
6684	Anthony	3227
6685	Anthony	682
6686	Anthony	1242
6687	Anthony	2836
6688	Anthony	1794
6689	Paradise Hill	1140
6690	Dee	949
6691	Fieldsboro	2841
6692	Fullerton	3114
6693	Fullerton	3140
6694	Fullerton	225
6695	Fullerton	1091
6696	Fullerton	1372
6697	Fullerton	1052
6698	Roxbury	2135
6699	Roxbury	2522
6700	Pauls Valley	1879
6701	Sunman	797
6702	Corte Madera	1515
6703	Crawfordsville	725
6704	Crawfordsville	1785
6705	Crawfordsville	484
6706	Crawfordsville	943
6707	Cowiche	3268
6708	Emmet	1783
6709	Emmet	1869
6710	Laurel Gardens	2632
6711	Folly Beach	905
6712	Follansbee	1069
6713	Lawson	63
6714	Lawson	2958
6715	Lawson	501
6716	Lawson	525
6717	Anselma	90
6718	Newlin	1022
6719	Sandwich	1755
6720	Sandwich	1162
6721	Rochford	907
6722	Santa Monica	1141
6723	Santa Monica	404
6724	Mechanicsville	2580
6725	Mechanicsville	1768
6726	Mechanicsville	64
6727	Mechanicsville	2826
6728	Mechanicsville	1373
6729	Deenwood	1550
6730	Dew	2524
6731	Housatonic	2672
6732	Polk	383
6733	Polk	2990
6734	Polk	2548
6735	Lake Lafayette	2774
6736	Suncook	598
6737	Mount Pocono	2351
6738	Pequot Lakes	704
6739	Moss Point	1822
6740	Thermalito	766
6741	Retrop	757
6742	Villegreen	205
6743	KaÊ»aÊ»awa	1878
6744	Sumterville	513
6745	Pony	2043
6746	Gobler	2383
6747	McCredie Springs	1446
6748	Rock Hill	3196
6749	Rock Hill	1129
6750	Rock Hill	851
6751	Rock Hill	1946
6752	Mullinville	1993
6753	Fifth Ward	1975
6754	Braham	1084
6755	VÃ¡zquez	2259
6756	White Shield	2282
6757	Downieville	171
6758	Olla	2062
6759	Orchard Mesa	2167
6760	Story	1225
6761	Story	730
6762	Parsonsburg	2067
6763	Wilsey	2879
6764	Daytona Beach	814
6765	Goliad	2583
6766	Crozet	2829
6767	Rutland	1760
6768	Rutland	2588
6769	Rutland	2507
6770	Rutland	1327
6771	Rutland	3010
6772	Rutland	1449
6773	Rutland	318
6774	South Haven	2433
6775	South Haven	2498
6776	South Haven	2492
6777	South Haven	2291
6778	Johnstone	594
6779	South Shore	1052
6780	South Shore	1082
6781	South Shore	1492
6782	Toccopola	134
6783	Kongiganak	2260
6784	Webster	2959
6785	Webster	2449
6786	Webster	513
6787	Webster	1745
6788	Webster	960
6789	Webster	653
6790	Webster	2385
6791	Webster	2600
6792	Webster	1807
6793	Webster	2344
6794	Webster	1760
6795	Webster	457
6796	Webster	145
6797	Ruth	342
6798	Ruth	317
6799	Ruth	2670
6800	Ruth	1198
6801	Ruth	1401
6802	Reily	785
6803	Pond	263
6804	Forest Ranch	766
6805	Shawsheen Village	2745
6806	KalÄheo	2209
6807	Maricao	2616
6808	North Bay Village	1705
6809	Hollowayville	1704
6810	Tarry	1194
6811	Waterville	2822
6812	Waterville	3238
6813	Waterville	3237
6814	Waterville	1500
6815	Waterville	2471
6816	Waterville	2426
6817	Waterville	2555
6818	Waterville	2942
6819	Mahopac	2751
6820	Ellenton	1105
6821	Ellenton	2834
6822	Galeville	2979
6823	Newark Valley	2150
6824	Mill Village	1512
6825	Rices Landing	561
6826	Sterling Heights	1481
6827	Cundiyo	1750
6828	Wilton Manors	2729
6829	Polkville	857
6830	Polkville	1601
6831	Bouton	522
6832	Leipers Fork	122
6833	Perrinton	720
6834	Brookport	2288
6835	Cajon Junction	721
6836	North Kensington	740
6837	Star Valley	2920
6838	Halls Summit	1054
6839	Nectar	2420
6840	Marlin	1125
6841	Marlin	2826
6842	Marlin	2597
6843	Red Bay	2125
6844	Alcan	1561
6845	Litchfield Park	3086
6846	Stanardsville	568
6847	Massanutten	2084
6848	Magdalena	228
6849	Jonesburg	1671
6850	Jonesburg	736
6851	Napanoch	1952
6852	North Powder	495
6853	Tully	2979
6854	Royal Pines	2270
6855	Dix	1382
6856	Dix	1004
6857	Pope	1514
6858	San Ignacio	1039
6859	Lecompte	2402
6860	South Palm Beach	3071
6861	Spring Creek	108
6862	Spring Creek	2648
6863	Spring Creek	2084
6864	Spring Creek	307
6865	Butler Beach	223
6866	Magnolia Gardens	145
6867	Hodgesville	1658
6868	Big Beaver	1883
6869	South Wallins	1898
6870	Green Isle	3034
6871	Johnsons Station	3084
6872	Arroyo	2659
6873	Tulip	630
6874	Cullman	2660
6875	Wanamingo	1997
6876	West Simsbury	1712
6877	Dulce	2725
6878	Guys	1647
6879	Birnamwood	2827
6880	Stone	3240
6881	Soudan	3195
6882	Mule Creek	1128
6883	Fort Washington	731
6884	Fort Washington	2064
6885	Porum	2731
6886	Verne	231
6887	Walthill	2191
6888	Orchard	113
6889	Orchard	1890
6890	Orchard	1474
6891	Orchard	157
6892	Orchard	2111
6893	Derby Acres	263
6894	Friday	316
6895	Tulia	423
6896	Riverdale	937
6897	Riverdale	2687
6898	Riverdale	2492
6899	Riverdale	1943
6900	Riverdale	2877
6901	Riverdale	1433
6902	Riverdale	796
6903	Riverdale	761
6904	Riverdale	2239
6905	Riverdale	2282
6906	Brookhaven	2809
6907	Brookhaven	940
6908	Brookhaven	830
6909	Brookhaven	1751
6910	Brookhaven	1198
6911	Glenwood Landing	101
6912	Olpe	141
6913	Whitesboro	1163
6914	Whitesboro	3261
6915	Whitesboro	2263
6916	Whitesboro	3238
6917	Whitesboro	1994
6918	Ullin	370
6919	Helton	1957
6920	Verna	2834
6921	Buffalo	1793
6922	Buffalo	2061
6923	Buffalo	3048
6924	Buffalo	1904
6925	Buffalo	3013
6926	Buffalo	1838
6927	Buffalo	483
6928	Buffalo	503
6929	Buffalo	1265
6930	Buffalo	1510
6931	Buffalo	2937
6932	Buffalo	695
6933	Buffalo	1208
6934	Buffalo	2239
6935	Buffalo	3180
6936	Buffalo	526
6937	Buffalo	2750
6938	Buffalo	2291
6939	Mooreland	1107
6940	Mooreland	3082
6941	Saint Marie	3168
6942	Cedar Falls	3217
6943	Cedar Falls	1901
6944	Mount Lena	492
6945	Fossum	529
6946	Winnebago	2690
6947	Winnebago	2191
6948	Winnebago	2691
6949	Winnebago	2830
6950	Zwolle	1032
6951	Mallory	2179
6952	Jessietown	680
6953	Meadville	2137
6954	Meadville	946
6955	Meadville	1417
6956	Paint	131
6957	Groesbeck	2075
6958	Groesbeck	2790
6959	Ringgold	1762
6960	Ringgold	492
6961	Ringgold	2521
6962	Ringgold	1148
6963	Ringgold	1087
6964	Nile	3268
6965	Perrin	2502
6966	Perrin	2918
6967	Bryce Canyon	3005
6968	Dassel	2695
6969	Patoka	3115
6970	Patoka	690
6971	Jeffrey City	968
6972	Ojo Amarillo	2929
6973	Caddo Mills	3215
6974	Miller	1080
6975	Miller	2687
6976	Miller	141
6977	Miller	871
6978	Miller	1068
6979	Miller	534
6980	Miller	1965
6981	Raubsville	314
6982	Tylersburg	297
6983	Perris	3210
6984	Shelbyville	189
6985	Shelbyville	192
6986	Shelbyville	2953
6987	Shelbyville	191
6988	Shelbyville	188
6989	Shelbyville	193
6990	Glenns Ferry	809
6991	Centerview	1269
6992	Rosanky	358
6993	Cima	721
6994	Millen	343
6995	Spotswood	94
6996	Sarepta	2594
6997	Sarepta	1278
6998	Surry	2708
6999	West Hempstead	101
7000	Welda	1394
7001	Lanyon	2590
7002	Sandy Bottom	217
7003	Alfarata	2474
7004	Lutsen	762
7005	Brandenburg	1665
7006	Dulac	910
7007	Rocky Gap	675
7008	East Bernard	3047
7009	Pemberville	2338
7010	Claxton	1652
7011	Muskogee	2731
7012	Glendale Springs	1872
7013	Hayti	2383
7014	Hayti	901
7015	DeWitt	2903
7016	DeWitt	2896
7017	DeWitt	144
7018	DeWitt	1475
7019	Blue Mountain	1721
7020	Blue Mountain	1648
7021	Blue Mountain	2187
7022	Marley	875
7023	Powderly	893
7024	Powderly	1216
7025	Biehle	1843
7026	Schuyler	272
7027	Schuyler	2795
7028	Norden	420
7029	Brayton	2640
7030	Welch	2379
7031	Welch	352
7032	Welch	2998
7033	Strodes Mills	2474
7034	Cassoday	786
7035	Winterville	1213
7036	Winterville	2201
7037	Winterville	1503
7038	Winterville	485
7039	Butner	282
7040	Wixom	2663
7041	Random Lake	915
7042	Saulsbury	2697
7043	Otterbein	404
7044	Otterbein	1641
7045	Post	855
7046	Post	1018
7047	Broadford	2410
7048	Reardan	1195
7049	Boiling Springs	3162
7050	Boiling Springs	83
7051	Boiling Springs	857
7052	Los Fresnos	1832
7053	Quinlan	3215
7054	Quinlan	3082
7055	Canada Creek Ranch	2584
7056	Nina	165
7057	Welby	1290
7058	Patrick Springs	889
7059	Krugerville	2452
7060	Ventress	2578
7061	Old Ripley	3127
7062	Haysi	550
7063	Gobles	2433
7064	Gallaway	2568
7065	Poth	2938
7066	Pyote	1552
7067	Branton	1463
7068	Whitaker	2632
7069	Oreland	731
7070	Blocksburg	319
7071	Plumas Eureka	3011
7072	Mokena	875
7073	Shawboro	1259
7074	Pigeon Creek	1725
7075	Gatlinburg	3208
7076	Wakonda	1529
7077	Clarksville	1273
7078	Clarksville	2318
7079	Clarksville	2901
7080	Clarksville	726
7081	Clarksville	261
7082	Clarksville	2009
7083	Clarksville	2178
7084	Clarksville	561
7085	Clarksville	2235
7086	Clarksville	1613
7087	Clarksville	782
7088	Clarksville	1171
7089	Grandfield	1555
7090	Johnstown	968
7091	Johnstown	1101
7092	Johnstown	640
7093	Johnstown	2381
7094	Johnstown	2710
7095	Johnstown	3255
7096	Johnstown	3032
7097	Eulonia	1043
7098	Wanship	1726
7099	Putnam Lake	2751
7100	Ellington	2208
7101	Turbeville	1355
7102	Sturgis	1663
7103	Sturgis	2199
7104	Sturgis	3103
7105	Sturgis	498
7106	Sturgis	951
7107	Norris City	1907
7108	Secor	1999
7109	Millfield	741
7110	Penfield	567
7111	Penfield	1300
7112	Penfield	519
7113	Crystal Bay	2332
7114	Parlier	937
7115	New Harmony	2859
7116	New Harmony	472
7117	Palmdale	1377
7118	Palmdale	1369
7119	Palmdale	404
7120	Crossnore	1614
7121	Herndon	2963
7122	Herndon	937
7123	Herndon	1027
7124	Herndon	421
7125	Herndon	2951
7126	Herndon	2405
7127	Grovertown	1655
7128	Custar	2338
7129	Fort Green Springs	2250
7130	Aniak	2260
7131	Saint Marks	1976
7132	Saint Marks	2995
7133	Saint Marks	887
7134	La Cygne	945
7135	Standing Pine	1932
7136	Jakolof Bay	1806
7137	Tilghman Island	1160
7138	Thendara	1597
7139	Ostrander	198
7140	Ostrander	2806
7141	Ostrander	700
7142	Hitchcock	2523
7143	Hitchcock	1404
7144	Hitchcock	2934
7145	Altadena	404
7146	North Warren	2307
7147	Gulf Stream	3071
7148	Veneta	1446
7149	Pike Road	438
7150	Pike Road	729
7151	Douglas	2822
7152	Douglas	234
7153	Douglas	3170
7154	Douglas	2472
7155	Douglas	1258
7156	Douglas	2908
7157	Douglas	3004
7158	Douglas	3232
7159	Douglas	1551
7160	Douglas	2280
7161	Douglas	769
7162	Weston Mills	1370
7163	Ellisport	3217
7164	Hyak	400
7165	Zayante	1362
7166	Groveport	2141
7167	Fosston	2543
7168	Herrings	995
7169	Acme	1336
7170	Acme	1225
7171	Acme	1680
7172	Acme	1983
7173	Posen	761
7174	Posen	2238
7175	Quintette	2667
7176	Darco	619
7177	Sykeston	2916
7178	Newtown	2715
7179	Newtown	2075
7180	Newtown	2634
7181	Newtown	2245
7182	Newtown	2084
7183	Newtown	361
7184	Newtown	1951
7185	Newtown	408
7186	Newtown	217
7187	Hyde	1300
7188	Nankin	383
7189	Spickard	2506
7190	Zebina	1007
7191	Strandburg	1121
7192	Galena Park	145
7193	Canyonville	2814
7194	Rives	1546
7195	Rives	346
7196	Hermann	2166
7197	Todd Mission	847
7198	Guerneville	1790
7199	Cearfoss	492
7200	Port Angeles	185
7201	Elliotts Bluff	2976
7202	Darby	2809
7203	Darby	601
7204	Dayville	1117
7205	Sandy Springs	2715
7206	Sandy Springs	1397
7207	El Cenizo	817
7208	James	3021
7209	James	485
7210	Bajandas Comunidad	2170
7211	Hartfield	93
7212	Beluga	1806
7213	Oolitic	531
7214	Huson	3149
7215	Southside	138
7216	Southside	1163
7217	Ribera	1039
7218	Clarkson Valley	3196
7219	Tonasket	1874
7220	Hatteras	842
7221	Hatillo Zona Urbana	2992
7222	Tererro	1039
7223	Brock	283
7224	Gasper	2183
7225	Lemay	3196
7226	Posey	300
7227	Posey	308
7228	North Ridgeville	845
7229	Temple	362
7230	Temple	225
7231	Temple	1465
7232	Temple	2230
7233	Temple	1958
7234	Findlay	191
7235	Findlay	1972
7236	Wade Hampton	2031
7237	Wisconsin Rapids	2339
7238	Ashley	487
7239	Ashley	2641
7240	Ashley	1041
7241	Ashley	1753
7242	Ashley	2806
7243	Ashley	1171
7244	Ashley	720
7245	Mountain Mesa	263
7246	Newnan	2766
7247	Meadow Valley	3011
7248	Gatesville	1917
7249	Gatesville	872
7250	Gatesville	2295
7251	Bucktown	1947
7252	Bucktown	90
7253	Planada	1985
7254	Ellis Grove	2680
7255	Graniteville	464
7256	Graniteville	646
7257	Graniteville	95
7258	Graniteville	1784
7259	Haleburg	1114
7260	Siltcoos	1446
7261	Palo Seco	2437
7262	Dormont	2632
7263	Saint Clair Shores	1481
7264	Kankakee	2870
7265	Artemus	587
7266	Dublin	374
7267	Dublin	2063
7268	Dublin	1556
7269	Dublin	2634
7270	Dublin	2959
7271	Dublin	2600
7272	Dublin	161
7273	Dublin	1545
7274	Dublin	948
7275	Dublin	1071
7276	Dublin	2141
7277	Siler City	1630
7278	Rienzi	3205
7279	Jolley	1277
7280	Kraemer	1574
7281	Red Ash	1776
7282	Gillis	364
7283	Glenwillard	2632
7284	Stowe	448
7285	Stowe	731
7286	Caffee Junction	1911
7287	McWilliams	409
7288	Newaygo	2882
7289	Macksville	1319
7290	Shasta	2883
7291	Millston	1830
7292	Coward	1588
7293	Mount Sinai	940
7294	Idaho Falls	1489
7295	Cortez	2834
7296	Cortez	2615
7297	Marlow	2848
7298	Marlow	1743
7299	Carolina	2575
7300	Carolina	2889
7301	Carolina	686
7302	Carolina	478
7303	Varnell	3049
7304	Union Village	929
7305	Lemhi	2891
7306	Caroline	2827
7307	Tulsa	2906
7308	West Palm Beach	3071
7309	Homeacre	789
7310	Fairport	1756
7311	Fairport	1702
7312	Fairport	1798
7313	Fairport	2344
7314	Fairport	1450
7315	Clam Gulch	1806
7316	Gordonville	1139
7317	Gordonville	3261
7318	Gordonville	2619
7319	Gordonville	3065
7320	Playa Fortuna Comunidad	2447
7321	Fort Carson	3228
7322	South Carrollton	1216
7323	Powell	583
7324	Powell	416
7325	Powell	881
7326	Powell	1747
7327	Powell	990
7328	Powell	3274
7329	Powell	2806
7330	Powell	1752
7331	Powell	2467
7332	Hibernia	2877
7333	Wells	2588
7334	Wells	429
7335	Wells	2069
7336	Wells	108
7337	Wells	2830
7338	Wells	1731
7339	Deming	281
7340	Deming	1983
7341	Cookeville	2753
7342	Rosenhayn	82
7343	Morrill	1016
7344	Morrill	164
7345	Morrill	638
7346	Morrill	1812
7347	Warrenton	2301
7348	Warrenton	2311
7349	Warrenton	3224
7350	Warrenton	2313
7351	Warrenton	813
7352	Beemerville	1889
7353	Whitefish Bay	904
7354	Haltom City	3084
7355	Bleakwood	1233
7356	Alexander Mills	2670
7357	Country Club	1705
7358	Country Club	590
7359	Humptulips	2499
7360	Frostproof	2545
7361	Union Valley	3215
7362	Boutte	1081
7363	Koliganek	2019
7364	SuÃ¡rez Comunidad	1235
7365	Shelter Island	940
7366	Husum	149
7367	Cohasset	766
7368	Cohasset	2777
7369	Kingsford Heights	2792
7370	Stanberry	528
7371	Medley	1705
7372	Neah Bay	185
7373	Canisteo	2887
7374	Ball Ground	431
7375	Hannasville	2990
7376	Nebraska City	2280
7377	Attica	1028
7378	Attica	3188
7379	Attica	2262
7380	Attica	687
7381	Attica	361
7382	Attica	1794
7383	Stout	1292
7384	Stout	2503
7385	Kranzburg	1492
7386	Wilson	60
7387	Wilson	293
7388	Wilson	1391
7389	Wilson	1862
7390	Wilson	314
7391	Wilson	2358
7392	Wilson	2423
7393	Wilson	2910
7394	Wilson	938
7395	Wilson	1326
7396	Wilson	2560
7397	Wilson	649
7398	Wilson	2936
7399	Manning	2968
7400	Manning	2224
7401	Manning	1859
7402	Manning	1355
7403	Manning	524
7404	Luis LlorÃ©ns Torres Comunidad	846
7405	Lincolnwood	761
7406	Pratts	2059
7407	Homeworth	1662
7408	Sherwood	221
7409	Sherwood	465
7410	Sherwood	2333
7411	Sherwood	375
7412	Sherwood	1567
7413	Sherwood	1428
7414	Sherwood	1160
7415	Sherwood	2123
7416	Sherwood	1277
7417	Enderlin	1773
7418	Acra	556
7419	Hamilton Square	2009
7420	Bruceville	581
7421	Bruceville	1160
7422	Phillipsville	319
7423	Yettem	308
7424	Hopatcong	1889
7425	Climax Springs	2978
7426	Tselakai Dezza	2932
7427	Glenside	2628
7428	Glenside	731
7429	Pepperell	95
7430	Irvona	1300
7431	Newcomerstown	2552
7432	Put-in-Bay	1730
7433	Yetter	1277
7434	Mount Montgomery	977
7435	Mount Erie	2610
7436	Lecanto	799
7437	Silver Plume	2958
7438	Juliff	1890
7439	Ludden	1091
7440	Gulkana	3172
7441	Cundiff	2502
7442	Cundiff	1387
7443	Shady Hills	1915
7444	Rising City	788
7445	Naturita	2662
7446	Meshoppen	1029
7447	Hanahan	1723
7448	Northumberland	2963
7449	Pueblito del RÃ­o Comunidad	800
7450	Chireno	1666
7451	Gallinas	1199
7452	Whitehouse	1603
7453	Whitehouse	2942
7454	Elderton	775
7455	Dahlgren	2074
7456	Dahlgren	1982
7457	Bridgeville	1887
7458	Bridgeville	2306
7459	Bridgeville	2632
7460	Spearfish	536
7461	Stone City	2030
7462	Stone City	3019
7463	Bereah	2545
7464	PoÊ»ipÅ«	2209
7465	Howardwick	952
7466	Amador City	2253
7467	Gulf Gate Estates	1236
7468	Nixa	2950
7469	Vinegar Bend	470
7470	Warsaw	1028
7471	Warsaw	2715
7472	Warsaw	56
7473	Warsaw	1643
7474	Warsaw	2748
7475	Warsaw	3126
7476	Warsaw	3092
7477	Warsaw	718
7478	Warsaw	1969
7479	Warsaw	580
7480	Hallam	1138
7481	Hallam	853
7482	Aquasco	2064
7483	Overbrook	1156
7484	Overbrook	1407
7485	Overbrook	2476
7486	Higgston	738
7487	Enochs	2510
7488	Belton	1397
7489	Belton	1958
7490	Belton	3178
7491	Belton	1216
7492	Palouse	1464
7493	Van Wert	2484
7494	Van Wert	2544
7495	Van Wert	2984
7496	White Water	3210
7497	Iowa Colony	1984
7498	Fluker	169
7499	Browns Valley	1922
7500	Bridger	1918
7501	Bridger	3035
7502	Huntington Station	940
7503	Bassfield	3070
7504	Calhoun Falls	1944
7505	Indrio	1577
7506	London	1713
7507	London	2057
7508	London	1744
7509	London	2642
7510	London	749
7511	London	308
7512	London	355
7513	Coxs Mills	2316
7514	West Islip	940
7515	Camdenton	2978
7516	Hickory Hills	761
7517	Hickory Hills	2641
7518	North Eastham	1162
7519	Turkey Creek	62
7520	Borrego Springs	2381
7521	Monona	749
7522	Monona	1942
7523	Burgin	2006
7524	Tyaskin	2067
7525	Birney	2377
7526	Shavertown	2641
7527	Landersville	538
7528	Marysvale	2646
7529	Weatherly	3038
7530	Morton Mills	732
7531	Brookshire	2088
7532	Sulphur Springs	1107
7533	Sulphur Springs	1412
7534	Sulphur Springs	1645
7535	Sulphur Springs	3252
7536	Depauville	995
7537	Katemcy	745
7538	Volens	796
7539	Little Elm	2452
7540	Goldsboro	897
7541	Goldsboro	2598
7542	Goldsboro	853
7543	Goldsboro	2894
7544	Kellerton	2700
7545	Rives Junction	1819
7546	Alderpoint	319
7547	South Beloit	2691
7548	Grosse Pointe Park	2606
7549	Morehead City	1182
7550	Wanatah	2792
7551	Naborton	1311
7552	Olimpo Comunidad	2413
7553	Olamon	392
7554	Tradesville	1137
7555	Amery	2547
7556	Green Mountain Falls	277
7557	Parkway Village	997
7558	Garlin	1387
7559	Thistle	705
7560	North Springfield	1512
7561	North Springfield	1446
7562	North Springfield	2483
7563	North Springfield	2405
7564	Calvin	1720
7565	Calvin	1907
7566	Calvin	3053
7567	Calvin	921
7568	Forbes Road	2385
7569	Vincennes	581
7570	Northridge	2323
7571	Jordan Valley	1310
7572	Parcoal	2589
7573	Palmers Crossing	1934
7574	Pattison	2088
7575	Pattison	572
7576	Salt Flat	1438
7577	Kalihi Wai	2209
7578	Agudo	1505
7579	Monte Grande	1682
7580	Hughes	1462
7581	Hughes	2980
7582	Northborough	1760
7583	Shepperd	1498
7584	Duquesne	3044
7585	Duquesne	2632
7586	Beatty	2225
7587	Beatty	874
7588	Beatty	759
7589	Esom Hill	2544
7590	Winnsboro	2340
7591	Winnsboro	407
7592	Winnsboro	2140
7593	Hawley	3022
7594	Hawley	345
7595	Hawley	1530
7596	Hawley	2605
7597	Omar	2179
7598	Hoyt Lakes	3195
7599	Omak	1874
7600	Melbourne	2189
7601	Melbourne	2462
7602	Melbourne	179
7603	Melbourne	1633
7604	Melbourne	2499
7605	Arkinda	833
7606	Bomarton	756
7607	Fordoche	2578
7608	Coughran	1017
7609	Penns Grove	2628
7610	Leonidas	3195
7611	Forkville	2240
7612	Kensett	1835
7613	Kensett	1905
7614	Epes	514
7615	Custer	1636
7616	Custer	747
7617	Custer	930
7618	Custer	332
7619	Custer	1983
7620	Custer	3059
7621	Saint Marys	2958
7622	Saint Marys	2308
7623	Saint Marys	2976
7624	Saint Marys	3007
7625	Saint Marys	1521
7626	Saint Marys	2367
7627	Saint Marys	2033
7628	Saint Marys	162
7629	Ardentown	2563
7630	Bonfield	2870
7631	Kaukauna	2266
7632	Elkol	1186
7633	Fair Garden	3208
7634	Mandaree	916
7635	Palm Beach	3071
7636	Ontonagon	3072
7637	Rochester	2885
7638	Rochester	64
7639	Rochester	1179
7640	Rochester	2711
7641	Rochester	845
7642	Rochester	784
7643	Rochester	2483
7644	Rochester	2344
7645	Rochester	426
7646	Rochester	695
7647	Rochester	2663
7648	Rochester	1258
7649	Rochester	2190
7650	Rochester	1883
7651	Greenwood	3075
7652	Greenwood	804
7653	Greenwood	3128
7654	Greenwood	1116
7655	Greenwood	1826
7656	Greenwood	3181
7657	Greenwood	1264
7658	Greenwood	306
7659	Greenwood	91
7660	Greenwood	2327
7661	Greenwood	3061
7662	Greenwood	1887
7663	Greenwood	1816
7664	Greenwood	3192
7665	Greenwood	2268
7666	Mount Croghan	1616
7667	Sweet Air	1498
7668	Glandorf	2756
7669	Cypress Inn	2601
7670	Grantsville	1276
7671	Grantsville	1622
7672	Grantsville	310
7673	Halley	1661
7674	Slocum	1395
7675	Tokeland	1306
7676	Warrensville Heights	708
7677	Sweeny	1984
7678	Pine Log	902
7679	Pine Log	609
7680	Boligee	559
7681	Breinigsville	1372
7682	Ossipee	1509
7683	El Cajon	2381
7684	Welty	87
7685	Verret	2298
7686	Haywood City	2244
7687	Maydelle	429
7688	Sans Souci	2031
7689	Sweetwater	1705
7690	Sweetwater	1009
7691	Sweetwater	2687
7692	Sweetwater	3269
7693	Sweetwater	1880
7694	Sweetwater	2346
7695	Julian	710
7696	Julian	283
7697	Julian	393
7698	Julian	2381
7699	Tasco	1224
7700	Beecher City	1742
7701	Schulte	887
7702	Combine	2361
7703	Clairette	1545
7704	Hybart	2349
7705	Esofea	226
7706	Rome City	3229
7707	Farber	2945
7708	Arbuckle	1803
7709	Bairdford	2632
7710	Cape Yakataga	3172
7711	Hazel	901
7712	Hazel	1426
7713	Hazen	2008
7714	Hazen	3012
7715	Hazen	1589
7716	Hazen	523
7717	Schultz	1521
7718	Heidlersburg	1298
7719	Widener	2980
7720	Moxley	1007
7721	Susan	1802
7722	Millry	470
7723	Lakota	1598
7724	Lakota	3217
7725	Lakota	273
7726	Embden	3180
7727	Dennis Port	1162
7728	Davis City	2484
7729	Madison Heights	2663
7730	Madison Heights	1945
7731	Wickersham	1983
7732	Round Lake Park	1326
7733	Beyerville	1361
7734	Longmeadow	542
7735	Deeson	1565
7736	Big Point	1822
7737	Welsh	3069
7738	Cumming	1981
7739	Cumming	2308
7740	De Kalb	2813
7741	De Kalb	3247
7742	De Kalb	826
7743	Parkers	375
7744	The Colony	2660
7745	The Colony	2452
7746	New Freeport	561
7747	Old Shawneetown	578
7748	Guadalupita	3190
7749	Foster	943
7750	Foster	2724
7751	Foster	1927
7752	Foster	1710
7753	Foster	1067
7754	Foster	2303
7755	Foster	1879
7756	Masontown	1961
7757	Masontown	2574
7758	Croydon	2634
7759	Selden	940
7760	Selden	1224
7761	Saint Michael	717
7762	Saint Michael	3032
7763	Saint Michael	2291
7764	Morstein	90
7765	Hi-Nella	2977
7766	Streetsboro	1637
7767	Cottonport	1975
7768	Eagletown	229
7769	Abell	3094
7770	Eakly	307
7771	Grayville	1650
7772	Appleton City	919
7773	Animas	1352
7774	Animas	2087
7775	Albia	2354
7776	Johnsonville	1588
7777	Johnsonville	2610
7778	Johnson Siding	907
7779	Coon Rapids	2224
7780	Coon Rapids	1260
7781	Omer	3173
7782	Furman	1606
7783	Espino	1375
7784	Braggs	2731
7785	Cos Cob	408
7786	McGehee	1661
7787	Prunedale	2955
7788	Petersville	605
7789	Petersville	150
7790	Petersville	2532
7791	Swedesburg	1106
7792	Albin	264
7793	Albin	3147
7794	Lake Winola	1029
7795	Sedan	507
7796	Sedan	2644
7797	Sedan	3113
7798	Sedan	579
7799	Fort Lupton	1101
7800	Satsop	2499
7801	Huntley	356
7802	Huntley	3192
7803	Huntley	2830
7804	Huntley	332
7805	Huntley	1897
7806	Hammersley Fork	2902
7807	Ulmer	1687
7808	Metaline Falls	1031
7809	Magnolia Beach	1279
7810	Magnolia Beach	3217
7811	Redding	2883
7812	Redding	2700
7813	Steep Falls	79
7814	Gibson Island	2440
7815	WaipiÊ»o	1878
7816	Navajo	3150
7817	Wolfeboro	2227
7818	Southaven	871
7819	Royal City	1125
7820	Marmet	1467
7821	Somerton	2113
7822	Somerton	1591
7823	Smicksburg	2147
7824	Cripple Creek	2404
7825	Cripple Creek	277
7826	River Edge	1572
7827	Varina	1244
7828	Mansfield Center	1317
7829	Paintertown	2385
7830	Pocomoke City	1759
7831	Powderville	210
7832	Los Villareales	166
7833	Mineral Point	3080
7834	Mineral Point	475
7835	Falcon Lake Estates	2781
7836	Gila Bend	3086
7837	Tangier	3027
7838	Gatliff	1305
7839	Hohenwald	2530
7840	Suffern	2960
7841	Mont Clare	647
7842	Mont Clare	731
7843	Martelle	3019
7844	Whitewright	3261
7845	Jupiter Island	2212
7846	Tehama	3186
7847	Jamul	2381
7848	Good Thunder	1444
7849	Cumberland Hill	929
7850	Grambling	1202
7851	Elkin	2707
7852	Quebrada Comunidad	1249
7853	Rantoul	2133
7854	Rantoul	519
7855	West Forks	130
7856	Iatan	1477
7857	Iatan	1851
7858	Burgaw	451
7859	MÄÊ»ili	1878
7860	Pretty Prairie	3201
7861	Blanding	2932
7862	Redford	2160
7863	Redford	2895
7864	Blocher	2241
7865	Russell City	1556
7866	Perdido Beach	1988
7867	Pen Argyl	314
7868	Terreton	1008
7869	White House	2491
7870	Ibapah	1622
7871	Point of Rocks	3093
7872	Point of Rocks	3153
7873	Robbin	2857
7874	Model	205
7875	Peshawbestown	2787
7876	Franklinton	488
7877	Franklinton	2120
7878	Moyock	1259
7879	Pahrump	874
7880	Norman Park	1105
7881	Bellflower	2283
7882	Bellflower	404
7883	Bellflower	736
7884	Towson	1498
7885	Red Cliff	3109
7886	Red Cliff	2974
7887	Sayre	416
7888	Sayre	3269
7889	White Bear Beach	654
7890	North Las Vegas	2329
7891	Idledale	992
7892	Allenwood	504
7893	Allenwood	278
7894	Central	1462
7895	Central	2559
7896	Central	3125
7897	Central	1381
7898	Central	367
7899	Central	618
7900	Central	2013
7901	Central	472
7902	North Manchester	1245
7903	Mobridge	1093
7904	Fountain Hills	3086
7905	Mount Dora	1331
7906	Mount Dora	507
7907	Belmont Estates	2084
7908	Salt Rock	1979
7909	Hernando Beach	3274
7910	Albee	1121
7911	Seven Mile Ford	2410
7912	Jacobsburg	1591
7913	Port Deposit	652
7914	Kinsley	1651
7915	Ventura	3221
7916	Ventura	1596
7917	Nordheim	2732
7918	Blue Mounds	749
7919	East McKeesport	2632
7920	Blanford	1095
7921	Grindstone	2574
7922	Kaw City	1366
7923	Shelburn	1947
7924	Shelburn	2747
7925	Eek	2260
7926	Mount Plymouth	1331
7927	Pegram	527
7928	Pegram	1632
7929	West Brownsville	483
7930	Redings Mill	1234
7931	Nessen City	180
7932	Adak	1974
7933	Yankee Hill	766
7934	Yankee Hill	1138
7935	Rickreall	2538
7936	Shoreacres	145
7937	Marion Center	2147
7938	Catahoula	1623
7939	Platter	70
7940	Shattuck	824
7941	Novinger	1386
7942	Farthing	264
7943	Pomaria	1657
7944	Tiawah	2831
7945	Goldman	865
7946	Rembrandt	719
7947	Wyocena	1078
7948	Waite Hill	1328
7949	Bryn Athyn	731
7950	Hagerman	1336
7951	Hagerman	1490
7952	Gringo	1883
7953	Hawaiian Gardens	404
7954	Claude	774
7955	Saint Vincent	2857
7956	Harbison Canyon	2381
7957	Sand Pass	2332
7958	Ruthven	3202
7959	Lucama	2936
7960	Grier City	2826
7961	Jacksonwald	362
7962	Due West	1944
7963	MÄkena	2438
7964	Penwell	928
7965	South Weldon	795
7966	Hazel Green	761
7967	Hazel Green	2048
7968	Hazel Green	1131
7969	Hazel Green	203
7970	East Trenton Heights	2009
7971	Hessmer	1975
7972	Atchison	3259
7973	Egeland	801
7974	Orbisonia	2550
7975	New Laguna	1769
7976	Chewalla	1647
7977	West Conshohocken	731
7978	Sonora	339
7979	Sonora	1914
7980	Sonora	2798
7981	Sonora	2392
7982	Grimsley	1036
7983	Mitchellsville	105
7984	Jarratt	3244
7985	Tafton	1177
7986	HalaÊ»ula	1488
7987	Chalco	1014
7988	Limaville	238
7989	Fonde	1959
7990	Shiocton	2266
7991	WelokÄ	1488
7992	Fonda	724
7993	Fonda	1244
7994	Paramount	404
7995	Lochiel	1361
7996	Taylors Island	2508
7997	North Belle Vernon	2385
7998	Robinsonville	2658
7999	Norfleet	1207
8000	Dukes	500
8001	Hernando	799
8002	Hernando	871
8003	Millersview	2699
8004	Venturia	1041
8005	Condon	3149
8006	Condon	497
8007	Condon	942
8008	Addy	657
8009	England	1585
8010	Horn Lake	871
8011	Barboursville	1979
8012	Dunlay	827
8013	Rancho Calaveras	3144
8014	Barrackville	686
8015	Emmaus	1372
8016	Cedar	1602
8017	Cedar	2787
8018	Cedar	1778
8019	Cedar	1260
8020	Sherando	1261
8021	McCloud	337
8022	Cobalt	2891
8023	Ballinger	376
8024	Calpella	1053
8025	Freedom Station	1637
8026	Kevil	1875
8027	Greasy	1385
8028	Olney Springs	1167
8029	Auke Bay	234
8030	Hibbard	3161
8031	Jarales	3272
8032	Carrizales Comunidad	2992
8033	Rinard	2610
8034	Rinard	1277
8035	North Amity	2201
8036	Hassell	2210
8037	Alder	1925
8038	Alder	2043
8039	Olaton	2780
8040	Verdunville	2179
8041	Evanston	231
8042	Evanston	761
8043	Alden	1713
8044	Alden	2749
8045	Alden	1855
8046	Alden	1510
8047	Alden	2387
8048	Alden	307
8049	Dagmar	1223
8050	Hopewell	2954
8051	Hopewell	184
8052	Hopewell	2009
8053	Hopewell	2295
8054	Hopewell	2466
8055	Hopewell	336
8056	Hopewell	1695
8057	Parkersburg	782
8058	Parkersburg	1670
8059	Parkersburg	2337
8060	Blue Ridge Summit	2135
8061	Double Bayou	1343
8062	Wasson	105
8063	Gurabo Zona Urbana	696
8064	Ensor	437
8065	Barracks	2829
8066	Epps	1894
8067	Hackamore	1771
8068	Rockville	2082
8069	Rockville	2791
8070	Rockville	1214
8071	Rockville	905
8072	Rockville	1709
8073	Rockville	1317
8074	Rockville	1067
8075	Rockville	740
8076	Rockville	2618
8077	Rockville	472
8078	Quebeck	1906
8079	Hennepin	2754
8080	Hennepin	1879
8081	Kevin	2866
8082	Aden	1242
8083	Dunlap	2075
8084	Dunlap	616
8085	Dunlap	2879
8086	Dunlap	2456
8087	Dunlap	1440
8088	Dunlap	3145
8089	Dunlap	2579
8090	Little Meadows	3015
8091	East Portal	3055
8092	Adel	522
8093	Adel	1321
8094	Adel	2334
8095	Adel	763
8096	Middlesex	94
8097	Middlesex	3187
8098	Gualala	1053
8099	Kennebunkport	850
8100	Donnybrook	1551
8101	Surrey	1551
8102	Snohomish	99
8103	Indian Beach	1182
8104	Ephrata	1125
8105	Ephrata	1139
8106	Soledad	2955
8107	Hisle	1813
8108	Suwanee	3272
8109	Suwanee	1373
8110	Standrod	1421
8111	Starkville	951
8112	Starkville	205
8113	Angeles	1781
8114	Titusville	3031
8115	Titusville	2189
8116	Titusville	1417
8117	Elmer	3159
8118	Elmer	3195
8119	Elmer	2628
8120	Elmer	1811
8121	Bonner Springs	1312
8122	Weona	1499
8123	Shoreham	1767
8124	Shoreham	940
8125	Waterford Works	2977
8126	Red Rock	1914
8127	Red Rock	358
8128	Red Rock	3230
8129	Red Rock	2331
8130	Wiscon	3274
8131	Kinard	1282
8132	Buckhorn	1844
8133	Buckhorn	1128
8134	Buckhorn	1079
8135	Buckhorn	2253
8136	El Combate Comunidad	1682
8137	North Mankato	554
8138	Kelton	90
8139	Somerset	1245
8140	Somerset	1845
8141	Somerset	131
8142	Somerset	649
8143	Somerset	129
8144	Somerset	549
8145	Somerset	1083
8146	Somerset	740
8147	Somerset	372
8148	Somerset	597
8149	Morongo Valley	721
8150	Mira Monte	3221
8151	Isle Au Haut	585
8152	Wellford	3162
8153	Hackensack	1572
8154	Hackensack	3179
8155	Kennedale	3084
8156	North Park	2691
8157	Reinerton	2826
8158	Kirkpatrick	1544
8159	Firebaugh	937
8160	Burdock	124
8161	Hydaburg	1345
8162	Woodfield	740
8163	Woodfield	1675
8164	Williamstown	998
8165	Williamstown	1120
8166	Williamstown	1369
8167	Williamstown	2337
8168	Williamstown	3136
8169	Williamstown	2626
8170	Williamstown	2672
8171	Summerfield	710
8172	Summerfield	570
8173	Summerfield	3231
8174	Summerfield	918
8175	Summerfield	1457
8176	Summerfield	682
8177	Summerfield	2471
8178	Vashon	3217
8179	Skidmore	2440
8180	Skidmore	981
8181	Skidmore	2810
8182	Shoup	2891
8183	Wykoff	700
8184	Juliustown	2841
8185	North East	652
8186	North East	1512
8187	Imperial	2632
8188	Imperial	153
8189	Imperial	1693
8190	Imperial	993
8191	Imperial	933
8192	Hamorton	90
8193	Palmer Comunidad	1676
8194	Felixville	1862
8195	Mattson	161
8196	Donora	483
8197	Lomax	2654
8198	Lomax	126
8199	Eli	1022
8200	Eli	2016
8201	Elk	1336
8202	Elk	1053
8203	Kittery Point	850
8204	Del Dios	2381
8205	La Presa	2381
8206	La Presa	817
8207	Artesia Wells	2973
8208	Pamlico Beach	438
8209	New Territory	1890
8210	Ely	3195
8211	Ely	1401
8212	Ely	944
8213	Trinidad	2652
8214	Trinidad	319
8215	Trinidad	205
8216	Moro Bay	1694
8217	Omro	2690
8218	Short	1140
8219	Elfin Cove	207
8220	Aldan	2809
8221	Prairie Ridge	1925
8222	Strum	854
8223	East Patchogue	940
8224	Mainville	1079
8225	Round Prairie	2649
8226	Juana DÃ­az Zona Urbana	846
8227	Saint Bonaventure	1370
8228	South Houston	145
8229	Caulksville	2187
8230	CÃ©sar ChÃ¡vez	1353
8231	Farmers Branch	525
8232	Elsberry	1201
8233	Sun River	2334
8234	Hackberry	1831
8235	Hackberry	2452
8236	Hackberry	829
8237	Cankton	2967
8238	Hardaway	2441
8239	Hardaway	3156
8240	Flournoy	306
8241	Flournoy	3186
8242	Loman	296
8243	Adin	1771
8244	La Vina	1563
8245	Yellow Pine	470
8246	Yellow Pine	3167
8247	South Dennis	1162
8248	Gloria Glens Park	828
8249	Vado	1242
8250	Lomas	396
8251	Mount Bethel	394
8252	Mount Bethel	129
8253	Bethalto	2054
8254	Wixon Valley	1626
8255	Pilottown	2473
8256	Chivington	1991
8257	Broadway	2094
8258	Broadway	2306
8259	Broadway	510
8260	Broadway	2084
8261	Withrow	2822
8262	Exeter Corners	392
8263	Cathay	2916
8264	Wellesley	2618
8265	Cowlington	2263
8266	Meridean	2969
8267	Colorado	150
8268	La Habra	3140
8269	Brainards	2306
8270	Star Cross	2626
8271	Crider	2855
8272	Abbotsford	2327
8273	Charles Town	991
8274	Oro Grande	721
8275	Bajadero	2087
8276	South Glens Falls	1484
8277	Moorhead	3000
8278	Moorhead	210
8279	Moorhead	1088
8280	Moorhead	1530
8281	Taneytown	2232
8282	Embarrass	3195
8283	Embarrass	279
8284	Vernon	2164
8285	Vernon	2622
8286	Vernon	3238
8287	Vernon	2451
8288	Vernon	2112
8289	Vernon	482
8290	Vernon	3025
8291	Vernon	1827
8292	Vernon	1889
8293	Vernon	404
8294	Vernon	892
8295	Vernon	690
8296	Vernon	1622
8297	Vernon	932
8298	Vernon	2347
8299	Mulliken	2764
8300	Kaibab	829
8301	Neptune Beach	1599
8302	Mer Rouge	2730
8303	Dardenne Prairie	1082
8304	Summer Haven	223
8305	Fisher Island	1705
8306	Wyarno	1225
8307	Lawson Heights	2385
8308	Mehlville	3196
8309	Sandy Level	1115
8310	Dumas	327
8311	Dumas	1648
8312	Dumas	1661
8313	South Lockport	2910
8314	Rondout	1326
8315	Dupree	1918
8316	Funston	3022
8317	Funston	1105
8318	Funston	1311
8319	Battle Mountain	2720
8320	North Hanover	1936
8321	Vail	2974
8322	Vail	1408
8323	Vail	2190
8324	Vail	1247
8325	East Lake Weir	682
8326	Commerce	1732
8327	Commerce	3215
8328	Commerce	2663
8329	Commerce	404
8330	Commerce	1829
8331	Commerce	2244
8332	Ouachita	524
8333	Ephraim	1035
8334	Ephraim	1708
8335	Lake Seneca	378
8336	Meeks Bay	1594
8337	Gulfcrest	1301
8338	Ironton	1865
8339	Ironton	429
8340	Ironton	704
8341	Ironton	541
8342	Ironton	1344
8343	Ironton	537
8344	Vevay	2856
8345	Villano Beach	223
8346	Shirley	1967
8347	Shirley	940
8348	Shirley	475
8349	Shirley	2431
8350	Shirley	95
8351	Shirley	3060
8352	Kalaloch	989
8353	Vair	316
8354	Winnabow	2395
8355	Monkton	1498
8356	Dixboro	2281
8357	Nelson	2686
8358	Nelson	107
8359	Nelson	2329
8360	Nelson	2178
8361	Nelson	885
8362	Nelson	2819
8363	Nelson	2098
8364	Nelson	368
8365	Nelson	2495
8366	Nelson	2206
8367	Copake Falls	1073
8368	Gouglersville	362
8369	Willisville	1842
8370	Willisville	1783
8371	Nuangola	2641
8372	Cedarpines Park	721
8373	Adna	2533
8374	Oasis	2152
8375	Oasis	3210
8376	Oasis	108
8377	Oasis	170
8378	Kreamer	2163
8379	Skwentna	150
8380	La Monte	2860
8381	Rushville	2813
8382	Rushville	406
8383	Rushville	1227
8384	Rushville	2738
8385	Rushville	1575
8386	Rushville	2514
8387	Herring	1741
8388	Riddle	2814
8389	Riddle	982
8390	Era	2161
8391	Salt Fork	1119
8392	Lake Jackson	1984
8393	Mars Hill	2041
8394	Mars Hill	2201
8395	Whiteface	3249
8396	De Land	1995
8397	Placerville	3171
8398	Placerville	1594
8399	Placerville	1040
8400	Plummer	3083
8401	Plummer	569
8402	Mohall	221
8403	Alleghenyville	362
8404	Diboll	1859
8405	Farmington Hills	2663
8406	Hawarden	2926
8407	Holy Cross	1462
8408	Holy Cross	1931
8409	Aripine	3161
8410	East Wenatchee	2822
8411	Wagstaff	669
8412	Sunny South	409
8413	West Ishpeming	1058
8414	Cogswell	3010
8415	Wardville	2730
8416	Wardville	711
8417	Friedensburg	2826
8418	Volant	540
8419	Grant Park	2870
8420	Conehatta	1229
8421	New Miami	785
8422	Norias	196
8423	Pickrell	3206
8424	Shark River Hills	278
8425	Glade	1558
8426	Kitsap Lake	1048
8427	Chevy Chase Village	740
8428	Cotesfield	262
8429	Longford	1531
8430	Stottville	1073
8431	Deport	893
8432	Kaka	3086
8433	Kennett Square	90
8434	Gracewood	3091
8435	Hermansville	544
8436	Hanceville	2660
8437	Scenic Oaks	1083
8438	Kake	1345
8439	New Lebanon	2010
8440	New Lebanon	737
8441	Weott	319
8442	Sprott	1846
8443	Brooksburg	984
8444	Town Line	1510
8445	Fairless Hills	2634
8446	Ticonderoga	2742
8447	Northampton	940
8448	Northampton	2922
8449	Northampton	314
8450	Lilymoor	3192
8451	Chugcreek	1849
8452	Naranja	1705
8453	Vamo	1236
8454	Green Mountain	2462
8455	McDaniels	930
8456	New Oxford	1298
8457	Glady	2678
8458	Red Bud	2680
8459	Turtle Lake	2315
8460	Turtle Lake	2282
8461	Turtle Lake	1322
8462	Kane	564
8463	Kane	2723
8464	Kane	1217
8465	Bradshaw	2379
8466	Bradshaw	1061
8467	Bradshaw	852
8468	Hodge	721
8469	Hodge	1827
8470	San Juan Pueblo	2725
8471	Intake	2996
8472	Sprout	1348
8473	Crossville	77
8474	Crossville	1907
8475	Crossville	1752
8476	East Montpelier	464
8477	Burnt Corn	3270
8478	Wilmore	2513
8479	Wilmore	3032
8480	Wilmore	202
8481	Owasso	2906
8482	Tenney	627
8483	Barnegat	2627
8484	Hansen	1402
8485	Hansen	1297
8486	Deposit	1153
8487	Central Garage	1735
8488	Somers	1761
8489	Somers	1317
8490	Somers	2582
8491	Somers	1277
8492	Robeline	2991
8493	Bear Creek Village	2641
8494	Schall Circle	3071
8495	Meansville	1174
8496	Boothwyn	2809
8497	Villalba Zona Urbana	360
8498	Bozeman	579
8499	Otter Lake	3188
8500	Pine Manor	2101
8501	Vale	764
8502	Vale	1310
8503	Hackleburg	683
8504	Shouns	1267
8505	Silver Lakes	721
8506	Jenkins	704
8507	Jenkins	3133
8508	Jenkins	624
8509	Eva	1642
8510	Eva	2272
8511	Eva	119
8512	Eva	2545
8513	Eva	1680
8514	Horizon City	3227
8515	West Topsham	3136
8516	Wheelersburg	3256
8517	Shorewood	904
8518	Shorewood	91
8519	Shorewood	875
8520	Carmichael	2701
8521	Carmichael	2688
8522	Youngtown	3086
8523	River View Park	362
8524	Sawyerwood	1725
8525	North Bergen	2587
8526	Dewey-Humboldt	2495
8527	High Rock	99
8528	High Rock	2759
8529	White Pines	3144
8530	Galatia	105
8531	Galatia	613
8532	Kennedyville	217
8533	Bastrop	2730
8534	Bastrop	358
8535	Picayune	136
8536	Dresden	2486
8537	Dresden	338
8538	Dresden	2860
8539	Dresden	2460
8540	Dresden	1575
8541	Elizabethton	2559
8542	Kershaw	1137
8543	San Pablo	2068
8544	San Pablo	1242
8545	San Pablo	3143
8546	Eatons Neck	940
8547	Pulaski	374
8548	Pulaski	370
8549	Pulaski	655
8550	Pulaski	378
8551	Pulaski	639
8552	Pulaski	2874
8553	Pulaski	2240
8554	Pulaski	1365
8555	Pulaski	1262
8556	Cannelton	1840
8557	South Riding	3118
8558	Cape Pole	1345
8559	Vanndale	2482
8560	Luella	1113
8561	Luella	3261
8562	Lometa	3245
8563	Valley Hill	2651
8564	Vortex	203
8565	Hillside Manor	101
8566	Albert Lea	1713
8567	Midwest City	958
8568	Battles	2609
8569	Cherryland	1556
8570	Schubert	362
8571	Arvin	263
8572	West Park	2729
8573	West Park	937
8574	Ricardo	1689
8575	Saguache	384
8576	Rentiesville	1042
8577	North Massapequa	101
8578	Newtonville	2573
8579	Mountain Valley	670
8580	Mountain Valley	2446
8581	Penelope	452
8582	Tigard	465
8583	East Alton	2054
8584	Northwest	2395
8585	MarueÃ±o	459
8586	Escalon	590
8587	Chelatchie	2326
8588	Parker City	2679
8589	Bradleyville	753
8590	Green Tree	2632
8591	Berenda	1563
8592	Eastman	1416
8593	Eastman	954
8594	Pilgrim	180
8595	Glen Saint Mary	1470
8596	Cleaton	1216
8597	Mundys Corner	3032
8598	Adelanto	721
8599	Lees Camp	717
8600	Fort Loudon	2135
8601	Bentleyville	483
8602	Bentleyville	708
8603	Redland	1804
8604	Redland	740
8605	Hanska	637
8606	Timbo	2664
8607	Oakbrook Terrace	950
8608	Swisher	1263
8609	Remer	3179
8610	Timberville	2084
8611	Clyattville	3067
8612	Round Lake Beach	1326
8613	Cleator	2495
8614	Wapiti	1747
8615	North Haledon	792
8616	Bellows Falls	3097
8617	Southgate	1236
8618	Southgate	2606
8619	Southgate	179
8620	Ocean Bluff	1936
8621	Texas Creek	969
8622	Brunsville	1935
8623	Rockypoint	177
8624	Paincourtville	771
8625	Humphrey	1850
8626	Humphrey	2623
8627	Humphrey	2328
8628	Fossil	963
8629	Palos Park	761
8630	Amherst Center	2922
8631	Wilmont	1090
8632	Severance	2028
8633	Severance	1101
8634	Wabasso Beach	2114
8635	Lauderhill	2729
8636	Sand Coulee	2334
8637	Angelus	1224
8638	Port Chilkoot	1963
8639	Little Sauk	2649
8640	Luverne	84
8641	Luverne	2489
8642	Luverne	838
8643	Lynndyl	2152
8644	Cutten	319
8645	Aniwa	2827
8646	Bunker Hill Village	145
8647	Clarenceville	2663
8648	Gas City	1118
8649	Vass	326
8650	Neshaminy	2634
8651	Cutter	170
8652	Cutter	2920
8653	Woodall	430
8654	Dougherty	269
8655	Dougherty	2194
8656	Dougherty	1596
8657	Manassas Park	3243
8658	Plantation Mobile Home Park	3071
8659	Lebanon Junction	843
8660	Wailuku	2438
8661	Galateo	841
8662	Diller	990
8663	Kosse	2790
8664	Thornport	1845
8665	Katy	145
8666	Dilley	2408
8667	Regent	573
8668	Ray City	1766
8669	Willowdale	983
8670	Willowdale	90
8671	Willowdale	3068
8672	Kaysville	2875
8673	Ardara	2385
8674	Huslia	1462
8675	Adolphus	444
8676	Schaffer	1798
8677	Newbury	3136
8678	Central Lake	1855
8679	Butterfield	2689
8680	Butterfield	3227
8681	Butterfield	2796
8682	Butterfield	624
8683	Fingal	2341
8684	Santa Clarita	404
8685	Elk Creek	381
8686	Elk Creek	1274
8687	Elk Creek	1940
8688	Placedo	2800
8689	Cayey	547
8690	Newburg	476
8691	Newburg	3039
8692	Newburg	1633
8693	Newburg	1961
8694	Newburg	1303
8695	Newburg	2511
8696	Newburg	83
8697	Newburg	1717
8698	Clyde	1340
8699	Clyde	816
8700	Clyde	1119
8701	Clyde	2556
8702	Clyde	1720
8703	Clyde	3143
8704	Clyde	129
8705	Clyde	2599
8706	Clyde	2810
8707	Clyde	2947
8708	Laguna Seca	1353
8709	Kerens	881
8710	Baylis	1170
8711	Cumminsville	386
8712	Newburn	3124
8713	Cumberland Furnace	2434
8714	Gunnison	1035
8715	Gunnison	1565
8716	Gunnison	549
8717	Roxboro	1960
8718	Hales Corners	904
8719	Waiteville	2353
8720	Keyapaha	922
8721	Ballville	1340
8722	Claiborne	2349
8723	Claiborne	243
8724	Claiborne	1160
8725	Fagus	783
8726	Cayce	324
8727	Cayce	2713
8728	Magas Arriba	957
8729	Henrieville	3005
8730	Lakeland Shores	480
8731	Bogue Chitto	1198
8732	Northern Cambria	3032
8733	McBee	1616
8734	Headland	1114
8735	Carol Stream	950
8736	Gallatin	429
8737	Gallatin	436
8738	Gallatin	2491
8739	Oblong	1410
8740	Orwigsburg	2826
8741	Alcoa	2421
8742	Baidland	483
8743	Quebradillas	591
8744	Little Cypress	3139
8745	Divide	2026
8746	Divide	277
8747	Kachemak City	1806
8748	Utleyville	1893
8749	Nekoma	1720
8750	Nekoma	2515
8751	Gates Center	2344
8752	Freemansburg	314
8753	Buyck	3195
8754	Lucinda	297
8755	Densmore	3033
8756	Hanson	2047
8757	Hanson	1936
8758	Hanson	3253
8759	Haaswood	2905
8760	Glen Gardner	1491
8761	Keltys	1859
8762	Hubbell	3009
8763	Hubbell	2065
8764	Vinland	2821
8765	Long Prairie	2649
8766	Frenchburg	664
8767	Siletz	1184
8768	Osterville	1162
8769	Beloit	837
8770	Beloit	1476
8771	Beloit	2839
8772	Rolling Prairie	2792
8773	Okeene	1404
8774	Collins	1393
8775	Collins	919
8776	Collins	341
8777	Collins	2576
8778	Collins	1791
8779	Collins	2581
8780	Collins	626
8781	Collins	359
8782	Prestbury	322
8783	Rexhame	1936
8784	Haugan	975
8785	Willisburg	479
8786	Willow Springs	761
8787	Willow Springs	3184
8788	Port William	2901
8789	Port William	3101
8790	Blythedale	620
8791	Beach Haven West	2627
8792	Richgrove	308
8793	Herrick	191
8794	Herrick	1868
8795	West Chester	484
8796	West Chester	90
8797	Shumway	1742
8798	Fox Point	904
8799	Plattsburgh	2895
8800	Herriman	2637
8801	Dolores	2615
8802	Lothair	3104
8803	Crescent Valley	1716
8804	Anthem	3086
8805	Texline	521
8806	Marble City	1140
8807	Belfield	236
8808	Winter Beach	2114
8809	Emory	821
8810	Emory	1726
8811	Emory	1751
8812	Emory	491
8813	Dunellen	94
8814	Cuyama	2107
8815	Apache Junction	1914
8816	Capitol Heights	2064
8817	Dixmoor	761
8818	Cecil	2845
8819	Cecil	763
8820	Cecil	2126
8821	Cecil	729
8822	Cecil	2827
8823	Cecil	483
8824	Cecil	2956
8825	Morrisdale	1300
8826	Saint Ignatius	1322
8827	Littleport	1942
8828	Woods Bay	1322
8829	Mount Carmel	2963
8830	Mount Carmel	1351
8831	Mount Carmel	2122
8832	Mount Carmel	1241
8833	Mount Carmel	1246
8834	Mount Carmel	323
8835	Mount Carmel	3070
8836	Mount Carmel	2168
8837	Mount Carmel	1456
8838	Mount Carmel	758
8839	Finger	1647
8840	Anita	3174
8841	Anita	1000
8842	Point Lookout	101
8843	Setauket	940
8844	Tulsita	981
8845	Hillsboro	2924
8846	Hillsboro	1106
8847	Hillsboro	735
8848	Hillsboro	914
8849	Hillsboro	2894
8850	Hillsboro	3035
8851	Hillsboro	538
8852	Hillsboro	993
8853	Hillsboro	3056
8854	Hillsboro	465
8855	Hillsboro	3118
8856	Hillsboro	226
8857	Hillsboro	3045
8858	Hillsboro	768
8859	Hillsboro	170
8860	Hillsboro	452
8861	Hillsboro	361
8862	Hillsboro	681
8863	Hillsboro	2240
8864	Hillsboro	1243
8865	Porcupine	1774
8866	Porcupine	2925
8867	Butternut	382
8868	Claremont	1949
8869	Claremont	404
8870	Claremont	953
8871	Claremont	635
8872	Claremont	2708
8873	Claremont	2526
8874	Claremont	1670
8875	Maguayo	1763
8876	Culdesac	1880
8877	Fay	201
8878	Saint James City	2101
8879	Iowa Park	294
8880	Crows Bluff	1331
8881	Alcalde	2725
8882	Hillrose	113
8883	Castle Dale	1778
8884	Huxford	2668
8885	Towanda	2283
8886	Towanda	786
8887	Towanda	416
8888	Boyceville	2969
8889	Gun Club Estates	3071
8890	Verbena	126
8891	Hogeland	1403
8892	Tall Timber	2267
8893	Blue Eye	2666
8894	Blue Eye	2223
8895	San Bernardino	721
8896	Congerville	1999
8897	Starbuck	2644
8898	Starbuck	1077
8899	West Haverstraw	2960
8900	Howie In The Hills	1331
8901	Roopville	2230
8902	Clauene	97
8903	Tippett	1401
8904	Gladewater	2371
8905	Pollok	1859
8906	West Richfield	1725
8907	Combes	1832
8908	KamalÅ	2438
8909	Piggott	1534
8910	Coconut Creek	2729
8911	Centuria	2547
8912	Masury	2946
8913	Henryetta	1543
8914	Colcord	1634
8915	Colcord	2808
8916	Red Banks	2463
8917	Paisano Park Colonia	3214
8918	Tomnolen	896
8919	Glen Fork	1027
8920	Jamaica	2036
8921	Jamaica	3257
8922	Curryville	1171
8923	Chester Gap	1248
8924	Haugen	2315
8925	Klamath	1468
8926	New Falcon	2781
8927	Oquawka	2654
8928	Cameron Park Colonia	1832
8929	Terryville	940
8930	Terryville	1990
8931	Dolomite	987
8932	Manzanita	2093
8933	Manzanita	1048
8934	Glass	694
8935	Spring Grove	3192
8936	Spring Grove	2708
8937	Spring Grove	853
8938	Spring Grove	2600
8939	Spring Grove	2115
8940	Thief River Falls	908
8941	Clearlake Oaks	1330
8942	Assumption	2949
8943	Assumption	1297
8944	Cottageville	2109
8945	Cottageville	1820
8946	Plainsboro Center	94
8947	Old Bethpage	101
8948	White Bear Lake	654
8949	Bartonville	2452
8950	Bartonville	2456
8951	Rocky Mountain	1385
8952	Lead	536
8953	Birchwood	880
8954	Birchwood	480
8955	Leaf	563
8956	Neuville	189
8957	Gladwin	790
8958	Gramling	3162
8959	Eatonville	1925
8960	Eatonville	3141
8961	Rosewood	2470
8962	Rosewood	520
8963	Wickerham Manor	483
8964	Atomic City	672
8965	Hargill	1353
8966	Ebony	2396
8967	Grayridge	2092
8968	Mays Landing	2617
8969	Alum Creek	1467
8970	Conejo	937
8971	Potlatch	1360
8972	Blencoe	3000
8973	Claremore	2831
8974	State Line Village	3087
8975	Port Orange	814
8976	Willowville	1241
8977	Gerton	2651
8978	Towner	1991
8979	Towner	3191
8980	Blue Rock	338
8981	Morgan Mill	1545
8982	Ellamore	1658
8983	Verona	329
8984	Verona	251
8985	Verona	2632
8986	Verona	2029
8987	Verona	1261
8988	Verona	3238
8989	Verona	241
8990	Verona	534
8991	Verona	749
8992	Verona	2505
8993	Verona	2096
8994	Leonville	2967
8995	Cornersville	2465
8996	Cornersville	2508
8997	Curry	1407
8998	Curry	150
8999	Lebo	1054
9000	Wimbledon	2341
9001	Vanceboro	135
9002	East La Mirada	404
9003	Buxton	2937
9004	Buxton	842
9005	Buxton	3056
9006	Lame Deer	2377
9007	Webb	2117
9008	Webb	2715
9009	Webb	2607
9010	Webb	3147
9011	Webb	1537
9012	Webb	3084
9013	Dillon	818
9014	Dillon	2331
9015	Dillon	1724
9016	Osakis	2819
9017	Burleson	1266
9018	Tavistock	2977
9019	Acres Green	2815
9020	Transylvania	2747
9021	Burneyville	2476
9022	Ellis	3063
9023	Ellis	825
9024	Ellis	3206
9025	Shamokin Dam	2163
9026	Marshallton	90
9027	Marshallton	2563
9028	Chelsea	1065
9029	Chelsea	195
9030	Chelsea	1861
9031	Chelsea	2281
9032	Chelsea	941
9033	Chelsea	2831
9034	Chelsea	3136
9035	Chelsea	2944
9036	Winthrop Harbor	1326
9037	Oyster Bay	101
9038	Ogden	2809
9039	Ogden	1433
9040	Ogden	254
9041	Ogden	247
9042	Ogden	833
9043	Ogden	519
9044	Ogden	211
9045	Hager City	1926
9046	Aleneva	3101
9047	Winnett	1222
9048	Leal	2341
9049	Gwinner	3010
9050	South Vacherie	1275
9051	Cardington	2846
9052	Pomona	2960
9053	Pomona	404
9054	Pomona	3184
9055	Pomona	2617
9056	Pomona	1825
9057	Pomona	2133
9058	Pomona	217
9059	Indian Springs	2540
9060	Indian Springs	2329
9061	Indian Springs	2213
9062	Indian Springs	492
9063	Indian Springs	1087
9064	Indian Springs	785
9065	Carnero	1625
9066	Loomis	1874
9067	Loomis	1571
9068	Loomis	2289
9069	Loomis	1302
9070	Loomis	1020
9071	Covedale	2075
9072	New Lexington	1845
9073	Brownsboro	2652
9074	Hillemann	663
9075	Barnett	115
9076	Barnett	1212
9077	Wellpinit	657
9078	Lignite	781
9079	Lignite	926
9080	North Abington	1936
9081	Longbranch	1925
9082	Hialeah	1705
9083	Pasadena Park	3196
9084	Chickamaw Beach	3179
9085	Pearl City	959
9086	Pearl City	1878
9087	Tennille	490
9088	Tennille	1064
9089	West Milwaukee	904
9090	Opelousas	2967
9091	Grimes	674
9092	Grimes	1803
9093	Grimes	1741
9094	Grimes	2539
9095	Colwich	887
9096	Sylvester	1836
9097	Sylvester	246
9098	Sylvester	961
9099	Cee Vee	1440
9100	Kiana	2907
9101	Furley	887
9102	Rainbow City	1163
9103	Weedonville	1982
9104	Encampment	3036
9105	South Pottstown	90
9106	Indian Pass	2401
9107	Brook	1231
9108	Catheys Valley	1660
9109	Viboras	166
9110	Kaibito	353
9111	Quechee	2483
9112	Bay Park	101
9113	Harriet	576
9114	Bronx	2412
9115	Bronx	878
9116	Glade Spring	491
9117	Thebes	2719
9118	Lake Saint Louis	1082
9119	Machesney Park	2691
9120	Charlotte Court House	1507
9121	Lobeco	439
9122	Hanover Park	950
9123	Star Junction	2574
9124	Pastura	1459
9125	Sedgwick	539
9126	Sedgwick	886
9127	Sedgwick	3123
9128	Jones Point	2960
9129	Patrick	2332
9130	Patrick	1616
9131	Royal Lakes	712
9132	Pampa	3073
9133	Bryceland	1762
9134	Tate City	2735
9135	Manannah	2695
9136	Asheville	2270
9137	Opelika	2102
9138	Mohawk	2113
9139	Mohawk	3125
9140	Mohawk	1597
9141	Levelock	2011
9142	Charleston	772
9143	Charleston	2126
9144	Charleston	1796
9145	Charleston	2943
9146	Charleston	2095
9147	Charleston	3074
9148	Charleston	939
9149	Charleston	1792
9150	Charleston	905
9151	Charleston	108
9152	Charleston	1467
9153	Charleston	3147
9154	Charleston	1695
9155	York Haven	853
9156	Hennessey	1501
9157	Diehlstadt	2244
9158	Orland Hills	761
9159	Copperhill	2541
9160	Two Buttes	1893
9161	Monserrate	1996
9162	Parchment	419
9163	Swannanoa	2270
9164	Kalskag	2260
9165	Edcouch	1353
9166	Sheboygan	915
9167	Dundarrach	1895
9168	Sykesville	1000
9169	Sykesville	2232
9170	Tolchester	217
9171	Parole	2440
9172	Riverbank	1941
9173	Brenas	707
9174	Ansonville	1383
9175	Auxier	270
9176	Ector	630
9177	Olympia	2190
9178	Olympia	2375
9179	Weed	344
9180	Weed	337
9181	Ocean Beach	940
9182	Lake Beulah	1094
9183	Bloomer	660
9184	Delleker	3011
9185	Bothwell	1421
9186	Apache	307
9187	Jalapa	1118
9188	Westgate	2565
9189	Tall Timbers	2580
9190	Waldenburg	1499
9191	Sylvan Hills	375
9192	Woodston	2982
9193	Ville Platte	62
9194	Hissop	1929
9195	Plattsburg	2899
9196	Penns Creek	2163
9197	Asbury	3044
9198	Asbury	2306
9199	Asbury	2836
9200	Asbury	1931
9201	McGill	1401
9202	Aledo	931
9203	Aledo	2004
9204	Brenda	2638
9205	Williamsdale	785
9206	Lehr	1041
9207	Flo	1208
9208	Ormsby	2211
9209	West Rancho Dominguez	404
9210	Pick City	2008
9211	Wapanucka	1166
9212	Stafford Springs	3040
9213	Stafford Springs	1317
9214	Kivalina	2907
9215	WaipiÊ»o Acres	1878
9216	North Billerica	95
9217	Somerville	2568
9218	Somerville	3115
9219	Somerville	95
9220	Somerville	820
9221	Somerville	129
9222	Somerville	119
9223	Somerville	785
9224	Lowden	64
9225	Fremont	1556
9226	Fremont	1340
9227	Fremont	2882
9228	Fremont	2561
9229	Fremont	956
9230	Fremont	2598
9231	Fremont	2603
9232	Fremont	279
9233	Fremont	2886
9234	Fremont	2669
9235	Sulphur Bluff	3252
9236	Ehrenfeld	3032
9237	Jefferson	677
9238	Jefferson	853
9239	Jefferson	1616
9240	Jefferson	1872
9241	Jefferson	1748
9242	Jefferson	1829
9243	Jefferson	2626
9244	Jefferson	1005
9245	Jefferson	562
9246	Jefferson	1119
9247	Jefferson	499
9248	Jefferson	994
9249	Jefferson	689
9250	Jefferson	988
9251	Jefferson	3153
9252	Jefferson	2405
9253	Jefferson	462
9254	Jefferson	728
9255	Jefferson	1467
9256	Hedgesville	172
9257	Hedgesville	1722
9258	Bieber	2799
9259	Lake Belvedere Estates	3071
9260	Geigertown	362
9261	South Wilson	2910
9262	Hotevilla-Bacavi	3161
9263	Oakview	1541
9264	Rush Center	2515
9265	East Aurora	1510
9266	Heyworth	2283
9267	Weslaco	1353
9268	Madawaska	2201
9269	Trego	880
9270	Trego	1104
9271	Trego	1185
9272	Northway Village	1561
9273	Bird City	1611
9274	North Platte	1196
9275	Lehi	705
9276	Cross Mountain	1083
9277	Keuka	2887
9278	Moiese	1322
9279	Landrum	3162
9280	Wyoming	1028
9281	Wyoming	2075
9282	Wyoming	2641
9283	Wyoming	2021
9284	Wyoming	478
9285	Wyoming	216
9286	Wyoming	237
9287	Wyoming	3019
9288	Wyoming	219
9289	Wyoming	923
9290	Conashaugh Lakes	1177
9291	Sawyers Bar	337
9292	Tatum	2501
9293	Tatum	2888
9294	Tatum	2089
9295	Madill	2467
9296	Cofield	1439
9297	La Moille	1704
9298	Peralta	3272
9299	Catasauqua	1372
9300	Brokaw	628
9301	Amazonia	610
9302	Wilsall	1749
9303	Sedro-Woolley	1422
9304	Oak Ridge	710
9305	Oak Ridge	1396
9306	Oak Ridge	2619
9307	Oak Ridge	3141
9308	Oak Ridge	2730
9309	Oak Ridge	2361
9310	Oak Ridge	792
9311	Pigeon River	762
9312	West Nyack	2960
9313	Lenhartsville	362
9314	Tega Cay	851
9315	Hillhouse	161
9316	Fox	877
9317	Fox	209
9318	Fox	2664
9319	Fox	2560
9320	Fox	1117
9321	Pueblito	2725
9322	Graves	1209
9323	Haynesville	3092
9324	Haynesville	570
9325	Haynesville	294
9326	Tuxedo Park	3137
9327	Isanti	1084
9328	Robstown	819
9329	Sunflower	3086
9330	Sunflower	1088
9331	Weir	121
9332	Weir	432
9333	Weir	896
9334	Weir	1216
9335	Holland Patent	3238
9336	Holyoke	780
9337	Holyoke	542
9338	Holyoke	1560
9339	Lely	832
9340	Endicott	1464
9341	Endicott	990
9342	Endicott	1153
9343	Malcolm	470
9344	Malcolm	1138
9345	Crozier	829
9346	Olympia Fields	761
9347	Walsenburg	2961
9348	Washtucna	1294
9349	Vilano Beach	223
9350	Lyndon Station	235
9351	Leona Valley	404
9352	Culberson	427
9353	Granite	139
9354	Granite	2637
9355	Granite	1498
9356	Granite	2676
9357	Granite	1117
9358	Granite	2365
9359	Dongola	508
9360	Sherard	161
9361	Sheridan Lake	1991
9362	Pequop	108
9363	Ramona	468
9364	Ramona	681
9365	Ramona	1327
9366	Ramona	2381
9367	Candelaria Arenas Comunidad	1334
9368	Grossmont	2381
9369	Tallulah	2056
9370	Weddington	494
9371	Oakhaven	1586
9372	Kenyon	1997
9373	Holts Summit	2551
9374	Hookdale	3127
9375	East Uniontown	2574
9376	Klossner	554
9377	Speed	1558
9378	Speed	1098
9379	Shawhan	1570
9380	Boise City	2199
9381	Flanders	2877
9382	Flanders	940
9383	Perkins	181
9384	Perkins	364
9385	Perkins	1798
9386	Perkins	343
9387	Lecompton	2821
9388	Birch Creek	1462
9389	Lela	965
9390	Holcomb	255
9391	Holcomb	1546
9392	Holcomb	1086
9393	Holcomb	357
9394	Troxelville	2163
9395	Hazel Dell	2326
9396	Hazel Dell	78
9397	Centennial	2362
9398	Centennial	923
9399	Beach Haven	2627
9400	Ferry	781
9401	Auberry	937
9402	Milroy	2514
9403	Milroy	1250
9404	Milroy	2474
9405	Speer	895
9406	Ruskin	868
9407	Ruskin	885
9408	Stoner	2615
9409	Laurel Bay	439
9410	Griswold	3174
9411	Marineland	1696
9412	Hyannis	1126
9413	Hyannis	1162
9414	Crooked Creek	2260
9415	Lenz	3264
9416	Mammoth Lakes	3160
9417	Palos Heights	761
9418	Emmorton	2959
9419	Mar-Mac	2598
9420	Salt Point	3031
9421	Port Moller	1145
9422	Kanorado	2080
9423	Everetts	2210
9424	Lowndesville	1944
9425	Bruceton	2221
9426	Orlinda	751
9427	Zapata Ranch	1141
9428	Joanna	362
9429	Joanna	947
9430	Clarks	2851
9431	Clarks	1333
9432	Basinger	676
9433	Mount Healthy	2075
9434	Lorenz Park	1073
9435	Leon	743
9436	Leon	2484
9437	Leon	786
9438	Leon	2476
9439	Montegut	910
9440	Martins Mill	1804
9441	Ellwood City	540
9442	PeÃ±a Pobre	1619
9443	Barstow	721
9444	Barstow	1552
9445	Barstow	1150
9446	Campobello	3162
9447	Jesmond Dene	2381
9448	Toboso	3255
9449	Oakboro	102
9450	Lena	959
9451	Lena	1932
9452	Lena	2776
9453	Lena	2402
9454	Afton	650
9455	Afton	1242
9456	Afton	1186
9457	Afton	1732
9458	Afton	480
9459	Afton	505
9460	Afton	721
9461	Sageville	1931
9462	Willards	2067
9463	Petroleum	1367
9464	Pamplin	2218
9465	Sheridan	1786
9466	Sheridan	206
9467	Sheridan	2289
9468	Sheridan	2362
9469	Sheridan	1837
9470	Sheridan	2071
9471	Sheridan	1356
9472	Sheridan	1124
9473	Sheridan	2507
9474	Sheridan	1225
9475	Sheridan	279
9476	Sheridan	2043
9477	Sheridan	363
9478	Mountain Village	2367
9479	Mountain Village	1040
9480	Newtok	2260
9481	Town Creek	538
9482	Newton	1889
9483	Newton	1233
9484	Newton	1472
9485	Newton	95
9486	Newton	3123
9487	Newton	3043
9488	Newton	3039
9489	Newton	1229
9490	Newton	2709
9491	Newton	674
9492	Newton	2526
9493	Santiago	2444
9494	Santiago	2632
9495	Siloam Springs	1645
9496	Siloam Springs	3184
9497	Smyrna Mills	2201
9498	Fromberg	3035
9499	South Gull Lake	419
9500	Drakesboro	1216
9501	Datil	2040
9502	Cook Station	1411
9503	Mullica Hill	2626
9504	Ridgecrest	3217
9505	Ridgecrest	263
9506	Ridgecrest	1680
9507	Ridgecrest	2785
9508	Vineland	2030
9509	Vineland	82
9510	Vineland	2200
9511	Rock River	923
9512	West Decatur	1300
9513	Wabash	3217
9514	Wabash	1559
9515	Wabash	1245
9516	Wabash	2007
9517	Nett Lake	3195
9518	Hillsview	2520
9519	De Valls Bluff	1589
9520	Kelsey	3195
9521	Lucerne Valley	721
9522	Niobe	1551
9523	Sycamore Valley	2358
9524	Jefferson Island	1178
9525	Brownsboro Village	997
9526	Streator	2507
9527	Cherokee Village	2372
9528	Kipling	1798
9529	Marquez	1208
9530	Amanda Park	2499
9531	Trent	203
9532	Trent	92
9533	Trent	1061
9534	Tresckow	3038
9535	Carpinteria	2107
9536	Lovington	742
9537	Lovington	2089
9538	Harleton	619
9539	Harrisburg	1369
9540	Harrisburg	943
9541	Harrisburg	1010
9542	Harrisburg	1191
9543	Harrisburg	250
9544	Harrisburg	2850
9545	Harrisburg	105
9546	Harrisburg	2141
9547	Harrisburg	1499
9548	Wailua Homesteads	2209
9549	Tarpey Village	937
9550	North Seekonk	597
9551	Currituck	1259
9552	Billingsley	413
9553	Spivey	3068
9554	Goodsprings	2329
9555	Lindale	1241
9556	Lindale	1603
9557	Lindale	266
9558	Cornlea	1850
9559	Coplay	1372
9560	Batesville	417
9561	Batesville	138
9562	Batesville	2829
9563	Batesville	797
9564	Batesville	3231
9565	Batesville	1514
9566	Batesville	288
9567	Las Carolinas	1856
9568	Chenango Bridge	1153
9569	Alapaha	1766
9570	Millingport	102
9571	McCallum	1934
9572	Duenweg	3044
9573	Great River	940
9574	Coats	2702
9575	Coats	336
9576	Espanola	1696
9577	Espanola	1431
9578	Peterborough	869
9579	Port Richey	1915
9580	Jerseyville	1523
9581	Jerseyville	278
9582	Pine Park	2494
9583	Millett	2973
9584	Millett	1687
9585	Quamba	1158
9586	Onyx	263
9587	Onyx	2869
9588	Tamaha	1180
9589	Porter Heights	734
9590	Knotts Island	1259
9591	Wyandotte	1732
9592	Wyandotte	2606
9593	Mullan	224
9594	Quinnesec	1315
9595	Pensacola	1884
9596	Pensacola	2667
9597	Dickinson	2523
9598	Dickinson	236
9599	Seven Mile	785
9600	Canyon Day	2920
9601	Astico	955
9602	Mount Healthy Heights	2075
9603	Kenmore	1510
9604	Kenmore	3217
9605	Lake Oswego	3223
9606	Oakmont	2632
9607	La Blanca	1353
9608	Camp Dennison	2075
9609	Woody Creek	399
9610	Palermo	766
9611	Palermo	354
9612	Liberty Hill	121
9613	Liberty Hill	1762
9614	Liberty Hill	365
9615	Gholson	1962
9616	Gholson	702
9617	Stilwell	1272
9618	Stilwell	1385
9619	West Plains	3184
9620	Nittany	393
9621	Helenville	994
9622	Palmetto Estates	1705
9623	Forney	2361
9624	Forney	433
9625	Flemingsburg	914
9626	Apshawa	792
9627	The Plains	741
9628	The Plains	3224
9629	Rancho Santa Margarita	3140
9630	Elderwood	308
9631	Ramhurst	2196
9632	Buchtel	741
9633	Hurdle Mills	1960
9634	Apollo	775
9635	Archdale	2677
9636	Beechburg	914
9637	Camp San Saba	1309
9638	Tri-Lakes	1304
9639	Mill City	1104
9640	Mill City	943
9641	Lake Dunlap	1460
9642	New Brighton	654
9643	New Brighton	1883
9644	Serafina	1039
9645	Brookline	565
9646	Brookline	2618
9647	Stallings	494
9648	Stallings	2054
9649	Silver Star	2043
9650	Montcalm	2003
9651	Drum Point	2983
9652	Leola	1124
9653	Leola	1139
9654	Leola	2520
9655	North Cowden	928
9656	Lernerville	789
9657	Glenloch	90
9658	Princess Anne	128
9659	Bolton	1238
9660	Bolton	1046
9661	Lamington	129
9662	Wyndmere	1673
9663	Kelsay	166
9664	North Buffalo	775
9665	Breesport	1524
9666	Cowdrey	1824
9667	Altoona	1163
9668	Altoona	2539
9669	Altoona	1331
9670	Altoona	804
9671	Altoona	2937
9672	Altoona	2445
9673	Altoona	1710
9674	Burlingame	1156
9675	Burlingame	1423
9676	Philip	2620
9677	Prairie Hill	2790
9678	Prairie Hill	350
9679	Surgoinsville	2168
9680	Meadview	829
9681	Correo	3272
9682	Artois	381
9683	Jonesboro	508
9684	Jonesboro	1118
9685	Jonesboro	2621
9686	Jonesboro	1827
9687	Jonesboro	872
9688	Jonesboro	1943
9689	Vera Cruz	2915
9690	Fort Hall	672
9691	Greystone	1721
9692	Massies Mill	272
9693	Wayne City	2610
9694	Campanilla	1334
9695	Chief Lake	2833
9696	Arriba	1200
9697	Jennette	1785
9698	Fort Lauderdale	2729
9699	West	702
9700	West	2278
9701	East Nassau	2828
9702	Hollins	2297
9703	Hollins	1533
9704	Valdese	925
9705	Bremerton	1048
9706	Zumbro Falls	2988
9707	Winchester Bay	2814
9708	Rose Tree	2809
9709	Orchards	2326
9710	Knoke	1277
9711	Elwell	720
9712	Diamondhead	1966
9713	Potomac Mills	321
9714	Diagonal	2700
9715	Brooklyn Center	91
9716	Mullen	69
9717	Box Elder	907
9718	Box Elder	453
9719	Wyldwood	358
9720	Pray	1749
9721	Valders	626
9722	San Mateo	1769
9723	San Mateo	1423
9724	Cedro	405
9725	Overall	2671
9726	Brownson	1610
9727	Tornillo	3227
9728	Wayside	728
9729	Wayside	3021
9730	Wayside	639
9731	Wayside	485
9732	United	2385
9733	Mayville	3112
9734	Mayville	955
9735	Mayville	1486
9736	Mayville	3056
9737	Mayville	942
9738	Stonyford	1803
9739	North Kingsville	462
9740	Egbert	264
9741	Goulding	2667
9742	Avard	2477
9743	Olsonville	2648
9744	Sublime	978
9745	Lewiston	2709
9746	Lewiston	2584
9747	Lewiston	1255
9748	Lewiston	317
9749	Lewiston	1880
9750	Lewiston	2399
9751	Lewiston	2423
9752	Lewiston	2910
9753	Kysorville	386
9754	Redmesa	2106
9755	Johnson Corner	2216
9756	Orleans	1436
9757	Orleans	319
9758	Orleans	1314
9759	Orleans	1162
9760	Orleans	2857
9761	Orleans	1897
9762	Orleans	3138
9763	Winterset	2051
9764	Davis Dam	829
9765	Hampden Highlands	392
9766	North Miami Beach	1705
9767	Cassville	2627
9768	Cassville	2550
9769	Cassville	1131
9770	Cassville	830
9771	Cassville	3238
9772	Cassville	624
9773	Sunset Valley	3050
9774	Sunset Valley	2385
9775	Menahga	2171
9776	North Lewisburg	520
9777	Ruthton	2373
9778	Blandville	1875
9779	Erda	1622
9780	Blandford	542
9781	Laredo	2506
9782	Laredo	817
9783	Laredo	453
9784	Longwoods	1160
9785	Allamuchy	2306
9786	Meigs	3029
9787	Lone Oak	3215
9788	Lone Oak	2579
9789	Lone Oak	2995
9790	Paisley	1321
9791	Paisley	1331
9792	Wastella	1009
9793	Highland Village	2452
9794	Levy	3190
9795	Gulf Hills	1822
9796	Alcester	499
9797	Barrington Hills	761
9798	Parkesburg	90
9799	Eagle Village	1561
9800	Conejos	1461
9801	Alvordton	378
9802	New Taiton	3047
9803	Walland	2421
9804	Davidsville	131
9805	Milton Center	2338
9806	Lawsonia	128
9807	Hosford	3106
9808	Milesburg	393
9809	Whitman	273
9810	Whitman	1126
9811	Bunkerville	2329
9812	Garrettsville	1637
9813	South Beach	1184
9814	South Beach	2114
9815	Teague	2524
9816	Coamo	1469
9817	Leoma	532
9818	Ê»ÅŒÊ»Åkala	1488
9819	Chadron	455
9820	Coello	2139
9821	Daphne	1988
9822	Kidder	2469
9823	Kidder	2854
9824	Monroeville	443
9825	Monroeville	2632
9826	Monroeville	2628
9827	Monroeville	2349
9828	Monroeville	341
9829	Follett	2871
9830	Des Moines	2539
9831	Des Moines	3217
9832	Des Moines	507
9833	Maumelle	375
9834	Natchez	1288
9835	Natchez	2991
9836	Lexa	1559
9837	Fort Gay	2607
9838	Coffeeville	1214
9839	Coffeeville	883
9840	Zoar	543
9841	Zoar	2552
9842	Fuig	1252
9843	Urbancrest	2141
9844	Colorado City	2030
9845	Colorado City	1477
9846	Colorado City	829
9847	Port Edwards	2339
9848	Littleton	3134
9849	Littleton	3225
9850	Littleton	2738
9851	Littleton	795
9852	Littleton	2362
9853	Old Monroe	1201
9854	Baltimore	2002
9855	Baltimore	406
9856	Dowling	625
9857	Daviston	2933
9858	Kennebec	1143
9859	Leona	2028
9860	Leona	1208
9861	Barnes City	2669
9862	Kingfisher	1501
9863	Daniels	1634
9864	Daniels	3240
9865	South Apopka	3141
9866	Orcas	2930
9867	Bogue	2014
9868	Bogue	1182
9869	Kohler	915
9870	Dalton Gardens	3087
9871	Lowellville	2839
9872	Excelsior Springs	1541
9873	Melvindale	2606
9874	Casper Mountain	805
9875	Erie	2267
9876	Erie	1512
9877	Erie	603
9878	Erie	3180
9879	Erie	1718
9880	Tannersville	556
9881	Tannersville	2351
9882	Daingerfield	2878
9883	Saunderstown	478
9884	Dunlap Acres	721
9885	Fairpoint	1663
9886	Erin	2119
9887	Erin	1524
9888	Eagleville	1771
9889	Eagleville	731
9890	Eagleville	2671
9891	Eagleville	620
9892	Eagleville	462
9893	Cross Creek	483
9894	Bainbridge	1139
9895	Bainbridge	2485
9896	Bainbridge	2752
9897	Bainbridge	650
9898	Bainbridge	1257
9899	Copley	1725
9900	Cheval	868
9901	Chevak	2367
9902	Chemung	3192
9903	Ashwood	983
9904	Clay	1139
9905	Clay	987
9906	Clay	1536
9907	Clay	2688
9908	Clay	820
9909	Clay	2593
9910	Clay	1827
9911	Munds Park	353
9912	Ingleside On-the-Bay	3214
9913	Seelyville	3110
9914	Siren	1745
9915	Umatilla	1331
9916	Umatilla	1544
9917	Jacksonport	1818
9918	Becton	300
9919	Greenwich	477
9920	Greenwich	2646
9921	Greenwich	408
9922	Greenwich	341
9923	Higginsport	636
9924	Palco	2982
9925	Maple Valley	3217
9926	Leoti	295
9927	Gap	1139
9928	Gas	442
9929	South Daytona	814
9930	Borden	2318
9931	Avant	1154
9932	Hereford	1442
9933	Hereford	1663
9934	Hereford	362
9935	Hereford	1498
9936	Hereford	1101
9937	Hereford	3232
9938	Sabinsville	2151
9939	Garwood	502
9940	Garwood	206
9941	Fairview Park	1095
9942	Fairview Park	708
9943	Blountsville	1107
9944	Blountsville	2420
9945	Border	1632
9946	Leota	1090
9947	North Hill	3217
9948	Gay	3125
9949	Gay	2995
9950	Bluford	1004
9951	Hopkinton	2805
9952	Hopkinton	95
9953	Hopkinton	478
9954	Baileyville	393
9955	Baileyville	284
9956	Baileyville	1978
9957	Hartrandt	805
9958	Agua Dulce	819
9959	Agua Dulce	404
9960	Murraysville	254
9961	Chemult	759
9962	Funk	1302
9963	Clem	2230
9964	Waltersville	2309
9965	South Padre Island	1832
9966	Cleo	355
9967	Lane City	3047
9968	Lane City	1401
9969	Falls Creek	1000
9970	Martha Lake	99
9971	Astoria	1799
9972	Astoria	2712
9973	Astoria	813
9974	Green Oaks	1326
9975	Snow Shoe	393
9976	Primghar	1885
9977	Old Eucha	2808
9978	Oakesdale	1464
9979	Orovada	320
9980	Sumpter	1471
9981	Bonnots Mill	1155
9982	Congruity	2385
9983	Rehrersburg	362
9984	Parmele	2210
9985	Prim	3276
9986	Rouses Point	2895
9987	Hardtner	2024
9988	Morganza	2578
9989	Lenapah	3203
9990	Raysal	2379
9991	McKinnon	3093
9992	McKinnon	2613
9993	McKinnon	2119
9994	McKinnon	2667
9995	Bibo	1769
9996	Oregon City	3223
9997	Elk City	728
9998	Elk City	2824
9999	Elk City	3269
10000	Elk City	1458
10001	Kline	2106
10002	Kline	2175
10003	Gates Mills	708
10004	Dallas City	1969
10005	Decker	2724
10006	Decker	581
10007	BayamÃ³n Zona Urbana	2110
10008	Greenwood Village	2362
10009	Sipsey	1349
10010	Bush City	1394
10011	Pound	1728
10012	Pound	1146
10013	Morristown	1307
10014	Morristown	3086
10015	Morristown	2748
10016	Morristown	2877
10017	Morristown	2296
10018	Morristown	595
10019	Morristown	188
10020	Morristown	1591
10021	Mount Etna	3251
10022	Mount Etna	1287
10023	Dunlow	2607
10024	Woodworth	2645
10025	Woodworth	1955
10026	Woodworth	2839
10027	Woodworth	2402
10028	Cordova	190
10029	Cordova	167
10030	Cordova	2725
10031	Cordova	3089
10032	Cordova	1910
10033	Cordova	3172
10034	Cordova	1160
10035	Cordova	1349
10036	Cordova	1363
10037	Lake Aluma	958
10038	Lacey	1501
10039	Lacey	2190
10040	Lacey	2669
10041	Erma	1994
10042	Stromsburg	2548
10043	Ravine	2826
10044	Olathe	1272
10045	Olathe	2662
10046	Atkins	2410
10047	Atkins	1639
10048	Atkins	2642
10049	Trainer	2809
10050	Gleasondale	95
10051	Othello	1294
10052	Head of the Harbor	940
10053	Lake Norden	901
10054	Tocsin	2915
10055	West Des Moines	2539
10056	Neche	2418
10057	Loganville	1344
10058	Loganville	1548
10059	Loganville	853
10060	Nenzel	2016
10061	Long Pine	640
10062	Sesser	2139
10063	Saint Anne	2870
10064	Niota	3254
10065	Marshfield Hills	1936
10066	Rothbury	3166
10067	Hato Arriba	911
10068	Griffith	829
10069	Griffith	1323
10070	Desert Aire	1125
10071	Gem	224
10072	Gem	3030
10073	Snyderville	1726
10074	Cheyenne	264
10075	Cheyenne	1741
10076	Duncanville	1911
10077	Duncanville	525
10078	Creighton	589
10079	Creighton	2632
10080	Creighton	907
10081	Creighton	3178
10082	Richardton	236
10083	Perrysville	383
10084	Perrysville	1095
10085	Perrysville	2632
10086	McGuffey	2388
10087	Tillicum	1925
10088	Oriskany	3238
10089	Oriskany	2475
10090	Hamilton Dome	311
10091	Easthampton	2922
10092	Rosewood Heights	2054
10093	Goddard	887
10094	Leiter	1225
10095	Dola	2388
10096	Sevenmile	3161
10097	Edgely	2634
10098	Miracle Valley	3232
10099	Trammels	1890
10100	Bier	1497
10101	Robersonville	2210
10102	Mier	1118
10103	Coady	145
10104	Drakesville	2874
10105	Clio	2888
10106	Clio	3011
10107	Clio	288
10108	Clio	2258
10109	Clio	2608
10110	Boston Harbor	2190
10111	Eros	1827
10112	Joyce	921
10113	Joyce	185
10114	Lake Barrington	1326
10115	Sunbeam	3063
10116	Dutchtown	2619
10117	Pardeesville	2641
10118	Nescopeck	2641
10119	Sunset Beach	1925
10120	Sunset Beach	2395
10121	Sunset Beach	3140
10122	Bettles	1462
10123	Bejou	1494
10124	Farrandsville	2902
10125	Stroh	599
10126	Whitesville	1496
10127	Whitesville	3027
10128	Whitesville	437
10129	Whitesville	146
10130	Whitesville	246
10131	Benton	2541
10132	Benton	104
10133	Benton	2139
10134	Benton	3065
10135	Benton	1635
10136	Benton	3160
10137	Benton	2700
10138	Benton	1079
10139	Benton	786
10140	Benton	3078
10141	Benton	2773
10142	Benton	2244
10143	Benton	2468
10144	Rio Grande City	166
10145	Happy Jack	2473
10146	Happy Jack	353
10147	Kentwood	169
10148	Kentwood	219
10149	Pangburn	1905
10150	Parkertown	1511
10151	Lenape	90
10152	Naguabo Zona Urbana	1619
10153	Elizabeth City	2066
10154	Versailles	2636
10155	Versailles	2632
10156	Versailles	797
10157	Versailles	634
10158	Versailles	115
10159	Versailles	2000
10160	Cape Meares	2093
10161	Grosse Pointe Farms	2606
10162	Country Lake Estates	2841
10163	Octavia	788
10164	Octavia	2263
10165	Etna Green	718
10166	Storden	3122
10167	Lagunitas	1515
10168	Coaldale	2826
10169	Coaldale	969
10170	Outlook	1223
10171	Outlook	3268
10172	Haubstadt	3115
10173	Huttonsville	2678
10174	Caineville	2603
10175	Lime Springs	256
10176	Shannon	2226
10177	Shannon	2256
10178	Shannon	266
10179	Shannon	2096
10180	Birdseye	705
10181	Birdseye	1854
10182	Fashing	1017
10183	Dodson	921
10184	Dodson	1142
10185	Dodson	1557
10186	Atherton	1423
10187	Lacon	2466
10188	McKinney	1190
10189	McKinney	1335
10190	McKinney	67
10191	Wisdom	2331
10192	Charlos Heights	601
10193	Olympic View	1048
10194	Westwater	1152
10195	Point Place	2991
10196	Willow Street	1139
10197	Bagnell	2705
10198	Long Meadow	492
10199	Dome	2113
10200	Willmar	2457
10201	Somes Bar	337
10202	Pontiac	387
10203	Pontiac	2663
10204	Pontiac	1157
10205	Wolcott	1904
10206	Wolcott	2974
10207	Wolcott	2599
10208	Wolcott	1312
10209	Avella	483
10210	Atmore	2668
10211	Hollow Creek	997
10212	Montalvin	3143
10213	Cypress Gardens	2545
10214	Patterson Springs	857
10215	Tarrytown	1919
10216	Tarrytown	738
10217	Moline Acres	3196
10218	Lawton	653
10219	Lawton	2433
10220	Lawton	432
10221	Lawton	2512
10222	Lawton	3024
10223	Coto Laurel Comunidad	459
10224	River Bluff	1692
10225	Pennsbury Village	2632
10226	Wallace	3144
10227	Wallace	1196
10228	Wallace	3126
10229	Wallace	361
10230	Wallace	935
10231	Wallace	224
10232	Wallace	2888
10233	Wallace	615
10234	Wallace	1492
10235	Wallace	758
10236	Wallace	1686
10237	Wallace	491
10238	Fields	1727
10239	Elk Grove	2688
10240	Hildebran	925
10241	Hedville	103
10242	Concrete	1422
10243	Concrete	2732
10244	Middleburgh	2416
10245	Rosette	1421
10246	Wisacky	2105
10247	Rosetta	182
10248	Black Lick	2147
10249	Lockwood	412
10250	Lockwood	332
10251	Lockwood	2955
10252	Backus	3179
10253	Lelia Lake	952
10254	Hyattville	2723
10255	Blue Anchor	2977
10256	Neptune City	278
10257	Cawood	1898
10258	South Heights	1883
10259	South Hutchinson	3201
10260	Orestes	2044
10261	Mackinaw	1777
10262	Port Wentworth	1631
10263	Lewisetta	2962
10264	Hannahs Mill	67
10265	Telferner	2800
10266	Belington	289
10267	Aguanga	3210
10268	Zona	488
10269	Coopersburg	1372
10270	Bogia	2667
10271	Timberwood Park	1083
10272	Merrydale	1381
10273	Doon	139
10274	Bellevue	3217
10275	Bellevue	2632
10276	Bellevue	639
10277	Bellevue	2456
10278	Bellevue	341
10279	Bellevue	1014
10280	Bellevue	1821
10281	Bellevue	1539
10282	Bellevue	1405
10283	Bellevue	179
10284	Bellevue	1160
10285	Bellevue	2764
10286	Woodhull	1109
10287	Kingsbury	1460
10288	Kingsbury	2825
10289	Kingsbury	2792
10290	Moshannon	393
10291	Leo-Cedarville	443
10292	Stonecrest	1751
10293	Skellytown	3094
10294	Los Trancos Woods	1423
10295	Treasure Lake	1300
10296	Bark Ranch	2267
10297	Blackduck	546
10298	Duryea	2641
10299	Learned	1046
10300	Kingsburg	937
10301	Park Hill	430
10302	Whiteside	1201
10303	Hills Prairie	358
10304	Mayflower Village	404
10305	Ethelsville	366
10306	Hoopers Creek	2651
10307	Atwood	3053
10308	Atwood	3140
10309	Atwood	2180
10310	Atwood	2816
10311	Atwood	775
10312	Atwood	2221
10313	Atwood	421
10314	Kilgore	2016
10315	Kilgore	2371
10316	Kilgore	2328
10317	De Forest	749
10318	French Lick	3138
10319	Moorefield	138
10320	Moorefield	1900
10321	Moorefield	2091
10322	Newfane	3097
10323	Newfane	2910
10324	Sayville	940
10325	Coto De Caza	3140
10326	Haines City	2545
10327	Chesilhurst	2977
10328	Clow	1586
10329	Shirleysburg	2550
10330	Liddieville	2140
10331	Prue	1154
10332	Lincoln Heights	2075
10333	Commonwealth	2829
10334	Weehawken	2587
10335	Cruzville	2040
10336	Milo	1852
10337	Milo	227
10338	Milo	2814
10339	Milo	2308
10340	Shubuta	1212
10341	East York	853
10342	Camptonville	1775
10343	Labadie	2130
10344	King William	1735
10345	Doylestown	1078
10346	Doylestown	2634
10347	Doylestown	2612
10348	McQueeney	1460
10349	Lake Barcroft	2405
10350	Violet	819
10351	Violet	2298
10352	Dewalt	1890
10353	Talley Cavey	2632
10354	Lake Ridge	321
10355	Marcola	1446
10356	Orchard Homes	3149
10357	Laurel	2122
10358	Laurel	1887
10359	Laurel	3020
10360	Laurel	59
10361	Laurel	2064
10362	Laurel	149
10363	Laurel	940
10364	Laurel	2462
10365	Laurel	332
10366	Laurel	1236
10367	Laurel	65
10368	Effingham	1742
10369	Effingham	1588
10370	Effingham	3259
10371	Nottoway Court House	1953
10372	Dominguez	404
10373	Gold Acres	2720
10374	Blocker	3211
10375	Pierz	164
10376	Loon Lake	657
10377	Loon Lake	2131
10378	Likely	1771
10379	Roslyn Estates	101
10380	DeKalb	1755
10381	Hutchinson	2386
10382	Hutchinson	2179
10383	Hutchinson	2306
10384	Hutchinson	3201
10385	Drumright	755
10386	McArthur	2883
10387	McArthur	848
10388	Temple Terrace	868
10389	Matamoras	1177
10390	Lively	1136
10391	Bill	3170
10392	Pearblossom	404
10393	Dora	772
10394	Dora	1349
10395	Dora	1678
10396	Dora	1157
10397	Catonsville	1498
10398	Shishmaref	717
10399	Waipahu	1878
10400	Millvale	2632
10401	Cannel City	116
10402	Dore	916
10403	Braxton	1787
10404	Goodnoe Hills	149
10405	Hanover	1768
10406	Hanover	1698
10407	Hanover	853
10408	Hanover	2061
10409	Hanover	481
10410	Hanover	3134
10411	Hanover	2664
10412	Hanover	837
10413	Hanover	1819
10414	Hanover	984
10415	Hanover	3255
10416	Hanover	1128
10417	Hanover	2291
10418	Wakefield	1139
10419	Wakefield	1772
10420	Wakefield	95
10421	Wakefield	1685
10422	Wakefield	478
10423	Wakefield	1531
10424	Wakefield	1173
10425	Wakefield	2237
10426	Wakefield	1888
10427	Hide-A-Way Lake	136
10428	Mekoryuk	2260
10429	Clear Lake Shores	2523
10430	Wagner	1557
10431	Wagner	2474
10432	Wagner	3096
10433	Ihlen	2373
10434	Umpqua	2814
10435	Savage Town	3027
10436	Mims	2189
10437	Ruffin	2109
10438	Ruffin	2083
10439	Bonnieville	1240
10440	Riverton	968
10441	Riverton	2637
10442	Riverton	772
10443	Riverton	432
10444	Riverton	967
10445	Riverton	2128
10446	Riverton	2851
10447	Riverton	695
10448	Riverton	704
10449	Riverton	2314
10450	Riverton	302
10451	Riverton	2841
10452	Lithium	1843
10453	Wattsburg	1512
10454	Ransom	2507
10455	Ransom	3023
10456	Ranson	991
10457	Mina	977
10458	Mina	835
10459	Skowhegan	130
10460	Luraville	3124
10461	Doty	2533
10462	Dilia	1459
10463	Lake Clear	2131
10464	Shenandoah Shores	2314
10465	Lookeba	307
10466	Ensenada	2725
10467	Waukeenah	999
10468	South Mills	2975
10469	Donaldsonville	1618
10470	Lyons Plain	408
10471	Sylvan Grove	1193
10472	Bells	3261
10473	Bells	899
10474	Vidaurri	2919
10475	McLaughlin	2296
10476	Veedersburg	361
10477	Dickerson City	758
10478	Forty Fort	2641
10479	Flovilla	806
10480	South Coffeyville	3203
10481	Verlot	99
10482	Century	289
10483	Century	2667
10484	Zenith	3217
10485	Nappanee	3145
10486	Myers	160
10487	Myers	1348
10488	McKenna	1925
10489	Kistler	2179
10490	Kistler	2474
10491	Shepherdsville	843
10492	Hoquiam	2499
10493	Jewell Ridge	1776
10494	Lake Nebagamon	2823
10495	Belle	74
10496	Belle	1467
10497	Moose Wilson Road	1391
10498	Yerkes	1844
10499	Lincoln Hills	2498
10500	Grandview	1266
10501	Grandview	2075
10502	Grandview	1977
10503	Grandview	58
10504	Grandview	3268
10505	Grandview	695
10506	Grandview	162
10507	Grandview	1939
10508	Grandview	1826
10509	Terre du Lac	230
10510	Tullos	2062
10511	Lariat	3234
10512	Moss Beach	1423
10513	Bairdstown	2338
10514	Welling	430
10515	Goodwater	229
10516	Goodwater	1929
10517	Lenexa	1272
10518	Chino Hills	721
10519	Medora	1809
10520	Medora	712
10521	Medora	3201
10522	Medora	2025
10523	East Spencer	863
10524	Winter	2833
10525	North Hodge	1827
10526	East Millstone	129
10527	Winokur	2698
10528	Swedesboro	2626
10529	Ernest	2147
10530	Melba	2039
10531	Daleyville	749
10532	Brookeland	1033
10533	East Farmingdale	940
10534	Chowchilla	1563
10535	Keansburg	278
10536	Mertens	452
10537	Bryant Pond	1703
10538	Radisson	2833
10539	East Salem	1729
10540	Glen Flora	2500
10541	Glen Flora	3047
10542	Foosland	519
10543	Laurie	115
10544	Islen	1206
10545	Roderfield	2379
10546	Nazareth	1457
10547	Nazareth	274
10548	Nazareth	314
10549	Lyndell	90
10550	Oostburg	915
10551	Mohrsville	362
10552	Palo Seco Comunidad	2437
10553	Belvidere	3009
10554	Belvidere	2306
10555	Belvidere	1813
10556	Belvidere	2123
10557	Belvidere	249
10558	Jagual	3163
10559	Oscoda	275
10560	Symsonia	1071
10561	Mountain Meadows	2267
10562	Gem Village	2106
10563	Rincon	1242
10564	Rincon	1743
10565	New Madrid	1857
10566	Stateline	2825
10567	Republic	565
10568	Republic	2262
10569	Republic	1871
10570	Republic	1058
10571	Republic	1150
10572	Republic	2574
10573	Mira	306
10574	Cedar Fort	705
10575	L'Anse	2149
10576	Texas City	2523
10577	Holmesville	1168
10578	Holmesville	3206
10579	Holmesville	2277
10580	Urban	1422
10581	Okanogan	1874
10582	Ballard	1443
10583	Ballard	1067
10584	Ballard	2107
10585	Elbert	1876
10586	Elbert	3185
10587	Codell	2982
10588	Sigsbee	1105
10589	Traverse City	1592
10590	South Roxana	2054
10591	Honolulu	1878
10592	Opportunity	395
10593	Opportunity	1431
10594	Powderhorn	549
10595	McKnightstown	1298
10596	Coos Bay	772
10597	Gillespie	712
10598	Harbor Bluffs	2785
10599	Cedar Mountain	3217
10600	Cedar Mountain	822
10601	Kewaskum	476
10602	Goshute	1576
10603	Ashippun	955
10604	Sandy Hook	688
10605	Sandy Hook	492
10606	Sandy Hook	1131
10607	Sandy Hook	125
10608	Dows	2290
10609	New Ulm	61
10610	New Ulm	637
10611	Buchanan Dam	1738
10612	Celoron	3112
10613	West Carson	404
10614	Goldsby	1454
10615	Siesta Acres	867
10616	Grants Pass	2203
10617	Idylwood	2405
10618	Rentz	948
10619	Ryan	2160
10620	Ryan	986
10621	Ryan	2805
10622	Maurice	2035
10623	Maurice	2926
10624	Jugtown	492
10625	Kasaan	1345
10626	Oakley Park	2663
10627	Adona	1847
10628	Reinbeck	2503
10629	Pell City	917
10630	South Westport	597
10631	Westchester	1705
10632	Westchester	761
10633	Norwood Court	3196
10634	Melfa	3027
10635	Belen	3272
10636	Belen	3119
10637	Palmetto Bay	1705
10638	Beekman	2730
10639	Dushore	1950
10640	Guaynabo	1921
10641	Milton-Freewater	1544
10642	Clanton	126
10643	Cumbola	2826
10644	Johns Creek	2715
10645	Turah	3149
10646	East Rockingham	3089
10647	Perkasie	2634
10648	Sturbridge	1760
10649	Ensley	2667
10650	Kelvin	1860
10651	Kelvin	1914
10652	Crouch	3171
10653	Scotchtown	3137
10654	Kittery	850
10655	Rye Beach	2085
10656	Orient	2139
10657	Orient	3226
10658	Orient	1150
10659	Orient	1986
10660	Orient	940
10661	Orient	1384
10662	Orient	2944
10663	Vista Center	2627
10664	Brownville Junction	1852
10665	Ellicott City	261
10666	Farnsworth	285
10667	Comstock Park	219
10668	Alpine	2108
10669	Alpine	1186
10670	Alpine	2325
10671	Alpine	705
10672	Alpine	1617
10673	Alpine	2480
10674	Alpine	2381
10675	Alpine	932
10676	Alpine	1638
10677	Alpine	1572
10678	Alpine	2737
10679	Alpine	2566
10680	Zuni Pueblo	3150
10681	Guy	1890
10682	Guy	333
10683	Lyles	2335
10684	Fuig Comunidad	1252
10685	Bountiful	2875
10686	Pawnee Station	1569
10687	Clayton	3033
10688	Clayton	3063
10689	Clayton	1891
10690	Clayton	1425
10691	Clayton	1680
10692	Clayton	288
10693	Clayton	657
10694	Clayton	2001
10695	Clayton	2626
10696	Clayton	737
10697	Clayton	507
10698	Clayton	3196
10699	Clayton	2547
10700	Clayton	2586
10701	Clayton	1513
10702	Clayton	1291
10703	Clayton	1942
10704	Clayton	216
10705	Clayton	3143
10706	Clayton	995
10707	Clayton	1165
10708	Chumuckla	758
10709	Greensboro Bend	1436
10710	Honalo	1488
10711	Myers Flat	319
10712	Bufalo	1908
10713	Lerna	2943
10714	Islip	940
10715	Canyon Park	99
10716	Liebenthal	2515
10717	Deepwater	1110
10718	Deepwater	2628
10719	Mist	1072
10720	Mist	2862
10721	Jersey Village	145
10722	Fair Bluff	1238
10723	Justice	2831
10724	Justice	673
10725	Justice	761
10726	Mansura	1975
10727	West Terre Haute	3110
10728	Preston	3217
10729	Preston	2894
10730	Preston	336
10731	Preston	2442
10732	Preston	3261
10733	Preston	2144
10734	Preston	1821
10735	Preston	1543
10736	Preston	1051
10737	Preston	700
10738	Preston	3247
10739	Preston	2595
10740	Preston	1401
10741	Carneys Point	2628
10742	Roundup	97
10743	Roundup	2981
10744	Flint	1603
10745	Flint	2258
10746	Central Square	1262
10747	Red Star	2049
10748	Meadows Place	1890
10749	New Straitsville	1845
10750	Fort Shawnee	441
10751	Zellwood	3141
10752	Sylvan Springs	987
10753	Lamboglia Comunidad	807
10754	Axial	1721
10755	Coulter	2136
10756	Constantia	1262
10757	Brethren	2162
10758	Humeston	2608
10759	Talala	2831
10760	New Orleans	1435
10761	King George	1982
10762	Athelstan	1060
10763	Universal City	1083
10764	Simonton Lake	3145
10765	Cotuit	1162
10766	Mount Orab	636
10767	Sharon Springs	2416
10768	Sharon Springs	1686
10769	Roslyn Harbor	101
10770	Marsland	455
10771	Villa Heights	1115
10772	Melby	2819
10773	Rickman	2108
10774	Barberton	2326
10775	Barberton	1725
10776	Rotonda	1506
10777	Sylvan Lake	2663
10778	Westlake Corner	2143
10779	North Lindenhurst	940
10780	Accoville	2179
10781	Notrees	928
10782	East Enterprise	2856
10783	Holly Ridge	329
10784	Otley	687
10785	Ocean Isle Beach	2395
10786	Sammons Point	2870
10787	Bathgate	2418
10788	Gustavus	207
10789	Gustavus	2946
10790	New Burnside	1268
10791	Woodford	1910
10792	Woodford	2773
10793	Clyo	1743
10794	Kelseyville	1330
10795	Massapequa	101
10796	Beulah	2008
10797	Beulah	1310
10798	Beulah	3253
10799	Beulah	2030
10800	Beulah	1565
10801	Beulah	1019
10802	Beulah	180
10803	Beulah	1414
10804	Cherry	1704
10805	Radcliffe	2387
10806	Maxwell	1967
10807	Maxwell	2794
10808	Maxwell	1196
10809	Maxwell	1803
10810	Maxwell	2581
10811	Maxwell	2853
10812	Algonquin	3192
10813	Algonquin	2508
10814	Quanah	2696
10815	Mequon	608
10816	Finchford	1901
10817	Bartonsville	3153
10818	Tranquillity	937
10819	Teec Nos Pos	932
10820	Coalinga	937
10821	Doniphan	798
10822	Doniphan	1023
10823	Doniphan	2028
10824	Florham Park	2877
10825	Commercial Point	1986
10826	Coyanosa	1693
10827	Potala Pastillo	846
10828	Waddington	1307
10829	Baxley	2252
10830	Trussville	987
10831	Topsail Beach	451
10832	Gibbsville	915
10833	Sinclairville	3112
10834	Claypool Hill	1776
10835	Pickton	3252
10836	Canyon	2279
10837	Canyon	1556
10838	Canyon	3195
10839	Eastsound	2930
10840	Hilbert	1428
10841	Thayne	1186
10842	West Mifflin	2632
10843	Cave Junction	2203
10844	Clay Springs	3161
10845	Madison	2059
10846	Madison	2047
10847	Madison	2054
10848	Madison	118
10849	Madison	2052
10850	Madison	2050
10851	Madison	2877
10852	Madison	2048
10853	Madison	130
10854	Madison	749
10855	Madison	2357
10856	Madison	3076
10857	Madison	2385
10858	Madison	2508
10859	Madison	1916
10860	Madison	2083
10861	Madison	246
10862	Madison	1327
10863	Madison	2042
10864	Madison	984
10865	Madison	709
10866	Madison	2980
10867	Madison	1328
10868	Old Minto	1462
10869	Hubbardston	1613
10870	Mize	1601
10871	Calcium	995
10872	Fergus	2061
10873	Assinippi	1936
10874	Mountain Pine	2446
10875	Opal	1663
10876	Opal	3224
10877	Opal	1186
10878	Weleetka	87
10879	Quaker City	3048
10880	Whitmer	2678
10881	Delaware Water Gap	2351
10882	Millbourne	2809
10883	Tres Pinos	706
10884	Church Creek	2508
10885	Lashmeet	2003
10886	Spencerport	2344
10887	Riggins	1458
10888	El Combate	1682
10889	Forman	3010
10890	Cox City	2493
10891	Combee Settlement	2545
10892	Red Bank	324
10893	Red Bank	278
10894	Red Bank	2073
10895	Bellerose Terrace	101
10896	Goleta	2107
10897	Magoun	2871
10898	Santa Isabel	2086
10899	Portland Mills	162
10900	East Harwich	1162
10901	Milesville	2620
10902	Carpenterville	811
10903	Kouts	2498
10904	Lone Jack	1826
10905	Blackwood	2977
10906	Niotaze	3113
10907	Fond du Lac	2090
10908	Ramirez	1600
10909	Faith	1663
10910	Faith	863
10911	Faith	988
10912	Stoddard	226
10913	Manifest	3248
10914	Upatoi	2417
10915	Cobre	1128
10916	Cobre	108
10917	Glendevey	831
10918	Hortonville	2266
10919	Hortonville	1946
10920	Edmund	3080
10921	Saint Nazianz	626
10922	Temperance	2352
10923	Kellyton	1929
10924	Shawneetown	578
10925	Mexico	1703
10926	Mexico	1729
10927	Mexico	2945
10928	Mexico	667
10929	Mexico	1262
10930	Marguerite	2385
10931	Lantana	2452
10932	Lantana	3071
10933	Mount Cobb	3057
10934	Trucksville	2641
10935	Cedar Springs	1085
10936	Cedar Springs	219
10937	Cedar Springs	66
10938	Christiansburg	739
10939	Christiansburg	520
10940	Leroy	2418
10941	Leroy	416
10942	Leroy	470
10943	Leroy	1403
10944	Leroy	702
10945	Turin	2766
10946	Turin	3000
10947	Turin	2529
10948	Lake Bronson	2857
10949	Turner Corner	99
10950	Crows Nest	678
10951	Waterproof	865
10952	Rudyard	662
10953	Rudyard	453
10954	Tioga	2151
10955	Tioga	3261
10956	Tioga	377
10957	Tioga	1347
10958	Tioga	2402
10959	Cebolla	2725
10960	Neffs	1591
10961	Goodnews Bay	2260
10962	Osierfield	1371
10963	Vinita	352
10964	Burden	1026
10965	West Lincoln	1138
10966	Presidio	2160
10967	Golva	2965
10968	Mavisdale	2811
10969	Panama	3112
10970	Panama	1138
10971	Panama	2263
10972	Panama	187
10973	Panama	3127
10974	Rolfe	1244
10975	Great Barrington	2672
10976	Bullittsville	251
10977	El Campo	3047
10978	Bethania	1980
10979	Friant	937
10980	Clarksburg	2487
10981	Clarksburg	1257
10982	Clarksburg	615
10983	Clarksburg	278
10984	Clarksburg	2264
10985	Clarksburg	2221
10986	Clarksburg	740
10987	Clarksburg	709
10988	Anacoco	225
10989	Wadena	2565
10990	Wadena	2171
10991	Warr Acres	958
10992	Erlanger	2397
10993	Jacobsville	2440
10994	Scottville	747
10995	Scottville	712
10996	Lake Arbor	2064
10997	Junction City	2055
10998	Junction City	1446
10999	Junction City	509
11000	Junction City	1845
11001	Junction City	2499
11002	Junction City	690
11003	Junction City	1161
11004	Junction City	1636
11005	Junction City	501
11006	Junction City	317
11007	Junction City	2706
11008	Junction City	2527
11009	Maybeury	2379
11010	Ashmore	2943
11011	Mountain Road	796
11012	Wisconsin Dells	1078
11013	Joseph	2693
11014	Joseph	3209
11015	Halesite	940
11016	Itta Bena	1116
11017	Portola	3011
11018	Emmetsburg	3202
11019	Clark Mills	3238
11020	Subiaco	2187
11021	Geneva	2136
11022	Geneva	701
11023	Geneva	1632
11024	Geneva	357
11025	Geneva	1983
11026	Geneva	1161
11027	Geneva	2193
11028	Geneva	1713
11029	Geneva	322
11030	Geneva	1289
11031	Geneva	462
11032	Geneva	1417
11033	Geneva	1627
11034	Hollandsburg	2791
11035	Quakertown	2634
11036	Denham	369
11037	Denham	2609
11038	Denham	1358
11039	Macks Creek	2978
11040	Stokesdale	710
11041	Kit Carson	1609
11042	Cimarron	3074
11043	Cimarron	2794
11044	Cimarron	2662
11045	Pelican	207
11046	Pelican	1311
11047	Freedom Acres	2920
11048	Helmville	2913
11049	Byers	1539
11050	Byers	2362
11051	Byers	336
11052	Center Moriches	940
11053	Trimmer	937
11054	Salinas Zona Urbana	2259
11055	Josephine	1335
11056	Cullowhee	1807
11057	Stull	2821
11058	Hiawassee	2735
11059	Port O'Connor	1279
11060	Walnut Springs	340
11061	Bernice	509
11062	Bernice	2808
11063	Crosswicks	2841
11064	Joaquin	189
11065	North Brookfield	1760
11066	Hoehne	205
11067	Republican City	1897
11068	Black Earth	749
11069	Mineral Hills	1866
11070	Piketon	1173
11071	Islandia	940
11072	Bowerston	622
11073	Long Grove	1326
11074	Long Grove	2239
11075	Norcatur	2486
11076	Southfields	3137
11077	Bonaire	2116
11078	Narcoossee	2157
11079	Flying Hills	362
11080	Presque Isle	2201
11081	Presque Isle	2238
11082	Browerville	2649
11083	Hay	1464
11084	Bay Shore	541
11085	Bay Shore	940
11086	Detroit	2235
11087	Detroit	1170
11088	Detroit	677
11089	Detroit	2606
11090	Detroit	1316
11091	Detroit	892
11092	Farmville	1503
11093	Farmville	3233
11094	Normans	2701
11095	Boyertown	362
11096	Radium Springs	1242
11097	Patricia	2998
11098	Patricia	1047
11099	Eska	150
11100	Sherack	2543
11101	Pottsgrove	731
11102	Ladera Heights	404
11103	Caneyville	3262
11104	Grandville	219
11105	Poso Park	308
11106	Ellendale	190
11107	Ellendale	85
11108	Ellendale	1887
11109	Ellendale	910
11110	Ellendale	1091
11111	Fish Hawk	868
11112	Apopka	3141
11113	River Forest	761
11114	River Forest	2044
11115	Viroqua	226
11116	Wharncliffe	673
11117	Esko	780
11118	Nolanville	1958
11119	Kinder	440
11120	Chadwick	2226
11121	Chadwick	2950
11122	Dupont	1975
11123	Dupont	1290
11124	Dupont	984
11125	Dupont	2756
11126	Dupont	1696
11127	Dupont	2641
11128	Movico	1301
11129	Depoe Bay	1184
11130	Bethel	1887
11131	Bethel	1241
11132	Bethel	1503
11133	Bethel	192
11134	Bethel	362
11135	Bethel	2260
11136	Bethel	2483
11137	Bethel	408
11138	Bethel	1048
11139	Bethel	1260
11140	Goose Creek	1723
11141	Goose Creek	997
11142	LaBelle	2017
11143	Hartman	1273
11144	Hartman	2840
11145	Shirley Mills	1852
11146	Seneca	1234
11147	Seneca	3028
11148	Seneca	1117
11149	Seneca	2507
11150	Seneca	284
11151	Seneca	740
11152	Seneca	2990
11153	Seneca	643
11154	Seneca	2944
11155	View Park	404
11156	Golden City	612
11157	Lindseyville	309
11158	Stevens Village	1462
11159	Spring Park	91
11160	Nassau Bay	145
11161	Coble	97
11162	Indian Harbour Beach	2189
11163	Litchville	2341
11164	Forreston	823
11165	Forreston	1978
11166	Shopville	372
11167	Greenfields	362
11168	Carson City	1356
11169	Carson City	197
11170	Goochland	2275
11171	Vining	2763
11172	Vining	1861
11173	Vining	1531
11174	Carnelian Bay	2289
11175	CanÃ³vanas Zona Urbana	396
11176	Daggett	721
11177	Daggett	544
11178	Bayside Beach	2440
11179	North Haverhill	3134
11180	Massac	2037
11181	Yankeetown	1455
11182	Yankeetown	391
11183	Henrietta	63
11184	Henrietta	1539
11185	Henrietta	2670
11186	Ringtown	2826
11187	Tumacacori	1361
11188	Michigantown	2897
11189	Ogallah	1021
11190	Bunker Hill	772
11191	Bunker Hill	712
11192	Bunker Hill	667
11193	Bunker Hill	1450
11194	Tolleson	3086
11195	Henriette	1358
11196	Minidoka	2299
11197	Wagener	646
11198	North Zulch	2053
11199	South Tucson	1247
11200	Tularosa	344
11201	Amarillo	714
11202	Stanley	3063
11203	Stanley	1516
11204	Stanley	2835
11205	Stanley	2812
11206	Stanley	1272
11207	Stanley	354
11208	Stanley	1311
11209	Stanley	1750
11210	Stanley	437
11211	Stanley	660
11212	Pocono Ranch Lands	1177
11213	Blooming Prairie	85
11214	Fair Plain	1767
11215	Windhorst	233
11216	Chantilly	2405
11217	Bixby	1865
11218	Bixby	1832
11219	Bixby	85
11220	Bixby	2906
11221	Cascade	3228
11222	Cascade	2334
11223	Cascade	3167
11224	Cascade	915
11225	Cascade	1931
11226	Shady Grove	1042
11227	Shady Grove	1786
11228	Shady Grove	1064
11229	Shady Grove	1175
11230	Sioux Pass	1669
11231	Gaviota	2107
11232	Westfall	1310
11233	Westfall	1193
11234	Vincent	195
11235	Vincent	2590
11236	Vincent	845
11237	Vincent	258
11238	Vincent	404
11239	Mancos	2615
11240	Binford	2020
11241	Birch Run	299
11242	Paola	669
11243	Andalusia	2575
11244	Andalusia	1363
11245	Agar	1424
11246	Monroe	1548
11247	Monroe	2535
11248	Monroe	1850
11249	Monroe	2350
11250	Monroe	3039
11251	Monroe	3137
11252	Monroe	2352
11253	Monroe	2368
11254	Monroe	2263
11255	Monroe	494
11256	Monroe	3209
11257	Monroe	243
11258	Monroe	1889
11259	Monroe	1945
11260	Monroe	1289
11261	Monroe	99
11262	Monroe	1638
11263	Monroe	785
11264	Kaufman	2361
11265	Paoli	90
11266	Paoli	3138
11267	Paoli	1560
11268	Paoli	1879
11269	Bowmanstown	3038
11270	Mount Pleasant Mills	2163
11271	Lockport Heights	1574
11272	Bel-Nor	3196
11273	Mahomet	519
11274	Knowles	955
11275	Knowles	1881
11276	Linn Grove	719
11277	Rohnerville	319
11278	Zillah	3268
11279	Tiskilwa	1704
11280	Burgess Junction	1225
11281	Mercury	874
11282	Mercury	1309
11283	San GermÃ¡n Zona Urbana	3129
11284	Brass Castle	2306
11285	Curlew	2785
11286	Curlew	3202
11287	Curlew	1150
11288	Snow Hill	1759
11289	Snow Hill	409
11290	Snow Hill	555
11291	Fultonville	724
11292	Brownsfield	1381
11293	Orangetree	832
11294	Crouse	1183
11295	Pinos Altos	1128
11296	Severna Park	2440
11297	Willsboro Point	2742
11298	Gilbert Creek	673
11299	Bryantown	335
11300	Bunnell	1696
11301	Cricket	446
11302	Palos Verdes Estates	404
11303	Barrows	704
11304	Brazilton	1414
11305	Dowling Park	3124
11306	Vredenburgh	2349
11307	Pennsville	2628
11308	Idleyld Park	2814
11309	Runnells	2539
11310	New Bloomington	692
11311	Riviera Beach	2627
11312	Riviera Beach	2440
11313	Riviera Beach	3071
11314	Whiskey Creek	2101
11315	Lasker	312
11316	Glenwood	2497
11317	Glenwood	2514
11318	Glenwood	1488
11319	Glenwood	1659
11320	Glenwood	2378
11321	Glenwood	2739
11322	Glenwood	1176
11323	Glenwood	3209
11324	Glenwood	465
11325	Glenwood	1889
11326	Glenwood	743
11327	Glenwood	964
11328	Glenwood	2489
11329	Glenwood	761
11330	Glenwood	149
11331	Glenwood	2644
11332	Glenwood	2040
11333	Glenwood	1458
11334	Silver Bay	1329
11335	Valley Falls	2828
11336	Valley Falls	1321
11337	Valley Falls	998
11338	Valley Falls	3162
11339	Valley Falls	929
11340	Sawmills	2852
11341	Taycheedah	2090
11342	Whittington	2139
11343	Quivero	353
11344	Sheyenne	349
11345	Stuarts Draft	1261
11346	Wilkesboro	446
11347	Portageville	1028
11348	Portageville	1857
11349	Furnace Creek	2411
11350	Murry Hill	483
11351	Trooper	731
11352	Eastanollee	2849
11353	Muscotah	3259
11354	Swenson	2155
11355	Beersheba Springs	2504
11356	Harleysville	731
11357	Graton	1790
11358	Turon	3201
11359	Pembina	2418
11360	Pellville	1971
11361	Oakgrove	2223
11362	Hobergs	1330
11363	Pembine	1728
11364	Oakhurst	278
11365	Oakhurst	2906
11366	Oakhurst	1563
11367	Oakhurst	2733
11368	Stillwell	1743
11369	Stillwell	2792
11370	Logansport	1311
11371	Logansport	3175
11372	Chesaw	1874
11373	Dorrance	1450
11374	Vicksburg	504
11375	Vicksburg	902
11376	Vicksburg	2638
11377	Vicksburg	419
11378	Vicksburg	2309
11379	South Wadesboro	1383
11380	Pinetop-Lakeside	3161
11381	New Franken	639
11382	Shivwits	472
11383	Black River Falls	1830
11384	Ellijay	2317
11385	Nehalem	2093
11386	Scotia	802
11387	Scotia	979
11388	Scotia	319
11389	Scotia	1606
11390	Gazelle	337
11391	Wilmot	238
11392	Wilmot	2862
11393	Wilmot	3241
11394	Wilmot	2582
11395	Wilmot	1026
11396	Bolingbrook	875
11397	Yemassee	1606
11398	Ages	1898
11399	Kalkaska	2439
11400	Bohon	2006
11401	Chapel Hill	444
11402	Chapel Hill	3135
11403	Chapel Hill	2465
11404	Braden	2568
11405	La Paz Valley	2638
11406	Saint Regis Park	997
11407	Boscobel	1131
11408	Weldon	570
11409	Weldon	552
11410	Weldon	2118
11411	Weldon	1920
11412	Weldon	263
11413	Weldon	1818
11414	Weldon	795
11415	Weldon	2484
11416	Reggio	2298
11417	Braidwood	875
11418	Sciotodale	3256
11419	Cavour	1419
11420	Cavour	2934
11421	Espy	1079
11422	Sherburne	2578
11423	Sherburne	650
11424	Plum Grove	3107
11425	Dewart	2963
11426	Keyes	1941
11427	Keyes	2199
11428	Frankton	2044
11429	Haldane	1978
11430	Competition	2904
11431	Walkers Mill	2632
11432	Charlotte Hall	2580
11433	Martinton	1955
11434	Maurine	1663
11435	Saddlebrooke	2950
11436	Le Mars	1935
11437	Nanafalia	1080
11438	Concan	2455
11439	Nunam Iqua	2367
11440	Utica	2318
11441	Utica	1481
11442	Utica	1046
11443	Utica	3238
11444	Utica	836
11445	Utica	2990
11446	Utica	2423
11447	Utica	437
11448	Utica	2426
11449	Utica	2145
11450	Utica	167
11451	Utica	388
11452	Utica	2507
11453	Utica	3255
11454	Utica	643
11455	Utica	3023
11456	G. L. GarcÃ­a Comunidad	547
11457	Bayside	904
11458	Bayside	3027
11459	Bayside	2919
11460	Zelienople	789
11461	Solana Beach	2381
11462	Skykomish	3217
11463	Wichita Falls	294
11464	Azalia	1553
11465	Hingham	1936
11466	Hingham	915
11467	Hingham	453
11468	Turpin Hills	2075
11469	Wattis	3037
11470	Port Sewall	2212
11471	Corona	1199
11472	Corona	3210
11473	Corona	3241
11474	Dammeron Valley	472
11475	North Wantagh	101
11476	Couchwood	2594
11477	Trotters	2965
11478	Vesper	2339
11479	Vesper	1193
11480	LeChee	353
11481	Lakeshore	937
11482	Lakeshore	1966
11483	Lakeshore	243
11484	Heltonville	531
11485	South Sanford	850
11486	Darrington	99
11487	Elk River	2444
11488	Elk River	3198
11489	Gosnell	938
11490	Martins Ferry	1591
11491	Mixersville	2122
11492	Orcutt	2107
11493	Gratis	241
11494	West Falls	1510
11495	West Falls	1029
11496	Valley Park	2831
11497	Valley Park	3196
11498	Valley Park	2380
11499	Los Serranos	721
11500	La Tina Ranch	1832
11501	Weaverville	2270
11502	Weaverville	317
11503	Alnwick	2421
11504	North Shore	2143
11505	Liberty Grove	652
11506	Hesler	1045
11507	Lorton	2405
11508	Lorton	2280
11509	Gomez	2212
11510	Gomez	3099
11511	Kalifornsky	1806
11512	Shingleton	2767
11513	Nitta Yuma	592
11514	Statenville	1400
11515	Lake Benton	1192
11516	Chateaugay	2131
11517	Cedarhurst	3217
11518	Cedarhurst	101
11519	Cedarhurst	2440
11520	Decatur	1645
11521	Decatur	1147
11522	Decatur	1448
11523	Decatur	1229
11524	Decatur	1751
11525	Decatur	1289
11526	Decatur	636
11527	Decatur	119
11528	Decatur	2433
11529	Decatur	1390
11530	Decatur	3158
11531	Warner	2731
11532	Warner	635
11533	Warner	598
11534	Rolla	1860
11535	Rolla	1303
11536	Rolla	1380
11537	Stanley Park	992
11538	Eastgate	3012
11539	Eastgate	3217
11540	Eastgate	3107
11541	Dunlo	3032
11542	Starrucca	2605
11543	Summerset	1663
11544	Cowan Heights	3140
11545	Haledon	792
11546	Ingraham	1540
11547	Grundy	2811
11548	Delano	2541
11549	Delano	263
11550	Delano	2826
11551	Delano	2291
11552	Datto	1534
11553	Patton	2173
11554	Patton	1246
11555	Patton	3032
11556	Telluride	1040
11557	Ismay	3060
11558	Hornbeck	225
11559	Canfield	2772
11560	Canfield	2839
11561	Manderfield	1882
11562	Esto	2276
11563	Osino	108
11564	First Colony	1890
11565	McPherson	2522
11566	Land O' Lakes	1159
11567	Land O' Lakes	1915
11568	Macland	394
11569	Wadesville	2859
11570	Catawba	1357
11571	Catawba	851
11572	Catawba	2526
11573	Catawba	2323
11574	Mount Cory	1972
11575	Gray Court	947
11576	Paulton	2385
11577	North Henderson	2004
11578	Callaway	3064
11579	Callaway	2458
11580	Callaway	902
11581	Ocracoke	2837
11582	Munhall	2632
11583	East Mountain	1659
11584	Aristes	1079
11585	Moapa Town	2329
11586	Amaya Colonia	417
11587	Dickens	1537
11588	Dickens	2554
11589	Dickens	1196
11590	Champlain	2743
11591	Champlain	2895
11592	Cedar Lake	2674
11593	Cedar Lake	1323
11594	Jacinto City	145
11595	Oak Lawn	761
11596	Puckett	2370
11597	Tinton Falls	278
11598	Samantha	1911
11599	Black	3234
11600	Black	2193
11601	Black	2208
11602	Mokelumne Hill	3144
11603	East Port Orchard	1048
11604	Fort Davis	793
11605	Fort Davis	3156
11606	Alto Pass	508
11607	Anthon	3024
11608	Ralston	1770
11609	Ralston	2224
11610	Ralston	2877
11611	Ralston	1254
11612	Ralston	1747
11613	Ralston	2824
11614	Ralston	1294
11615	Maple Glen	731
11616	Neptune	2007
11617	Natalbany	169
11618	Tedrow	2714
11619	Broeck Pointe	997
11620	Floral City	799
11621	Crestwood	761
11622	Crestwood	3196
11623	Crestwood	1692
11624	Greenough	3149
11625	Clifty	2650
11626	Clifty	2049
11627	Ipava	2712
11628	Conway Springs	2492
11629	Satilla	794
11630	Columbus Junction	58
11631	Noank	1593
11632	Chestnut Ridge	2960
11633	North Westminster	3097
11634	North Zanesville	338
11635	Hon	2249
11636	Cargray	3094
11637	Foreman	833
11638	Quail	1142
11639	Slocomb	2193
11640	CaÃ±on	971
11641	Harrell	1284
11642	Sunset Acres Colonia	817
11643	Newton Grove	286
11644	Mattapex	2701
11645	Woods Hole	1162
11646	San Diego Country Estates	2381
11647	Falman	3214
11648	Gloversville	2710
11649	Mount Airy	2707
11650	Mount Airy	456
11651	Mount Airy	2884
11652	Mount Airy	2232
11653	Waddy	193
11654	Hornbeak	346
11655	Tahuya	744
11656	Norfolk	1307
11657	Norfolk	2050
11658	Norfolk	834
11659	Norfolk	1990
11660	Battlefield	565
11661	Pompeys Pillar	332
11662	Ranshaw	2963
11663	Glen Rogers	1027
11664	Park Ridge	1572
11665	Park Ridge	1636
11666	Park Ridge	761
11667	Grantsboro	2255
11668	Concow	766
11669	Mogul	2332
11670	Monsey	2960
11671	West Hill	2946
11672	Varnado	488
11673	Yeddo	361
11674	Hegins	2826
11675	Chippewa Lake	828
11676	Harcuvar	2638
11677	Round Valley	2411
11678	Ladue	3196
11679	Cantonment	2667
11680	Martinville	333
11681	Hankinson	1673
11682	Wolf Lake	2458
11683	Wolf Lake	1485
11684	Loreauville	1178
11685	Bridgewater	2281
11686	Bridgewater	3238
11687	Bridgewater	2084
11688	Bridgewater	1936
11689	Bridgewater	1384
11690	Bridgewater	2343
11691	Bridgewater	1883
11692	Daisytown	3032
11693	Del City	958
11694	Sag Harbor	940
11695	Kooskia	1458
11696	Ronald	400
11697	Istachatta	3274
11698	Segno	2540
11699	Castleford	1402
11700	New Grand Chain	370
11701	Buttzville	2306
11702	Tecopa	2411
11703	Sale City	1475
11704	Irondequoit	2344
11705	Delhi Hills	2075
11706	Mendoza	2853
11707	Power	1393
11708	Island Grove	132
11709	New Weston	2636
11710	Bell Arthur	1503
11711	Rock Creek	998
11712	Rock Creek	1358
11713	Rock Creek	987
11714	Rock Creek	462
11715	Rock Creek	942
11716	Loogootee	2213
11717	Big Water	323
11718	Cuyamungue	1750
11719	Ramireno	2781
11720	Patetown	2598
11721	Chopin	2991
11722	Montrose	2678
11723	Montrose	948
11724	Montrose	1725
11725	Montrose	1110
11726	Montrose	1742
11727	Montrose	1919
11728	Montrose	2095
11729	Montrose	2343
11730	Montrose	404
11731	Montrose	59
11732	Montrose	3015
11733	Montrose	2862
11734	Montrose	174
11735	Montrose	2258
11736	Montrose	3040
11737	Montrose	2662
11738	Montrose	2291
11739	Nocona Hills	1148
11740	Walpole	1228
11741	Walpole	2618
11742	North Decatur	1751
11743	Lester	1634
11744	Lester	139
11745	Lester	3217
11746	Lester	2789
11747	Rutherford	3151
11748	Rutherford	1369
11749	Rutherford	1572
11750	Rutherford	3116
11751	Dock Junction	1102
11752	Emerald Bay	3140
11753	East Marion	940
11754	Black Walnut	1082
11755	North Royalton	708
11756	Mariemont	2075
11757	Argusville	3180
11758	Eagles Mere	1950
11759	Raritan	2654
11760	Raritan	129
11761	North Scituate	1936
11762	Auroraville	1210
11763	Union Center	235
11764	Concho	932
11765	New Willard	2540
11766	Valley-Hi	2717
11767	Voorhies	1901
11768	Trabuco Highlands	3140
11769	Grayland	2499
11770	Langhorne	2634
11771	East Pasadena	404
11772	Comfrey	637
11773	Montross	2384
11774	Mount Sidney	1261
11775	Mayday	2106
11776	Punxsutawney	1000
11777	Bemis	2678
11778	Bemis	2045
11779	Cisne	2610
11780	Spring Hill	2371
11781	Spring Hill	1586
11782	Spring Hill	1272
11783	Spring Hill	2308
11784	Spring Hill	1709
11785	Spring Hill	1175
11786	Spring Hill	3274
11787	Spring Hill	2398
11788	Spring Hill	3032
11789	Parcelas Nuevas Comunidad	1066
11790	Camp Point	1291
11791	Highlandville	2624
11792	Highlandville	2950
11793	Lava Hot Springs	2863
11794	Burlington Junction	2810
11795	Lake Bosworth	99
11796	Delaplaine	560
11797	East Naples	832
11798	Morehouse	1857
11799	Jean Lafitte	1005
11800	Fairview Heights	918
11801	Grimesland	1503
11802	Crandon Lakes	1889
11803	Pataskala	3255
11804	La Croft	1662
11805	Massieville	1257
11806	Twin Oaks	3196
11807	Twin Oaks	2808
11808	West Boxford	2745
11809	Merigold	1565
11810	Bonaparte	2430
11811	Whyte	1329
11812	Hordville	2078
11813	Bolingbroke	2359
11814	Toa Alta Zona Urbana	841
11815	North Wolcott	448
11816	Maypearl	823
11817	Oak Island	1343
11818	Oak Island	2395
11819	Hidden Hills	404
11820	Agra	1558
11821	Agra	1188
11822	Poway	2381
11823	Panaca	1206
11824	Alger	1422
11825	Alger	2388
11826	Gabbs	874
11827	Nobleton	3274
11828	East Rochester	2344
11829	East Rochester	1883
11830	East Rochester	1662
11831	Peculiar	3178
11832	Goodings Grove	875
11833	Ravensdale	3217
11834	Norfork	2459
11835	Leander	121
11836	Leander	225
11837	West Baden Springs	3138
11838	Oconto	3064
11839	Oconto	2776
11840	Mandan	1379
11841	Purple Sage	3093
11842	Hubbard	677
11843	Hubbard	2865
11844	Hubbard	2946
11845	Hubbard	2784
11846	Hubbard	452
11847	Hubbard	2387
11848	Orocovis	2783
11849	IXL	87
11850	Santa Clara Pueblo	2725
11851	Dillsboro	1807
11852	Dillsboro	154
11853	Parker Ford	90
11854	Olsburg	2033
11855	Cataula	146
11856	New Kent	2788
11857	Rich Pond	2305
11858	Sleeper	2904
11859	Mabana	1220
11860	South Brooksville	3274
11861	New Morgan	362
11862	Medical Lake	1431
11863	Calvary	2494
11864	Calvary	680
11865	Notchietown	1140
11866	Lilbert	1666
11867	Kinderhook	1170
11868	Kinderhook	1073
11869	Dundalk	1498
11870	West Pawlet	2588
11871	Diamond Lake	2814
11872	Diamond Lake	1326
11873	Great Neck Plaza	101
11874	Brickeys	2104
11875	Uehling	956
11876	Genoa	1730
11877	Genoa	226
11878	Genoa	2077
11879	Genoa	3114
11880	Genoa	2825
11881	Genoa	1200
11882	Genoa	1755
11883	Genoa	2703
11884	Mabank	2361
11885	Apalachicola	2134
11886	New Munster	2582
11887	Lake of the Pines	1784
11888	Richboro	2634
11889	Diomede	717
11890	The Woodlands	734
11891	Havre de Grace	2959
11892	Millport	892
11893	Millport	1524
11894	Spring Brook	1510
11895	Spring Brook	377
11896	Lustre	3168
11897	Wachapreague	3027
11898	Delaware	2306
11899	Delaware	3203
11900	Delaware	2805
11901	Delaware	2806
11902	Delaware	2187
11903	Lake Lorraine	2038
11904	Buchanan	2645
11905	Buchanan	1919
11906	Buchanan	1767
11907	Buchanan	2475
11908	Buchanan	2577
11909	Clarks Green	3057
11910	Porthill	2022
11911	Briarcliffe Acres	3220
11912	Boger City	1183
11913	McLemoresville	2221
11914	Steinhatchee	1064
11915	Sweet Valley	2641
11916	Longs	3220
11917	Livingston Manor	1946
11918	Mastic Beach	940
11919	Ida Grove	3054
11920	Mendota	1620
11921	Mendota	937
11922	Mendota	2507
11923	Mendota	2864
11924	Mendota	491
11925	Heyburn	2299
11926	Barbourville	587
11927	Tin City	717
11928	Panco	1528
11929	Dortches	3187
11930	Pierre Part	771
11931	University Gardens	101
11932	Saint Bonifacius	91
11933	Burkett	897
11934	Grass Lake	1819
11935	Salyer	317
11936	Empire	2958
11937	Empire	2787
11938	Empire	1006
11939	Empire	2332
11940	Empire	2473
11941	Empire	1941
11942	Empire	2864
11943	Empire	954
11944	Carpentersville	322
11945	Thompson's Station	122
11946	Morrisonville	2949
11947	Morrisonville	2895
11948	Sawyer	895
11949	Sawyer	780
11950	Sawyer	336
11951	Sawyer	1767
11952	Sawyer	3268
11953	Sawyer	1551
11954	Tradewinds	3214
11955	Patriot	2856
11956	West Lafayette	56
11957	West Lafayette	596
11958	Hye	551
11959	Redondo	3217
11960	Middle Valley	2073
11961	Royal Center	3175
11962	Konnarock	491
11963	Oakwood Manor	1541
11964	Glen Allan	485
11965	New Raymer	1101
11966	Lyndonville	2765
11967	Lyndonville	1437
11968	Estill Springs	2123
11969	Banner	1278
11970	Banner	3276
11971	Banner	1225
11972	Banner	2712
11973	Melrose Park	2023
11974	Melrose Park	761
11975	Melrose Park	731
11976	Pine Rest	95
11977	Caldwell	2492
11978	Caldwell	3231
11979	Caldwell	820
11980	Caldwell	2744
11981	Caldwell	2039
11982	Caldwell	2836
11983	Caldwell	2980
11984	Lowelltown	2124
11985	Jane	204
11986	Paxtonia	1369
11987	Leyden	837
11988	Leyden	992
11989	Prospect	2959
11990	Prospect	2256
11991	Prospect	789
11992	Prospect	3238
11993	Prospect	997
11994	Prospect	3233
11995	Prospect	1129
11996	Prospect	692
11997	Prospect	1808
11998	Prospect	1365
11999	Avenel	94
12000	Sarita	196
12001	Denham Springs	385
12002	Borger	1758
12003	Okahumpka	1331
12004	Smith Village	958
12005	Pinson	987
12006	Pinson	2045
12007	Cardiff	987
12008	Cardiff	2959
12009	Cardiff	3003
12010	Kukuihaele	1488
12011	Bandera Falls	2917
12012	Houston Lake	1851
12013	Canoochee	301
12014	Clarksfield	341
12015	Mint Hill	2177
12016	Bernstein	1520
12017	Whitnel	2852
12018	Silica	2942
12019	Davis	2194
12020	Davis	1092
12021	Davis	959
12022	Davis	2535
12023	Davis	709
12024	Davis	1182
12025	Eastwood	1635
12026	Eastwood	2385
12027	Eastwood	419
12028	Balfour	2651
12029	Balfour	3191
12030	McCammon	2863
12031	South Lima	386
12032	Wind Ridge	561
12033	Appalachia	1146
12034	Gamewell	2852
12035	Trout Lake	149
12036	Trout Lake	662
12037	Copper Center	3172
12038	Village Mills	2389
12039	Imperial Beach	2381
12040	Susan Moore	2420
12041	Bokhoma	229
12042	Peninsula	1725
12043	Victory Lakes	2626
12044	North Browning	1740
12045	Marlboro	238
12046	Marlboro	2888
12047	Marlboro	278
12048	Marlboro	1952
12049	Boatman	1884
12050	Woodlake	308
12051	Woodlake	316
12052	Woodlake	1615
12053	Dimock	1757
12054	Navesink	278
12055	Dysart	1861
12056	Hartville	238
12057	Hartville	2292
12058	Hartville	1849
12059	Iron Hill	2562
12060	Naugatuck	2409
12061	DeWeese	1429
12062	Bee Cave	3050
12063	Soquel	1362
12064	Grovont	1391
12065	Bass Lake	1563
12066	Bass Lake	1655
12067	David	270
12068	Sunnydale	3217
12069	Davie	2729
12070	Winifred	2471
12071	Winifred	2061
12072	Lonsdale	2446
12073	Lonsdale	2748
12074	Bethel Heights	1645
12075	Town and Country	3196
12076	Town and Country	1431
12077	Shoreview	654
12078	Coeburn	1146
12079	Log Cabin	2652
12080	Steamboat Springs	1519
12081	Dobbins	1775
12082	Francesville	369
12083	Ordway	1167
12084	Whigham	2494
12085	Garyville	935
12086	Morgan City	119
12087	Morgan City	2490
12088	Morgan City	1116
12089	Wildrose	377
12090	Pharr	1353
12091	Telida	1462
12092	La Junta Gardens	345
12093	Wendell	1122
12094	Wendell	1399
12095	Wendell	1490
12096	Belle Mead	129
12097	Ford City	263
12098	Ford City	528
12099	Ford City	775
12100	Willows	381
12101	Willows	2983
12102	Lewiston Woodville	1681
12103	Pe Ell	2533
12104	Geeville	2517
12105	Boicourt	945
12106	Glen Allen	683
12107	Glen Allen	59
12108	Brantford	349
12109	Truchas	2725
12110	Goldvein	3224
12111	Pritchett	1893
12112	Pritchett	1659
12113	Pittwood	1955
12114	San Juan	1353
12115	San Juan	1128
12116	San Juan	2928
12117	Uhland	2853
12118	Streamwood	761
12119	North Buena Vista	1942
12120	Finneytown	2075
12121	Renwick	318
12122	Biggs Junction	2079
12123	Beckville	1513
12124	Puxico	2092
12125	South Temple	362
12126	Avenal	861
12127	Whitney	2329
12128	Whitney	455
12129	Whitney	2144
12130	Whitney	452
12131	North Collins	1510
12132	Monteith	3257
12133	Trumbull	1535
12134	Trumbull	408
12135	Trumbull	823
12136	Dunken	1336
12137	Georgiana	787
12138	Shingle Springs	1594
12139	Coaling	1911
12140	Davey	1138
12141	WaiheÊ»e	2438
12142	Cape Charles	313
12143	Williams Creek	678
12144	Greeleyville	2429
12145	Tutuilla	1544
12146	Fitzhugh	663
12147	Fitzhugh	133
12148	Edgemere	1498
12149	West Sullivan	1411
12150	Mocksville	2912
12151	Macksburg	489
12152	Macksburg	2051
12153	MÄkaha	1878
12154	Fircrest	1925
12155	Bradenton Beach	2834
12156	Mastic	940
12157	Mendota Heights	2864
12158	Crystal River	799
12159	Punta Santiago Comunidad	2170
12160	Spread Eagle	1587
12161	East Brady	297
12162	Pine Orchard	261
12163	Altura	2423
12164	Fort Jennings	2756
12165	Lenoxburg	3266
12166	Key Colony Beach	2348
12167	Palmas del Mar Comunidad	2170
12168	Esbon	174
12169	Vernal	1443
12170	Sanatoga	731
12171	Kykotsmovi Village	3161
12172	Alorton	918
12173	Cisco	1463
12174	Cisco	1995
12175	Cisco	1152
12176	Cisco	2196
12177	Tolono	519
12178	Romeoville	875
12179	Desert Center	3210
12180	Black Oak	2621
12181	Black Oak	1323
12182	Gaines	2151
12183	Gaines	2258
12184	Grassy	2173
12185	Ê»Ewa Beach	1878
12186	Tillson	1952
12187	Barker Heights	2651
12188	Port Matilda	393
12189	Mound City	370
12190	Mound City	1870
12191	Mound City	945
12192	Mound City	175
12193	Villa Verde	1353
12194	New Tokeen	1345
12195	Belzoni	2425
12196	Thayer	695
12197	Thayer	852
12198	Thayer	505
12199	Thayer	603
12200	Thayer	1690
12201	Hamburg	2137
12202	Hamburg	1889
12203	Hamburg	1510
12204	Hamburg	967
12205	Hamburg	337
12206	Hamburg	1280
12207	Hamburg	1975
12208	Hamburg	362
12209	Hamburg	2862
12210	Hamburg	1037
12211	Algoma	1566
12212	Algoma	134
12213	Algoma	623
12214	Port Vue	2632
12215	Woodland	699
12216	Woodland	1497
12217	Woodland	2235
12218	Woodland	1161
12219	Woodland	198
12220	Woodland	1726
12221	Woodland	1300
12222	Woodland	2683
12223	Woodland	312
12224	Woodland	625
12225	Woodland	91
12226	Woodland	1955
12227	Woodland	469
12228	Woodland	709
12229	Bergton	2084
12230	Lovells	1418
12231	Offerle	1651
12232	Lostine	2693
12233	Pickering	2810
12234	Sitka	3026
12235	Sitka	1270
12236	Sitka	2324
12237	Bennettsville	2888
12238	Trotwood	737
12239	Stillman Valley	1978
12240	Golden	2340
12241	Golden	229
12242	Golden	624
12243	Golden	1291
12244	Golden	1750
12245	Golden	992
12246	Golden	173
12247	Arecibo Zona Urbana	2087
12248	Java	1093
12249	Umapine	1544
12250	Woodmont Beach	3217
12251	Winton	3195
12252	Winton	1985
12253	Winton	1439
12254	Winton	276
12255	Cranfills Gap	340
12256	Chiefland	1455
12257	Algona	1598
12258	Algona	3217
12259	Sibley	1288
12260	Sibley	2341
12261	Sibley	232
12262	Sibley	2594
12263	Sibley	2158
12264	Sibley	1826
12265	Seeley	153
12266	Dunedin	2785
12267	Carbon	1463
12268	Carbon	1526
12269	Carbon	1287
12270	Sweet Home	978
12271	Sweet Home	943
12272	Sweet Home	375
12273	Everman	3084
12274	Guernsey	1849
12275	Guernsey	2265
12276	Angola on the Lake	1510
12277	Freeburn	1172
12278	Whitfield	758
12279	Whitfield	362
12280	Pinewood	1705
12281	Pinewood	546
12282	Pinewood	515
12283	Freeburg	918
12284	Freeburg	2163
12285	Freeburg	1155
12286	Port Leyden	2529
12287	North Naples	832
12288	Heartwell	1697
12289	Brandonville	1961
12290	Brandonville	2826
12291	Arbovale	1243
12292	Slickville	2385
12293	Algood	2753
12294	Redvale	2662
12295	Hanalei	2209
12296	Ida	306
12297	Ida	3276
12298	Ida	2352
12299	Saint Johns	2903
12300	Saint Johns	1842
12301	Saint Johns	3196
12302	Saint Johns	932
12303	Saint Johns	3007
12304	Teeds Grove	2896
12305	Natural Steps	375
12306	Cocoa	2189
12307	Wewela	922
12308	Cullomburg	894
12309	Halliday	2968
12310	Halliday	560
12311	Monson	308
12312	Katonah	1919
12313	Oppelo	1573
12314	Lake Annette	3178
12315	Upper Lake	1330
12316	Hurley	2666
12317	Hurley	2535
12318	Hurley	2811
12319	Hurley	1822
12320	Hurley	1952
12321	Hurley	1863
12322	Hurley	1128
12323	South Charleston	2323
12324	South Charleston	1467
12325	Charlestown	1949
12326	Charlestown	2318
12327	Charlestown	652
12328	Charlestown	478
12329	Littlefork	296
12330	Florida Zona Urbana	1219
12331	Corral Viejo	459
12332	Grant Town	686
12333	Kings Mountain	857
12334	Jamesport	436
12335	Jamesport	940
12336	Aumsville	677
12337	Cacao Comunidad	591
12338	Union Level	2178
12339	Kansas	2262
12340	Kansas	1349
12341	Kansas	2192
12342	Kansas	2808
12343	North Ogden	1433
12344	Sylacauga	1407
12345	Campaign	2304
12346	Soda Bay	1330
12347	Laketown	2746
12348	Woodward	522
12349	Woodward	393
12350	Woodward	3082
12351	Olton	1374
12352	Lockbourne	2141
12353	McLendon-Chisholm	2985
12354	Brackettville	242
12355	Richmond	1481
12356	Richmond	1006
12357	Richmond	2056
12358	Richmond	1709
12359	Richmond	1890
12360	Richmond	325
12361	Richmond	2600
12362	Richmond	3058
12363	Richmond	2709
12364	Richmond	3192
12365	Richmond	63
12366	Richmond	3143
12367	Richmond	2133
12368	Richmond	2801
12369	Richmond	2046
12370	Richmond	833
12371	Maryneal	1009
12372	Votaw	2389
12373	BreÃ±as Comunidad	707
12374	Summerton	1355
12375	Newport News	2797
12376	Sodus	2599
12377	Kempster	2639
12378	Antigo	2639
12379	Force	162
12380	Country Walk	1705
12381	Las Quintas Fronterizas Colonia	867
12382	Enosburg Falls	2121
12383	Parkland	1925
12384	Parkland	2729
12385	El Valle de Arroyo Seco	1750
12386	Richview	487
12387	Ankona	1577
12388	Eton	2196
12389	Cuyahoga Heights	708
12390	Bluewell	2003
12391	South Gastonia	2835
12392	Roseboro	286
12393	Cross Anchor	3162
12394	San de Fuca	1220
12395	Linganore	3153
12396	McCausland	2239
12397	Four States	686
12398	Ceresco	3236
12399	Ridgeside	2073
12400	Diamond Ridge	1806
12401	Little Round Lake	2833
12402	Merritt Island	2189
12403	Jourdanton	1017
12404	Etna	1421
12405	Etna	2632
12406	Etna	700
12407	Etna	3255
12408	Etna	1186
12409	Etna	337
12410	Marcella	2877
12411	Trafalgar	1264
12412	Wilroads Gardens	233
12413	Shell Valley	1860
12414	Grove Lake	2644
12415	Ledger	1473
12416	Ledger	577
12417	Koontz Lake	1655
12418	Rangely	1938
12419	De Graff	2184
12420	De Graff	1956
12421	Antioch	3143
12422	Antioch	1227
12423	Antioch	1326
12424	Antioch	2358
12425	Antioch	1879
12426	Hewlett Harbor	101
12427	Igo	2883
12428	Burkettsville	2007
12429	Hamiltons Fort	1864
12430	Smithboro	3127
12431	Fords	94
12432	Valton	1344
12433	Fletcher	91
12434	Fletcher	668
12435	Fletcher	2512
12436	Fletcher	1744
12437	Fletcher	2651
12438	Roosevelt Park	1485
12439	Fort Laramie	356
12440	Girdletree	1759
12441	Westbury	101
12442	Neely	563
12443	Thurmond	2564
12444	Rail Road Flat	3144
12445	Terra Bella	308
12446	San GermÃ¡n	3129
12447	Little Mountain	1657
12448	Big Prairie	2277
12449	Belva	1347
12450	Belva	3082
12451	Long Creek	3158
12452	Long Creek	1117
12453	Ellsinore	2561
12454	Montoursville	1770
12455	Lucero	3190
12456	Maple Falls	1983
12457	Seattle Heights	99
12458	Blackhawk	1663
12459	Blackhawk	3143
12460	Shevlin	3199
12461	Amite	169
12462	Donnelly	658
12463	Donnelly	1561
12464	Donnelly	3167
12465	Grafton	701
12466	Grafton	2633
12467	Grafton	1523
12468	Grafton	1835
12469	Grafton	845
12470	Grafton	608
12471	Grafton	1059
12472	Sausalito	1515
12473	Orange	3140
12474	Orange	3142
12475	Orange	708
12476	Orange	3139
12477	Orange	3106
12478	Orange	2409
12479	Orange	2129
12480	Bitter Creek	3093
12481	Crescent Park	2397
12482	Veal	2230
12483	Thurmont	3153
12484	Crystal Hill	796
12485	Lake Kiowa	2161
12486	Rush Hill	2945
12487	Yellow Springs	566
12488	New Washoe City	2332
12489	Pine Hill	1952
12490	Pine Hill	409
12491	Pine Hill	2977
12492	McKinley	3195
12493	Fern Park	1627
12494	Bellview	2667
12495	Bellview	812
12496	Etra	2009
12497	Lockney	269
12498	Cruger	2278
12499	Wellston	3196
12500	Wellston	2162
12501	Wellston	1188
12502	Wellston	1828
12503	Wilderville	2203
12504	Rosemont	761
12505	Rosemont	731
12506	Rosemont	2596
12507	Rosemont	2688
12508	Rosemont	3153
12509	Amity	1756
12510	Amity	3137
12511	Amity	2325
12512	Amity	1264
12513	Amity	363
12514	Solitude	2859
12515	Monaville	2179
12516	Citrus Springs	799
12517	Dryville	362
12518	Bayou Vista	2523
12519	Bayou Vista	2490
12520	Glyndon	1530
12521	Ossining	1919
12522	Coldstream	997
12523	Duvall	3217
12524	Medford	1065
12525	Medford	85
12526	Medford	940
12527	Medford	1808
12528	Medford	1119
12529	Medford	95
12530	Cumberland Head	2895
12531	Woodlawn	1498
12532	Woodlawn	2075
12533	Woodlawn	2231
12534	Woodlawn	2378
12535	Woodlawn	179
12536	Woodlawn	3069
12537	Woodlawn	1004
12538	Blytheville	938
12539	Converse	1032
12540	Converse	3162
12541	Converse	1083
12542	Converse	667
12543	Sattley	171
12544	Spangle	1431
12545	Boise	3217
12546	Boise	1691
12547	Boise	157
12548	Pawcatuck	1593
12549	Papillion	1014
12550	French Gulch	2883
12551	Piedra Aguza Comunidad	846
12552	Saltillo	2550
12553	Saltillo	3252
12554	Saltillo	466
12555	Saltillo	2390
12556	Saltillo	2096
12557	Donnan	2565
12558	West Pasco	2127
12559	Hermitage	2010
12560	Hermitage	1694
12561	Hermitage	1051
12562	Lykens	1369
12563	Ogema	2458
12564	Ogema	1357
12565	Throckmorton	3185
12566	Plain View	286
12567	Elora	1187
12568	Alsace Manor	362
12569	Condit	2806
12570	Shepherdstown	991
12571	Navy Yard City	1048
12572	Harvey Cedars	2627
12573	Pocola	2263
12574	Loxahatchee Groves	3071
12575	Statesville	422
12576	Statesville	2939
12577	Center Line	1481
12578	Holiday Lake	2265
12579	Avenue	2580
12580	Tivoli	3031
12581	Tivoli	2919
12582	Etta	506
12583	Bloomsdale	2631
12584	Paradis	1081
12585	Railroad	853
12586	Donnellson	2095
12587	Donnellson	735
12588	Rainsburg	2954
12589	Wacousta	2903
12590	Fischer	611
12591	Clearwater	646
12592	Clearwater	887
12593	Clearwater	2785
12594	Clearwater	2111
12595	Clearwater	2291
12596	Chatmoss	1115
12597	Dow City	1408
12598	East Claridon	1899
12599	Plymptonville	1300
12600	Smiths Ferry	3167
12601	Accomac	3027
12602	Las Quintas Fronterizas	867
12603	Plainedge	101
12604	Pillow	1369
12605	Ila	2058
12606	Taylor Mill	2397
12607	Neylandville	3215
12608	Ottoville	2756
12609	Sheppard	1586
12610	Watauga	2559
12611	Watauga	3084
12612	Watauga	2296
12613	San Patricio	3214
12614	San Patricio	1199
12615	Kremmling	1151
12616	Winfred	1327
12617	Glen Rose	694
12618	Dallasburg	2312
12619	Pentwater	3166
12620	Kaneville	322
12621	Yabucoa Zona Urbana	280
12622	Creal Springs	123
12623	Morgnec	217
12624	Great Neck	101
12625	McCoy	739
12626	McCoy	2974
12627	McCoy	1017
12628	McVeytown	2474
12629	Unadilla	778
12630	Unadilla	454
12631	Unadilla	2280
12632	Northcote	2857
12633	Shamokin	2963
12634	Bumble Bee	2495
12635	Noble	1032
12636	Noble	1670
12637	Noble	859
12638	Vincentown	2841
12639	Chetek	2315
12640	Essex Fells	2744
12641	Bellmore	101
12642	Saunders	2154
12643	Austinburg	462
12644	Kylertown	1300
12645	Paul Spur	3232
12646	Wallstreet	2267
12647	Dunbarton	1680
12648	Salton City	153
12649	Gould City	1701
12650	Live Oak Springs	2381
12651	Bon Wier	1233
12652	Almanor	3011
12653	Ina	1004
12654	Brock Hall	2064
12655	Prairie Farm	2315
12656	Piperton	2568
12657	Dilkon	3161
12658	Cochran	61
12659	Cochran	3200
12660	Vega	1691
12661	Donner	910
12662	Hymera	1947
12663	Haughton	1635
12664	Olmsted Falls	708
12665	Gaskin	1547
12666	Stuttgart	2623
12667	Villa Grove	2816
12668	Villa Grove	384
12669	Demopolis	1080
12670	Nikolski	1974
12671	North Prairie	2426
12672	North Rock Springs	3093
12673	Mulino	3223
12674	Fort Myers	2101
12675	Chateau Woods	734
12676	Alcoa Center	2385
12677	Manley Hot Springs	1462
12678	Bracey	2178
12679	Bellmont	1246
12680	Mosinee	628
12681	Harlem Springs	2229
12682	Forks	185
12683	Di Giorgio	263
12684	Saint Francis	680
12685	Saint Francis	714
12686	Saint Francis	904
12687	Saint Francis	2648
12688	Saint Francis	1534
12689	Saint Francis	1611
12690	Saint Francis	1260
12691	Milford Center	510
12692	Ruby Valley	108
12693	Linfield	731
12694	Centreville	918
12695	Centreville	2701
12696	Centreville	182
12697	Centreville	1582
12698	Centreville	3103
12699	Centreville	2405
12700	Brookfield Center	2946
12701	Cherokee Pass	2055
12702	Hartley	1885
12703	Hartley	2867
12704	Hartley	3263
12705	Beechwood Village	997
12706	Wiscasset	1189
12707	Greilickville	2787
12708	La Conner	1422
12709	Grapeville	2385
12710	Marvell	1559
12711	Valhalla	1478
12712	Valhalla	1919
12713	Dugway	1622
12714	Stuart	3053
12715	Stuart	889
12716	Stuart	1869
12717	Stuart	3257
12718	Stuart	2212
12719	Monfort Heights	2075
12720	Yutan	3236
12721	Inkerman	2641
12722	Welcome	2031
12723	Welcome	1275
12724	Welcome	2211
12725	Welcome	2759
12726	The Acreage	3071
12727	Belpre	489
12728	Belpre	1651
12729	Sugar Notch	2641
12730	Valencia	3272
12731	Valencia	789
12732	Red Elm	1918
12733	Newaukum	3217
12734	Yoder	356
12735	Yoder	443
12736	Yoder	3228
12737	Yoder	3201
12738	Clallam Bay	185
12739	Branchburg Park	129
12740	Owings Mills	1498
12741	Big Oak Flat	2798
12742	Minneota	140
12743	Libbyville	1013
12744	El Vado	2725
12745	San Jose	2198
12746	San Jose	1039
12747	San Jose	2181
12748	San Jose	2013
12749	Menan	1008
12750	Kelloggsville	462
12751	Walterville	1446
12752	Pimaco Two	1247
12753	North Truro	1162
12754	Wolverine Lake	2663
12755	Kingwood	1961
12756	Kingwood	145
12757	Niter	461
12758	Carroll Valley	1298
12759	Radom	487
12760	Duquoin	1794
12761	Smale	2350
12762	Brinkman	2365
12763	Nashville	487
12764	Nashville	260
12765	Nashville	612
12766	Nashville	1766
12767	Nashville	632
12768	Nashville	3068
12769	Nashville	2277
12770	Nashville	2760
12771	Nashville	3187
12772	Nashville	2910
12773	Nashville	625
12774	Farnhamville	1277
12775	Longstreet	1311
12776	Miltonvale	2947
12777	Union Springs	2023
12778	Union Springs	1441
12779	Shadeland	596
12780	Pelkie	2149
12781	Springville	1776
12782	Springville	917
12783	Springville	385
12784	Springville	1510
12785	Springville	134
12786	Springville	705
12787	Springville	3015
12788	Springville	308
12789	Springville	944
12790	Clementon	2977
12791	Ira	3039
12792	Ira	3193
12793	McDermott	3256
12794	Elberton	1464
12795	Elberton	1877
12796	Buttonwillow	263
12797	Neskowin	2093
12798	Caddo Gap	730
12799	Strevell	2382
12800	Grand Pass	107
12801	Readsville	2551
12802	Palo Verde	3086
12803	Palo Verde	153
12804	Jacob Lake	353
12805	Parachute	3003
12806	McDavid	2667
12807	Boyden Arbor	1675
12808	Leisure Village	2627
12809	Pleasant Hills	2075
12810	Pleasant Hills	2632
12811	Pleasant Hills	2959
12812	Sulphurdale	1882
12813	Beaulieu	1494
12814	North Hudson	649
12815	Agua Nueva	3189
12816	Averill Park	2828
12817	Frenchman	3012
12818	Rose Hill	3126
12819	Rose Hill	3043
12820	Rose Hill	786
12821	Rose Hill	2103
12822	Rose Hill	2669
12823	Foxfire	326
12824	Galway	1484
12825	Raynham	2256
12826	Wedgefield	3141
12827	Wedgefield	515
12828	Graball	2491
12829	Institute	1708
12830	Sun Prairie	749
12831	Sun Prairie	1557
12832	Kenilworth	3037
12833	Kenilworth	761
12834	Kenilworth	90
12835	Kenilworth	502
12836	Donahue	2239
12837	Bogata	2235
12838	Kell	690
12839	Beaver Dam	955
12840	Beaver Dam	829
12841	Beaver Dam	2780
12842	Kimbolton	3048
12843	Jordan	3001
12844	Jordan	1355
12845	Jordan	2246
12846	Jordan	247
12847	Jordan	2979
12848	West Hartford	1712
12849	Sherwood Shores	3261
12850	Alleyton	206
12851	West Rushville	406
12852	Gunbarrel	2267
12853	Council Bluffs	3016
12854	Mustang	881
12855	Mustang	1368
12856	Chicago Ridge	761
12857	KaluaÊ»aha	2438
12858	Bogart	644
12859	Bloomington	91
12860	Bloomington	1632
12861	Bloomington	2128
12862	Bloomington	2202
12863	Bloomington	2800
12864	Bloomington	310
12865	Bloomington	1131
12866	Bloomington	2283
12867	Bloomington	721
12868	Bloomington	2345
12869	Crestview	179
12870	Crestview	2038
12871	White Deer	3094
12872	Sonoita	1361
12873	Letha	1608
12874	Sweatman	733
12875	McKittrick	263
12876	McKittrick	736
12877	Nanty Glo	3032
12878	Askewville	1681
12879	Wikieup	829
12880	Lumpkin	1100
12881	Allenton	476
12882	Big Clifty	3262
12883	Greenvale	101
12884	Lambrook	1559
12885	Lake Heritage	1298
12886	Leland	2787
12887	Leland	2203
12888	Leland	2395
12889	Leland	394
12890	Leland	2692
12891	Leland	2507
12892	Leland	989
12893	Leland	1344
12894	Leland	485
12895	Conestoga	1139
12896	Wilsonia	308
12897	Wilsonia	1163
12898	Hilgard	495
12899	Romancoke	2701
12900	Sand Rock	433
12901	Westphalia	2903
12902	Westphalia	1394
12903	Westphalia	581
12904	Westphalia	187
12905	Westphalia	2064
12906	Westphalia	1155
12907	Gleed	3268
12908	Highgrove	3210
12909	Houserville	393
12910	Kesley	782
12911	Zimmerman	2444
12912	Zimmerman	2402
12913	Jamieson	2441
12914	Jamieson	1310
12915	McClelland	3016
12916	Claudell	1602
12917	Santa Maria	1832
12918	Santa Maria	2107
12919	Hampton Beach	2085
12920	Hogansville	754
12921	Seat Pleasant	2064
12922	Red Lick	1002
12923	Red Lick	826
12924	Wanakah	1510
12925	Blende	2030
12926	Bogard	2228
12927	Seligman	2495
12928	Seligman	624
12929	Jeffers	2043
12930	Jeffers	3122
12931	Keno	759
12932	Stony River	2260
12933	Wrightstown	639
12934	Wrightstown	2841
12935	Wrightstown	2763
12936	Corralitos	1362
12937	Knowlton	628
12938	Knowlton	3060
12939	Yellow Lake	1745
12940	Rodney	3000
12941	Rodney	1002
12942	Semmes	1301
12943	Clover	796
12944	Clover	1402
12945	Clover	851
12946	Campia	2315
12947	Cornwells Heights	2634
12948	East Griffin	2148
12949	Lee Center	2098
12950	Argonia	2492
12951	Old Bennington	1780
12952	Ê»UalapuÊ»e	2438
12953	Mucarabones	841
12954	Tennessee City	2434
12955	Aynor	3220
12956	Iva	1397
12957	Rogue River	1808
12958	Seeley Lake	3149
12959	Sanger	2452
12960	Sanger	937
12961	Blue Ridge	1335
12962	Blue Ridge	808
12963	Blue Ridge	631
12964	Blue Ridge	2475
12965	Babbs	1992
12966	Citra	682
12967	Dillwyn	1089
12968	Kemp	70
12969	Kemp	2361
12970	Lake Toxaway	822
12971	Bay Pines	2785
12972	Grandwood Park	1326
12973	Lake Station	1323
12974	Seadrift	1279
12975	Grand Point	1275
12976	Manila	938
12977	Manila	319
12978	Manila	3161
12979	Manila	2285
12980	Mountainburg	1415
12981	Ivy	2829
12982	Lyncourt	2979
12983	Palmhurst	1353
12984	Danvers	1956
12985	Danvers	2283
12986	Danvers	2061
12987	Danvers	2745
12988	Ubly	342
12989	Dungeness	185
12990	Vann Crossroads	286
12991	Heidrick	587
12992	Montpelier	2645
12993	Montpelier	464
12994	Montpelier	378
12995	Montpelier	1632
12996	Montpelier	900
12997	Montpelier	1538
12998	Montpelier	1941
12999	Montpelier	3216
13000	Lynch	1898
13001	Lynch	72
13002	Lynch	1420
13003	Lynch	217
13004	Wabbaseka	988
13005	Owenton	1654
13006	Owenton	1045
13007	Rose Lodge	1184
13008	Kent	3217
13009	Kent	1097
13010	Kent	808
13011	Kent	2404
13012	Kent	244
13013	Kent	505
13014	Kent	627
13015	Kent	984
13016	Kent	1637
13017	Kent	2079
13018	Sunset Colonia	166
13019	Ortley	3241
13020	Big Timber	2217
13021	Wonder Lake	3192
13022	South Canal	2946
13023	La Casita	166
13024	East Arcadia	2063
13025	Munsey Park	101
13026	Swisshome	1446
13027	Golden Meadow	1574
13028	Fithian	2036
13029	Beach City	238
13030	Beach City	1343
13031	Willow City	1717
13032	Bryceville	100
13033	Silver Lake	1321
13034	Silver Lake	95
13035	Silver Lake	1331
13036	Silver Lake	1843
13037	Silver Lake	2940
13038	Silver Lake	1725
13039	Silver Lake	718
13040	Silver Lake	2386
13041	Silver Lake	198
13042	Silver Lake	254
13043	Silver Lake	2582
13044	Chimacum	989
13045	Benld	712
13046	Frankenmuth	299
13047	Dunnegan	2542
13048	Grandin	3180
13049	Grandin	2561
13050	Minneola	1331
13051	Minneola	2324
13052	Arnoldsville	876
13053	Monte Rio	1790
13054	Toeterville	1474
13055	Jordan Hill	921
13056	Paris Crossing	2622
13057	Cornerville	1194
13058	Griggsville	1170
13059	Fajardo Zona Urbana	330
13060	Cloquet	780
13061	The Landing	1578
13062	Senatobia	2027
13063	Starkweather	653
13064	West Swanzey	1228
13065	Middle River	1498
13066	Middle River	2470
13067	Spring Garden	456
13068	Spring Garden	3011
13069	Spring Garden	433
13070	Ruckersville	1877
13071	Ruckersville	568
13072	Yatesboro	775
13073	Carlisle Gardens	2910
13074	Bryn Mawr	3217
13075	Bryn Mawr	721
13076	Bryn Mawr	731
13077	Fife Heights	1925
13078	Sandy Oaks	1083
13079	Flatwood	409
13080	Vera	2569
13081	Vera	468
13082	Vera	582
13083	Kurthwood	225
13084	Southwest Greensburg	2385
13085	Kerr	1322
13086	Clovis	937
13087	Clovis	812
13088	Montana	150
13089	Montana	1954
13090	Chamizal	228
13091	Timewell	634
13092	Foxhome	627
13093	Ben Lomond	1362
13094	Ben Lomond	3207
13095	Wagontire	212
13096	Prosperity	1634
13097	Prosperity	2276
13098	Prosperity	1657
13099	Ronan	1322
13100	Burr Ferry	225
13101	Altona	2267
13102	Altona	1753
13103	Altona	584
13104	Altona	2895
13105	Hanley Hills	3196
13106	North Lynbrook	101
13107	Homestown	2383
13108	Calmar	2624
13109	Williston	1455
13110	Williston	2568
13111	Williston	1730
13112	Williston	377
13113	Williston	2894
13114	Williston	2175
13115	Grassflat	1300
13116	North Myrtle Beach	3220
13117	Lettsworth	2578
13118	Rockholds	1305
13119	Harmar Heights	2632
13120	North DeLand	814
13121	Leavittsburg	2946
13122	Elm Creek	867
13123	Elm Creek	2687
13124	Roosevelt Beach	2910
13125	South Paris	1703
13126	Sampson	415
13127	Bishop	644
13128	Bishop	819
13129	Bishop	483
13130	Bishop	2411
13131	Rio Lucio	1930
13132	Elk Grove Village	761
13133	Rondo	2104
13134	Caspian	1866
13135	Oral	124
13136	Leechburg	775
13137	Saint Matthews	1285
13138	Saint Matthews	997
13139	Ellsworth	293
13140	Ellsworth	1970
13141	Ellsworth	910
13142	Ellsworth	1855
13143	Ellsworth	1090
13144	Ellsworth	2070
13145	Ellsworth	1926
13146	Ellsworth	1227
13147	Ellsworth	2283
13148	Ellsworth	483
13149	Broomfield	292
13150	Cantua Creek	937
13151	Kettlersville	194
13152	Oran	2244
13153	Old Agency	75
13154	Vintondale	3032
13155	Horton Bay	541
13156	Clarion	297
13157	Clarion	2290
13158	Webster City	2070
13159	Benge	1294
13160	Ronda	446
13161	Pancoastburg	2571
13162	Reston	2405
13163	Aptos	1362
13164	Hillsdale	1095
13165	Hillsdale	3196
13166	Hillsdale	669
13167	Hillsdale	304
13168	Hillsdale	2315
13169	Hillsdale	2912
13170	Hillsdale	1572
13171	Hillsdale	1363
13172	Hillsdale	3004
13173	Hillsdale	264
13174	Belknap	1268
13175	Belknap	2874
13176	Belknap	75
13177	Smarr	2359
13178	Wytheville	2404
13179	Searsport	450
13180	Taft Heights	263
13181	South Amherst	2922
13182	South Amherst	845
13183	Rockfield	476
13184	Rockfield	2220
13185	Kalona	484
13186	Broomes Island	2983
13187	Waccabuc	1919
13188	Ronco	2574
13189	Reeds Spring	2666
13190	Culp Creek	1446
13191	Louann	244
13192	Sisquoc	2107
13193	Marvel	2106
13194	Marvel	1582
13195	Huber Heights	737
13196	Portales	1678
13197	Cloverport	930
13198	Loghill Village	2775
13199	Buena Vista Colonia	166
13200	Vidor	3139
13201	Madonna	2959
13202	Mellin	1367
13203	Ettrick	854
13204	Ettrick	1615
13205	MiloliÊ»i	1488
13206	Azwell	276
13207	Seabrook Farms	82
13208	Sunnybrook	1498
13209	Sunnybrook	2602
13210	Bowers Mill	534
13211	Westminster	3097
13212	Westminster	3140
13213	Westminster	1290
13214	Westminster	2232
13215	Westminster	441
13216	Westminster	1381
13217	Westminster	1335
13218	Westminster	643
13219	Yogaville	1089
13220	Winnetoon	589
13221	Humboldt	1104
13222	Humboldt	442
13223	Humboldt	2857
13224	Humboldt	2943
13225	Humboldt	2293
13226	Humboldt	2442
13227	Humboldt	3116
13228	Humboldt	318
13229	Leaburg	1446
13230	Nitro	1467
13231	Texanna	1042
13232	Siracusaville	2490
13233	Lake Havasu City	829
13234	Pine Barren	2667
13235	Meyers Chuck	2673
13236	Prewitt	3150
13237	Church Rock	3150
13238	Honcut	766
13239	Coal	1110
13240	Kawkawlin	903
13241	Lowemont	1699
13242	Chimayo	2725
13243	Elsinore	3209
13244	Menno	1757
13245	Hartsel	1748
13246	South Garcia	3272
13247	Phil Campbell	2125
13248	Aetna	2024
13249	Pratt	1467
13250	Pratt	336
13251	Witherbee	2742
13252	Point Comfort	1279
13253	Dowell	1825
13254	Malcom	2265
13255	Green Spring	997
13256	Green Spring	2921
13257	H. Rivera ColÃ³n Comunidad	841
13258	Glen Carbon	2054
13259	Courtney	847
13260	Courtney	483
13261	Courtney	1826
13262	Courtney	2476
13263	Lincoln Beach	1184
13264	Ellinger	2567
13265	Toano	401
13266	Loveland	2075
13267	Loveland	1555
13268	Loveland	831
13269	Loveland	3016
13270	Lake Five	2426
13271	Tequesta	3071
13272	Veblen	2469
13273	Plaucheville	1975
13274	Lynne	682
13275	Noyack	940
13276	Puhi	2209
13277	Drew	1088
13278	Callery	789
13279	Diamondhead Lake	3257
13280	Pinckney	389
13281	Chestnut Mound	1604
13282	Manito	746
13283	Clarita	331
13284	White Cloud	2028
13285	White Cloud	2882
13286	Camp Hill	83
13287	Camp Hill	2933
13288	East Middlebury	3008
13289	Las Piedras Zona Urbana	800
13290	Bear Grass	2210
13291	Savoonga	717
13292	Deary	1360
13293	Orem	705
13294	Landingville	2826
13295	Argonne	1419
13296	Chloride	170
13297	Chloride	829
13298	Point Cedar	2689
13299	Trammel	550
13300	Menlo	3257
13301	Menlo	1341
13302	Menlo	1306
13303	Menlo	3030
13304	Magas Arriba Comunidad	957
13305	Achilles	2625
13306	Piney Point Village	145
13307	Gastonville	483
13308	Coco	2259
13309	Goreville	1268
13310	Mingo Junction	1006
13311	Glenn	381
13312	Glenn	2554
13313	Glenn	2908
13314	LeRoy	1054
13315	Glens	3205
13316	Elk Mountain	3036
13317	Elfrida	3232
13318	Folkston	2698
13319	Yeager	3053
13320	Letts	58
13321	Letts	2487
13322	Kewa	1150
13323	Cobb	2855
13324	Cobb	3080
13325	Cobb	1330
13326	Ludlow Falls	668
13327	Lambertville	1491
13328	Lambertville	2352
13329	Castorland	2529
13330	Careywood	623
13331	Lazare	2696
13332	Rhinebeck	3031
13333	Annex	1310
13334	Jal	2089
13335	Pitkin	225
13336	Pitkin	549
13337	North Lawrence	238
13338	Malad City	3240
13339	James City	135
13340	James City	162
13341	Fairfield	2491
13342	Fairfield	1393
13343	Fairfield	152
13344	Fairfield	1535
13345	Fairfield	2610
13346	Fairfield	2867
13347	Fairfield	130
13348	Fairfield	2025
13349	Fairfield	274
13350	Fairfield	987
13351	Fairfield	1001
13352	Fairfield	1715
13353	Fairfield	705
13354	Fairfield	1385
13355	Fairfield	2837
13356	Fairfield	1431
13357	Fairfield	2524
13358	Fairfield	1298
13359	Fairfield	2121
13360	Fairfield	785
13361	Fairacres	1242
13362	Oakfield	1836
13363	Oakfield	2045
13364	Oakfield	2090
13365	Oakfield	2257
13366	Saint Hedwig	1083
13367	Foard City	1858
13368	Beecher Falls	2741
13369	Topsfield	2745
13370	Cody	2016
13371	Cody	1747
13372	Jay	758
13373	Jay	1574
13374	Jay	2808
13375	Red Butte	805
13376	Saint Francisville	533
13377	Saint Francisville	2320
13378	Saint Francisville	1685
13379	Lowry Crossing	1335
13380	Manakin	2275
13381	Little Lake	2411
13382	Little Lake	1058
13383	South Gate Ridge	1236
13384	Dunseith	1860
13385	Selawik	2907
13386	Holly Oak	2563
13387	Veyo	472
13388	Lattasburg	2612
13389	Sanford	2575
13390	Sanford	1758
13391	Sanford	3027
13392	Sanford	2094
13393	Sanford	2576
13394	Sanford	2987
13395	Sanford	850
13396	Sanford	1627
13397	Sanford	1461
13398	Sanford	1256
13399	Chaparral	1242
13400	Sarversville	789
13401	Herbster	3109
13402	Newton Falls	1307
13403	Newton Falls	2946
13404	Edgewater Estates	3214
13405	Fife Lake	1592
13406	Graymoor-Devondale	997
13407	Reiles Acres	3180
13408	North Fort Myers	2101
13409	Sabetha	284
13410	Culbertson	1679
13411	Culbertson	2802
13412	Snead	2420
13413	San Luis	2068
13414	San Luis	2113
13415	San Luis	971
13416	Keswick	960
13417	Keswick	2883
13418	Prairieville	1618
13419	Roswell	2715
13420	Roswell	449
13421	Roswell	1336
13422	Roswell	2552
13423	Keys	430
13424	South Rosemary	795
13425	Annsville	1919
13426	Maben	951
13427	Maben	1027
13428	Mabel	700
13429	Bellmawr	2977
13430	Leesville	2229
13431	Leesville	1164
13432	Leesville	225
13433	Montauk	940
13434	Marine on Saint Croix	480
13435	Ramblewood	2841
13436	Ramblewood	393
13437	Clayton Lake	2201
13438	Tamola	3247
13439	Fallon	3012
13440	Fallon	1590
13441	Deans	94
13442	Kvichak	2011
13443	Vance	1910
13444	Vance	3119
13445	Vance	2876
13446	Vance	1911
13447	Orin	3170
13448	New Hartford	1170
13449	New Hartford	782
13450	New Hartford	3238
13451	Burns City	2213
13452	Moapa Valley	2329
13453	Goodwin	1799
13454	Goodwin	2980
13455	Rowden	816
13456	Lubec	469
13457	Winona Lake	718
13458	Dunlevy	483
13459	Fort Dick	1468
13460	Mundelein	1326
13461	Pine Lawn	3196
13462	Champaign	519
13463	Nuremberg	2826
13464	Hiland	805
13465	Red Creek	2599
13466	Ligurta	2113
13467	Cunningham	893
13468	Cunningham	3068
13469	Cunningham	1294
13470	Cunningham	1834
13471	Soham	1039
13472	Big River	721
13473	Milnesand	1678
13474	Woodmere	1005
13475	Woodmere	101
13476	Woodmere	708
13477	Brightwaters	940
13478	Herington	1316
13479	Norman	859
13480	Norman	1697
13481	Norman	730
13482	Norman	3089
13483	Fronton	166
13484	Paint Lick	165
13485	Thorsby	126
13486	Stratford	1125
13487	Stratford	628
13488	Stratford	2977
13489	Stratford	635
13490	Stratford	2070
13491	Stratford	2081
13492	Stratford	408
13493	Stratford	861
13494	Stratford	1879
13495	Charlotte Amalie	815
13496	Keosauqua	2430
13497	Hampden	392
13498	Hampden	653
13499	Lodge Grass	2724
13500	Burkburnett	294
13501	Lemon Heights	3140
13502	Normal	2283
13503	Normal	2048
13504	Grand Ledge	2764
13505	Noel	204
13506	Ronks	1139
13507	McCaysville	631
13508	Beltrami	2543
13509	Nahant	2745
13510	Five Forks	2031
13511	Frankston	1395
13512	South Jacksonville	114
13513	Pinardville	869
13514	Jet	2269
13515	Segundo	205
13516	Bryden	327
13517	Tallevast	2834
13518	Middle Grove	2357
13519	Fort Hunt	2405
13520	Sultana	308
13521	South Willard	1421
13522	Nicollet	554
13523	Chrisman	2192
13524	Greensboro	710
13525	Greensboro	1107
13526	Greensboro	1436
13527	Greensboro	567
13528	Greensboro	2894
13529	Greensboro	561
13530	Greensboro	2441
13531	Greensboro	1011
13532	Topeka	599
13533	Topeka	2940
13534	Topeka	746
13535	New Berlinville	362
13536	Rapids City	1363
13537	Crosby	593
13538	Crosby	1217
13539	Crosby	3132
13540	Crosby	2117
13541	Crosby	145
13542	Crosby	704
13543	Crosby	217
13544	Raiford	500
13545	Parrott	374
13546	Parrott	913
13547	Streeter	2645
13548	Streeter	745
13549	Napeague	940
13550	Odessa	1195
13551	Odessa	1915
13552	Odessa	2687
13553	Odessa	2774
13554	Odessa	928
13555	Odessa	2563
13556	Odessa	55
13557	Odessa	2737
13558	Drifton	999
13559	Drifton	2641
13560	San Joaquin	937
13561	Coin	1517
13562	Umber View Heights	66
13563	Nisswa	704
13564	Blumenthal	1886
13565	Rockvale	2671
13566	Rockvale	969
13567	Rockvale	3035
13568	White Bluff	2434
13569	Ash Fork	2495
13570	Marlton	2841
13571	Marlton	2064
13572	Mohnton	362
13573	Jauca	2086
13574	Orla	1781
13575	Mabie	3011
13576	Demorest	2884
13577	Waitsfield	464
13578	Gemmell	296
13579	Chandler Heights	3086
13580	Lauderdale	654
13581	Lauderdale	607
13582	Bartow	2545
13583	Bartow	1007
13584	Bartow	1243
13585	Reid Hope King Colonia	1832
13586	Montara	1423
13587	Darien	950
13588	Darien	1043
13589	Darien	1094
13590	Darien	408
13591	Dahlia	1459
13592	Spanish Fork	705
13593	HÄna	2438
13594	Milton Mills	2885
13595	Tchula	2278
13596	Twin Rivers	2009
13597	Salvisa	2006
13598	Barton	1149
13599	Barton	1559
13600	Barton	1436
13601	Barton	1497
13602	Barton	1924
13603	Barton	1591
13604	Valkaria	2189
13605	Plankinton	2156
13606	Spanish Fort	1988
13607	Broussard	2769
13608	Altaville	3144
13609	Tetlin	1561
13610	Deale	2440
13611	Hartshorn	2273
13612	High Rolls	344
13613	Hiteman	2354
13614	Apple Grove	57
13615	Apple Grove	743
13616	Minneiska	2423
13617	Bell Center	1416
13618	Goldville	2933
13619	Porterdale	1230
13620	Slippery Rock	789
13621	Fortuna	593
13622	Fortuna	319
13623	Fortuna	2264
13624	Munnerlyn	927
13625	Boistfort	2533
13626	Central Falls	929
13627	Lomita	404
13628	Toast	2707
13629	Pheba	1538
13630	Rayland	1006
13631	Martin City	1761
13632	Annabella	3209
13633	Spring House	731
13634	Wantagh	101
13635	West Wendover	108
13636	Foxholm	1551
13637	Tolsona	3172
13638	Xenia	1540
13639	Xenia	566
13640	Xenia	1569
13641	Miami Springs	1705
13642	Carolina Beach	254
13643	Park Crest	2826
13644	Stevens	1139
13645	Acampo	590
13646	Bannack	2331
13647	Grizzly	983
13648	Woodruff	3162
13649	Woodruff	3240
13650	Woodruff	1558
13651	Woodruff	3161
13652	Woodruff	2746
13653	Woodruff	3239
13654	Marvin	494
13655	Marvin	1121
13656	Hiseville	2935
13657	Erlands Point	1048
13658	Sunset	1705
13659	Sunset	2875
13660	Sunset	1785
13661	Sunset	1199
13662	Sunset	1148
13663	Sunset	2967
13664	Dakota City	2865
13665	Dakota City	318
13666	Wick	2872
13667	Bland	675
13668	Bland	2166
13669	Fallis	1188
13670	Orme	679
13671	Lida	3194
13672	Coffee City	2652
13673	Rolling Meadows	2371
13674	Rolling Meadows	761
13675	Kisatchie	2991
13676	Johnson Village	2676
13677	Twin Lakes Village	1919
13678	Hidden Meadows	2381
13679	Trevose	2634
13680	Fouke	2703
13681	Red Lion	2841
13682	Red Lion	2312
13683	Red Lion	853
13684	Stamping Ground	2245
13685	Glendale	3162
13686	Glendale	2632
13687	Glendale	2329
13688	Glendale	103
13689	Glendale	904
13690	Glendale	323
13691	Glendale	2814
13692	Glendale	435
13693	Glendale	1547
13694	Glendale	2362
13695	Glendale	1194
13696	Glendale	1934
13697	Glendale	3086
13698	Glendale	2075
13699	Glendale	3196
13700	Glendale	404
13701	Glendale	316
13702	Glendale	2461
13703	Glendale	1220
13704	Glendale	2392
13705	Como	3252
13706	Como	1108
13707	Como	1748
13708	Como	1514
13709	Como	1439
13710	Como	1718
13711	Como	1094
13712	Fenwood	628
13713	McCabe	1679
13714	Noma	2276
13715	South Broadway	3268
13716	Lomira	955
13717	What Cheer	960
13718	Yolo	709
13719	Coyote Acres	2803
13720	Maddock	2400
13721	Longworth	961
13722	Dingmans Ferry	1177
13723	East Holden	392
13724	Finderne	129
13725	Canjilon	2725
13726	Nome	1003
13727	Nome	2341
13728	Nome	717
13729	Orient Park	868
13730	Caborn	2859
13731	Hematite	993
13732	Osnabrock	1720
13733	Lillington	2702
13734	Cole	1454
13735	Montgomery	1770
13736	Montgomery	2075
13737	Montgomery	322
13738	Montgomery	304
13739	Montgomery	729
13740	Montgomery	3137
13741	Montgomery	435
13742	Montgomery	1129
13743	Montgomery	1631
13744	Montgomery	1467
13745	Montgomery	734
13746	Montgomery	3237
13747	Dexterville	2339
13748	Belle Prairie City	2074
13749	Juntura	1310
13750	Bissell	2096
13751	Tekonsha	1286
13752	Murrells Inlet	1209
13753	El Cerrito	3143
13754	Colo	2581
13755	Hodges	3075
13756	Hodges	2125
13757	Hodges	2996
13758	Colp	123
13759	Lambert	2269
13760	Lambert	3119
13761	Lambert	2244
13762	Lambert	1669
13763	Wilburton	604
13764	Big Wells	2363
13765	Goode	2952
13766	Indian Mountain Lake	3038
13767	Colt	2980
13768	Godley	1266
13769	Godley	875
13770	Edna Bay	1345
13771	Green Level	1509
13772	Burnham	761
13773	Burnham	2474
13774	Requa	1468
13775	Malden	1464
13776	Malden	1546
13777	Malden	1467
13778	Malden	95
13779	Malden	2498
13780	Malden	1704
13781	Crystal Falls	1866
13782	Crystal Falls	2847
13783	Crystal Falls	3172
13784	Littlestown	1298
13785	Zanesville	338
13786	Zanesville	2915
13787	Haxtun	1560
13788	Good Hope	2571
13789	Good Hope	3210
13790	Good Hope	1548
13791	Good Hope	2038
13792	Good Hope	2660
13793	Good Hope	3131
13794	Cook	3195
13795	Cook	1274
13796	Blain	1848
13797	Cool	931
13798	Sunderland	2983
13799	Riverview Estates	3178
13800	Pisinemo	1247
13801	Vadito	1930
13802	Grand Chain	370
13803	Smithton	918
13804	Smithton	2385
13805	Smithton	2860
13806	Halstad	529
13807	Dahlen	273
13808	Mosquito Lake	1963
13809	Lake Almanor Country Club	3011
13810	Columbia City	1072
13811	Columbia City	1304
13812	Fragaria	1048
13813	Cone	574
13814	Malinta	1112
13815	Highland View	2401
13816	Placida	1506
13817	Senoia	2766
13818	Casa Grande	1914
13819	Brogan	1310
13820	Marysville	920
13821	Marysville	1775
13822	Marysville	510
13823	Marysville	99
13824	Marysville	2471
13825	Marysville	2161
13826	Marysville	687
13827	Marysville	1848
13828	Marysville	2206
13829	Las Piedras	800
13830	Blair	473
13831	Blair	1811
13832	Blair	854
13833	Blair	1061
13834	Usher	1455
13835	Wellfleet	1196
13836	Old Lexington	2664
13837	Sangaree	1723
13838	Boxford	2745
13839	Oscura	1199
13840	Simnasho	906
13841	Tierras Nuevas Poniente Comunidad	1580
13842	Flemington	1491
13843	Flemington	2902
13844	Flemington	1059
13845	Flemington	3105
13846	Flemington	2542
13847	Prado Verde	3227
13848	Culleoka	2398
13849	Landess	1118
13850	Staples	1460
13851	Staples	2649
13852	Algoa	2523
13853	Wessington	2934
13854	Mazeppa	2988
13855	Loyalhanna	2385
13856	Fish Camp	1660
13857	Kenesaw	1297
13858	Fort Sumner	1505
13859	Paynesville	1171
13860	Paynesville	1709
13861	Gessie	1095
13862	Graceton	2147
13863	Graceton	3148
13864	Lengby	2543
13865	Cora	2412
13866	Manhasset	101
13867	Godwinsville	954
13868	Hillburn	2960
13869	Bechtelsville	362
13870	Cord	138
13871	Core	830
13872	Palm Desert Country	3210
13873	Yankton	836
13874	Cope	1910
13875	Cope	474
13876	Cupertino	2198
13877	De Berry	1513
13878	Queen	2954
13879	Steelton	1369
13880	Slabtown	1079
13881	Shallow Water	2247
13882	Hoback	1391
13883	Timmonsville	1588
13884	Breckinridge Center	498
13885	Glenwood City	649
13886	August	590
13887	Cabool	2273
13888	Whittlesey	1065
13889	Rutherfordton	2670
13890	Joy	2194
13891	Joy	2004
13892	Baker Hill	288
13893	Dodge Center	953
13894	Middleway	991
13895	Wilmette	761
13896	Lake Pocotopaug	96
13897	Forge Village	95
13898	Unityville	2343
13899	Tamora	167
13900	Crumpler	2379
13901	Tetonia	1392
13902	Klamath River	337
13903	York	973
13904	York	2400
13905	York	853
13906	York	514
13907	York	851
13908	York	852
13909	York	1052
13910	Cost	1164
13911	Lily	2639
13912	Lily	2449
13913	Lime	1471
13914	Radersburg	2422
13915	Pine Lake	3217
13916	Pine Lake	1751
13917	Pine Lake	95
13918	Lima	2809
13919	Lima	1291
13920	Lima	1628
13921	Lima	386
13922	Lima	2331
13923	Lima	441
13924	Rohrsburg	1079
13925	Sylvia	3201
13926	Boones Mill	2143
13927	National Mine	1058
13928	Monterey Park	3272
13929	Monterey Park	404
13930	Penndel	2634
13931	Guayanilla Zona Urbana	957
13932	Kieler	1131
13933	Delphos	2700
13934	Delphos	1678
13935	Delphos	441
13936	Delphos	1731
13937	Crawfordville	1782
13938	Crawfordville	1976
13939	Laddonia	2945
13940	Sekiu	185
13941	Concord	429
13942	Concord	583
13943	Concord	2532
13944	Concord	114
13945	Concord	2237
13946	Concord	3196
13947	Concord	176
13948	Concord	987
13949	Concord	3276
13950	Concord	598
13951	Concord	1819
13952	Concord	1010
13953	Concord	2135
13954	Concord	2741
13955	Concord	3143
13956	Concord	1174
13957	North Redington Beach	2785
13958	Lynn Garden	1948
13959	Corn	757
13960	Pickensville	366
13961	Larkspur	1515
13962	Larkspur	2815
13963	Fairbank	2812
13964	Fairbank	1160
13965	Vinita Terrace	3196
13966	Wataga	584
13967	Cory	1526
13968	Nora	1698
13969	Nora	885
13970	Krakow	2827
13971	Colebrook	773
13972	Nord	766
13973	Amargosa Colonia	2803
13974	Shueyville	1263
13975	Red Wing	1997
13976	Helen	1634
13977	Helen	1903
13978	Burrton	3123
13979	Catskill	556
13980	Olvey	252
13981	Galbraith	2991
13982	Wing	2146
13983	Tatamy	314
13984	South Fulton	2715
13985	South Fulton	346
13986	Carle Place	101
13987	Wink	1736
13988	Muscoy	721
13989	Strathmore	308
13990	Strathmore	278
13991	Rio Rancho	971
13992	Luckey	2338
13993	Westover	756
13994	Westover	195
13995	Westover	2045
13996	Westover	1300
13997	Westover	830
13998	Westover	3018
13999	Success	2273
14000	Success	1534
14001	Pine Bend	1494
14002	McNair	1002
14003	McNair	145
14004	Spiro	2263
14005	Connersville	2566
14006	Bangor	766
14007	Bangor	2420
14008	Bangor	392
14009	Bangor	3130
14010	Bangor	314
14011	Bangor	2433
14012	Bangor	1048
14013	Prichard	2658
14014	Prichard	2607
14015	Prichard	1301
14016	Manlius	2979
14017	Manlius	1704
14018	San SebastiÃ¡n	911
14019	Alta Vista	698
14020	Alta Vista	888
14021	Deer Creek	1777
14022	Deer Creek	2763
14023	Deer Creek	1119
14024	Allenville	2690
14025	Allenville	742
14026	Allenville	2619
14027	Hansville	1048
14028	Dennisville	1994
14029	Cove	3217
14030	Cove	2546
14031	Cove	495
14032	Cove	1343
14033	Cove	2709
14034	Winn	1020
14035	Bowdoin	1557
14036	Iron Gates	3044
14037	Guthriesville	90
14038	Golden Grove	2031
14039	Tripp	1757
14040	Iaeger	2379
14041	East Earl	1139
14042	Rothsville	1139
14043	Port Royal	1729
14044	Port Royal	1111
14045	Port Royal	2893
14046	Port Royal	439
14047	Providence	2452
14048	Providence	1080
14049	Providence	516
14050	Providence	2545
14051	Providence	2709
14052	Providence	652
14053	Providence	2593
14054	Providence	929
14055	Arden Hills	654
14056	Numidia	1079
14057	Belhaven	438
14058	Rafael HernÃ¡ndez Comunidad	2414
14059	Maugansville	492
14060	Point Harbor	1259
14061	Howard City	1356
14062	Fresno	937
14063	Fresno	56
14064	Fresno	1890
14065	Fresno	453
14066	Copperfield	2332
14067	Blenheim	2888
14068	Coulee Dam	1874
14069	Acequia	2299
14070	Lind	1294
14071	Waskish	546
14072	Linn	1353
14073	Linn	481
14074	Linn	1155
14075	Sublett	2382
14076	Sublett	1320
14077	Sublett	3084
14078	Langleyville	2949
14079	Reform	366
14080	Laurens	778
14081	Laurens	1244
14082	Laurens	947
14083	Nichols	1702
14084	Nichols	685
14085	Nichols	2150
14086	Nichols	2266
14087	North York	853
14088	Hawkinsville	373
14089	Guayanilla	957
14090	South Snohomish	99
14091	North Lima	2839
14092	Elroy	2598
14093	Elroy	235
14094	Lake Villa	1326
14095	Lake George	1748
14096	Lake George	2302
14097	Lake George	2784
14098	Lake George	2294
14099	Palm Coast	1696
14100	Furnace Branch	2440
14101	Stephenson	544
14102	Hesston	3123
14103	Jackson Junction	2624
14104	Jud	2029
14105	Knob Noster	1269
14106	Del Rosa	721
14107	Crabapple	2715
14108	Kildeer	1326
14109	Elrod	1911
14110	Elrod	372
14111	Elrod	2256
14112	Mountain Top	2641
14113	Blue	70
14114	Shorter	3156
14115	Kamas	1726
14116	Elm Grove	1173
14117	Elm Grove	1635
14118	Elm Grove	2426
14119	Elm Springs	1663
14120	Elm Springs	471
14121	Elkhorn	677
14122	Elkhorn	1094
14123	Elkhorn	996
14124	Elkhorn	2955
14125	Goldsmith	928
14126	Nova	383
14127	De Ann	1586
14128	Spackenkill	3031
14129	Lilita	514
14130	KÄ“Åkea	2438
14131	Hardinsburg	466
14132	Hardinsburg	930
14133	Johnstown Center	837
14134	Novi	2663
14135	Hemlock Farms	1177
14136	Aline	2269
14137	Deer River	2777
14138	Cypress	3140
14139	Cypress	1268
14140	Cypress	1816
14141	Cypress	2991
14142	Cypress	1011
14143	Pilsen	1566
14144	Crook	2180
14145	Croom	2064
14146	Panguitch	3005
14147	Trion	1341
14148	Valmy	320
14149	Valles Mines	993
14150	Waynoka	2477
14151	Childersburg	1407
14152	West Pittston	2641
14153	Agua Fria	1750
14154	Spink	499
14155	Winnetka	761
14156	Lovell	2723
14157	Lovell	2182
14158	Rabbit Hash	251
14159	Bluetown	1832
14160	Bay View	652
14161	Bay View	1510
14162	Bay View	1422
14163	Bay View	1511
14164	Bay View	2519
14165	Millville	1887
14166	Millville	2988
14167	Millville	2000
14168	Millville	2883
14169	Millville	2709
14170	Millville	1942
14171	Millville	1079
14172	Millville	82
14173	Millville	785
14174	Nehawka	3181
14175	Blum	452
14176	North Irwin	2385
14177	Wirt	2777
14178	Marthaville	2991
14179	Meadow Lakes	150
14180	Evan	637
14181	Peosta	1931
14182	Elmwood	1926
14183	Elmwood	1005
14184	Elmwood	1881
14185	Elmwood	3181
14186	Elmwood	2456
14187	Hurffville	2626
14188	Flowing Springs	2920
14189	Kirkland	3217
14190	Kirkland	716
14191	Kirkland	1755
14192	Kirkland	3250
14193	Kirkland	2495
14194	Roulette	715
14195	Acorn	2384
14196	Silver Springs Shores	682
14197	Silverdale	2634
14198	Silverdale	1048
14199	Silverdale	1026
14200	Big Bass Lake	3057
14201	Taconite Harbor	762
14202	Hyattsville	2064
14203	Brook Park	708
14204	Brook Park	1358
14205	Vicco	1844
14206	Chesterbrook	90
14207	Lake Ronkonkoma	940
14208	Southchase	3141
14209	West Brattleboro	3097
14210	Woodport	2877
14211	Bancroft	1085
14212	Bancroft	1598
14213	Bancroft	2451
14214	Bancroft	1707
14215	Bancroft	997
14216	Bancroft	1636
14217	Bancroft	1727
14218	Bancroft	2750
14219	Bancroft	2393
14220	Bancroft	461
14221	Whaleyville	127
14222	Whaleyville	1759
14223	Early	633
14224	Early	844
14225	Nakaibito	3150
14226	Apple River	1698
14227	Northlakes	2852
14228	Schuylkill Haven	2826
14229	Patillas Zona Urbana	807
14230	Walworth	1094
14231	San Martin	2198
14232	Cerulean	2450
14233	Harbor	811
14234	Canandaigua	357
14235	Rowsburg	383
14236	Wyattville	2423
14237	Sofia	507
14238	Beurys Lake	2826
14239	Strabane	483
14240	Sealevel	1182
14241	Circle Pines	1260
14242	North Patchogue	940
14243	Brush	113
14244	Beech Creek	2902
14245	Turnbull	2189
14246	Dunwoody	1751
14247	Great Cacapon	110
14248	Valle	353
14249	Andover	1496
14250	Andover	1889
14251	Andover	1109
14252	Andover	462
14253	Andover	2449
14254	Andover	2896
14255	Andover	2745
14256	Andover	786
14257	Andover	1260
14258	Minneapolis	91
14259	Minneapolis	1731
14260	Earle	1083
14261	Earle	1785
14262	Moss Hill	3107
14263	Colquitt	570
14264	Colquitt	2704
14265	Patzau	2823
14266	Jacksontown	3255
14267	Witt	595
14268	Witt	735
14269	Delphia	2981
14270	Hunterstown	1298
14271	Blyn	185
14272	Rollinsville	3055
14273	Santo Domingo	1030
14274	Shady Cove	1808
14275	Eagle Flat	1438
14276	Kamey	1279
14277	Rubonia	2834
14278	Lyman	231
14279	Lyman	3162
14280	Lyman	1143
14281	Lyman	1422
14282	Lyman	1016
14283	Lyman	2603
14284	Lyman	617
14285	Lyman	3174
14286	Mount Ayr	1231
14287	Mount Ayr	2700
14288	Wise	2301
14289	Wise	1146
14290	Pindall	576
14291	DeRuyter	2042
14292	Sterling City	2286
14293	Cylinder	3202
14294	Callao	3159
14295	Callao	1576
14296	Wedowee	2683
14297	McNabb	2754
14298	Eagle Rock	2475
14299	Eagle Rock	624
14300	Santa Ynez	2107
14301	Poyen	1124
14302	Gervais	677
14303	Sneads	1816
14304	Willits	1053
14305	Snowmass Village	399
14306	Tiburones Comunidad	1908
14307	Stalwart	662
14308	Diamond City	252
14309	Tipp City	668
14310	O'Fallon	918
14311	O'Fallon	1082
14312	Pocatalico	1467
14313	Meadow Acres	805
14314	Jensen	1443
14315	Elsmore	442
14316	Hill Country Village	1083
14317	Clairton	2632
14318	Acoma	1206
14319	Eastwood Manor	3192
14320	Rothsay	627
14321	Konawa	1628
14322	Deseret	2152
14323	Gonzales	1164
14324	Gonzales	1618
14325	Gonzales	2955
14326	McCarr	1172
14327	Springside	2841
14328	Bentonia	3078
14329	Selfridge	2925
14330	Derby Center	1436
14331	Hyden	1957
14332	Cudahy	904
14333	Cudahy	404
14334	Gonzalez	2667
14335	Jonestown	3050
14336	Jonestown	261
14337	Jonestown	161
14338	Jonestown	1493
14339	Jonestown	2570
14340	Avinger	3176
14341	Clancy	996
14342	Maish Vaya	1247
14343	Huntington Woods	2663
14344	Watkinsville	644
14345	San Isidro	166
14346	San Isidro	396
14347	Pelham Manor	1919
14348	Leland Grove	695
14349	Cotter	58
14350	Cotter	2459
14351	Whitesburg	3133
14352	Whitesburg	2230
14353	Marbury	413
14354	Marbury	335
14355	Rio En Medio	1750
14356	La Cueva	3190
14357	Ucon	1489
14358	Ypsilanti	2645
14359	Ypsilanti	2281
14360	Avila Beach	2207
14361	Waynesfield	3007
14362	Susanville	2799
14363	Ritchey	1234
14364	Ethete	968
14365	Doctortown	2613
14366	El Centro	153
14367	West Rutland	2588
14368	Lodoga	1803
14369	Tabernacle	2841
14370	Abiquiu	2725
14371	Flute Springs	1140
14372	Yancey	827
14373	Harding Lake	209
14374	Henlawson	2179
14375	East New Market	2508
14376	Stilson	3107
14377	Stilson	1965
14378	Horntown	3027
14379	Horntown	3053
14380	Blackwells Mills	129
14381	Bearcreek	3035
14382	Winter Garden	3141
14383	Shoals	2213
14384	Bear Flat	2920
14385	DoÃ±a Ana	1242
14386	Piney Fork	2632
14387	Wylie	1335
14388	Boley	87
14389	Northrop	2211
14390	La Barge	1186
14391	Ellisville	3020
14392	Ellisville	3196
14393	Ellisville	2712
14394	Adelaide	3217
14395	Conata	907
14396	San Remo	940
14397	West Covina	404
14398	Hobart	3217
14399	Hobart	1323
14400	Hobart	2804
14401	Hobart	1992
14402	Hobart	639
14403	Bruno	2179
14404	Bruno	788
14405	Bruno	1358
14406	Bruno	711
14407	Thornton	1464
14408	Thornton	2278
14409	Thornton	1290
14410	Thornton	2060
14411	Thornton	2827
14412	Thornton	590
14413	Thornton	1596
14414	Thornton	761
14415	Thornton	2790
14416	Thornton	1284
14417	Thornton	1059
14418	Corwin Springs	1749
14419	Cedar Brook	2977
14420	Boxelder	3170
14421	Bruni	817
14422	Mineral City	2552
14423	Boles	2249
14424	Olmsted	370
14425	Cottonwood Heights	2637
14426	Thiensville	608
14427	Goodrich	2540
14428	Goodrich	1226
14429	Goodrich	113
14430	Goodrich	2258
14431	Goodrich	945
14432	Anoka	72
14433	Anoka	1260
14434	Peabody	2745
14435	Peabody	681
14436	Indian Point	2666
14437	Doerun	1105
14438	Bishopville	1759
14439	Bishopville	2105
14440	Waunakee	749
14441	Taylor Landing	1003
14442	Nuiqsut	1801
14443	Pigeon Forge	3208
14444	Croft	1300
14445	Croft	336
14446	Italia	100
14447	Whitmore Lake	389
14448	Plandome	101
14449	Hyder	2113
14450	Hyder	1345
14451	Foreston	1355
14452	Foreston	2200
14453	Lake Magdalene	868
14454	Ceiba	707
14455	Rockport	1422
14456	Rockport	1737
14457	Rockport	2780
14458	Rockport	2337
14459	Rockport	2295
14460	Rockport	2689
14461	Rockport	1170
14462	Rockport	1939
14463	Rockport	1053
14464	Rockport	2745
14465	Rockport	148
14466	Dorrington	3144
14467	Dittlinger	611
14468	Copperopolis	3144
14469	Aceitunas Comunidad	2868
14470	Organ	1242
14471	Palomar Park	1423
14472	New Woodville	2467
14473	Lorimor	505
14474	Aguas Buenas Zona Urbana	1892
14475	Lovett	2047
14476	Lovett	948
14477	Lovett	2622
14478	Center Cross	2743
14479	Pea Ridge	1979
14480	Pea Ridge	1645
14481	HÄÊ»ena	2209
14482	Pollard	2668
14483	Pollard	1534
14484	Pisgah	1817
14485	Pisgah	616
14486	Pisgah	335
14487	Pisgah	785
14488	Sagamore	775
14489	Sagamore	1162
14490	Gaastra	1866
14491	Thatcher	2144
14492	Thatcher	2013
14493	Thatcher	1421
14494	Caselton	1206
14495	Chambers	2402
14496	Chambers	1869
14497	Chambers	932
14498	Tiplersville	1648
14499	Bayou Corne	771
14500	Frizzleburg	540
14501	Athertonville	1838
14502	Fairchilds	1890
14503	Alice	3180
14504	Alice	2803
14505	Tracys Landing	2440
14506	McAllister	1728
14507	McAllister	2043
14508	Brainard	788
14509	Walker	3179
14510	Walker	385
14511	Walker	227
14512	Walker	3160
14513	Walker	2296
14514	Walker	219
14515	Walker	944
14516	Pikes Creek	2641
14517	Lunenburg	1760
14518	Lunenburg	1354
14519	Growler	2113
14520	Daguao Comunidad	1619
14521	Fairview Shores	3141
14522	Laurel Grove	1574
14523	White Salmon	149
14524	Barker Ten Mile	2256
14525	Hilburn	1457
14526	Huffman	145
14527	Value	2370
14528	Cocoa Beach	2189
14529	Randlett	1443
14530	Randlett	1465
14531	La Vista	1014
14532	Ishpeming	1058
14533	Claridge	2385
14534	Clarks Grove	1713
14535	Guston	1665
14536	Ritchie	1522
14537	Ritchie	2064
14538	Dudley	2550
14539	Dudley	948
14540	Dudley	2092
14541	Four Buttes	1502
14542	Castle Park	2381
14543	Snake Creek	1884
14544	McCall	3167
14545	Domino	3176
14546	Eden Valley	2695
14547	Warson Woods	3196
14548	Pleasant Plains	138
14549	Pleasant Plains	695
14550	Pleasant Plains	129
14551	Pittman	1331
14552	Pittman	1373
14553	Rainsville	1752
14554	Village of the Branch	940
14555	Canyondam	3011
14556	Bolan	1835
14557	East Smithfield	416
14558	HoÊ»olehua	2438
14559	Fannettsburg	2135
14560	Country Club Village	610
14561	Lowell Point	1806
14562	Twentynine Palms	721
14563	Little Falls	79
14564	Little Falls	164
14565	Little Falls	1597
14566	Walterhill	2671
14567	Dames Ferry	2359
14568	Kupreanof	1337
14569	Brule	2823
14570	Brule	186
14571	Stevensville	2701
14572	Stevensville	416
14573	Stevensville	1767
14574	Stevensville	601
14575	Merrillan	1830
14576	Springhill	2594
14577	Springhill	579
14578	Vichy	74
14579	Zihlman	1497
14580	Woolstock	2290
14581	White Pine	985
14582	White Pine	3072
14583	White Pine	75
14584	Decherd	2123
14585	Talladega	1407
14586	Lynnview	997
14587	Falcon Heights	654
14588	Falcon Heights	166
14589	Gayle Mill	89
14590	Mono City	3160
14591	Blockton	1060
14592	Emigsville	853
14593	Yellow Jacket	2615
14594	Emajagua Comunidad	2437
14595	Belleair Bluffs	2785
14596	Lehighton	3038
14597	Plaquemine	2694
14598	Hill City	2300
14599	Hill City	907
14600	Hill City	1715
14601	Hill City	2014
14602	Ensign	3074
14603	Cousins Island	79
14604	Satartia	3078
14605	Cold Springs	1992
14606	Cold Springs	1594
14607	Cold Springs	2332
14608	Riderwood	1498
14609	Lake Cavanaugh	1422
14610	Spokane	2950
14611	Spokane	1680
14612	Spokane	1431
14613	Achille	70
14614	Swanlake	2863
14615	East Richmond Heights	3143
14616	Chaseley	2916
14617	Old Mines	475
14618	Hopedale	1777
14619	Hopedale	2298
14620	Hopedale	622
14621	Hopedale	1760
14622	Westmont	950
14623	Westmont	2977
14624	Westmont	404
14625	Westmont	3032
14626	Ogilby	153
14627	Wyman	58
14628	Devault	90
14629	Romeville	1275
14630	War Eagle	1645
14631	Rexford	1185
14632	Rexford	3030
14633	Mexican Colony	263
14634	Martinsdale	2842
14635	Sadsburyville	90
14636	Elk Garden	974
14637	Village Saint George	1381
14638	Keo	1585
14639	Blodgett Mills	1480
14640	Loleta	319
14641	Sunray	327
14642	Sunray	2848
14643	KahaluÊ»u	1878
14644	McAlmont	375
14645	McCormick	2643
14646	McCormick	1456
14647	Mackey	3115
14648	Duran	1625
14649	Florala	2575
14650	Nyack	2960
14651	Bruin	789
14652	Bruin	125
14653	Key	2998
14654	Sugarloaf	2267
14655	Bethel Springs	1647
14656	Youngsville	2307
14657	Youngsville	2769
14658	Youngsville	2120
14659	Youngsville	2725
14660	Chaptico	2580
14661	West Jersey	237
14662	Saint Ann Highlands	2267
14663	Horse Pasture	1115
14664	Cotton	3195
14665	Cotton	1475
14666	San SebastiÃ¡n Zona Urbana	911
14667	Titanic	1385
14668	Ford Cliff	775
14669	Woodacre	1515
14670	Latour	1269
14671	Yoakum	2732
14672	Central High	2848
14673	Port Protection	1345
14674	North Glen Ellyn	950
14675	Davenport	3009
14676	Davenport	1195
14677	Davenport	1188
14678	Davenport	2545
14679	Davenport	2239
14680	Davenport	3180
14681	Davenport	1362
14682	Leisure Village East	2627
14683	Antares	829
14684	Killduff	3039
14685	Cherry Spring	1886
14686	Nelchina	3172
14687	South Lineville	2005
14688	Suitland	2064
14689	Red Shirt	1774
14690	Bull Run Mountain Estates	321
14691	Albert City	719
14692	Meadowlands	3195
14693	Ward Ridge	2401
14694	Beaux Arts Village	3217
14695	Mahnomen	1494
14696	Greenleaf	2039
14697	Greenleaf	639
14698	Greenleaf	481
14699	Burrville	3209
14700	Sister Lakes	2433
14701	Sorrento	1331
14702	Sorrento	1618
14703	South Barre	464
14704	Westlake Village	404
14705	Hebbville	1498
14706	Hunters	657
14707	WaikapÅ«	2438
14708	Beaver Crossing	167
14709	Tierra Verde	2785
14710	Mooreville	2096
14711	Hutton	225
14712	Hutton	310
14713	Tesuque Pueblo	1750
14714	Kamrar	2070
14715	Idana	1531
14716	Buffalo Springs	300
14717	Lefors	3073
14718	Gassoway	2747
14719	Yaurel Comunidad	2659
14720	Lums Chapel	1374
14721	Plantersville	847
14722	Plantersville	1209
14723	Plantersville	2096
14724	Plantersville	523
14725	Abilene	1316
14726	Abilene	1061
14727	Lovelady	2118
14728	Orange Lake	682
14729	Orange Lake	3137
14730	Wymer	400
14731	Walton Park	3137
14732	Rowena	2293
14733	Rowena	376
14734	Rowena	906
14735	Slate Lick	775
14736	Oslo	2114
14737	Oslo	2470
14738	Edgard	935
14739	Loch Lomond	321
14740	Mill Neck	101
14741	Fernandina Beach	100
14742	Erath	2035
14743	South New Castle	540
14744	Ochelata	468
14745	Stewartstown	853
14746	Kim	205
14747	South Ponte Vedra Beach	223
14748	Hochheim	2732
14749	Lithonia	1751
14750	Westboro	1065
14751	Westboro	2901
14752	Westboro	3258
14753	Ladonia	630
14754	Ladonia	1451
14755	Cedarwood	2030
14756	Carls Corner	452
14757	Rickardsville	1931
14758	Emison	581
14759	Mackay	3063
14760	Deemer	1429
14761	Hasson Heights	2990
14762	Hato Candal Comunidad	1676
14763	Mannford	755
14764	Huntland	2123
14765	Mentor	2543
14766	Mentor	179
14767	Mentor	2421
14768	Mentor	103
14769	Mentor	1328
14770	Kiawah Island	905
14771	North Fond du Lac	2090
14772	Cashmere	276
14773	Phillips	331
14774	Phillips	1357
14775	Phillips	2078
14776	Phillips	1758
14777	North Pembroke	1936
14778	Flat Woods	1841
14779	Loxley	1988
14780	Homedale	982
14781	Millersburg	2551
14782	Millersburg	1369
14783	Millersburg	3081
14784	Millersburg	943
14785	Millersburg	1570
14786	Millersburg	2238
14787	Millersburg	2277
14788	Millersburg	3145
14789	Thompson Falls	75
14790	Potts Camp	2463
14791	Patch Grove	1131
14792	Northfield	464
14793	Northfield	2748
14794	Northfield	2617
14795	Northfield	1725
14796	Northfield	997
14797	Northfield	761
14798	Northfield	2629
14799	Northfield	2129
14800	Millington	2877
14801	Millington	190
14802	Millington	1913
14803	Millington	1486
14804	Millington	217
14805	Upper Sandusky	2233
14806	Colonia Iglesia Antigua	1832
14807	Bourbon	2816
14808	Bourbon	2464
14809	Bourbon	1411
14810	Bourbon	485
14811	Davison	2258
14812	Trapper Creek	150
14813	Morganfield	498
14814	Newville	1114
14815	Newville	1753
14816	Newville	381
14817	Newville	83
14818	Sabinoso	1039
14819	Hill Top	914
14820	Christopher Creek	2920
14821	Myrick	3020
14822	Tyrone	2272
14823	Tyrone	205
14824	Tyrone	2572
14825	Tyrone	1128
14826	Tyrone	804
14827	Romeo	682
14828	Romeo	1481
14829	Romeo	1461
14830	McNary	1438
14831	McNary	2402
14832	McNary	932
14833	Heglar	2382
14834	Bruce	2500
14835	Bruce	1278
14836	Bruce	109
14837	Bruce	1547
14838	Peever	3241
14839	Country Life Acres	3196
14840	Grosse Pointe	2606
14841	Bardley	798
14842	Cat Creek	1222
14843	Whitsett	710
14844	Whitsett	1706
14845	Lonoke	1585
14846	Hydro	1404
14847	Cap Rock	574
14848	Mud Bay	1963
14849	Hoskinston	1957
14850	Salado	138
14851	Salado	1958
14852	Grand Bay	1301
14853	Sac City	844
14854	Theressa	415
14855	Evansburg	731
14856	Pickstown	3096
14857	Banquete	819
14858	El Dorado	501
14859	El Dorado	786
14860	Admire	141
14861	Stone Ridge	1952
14862	Virden	1352
14863	Virden	712
14864	Avera	1007
14865	Willowbrook	950
14866	Willowbrook	3201
14867	Willowbrook	404
14868	Allisonia	374
14869	Powellville	2067
14870	Ridgefield	3192
14871	Ridgefield	2326
14872	Ridgefield	1572
14873	Ridgefield	408
14874	Tollette	260
14875	North Brooksville	3274
14876	Hidden Valley	154
14877	Akers	1668
14878	Pleasant City	3048
14879	Mehama	677
14880	Kossuth	3205
14881	Kokrines	1462
14882	Haverford	731
14883	Everly	1537
14884	Terre Hill	1139
14885	Wyalusing	416
14886	Loyola	2198
14887	Frankford	1171
14888	Frankford	1887
14889	Frankford	2836
14890	Mill Creek	99
14891	Mill Creek	508
14892	Mill Creek	2678
14893	Mill Creek	2550
14894	Mill Creek	1166
14895	Vidal	721
14896	Ahloso	133
14897	Harwood Heights	761
14898	Baiting Hollow	940
14899	Catalina Foothills	1247
14900	Vansant	2811
14901	Avery	2235
14902	Avery	3144
14903	Avery	224
14904	Avery	2354
14905	Avery	1188
14906	Frankfort	875
14907	Frankfort	1597
14908	Frankfort	1257
14909	Frankfort	180
14910	Frankfort	2471
14911	Frankfort	2897
14912	Frankfort	2132
14913	Frankfort	1038
14914	Willow Valley	829
14915	Tanque	2013
14916	Braymer	2854
14917	Worland	1067
14918	Worland	1133
14919	Asherville	1476
14920	Boys Ranch	1691
14921	Spooner	880
14922	Owl Creek	311
14923	Bowlegs	1628
14924	Peavine	1385
14925	Bay Saint Louis	1966
14926	Doyline	2594
14927	Jigger	2140
14928	Skagway	1624
14929	Coupland	121
14930	Owings	2983
14931	Pierceton	718
14932	Sarah Ann	2179
14933	Croton	3255
14934	Croton	2095
14935	Brusett	3001
14936	Deville	2402
14937	Baraboo	1344
14938	Welton	2896
14939	Pinehurst	454
14940	Pinehurst	937
14941	Pinehurst	326
14942	Pinehurst	2440
14943	Pinehurst	95
14944	Pinehurst	3139
14945	Pinehurst	224
14946	Kadane Corner	294
14947	Ethan	1571
14948	Pinellas Park	2785
14949	Washingtonville	3235
14950	Washingtonville	3137
14951	Washingtonville	1662
14952	White Mills	2605
14953	Kennydale	3217
14954	Starks	364
14955	Summerhaven	1247
14956	Ironville	73
14957	Witten	922
14958	Morris Ranch	1886
14959	Whittier	1034
14960	Whittier	404
14961	Whittier	3172
14962	Verdigris	2831
14963	Suncoast Estates	2101
14964	Earlston	2954
14965	Witter	2049
14966	Tinaja	2160
14967	Alfordsville	435
14968	Pointe Aux Pins	1701
14969	Harrington Park	1572
14970	Northfield Center	1725
14971	Spanish Lake	3196
14972	Saint Augusta	1709
14973	Smithburg	2782
14974	Smithburg	278
14975	Lovejoy	1943
14976	Lagro	1245
14977	Edwards	1307
14978	Edwards	2974
14979	Edwards	1643
14980	Edwards	1046
14981	Hueytown	987
14982	Rosiclare	2391
14983	Shell Lake	880
14984	Blue Springs	506
14985	Blue Springs	288
14986	Blue Springs	1826
14987	Blue Springs	3206
14988	Tiburon	1515
14989	Muscoda	1131
14990	Starke	415
14991	Hallwood	3027
14992	Kahakuloa	2438
14993	Cross Hill	947
14994	Duque	1619
14995	Osteen	814
14996	Edmundson	3196
14997	White Rock	1997
14998	White Rock	3241
14999	White Rock	2478
15000	Tropic	3005
15001	Nacogdoches	1666
15002	Vestaburg	1356
15003	Tucson Estates	1247
15004	Naubinway	1701
15005	Point Pleasant Beach	2627
15006	Cheraw	345
15007	Cheraw	1616
15008	Johnsville	3011
15009	Kanab	323
15010	Angelica	1496
15011	Angelica	2827
15012	Amesville	741
15013	Cherryville	2835
15014	Cherryville	314
15015	Cherryville	1411
15016	Vidrine	62
15017	Exton	90
15018	Inwood	139
15019	Inwood	101
15020	Inwood	1722
15021	Inwood	2545
15022	Carpendale	974
15023	Cabo Rojo	1682
15024	Breien	1379
15025	Hanging Limb	2108
15026	Auvergne	1818
15027	Pioneer Village	843
15028	Slanesville	2921
15029	Nanuet	2960
15030	PeÃ±a Blanca	971
15031	Coffee Springs	2193
15032	Holloway Terrace	2563
15033	McAlister	1253
15034	West Buechel	997
15035	Annandale	1491
15036	Annandale	2405
15037	Annandale	2291
15038	Windthorst	3095
15039	Valliant	229
15040	Strandquist	2470
15041	Eddyville	2999
15042	Eddyville	1184
15043	Eddyville	2643
15044	Eddyville	2174
15045	Eddyville	143
15046	Bratenahl	708
15047	Slayton	2195
15048	Waltman	805
15049	Westview	1705
15050	Westview	918
15051	West Nanticoke	2641
15052	Taiban	1505
15053	McConnellstown	2550
15054	Huttig	501
15055	Holiday City	378
15056	Alvwood	2777
15057	Vandercook Lake	1819
15058	North Walpole	1228
15059	Hathaway	3069
15060	Hathaway	2377
15061	Echelon	2977
15062	Murray City	2236
15063	Bleecker	2102
15064	Molson	1874
15065	Allison Park	2632
15066	Adelphi	2064
15067	Adelphi	1257
15068	Ocean Park	1306
15069	Cantril	2430
15070	Lewis Center	2806
15071	Ê»Opihikao	1488
15072	Pine Island Center	2101
15073	Morton Grove	761
15074	Ethel	3159
15075	Ethel	1862
15076	Ethel	3121
15077	Morriston	1455
15078	Morriston	2716
15079	Southwest Harbor	1970
15080	Negra	1625
15081	Live Oak	1083
15082	Live Oak	3124
15083	Live Oak	220
15084	Cromberg	3011
15085	Newfoundland	792
15086	Newfoundland	2605
15087	Newfoundland	125
15088	Kinards	1657
15089	Luana	1942
15090	South Superior	3093
15091	South Superior	2823
15092	Contact	108
15093	Cicero	761
15094	Cicero	2071
15095	Cicero	2492
15096	Piermont	2960
15097	Felton	216
15098	Felton	853
15099	Felton	2104
15100	Felton	1530
15101	Felton	1362
15102	Vananda	2377
15103	Noorvik	2907
15104	Oak View	3221
15105	Penn Lake Park	2641
15106	Taberville	919
15107	Louvale	1100
15108	Stockton	1491
15109	Stockton	1698
15110	Stockton	1988
15111	Stockton	2018
15112	Stockton	66
15113	Stockton	590
15114	Stockton	1759
15115	Stockton	1702
15116	Stockton	1622
15117	Stockton	2423
15118	Stockton	2982
15119	Rhineland	736
15120	Gagen	3239
15121	Whiterocks	1443
15122	Iago	3047
15123	Cavalier	2418
15124	Badin	102
15125	Pantops	2829
15126	Crisman	2267
15127	Griswoldville	3021
15128	Cayuse	1544
15129	Shoreline	3217
15130	Berkeley	1556
15131	Berkeley	761
15132	Berkeley	3196
15133	Berkeley	3274
15134	South San Francisco	1423
15135	Coldiron	1898
15136	Monte Verde Comunidad	459
15137	Southwood Acres	1712
15138	Hapeville	2715
15139	Dusty	1464
15140	Moffett	1140
15141	North Canton	238
15142	Sunset Hills	3196
15143	Trosky	2373
15144	Alpena	1737
15145	Alpena	1584
15146	Alpena	252
15147	Gradyville	2809
15148	Gradyville	1387
15149	Valeene	3138
15150	Hunters Creek Village	145
15151	Gallant	1163
15152	Canute	757
15153	Poughkeepsie	3031
15154	Malaga	937
15155	Malaga	2358
15156	Malaga	348
15157	Santa Fe	2357
15158	Santa Fe	132
15159	Santa Fe	1750
15160	Santa Fe	2523
15161	Twin Mountain	773
15162	Buckhead	118
15163	Hepburn	1517
15164	Hepburn	2388
15165	Hookerton	555
15166	Willow Lake	2322
15167	Eltopia	2127
15168	Lattingtown	101
15169	Lajas	1763
15170	Taft	2731
15171	Taft	263
15172	Taft	1081
15173	Taft	1187
15174	Taft	3214
15175	Taft	3141
15176	Gillsville	518
15177	Copeville	1335
15178	Meridianville	2048
15179	Palatine	761
15180	Jameson	436
15181	Broken Bow	3064
15182	Broken Bow	229
15183	Harrington	216
15184	Harrington	1195
15185	Harrington	1047
15186	Wisner	3137
15187	Wisner	2140
15188	Wisner	2393
15189	Aceitunas	2868
15190	Newcastle	3217
15191	Newcastle	1454
15192	Newcastle	1189
15193	Newcastle	1864
15194	Newcastle	379
15195	Newcastle	2289
15196	Newcastle	2237
15197	Newcastle	214
15198	Eveleth	3195
15199	Teton Village	1391
15200	Teterville	3076
15201	Indian Creek Village	1705
15202	Reynolds Heights	2010
15203	Maudlow	579
15204	Sugar Bush Knolls	1637
15205	Osman	2283
15206	Wurtsboro	1946
15207	Bennington	2824
15208	Bennington	869
15209	Bennington	1780
15210	Bennington	1632
15211	Bennington	70
15212	Bennington	1731
15213	Ewan	1464
15214	Ewan	2626
15215	Tuttletown	2798
15216	Readsboro	1780
15217	Shackelford	1941
15218	Port Costa	3143
15219	Staunton	1049
15220	Staunton	1526
15221	Staunton	712
15222	Sopchoppy	1976
15223	South Cle Elum	400
15224	McDade	358
15225	Schley	256
15226	Schley	3179
15227	Fanshawe	2263
15228	Ak Chin	1247
15229	Dresser	2547
15230	Sink Creek	1816
15231	Monongahela	483
15232	Pellston	2519
15233	Reedsburg	1344
15234	Darfur	2796
15235	Gilead	3009
15236	Simonton	1890
15237	Startup	99
15238	Lake Wales	2545
15239	Baden	1056
15240	Baden	1883
15241	Baden	2064
15242	Arcadia Lakes	1675
15243	Alder Creek	3238
15244	Woolsey	1104
15245	Woolsey	2572
15246	Bicknell	2603
15247	Bicknell	581
15248	Tescott	1731
15249	Sherrill	3238
15250	Sherrill	988
15251	Sherrill	1931
15252	Ammon	1489
15253	Beechgrove	768
15254	Green Harbor	1936
15255	Emporia	882
15256	Emporia	141
15257	Worth	308
15258	Worth	761
15259	Worth	1837
15260	Keyes Summit	3196
15261	Seven Points	2652
15262	Zeigler	2139
15263	Swan River	2777
15264	Thornburg	960
15265	Thornburg	2632
15266	Trout Run	1770
15267	Lurton	1232
15268	Palmarejo Comunidad	1469
15269	Koyuk	717
15270	Antietam	492
15271	Whiteford	2959
15272	Heathsville	2962
15273	Penngrove	1790
15274	Lake Wildwood	1784
15275	West Bountiful	2875
15276	Monette	2621
15277	Campbell Hill	1825
15278	Los Prados Comunidad	1856
15279	Monetta	646
15280	Healing Springs	2374
15281	Indian River Shores	2114
15282	Duson	2769
15283	Park Hills	230
15284	Park Hills	2397
15285	Tuscarora	2826
15286	Tuscarora	108
15287	Tuscarora	386
15288	North Chicago	1326
15289	Cut and Shoot	734
15290	Pyatts	1842
15291	Pinecreek	877
15292	Macwahoc	2201
15293	Beach Lake	2605
15294	Tama	1861
15295	Tamo	988
15296	Hitchland	1520
15297	Anadarko	307
15298	Buck Run	2826
15299	Mayview	2774
15300	Conetoe	1098
15301	Wollochet	1925
15302	Bremer	1873
15303	Beaver Bay	1329
15304	El Sobrante	3143
15305	Braceville	2505
15306	Westley	1941
15307	Bremen	2464
15308	Bremen	406
15309	Bremen	2660
15310	Bremen	2577
15311	Bremen	1216
15312	Otay	2381
15313	Ewen	3072
15314	North Palm Beach	3071
15315	Hendricks	1092
15316	Hendricks	1192
15317	Leeper	297
15318	Leeper	2611
15319	Nallen	2564
15320	Basehor	1699
15321	Cedar Crest	405
15322	Cedar Crest	1884
15323	Maysville	748
15324	Maysville	3017
15325	Maysville	1645
15326	Maysville	2676
15327	Maysville	1756
15328	Maysville	775
15329	Maysville	2239
15330	Maysville	518
15331	Maysville	1879
15332	Tuba City	353
15333	Scottsburg	2241
15334	Scottsburg	796
15335	Scottsburg	386
15336	Scottsburg	2814
15337	Cosmos	2695
15338	Hickory Plains	1589
15339	Artesian	2858
15340	Big Flats	1524
15341	Lowell	955
15342	Lowell	1645
15343	Lowell	1436
15344	Lowell	2835
15345	Lowell	1323
15346	Lowell	95
15347	Lowell	1446
15348	Lowell	432
15349	Lowell	489
15350	Lowell	1697
15351	Lowell	682
15352	Lowell	219
15353	Brogden	2598
15354	Fawn Lake Forest	1177
15355	Merrifield	704
15356	Merrifield	2405
15357	Parmerton	3234
15358	Pasco	1915
15359	Pasco	2127
15360	Bolling	787
15361	Holtsville	940
15362	Bay Ridge	2440
15363	Islip Terrace	940
15364	Country Club Estates	1102
15365	White Ash	123
15366	Orchidlands Estates	1488
15367	Ocean Shores	2499
15368	Wanamie	2641
15369	Wever	2095
15370	Peacock	2155
15371	Wallsboro	808
15372	Lukeville	1247
15373	Lewistown Heights	2061
15374	Gressitt	1654
15375	East Avon	386
15376	Laguna Woods	3140
15377	Goldonna	2991
15378	Shelocta	2147
15379	Boothbay Harbor	1189
15380	Taos	1930
15381	Taos	722
15382	Woodsburgh	101
15383	Steeleville	2680
15384	Roper	463
15385	Roper	2937
15386	Roper	794
15387	East Newnan	2766
15388	Watsontown	2963
15389	Berenice	765
15390	Cheney	1431
15391	Cheney	887
15392	North Miami	1705
15393	North Miami	1732
15394	Sandia Knolls	405
15395	Paintsville	1270
15396	Islington	2618
15397	Sabana Comunidad	1996
15398	Luthersville	2995
15399	Cogar	307
15400	Village Springs	987
15401	Mangum	1463
15402	Mangum	2365
15403	Caplinger Mills	66
15404	Prineville	1018
15405	Spencer	1115
15406	Spencer	958
15407	Spencer	509
15408	Spencer	2432
15409	Spencer	2150
15410	Spencer	2328
15411	Spencer	665
15412	Spencer	1537
15413	Spencer	2343
15414	Spencer	628
15415	Spencer	1044
15416	Spencer	1760
15417	Spencer	828
15418	Spencer	863
15419	Spencer	72
15420	Hackney	1026
15421	Nogal	1199
15422	Guage	670
15423	Brownfield	2643
15424	Brownfield	3099
15425	Shamrock Lakes	900
15426	Garden Grove	3274
15427	Garden Grove	3140
15428	Garden Grove	2484
15429	Averill	1530
15430	Jefferson Hills	2632
15431	Camp Douglas	235
15432	Coalville	2590
15433	Coalville	1726
15434	Iroquois	1955
15435	Iroquois	1707
15436	Bramwell	2003
15437	Truscott	582
15438	Cross Timber	1266
15439	Gunder	1942
15440	Temple Hill	2935
15441	Darlove	485
15442	Coosawhatchie	3046
15443	Pine Knoll Shores	1182
15444	San Ramon	3143
15445	Shoal Creek Estates	1234
15446	New Smyrna Beach	814
15447	Dunkinsville	1292
15448	Moscow	2568
15449	Moscow	1360
15450	Moscow	1241
15451	Moscow	1497
15452	Moscow	988
15453	Moscow	2336
15454	Moscow	2540
15455	Moscow	3057
15456	Moscow	1702
15457	Moscow	659
15458	Nerstrand	2748
15459	Tallahassee	1207
15460	Grand Falls Plaza	1234
15461	Olimpo	2413
15462	Oak Hall	3027
15463	Vimy Ridge	104
15464	Micaville	1237
15465	Elsie	1135
15466	Elsie	2903
15467	Elsie	813
15468	Hillcrest	1984
15469	Hillcrest	2960
15470	Hillcrest	1978
15471	Egg Harbor	1708
15472	Lubeck	2337
15473	Tara	2590
15474	Iowa Point	2028
15475	Lovelaceville	1875
15476	Tennessee Colony	1395
15477	Madison Park	94
15478	Pitsburg	2636
15479	Trumansburg	2614
15480	Richwoods	475
15481	Bethayres	731
15482	East Whittier	404
15483	Wondervu	2267
15484	Kappa	1999
15485	Rothville	350
15486	Palmersville	2460
15487	Saint Pierre	453
15488	Arrowsmith	2283
15489	Cashton	2360
15490	Saddlestring	1265
15491	Old Station	2883
15492	North Ridge	2910
15493	Halsey	943
15494	Halsey	3028
15495	Hideaway	1603
15496	Blairville	2910
15497	Wakarusa	3145
15498	Wakarusa	2940
15499	Bohemia	940
15500	Trumbauersville	2634
15501	Lockhart	2575
15502	Lockhart	2853
15503	Lockhart	3141
15504	Lockhart	529
15505	Lockhart	503
15506	Amagansett	940
15507	White Mountain Lake	3161
15508	Stony Creek	2281
15509	Stony Creek	1888
15510	Stevens Point	1636
15511	Coffeen	735
15512	Adgateville	3045
15513	Culverton	1973
15514	Clifton Heights	2809
15515	Lay	1721
15516	Graceville	55
15517	Graceville	1816
15518	Kissimmee	2157
15519	Ackley	2387
15520	Mercersville	492
15521	Sadler	3261
15522	East Wilson	2910
15523	Iowa City	1263
15524	Marsing	982
15525	Cayuga	1095
15526	Cayuga	3010
15527	Cayuga	2023
15528	Cayuga	1395
15529	Cayuga	2808
15530	Chesapeake Ranch Estates	2983
15531	Wabasso	2114
15532	Wabasso	1250
15533	Swea City	1598
15534	Billings	2950
15535	Billings	3230
15536	Billings	332
15537	Wyodak	177
15538	Holyrood	293
15539	Three Rivers	3246
15540	Three Rivers	1706
15541	Three Rivers	3103
15542	Three Rivers	308
15543	Three Rivers	344
15544	Graford	1719
15545	Ceredo	2607
15546	Tate	368
15547	Elliston	1730
15548	Elliston	739
15549	Elliston	2913
15550	Clifftop	2564
15551	LaMoure	2029
15552	Oakton	2336
15553	Oakton	2405
15554	Efland	3135
15555	Aldrich	2171
15556	Aldrich	2542
15557	Brownbranch	753
15558	Floris	1881
15559	Floris	2405
15560	Floris	2874
15561	Minkler	937
15562	Aibonito	2034
15563	Sawyerville	1011
15564	Sawyerville	712
15565	Carrington	3117
15566	Meadow Lands	483
15567	Saint Croix Falls	2547
15568	Florin	2688
15569	Greybull	2723
15570	Stehekin	276
15571	Druid Hills	997
15572	Druid Hills	1751
15573	Blakesburg	2174
15574	Big Creek	937
15575	Big Creek	1278
15576	Big Creek	2179
15577	Big Creek	3167
15578	Big Creek	1981
15579	Elsey	2666
15580	Moriches	940
15581	Blades	1887
15582	Mappsburg	3027
15583	Damascus	2431
15584	Damascus	1085
15585	Damascus	740
15586	Damascus	2839
15587	Damascus	3223
15588	Damascus	491
15589	Deerwood	704
15590	Mahwah	1572
15591	Ithaca	3236
15592	Ithaca	2636
15593	Ithaca	2614
15594	Ithaca	720
15595	South Laguna	3140
15596	Gillett Grove	1537
15597	Barryton	1764
15598	Bladen	2596
15599	Inavale	2596
15600	Otis	1184
15601	Otis	474
15602	Otis	2515
15603	Otis	2402
15604	Dannebrog	262
15605	Hornbrook	337
15606	McQueen	2881
15607	Antelope Hills	805
15608	Waubun	1494
15609	Lady Lake	1331
15610	Costilla	1930
15611	Sherman	3261
15612	Sherman	1120
15613	Sherman	432
15614	Sherman	134
15615	Sherman	3112
15616	Sherman	695
15617	Sherman	2293
15618	Sherman	1128
15619	Manzanola	345
15620	Ladentown	2960
15621	Slinger	476
15622	Parkers Settlement	2859
15623	Green Acres	3210
15624	Green Acres	1323
15625	Lake Hughes	404
15626	Cayuco	2768
15627	Otho	2590
15628	Lee	2047
15629	Lee	1904
15630	Lee	108
15631	Lee	2098
15632	Lee	2672
15633	Lakeside City	3095
15634	Federal Heights	1290
15635	Harviell	783
15636	New Canton	1089
15637	New Canton	1170
15638	Fort Chadbourne	645
15639	Pelion	324
15640	Easton	2813
15641	Easton	937
15642	Easton	2830
15643	Easton	2501
15644	Easton	1699
15645	Easton	62
15646	Easton	314
15647	Easton	1160
15648	Easton	746
15649	Easton	400
15650	Leo	2161
15651	Leo	3036
15652	Bolivar Peninsula	2523
15653	Lakeland Heights	525
15654	Wiseman	1462
15655	Smiths Grove	2305
15656	Indian Head	335
15657	Dutch John	2285
15658	Pryorsburg	1071
15659	La Dolores Comunidad	1676
15660	Prescott	1072
15661	Prescott	2989
15662	Prescott	1783
15663	Prescott	1926
15664	Prescott	1287
15665	Prescott	2495
15666	Prescott	159
15667	Prescott	945
15668	Tegarden	2477
15669	Dialville	429
15670	Murfreesboro	2671
15671	Murfreesboro	1439
15672	Murfreesboro	1176
15673	Ohoopee	2216
15674	El Camino Angosto	1832
15675	Provencal	2991
15676	Potsdam	668
15677	Potsdam	1307
15678	Rock Hall	217
15679	Tobaccoville	1980
15680	Mesilla	1242
15681	Toomsuba	607
15682	Maunabo Zona Urbana	2437
15683	Stony Prairie	1340
15684	Reinholds	1139
15685	Cross Roads	2452
15686	Cross Roads	853
15687	Biglerville	1298
15688	Lillie	509
15689	Morada	590
15690	Culebra Zona Urbana	614
15691	Leisuretowne	2841
15692	Akeley	2784
15693	New Holland	1139
15694	New Holland	2181
15695	New Holland	1986
15696	New Holland	2818
15697	Fortson	2417
15698	Robins	944
15699	Rathdrum	3087
15700	Quintana	1984
15701	Rancho Murieta	2688
15702	Champlin	91
15703	Academy	3096
15704	Rington	1546
15705	Tahoe City	2289
15706	Sun City	3086
15707	Sun City	868
15708	Sun City	2024
15709	Babson Park	2545
15710	Wapello	58
15711	Crompond	1919
15712	Barnwell	2175
15713	Belmar	186
15714	Belmar	278
15715	Crownpoint	3150
15716	Isleton	2688
15717	West Blocton	1582
15718	Ewansville	2841
15719	Grove Hill	1214
15720	Wapella	552
15721	Ninaview	1998
15722	Buckatunna	2609
15723	Thurston	2191
15724	Thurston	406
15725	Drexel Hill	2809
15726	Collegeville	3041
15727	Collegeville	1709
15728	Collegeville	731
15729	Eaton Park	2545
15730	New Brunswick	94
15731	Redfield	522
15732	Redfield	1569
15733	Redfield	1666
15734	Redfield	988
15735	Redfield	1038
15736	Weeping Water	3181
15737	Cabin John	740
15738	Chokio	658
15739	Wannee	1549
15740	Elsah	1523
15741	Midfield	2674
15742	Midfield	987
15743	Sienna Plantation	1890
15744	Farristown	2046
15745	Little Chute	2266
15746	Santa Isabel Zona Urbana	2086
15747	Port Alsworth	2011
15748	Startex	3162
15749	Sandy Plains	394
15750	Brooktree Park	3180
15751	Medford Lakes	2841
15752	Chavies	1844
15753	Tallman	2960
15754	Pevely	993
15755	Beaman	2503
15756	Wyomissing Hills	362
15757	Ben Hur	2790
15758	Ben Hur	1232
15759	Davisboro	490
15760	Island Lake	1326
15761	Mullin	2496
15762	Vander	76
15763	Kipnuk	2260
15764	Challis	3063
15765	Reynolds	990
15766	Reynolds	1904
15767	Reynolds	1363
15768	Reynolds	1063
15769	Reynolds	2208
15770	Reynolds	3056
15771	New Pine Creek	1321
15772	Apple Springs	316
15773	Martin	1226
15774	Martin	1687
15775	Martin	1047
15776	Martin	2849
15777	Martin	2460
15778	Martin	270
15779	Martin	2234
15780	Martin	2908
15781	Martin	186
15782	Chester Heights	2809
15783	Queens	2219
15784	Beedeville	1818
15785	Blitchton	71
15786	Buckhannon	1658
15787	Four Oaks	1165
15788	Philomath	876
15789	Philomath	1638
15790	Chenoa	2283
15791	East Dunseith	1860
15792	Rosemount	3256
15793	Rosemount	2864
15794	Shalimar	2038
15795	Pinecrest	1705
15796	Parnell	552
15797	Parnell	2810
15798	Parnell	1022
15799	Parnell	3081
15800	West Burke	2765
15801	Seaside	2955
15802	Seaside	813
15803	New Baden	2898
15804	Four Seasons	2978
15805	Denville	2877
15806	Uncertain	619
15807	Nelsonville	2751
15808	Nelsonville	1636
15809	Nelsonville	741
15810	Hitschmann	613
15811	Ragan	1897
15812	Vestavia Hills	987
15813	Melville	2415
15814	Melville	940
15815	Melville	2217
15816	Melville	2967
15817	Hattieville	1573
15818	Hedrick	960
15819	Bath Corner	635
15820	Bon Meade	2632
15821	Dolliver	2518
15822	Vandenberg Village	2107
15823	Gilcrest	1101
15824	Blossburg	2151
15825	Blossburg	2913
15826	Marathon Shores	2348
15827	Travelers Rest	2031
15828	Cimarron Hills	3228
15829	Martha	1811
15830	Egegik	2011
15831	Miami Shores	1705
15832	East Moline	1363
15833	Woodcliff Lake	1572
15834	Decoy	1522
15835	Essington	2809
15836	Alfalfa	307
15837	Alfalfa	3246
15838	Dargan	492
15839	Marietta	2031
15840	Marietta	1139
15841	Marietta	2517
15842	Marietta	2256
15843	Marietta	1916
15844	Marietta	2712
15845	Marietta	394
15846	Marietta	489
15847	Marietta	3176
15848	Marietta	2471
15849	Marietta	2476
15850	Sherwood Manor	1712
15851	Funkstown	492
15852	Boulevard Park	3217
15853	Countryside	3118
15854	Countryside	761
15855	Spring Green	1344
15856	Rossmoor	94
15857	Rossmoor	740
15858	Rossmoor	3140
15859	Catarina	2363
15860	Yadkinville	1495
15861	Cherokee City	1645
15862	Algodones	971
15863	Otoe	2280
15864	Yorktown	2807
15865	Yorktown	2732
15866	Yorktown	849
15867	Yorktown	1517
15868	Yorktown	1194
15869	Lottaville	1323
15870	Dana Point	3140
15871	Cedar Grove	3217
15872	Cedar Grove	937
15873	Cedar Grove	2122
15874	Cedar Grove	915
15875	Cedar Grove	2473
15876	Cedar Grove	902
15877	Cedar Grove	1467
15878	Cedar Grove	2221
15879	Cedar Grove	740
15880	Cedar Grove	1750
15881	Cambridge City	2600
15882	New Lancaster	669
15883	Redington Shores	2785
15884	West Upton	1760
15885	Braselton	1829
15886	Goldendale	149
15887	Two Inlets	2458
15888	Leoville	2486
15889	Mount Carbon	2564
15890	Mount Carbon	2826
15891	Defiance	2333
15892	Defiance	2954
15893	Defiance	187
15894	Defiance	1082
15895	Belfair	744
15896	Yazoo City	3078
15897	Bee Branch	2431
15898	Leaf River	1978
15899	Bemidji	546
15900	Herman	1122
15901	Herman	473
15902	Herman	2149
15903	Carrollwood	868
15904	Maryland City	2440
15905	Icard	925
15906	Rossmore	2179
15907	Jean	214
15908	Jean	2329
15909	Martel	682
15910	Martel	692
15911	Moclips	2499
15912	Boydell	2862
15913	Akin	2139
15914	Saint Edward	253
15915	Walton Hills	708
15916	Carbondale	1825
15917	Carbondale	3057
15918	Carbondale	3003
15919	Carbondale	1156
15920	Carbondale	741
15921	Carl Junction	3044
15922	Clintondale	1952
15923	Dunean	2031
15924	Marin City	1515
15925	Anchorage	2364
15926	Anchorage	997
15927	Balmville	3137
15928	Dierks	260
15929	Bloomingdale	950
15930	Bloomingdale	868
15931	Bloomingdale	1006
15932	Bloomingdale	2791
15933	Bloomingdale	1631
15934	Bloomingdale	2433
15935	Bloomingdale	792
15936	Bloomingdale	1948
15937	Gageby	965
15938	Dunning	1406
15939	New Hebron	530
15940	Bertrandville	2473
15941	Frontenac	3196
15942	Frontenac	2189
15943	Frontenac	1997
15944	Frontenac	1414
15945	Callisburg	2161
15946	Declo	2382
15947	Coalton	1828
15948	Coalton	2678
15949	Coalton	735
15950	Harbour Heights	1506
15951	PÃ¡jaros	841
15952	Bernecker	961
15953	South Deerfield	2129
15954	Miranda Comunidad	1996
15955	Saltese	975
15956	Francis	1726
15957	Francis	579
15958	Francis	133
15959	South Euclid	708
15960	Hardin	1280
15961	Hardin	63
15962	Hardin	3107
15963	Hardin	2468
15964	Hardin	2724
15965	El Nido	1985
15966	Popes Creek	335
15967	Loa	2603
15968	Antonino	825
15969	Arundel Village	2440
15970	Redington Beach	2785
15971	Rolesville	1399
15972	East Lynne	3178
15973	Stiles	1372
15974	Stiles	2964
15975	Stiles	2874
15976	Benson	1956
15977	Benson	1999
15978	Benson	2709
15979	Benson	2588
15980	Benson	1311
15981	Benson	131
15982	Benson	3232
15983	Benson	1165
15984	Holiday Pocono	3038
15985	Raleigh Hills	465
15986	Thonotosassa	868
15987	Wrightwood	721
15988	Whitehaven	2067
15989	Fox Crossing	2690
15990	Whiting	3000
15991	Whiting	1636
15992	Whiting	1815
15993	Whiting	1323
15994	Whiting	1849
15995	Rougemont	1688
15996	Tunnel Hill	1268
15997	Tunnel Hill	3049
15998	Olivette	3196
15999	Glennie	2762
16000	Nekoosa	2339
16001	Oracle Junction	1914
16002	Low	1622
16003	Archibald	1671
16004	Days Creek	2814
16005	Kinloch	3196
16006	Sublette	2098
16007	Sublette	1181
16008	Guayama	2413
16009	Pine Level	413
16010	Pine Level	1165
16011	Mayhew	3066
16012	Copper Canyon	2452
16013	Mollusk	1136
16014	South Burlington	2801
16015	Patterson Heights	1883
16016	Franklin Lakes	1572
16017	Vaudreuil	1830
16018	McCord Bend	2666
16019	Braddyville	1517
16020	Slade	2914
16021	Lely Resort	832
16022	Milltown	1757
16023	Milltown	90
16024	Milltown	1409
16025	Milltown	2547
16026	Milltown	1387
16027	Milltown	94
16028	Milltown	1810
16029	Lee Mont	3027
16030	Broadwater	2918
16031	Broadwater	2206
16032	Hilliards	789
16033	Morning Glory	3227
16034	Hermon	1307
16035	South Congaree	324
16036	Fairway	1272
16037	Kathleen	2545
16038	Overpeck	785
16039	Hokah	2115
16040	Cooks Hammock	2771
16041	Kokhanok	2011
16042	Salters	2429
16043	Ronceverte	2836
16044	Otto	2723
16045	Otto	2597
16046	Lake Almanor Peninsula	3011
16047	Jeffersontown	997
16048	Gene Autry	2560
16049	Waubay	2449
16050	Claypool	718
16051	Claypool	2920
16052	Madoc	1502
16053	Ball Club	2777
16054	Lewes	1887
16055	Crown	297
16056	Crown	1084
16057	Hiattville	1569
16058	Gadsden	2113
16059	Gadsden	1163
16060	Gadsden	1675
16061	Gadsden	899
16062	Filer City	2162
16063	MÄhukona	1488
16064	La Cienega	1750
16065	Jeff	1844
16066	Memphis Junction	2305
16067	Wallkill	1952
16068	Cobleskill	2416
16069	Galesville	854
16070	Galesville	2440
16071	Krider	1678
16072	Bargersville	1264
16073	Lost Cabin	968
16074	Walnutport	314
16075	West Frankfort	2139
16076	Upper Saint Clair	2632
16077	Tempiute	1206
16078	Geismar	1618
16079	Michigamme	1058
16080	LÄ«huÊ»e	2209
16081	PÄhala	1488
16082	Bertrand	1302
16083	Bertrand	1767
16084	Bertrand	939
16085	Tallassee	2421
16086	Tallassee	808
16087	Chamois	1155
16088	Ludlam	1705
16089	Eustace	2652
16090	Dillsburg	853
16091	Lake Hallie	660
16092	Camp Swift	358
16093	Altamonte Springs	1627
16094	Cactus	327
16095	Point Blue	62
16096	Peoria	3086
16097	Peoria	3132
16098	Peoria	510
16099	Peoria	943
16100	Peoria	2456
16101	Peoria	1732
16102	Peoria	2133
16103	Peoria	2362
16104	Gustine	1985
16105	Gustine	2511
16106	Plandome Heights	101
16107	Impact	1061
16108	Warner Springs	2381
16109	Union Hill	2870
16110	Donalsonville	1629
16111	Red Mountain	721
16112	Antonito	1461
16113	Poteet	1017
16114	Portage Lakes	1725
16115	Marshall	2924
16116	Marshall	107
16117	Marshall	2367
16118	Marshall	2182
16119	Marshall	749
16120	Marshall	2041
16121	Marshall	2968
16122	Marshall	576
16123	Marshall	2319
16124	Marshall	2791
16125	Marshall	1286
16126	Marshall	140
16127	Marshall	2267
16128	Marshall	1431
16129	Marshall	3224
16130	Marshall	619
16131	PuÊ»uwai	2209
16132	San Pedro	2068
16133	San Pedro	1750
16134	San Pedro	819
16135	Mifflin	383
16136	Mifflin	1729
16137	South Hooksett	598
16138	Green City	1951
16139	Papalote	981
16140	Roe Park	1919
16141	Tenmile	2814
16142	Dickson City	3057
16143	Little Flock	1645
16144	Deep River	2445
16145	Deep River	2265
16146	Queets	989
16147	Ferndale	375
16148	Ferndale	2440
16149	Ferndale	319
16150	Ferndale	1331
16151	Ferndale	1983
16152	Ferndale	2663
16153	Ferndale	3032
16154	Port Jefferson	194
16155	Port Jefferson	940
16156	Kulpsville	731
16157	Red Boiling Springs	3157
16158	Grangeville	861
16159	Grangeville	1458
16160	Sachse	525
16161	Carytown	3044
16162	Cross	1723
16163	Mitchelltown	2374
16164	Hansell	2136
16165	Augustus	855
16166	Tenafly	1572
16167	Westwood	1106
16168	Westwood	3196
16169	Westwood	90
16170	Westwood	1272
16171	Westwood	997
16172	Westwood	419
16173	Westwood	2799
16174	Westwood	1572
16175	Earth	1374
16176	Nortonville	998
16177	Nortonville	3253
16178	Nortonville	2029
16179	Poteau	2263
16180	Tidewater	1184
16181	Premont	2803
16182	Bonne Terre	230
16183	Whispering Pines	326
16184	Whispering Pines	2920
16185	Woodleaf	863
16186	West Glens Falls	2302
16187	Rollingstone	2423
16188	Hartsdale	1919
16189	Mount Carroll	2226
16190	Lum	3188
16191	Akra	2418
16192	Nethers	2059
16193	Los Indios	1832
16194	Grantwood Village	3196
16195	South Fallsburg	1946
16196	Cheltenham	2064
16197	Sycamore	1407
16198	Sycamore	1687
16199	Sycamore	2536
16200	Sycamore	2233
16201	Sycamore	728
16202	Sycamore	997
16203	Sycamore	1755
16204	Sycamore	2808
16205	North Sioux City	499
16206	Lewis	3110
16207	Lewis	2615
16208	Lewis	2547
16209	Lewis	3174
16210	Lewis	1651
16211	Alire	2725
16212	Altamahaw	1509
16213	McWillie	2269
16214	Prospect Valley	1101
16215	Kinbrae	1090
16216	Hewlett Neck	101
16217	Mayking	3133
16218	Esterbrook	3170
16219	Hurstbourne	997
16220	Selmer	1647
16221	Handshoe	1522
16222	Royville	1453
16223	Parkville	1498
16224	Parkville	1851
16225	Parkville	853
16226	Haywood	1630
16227	Covington	3217
16228	Covington	452
16229	Covington	602
16230	Covington	361
16231	Covington	2905
16232	Covington	2149
16233	Covington	2397
16234	Covington	3004
16235	Covington	668
16236	Covington	1684
16237	Covington	1230
16238	Chamberlin	521
16239	Fayette	1035
16240	Fayette	2714
16241	Fayette	1002
16242	Fayette	2565
16243	Fayette	259
16244	Fayette	2573
16245	Apple Creek	2612
16246	Sodaville	943
16247	Dover-Foxcroft	1852
16248	Green Pond	2877
16249	Green Pond	2109
16250	Nanson	1860
16251	Millstadt	918
16252	Hilden	223
16253	Tavares	1331
16254	Highland Holiday	2924
16255	Vaughns Mill	2914
16256	Deer Trail	2362
16257	White Hills	829
16258	Simmons	2273
16259	Boyne City	541
16260	Biggers	2684
16261	Kenosha	2582
16262	Village Green	2809
16263	Village Green	2979
16264	Parker Crossroads	2653
16265	Harbor Isle	101
16266	Bluff City	2569
16267	Bluff City	1948
16268	Bluff City	1783
16269	Bluff City	1794
16270	Landmark	375
16271	North Industry	238
16272	Vandemere	2255
16273	Linville	2084
16274	Linville	1614
16275	Sheep Springs	2929
16276	Falls	1029
16277	Quinton	3211
16278	Quinton	2628
16279	South Komelik	1247
16280	Laguna Park	340
16281	Beaumont	3210
16282	Beaumont	1839
16283	Beaumont	398
16284	Beaumont	1003
16285	Beaumont	786
16286	Sixes	811
16287	Vista Santa Rosa	3210
16288	Silvis	1363
16289	Cementon	1372
16290	Husser	169
16291	New Square	2960
16292	Hannawa Falls	1307
16293	Jelm	923
16294	Manuelito	3150
16295	Paradise	766
16296	Paradise	1139
16297	Paradise	1462
16298	Paradise	2329
16299	Paradise	1147
16300	Paradise	2709
16301	Paradise	1450
16302	Paradise	75
16303	Paradise	662
16304	Warrens	2360
16305	Dalton City	742
16306	Papineau	1955
16307	Bandana	1875
16308	Christine	1017
16309	Christine	1673
16310	Tonyville	308
16311	Annawan	1109
16312	Mappsville	3027
16313	Waubeka	608
16314	Wautauga Beach	1048
16315	Union Park	3141
16316	Arbury Hills	875
16317	Shinnecock Hills	940
16318	Baneberry	985
16319	Lushton	852
16320	Golden Eagle	1280
16321	Saint Benedict	1598
16322	Saint Benedict	284
16323	Saint Benedict	2905
16324	Belvoir	1503
16325	Ivydale	1536
16326	Avondale	1005
16327	Avondale	2030
16328	Avondale	3086
16329	Avondale	1541
16330	Avondale	90
16331	North Berwick	850
16332	Port Charlotte	1506
16333	Darbydale	2141
16334	Valley Stream	101
16335	Inyokern	263
16336	Balcom	508
16337	Provincetown	1162
16338	Tobin	3011
16339	Netarts	2093
16340	Indian Village	440
16341	Indian Village	3102
16342	Stone Harbor	1994
16343	Swiftwater	2351
16344	Wacouta	1997
16345	Gardnerville	2825
16346	North San Ysidro	1039
16347	Lemeta	209
16348	Jena	2062
16349	Jena	2394
16350	China Lake Acres	263
16351	Bonanza Mountain Estates	2267
16352	Maineville	2312
16353	Durango	2106
16354	Durango	1931
16355	Bosworth	2228
16356	Pelham	2504
16357	Pelham	1919
16358	Pelham	195
16359	Pelham	516
16360	Pelham	1475
16361	Helix	1544
16362	Milton	380
16363	Milton	2885
16364	Milton	2715
16365	Milton	516
16366	Milton	2492
16367	Milton	1720
16368	Milton	1952
16369	Milton	2963
16370	Milton	1887
16371	Milton	2430
16372	Milton	1925
16373	Milton	837
16374	Milton	2769
16375	Milton	2600
16376	Milton	1979
16377	Milton	1170
16378	Milton	2801
16379	Milton	758
16380	Milton	2618
16381	Canton	2052
16382	Canton	416
16383	Canton	2315
16384	Canton	238
16385	Canton	2531
16386	Canton	3019
16387	Canton	1307
16388	Canton	1404
16389	Canton	1804
16390	Canton	431
16391	Canton	2556
16392	Canton	2712
16393	Canton	1191
16394	Canton	700
16395	Canton	2522
16396	Fairfax Station	2405
16397	Idalia	2112
16398	Christina	2061
16399	Branford	3124
16400	Yardley	2634
16401	Mackville	479
16402	Mackville	2266
16403	Lake End	2234
16404	Wannaska	877
16405	Alamo Heights	1083
16406	Bushland	714
16407	Johannesburg	263
16408	New Bremen	3007
16409	Ledbetter	390
16410	Ledbetter	3089
16411	Balltown	1931
16412	Balltown	274
16413	Snell	1212
16414	Saint Bernice	1095
16415	Hatboro	731
16416	Valley Green	853
16417	Scarlets Mill	362
16418	Pultneyville	2599
16419	New Stuyahok	2019
16420	Wrangell	2673
16421	Struthers	2839
16422	Pippa Passes	1522
16423	Summerland Key	2348
16424	Elephant Butte	170
16425	Frances	1786
16426	Frances	1306
16427	Isola	2425
16428	Gerty	3053
16429	Leupp	353
16430	Metcalf Gap	1719
16431	Mount Pleasant	1106
16432	Mount Pleasant	2385
16433	Mount Pleasant	1006
16434	Mount Pleasant	905
16435	Mount Pleasant	1633
16436	Mount Pleasant	1010
16437	Mount Pleasant	1020
16438	Mount Pleasant	2463
16439	Mount Pleasant	426
16440	Mount Pleasant	1667
16441	Mount Pleasant	1035
16442	Mount Pleasant	2398
16443	Black Eagle	2334
16444	Scribner	956
16445	Nelliston	724
16446	Kannapolis	1010
16447	New Village	2306
16448	Orviston	393
16449	Brasfield	1589
16450	Verdery	3075
16451	Letohatchee	3065
16452	Marrero	1005
16453	Maria Antonia	1252
16454	Silver	645
16455	Steamboat	932
16456	Highland Springs	59
16457	Menasha	2690
16458	Mountain Ranch	3144
16459	El Lago	145
16460	Big Bend	1975
16461	Big Bend	2883
16462	Big Bend	2426
16463	Spicer	2457
16464	Chugwater	1849
16465	Talbott	985
16466	Byron Center	219
16467	Old Bridge	94
16468	Fulton	2551
16469	Fulton	600
16470	Fulton	261
16471	Fulton	137
16472	Fulton	1214
16473	Fulton	2711
16474	Fulton	2846
16475	Fulton	1569
16476	Fulton	1262
16477	Fulton	1586
16478	Fulton	1821
16479	Fulton	2713
16480	Fulton	1790
16481	Fulton	1718
16482	Fulton	148
16483	Mount Auburn	2949
16484	Mount Auburn	2600
16485	Mount Auburn	1639
16486	Mountainside	502
16487	Kendale Lakes	1705
16488	Lahoma	3004
16489	Woodbury Heights	2626
16490	Central Gardens	1003
16491	Park Rapids	2784
16492	Blackburn	1254
16493	Blackburn	107
16494	Howard Lake	2291
16495	San Jacinto	3210
16496	Elton	2639
16497	Elton	2554
16498	Elton	3069
16499	Ballston Spa	1484
16500	Youngstown	902
16501	Youngstown	2385
16502	Youngstown	2910
16503	Youngstown	2839
16504	Rainbow	694
16505	Rainbow	2381
16506	Signal Mountain	2073
16507	Tortilla Flat	3086
16508	New Cumberland	1964
16509	New Cumberland	83
16510	Haleyville	2970
16511	Richford	2121
16512	Ferrysburg	1733
16513	Kekoskee	955
16514	Garden	1798
16515	Garden	2746
16516	Westmoreland City	2385
16517	Gulnare	1172
16518	Gulnare	205
16519	Chickamauga	1351
16520	Pleasant Valley	3031
16521	Pleasant Valley	3118
16522	Pleasant Valley	209
16523	Pleasant Valley	2385
16524	Pleasant Valley	686
16525	Pleasant Valley	294
16526	Pleasant Valley	1541
16527	Wilkes-Barre	2641
16528	Citrus Park	3086
16529	Citrus Park	868
16530	Berkley	1290
16531	Berkley	247
16532	Berkley	2663
16533	Agawam	542
16534	Agawam	1393
16535	Agawam	2493
16536	Eaton	2807
16537	Eaton	241
16538	Eaton	1101
16539	Mardela Springs	2067
16540	Utuado	2768
16541	Port Mayaca	2212
16542	Ouray	2775
16543	Ouray	1443
16544	Lucien	3230
16545	Duck	842
16546	Des Lacs	1551
16547	Loris	3220
16548	Doddridge	2703
16549	West Sunbury	789
16550	Harperville	2240
16551	El Casco	3210
16552	Terrace Heights	3268
16553	Oatman	829
16554	Valley View	950
16555	Valley View	2046
16556	Valley View	2161
16557	Valley View	2826
16558	Valley View	708
16559	Doffing	1353
16560	Casselton	3180
16561	Snowville	374
16562	Snowville	1421
16563	Keatchie	1311
16564	Fogelsville	1372
16565	Beverly Shores	2498
16566	Germanton	347
16567	Playita	280
16568	The Village	958
16569	Lundell	1559
16570	Avon Heights	1493
16571	Algonac	920
16572	Selah	3268
16573	Edgewood	2632
16574	Edgewood	2959
16575	Edgewood	1742
16576	Edgewood	2426
16577	Edgewood	2044
16578	Edgewood	1925
16579	Edgewood	1804
16580	Edgewood	3141
16581	Edgewood	337
16582	Edgewood	462
16583	Edgewood	1942
16584	Edgewood	2397
16585	Edgewood	1750
16586	Orick	319
16587	Scarsdale	2473
16588	Scarsdale	1919
16589	Beaver Springs	2163
16590	Table Rock	3093
16591	Table Rock	753
16592	Table Rock	1255
16593	Table Rock	1298
16594	Rockwell	863
16595	Rockwell	1596
16596	Rockwell	2446
16597	West Sand Lake	2828
16598	Clifton Springs	357
16599	Cantil	263
16600	Armstrongs Mills	1591
16601	Lordstown	2946
16602	Otwell	2621
16603	Otwell	1169
16604	Man	2179
16605	Parks	353
16606	Parks	1096
16607	Parks	2249
16608	Parks	1623
16609	Las Carolinas Comunidad	1856
16610	Parma	2039
16611	Parma	1819
16612	Parma	708
16613	Parma	1857
16614	Falun	103
16615	Elderon	628
16616	Tunnelhill	3032
16617	May	2891
16618	May	633
16619	May	1793
16620	Max	2282
16621	Max	2777
16622	Max	1096
16623	Pinhook	939
16624	Fancy Farm	1071
16625	Moab	1152
16626	Gilbert	3195
16627	Gilbert	673
16628	Gilbert	576
16629	Gilbert	3086
16630	Gilbert	324
16631	Gilbert	2581
16632	Gilbert	2140
16633	Escanaba	1798
16634	Hindman	1522
16635	Idalou	300
16636	Girvin	1693
16637	Chattahoochee Hills	2715
16638	Donalds	1944
16639	Shinglehouse	715
16640	Portage Des Sioux	1082
16641	Sappho	185
16642	Robesonia	362
16643	Larsmont	1329
16644	Couderay	2833
16645	Longport	2617
16646	Wynne	2482
16647	Mamers	2702
16648	Los Olivos	2107
16649	Bobo	161
16650	Stephens	244
16651	PeÃ±a Pobre Comunidad	1619
16652	Crocketts Bluff	2623
16653	Darragh	2385
16654	Tignall	447
16655	Rucker	2511
16656	Bellefontaine	2184
16657	Bellefontaine	2591
16658	Bellefontaine	1301
16659	Alexander City	2933
16660	Boaz	1336
16661	Boaz	1674
16662	Boaz	2337
16663	Boaz	2472
16664	Rembert	515
16665	Aviston	2898
16666	West Dover	3097
16667	Igloo	124
16668	Chignik	2011
16669	Alta Loma	721
16670	Lonaconing	1497
16671	Moca	2868
16672	Selman	1793
16673	Aberdeen	2355
16674	Aberdeen	326
16675	Aberdeen	2959
16676	Aberdeen	635
16677	Aberdeen	2499
16678	Aberdeen	672
16679	Aberdeen	636
16680	Aberdeen	784
16681	Aberdeen	2498
16682	Boulder Town	3005
16683	Pine Lakes	1331
16684	Fort Hancock	1438
16685	Luning	977
16686	Bock	2200
16687	Kramer	1138
16688	Kramer	1717
16689	West Linn	3223
16690	Saint Martinville	1623
16691	Snowdoun	729
16692	Wynot	65
16693	West Hills	940
16694	West Hills	775
16695	Seaman	1292
16696	Tupper Lake	2131
16697	East Side	3038
16698	Bellville	61
16699	Bellville	1340
16700	Bellville	1652
16701	Woodberry	1284
16702	Decaturville	2978
16703	Decaturville	2488
16704	Corozal	2880
16705	West Line	3178
16706	Deerfield	1326
16707	Deerfield	1261
16708	Deerfield	2586
16709	Deerfield	227
16710	Deerfield	2453
16711	Deerfield	749
16712	Deerfield	1637
16713	Deerfield	2129
16714	Habersham	2884
16715	West Elmira	1524
16716	Tariffville	1712
16717	Ridley Park	2809
16718	North Cohasset	2618
16719	Manderson	1774
16720	Manderson	2723
16721	Cleghorn	428
16722	Mechanicville	1484
16723	Rolling Fields	997
16724	South Ashburnham	1760
16725	Rushton	389
16726	Bode	318
16727	Camanche	2896
16728	Kelliher	546
16729	Alzada	2558
16730	Kinwood	145
16731	Scipio	3211
16732	Scipio	2152
16733	Scipio	2122
16734	Seagrove Beach	1547
16735	Moraga	3143
16736	Lyons	2714
16737	Lyons	362
16738	Lyons	1390
16739	Lyons	557
16740	Lyons	2749
16741	Lyons	943
16742	Lyons	820
16743	Lyons	2267
16744	Lyons	761
16745	Lyons	1613
16746	Lyons	129
16747	Lyons	2599
16748	Lyons	2216
16749	Jeffersonville	448
16750	Jeffersonville	2571
16751	Jeffersonville	2318
16752	Jeffersonville	2911
16753	Jeffersonville	727
16754	Jeffersonville	1946
16755	Island Pond	2741
16756	McCutchenville	2233
16757	Brimfield	1637
16758	Brimfield	2456
16759	Avon Lake	845
16760	Chenoweth	906
16761	Resota Beach	902
16762	West York	1410
16763	West York	853
16764	Arbyrd	1546
16765	Refugio	2919
16766	Lucile	1458
16767	Ludlow	1217
16768	Ludlow	388
16769	Ludlow	2397
16770	Ludlow	205
16771	Ludlow	2240
16772	Ludlow	3013
16773	Ludlow	721
16774	Ludlow	2483
16775	Ludlow	519
16776	Geddes	3096
16777	Gamaliel	2347
16778	Gamaliel	2459
16779	Nunapitchuk	2260
16780	Central Islip	940
16781	Gagetown	1486
16782	Alba	2340
16783	Alba	3044
16784	Alba	416
16785	Alba	1855
16786	Burnside	1618
16787	Burnside	1300
16788	Burnside	932
16789	Burnside	1429
16790	Burnside	372
16791	Middleton	1788
16792	Middleton	749
16793	Middleton	2697
16794	Middleton	2039
16795	Middleton	720
16796	Old Washington	748
16797	Old Washington	3048
16798	McGee	2611
16799	Saxapahaw	1509
16800	Lucca	2341
16801	Rossmoyne	2075
16802	Grahamtown	1497
16803	Highland	2924
16804	Highland	2054
16805	Highland	3080
16806	Highland	1323
16807	Highland	261
16808	Highland	2372
16809	Highland	705
16810	Highland	1532
16811	Highland	700
16812	Highland	1952
16813	Highland	721
16814	Highland	2028
16815	Coalridge	1223
16816	Northglenn	1290
16817	Tell City	1840
16818	Lucan	1250
16819	Maxville	1103
16820	Glasco	1952
16821	Glasco	2947
16822	Redkey	414
16823	Donnelsville	2323
16824	Ocean Breeze Park	2212
16825	Eagle Valley	3137
16826	Monte Sereno	2198
16827	Alco	2664
16828	Lucas	1672
16829	Lucas	1450
16830	Lucas	3070
16831	Lucas	1335
16832	Lucas	1868
16833	Lucas	2935
16834	Lucas	2941
16835	Wahoo	3236
16836	Damariscotta	1189
16837	Duke	1811
16838	Parral	2552
16839	Parran	3012
16840	Ranchos de Taos	1930
16841	Elizabethville	1369
16842	Fiddletown	2253
16843	Oak Grove Heights	560
16844	Bedford	380
16845	Bedford	2954
16846	Bedford	1060
16847	Bedford	1186
16848	Bedford	708
16849	Bedford	1919
16850	Bedford	2952
16851	Bedford	531
16852	Bedford	3084
16853	McIntire	1474
16854	Paris	1632
16855	Paris	1108
16856	Paris	2187
16857	Paris	1570
16858	Paris	893
16859	Paris	2192
16860	Paris	2357
16861	Paris	483
16862	Paris	2770
16863	Paris	944
16864	West Smithfield	1165
16865	Lizton	1891
16866	Canovanas	396
16867	Gu Oidak	1247
16868	Weeki Wachee	3274
16869	Dunn	2702
16870	Dunn	3193
16871	Dunn	1671
16872	Fort Loramie	194
16873	Winston	2422
16874	Winston	170
16875	Winston	436
16876	Winston	2814
16877	Rushford Village	700
16878	Iron Gate	777
16879	Palomas	1253
16880	Palomas	2435
16881	Butler Junction	789
16882	Attalla	1163
16883	Dedham	2224
16884	Dedham	2618
16885	Alda	1023
16886	Trident	579
16887	Grand Marsh	1295
16888	Lowry City	919
16889	Lucin	1421
16890	Knolls	1622
16891	La Salle	2507
16892	La Salle	2796
16893	La Salle	1101
16894	La Salle	1823
16895	Osborn	2899
16896	Joshua	1266
16897	Beech Grove	678
16898	Beech Grove	2284
16899	Cohoes	924
16900	Skyforest	721
16901	Alex	2493
16902	Winter Harbor	1970
16903	Florey	1299
16904	Munson	758
16905	Grays River	2445
16906	Juilliard	714
16907	Valley Grande	523
16908	Mount Aetna	362
16909	Mount Aetna	492
16910	Eckhart Mines	1497
16911	Lorraine	293
16912	Lorraine	995
16913	Burwell	3006
16914	Flores	2495
16915	Calvert	750
16916	Calvert	652
16917	Calvert	1301
16918	Crossgate	997
16919	Waitsburg	2989
16920	Granger	522
16921	Granger	121
16922	Granger	3102
16923	Granger	3268
16924	Granger	2727
16925	Granger	3093
16926	Granger	700
16927	Brewerton	2979
16928	Loveland Park	2312
16929	Cooper City	2729
16930	Mio	1853
16931	Blue Rapids	2471
16932	Daytona Beach Shores	814
16933	Martorell Comunidad	280
16934	Wabasha	2988
16935	Cranberry Lake	1889
16936	Cranberry Lake	1307
16937	Shenandoah Heights	2826
16938	Kitalou	300
16939	Chrisney	1939
16940	Orting	1925
16941	Wittmann	3086
16942	Brenton	1027
16943	Isla Vista	2107
16944	Taholah	2499
16945	Enfield	3134
16946	Enfield	795
16947	Enfield	1907
16948	Country Club Hills	761
16949	Country Club Hills	3196
16950	Barrington Woods	761
16951	Brodheadsville	2351
16952	Henry Fork	2143
16953	West Burlington	1482
16954	Susank	613
16955	Vernonia	1072
16956	Four Town	546
16957	Garysburg	312
16958	Baytown	145
16959	Dupo	918
16960	Vici	201
16961	Vick	2699
16962	Vick	1694
16963	Vick	1975
16964	Mission Hill	836
16965	Englewood Cliffs	1572
16966	Utopia	2455
16967	Kirkmansville	2650
16968	Fruit Cove	223
16969	Ragley	1727
16970	Ohlman	735
16971	Corley	187
16972	Cooper Heights	1351
16973	Rose Farm	1845
16974	Thomas	3217
16975	Thomas	1092
16976	Thomas	3062
16977	Thomas	483
16978	Buckhead Ridge	1377
16979	Vian	1140
16980	Arboles	86
16981	Bossier City	1635
16982	Short Hills	2744
16983	East Ithaca	2614
16984	Sarver	789
16985	Kiryas Joel	3137
16986	Edmeston	778
16987	Wharton	2877
16988	Wharton	2233
16989	Wharton	3047
16990	Maceo	437
16991	Rib Lake	1065
16992	Lostwood	354
16993	Mineral Ridge	2946
16994	Torreon	1625
16995	Korona	1696
16996	Poindexter	621
16997	Zuni	1595
16998	Chewton	540
16999	Bessemer	987
17000	Bessemer	1772
17001	Bessemer	540
17002	Bazile Mills	589
17003	Banida	2144
17004	Ketchikan	2525
17005	Level Plains	674
17006	Hallettsville	978
17007	Niobrara	589
17008	Grays Prairie	2361
17009	Honeoye Falls	2344
17010	Kiel	626
17011	Hernandez	2725
17012	Castro Valley	1556
17013	Bajandas	2170
17014	Exum	3263
17015	Tonalea	353
17016	Waucousta	2090
17017	Maxeys	876
17018	Industry	61
17019	Industry	1531
17020	Industry	404
17021	Industry	1883
17022	Industry	3131
17023	Supreme	771
17024	Myrtle Beach	3220
17025	Grenola	163
17026	Lackawanna	1510
17027	Loganton	2902
17028	Campanilla Comunidad	1334
17029	Tumbling Shoals	3276
17030	Sikeston	2244
17031	Barbours	1770
17032	Mulkeytown	2139
17033	Pine Ridge at Crestwood	2627
17034	Las Marias	1375
17035	Stratton	2197
17036	Stratton	1006
17037	Stratton	2124
17038	Stratton	2802
17039	Alix	2126
17040	Destin	2038
17041	Brumley Gap	491
17042	Bolt	1634
17043	Nanwalek	1806
17044	Celeryville	341
17045	Marriott-Slaterville	1433
17046	Lucky	1762
17047	Floral	138
17048	Floral	1026
17049	Brachfield	2501
17050	Reamstown	1139
17051	Blandinsville	3131
17052	North Granby	1712
17053	Levan	1576
17054	Paron	104
17055	Nederland	2267
17056	Nederland	1003
17057	Cove City	135
17058	Vida	1920
17059	Vida	1446
17060	Aripeka	1915
17061	Ahwahnee	1563
17062	Third Lake	1326
17063	Kief	3191
17064	Maricopa	1914
17065	Maricopa	263
17066	Neck City	3044
17067	Bella Villa	3196
17068	Bedford Park	761
17069	Melrose	2354
17070	Melrose	95
17071	Melrose	432
17072	Melrose	2814
17073	Melrose	1709
17074	Melrose	1830
17075	Melrose	812
17076	Melrose	2026
17077	Melrose	1666
17078	Melrose	2956
17079	Brigham City	1421
17080	Rich Fountain	1155
17081	Windham	2145
17082	Windham	1637
17083	Windham	556
17084	Barrington	761
17085	Barrington	2977
17086	Kunkletown	2351
17087	Mellen	382
17088	Orange City	814
17089	Orange City	2926
17090	Branch Dale	2826
17091	Moreland Hills	708
17092	Pleasant Lake	2886
17093	Pleasant Lake	1709
17094	Cottage Hill	2667
17095	Somesville	1970
17096	Amity Gardens	362
17097	Selby	1093
17098	Mona	1474
17099	Mona	1576
17100	Newburgh Heights	708
17101	Bayfield	3109
17102	Bayfield	2106
17103	Ponce Inlet	814
17104	Tower City	3180
17105	Tower City	2826
17106	De Rossett	1906
17107	Fontenelle	1186
17108	Aztec	2113
17109	Aztec	2929
17110	Tiverton	2415
17111	Wheelock	750
17112	Centerfield	1035
17113	Mankins	3095
17114	Browndell	3042
17115	Upper Marlboro	2064
17116	Daisetta	3107
17117	Boma	2753
17118	HeÊ»eia	1878
17119	PiÃ±on	344
17120	Wyola	2724
17121	Blackwater	1914
17122	Blackwater	158
17123	Stockbridge	287
17124	Stockbridge	1113
17125	Stockbridge	1428
17126	East Williston	101
17127	Lincolnshire	997
17128	Lincolnshire	1326
17129	Port Monmouth	278
17130	La Crescenta	404
17131	Convent	1275
17132	Dutch Mills	471
17133	Cedar River	544
17134	Milstead	3156
17135	Higginsville	2774
17136	Wintersville	1006
17137	View	1061
17138	Molt	1568
17139	Bono	1266
17140	Bono	2621
17141	West Havre	453
17142	Batavia	1761
17143	Batavia	1241
17144	Batavia	322
17145	Batavia	2257
17146	Batavia	1001
17147	Batavia	915
17148	Hopeton	2477
17149	BoquerÃ³n	1682
17150	Dover Plains	3031
17151	DuPont	1925
17152	Saunemin	387
17153	Gardere	1381
17154	Bearden	87
17155	Bearden	244
17156	Fieldale	1115
17157	Laird	2112
17158	Bone	1489
17159	Bond	2665
17160	Bond	2974
17161	Stippville	432
17162	Glenoma	2533
17163	Sebastian	2114
17164	Sebastian	1141
17165	Boronda	2955
17166	Satsuma	2758
17167	Satsuma	145
17168	Satsuma	1301
17169	Alma	2686
17170	Alma	1415
17171	Alma	2774
17172	Alma	690
17173	Alma	1748
17174	Alma	2376
17175	Alma	1897
17176	Alma	720
17177	Alma	888
17178	Alma	823
17179	Theodosia	1157
17180	Moon	116
17181	Moon	2632
17182	Thorn	699
17183	Arletta	1925
17184	Campti	2991
17185	Thorp	2327
17186	Thorp	400
17187	McDonough	1113
17188	Letcher	3133
17189	Letcher	2858
17190	Fort Worth	3084
17191	Capon Bridge	2921
17192	South Kensington	740
17193	San JosÃ© Comunidad	1334
17194	Boon	1487
17195	Tuckers Crossing	3020
17196	Hillcrest Heights	2545
17197	Hillcrest Heights	2064
17198	Clay Village	193
17199	Tierras Nuevas Poniente	1580
17200	Pillager	3179
17201	Arroyo Seco	1930
17202	Dazey	2341
17203	Cooperstown	778
17204	Cooperstown	2990
17205	Cooperstown	2020
17206	Campus	387
17207	Rozellville	628
17208	Slatington	1372
17209	Macon	2301
17210	Macon	1962
17211	Macon	2128
17212	Macon	3159
17213	Macon	1583
17214	Macon	636
17215	Macon	3158
17216	Donovan	1955
17217	Donovan	1271
17218	Lowgap	2707
17219	Almy	231
17220	East Hemet	3210
17221	Vandyke	2511
17222	South Solon	2057
17223	K I Sawyer	1058
17224	Smiths Creek	2562
17225	Laytonville	1053
17226	Almo	2382
17227	Almo	1426
17228	Greenwood Lake	3137
17229	McConnells	851
17230	Closplint	1898
17231	Ardsley	1919
17232	Carntown	303
17233	Chatawa	1168
17234	Port Heiden	2011
17235	Wyandanch	940
17236	Ligonier	3229
17237	Ligonier	2385
17238	Fort Gaines	1542
17239	Brushton	2131
17240	Level	2959
17241	Jeddito	3161
17242	Overland Park	1272
17243	Chadbourn	1238
17244	Bradner	2338
17245	Greenock	2632
17246	Ledford	105
17247	Salt Chuck	1345
17248	Abernant	1911
17249	Crum	2607
17250	Penrose	663
17251	Penrose	1421
17252	Penrose	969
17253	Herendeen Bay	1145
17254	Santa Venetia	1515
17255	Penermon	2092
17256	Lapeer	3188
17257	Lake Holiday	2507
17258	Lake Holiday	725
17259	Grenora	377
17260	Kila	1761
17261	East Palestine	1662
17262	Western Hills	1290
17263	Big Pool	492
17264	Mora	3190
17265	Mora	1158
17266	Mora	3077
17267	Mora	769
17268	Talisheek	2905
17269	Prairie du Chien	1416
17270	Nesika Beach	811
17271	Scurry	2361
17272	La Coste	827
17273	Castle Point	3196
17274	Moro	2079
17275	Moro	2104
17276	Spokane Valley	1431
17277	McCallsburg	2581
17278	Seboyeta	1769
17279	Stringtown	711
17280	Stringtown	251
17281	Masters	1101
17282	McKamie	2772
17283	Quinter	1338
17284	Bladenboro	2063
17285	South Venice	1236
17286	Gardar	2418
17287	Sandyfield	1238
17288	Cuzco	1854
17289	Cecilville	337
17290	Marmarth	290
17291	Gardena	3171
17292	Gardena	1717
17293	Gardena	404
17294	Deer Grove	1718
17295	Sevier	3209
17296	Fellowsville	1961
17297	West Haven	1433
17298	West Haven	2409
17299	Aloe	2800
17300	Eagle Nest	2794
17301	Aylmer	1924
17302	Mertztown	362
17303	Sells	1247
17304	West Richland	1646
17305	Saint Maurice	921
17306	Cluster Springs	796
17307	Union Church	1002
17308	Beltsville	2064
17309	Moss	1527
17310	Pastos	2034
17311	Brownsville	955
17312	Brownsville	1832
17313	Brownsville	1046
17314	Brownsville	1775
17315	Brownsville	2574
17316	Brownsville	1705
17317	Brownsville	1048
17318	Brownsville	243
17319	Brownsville	943
17320	Brownsville	309
17321	Brownsville	2557
17322	Brownsville	492
17323	Brownsville	3255
17324	Brownsville	2115
17325	Osmond	1186
17326	Osmond	1927
17327	Jane Lew	2528
17328	Samoset	2834
17329	Crumstown	3102
17330	Suffield Depot	1712
17331	Limestone Creek	3071
17332	Powersville	2755
17333	Selma	937
17334	Selma	2430
17335	Selma	2203
17336	Selma	777
17337	Selma	2323
17338	Selma	523
17339	Selma	2807
17340	Selma	1394
17341	Selma	1083
17342	Selma	359
17343	Selma	1165
17344	DeLand	814
17345	Saint Maries	3083
17346	Lake Butler	500
17347	Boss	418
17348	King	279
17349	King	347
17350	King	1931
17351	Croghan	2529
17352	Touchet	2989
17353	Aguada Zona Urbana	2015
17354	Bradford Woods	2632
17355	Kiln	1966
17356	Bell Buckle	2953
17357	Hitterdal	1530
17358	Sutherlin	2814
17359	Foxborough	2618
17360	Sewickley	2632
17361	Orion	1109
17362	Orion	397
17363	Orion	1175
17364	Glazier	1620
17365	Wilsonville	2287
17366	Wilsonville	195
17367	Wilsonville	712
17368	Wilsonville	3223
17369	Fox River	1806
17370	Jerico Springs	66
17371	Sugarland Run	3118
17372	Loma Linda East Colonia	166
17373	Hato Arriba Comunidad	911
17374	Pickford	662
17375	Meadow View Addition	2293
17376	Alberene	2829
17377	Tahoe Vista	2289
17378	Catawissa	1079
17379	Nelson Lagoon	1145
17380	Hemet	3210
17381	Charmwood	2130
17382	Lebeau	2967
17383	Alexandria Bay	995
17384	Attleboro	597
17385	Sciota	3131
17386	Jupiter Inlet Beach Colony	3071
17387	Two Strike	2648
17388	Llano Del Medio	1459
17389	Bushton	2749
17390	Getzville	1510
17391	Hawk Springs	356
17392	Fair Oaks	3041
17393	Fair Oaks	3079
17394	Fair Oaks	2814
17395	Fair Oaks	2688
17396	Fair Oaks	2482
17397	Fair Oaks	394
17398	Fair Oaks	2405
17399	Wright City	229
17400	Wright City	2311
17401	Ferry Pass	2667
17402	Winsted	2386
17403	Winsted	1990
17404	Licking	2273
17405	Dumbarton	59
17406	Woods Cross	2875
17407	Shidler	1154
17408	Wilseyville	3144
17409	Prattsville	1124
17410	Prattsville	556
17411	Kipp	103
17412	Morgana	909
17413	DeArmanville	1283
17414	Electric City	1125
17415	Poquonock Bridge	1593
17416	Sedgefield	710
17417	Chicago	761
17418	Bevier	3159
17419	Mott	573
17420	Alta	2637
17421	Alta	1391
17422	Alta	2289
17423	Alta	719
17424	Connellsville	2574
17425	Bracken	611
17426	Wawina	2777
17427	Meeteetse	1747
17428	Cutchogue	940
17429	Chacra	3003
17430	Vina	3186
17431	Vina	2125
17432	Yeadon	2809
17433	Peotone	875
17434	Ben Avon	2632
17435	Coffee Creek	2061
17436	Coffee Creek	317
17437	McConnell	2179
17438	Long Beach	101
17439	Long Beach	404
17440	Long Beach	1306
17441	Long Beach	2983
17442	Long Beach	2644
17443	Long Beach	617
17444	Long Beach	2792
17445	Bolinger	1635
17446	Guttenberg	2587
17447	Guttenberg	1942
17448	Riverhead	940
17449	Island Mountain	317
17450	White Tower	2397
17451	Cleburne	1266
17452	North Apollo	775
17453	Caernarvon	2298
17454	Vacaville	2867
17455	Merit	3215
17456	Austin	3050
17457	Austin	1432
17458	Austin	2241
17459	Austin	2720
17460	Austin	715
17461	Austin	2935
17462	Austin	1585
17463	Austin	2206
17464	Marceline	946
17465	Sandston	59
17466	Kire	1364
17467	Saint Augustine	223
17468	Saint Augustine	584
17469	Beryl	1864
17470	Kirk	2112
17471	Kirk	759
17472	Livonia Center	386
17473	Macopin	792
17474	Shauck	2846
17475	Roscommon	68
17476	Alto	429
17477	Alto	1671
17478	Alto	1515
17479	Alto	219
17480	Alto	1199
17481	Alto	518
17482	Maurertown	2740
17483	Hooker	2272
17484	Sheldahl	2581
17485	Rafael Hernandez	2414
17486	Wewoka	1628
17487	Mulberry	446
17488	Mulberry	1415
17489	Mulberry	1241
17490	Mulberry	1187
17491	Mulberry	2545
17492	Mulberry	515
17493	Mulberry	2897
17494	Mulberry	1414
17495	Bryan	3093
17496	Bryan	378
17497	Bryan	1626
17498	Yorktown Heights	1919
17499	Fairville	90
17500	Hickox	2793
17501	Fairlawn	374
17502	Fairlawn	1725
17503	Diablo Grande	1941
17504	Berkeley Lake	1373
17505	Lisbon	3134
17506	Lisbon	570
17507	Lisbon	1331
17508	Lisbon	1773
17509	Lisbon	1913
17510	Lisbon	1352
17511	Lisbon	1662
17512	Lisbon	944
17513	Boyd	1916
17514	Boyd	1147
17515	Boyd	1881
17516	Boyd	660
17517	Boyd	1064
17518	Boyd	3035
17519	Garretson	2293
17520	Alva	1019
17521	Alva	1898
17522	Alva	2477
17523	Alva	2101
17524	New Waverly	1350
17525	Sanders	160
17526	Sanders	2222
17527	Sanders	932
17528	Burnettown	646
17529	Anandale	2402
17530	Bluewater	1769
17531	Bluewater	721
17532	Bluewater	2638
17533	Kaskaskia	2680
17534	Strathcona	877
17535	Hungerford	3047
17536	Alvaton	2995
17537	Alvaton	2305
17538	White Settlement	3084
17539	Moody	702
17540	Moody	917
17541	Flora	2693
17542	Flora	2052
17543	Flora	1540
17544	Flora	2220
17545	Flora	2991
17546	Wescosville	1372
17547	Hickok	1123
17548	Tutwiler	3147
17549	Palo Cedro	2883
17550	Middlesboro	1959
17551	Booth	1890
17552	Booth	413
17553	Myerstown	1493
17554	Cygnet	2338
17555	Hobe Sound	2212
17556	Eldorado	2508
17557	Eldorado	2565
17558	Eldorado	873
17559	Eldorado	1427
17560	Eldorado	241
17561	Eldorado	1811
17562	Eldorado	105
17563	Hessville	1340
17564	Benedict	2784
17565	Benedict	852
17566	Benedict	2282
17567	Benedict	2937
17568	Benedict	335
17569	Leisure City	1705
17570	Kanarraville	1864
17571	Scotts Mills	677
17572	Kaktovik	1801
17573	Kent Acres	216
17574	Kite	1271
17575	De Pere	639
17576	Forgan	1881
17577	Bedford Heights	708
17578	Morgan	2632
17579	Morgan	303
17580	Morgan	1557
17581	Morgan	2904
17582	Morgan	340
17583	Morgan	120
17584	Morgan	1250
17585	Morgan	1281
17586	Las Ochenta Comunidad	2259
17587	Rarden	3256
17588	Ferrellsburg	1197
17589	Nesquehoning	3038
17590	New Court Village	2531
17591	Grand Saline	1804
17592	Gorst	1048
17593	Elliott	2508
17594	Elliott	1773
17595	Elliott	255
17596	Elliott	244
17597	Elliott	232
17598	Elliott	732
17599	Elliott	2105
17600	Oval	1770
17601	Redden	711
17602	Holly	2663
17603	Holly	2840
17604	Holly	1048
17605	Jacobs	1816
17606	Ocheyedan	2158
17607	Neapolis	2942
17608	Lupton	159
17609	Lupton	932
17610	Alvo	3181
17611	Pinconning	903
17612	Cherry Grove Beach	3220
17613	Florida Ridge	2114
17614	Hensley	375
17615	Tarzan	2214
17616	Rowes Run	2574
17617	Rippey	562
17618	Claycomo	1541
17619	Hacienda Village	2729
17620	Horton	638
17621	Horton	227
17622	Horton	3060
17623	Garnavillo	1942
17624	Hensler	2342
17625	Lambs Grove	3039
17626	Negley	1662
17627	Okemos	287
17628	Greenfield Hill	408
17629	Iron Mountain Lake	230
17630	Hainesport	2841
17631	Lostant	2507
17632	Henlopen Acres	1887
17633	Sportsmen Acres	1884
17634	Asotin	147
17635	Northway Junction	1561
17636	Presquille	910
17637	San Antonio Heights	721
17638	Lost Lake Woods	2762
17639	Coila	2225
17640	Dateland	2113
17641	Woods Landing	923
17642	Dearborn	1851
17643	Dearborn	2606
17644	Pilar	1930
17645	Mosheim	558
17646	Pepper Pike	708
17647	Gascoyne	315
17648	Steubenville	2602
17649	Steubenville	1006
17650	Granite Falls	99
17651	Granite Falls	2852
17652	Granite Falls	2635
17653	Merna	3064
17654	Merna	2283
17655	Merna	2412
17656	Bay Wood	940
17657	Weweantic	1936
17658	Fairmead	1563
17659	McBain	2736
17660	Haviland	3031
17661	Haviland	1993
17662	Haviland	2956
17663	Harmans	2440
17664	Rancho Banquete	819
17665	Rock Creek Park	3228
17666	La Selva Beach	1362
17667	East Falmouth	1162
17668	Grand Tower	1825
17669	Masaryktown	3274
17670	Gorum	2991
17671	LoÃ­za Zona Urbana	1235
17672	West Hampton Dunes	940
17673	Gakona	3172
17674	Aquia Harbour	1318
17675	Akins	1140
17676	Chula Vista Colonia	1832
17677	Benzonia	180
17678	West Amana	3081
17679	Campbell	3215
17680	Campbell	1214
17681	Campbell	2157
17682	Campbell	2128
17683	Campbell	2887
17684	Campbell	2839
17685	Campbell	2198
17686	Campbell	1546
17687	Campbell	627
17688	Blacklick Estates	2141
17689	Sunnymead	3210
17690	West Valley City	2637
17691	Sneedville	1968
17692	Jamestown	566
17693	Jamestown	3112
17694	Jamestown	248
17695	Jamestown	1453
17696	Jamestown	1723
17697	Jamestown	2947
17698	Jamestown	1036
17699	Jamestown	710
17700	Jamestown	2645
17701	Jamestown	2010
17702	Jamestown	138
17703	Jamestown	1762
17704	Jamestown	1733
17705	Jamestown	401
17706	Jamestown	2267
17707	Jamestown	185
17708	Jamestown	2798
17709	Jamestown	2264
17710	East Tawakoni	821
17711	Greenford	2839
17712	Sierra Madre	404
17713	Sanostee	2929
17714	Ekron	1665
17715	Mammoth	1914
17716	Mammoth	1747
17717	Mammoth	2385
17718	Draper	374
17719	Draper	2637
17720	Draper	3018
17721	Laflin	2641
17722	Chefornak	2260
17723	Thiells	2960
17724	McFarlan	1383
17725	Blackville	2175
17726	Tennyson	1131
17727	Tennyson	645
17728	Tennyson	391
17729	Savanna	2226
17730	Savanna	3211
17731	Lakeport	2371
17732	Lakeport	1330
17733	Lakeport	920
17734	Florence Hill	525
17735	Saturn	1164
17736	Freedom Plains	3031
17737	Central Aguirre Comunidad	2259
17738	Ellenville	1952
17739	Northome	296
17740	Karns	583
17741	Colwyn	2809
17742	Ali Molina	1247
17743	McDonald	1125
17744	McDonald	2089
17745	McDonald	2946
17746	McDonald	2256
17747	McDonald	1429
17748	McDonald	483
17749	McDonald	421
17750	Bowlus	164
17751	Van Metre	3018
17752	Golden Hills	263
17753	Colmesneil	2873
17754	Spring Lake Park	1260
17755	Retsof	386
17756	Kewanna	2711
17757	Sequim	185
17758	Fair Oaks Ranch	1083
17759	Bandon	772
17760	Rardin	2943
17761	Kermit	673
17762	Kermit	1736
17763	Nixon	1164
17764	Nixon	2332
17765	Nixon	789
17766	Nixon	2390
17767	Alum Rock	2198
17768	Eldena	2098
17769	Colburn	623
17770	Colburn	596
17771	Theriot	910
17772	Centre Island	101
17773	Babylon	940
17774	North Vandergrift	775
17775	Peachland	1383
17776	Amory	2355
17777	Wallenpaupack Lake Estates	2605
17778	Kelly Lake	3195
17779	Tribbey	2032
17780	Woodbine	1316
17781	Woodbine	2161
17782	Woodbine	1994
17783	Woodbine	616
17784	Woodbine	2976
17785	Bayou Gauche	1081
17786	Muir Beach	1515
17787	Gwinn	1058
17788	Selbyville	1887
17789	Van Lear	1270
17790	Wyndmoor	731
17791	Thunder Butte	1918
17792	Redington	2918
17793	Shickley	701
17794	Shorterville	1114
17795	Estacada	3223
17796	Upper Mill	3217
17797	Clipper Mills	766
17798	Edenville	3137
17799	Herzman Mesa	992
17800	Chaneyville	2983
17801	Newdale	970
17802	Boone	2030
17803	Boone	3213
17804	Boone	247
17805	Boone	253
17806	Boone	3183
17807	Boone	307
17808	Hooper Bay	2367
17809	Howard	393
17810	Howard	449
17811	Howard	969
17812	Howard	2278
17813	Howard	1063
17814	Howard	639
17815	Howard	163
17816	Howard	588
17817	Flint City	119
17818	Royse City	2985
17819	Pohick	2405
17820	Floyd	268
17821	Floyd	265
17822	Floyd	1678
17823	Floyd	1905
17824	Floyd	394
17825	Sun Valley	893
17826	Sun Valley	1405
17827	Sun Valley	2332
17828	Sun Valley	3161
17829	Sun Valley	2351
17830	Babbitt	977
17831	Babbitt	3195
17832	Kirvin	2524
17833	Harmonsburg	1417
17834	Chelan	276
17835	Jerryville	2589
17836	Vanderbilt	1823
17837	Vanderbilt	779
17838	Vanderbilt	2574
17839	Mickleton	2626
17840	Berry	2573
17841	Berry	829
17842	Berry	621
17843	Sewell	2626
17844	Dansville	287
17845	Dansville	386
17846	Scherr	1127
17847	Leakesville	563
17848	Lake Nacimiento	2207
17849	Volcano	1488
17850	Volcano	2253
17851	Dallardsville	2540
17852	Blowing Rock	3213
17853	Kimberling City	2666
17854	Elizabeth	2763
17855	Elizabeth	2632
17856	Elizabeth	1698
17857	Elizabeth	440
17858	Elizabeth	1876
17859	Elizabeth	394
17860	Elizabeth	1050
17861	Elizabeth	618
17862	Elizabeth	502
17863	Shortsville	357
17864	Avalon Beach	758
17865	Bakersville	2009
17866	Bakersville	1473
17867	Bakersville	492
17868	Apple Valley	2864
17869	Apple Valley	721
17870	Apple Valley	472
17871	Apple Valley	588
17872	Whitefish	1761
17873	Elkhart Lake	915
17874	Parcelas La Milagrosa Comunidad	1066
17875	Creekside	2147
17876	Creekside	997
17877	Chesterton	2498
17878	Auburndale	2339
17879	Auburndale	2545
17880	Ovid	2903
17881	Ovid	1632
17882	Ovid	2261
17883	Ovid	886
17884	Azusa	404
17885	Beresford	499
17886	Gillett	2623
17887	Gillett	2776
17888	Gillett	416
17889	Latrobe	2385
17890	Van Meter	522
17891	Hillman	164
17892	Hillman	2584
17893	Stecker	307
17894	Clarkedale	1785
17895	Clifton City	158
17896	Teigen	1222
17897	Okoboji	1314
17898	Zia Pueblo	971
17899	Takilma	2203
17900	New Johnsonville	2424
17901	Shippingport	1883
17902	Early Branch	1606
17903	Saint Meinrad	1939
17904	Country Squire Lakes	2622
17905	Mount Leonard	107
17906	Deep Creek	3027
17907	Deep Creek	1431
17908	Beagle	669
17909	Pendleton	2044
17910	Pendleton	1397
17911	Pendleton	2311
17912	Pendleton	1111
17913	Pendleton	1544
17914	Polonia	1636
17915	Mirando City	817
17916	Nighthawk	1874
17917	League City	2523
17918	Harrellsville	1439
17919	Fairvalley	2477
17920	Grants	1769
17921	Westline	1217
17922	Rennert	2256
17923	Iconium	1621
17924	Witoka	2423
17925	Palomas Comunidad	2435
17926	Sugar Hill	1373
17927	Merom	1947
17928	Plush	1321
17929	Conyngham	2641
17930	Larimore	1581
17931	Malden-on-Hudson	1952
17932	Hamtramck	2606
17933	Varner	3068
17934	Martins Additions	740
17935	Evansville	1462
17936	Evansville	805
17937	Evansville	754
17938	Evansville	837
17939	Evansville	1562
17940	Evansville	2658
17941	Evansville	2680
17942	Evansville	2819
17943	Evansville	471
17944	Stonebank	2426
17945	Schriever	910
17946	Vandalia	3182
17947	Vandalia	3168
17948	Vandalia	2569
17949	Vandalia	2945
17950	Vandalia	737
17951	Bowman	1910
17952	Bowman	315
17953	Bowman	77
17954	Bowman	1877
17955	Ney	2333
17956	Epleys	2183
17957	Pruntytown	1059
17958	Fruitport	1485
17959	Moose	1391
17960	Gardnerville Ranchos	2825
17961	Orland Park	761
17962	Moore	859
17963	Moore	3162
17964	Moore	2408
17965	Moore	765
17966	Moore	2061
17967	Moore	1778
17968	Eldersburg	2232
17969	PeÃ±uelas Zona Urbana	1030
17970	Excursion Inlet	1963
17971	Oak Level	1115
17972	Oak Level	2468
17973	Needles	721
17974	Freistatt	534
17975	Roodhouse	564
17976	Faulkner	2136
17977	Faulkner	432
17978	North Windham	79
17979	Trousdale	1651
17980	Breaux Bridge	1623
17981	Atalissa	1702
17982	Stinson Beach	1515
17983	Coopersville	1733
17984	Azure	453
17985	Hasbrouck Heights	1572
17986	Parcelas Mandry Comunidad	459
17987	Savonburg	442
17988	West Logan	2179
17989	Westwood Hills	1272
17990	Leopold	1840
17991	Leopold	2782
17992	Hatley	628
17993	Hatley	2355
17994	Hatley	548
17995	Carrabelle	2134
17996	Entiat	276
17997	Five Points	532
17998	Five Points	1075
17999	Five Points	1342
18000	Five Points	1895
18001	Five Points	1883
18002	Five Points	2312
18003	Cedar Mill	465
18004	Warrensville	1872
18005	Warrensville	1770
18006	Falkland	1503
18007	Garcia	2068
18008	Berne	1289
18009	Champion	2946
18010	Champion	1058
18011	Champion	933
18012	East Missoula	3149
18013	Tremont City	2323
18014	Mountain City	1267
18015	Mountain City	1378
18016	Mountain City	108
18017	Mountain City	2001
18018	Pine Flat	308
18019	Cascadia	943
18020	Hermosa Beach	404
18021	Castella	2883
18022	Urania	2062
18023	Villalba	360
18024	Lindsborg	2522
18025	Boysen	968
18026	Burrows	2220
18027	Aventura	1705
18028	Calcasieu	2402
18029	Seneca Falls	2261
18030	Skokie	761
18031	Dilworth	1530
18032	Indiantown	2212
18033	Indiantown	299
18034	Belvedere Park	1751
18035	Lake Mary	1627
18036	Williams	353
18037	Williams	1803
18038	Williams	2203
18039	Williams	3148
18040	Williams	2070
18041	Williams	2109
18042	Williams	531
18043	Bairoil	3093
18044	Rocky Fork Point	2924
18045	Hailey	1405
18046	Ash Flat	2372
18047	Trimble	2899
18048	Trimble	1410
18049	Trimble	2553
18050	Trimble	2106
18051	Trimble	741
18052	Rolling Hills	997
18053	Rolling Hills	3170
18054	Rolling Hills	404
18055	Oak Grove Village	2130
18056	Compass Lake	1816
18057	West Perrine	1705
18058	Foyil	2831
18059	Carrizozo	1199
18060	Squaw Lake	2777
18061	Kerman	937
18062	Chula	2419
18063	Chula	1427
18064	Chula	388
18065	Maplesville	126
18066	Ames	724
18067	Ames	3107
18068	Ames	2581
18069	Ames	956
18070	Ames	397
18071	Port Gibson	357
18072	Port Gibson	572
18073	Beachwood	2627
18074	Beachwood	708
18075	Arctic Village	1462
18076	Landing	2877
18077	Darden	2653
18078	Socialville	2312
18079	Fox Creek	1398
18080	English	2235
18081	English	1409
18082	Chamberino	1242
18083	Bridgeview	761
18084	Cavetown	492
18085	Metcalfe	485
18086	Forest Park	761
18087	Forest Park	2075
18088	Forest Park	958
18089	Forest Park	1943
18090	Kimberly	1402
18091	Kimberly	987
18092	Kimberly	2300
18093	Kimberly	2266
18094	Kimberly	2564
18095	Kimberly	1117
18096	Remerton	3067
18097	Rawson	1972
18098	Yarmouth	79
18099	Yarmouth	1482
18100	McRoberts	3133
18101	Inman Mills	3162
18102	Rodanthe	842
18103	Red Lodge	3035
18104	Parcelas PeÃ±uelas	2086
18105	Biloxi	617
18106	Cape May Court House	1994
18107	McNeal	3232
18108	Sinton	3214
18109	Wales	1720
18110	Wales	1035
18111	Wales	1329
18112	Wales	717
18113	Wales	2426
18114	Sunriver	3246
18115	Taylorsport	251
18116	Grover Beach	2207
18117	Philo	1053
18118	Philo	338
18119	Philo	519
18120	San Tan Valley	1914
18121	Rawlins	3036
18122	Atkinson Mills	2474
18123	Edmondson	1785
18124	Sallyards	3076
18125	Akiak	2260
18126	Colerain Heights	2075
18127	Boy River	3179
18128	La Villita	2725
18129	Varna	2466
18130	Yeoman	2220
18131	Dalton	866
18132	Dalton	3049
18133	Dalton	2763
18134	Dalton	2612
18135	Dalton	3057
18136	Dalton	1610
18137	Dalton	386
18138	Dalton	2684
18139	Dalton	350
18140	Lathrop	2899
18141	Lathrop	590
18142	Corn Creek	791
18143	Chiniak	3101
18144	Bylas	2013
18145	Three Springs	2550
18146	Laurier	1150
18147	Cherokee	766
18148	Cherokee	1034
18149	Cherokee	1149
18150	Cherokee	428
18151	Cherokee	2269
18152	Cherokee	535
18153	Cherokee	291
18154	Cherokee	1414
18155	Gurnee	1326
18156	Smithsburg	492
18157	Lakeshire	3196
18158	Smethport	1217
18159	Greers Ferry	3276
18160	Haldeman	864
18161	Allen	141
18162	Allen	1047
18163	Allen	2067
18164	Allen	304
18165	Allen	1335
18166	Allen	2237
18167	Allen	2991
18168	Allen	133
18169	Excello	3159
18170	Excello	785
18171	West Millgrove	2338
18172	Forestburg	2858
18173	Port Colden	2306
18174	Lamoille	2423
18175	Lamoille	108
18176	SalineÃ±o	166
18177	Twinsburg Heights	1725
18178	Foxpark	923
18179	Springtown	931
18180	Springtown	1645
18181	Accident	310
18182	Green Lane	731
18183	Waldo	1407
18184	Waldo	692
18185	Waldo	132
18186	Waldo	915
18187	Waldo	1450
18188	Waldo	1076
18189	Hollandale	1713
18190	Hollandale	3080
18191	Hollandale	485
18192	Cowarts	2117
18193	Tohatchi	3150
18194	Danevang	3047
18195	Massillon	238
18196	Massillon	64
18197	Bridgeboro	1836
18198	Mount Wolf	853
18199	Bay Springs	3040
18200	Fort Collins	831
18201	Waterfall	1345
18202	Belfry	1172
18203	Belfry	3035
18204	Pin Oak Acres	1884
18205	Lutherville	1498
18206	Dasher	3067
18207	Lenorah	2214
18208	Bonneau	1723
18209	Island City	495
18210	Island City	760
18211	South Fork Estates	3189
18212	Eden Prairie	91
18213	Bar Nunn	805
18214	Peters	61
18215	Peters	590
18216	Crannell	319
18217	Mangonia Park	3071
18218	Urich	1110
18219	Chipita Park	3228
18220	Kotzebue	2907
18221	Mount Holly Springs	83
18222	Uniontown	1464
18223	Uniontown	1415
18224	Uniontown	498
18225	Uniontown	2574
18226	Uniontown	238
18227	Uniontown	1569
18228	Uniontown	1846
18229	Centerport	362
18230	Centerport	940
18231	Centre Hall	393
18232	Prairie View	1326
18233	Prairie View	2088
18234	Prairie View	1558
18235	Prairie View	2187
18236	Blue Hill	2596
18237	Blue Hill	1970
18238	Solis	1832
18239	Garden City South	101
18240	Shawville	645
18241	Vienna Bend	2991
18242	North Fair Oaks	1423
18243	Boody	3158
18244	Lake Ozark	2705
18245	Putnam Hall	2758
18246	Pauline	2940
18247	Pauline	3162
18248	Pauline	1297
18249	Hamletsburg	2643
18250	Lawrence	101
18251	Lawrence	678
18252	Lawrence	885
18253	Lawrence	3192
18254	Lawrence	2361
18255	Lawrence	2433
18256	Lawrence	483
18257	Lawrence	2745
18258	Lawrence	2821
18259	Paulina	1275
18260	Paulina	1018
18261	Accord	1952
18262	Accord	1936
18263	Mattawan	2433
18264	Denaud	2017
18265	Suamico	639
18266	Hurstbourne Acres	997
18267	North Eagle Butte	200
18268	Kemblesville	90
18269	Hoberg	534
18270	Locust Lake	1241
18271	Duncan	973
18272	Duncan	1565
18273	Duncan	3162
18274	Duncan	1850
18275	Duncan	2848
18276	Duncan	1965
18277	South Russell	1899
18278	Mountain Green	120
18279	South Highpoint	2785
18280	Caseyville	918
18281	Rancho Chico	3214
18282	Arthur	2816
18283	Arthur	571
18284	Arthur	108
18285	Arthur	3180
18286	Arthur	575
18287	Arthur	3054
18288	Echeta	177
18289	Waterloo	605
18290	Waterloo	2356
18291	Waterloo	261
18292	Waterloo	1901
18293	Waterloo	943
18294	Waterloo	994
18295	Waterloo	590
18296	Waterloo	1783
18297	Waterloo	2824
18298	Waterloo	1753
18299	Waterloo	947
18300	Waterloo	2261
18301	Waterloo	2043
18302	Coraopolis	2632
18303	Wolf Summit	615
18304	Waialua	1878
18305	Aguilares	817
18306	Norcross	392
18307	Norcross	1122
18308	Norcross	1373
18309	Uriah	2349
18310	Citrus Hills	799
18311	Grandy	1259
18312	Grandy	1084
18313	Larwill	1304
18314	Grainola	1154
18315	Highland Acres	216
18316	Wallsburg	1792
18317	Linton Hall	321
18318	Brooklawn	2977
18319	Berea	2031
18320	Berea	2046
18321	Berea	689
18322	Berea	1653
18323	Berea	708
18324	Tanner	2789
18325	Tanner	3217
18326	Tanner	2316
18327	New Sheffield	1883
18328	Elmwood Park	1572
18329	Elmwood Park	761
18330	Elmwood Park	426
18331	Miltonsburg	2358
18332	Andrew	1821
18333	Andrew	2035
18334	Poultney	2588
18335	Ararat	889
18336	Hazel Park	2663
18337	Williston Park	101
18338	Ladera	1423
18339	New Leipzig	1130
18340	Deeth	108
18341	Vermontville	2764
18342	East Brewton	2668
18343	Marathon	628
18344	Marathon	719
18345	Marathon	2348
18346	Marathon	1480
18347	Marathon	1617
18348	Wood-Lynne	2977
18349	Paxico	888
18350	Fannin	2583
18351	DeBary	814
18352	Indianapolis	678
18353	Indianapolis	3062
18354	Arrowhead Highlands	721
18355	Dickeyville	1131
18356	Travilah	740
18357	Seven Corners	2405
18358	Bowles	937
18359	Deerton	2767
18360	Grand Island	1331
18361	Grand Island	1023
18362	Collinston	2730
18363	Boothville	2473
18364	Berwind	2379
18365	Tallaboa Comunidad	1030
18366	Penn Valley	1784
18367	Erskine	2543
18368	Council	1296
18369	Council	1746
18370	Masonville	2805
18371	Masonville	2841
18372	Masonville	437
18373	Masonville	831
18374	Acree	458
18375	Hartleton	504
18376	Brandywine	302
18377	Brandywine	2064
18378	Perkinston	2665
18379	Adairsville	609
18380	Mukilteo	99
18381	Bowler	2827
18382	Solen	2925
18383	Vesuvius	152
18384	Dannemora	2895
18385	Lindberg	3084
18386	Bull Shoals	684
18387	Mackinac Island	1701
18388	Aptakisic	1326
18389	Fordland	2592
18390	Zephyrhills	1915
18391	Gilboa	2756
18392	Linton	972
18393	Linton	2450
18394	Linton	557
18395	Linton	1973
18396	Hacienda San JosÃ© Comunidad	1856
18397	Menifee	3210
18398	Menifee	1573
18399	Fort Oglethorpe	1087
18400	Long Hill	1593
18401	Morrice	2451
18402	Cromwell	3229
18403	Cromwell	1628
18404	Cromwell	894
18405	Cromwell	780
18406	Cromwell	505
18407	Cromwell	1925
18408	Blanton	1915
18409	Port Vincent	385
18410	Maple City	2787
18411	Blanchardville	2773
18412	Howland	893
18413	Howland	392
18414	Parker Strip	2638
18415	Ojo Caliente	1769
18416	Oologah	2831
18417	San Ygnacio	2781
18418	Kennebunk	850
18419	Neuse Forest	135
18420	West Lake Hills	3050
18421	Climbing Hill	3024
18422	Nuyaka	1543
18423	Fort Douglas	1273
18424	Triangle	321
18425	Wimberley	1378
18426	Shade Gap	2550
18427	Ider	1752
18428	Granjeno	1353
18429	Lake Mohegan	1919
18430	Caulfield	3184
18431	McNeil	3050
18432	McNeil	1076
18433	Rectorville	748
18434	Crugers	1919
18435	Our Town	2933
18436	Aurelia	428
18437	San Benito	1832
18438	San Benito	706
18439	Muhlenberg Park	362
18440	Vega Alta	707
18441	Devils Tower	1019
18442	Weingarten	2631
18443	Penhook	2143
18444	Mission Hills	1272
18445	Mission Hills	2107
18446	Cedar Highlands	1864
18447	Buena Vista	2122
18448	Buena Vista	2632
18449	Buena Vista	299
18450	Buena Vista	2170
18451	Buena Vista	2676
18452	Buena Vista	2407
18453	Buena Vista	2253
18454	Buena Vista	693
18455	Buena Vista	244
18456	Buena Vista	2221
18457	Buena Vista	2426
18458	Walnut Creek	2598
18459	Walnut Creek	3143
18460	Walnut Creek	2277
18461	Hollow Rock	2221
18462	Elkatawa	670
18463	Leonia	2276
18464	Leonia	1572
18465	Dry Ridge	2075
18466	Dry Ridge	1120
18467	Kellogg	3039
18468	Kellogg	2988
18469	Kellogg	224
18470	Trout	2836
18471	Dentsville	1675
18472	High Shoals	2835
18473	Tijeras	405
18474	Mount Hebron	337
18475	Huston	2039
18476	Biggsville	2654
18477	Miamiville	1241
18478	Oakvale	2003
18479	East Glacier Park	1740
18480	Lake Henry	1709
18481	Hankamer	1343
18482	Dieterich	1742
18483	Troup	1603
18484	Baileys Harbor	1708
18485	Eulaton	1283
18486	San Fernando	404
18487	Log Lane Village	113
18488	Quonochontaug	478
18489	Sunny Isles Beach	1705
18490	Summer Shade	398
18491	Ponte Vedra Beach	223
18492	Walls	871
18493	Repaupo	2626
18494	Oil Trough	138
18495	North High Shoals	644
18496	Canadian Lakes	1764
18497	Howardstown	274
18498	West Pelzer	1397
18499	Faucett	2813
18500	Virginia Gardens	1705
18501	Havensville	2033
18502	Hiwassee	374
18503	Hiwassee	427
18504	Clay City	1540
18505	Clay City	1526
18506	Clay City	2914
18507	Quito	1116
18508	Tygh Valley	906
18509	Enaville	224
18510	Alleghany	777
18511	Alleghany	171
18512	Granby	1151
18513	Granby	2922
18514	Granby	1234
18515	Ravendale	2799
18516	Ak-Chin Village	1914
18517	Ankeny	2539
18518	Reeseville	955
18519	West New York	2587
18520	Rippon	991
18521	Idamay	686
18522	Bovina	3234
18523	Cotton Plant	663
18524	Pearsall	2408
18525	Gerlach	2332
18526	Oconomowoc	2426
18527	Ashdown	833
18528	Kaser	2960
18529	Grande	507
18530	Japton	2049
18531	Hurdsfield	2916
18532	Badger	877
18533	Badger	1646
18534	Badger	209
18535	Badger	2590
18536	Badger	308
18537	Badger	1707
18538	Chiawuli Tak	1247
18539	Arroyo Zona Urbana	2659
18540	Campbelltown	1493
18541	Coffman Cove	1345
18542	Proctorville	537
18543	Proctorville	2256
18544	Federal Dam	3179
18545	Tysons	2405
18546	Citrus	404
18547	Zemple	2777
18548	Vine Hill	3143
18549	Green Castle	1951
18550	Paradise Valley	3086
18551	Paradise Valley	805
18552	Paradise Valley	320
18553	Jones Chapel	2660
18554	Homer	570
18555	Homer	2865
18556	Homer	1286
18557	Homer	1806
18558	Homer	2423
18559	Homer	1480
18560	Homer	518
18561	Homer	519
18562	New Blaine	2187
18563	Mount Hamill	2095
18564	Saco	1557
18565	Saco	850
18566	Patillas	807
18567	Dorset	1780
18568	Dorset	462
18569	Hornitos	1660
18570	Wind Gap	314
18571	Oro Valley	1247
18572	Smoke Bend	1618
18573	Willow Run	2281
18574	Eldorado at Santa Fe	1750
18575	Quinn	907
18576	Solon	1263
18577	Solon	708
18578	Hoyleton	487
18579	Dwight Mission	1140
18580	Rains	685
18581	Biscoe	1589
18582	Biscoe	723
18583	Blanchester	2901
18584	Earlton	603
18585	Ipswich	2745
18586	Ipswich	835
18587	Bovill	1360
18588	Heflin	2594
18589	Heflin	3275
18590	Cuyahoga Falls	1725
18591	Cold Spring	2751
18592	Cold Spring	1709
18593	Cold Spring	179
18594	Janney	2026
18595	Carrsville	1595
18596	Carrsville	390
18597	Kaltag	1462
18598	Summit Lake	2639
18599	Fitchville	341
18600	Daufuskie Landing	439
18601	Panther	437
18602	West Creek	2627
18603	Eunola	2193
18604	Shenandoah Junction	991
18605	Chalybeate Springs	2995
18606	Triplet	2396
18607	Metuchen	94
18608	New Florence	2385
18609	New Florence	736
18610	Claunch	228
18611	Toa Alta	841
18612	Almelund	2021
18613	Sauk Rapids	1644
18614	Centerville	1621
18615	Centerville	2535
18616	Centerville	2875
18617	Centerville	2208
18618	Centerville	2563
18619	Centerville	483
18620	Centerville	737
18621	Centerville	1260
18622	Centerville	945
18623	Centerville	937
18624	Centerville	2490
18625	Centerville	2116
18626	Centerville	2600
18627	Centerville	905
18628	Centerville	2120
18629	Centerville	2335
18630	Centerville	1162
18631	Centerville	149
18632	Centerville	1208
18633	Centerville	2869
18634	Keddie	3011
18635	Mesquite Creek	829
18636	Palm Springs	3210
18637	Palm Springs	3071
18638	Tar Heel	2063
18639	Connelly Springs	925
18640	Brookland	2621
18641	Diggins	2592
18642	Dorsey	2054
18643	West Denton	2894
18644	Bartelso	2898
18645	Mansfield	1672
18646	Mansfield	2822
18647	Mansfield	1108
18648	Mansfield	3128
18649	Mansfield	2151
18650	Mansfield	1311
18651	Mansfield	1995
18652	Mansfield	2292
18653	Mansfield	1038
18654	Mansfield	3084
18655	Mansfield	1230
18656	Vinton	3227
18657	Vinton	3011
18658	Vinton	364
18659	Vinton	1739
18660	Vinton	2297
18661	Vinton	1639
18662	Pinkstaff	533
18663	Sparkman	524
18664	Stevens Creek	3260
18665	Jeannette	2385
18666	Loving	348
18667	Loving	214
18668	McLaurin	1934
18669	Kewanee	1109
18670	Kewanee	1857
18671	Kathryn	2341
18672	Victor	277
18673	Victor	1392
18674	Victor	3081
18675	Victor	357
18676	Victor	590
18677	Victor	601
18678	Trona	721
18679	Green Lake	866
18680	Green Lake	1970
18681	Dinosaur	1721
18682	Perry Heights	238
18683	Haig	1016
18684	Willcox	3232
18685	Klagetoh	932
18686	Cohoe	1806
18687	Fort Morgan	113
18688	Fort Morgan	1988
18689	Chatsworth	387
18690	Chatsworth	2926
18691	Chatsworth	2841
18692	Chatsworth	2196
18693	Nye	1568
18694	Gruhlkey	1691
18695	Linn Valley	945
18696	Prairie Point	1962
18697	Gasburg	2396
18698	Sallisaw	1140
18699	Bucoda	2190
18700	Meraux	2298
18701	Bombay Beach	153
18702	Sewaren	94
18703	Mont Alto	2135
18704	Stewart Manor	101
18705	Coral Springs	2729
18706	Fern Forest	1488
18707	Sage	1633
18708	Sage	1186
18709	Bayville	101
18710	Hahira	3067
18711	Denair	1941
18712	Leadpoint	657
18713	Vermont Heights	223
18714	Sky Lake	3141
18715	Mowrystown	2924
18716	Black Creek	2936
18717	Black Creek	2266
18718	Lamar	1273
18719	Lamar	3053
18720	Lamar	612
18721	Lamar	2902
18722	Lamar	647
18723	Lamar	933
18724	Lamar	1939
18725	Lamar	2840
18726	Lamar	148
18727	Moncure	1630
18728	Swedeborg	371
18729	Hadar	1927
18730	Calhan	3228
18731	Claysburg	804
18732	Honokahua	2438
18733	Greensburg	2385
18734	Greensburg	1993
18735	Greensburg	2487
18736	Greensburg	1725
18737	Greensburg	2369
18738	Greensburg	492
18739	Greensburg	3216
18740	Benton Ridge	1972
18741	Ideal	3155
18742	Ideal	922
18743	Clark Center	2319
18744	Hydesville	319
18745	Laurium	2065
18746	Chilhowie	2410
18747	Bushnell	1382
18748	Bushnell	513
18749	Bushnell	109
18750	Bushnell	3131
18751	Bushnell	769
18752	Terrell	2361
18753	Fleming	63
18754	Fleming	2180
18755	Fleming	3105
18756	York Center	950
18757	Skipperton	1583
18758	Henly	1378
18759	Vilonia	333
18760	Levasy	1826
18761	Ezel	116
18762	Apison	2073
18763	Adams Center	995
18764	Madras	2766
18765	Madras	983
18766	Thurman	1739
18767	Thurman	967
18768	Lenzburg	918
18769	Inglefield	1562
18770	Orrick	63
18771	Cusick	1031
18772	California	2580
18773	California	179
18774	California	2264
18775	California	483
18776	Magnolia	838
18777	Magnolia	2959
18778	Magnolia	2977
18779	Magnolia	238
18780	Magnolia	734
18781	Magnolia	1838
18782	Magnolia	1076
18783	Magnolia	2754
18784	Magnolia	3126
18785	Magnolia	616
18786	Magnolia	1168
18787	Magnolia	216
18788	Magnolia	110
18789	Homestead Park	2877
18790	New Paris	3145
18791	New Paris	241
18792	New Paris	2954
18793	Muenster	2161
18794	Throop	3057
18795	American Canyon	3151
18796	Marshfield	464
18797	Marshfield	1936
18798	Marshfield	2592
18799	Marshfield	2303
18800	Marshfield	2339
18801	Luis Llorens Torres	846
18802	Lawrenceville	2151
18803	Lawrenceville	533
18804	Lawrenceville	2396
18805	Lawrenceville	2009
18806	Lawrenceville	1373
18807	Lawrenceville	2323
18808	Mill Valley	1515
18809	Methow	1874
18810	Prudhoe Bay	1801
18811	East Meadow	101
18812	Dodge	2968
18813	Dodge	854
18814	Dodge	1350
18815	Dodge	956
18816	Dodge	2808
18817	Oklahoma	2385
18818	Roseville	1889
18819	Roseville	1481
18820	Roseville	2310
18821	Roseville	338
18822	Roseville	2151
18823	Roseville	654
18824	Roseville	2289
18825	Roseville	265
18826	Lake Mary Ronan	1322
18827	Macdoel	337
18828	Lazy Mountain	150
18829	Fort Totten	2400
18830	Cuthbert	2682
18831	Cutler	1842
18832	Cutler	308
18833	Cutler	235
18834	Cutler	489
18835	Sperry	2906
18836	Duster	2511
18837	Jingo	669
18838	Ninnekah	2493
18839	Plumville	2147
18840	Grand Isle	1005
18841	Marrowbone	80
18842	Lublin	1065
18843	Goosport	364
18844	Holiday Hills	3192
18845	Broadbent	772
18846	Johnsburg	2090
18847	Johnsburg	3192
18848	Montgomery Village	740
18849	Millsboro	483
18850	Millsboro	1887
18851	HonokaÊ»a	1488
18852	Leeville	1574
18853	Tarrants	1171
18854	Garber	1942
18855	Garber	3004
18856	Opolis	1414
18857	Charlack	3196
18858	Mount Jackson	2740
18859	WaiÊ»anae	1878
18860	Burbank	761
18861	Burbank	2612
18862	Burbank	404
18863	Burbank	1529
18864	Burbank	2989
18865	Burbank	1154
18866	McMullin	2410
18867	Hale	2112
18868	Hale	275
18869	Hale	3019
18870	Hale	2228
18871	Saks	1283
18872	Blaisdell	2113
18873	Montreat	2270
18874	Mapletown	561
18875	Clarkston	147
18876	Clarkston	2663
18877	Clarkston	1751
18878	Clarkston	2709
18879	Lloydell	3032
18880	Breese	2898
18881	Fabius	2979
18882	Howells	2795
18883	Logsden	1184
18884	Hall	291
18885	Hall	357
18886	Hall	2064
18887	Hall	1103
18888	Hall	202
18889	Montreal	2978
18890	Montreal	1863
18891	Klondike	1497
18892	Klondike	1796
18893	Klondike	1326
18894	Slana	3172
18895	Osburn	224
18896	Navajo Mountain	2932
18897	Capulin	507
18898	Capulin	1461
18899	Humble City	2089
18900	Garretts Mill	492
18901	Otranto	1474
18902	Twilight	483
18903	Twilight	246
18904	Biddeford	850
18905	Swain	1232
18906	Fort Coffee	2263
18907	Fentress	2853
18908	Miccosukee	1207
18909	Lampson	880
18910	Los Ebanos Colonia	166
18911	Frazeysburg	338
18912	Calliham	1144
18913	Suncrest	2381
18914	Owen	2327
18915	Bennett	1630
18916	Bennett	2089
18917	Bennett	64
18918	Bennett	1290
18919	Bennett	931
18920	New Franklin	259
18921	New Franklin	1725
18922	Ketron	1925
18923	Dorton	1172
18924	Hobgood	795
18925	Crooks	2293
18926	San Ysidro	971
18927	Niwot	2267
18928	Greenup	1052
18929	Greenup	78
18930	Coffey	436
18931	Flushing	1591
18932	Flushing	2258
18933	Fruitvale	1804
18934	Fruitvale	1296
18935	Fruitvale	3268
18936	Fruitvale	2167
18937	Taylor	121
18938	Taylor	2606
18939	Taylor	236
18940	Taylor	1830
18941	Taylor	2427
18942	Taylor	3057
18943	Taylor	2117
18944	Taylor	1470
18945	Taylor	3161
18946	Taylor	2770
18947	Taylor	1076
18948	Cohocton	2887
18949	Harveys Lake	2641
18950	Clawson	1778
18951	Clawson	2663
18952	Martell	2253
18953	Mynard	3181
18954	Hardyville	1240
18955	Tiffin	1463
18956	Tiffin	2262
18957	Tiffin	919
18958	Tiffin	1263
18959	Wanchese	842
18960	Kodiak	3101
18961	Jobstown	2841
18962	Oak	885
18963	Caliente	263
18964	Caliente	1206
18965	Grant-Valkaria	2189
18966	Heidelberg	1353
18967	Heidelberg	2632
18968	Heidelberg	3237
18969	Heidelberg	3040
18970	Tamina	734
18971	Dickey	2201
18972	Dickey	2029
18973	Dickey	1281
18974	Prestonsburg	270
18975	Benchland	2145
18976	Marble Rock	265
18977	Armbrust	2385
18978	Sheshebee	2300
18979	Farmingville	940
18980	Brawley	153
18981	Granada	2211
18982	Granada	2840
18983	Helvetia	2678
18984	Dove Valley	2362
18985	Windber	131
18986	Field	1959
18987	Field	812
18988	Money	1116
18989	North Druid Hills	1751
18990	Brainerd	704
18991	Great Meadows	2306
18992	Lake Monticello	2165
18993	Nunaka Valley	2364
18994	Painesdale	2065
18995	Henry	1127
18996	Henry	1108
18997	Henry	2143
18998	Henry	1016
18999	Henry	108
19000	Henry	2466
19001	Henry	2035
19002	Henry	1492
19003	Henry	461
19004	Karthaus	1300
19005	Goodyears Bar	171
19006	Lake McMurray	1422
19007	Ravenswood	2578
19008	Ravenswood	1820
19009	North Vacherie	1275
19010	West Manchester	241
19011	Bulverde	611
19012	McMullen	366
19013	Kingston Estates	2977
19014	Lazear	1797
19015	Griffithsville	1197
19016	Northwood	2338
19017	Northwood	1581
19018	Northwood	1835
19019	Northwood	804
19020	Krotz Springs	2967
19021	Vigil	205
19022	Ozark	674
19023	Ozark	2950
19024	Ozark	2126
19025	Monee	875
19026	Cainsville	620
19027	Juanita	3217
19028	Juanita	3117
19029	Juanita	1727
19030	Lanare	937
19031	Stamps	2772
19032	Jubilee Springs	1958
19033	Tainter Lake	2969
19034	McFadden	3036
19035	Hessel	1701
19036	Ridgway	2775
19037	Ridgway	162
19038	Ridgway	578
19039	Lake Isabella	263
19040	Lake Isabella	1020
19041	Etowah	938
19042	Etowah	859
19043	Etowah	3254
19044	Etowah	2651
19045	Grider	938
19046	Pembroke	1364
19047	Pembroke	2256
19048	Pembroke	2545
19049	Pembroke	71
19050	Pembroke	2951
19051	Koehler	2794
19052	Fort Wingate	3150
19053	Minters Chapel	3084
19054	Auburntown	641
19055	Pimento	3110
19056	Saint Marys Point	480
19057	Sammamish	3217
19058	Edgar Springs	1303
19059	Chocowinity	438
19060	Windmill	1352
19061	Brownlee Park	1286
19062	Baggs	3036
19063	Kendleton	1890
19064	Libby	1185
19065	La Joya	1353
19066	La Joya	228
19067	Rossville	2568
19068	Rossville	1351
19069	Rossville	1498
19070	Rossville	2940
19071	Rossville	2036
19072	Rossville	2897
19073	Rossville	2555
19074	Martorell	280
19075	Susitna	150
19076	Lakehills	2917
19077	Quebrada	1249
19078	Canyon Valley	574
19079	Mount Morris	386
19080	Mount Morris	2258
19081	Mount Morris	561
19082	Mount Morris	1978
19083	Seven Valleys	853
19084	Stannards	1496
19085	West Scio	943
19086	Almon	1230
19087	Taylortown	2877
19088	Taylortown	326
19089	McKibben	1520
19090	Cahokia	918
19091	Branchland	1197
19092	Westmorland	153
19093	Blanchard	306
19094	Blanchard	1454
19095	Blanchard	2632
19096	Blanchard	1422
19097	Blanchard	1517
19098	Blanchard	623
19099	Blanchard	3056
19100	Blodgett Landing	598
19101	Seney	1935
19102	Seney	1376
19103	Tucumcari	1253
19104	Yucca Valley	721
19105	LoÃ­za	1235
19106	Beaverdam	441
19107	Madrid	1307
19108	Madrid	2117
19109	Madrid	1135
19110	Madrid	247
19111	Madrid	1750
19112	Paton	562
19113	Snoqualmie Pass	400
19114	Hart	1457
19115	Hart	3166
19116	Greenwich Heights	887
19117	Thaxton	134
19118	La Habra Heights	404
19119	Minden City	445
19120	Pocahontas	1776
19121	Pocahontas	1046
19122	Pocahontas	2619
19123	Pocahontas	1244
19124	Pocahontas	2684
19125	Pocahontas	3127
19126	Storm Lake	719
19127	Barrineau Park	2667
19128	Macdona	1083
19129	Darbyville	1986
19130	Trees Mills	2385
19131	Lakin	2453
19132	Montrose Hill	2632
19133	Merriam	3229
19134	Merriam	1272
19135	McGrew	1016
19136	Luling	2853
19137	Luling	1081
19138	Russell Springs	2185
19139	Russell Springs	1453
19140	Lake Spring	418
19141	Hassman	2300
19142	Clever	2950
19143	Ryegate	2966
19144	Gilark	2594
19145	Red Devil	2260
19146	Sasser	913
19147	Southold	940
19148	Clarkrange	1036
19149	Abanda	1342
19150	GuÃ¡nica	1252
19151	Blackgum	1140
19152	Madelia	2796
19153	Moncks Corner	1723
19154	Blountstown	1282
19155	Mingoville	393
19156	Cleves	2075
19157	Lindenwold	2977
19158	Richlawn	997
19159	Highland Lakes	1889
19160	Toluca	2466
19161	Bullard	1603
19162	Bullard	2911
19163	Estelline	1022
19164	Estelline	901
19165	Sidney Center	2804
19166	Waynesville	552
19167	Waynesville	2556
19168	Waynesville	2312
19169	Waynesville	371
19170	Ogg	2279
19171	Grantville	2766
19172	Grantville	998
19173	Grantville	1369
19174	Plattekill	1952
19175	Chillicothe	388
19176	Chillicothe	2174
19177	Chillicothe	2696
19178	Chillicothe	2456
19179	Chillicothe	1257
19180	Elrosa	1709
19181	El Porvenir	1039
19182	Lanark	2226
19183	Lanark	1242
19184	De Soto	1825
19185	De Soto	522
19186	De Soto	1416
19187	De Soto	1272
19188	De Soto	993
19189	De Soto	1212
19190	Ramos Comunidad	2447
19191	Hot Springs Village	2446
19192	Vigus	3196
19193	Blawnox	2632
19194	Salemburg	286
19195	Stafford	3062
19196	Stafford	1318
19197	Stafford	1890
19198	Stafford	2358
19199	Stafford	1319
19200	Stafford	3223
19201	Hillsboro Pines	2729
19202	Lindenwood	1978
19203	Vega Alta Zona Urbana	707
19204	Interlachen	2758
19205	Merrick	101
19206	Nardin	1366
19207	Brookesmith	633
19208	Lisabeula	3217
19209	Oceanport	278
19210	Greenwald	1709
19211	Coppell	525
19212	Port Ashton	3172
19213	Hartselle	119
19214	Hawaiian Paradise Park	1488
19215	West Berlin	2977
19216	Fernald	2581
19217	Fernald	2075
19218	Berwick	2490
19219	Berwick	3191
19220	Berwick	850
19221	Berwick	2539
19222	Berwick	1079
19223	Evening Shade	2372
19224	Evening Shade	1140
19225	Penitas	1353
19226	Ward Cove	2525
19227	Jesterville	2067
19228	Wicomico Church	2962
19229	Sheakleyville	2010
19230	Saum	546
19231	Lowman	3171
19232	New Athens	918
19233	New Athens	622
19234	Minburn	522
19235	Tajique	1625
19236	Bridgehampton	940
19237	Noblestown	2632
19238	Pinopolis	1723
19239	North Syracuse	2979
19240	Captina	2461
19241	Mendeltna	3172
19242	Rumford	1703
19243	Rumford	124
19244	Rustad	1530
19245	Shiremanstown	83
19246	Frewsburg	3112
19247	Morovis Zona Urbana	1987
19248	New Germany	1037
19249	Monon	1904
19250	East Jordan	541
19251	Brooksville	2032
19252	Brooksville	1962
19253	Brooksville	2420
19254	Brooksville	3274
19255	Brooksville	3266
19256	Montezuma Creek	2932
19257	Shiloh	1672
19258	Shiloh	853
19259	Shiloh	146
19260	Shiloh	918
19261	Shiloh	2189
19262	Shiloh	515
19263	Shiloh	82
19264	Shiloh	2975
19265	Shiloh	1752
19266	Santa Cruz	1914
19267	Santa Cruz	1750
19268	Santa Cruz	1362
19269	Santa Cruz	166
19270	Levant	3030
19271	Bemiss	3067
19272	Rock Island	2263
19273	Rock Island	2822
19274	Rock Island	206
19275	Rock Island	1363
19276	Santa Elena	166
19277	Animas Comunidad	2087
19278	Congress	2495
19279	Congress	2612
19280	Laurys Station	1372
19281	Kearneysville	991
19282	Dauphin	1369
19283	Alloway	2628
19284	Dustin	3053
19285	Kirksey	3075
19286	Kirksey	1426
19287	Ruthville	1551
19288	Larned	1256
19289	McGraw	1480
19290	Kneeland	319
19291	Hauppauge	940
19292	Hays	446
19293	Hays	1378
19294	Hays	825
19295	Hays	1403
19296	Mesa Vista	1937
19297	Oconomowoc Lake	2426
19298	Paddock Lake	2582
19299	White Lake	2063
19300	White Lake	2639
19301	White Lake	2156
19302	Grosse Pointe Woods	2606
19303	Sandgap	1812
19304	Aurora Center	2156
19305	White Swan	3268
19306	Burgettstown	483
19307	Anson	3022
19308	Anson	2492
19309	Anson	130
19310	Rafael Capo	2992
19311	Ebensburg	3032
19312	Pelican Lake	3239
19313	Keyport	1048
19314	Keyport	278
19315	Bow Valley	65
19316	Callensburg	297
19317	Red Mills	1073
19318	Midpines	1660
19319	Biscay	2386
19320	Forest	1894
19321	Forest	2388
19322	Forest	2240
19323	Forest	2952
19324	Bella Vista	2883
19325	Bella Vista	1645
19326	Descanso	2381
19327	Stephens City	3152
19328	Humble	145
19329	Saxe	1507
19330	Croton Heights	1919
19331	Larsen Bay	3101
19332	Greenland	471
19333	Greenland	3072
19334	Seaforth	1250
19335	Montz	1081
19336	Manville	3051
19337	Manville	929
19338	Manville	129
19339	Shickshinny	2641
19340	Ola	1389
19341	Ola	2869
19342	Ola	1608
19343	McElhattan	2902
19344	Pintura	472
19345	Micanopy	132
19346	Soldier Pond	2201
19347	Gardners	1298
19348	Nohly	1669
19349	Cambridge	90
19350	Cambridge	3048
19351	Cambridge	1109
19352	Cambridge	2287
19353	Cambridge	477
19354	Cambridge	2508
19355	Cambridge	95
19356	Cambridge	1084
19357	Cambridge	994
19358	Cambridge	448
19359	Cambridge	997
19360	Cambridge	493
19361	Cambridge	2581
19362	Cambridge	1992
19363	Cambridge	1026
19364	Bellmead	702
19365	Glenvar	2297
19366	Hernshaw	1467
19367	Kinsale	2384
19368	Maylene	195
19369	Candelaria Arenas	1334
19370	Union Grove	1659
19371	Union Grove	426
19372	Union Grove	2472
19373	Flower Mound	2452
19374	Retta	3084
19375	Oma	530
19376	Oma	2446
19377	Monango	1091
19378	Mount Gretna Heights	1493
19379	Dowelltown	1754
19380	Okemah	87
19381	Rio Hondo	1832
19382	Salladasburg	1770
19383	Fruit Heights	2875
19384	Still Pond	217
19385	Barranquitas Zona Urbana	2844
19386	Tower Lake	1326
19387	Dundas	1428
19388	Dundas	2748
19389	Dundas	1670
19390	Dundas	1354
19391	Frankville	470
19392	Frankville	2624
19393	Mount Solon	1261
19394	Niangua	2592
19395	Elk Point	499
19396	Toms Brook	2740
19397	Bitely	2882
19398	Britton	2586
19399	Britton	2469
19400	Britton	823
19401	Port Murray	2306
19402	Anawalt	2379
19403	Sixteen	2842
19404	Eau Gallie	2189
19405	Otisville	3137
19406	Otisville	2258
19407	Elimsport	1770
19408	Ona	2250
19409	Rose Creek	1432
19410	Leader	3179
19411	Carmine	2567
19412	Deatsville	808
19413	Zanesfield	2184
19414	Brattleboro	3097
19415	Ong	1535
19416	Syosset	101
19417	Lawrence Park	1512
19418	Point Lay	1801
19419	Monse	1874
19420	Sabattis	2069
19421	Ono	2883
19422	Red Bird	3079
19423	Emeryville	1556
19424	Mormon Lake	353
19425	Lock Haven	2902
19426	Glen Este	1241
19427	Alderson	3211
19428	Alderson	2836
19429	Saint Lawrence	1068
19430	Saint Lawrence	362
19431	Hurricane	2750
19432	Hurricane	472
19433	West Liberty	1702
19434	West Liberty	116
19435	West Liberty	789
19436	West Liberty	2184
19437	West Liberty	2779
19438	Macomb	2032
19439	Macomb	3131
19440	Springdale	2075
19441	Springdale	2632
19442	Springdale	1749
19443	Springdale	324
19444	Springdale	2064
19445	Springdale	471
19446	Springdale	2382
19447	Springdale	129
19448	Springdale	657
19449	Springdale	472
19450	Scioto Furnace	3256
19451	Cannelburg	435
19452	Cresco	256
19453	Cresco	2351
19454	Gordy	1836
19455	Half Moon	329
19456	Wylandville	483
19457	West Branch	159
19458	West Branch	64
19459	Manzano Springs	405
19460	Gordo	366
19461	Clinchport	2248
19462	Uniondale	101
19463	Uniondale	2915
19464	Wapakoneta	3007
19465	Holmdel	278
19466	Keiser	938
19467	Grand Lake Towne	1884
19468	Lebanon	680
19469	Lebanon	955
19470	Lebanon	1491
19471	Lebanon	2204
19472	Lebanon	1493
19473	Lebanon	2312
19474	Lebanon	2904
19475	Lebanon	1602
19476	Lebanon	1452
19477	Lebanon	248
19478	Lebanon	713
19479	Lebanon	3134
19480	Lebanon	943
19481	Lebanon	918
19482	Lebanon	216
19483	Lebanon	2939
19484	Lebanon	2467
19485	Allegany	1370
19486	Allegany	772
19487	Westhampton	940
19488	Lakeland	190
19489	Lakeland	480
19490	Lakeland	2545
19491	Lakeland	2018
19492	Lakeland	2979
19493	Lakeland	2705
19494	Baroda	1767
19495	Urbanette	2223
19496	Meyers Lake	238
19497	Dellslow	830
19498	Minnesota Lake	2830
19499	Gate City	2248
19500	Pigeon Falls	854
19501	Nubieber	2799
19502	Archer Lodge	1165
19503	Effort	2351
19504	McFaddin	2800
19505	Streetman	2524
19506	Bisbee	801
19507	Bisbee	3232
19508	Bisbee	3084
19509	Upper Exeter	2641
19510	Churchtown	1139
19511	Opp	2575
19512	Big Rapids	1764
19513	Creswell	463
19514	Creswell	2959
19515	Creswell	1446
19516	Goree	582
19517	Polson	1322
19518	Hillandale	740
19519	Seabrook	145
19520	Seabrook	2064
19521	Seabrook	1162
19522	Thompson	2692
19523	Thompson	3015
19524	Thompson	1581
19525	Thompson	3132
19526	Camillus	2979
19527	Columbia Falls	1761
19528	White Sands	1242
19529	Wickenburg	3086
19530	Merrill	1935
19531	Merrill	759
19532	Merrill	1204
19533	Merrill	299
19534	Merrill	1928
19535	Dailey	2678
19536	Dailey	2180
19537	Palm River	832
19538	Malibu	404
19539	New Hudson	2663
19540	Radcliff	2392
19541	Freelandville	581
19542	Amanda	406
19543	Fort Apache	3161
19544	Pine Center	704
19545	Shawanee	571
19546	Mentasta Lake	3172
19547	Edwardsport	581
19548	Cane Valley	1387
19549	Whitharral	97
19550	Terlton	1254
19551	University Park	1705
19552	University Park	761
19553	University Park	1242
19554	University Park	525
19555	University Park	2669
19556	University Park	2064
19557	Julesburg	886
19558	Driggs	2187
19559	Driggs	1392
19560	Everson	1983
19561	Everson	2574
19562	Captiva	2101
19563	Roselle	950
19564	Roselle	2055
19565	Roselle	502
19566	Shippensburg	83
19567	Ord	3169
19568	Walnut Grove	565
19569	Walnut Grove	1163
19570	Walnut Grove	2491
19571	Walnut Grove	1548
19572	Walnut Grove	1932
19573	Walnut Grove	2688
19574	Walnut Grove	2326
19575	Walnut Grove	1250
19576	Windsor Place	158
19577	Yancopin	1661
19578	Betances Comunidad	1682
19579	Paonia	1797
19580	Noelke	2169
19581	National City	918
19582	National City	2381
19583	Grand Haven	1733
19584	Lost Bridge Village	1645
19585	Orr	3195
19586	Orr	2476
19587	Rushmore	1090
19588	Superior	1914
19589	Superior	975
19590	Superior	2823
19591	Superior	2267
19592	Superior	885
19593	Superior	1314
19594	Russia	194
19595	Hargis	372
19596	Lost City	1900
19597	Lost City	430
19598	Churchs Ferry	653
19599	Smallwood	1946
19600	Brookeville	740
19601	Holcut	173
19602	Clatskanie	1072
19603	Parsons	1092
19604	Parsons	2488
19605	Parsons	1954
19606	Lewisberry	853
19607	Short Creek	987
19608	Short Creek	3262
19609	Alanreed	3073
19610	Pecan Acres	3084
19611	Crestline	1412
19612	Crestline	721
19613	Crestline	1206
19614	Carbon Hill	1349
19615	Carbon Hill	2505
19616	Carbon Hill	2236
19617	Anna	194
19618	Anna	1335
19619	Anna	508
19620	Fayetteville	1269
19621	Fayetteville	1407
19622	Fayetteville	76
19623	Fayetteville	1187
19624	Fayetteville	2564
19625	Fayetteville	2979
19626	Fayetteville	2567
19627	Fayetteville	918
19628	Fayetteville	2135
19629	Fayetteville	636
19630	Fayetteville	471
19631	Fayetteville	2572
19632	Vallecito	3144
19633	Portersville	789
19634	Portersville	1752
19635	South Glastonbury	1749
19636	Olive Hill	2562
19637	Eagleton Village	2421
19638	Belmore	2756
19639	Oso	99
19640	Lafourche	1574
19641	Warminster Heights	2634
19642	Cohoctah	389
19643	Brutus	2519
19644	Pitcairn	2632
19645	Hoosick Falls	2828
19646	Lakeland Highlands	2545
19647	Alatna	1462
19648	Thunderbolt	1631
19649	Sun City Center	868
19650	Boulogne	100
19651	State Bridge	2974
19652	Farmer City	552
19653	Waiakoa	2438
19654	North Great River	940
19655	Hokes Bluff	1163
19656	Cottleville	1082
19657	Lexie	2254
19658	Winnfield	921
19659	Sapulpa	755
19660	Dizney	1898
19661	Belmont	305
19662	Belmont	1164
19663	Belmont	2835
19664	Belmont	1751
19665	Belmont	1521
19666	Belmont	1032
19667	Belmont	3068
19668	Belmont	1464
19669	Belmont	1496
19670	Belmont	3118
19671	Belmont	2773
19672	Belmont	95
19673	Belmont	843
19674	Belmont	2966
19675	Belmont	1423
19676	Belmont	3032
19677	Belmont	1591
19678	Belmont	173
19679	Violet Hill	1633
19680	Oto	3024
19681	Whetstone	3232
19682	Rich Creek	1364
19683	Batesburg-Leesville	324
19684	Melissa	1335
19685	Lac La Belle	2426
19686	Grandfather	1614
19687	Gorin	2727
19688	Cape Saint Claire	2440
19689	Belmond	2290
19690	El Mirage	3086
19691	Frenier	935
19692	Fountain Hill	1372
19693	Fountain Hill	2862
19694	Cardiff-by-the-Sea	2381
19695	De Queen	3207
19696	Abernathy	300
19697	Nipomo	2207
19698	Naplate	2507
19699	Clearview Acres	3093
19700	Wittman	1160
19701	Yuba City	220
19702	Spring Place	2196
19703	Brampton	3010
19704	Lolita	1823
19705	Reads Landing	2988
19706	Newsome	3088
19707	Talowah	890
19708	Jacona	1750
19709	Borden Springs	3275
19710	Silkworth	2641
19711	Mount Clare	712
19712	Campville	132
19713	Fort Payne	1752
19714	Freemont	2037
19715	Panhandle	3094
19716	Sinclair	3036
19717	Hemphill	1033
19718	East Prospect	853
19719	Grand Rapids	219
19720	Grand Rapids	2338
19721	Grand Rapids	2777
19722	Ninety Six	3075
19723	Hacienda Heights	404
19724	Red River Hot Springs	1458
19725	Doland	1038
19726	Langlois	811
19727	Pellettown	1889
19728	Akutan	1145
19729	Belview	1250
19730	Maskell	2237
19731	Chevy Chase Section Three	740
19732	Sheltons	2730
19733	Miami Lakes	1705
19734	Lowesville	1183
19735	Brazos	1719
19736	Brazos	2725
19737	Chatham	456
19738	Chatham	90
19739	Chatham	2767
19740	Chatham	1073
19741	Chatham	1162
19742	Chatham	2877
19743	Chatham	695
19744	Chatham	3026
19745	Chatham	1827
19746	Chatham	485
19747	Seminole	1628
19748	Seminole	1988
19749	Seminole	2993
19750	Seminole	2785
19751	Bokchito	70
19752	Fairland	1732
19753	Fairland	1339
19754	Fairland	740
19755	Fairland	188
19756	Brewton	2668
19757	Brewton	948
19758	Bear Lake	2162
19759	Bear Lake	2307
19760	Meire Grove	1709
19761	Atascocita	145
19762	Sinking Spring	2924
19763	Sinking Spring	362
19764	Edmond	3033
19765	Edmond	958
19766	Sabin	1530
19767	Shipman	272
19768	Shipman	712
19769	Los Nietos	404
19770	Quebrada del Agua Comunidad	459
19771	Idaho City	3171
19772	Huachuca City	3232
19773	Shady Shores	2452
19774	Dauphin Island	1301
19775	Hambleton	1092
19776	Ridgewood	1572
19777	Ridgewood	2910
19778	Ridgewood	875
19779	Rollins	3195
19780	Rollins	1322
19781	Favoretta	1696
19782	Rubio	484
19783	Newberry	1657
19784	Newberry	132
19785	Newberry	557
19786	Newberry	3267
19787	Ashland Heights	907
19788	Newhope	1176
19789	Chilhowee	1269
19790	Mariposa	1660
19791	Montclair	321
19792	Montclair	721
19793	Peyton	3228
19794	Yates City	584
19795	Shreve	2612
19796	Red Cloud	2596
19797	Gunlock	472
19798	Mill Brook	2877
19799	Richland	1493
19800	Richland	2795
19801	Richland	1471
19802	Richland	1646
19803	Richland	960
19804	Richland	2370
19805	Richland	499
19806	Richland	2940
19807	Richland	881
19808	Richland	3168
19809	Richland	419
19810	Richland	1100
19811	Richland	371
19812	Allyn	744
19813	Calimesa	3210
19814	Sedona	353
19815	Forest Hill	2959
19816	Forest Hill	3084
19817	Forest Hill	2402
19818	Vassar	1486
19819	Vassar	1156
19820	Dakota Dunes	499
19821	Calypso	3126
19822	Amidon	290
19823	Roosevelt	101
19824	Roosevelt	2428
19825	Roosevelt	877
19826	Roosevelt	99
19827	Roosevelt	2920
19828	Roosevelt	278
19829	Roosevelt	1992
19830	Angel Fire	2794
19831	Glide	2814
19832	Cliffwood Beach	278
19833	Norris	1396
19834	Norris	367
19835	Norris	791
19836	Norris	2712
19837	Norris	2043
19838	Merritt	276
19839	La Paloma	1832
19840	Fontanelle	473
19841	Fontanelle	1384
19842	Woodson Terrace	3196
19843	Metompkin	3027
19844	Idyllwild	3210
19845	Dundee	3095
19846	Dundee	1090
19847	Dundee	2545
19848	Dundee	2658
19849	Dundee	2780
19850	Dundee	2352
19851	Dundee	2805
19852	Dundee	613
19853	Dundee	1575
19854	Dundee	2552
19855	Dundee	363
19856	Orason Acres Colonia	1832
19857	Prismatic	3247
19858	Airway Heights	1431
19859	Green Bay	639
19860	Culver	3195
19861	Culver	983
19862	Culver	2464
19863	Culver	1731
19864	Markleville	2044
19865	Weldon Spring Heights	1082
19866	Louin	3040
19867	Baldwin City	2821
19868	Dubach	1202
19869	Newsoms	1015
19870	Sudlersville	2701
19871	Parmelee	2648
19872	Groves	1003
19873	Chesnee	3162
19874	Jericho	952
19875	Jericho	101
19876	Jericho	1576
19877	Jericho	1785
19878	Jericho	2801
19879	Jericho	2426
19880	Loysville	1848
19881	Many Farms	932
19882	South Chicago Heights	761
19883	Columbine Valley	2362
19884	Fort Benton	3219
19885	Kings Canyon	1824
19886	Belfonte	1140
19887	Foxworth	688
19888	Barnabus	2179
19889	Wahpeton	1673
19890	Wahpeton	1314
19891	Norrie	399
19892	Biscayne Park	1705
19893	Fort Smith	3128
19894	Fort Smith	2724
19895	Finchville	193
19896	Tangelo Park	3141
19897	Bill Moores	2367
19898	Sissonville	1467
19899	Turkey Creek Meadows	1323
19900	Holland	333
19901	Holland	2383
19902	Holland	1341
19903	Holland	2503
19904	Holland	542
19905	Holland	2942
19906	Holland	2634
19907	Holland	1733
19908	Holland	2203
19909	Holland	1510
19910	Holland	1958
19911	Holland	1854
19912	Holland	2373
19913	Kildare	1366
19914	Kildare	1743
19915	Medicine Lodge	2024
19916	Rifton	1952
19917	Idanha	677
19918	Rohwer	1661
19919	Joiner	938
19920	Sunniland	832
19921	Clarkridge	2459
19922	Edmore	1356
19923	Edmore	653
19924	Montour Falls	2737
19925	Van Alstyne	3261
19926	Kittanning	775
19927	Heckscherville	2826
19928	Laureldale	362
19929	Randallstown	1498
19930	Monte Grande Comunidad	1682
19931	Felsenthal	501
19932	Bell Hill	185
19933	Roland	2581
19934	Roland	375
19935	Roland	1140
19936	Foot of Ten	804
19937	Canmer	1240
19938	Grass Creek	2711
19939	Grass Creek	311
19940	Siloam	567
19941	Hartford	2054
19942	Hartford	476
19943	Hartford	141
19944	Hartford	2780
19945	Hartford	3128
19946	Hartford	2308
19947	Hartford	1712
19948	Hartford	2193
19949	Hartford	373
19950	Hartford	2433
19951	Hartford	2293
19952	Hartford	3146
19953	Las Croabas Comunidad	330
19954	Freeborn	1713
19955	Protivin	256
19956	Basking Ridge	129
19957	Penton	1342
19958	Penton	871
19959	Bryce	2013
19960	Grover	2509
19961	Grover	2603
19962	Grover	857
19963	Grover	1101
19964	Grover	1186
19965	Weaubleau	1051
19966	Three Mile Bay	995
19967	Onawa	3000
19968	Oak Valley	881
19969	Oak Valley	163
19970	Oak Valley	2626
19971	Engelhard	2837
19972	Pinch	1467
19973	Pearisburg	1364
19974	Scarborough	79
19975	Scarborough	1919
19976	Togiak	2019
19977	Lahaina	2438
19978	Summit	2731
19979	Summit	1864
19980	Summit	1247
19981	Summit	781
19982	Summit	502
19983	Summit	2420
19984	Summit	1925
19985	Summit	324
19986	Summit	1168
19987	Summit	761
19988	Summit	1638
19989	Summit	2392
19990	Summit	3241
19991	Summit	684
19992	Dunfermline	2712
19993	Fairplay	1748
19994	Fairplay	492
19995	Livermore Falls	2399
19996	Mounds	370
19997	Mounds	755
19998	Murtaugh	1402
19999	Farlington	1414
20000	West View	2632
20001	West View	708
20002	Stephenville	1545
20003	Keithville	306
20004	Port Byron	2023
20005	Port Byron	1363
20006	Lowry	1093
20007	Lowry	2644
20008	Lowry	252
20009	Tomkins Cove	2960
20010	Thedford	3028
20011	Ottawa	2507
20012	Ottawa	2133
20013	Ottawa	3237
20014	Ottawa	2756
20015	Cedar Hill Lakes	993
20016	Lone Star	2878
20017	Lone Star	1285
20018	Lone Star	1081
20019	Lone Star	2821
20020	Shields	1447
20021	Shields	1130
20022	Shields	299
20023	Holloway	1956
20024	Holloway	1591
20025	Chappell Hill	486
20026	Washington Boro	1139
20027	Glacier	1983
20028	Amsden	2262
20029	New Iberia	1178
20030	Kennerdell	2990
20031	Burnett	3195
20032	Burnett	955
20033	Burnett	3110
20034	Bazine	3023
20035	Anza	3210
20036	College Corner	241
20037	Willette	3157
20038	Ventnor City	2617
20039	Elk Rapids	1855
20040	Norbourne Estates	997
20041	Ocean Ridge	3071
20042	Leggett	2540
20043	Leggett	1098
20044	Leggett	1053
20045	Lytle	1017
20046	New Alexandria	2385
20047	New Alexandria	1006
20048	Irwinton	183
20049	Mount Holly	501
20050	Mount Holly	2835
20051	Mount Holly	1723
20052	Mount Holly	2841
20053	Penn Estates	2351
20054	Euclid	2543
20055	Euclid	708
20056	West Marion	2378
20057	Boulder Hill	1913
20058	Laurinburg	2726
20059	Casmalia	2107
20060	Sun Lakes	3086
20061	Udall	1026
20062	Thelma	1083
20063	Bellvale	3137
20064	Yuba	1674
20065	Tazewell	693
20066	Tazewell	1776
20067	Tazewell	571
20068	French	2794
20069	North Cleveland	3107
20070	Dodge City	2660
20071	Dodge City	233
20072	Elwyn	2809
20073	Shipley	2581
20074	Shipley	2900
20075	River Road	438
20076	River Road	185
20077	River Road	1446
20078	Honor	180
20079	South Fork	2480
20080	South Fork	1190
20081	South Fork	3184
20082	South Fork	3032
20083	Creola	1129
20084	Creola	1301
20085	Creola	848
20086	Quimby	428
20087	Anna Maria	2834
20088	Pagosa Springs	86
20089	Brookford	2526
20090	Morse Bluff	3236
20091	Red Dog Mine	2907
20092	Truesdale	719
20093	Truesdale	2311
20094	Snoqualmie	3217
20095	Charlotte Park	1506
20096	Pearsonville	2411
20097	Jollyville	121
20098	Deltona	814
20099	Cuba	1496
20100	Cuba	2901
20101	Cuba	514
20102	Cuba	1411
20103	Cuba	971
20104	Cuba	2712
20105	Cuba	1871
20106	Piney	2446
20107	Piney	1385
20108	Hoagland	443
20109	Wolflake	3229
20110	Bynum	452
20111	Bynum	1630
20112	Bynum	1393
20113	El Paraiso Comunidad	459
20114	Creole	1831
20115	Gillham	3207
20116	Spavinaw	1884
20117	East Rancho Dominguez	404
20118	Fostoria	2033
20119	Fostoria	734
20120	Fostoria	2262
20121	Fostoria	1537
20122	Fostoria	1486
20123	Colusa	1803
20124	Halls Crossing	2932
20125	Poplar Branch	1259
20126	Enon Valley	540
20127	Pax	2564
20128	Deepstep	490
20129	Hayden Lake	3087
20130	Barceloneta Zona Urbana	1908
20131	Western Grove	1232
20132	Leeton	1269
20133	Evadale	3042
20134	Mooringsport	306
20135	Carnegie	2682
20136	Carnegie	2632
20137	Carnegie	307
20138	Rewey	3080
20139	Banner Elk	1614
20140	Cameron	1831
20141	Cameron	353
20142	Cameron	2899
20143	Cameron	326
20144	Cameron	2310
20145	Cameron	2176
20146	Cameron	2315
20147	Cameron	2461
20148	Cameron	1285
20149	Cameron	2263
20150	Cameron	2043
20151	Brad	1719
20152	North Stratford	773
20153	Potrero	2381
20154	Alanson	2519
20155	Butte des Morts	2690
20156	Rotan	961
20157	Loma Rica	1775
20158	Eudora	629
20159	Eudora	2821
20160	Ocate	3190
20161	Lamourie	2402
20162	North Bloomfield	2946
20163	Venedocia	2984
20164	Farrell	2010
20165	Farrell	161
20166	Arnolds Park	1314
20167	Collierville	190
20168	Collierville	590
20169	Kenny Lake	3172
20170	Wentzville	1082
20171	Springer	2560
20172	Springer	2794
20173	Pease	2200
20174	Witmer	1139
20175	Vantage	400
20176	Locust Valley	101
20177	Pearl	1170
20178	Pearl	1608
20179	Pearl	2370
20180	Silver City	2497
20181	Silver City	2997
20182	Silver City	1576
20183	Silver City	982
20184	Silver City	2425
20185	Silver City	907
20186	Silver City	1128
20187	Silver City	308
20188	Silver City	1895
20189	Silver City	142
20190	Bray	2848
20191	Bray	337
20192	Lake Secession	1944
20193	Lizemores	1536
20194	Greenbelt	2064
20195	Parkline	3083
20196	Tyngsboro	95
20197	Estill	1606
20198	Estill	485
20199	New Bavaria	1112
20200	Apollo Beach	868
20201	Broadwell	2181
20202	Seal Rock	1184
20203	West Sharyland	1353
20204	North Wales	731
20205	Polacca	3161
20206	Krebs	3211
20207	LaVerkin	472
20208	Angle Inlet	3148
20209	Eskota	961
20210	Virgelle	3219
20211	Hilger	2061
20212	Tawas City	275
20213	Onava	1039
20214	Alquina	2566
20215	Holden	2152
20216	Holden	1269
20217	Holden	2179
20218	Leyner	2267
20219	Kailua	1878
20220	Holder	2283
20221	Holder	799
20222	Lewis Springs	3232
20223	Saint Leon	154
20224	Eatontown	278
20225	Tatitlek	3172
20226	Wakenda	2228
20227	Benonine	965
20228	Pueblo Nuevo Colonia	817
20229	Langtry	594
20230	Awendaw	905
20231	Wolverine	2481
20232	Orangeburg	1910
20233	Orangeburg	2960
20234	Tuscaloosa	1911
20235	Levering	2519
20236	Lennep	2842
20237	Pinal	2920
20238	Bordulac	3117
20239	Pep	1678
20240	Red Bluff	3186
20241	Long Point	387
20242	Caban	2414
20243	White Mesa	2932
20244	Mill Iron	2558
20245	Brea	3140
20246	Lobo	1097
20247	Black River	2762
20248	Black River	995
20249	Cooper Landing	1806
20250	Greens Fork	2600
20251	North Westport	597
20252	Neihart	2334
20253	Rose Haven	2440
20254	Dearing	1221
20255	Dearing	728
20256	Groton Long Point	1593
20257	Lompoc	2107
20258	Calumet City	761
20259	Plymouth	2606
20260	Plymouth	141
20261	Plymouth	2641
20262	Plymouth	1596
20263	Plymouth	341
20264	Plymouth	1936
20265	Plymouth	1646
20266	Plymouth	990
20267	Plymouth	1421
20268	Plymouth	3134
20269	Plymouth	463
20270	Plymouth	91
20271	Plymouth	915
20272	Plymouth	3141
20273	Plymouth	2253
20274	Plymouth	2464
20275	Plymouth	1969
20276	Plymouth	2750
20277	South Salt Lake	2637
20278	McQuady	930
20279	Carlile	1019
20280	Cottonwood Shores	1339
20281	Longmire	1925
20282	Loag	90
20283	New Melle	1082
20284	Westacres	2663
20285	Blessing	2674
20286	Vibbard	63
20287	Lake Alfred	2545
20288	Fort Duchesne	1443
20289	Cohagen	3001
20290	Bethune	2197
20291	Bethune	365
20292	Alum Bank	2954
20293	Loda	1955
20294	Hialeah Gardens	1705
20295	Chugiak	2364
20296	Edgemoor	89
20297	Edgemoor	2563
20298	Gold Hill	2267
20299	Gold Hill	1622
20300	Gold Hill	1808
20301	Haines	1963
20302	Haines	1471
20303	Lodi	1078
20304	Lodi	2611
20305	Lodi	689
20306	Lodi	590
20307	Lodi	828
20308	Lodi	1572
20309	Lodi	2261
20310	West Menlo Park	1423
20311	Lewis Run	1217
20312	Fox Lake Hills	1326
20313	Mount Crested Butte	549
20314	Shawan	1498
20315	Maple Grove	91
20316	Yaphank	940
20317	New Milford	2691
20318	New Milford	3015
20319	New Milford	1572
20320	New Milford	3137
20321	New Milford	1990
20322	Edgemont	3210
20323	Edgemont	492
20324	Edgemont	124
20325	Greenacres City	3071
20326	Townville	1397
20327	Townville	1417
20328	Double Springs	2970
20329	Fairmount	128
20330	Fairmount	1699
20331	Fairmount	2979
20332	Fairmount	879
20333	Fairmount	1118
20334	Fairmount	1673
20335	Fairmount	2073
20336	Fairmount	2036
20337	Benton City	1646
20338	Benton City	2945
20339	Loco	2848
20340	Callands	456
20341	Neosho Rapids	141
20342	Country Homes	1431
20343	Gold Bar	99
20344	Tushka	711
20345	Oxly	798
20346	Allenport	483
20347	Hopper	730
20348	Ophir	1462
20349	Ophir	1622
20350	Ophir	1040
20351	Ophir	811
20352	Fairview Beach	1982
20353	Mettawa	1326
20354	Big Sky	579
20355	Wanaque	792
20356	The Pinery	2815
20357	Rosenberg	1890
20358	Fairford	470
20359	Seville	410
20360	Seville	828
20361	Seville	308
20362	Seville	814
20363	Weatherford	931
20364	Weatherford	3062
20365	Kiester	2830
20366	Nevada City	1784
20367	Highbank	2597
20368	Friday Harbor	2930
20369	Duck Key	2348
20370	Peshastin	276
20371	Mohawk Vista	3011
20372	Anton Chico	1459
20373	Sundance	1019
20374	Leesport	362
20375	Stirling	2877
20376	AntÃ³n Ruiz	2170
20377	Numa	1621
20378	Summer Lake	1321
20379	Pavillion	968
20380	Orinda	3143
20381	Loeb	2389
20382	Moose Pass	1806
20383	Coker	1911
20384	Boys Town	2824
20385	Mauston	235
20386	Eckman	2379
20387	Eckman	1717
20388	Waynesburg	238
20389	Waynesburg	561
20390	Gurley	1862
20391	Gurley	1610
20392	Gurley	2048
20393	Wolsey	2934
20394	Dalworthington Gardens	3084
20395	Minerva Park	2141
20396	Chiloquin	759
20397	Cypert	1559
20398	Nunn	1101
20399	Lincoln City	1939
20400	Lincoln City	1184
20401	Euren	1566
20402	Nikolaevsk	1806
20403	Hester	2365
20404	West Grove	90
20405	West Grove	2874
20406	Tiff City	204
20407	Colerain	1681
20408	Houghton	1496
20409	Houghton	3217
20410	Houghton	2095
20411	Houghton	2065
20412	Bay Head	2627
20413	Modesto	1941
20414	Modesto	712
20415	River Pines	2253
20416	River Pines	95
20417	Colony Park	362
20418	North Babylon	940
20419	Modeste	1618
20420	Ascutney	2483
20421	Ladelle	359
20422	Grouse	3063
20423	Endeavor	1057
20424	Gratton	1776
20425	Waterbury	464
20426	Waterbury	2237
20427	Waterbury	2409
20428	Eucalyptus Hills	2381
20429	Grand Canyon	353
20430	Ives Estates	1705
20431	Frontier	3180
20432	Frontier	1186
20433	Frontier	304
20434	Flagstaff	353
20435	Santa Barbara	2107
20436	Santa Barbara	396
20437	Rising Sun	216
20438	Rising Sun	2778
20439	Rising Sun	652
20440	Arthur City	893
20441	Country Club Heights	2044
20442	Lake Charles	364
20443	Weatogue	1712
20444	Bonneau Beach	1723
20445	Hustler	235
20446	Leitchfield	3262
20447	Yuma	2112
20448	Yuma	2113
20449	Shaw Island	2930
20450	Summum	2712
20451	Altheimer	988
20452	New Bedford	1704
20453	New Bedford	540
20454	New Bedford	597
20455	Franklin	3154
20456	Franklin	259
20457	Franklin	1633
20458	Franklin	1497
20459	Franklin	3156
20460	Franklin	2312
20461	Franklin	302
20462	Franklin	750
20463	Franklin	973
20464	Franklin	1889
20465	Franklin	2144
20466	Franklin	598
20467	Franklin	2966
20468	Franklin	122
20469	Franklin	2618
20470	Franklin	904
20471	Franklin	2128
20472	Franklin	2688
20473	Franklin	1805
20474	Franklin	114
20475	Franklin	2095
20476	Franklin	222
20477	Franklin	2990
20478	Franklin	936
20479	Franklin	1264
20480	Franklin	1788
20481	Franklin	2490
20482	Franklin	2804
20483	Franklin	2663
20484	Franklin	1414
20485	Burleigh	1994
20486	Wattsville	3027
20487	Wattsville	917
20488	Cokesbury	3075
20489	Wishram	149
20490	Lawnton	1369
20491	Jobos	2413
20492	Woburn	95
20493	Stonewall	560
20494	Stonewall	2255
20495	Stonewall	1212
20496	Stonewall	1886
20497	Stonewall	1311
20498	Stonewall	205
20499	Stonewall	133
20500	Totowa	792
20501	Prairie du Sac	1344
20502	Hewlett Bay Park	101
20503	Delcambre	1178
20504	Connerville	1166
20505	Gough	927
20506	Strang	701
20507	Strang	1884
20508	Acton	332
20509	Acton	404
20510	Avra Valley	1247
20511	Fargo	824
20512	Fargo	2350
20513	Fargo	3180
20514	Fargo	1746
20515	Odell	2164
20516	Odell	387
20517	Odell	949
20518	Odell	3206
20519	Odell	596
20520	Sweet	1608
20521	Manistee	2162
20522	Evansdale	1901
20523	Alderton	1925
20524	Orchard Park	1510
20525	Remington	2075
20526	Remington	3224
20527	Remington	3041
20528	Okeelanta	3071
20529	Anton	97
20530	Anton	474
20531	Anton	3253
20532	Evelyn	1311
20533	Gasconade	2166
20534	Forest Hills	997
20535	Forest Hills	2632
20536	Forest Hills	2760
20537	Forest Hills	219
20538	Forest Hills	1807
20539	Glenwillow	708
20540	Mountain Lake Park	310
20541	Pinto	242
20542	Pine Mountain	146
20543	Sherrodsville	2229
20544	Hudsonville	2463
20545	Hudsonville	1733
20546	Lake Valley	2929
20547	Forked River	2627
20548	Glen Alpine	925
20549	Venice	2473
20550	Venice	2054
20551	Venice	2824
20552	Venice	1236
20553	Venice	483
20554	Venice	1048
20555	Kingston Springs	527
20556	Bennion	2637
20557	New Prague	3237
20558	Clyman	955
20559	Dingus	116
20560	Gloucester Point	2625
20561	Pinta	932
20562	Little Canada	654
20563	Tylertown	2254
20564	Eagle Point	1808
20565	Moreno	3210
20566	Lolo	3149
20567	Port Republic	2617
20568	Villa Pancho	1832
20569	Moores Hill	154
20570	Knights	868
20571	Maquon	584
20572	Manley	3181
20573	Mojave Ranch Estates	829
20574	Nursery	2800
20575	Kent City	219
20576	Woodcock	1417
20577	Loma	1720
20578	Loma	788
20579	Loma	3219
20580	Loma	2167
20581	Hickory Ridge	2482
20582	Lake Helen	814
20583	Wolf	1086
20584	Wolf	1225
20585	Ottusville	2132
20586	Myrtle Point	772
20587	East Riverdale	2064
20588	Longville	3179
20589	Longville	1727
20590	Fort Salonga	940
20591	Wah Keeney Park	992
20592	Suntrana	781
20593	Sutter Creek	2253
20594	Appomattox	2218
20595	Paterson	1646
20596	Paterson	792
20597	Riverview Farms	2381
20598	Patchogue	940
20599	Crescent Springs	2397
20600	Allen Park	2606
20601	Ruston	1925
20602	Ruston	1202
20603	Diablo	3143
20604	Diablo	1983
20605	Jaconita	1750
20606	Placid	1309
20607	Everton	412
20608	Everton	252
20609	Mortmar	3210
20610	Park Forest	761
20611	Lola	390
20612	Galax	2675
20613	Muskego	2426
20614	Lono	2689
20615	Nutt	281
20616	North Rim	353
20617	Lumber Bridge	2256
20618	Crest Hill	875
20619	Sabana	1996
20620	La Mesilla	2725
20621	Brownville	94
20622	Brownville	283
20623	Brownville	995
20624	New Burlington	2901
20625	Wildorado	1691
20626	Fulda	2195
20627	Piney Green	329
20628	Chrysler	2349
20629	Pinon	3161
20630	Tontitown	471
20631	El Paraiso	459
20632	Sheatown	2641
20633	Fords Prairie	2533
20634	South West City	204
20635	San Gregorio	1423
20636	Sauquoit	3238
20637	Gascon	3190
20638	Wartrace	2953
20639	Bradenville	2385
20640	Clatonia	3206
20641	Wattenberg	1101
20642	Sandow	2176
20643	Bourneville	1257
20644	Lyndhurst	1261
20645	Lyndhurst	708
20646	Aqua Park	1140
20647	Fort Dodge	233
20648	Fort Dodge	2590
20649	Erick	3269
20650	Diamond Springs	1594
20651	Dodsonville	2924
20652	Harrold	2164
20653	Harrold	3052
20654	Gerster	919
20655	Big Sur	2955
20656	Glen Ellyn	950
20657	Las Lomitas	3189
20658	Clymer	2147
20659	Wanda	1250
20660	WaiÊ»Åhinu	1488
20661	Light Oak	857
20662	Long	1462
20663	Long	1140
20664	Wando	1723
20665	Gould	2881
20666	Gould	1194
20667	Soldier Summit	1792
20668	Liberty Corner	129
20669	Kenton Vale	2397
20670	Saint Hilaire	908
20671	Arbor Hill	1384
20672	Crystal	91
20673	Crystal	2418
20674	Crystal	2657
20675	Crystal	711
20676	Crystal	2929
20677	White Marsh	1498
20678	Timber Lakes	1792
20679	Aeneas	1874
20680	Hoonah	207
20681	Gering	1016
20682	Pecatonica	2691
20683	Christmas	3141
20684	Christmas	2920
20685	Wolf Trap	2405
20686	Clara	2609
20687	Ridott	959
20688	Rimini	1355
20689	Kress	423
20690	Placer	2203
20691	Clare	1032
20692	Clare	2590
20693	Clare	2294
20694	Clare	1272
20695	Mooresville	422
20696	Mooresville	2789
20697	Mooresville	111
20698	Mooresville	388
20699	Cold Spring Harbor	940
20700	Eridu	1064
20701	Westfield	1935
20702	Westfield	2319
20703	Westfield	2071
20704	Westfield	1057
20705	Westfield	972
20706	Westfield	3112
20707	Westfield	2151
20708	Westfield	145
20709	Westfield	542
20710	Westfield	502
20711	Pollocksville	3017
20712	Maple Lake	2291
20713	Breckenridge	1724
20714	Breckenridge	2847
20715	Breckenridge	627
20716	Breckenridge	2854
20717	Breckenridge	720
20718	Richfield Springs	778
20719	Port O'Brien	3101
20720	Barron	2315
20721	Queen Valley	1914
20722	Clark	2010
20723	Clark	1747
20724	Clark	132
20725	Clark	2681
20726	Clark	2322
20727	Argenta	3158
20728	Iron Station	1183
20729	Gold Key Lake	1177
20730	Braswell	2957
20731	Ravanna	2005
20732	Holmes Beach	2834
20733	King Hill	809
20734	Leshara	3236
20735	Stormstown	393
20736	Conception Junction	2810
20737	Cormorant	2458
20738	Greenlawn	940
20739	Loop	2993
20740	Colver	3032
20741	Wood	791
20742	Wolford	1924
20743	Bushong	141
20744	Midland City	674
20745	Midland City	552
20746	Midland City	2920
20747	Northgate	2075
20748	Northgate	926
20749	West Wildwood	1994
20750	North Webster	718
20751	Mountain House	590
20752	Blackhorse	2959
20753	Crystal Lakes	63
20754	Crystal Lakes	2323
20755	Boca Raton	3071
20756	Fort Lawn	89
20757	Belvedere	1515
20758	Belvedere	1874
20759	Belvedere	646
20760	Summers	471
20761	Saint Onge	536
20762	Owendale	342
20763	Lake Mykee Town	2551
20764	Los Alamitos	3140
20765	Wetumka	3053
20766	Flintstone	1497
20767	Manorville	940
20768	Manorville	775
20769	Celebration	2157
20770	Ten Broeck	997
20771	Pipestone	2373
20772	Harveyville	888
20773	North Wildwood	1994
20774	Big Island	2952
20775	Ridgeview	200
20776	Ridgeview	246
20777	Goodnight	774
20778	Goodnight	2542
20779	West Sayville	940
20780	Richvale	766
20781	Detonti	104
20782	Lake Linden	2065
20783	Ballico	1985
20784	Dwight	387
20785	Dwight	788
20786	Dwight	1673
20787	Dwight	2879
20788	Clarksville City	2371
20789	Mount Calvary	2090
20790	Aucilla	999
20791	Clifford	1553
20792	Clifford	3188
20793	Clifford	3056
20794	Lord	285
20795	Mosher	791
20796	Mount Pulaski	2181
20797	Ê»Ewa Gentry	1878
20798	Calvert Beach	2983
20799	Clarks Hill	596
20800	Clarks Hill	1456
20801	Central Heights	2920
20802	Osawatomie	669
20803	Cresskill	1572
20804	Aguadilla	2414
20805	Vancouver	2326
20806	Acomita	1769
20807	Lott	2597
20808	Belwood	857
20809	Tierra Amarilla	2725
20810	Magasco	1033
20811	Payne Springs	2652
20812	Landis	863
20813	Landis	576
20814	RodrÃ­guez Hevia	1066
20815	Platte City	1851
20816	Cliffwood	278
20817	San Cristobal	1930
20818	Spiritwood	2645
20819	Monmouth Junction	94
20820	South Otselic	650
20821	Williamsburg	1592
20822	Williamsburg	1305
20823	Williamsburg	1241
20824	Williamsburg	969
20825	Williamsburg	170
20826	Williamsburg	804
20827	Williamsburg	3081
20828	Williamsburg	3141
20829	Williamsburg	2576
20830	Williamsburg	2133
20831	Williamsburg	671
20832	Musicks Ferry	3196
20833	Baskerville	2178
20834	Grand Prairie	525
20835	Bon Secour	1988
20836	Cudjoe Key	2348
20837	Lauderdale Lakes	2729
20838	Pulcifer	2827
20839	Welshfield	1899
20840	Braggadocio	2383
20841	Fish Creek	1708
20842	Belle Fourche	764
20843	Arlington Heights	99
20844	Arlington Heights	761
20845	Arlington Heights	2075
20846	Arlington Heights	2351
20847	County Line	2420
20848	Sacred Heart	222
20849	Bank Lick	2397
20850	Fort Clark	2342
20851	Slemp	1844
20852	Moran	1391
20853	Moran	1701
20854	Moran	442
20855	Moran	1789
20856	Ambridge Heights	1883
20857	Campbellsville	1062
20858	Campbellsville	1365
20859	Pikeview	3228
20860	Darbun	2254
20861	Enumclaw	3217
20862	Tamiami	1705
20863	El Tumbao Comunidad	1252
20864	Titicus	408
20865	Calzada Comunidad	459
20866	Strawn	1719
20867	Strawn	387
20868	Pitman	2626
20869	Roma-Los Saenz	166
20870	South Greeley	264
20871	Barclay	2701
20872	Barclay	1156
20873	Steilacoom	1925
20874	Tekoa	1464
20875	Winnemucca	320
20876	Lily Cache	875
20877	Temvik	972
20878	New Tripoli	1372
20879	RÃ­o Grande Zona Urbana	1676
20880	Smiley Park	721
20881	Romero	3263
20882	Sandia	2803
20883	Ehrhardt	2890
20884	Robert	169
20885	Castle Hills	1083
20886	Mission	1353
20887	Mission	2648
20888	Mission	1272
20889	Mission	1544
20890	Philmont	1073
20891	Thibodaux	1574
20892	Colesville	740
20893	Colesville	1889
20894	Lemannville	1618
20895	Mobile City	2985
20896	Fort Montgomery	3137
20897	Hillsville	2231
20898	Chatanika	209
20899	Guntersville	2472
20900	Reed City	2159
20901	West Hamlin	1197
20902	Seth Ward	1012
20903	Herod	2643
20904	Herod	913
20905	Pinesburg	492
20906	Hornsby Bend	3050
20907	Shenorock	1919
20908	Hoadly	321
20909	Scio	1496
20910	Scio	943
20911	Scio	622
20912	Heron	75
20913	Fern Crest Village	2729
20914	Shabbona	1755
20915	Quealy	3093
20916	Coal Valley	1363
20917	Hooks	826
20918	Wheatley Heights	940
20919	Castleton-on-Hudson	2828
20920	Carterville	123
20921	Carterville	3044
20922	Villas	1994
20923	Villas	2101
20924	Mayetta	1815
20925	Pomona Heights	2960
20926	Ivesdale	519
20927	Dunnell	2211
20928	HÅlualoa	1488
20929	Loyd	1674
20930	Vivian	306
20931	Vivian	2379
20932	Vivian	1143
20933	Berrydale	3217
20934	Berrydale	758
20935	Bingham Farms	2663
20936	Aliso Viejo	3140
20937	White Bead	1879
20938	State Line	2303
20939	State Line	2135
20940	State Line	563
20941	Birdsong	938
20942	Sumner	533
20943	Sumner	1925
20944	Sumner	3230
20945	Sumner	893
20946	Sumner	2999
20947	Sumner	1836
20948	Sumner	3147
20949	Sumner	1873
20950	Sumner	350
20951	Canutillo	3227
20952	Dash Point	1925
20953	Colvos	3217
20954	Whiteflat	2629
20955	Springs	940
20956	Brentwood Lake	845
20957	Clearbrook Park	94
20958	Lake Los Angeles	404
20959	Valinda	404
20960	East Grand Rapids	219
20961	Moravia	2023
20962	Moravia	1621
20963	Larksville	2641
20964	Flowood	2370
20965	Pebble Creek	868
20966	Loxa	2943
20967	Bexley	2141
20968	Benoit	3109
20969	Benoit	376
20970	Benoit	1565
20971	Ninilchik	1806
20972	Elk Plain	1925
20973	Neahkahnie	2093
20974	New Richland	2972
20975	Igiugig	2011
20976	Walden	1824
20977	Walden	3137
20978	Walden	2073
20979	Stonybrook	853
20980	Walker Lake	977
20981	Lakebay	1925
20982	Cedar Key	1455
20983	Huntingdon	2221
20984	Huntingdon	2550
20985	Rock Falls	1718
20986	Rock Falls	1596
20987	Burdick	2879
20988	Briaroaks	1266
20989	Pompano Park	2729
20990	Salton Sea Beach	153
20991	Grisdale	2499
20992	Dyer	1415
20993	Dyer	1323
20994	Dyer	3194
20995	Dyer	3116
20996	Sugarloaf Village	308
20997	North Baltimore	2338
20998	Trinity Center	317
20999	Nisqually	2190
21000	Fair Grove	565
21001	Interior	1813
21002	Bliss	1028
21003	Bliss	1490
21004	Judsonia	1905
21005	Tofte	762
21006	South Oroville	766
21007	Beckemeyer	2898
21008	Fields Landing	319
21009	Madison Mills	2571
21010	Ronneby	1644
21011	Crestview Hills	2397
21012	Bowmont	2039
21013	Golden Triangle	2977
21014	Hannaford	2020
21015	Houtzdale	1300
21016	Laurel Lake	82
21017	Seneca Gardens	997
21018	Oak Springs	932
21019	New Cuyama	2107
21020	Babbie	2575
21021	Bryant	104
21022	Bryant	414
21023	Bryant	99
21024	Bryant	2639
21025	Bryant	2712
21026	Bryant	901
21027	Marcellus	1294
21028	Marcellus	3182
21029	Marcellus	2979
21030	Tofty	1462
21031	Grand Beach	1767
21032	Viborg	2535
21033	Ernstville	492
21034	Sam Rayburn	3042
21035	High Falls	1952
21036	Petrolia	1539
21037	Petrolia	789
21038	Petrolia	319
21039	Petrolia	442
21040	Henefer	1726
21041	Arrington	272
21042	Arrington	3259
21043	Annona	2235
21044	Walum	2020
21045	Separ	1128
21046	Hollywood	2580
21047	Hollywood	404
21048	Hollywood	2729
21049	Hollywood	2884
21050	Hollywood	905
21051	Hollywood	2658
21052	Hollywood	1817
21053	Hollywood	1546
21054	Hollywood	1199
21055	Topawa	1247
21056	Verhalen	1781
21057	McCartys	1769
21058	Astor Park	1331
21059	Val Verde Park	594
21060	Waltz	2606
21061	Plantation Island	832
21062	Quincy	1125
21063	Quincy	1044
21064	Quincy	2355
21065	Quincy	3011
21066	Quincy	2184
21067	Quincy	2441
21068	Quincy	1291
21069	Quincy	1567
21070	Quincy	1051
21071	Quincy	2618
21072	Quincy	3076
21073	Hormigueros Zona Urbana	1251
21074	North Merrick	101
21075	Whitestown	248
21076	Carrolls	198
21077	Zavalla	1859
21078	Viking	2470
21079	Viking	1577
21080	Baird	1088
21081	Baird	816
21082	Bayou Goula	2694
21083	Midville	927
21084	South Mound	603
21085	Pukwana	1389
21086	Motley	164
21087	Motley	456
21088	Big Springs	353
21089	Big Springs	970
21090	Big Springs	1800
21091	Big Springs	2821
21092	Wetumpka	808
21093	Fair Hill	652
21094	Quinby	3027
21095	Quinby	1588
21096	Cape Coral	2101
21097	Sullivan City	1353
21098	Effie	1975
21099	Effie	2777
21100	Round Rock	121
21101	Round Rock	932
21102	Knightsen	3143
21103	Walsh	1893
21104	Bucks	1301
21105	Chassahowitzka	799
21106	Ingleside	3214
21107	Ingleside	2701
21108	Ingleside	2003
21109	Lake Junaluska	2556
21110	Nemah	1306
21111	Moccasin	2145
21112	Moccasin	829
21113	Moccasin	2798
21114	Yarmouth Port	1162
21115	Yorkana	853
21116	Chalmers	1904
21117	Rosen	1916
21118	Hewlett	1768
21119	Hewlett	101
21120	Croswell	445
21121	Rodman	89
21122	Rodman	3202
21123	Rodman	995
21124	Wadesboro	1383
21125	Scott Depot	2750
21126	Flint Creek	2808
21127	Nags Head	842
21128	Dix Hills	940
21129	Watersmeet	1772
21130	Lexington Heights	445
21131	Gruene	611
21132	Sandy Ridge	393
21133	Sandy Ridge	347
21134	Mesic	2255
21135	Bowmore	1895
21136	Jumpertown	2517
21137	Arrow Creek	2145
21138	Floweree	3219
21139	Steptoe	1464
21140	Steptoe	1401
21141	Monte Vista	2480
21142	Hornell	2887
21143	Enigma	1766
21144	Index	99
21145	Perrysburg	1370
21146	Perrysburg	2338
21147	Oakland	2568
21148	Oakland	1556
21149	Oakland	2305
21150	Oakland	2814
21151	Oakland	2943
21152	Oakland	1635
21153	Oakland	883
21154	Oakland	310
21155	Oakland	515
21156	Oakland	1572
21157	Oakland	1500
21158	Oakland	1390
21159	Oakland	1713
21160	Oakland	3196
21161	Oakland	3141
21162	Oakland	3015
21163	Oakland	684
21164	Oakland	3016
21165	Oakland	2467
21166	Mill Grove	2005
21167	Jenkinsville	407
21168	Ivanpah	721
21169	Federalsburg	2894
21170	Lawtell	2967
21171	Pleasant Grove	1498
21172	Pleasant Grove	338
21173	Pleasant Grove	987
21174	Pleasant Grove	1482
21175	Pleasant Grove	705
21176	Pleasant Grove	2627
21177	Pleasant Grove	2821
21178	Chadwicks	3238
21179	Desoto Lakes	1236
21180	Placentia	3140
21181	South Coventry	1317
21182	Cammal	1770
21183	Weldon Spring	1082
21184	Redrock	1128
21185	Panama City Beach	902
21186	Shanksville	131
21187	Randolph	134
21188	Randolph	1914
21189	Randolph	2864
21190	Randolph	1500
21191	Randolph	65
21192	Randolph	2746
21193	Randolph	211
21194	Randolph	1078
21195	Randolph	1582
21196	Randolph	1370
21197	Randolph	967
21198	Randolph	1541
21199	Randolph	630
21200	Randolph	2618
21201	Randolph	3136
21202	Jacksonville	329
21203	Jacksonville	429
21204	Jacksonville	3097
21205	Jacksonville	1498
21206	Jacksonville	375
21207	Jacksonville	2147
21208	Jacksonville	741
21209	Jacksonville	2681
21210	Jacksonville	114
21211	Jacksonville	1808
21212	Jacksonville	1599
21213	Jacksonville	1283
21214	Jacksonville	1677
21215	Jacksonville	187
21216	Jacksonville	2841
21217	Aurora Lodge	209
21218	Darnestown	740
21219	Desdemona	1463
21220	Warrens Corners	2910
21221	La Clede	2569
21222	Gypsy	615
21223	Drexel Heights	1247
21224	Ketchum	352
21225	Ketchum	1405
21226	Arkoma	2263
21227	Bishop Hills	714
21228	Butlerville	2312
21229	Butlerville	1585
21230	Butlerville	2622
21231	Ponderay	623
21232	South Huntington	940
21233	Midway City	3140
21234	Beaver City	2287
21235	Deltaville	93
21236	Lilesville	1383
21237	Sweetser	1118
21238	Wyomissing	362
21239	Joslin	1363
21240	Spotted Horse	177
21241	Girardville	2826
21242	Eufaula	1042
21243	Eufaula	288
21244	Cache	2512
21245	Wakeman	341
21246	Lander	968
21247	Swift Falls	1956
21248	Cranston	864
21249	Cranston	929
21250	Mount Charleston	2329
21251	Port Chester	1919
21252	Ranchos Penitas West	817
21253	Bon Air	1407
21254	Bon Air	1615
21255	Bon Air	1906
21256	Hornersville	1546
21257	Rillton	2385
21258	Seven Fields	789
21259	Dorris	337
21260	Sequndo	205
21261	Landen	2312
21262	Keating	1471
21263	Thousand Oaks	3221
21264	Loudon	2734
21265	Loudon	598
21266	New Carrollton	2064
21267	Duck Hill	733
21268	Borup	529
21269	Pike Creek	2563
21270	Lu Verne	1598
21271	Colon	3236
21272	Colon	3103
21273	Colon	2094
21274	Curtisville	2632
21275	North La Junta	345
21276	McKee	1812
21277	Bains	1685
21278	Whiteriver	3161
21279	Reidville	3162
21280	Robinson	1479
21281	Robinson	2147
21282	Robinson	1410
21283	Robinson	621
21284	Robinson	2805
21285	Robinson	638
21286	Robinson	702
21287	Mercerville	2009
21288	Waelder	1164
21289	Honesdale	2605
21290	Valley Ranch	3011
21291	Essex Junction	2801
21292	Tiger Point	758
21293	Santa Anna	897
21294	Brinkley	2350
21295	Kenansville	3126
21296	Kenansville	2157
21297	Sherrelwood	1290
21298	Marinwood	1515
21299	Woodway	99
21300	Woodway	702
21301	Norshor Junction	1329
21302	Maximo	238
21303	Royalton	2139
21304	Royalton	164
21305	Royalton	406
21306	Royalton	1369
21307	Doraville	1751
21308	Jeddo	2641
21309	Sabana Eneas Comunidad	3129
21310	Sangrey	453
21311	Itasca	950
21312	Itasca	452
21313	Rock Rapids	139
21314	Stevinson	1985
21315	Park Layne	2323
21316	Salduro	1622
21317	Pueblitos	3272
21318	Lake Luzerne	2302
21319	Haslet	3084
21320	Ridgeville Corners	1112
21321	Grotto	3217
21322	Lakewood Club	1485
21323	Borth	1210
21324	Lake Lillian	2457
21325	Colma	1423
21326	Lexington Hills	2198
21327	Coteau Holmes	1623
21328	Dot Lake Village	1561
21329	Simi Valley	3221
21330	Dozier	2489
21331	Mescal	3232
21332	Oroville	766
21333	Oroville	1874
21334	Indio	3210
21335	Redwood Terrace	1423
21336	Sandpoint	623
21337	Dawson Springs	3253
21338	Stinnett	1758
21339	Miami Gardens	1705
21340	Jacksons Gap	2933
21341	Andrix	205
21342	Morrison Crossroad	2683
21343	Potomac Heights	335
21344	Germano	622
21345	Watsonville	1362
21346	Victoria	679
21347	Victoria	938
21348	Victoria	584
21349	Victoria	825
21350	Victoria	1354
21351	Victoria	2800
21352	Victoria	1037
21353	Crackerville	395
21354	Penryn	1139
21355	Penryn	2289
21356	Woodridge	950
21357	Woodridge	1946
21358	Mount Ephraim	2977
21359	India	823
21360	Saint Louis Park	91
21361	Manokotak	2019
21362	Axtell	1035
21363	Axtell	1697
21364	Axtell	2471
21365	Axtell	702
21366	Clontarf	1956
21367	Bigbee	2355
21368	Immokalee	832
21369	Thomasville	1214
21370	Thomasville	2759
21371	Thomasville	3029
21372	Thomasville	1690
21373	Gibbon	3034
21374	Gibbon	2687
21375	Gibbon	1544
21376	Swanville	164
21377	Rich Valley	2864
21378	Bithlo	3141
21379	Lookout Mountain	1351
21380	Lookout Mountain	2073
21381	Perintown	1241
21382	Tarpon Springs	2785
21383	Cruso	2556
21384	Riesel	702
21385	Joffre	1459
21386	Joffre	483
21387	Cacao	591
21388	Powhattan	638
21389	Greenbrier	751
21390	Greenbrier	333
21391	Kirwin	1558
21392	Margaret	1858
21393	Margaret	917
21394	Linwood	2809
21395	Linwood	1351
21396	Linwood	2044
21397	Linwood	1699
21398	Linwood	2617
21399	Linwood	1175
21400	Linwood	788
21401	Linwood	386
21402	Alamo Oaks	3143
21403	Redwood City	1423
21404	Niland	153
21405	New Baltimore	2075
21406	New Baltimore	1481
21407	New Baltimore	131
21408	New Baltimore	3224
21409	Manifold	483
21410	Chetopa	1954
21411	Vanderpool	2917
21412	Contoocook	598
21413	Trementina	1039
21414	Bawcomville	243
21415	Unionville	393
21416	Unionville	1621
21417	Unionville	1104
21418	Unionville	1486
21419	Unionville	3137
21420	Unionville	1160
21421	Unionville	494
21422	Unionville	2953
21423	Unionville	3142
21424	Unionville	2755
21425	Unionville	1427
21426	Unionville	2841
21427	Unionville	2206
21428	Apex	1399
21429	Lake Tomahawk	3239
21430	Battleboro	1098
21431	Loyalton	171
21432	Loyalton	835
21433	San Antonio	228
21434	San Antonio	2656
21435	San Antonio	1915
21436	San Antonio	1083
21437	San Antonio	1461
21438	Maeser	1443
21439	Paragould	560
21440	Menomonee Falls	2426
21441	Bolindale	2946
21442	Port Gamble	1048
21443	Palestine	2636
21444	Palestine	1410
21445	Palestine	1395
21446	Palestine	2980
21447	Bellport	940
21448	South Fontana	721
21449	Carbonville	3037
21450	Marble Cliff	2141
21451	Rafter J Ranch	1391
21452	Cherokee Strip	263
21453	Poulan	1836
21454	Wetherington	785
21455	Selman City	2501
21456	Magee	1787
21457	Waterman	1755
21458	Bernardo	228
21459	Dakota	2423
21460	Dakota	959
21461	Dakota	2536
21462	Frank	1243
21463	Natwick	1849
21464	Chelyan	1467
21465	Chipley	482
21466	Sweet Briar Station	1945
21467	Brookneal	176
21468	Alberta	658
21469	Alberta	2396
21470	Alberta	409
21471	Lancing	112
21472	East Camden	244
21473	Hiltonia	424
21474	Westoak	394
21475	Buenaventura Lakes	2157
21476	Brices Creek	135
21477	Blue Mountain Beach	1547
21478	Oakland Heights	609
21479	Davilla	2176
21480	Hospers	2926
21481	Boron	263
21482	Petersburg	251
21483	Petersburg	2550
21484	Petersburg	1187
21485	Petersburg	403
21486	Petersburg	1337
21487	Petersburg	1814
21488	Petersburg	1127
21489	Petersburg	2352
21490	Petersburg	2877
21491	Petersburg	1012
21492	Petersburg	1169
21493	Petersburg	253
21494	Petersburg	2839
21495	Petersburg	2443
21496	Petersburg	2828
21497	Petersburg	273
21498	Thornwood	1919
21499	Fort Madison	2095
21500	Strawberry	539
21501	Strawberry	2798
21502	Strawberry	2920
21503	Brevort	1701
21504	Lake Ann	180
21505	Saint Clair	2473
21506	Saint Clair	1444
21507	Saint Clair	920
21508	Saint Clair	927
21509	Saint Clair	2826
21510	Saint Clair	2130
21511	Pittsburgh	2632
21512	Scandia	480
21513	Scandia	1048
21514	Scandia	1871
21515	Saint Louis	2032
21516	Saint Louis	3197
21517	Saint Louis	720
21518	Mount Eaton	2612
21519	Rancho Alegre	2803
21520	Saint Elizabeth	2705
21521	Ham Lake	1260
21522	Elbow Lake	1122
21523	Evesboro	2841
21524	Steuben	1416
21525	Steuben	1376
21526	Muleshoe	2510
21527	Lazy Acres	2267
21528	Key Largo	2348
21529	Bamberg	2890
21530	Middleport	1449
21531	Middleport	2826
21532	Middleport	2910
21533	Ladera Ranch	3140
21534	Lewisburg	504
21535	Lewisburg	241
21536	Lewisburg	2183
21537	Lewisburg	2836
21538	Lewisburg	2465
21539	Lewisburg	2905
21540	Alamosa	2892
21541	Lake Orion	2663
21542	Groton	2765
21543	Groton	2614
21544	Groton	1593
21545	Groton	95
21546	Groton	635
21547	College Heights	721
21548	College Heights	359
21549	Lakewood Shores	875
21550	Laclede	946
21551	Laclede	2033
21552	Niceville	2038
21553	Royston	961
21554	Royston	1239
21555	Jeromesville	383
21556	South Greenfield	412
21557	Ward Springs	2649
21558	Browntown	94
21559	Browntown	2368
21560	Browntown	2641
21561	Pilot Rock	1544
21562	Thermal	3210
21563	Hope Valley	478
21564	Severy	3076
21565	Bandera	2917
21566	Beaver Creek	838
21567	Beaver Creek	492
21568	Beaver Creek	3223
21569	Beaver Creek	453
21570	Loup City	2082
21571	Wanamassa	278
21572	McConnico	829
21573	Grasonville	2701
21574	Le Sourdsville	785
21575	Greenbackville	3027
21576	Coconut	2101
21577	Onamia	2200
21578	Stillmore	301
21579	Socastee	3220
21580	Game Creek	207
21581	Perezville	1353
21582	H. Rivera Colon	841
21583	Carleton	3009
21584	Carleton	1404
21585	Carleton	2352
21586	Greenbriar	2405
21587	Brookston	893
21588	Brookston	3195
21589	Brookston	1904
21590	Warrenville	950
21591	Warrenville	646
21592	Milleville Beach	2606
21593	Spring Mills	393
21594	Willow Oak	2545
21595	Hawk Cove	3215
21596	De Leon Springs	814
21597	Tallapoosa	2577
21598	Tallapoosa	1857
21599	Grigston	2247
21600	Winterpock	1615
21601	Colgate	84
21602	Colgate	2426
21603	Falls View	2564
21604	Almonte	1515
21605	Fire Island	940
21606	Shawnee	2032
21607	Shawnee	3170
21608	Shawnee	1743
21609	Shawnee	1845
21610	Shawnee	1272
21611	Shawnee	2910
21612	Urbanna	93
21613	Coggon	944
21614	Bergholz	1006
21615	Coles	3132
21616	Graysville	1977
21617	Graysville	987
21618	Graysville	1947
21619	Graysville	2358
21620	Graysville	1087
21621	Alluwe	3203
21622	White City	2637
21623	White City	1808
21624	White City	712
21625	White City	2879
21626	White City	2401
21627	Toms River	2627
21628	San Elizario	3227
21629	Dennehotso	932
21630	Williford	1549
21631	Williford	2372
21632	Forestville	2075
21633	Forestville	445
21634	Forestville	2826
21635	Forestville	1708
21636	Forestville	2064
21637	Forestville	3112
21638	Forestville	1790
21639	Severn	312
21640	Severn	2440
21641	Roseville Park	2563
21642	Mesa del Caballo	2920
21643	River Rouge	2606
21644	Steinauer	1255
21645	Carrollton Manor	2440
21646	Alpaugh	308
21647	Pine Grove Mills	393
21648	North Olmsted	708
21649	Paulding	3040
21650	Paulding	2956
21651	Pierceville	1086
21652	Ainsworth	640
21653	Ainsworth	484
21654	Ainsworth	1323
21655	Grouse Creek	1421
21656	Grand Marais	2767
21657	Grand Marais	762
21658	Euless	3084
21659	Gaylord	3034
21660	Gaylord	779
21661	Gaylord	1602
21662	Crump	2390
21663	Port Jervis	3137
21664	Virgilina	796
21665	Onaga	2033
21666	Anahuac	1343
21667	Raines	548
21668	Bodfish	263
21669	Minnesota City	2423
21670	Leming	1017
21671	Kitzmiller	310
21672	Herron	453
21673	Rileyville	1516
21674	Sparksville	1809
21675	Brinklow	740
21676	Dutton	1817
21677	Dutton	1393
21678	Laconia	618
21679	Laconia	305
21680	McCarthy	3172
21681	Bloomburg	3176
21682	Belle Glade	3071
21683	Altmar	1262
21684	Beaumont Place	145
21685	San Ardo	2955
21686	Soperton	2251
21687	Bedrock	2662
21688	De Beque	2167
21689	Agoura Hills	404
21690	Esperanza Comunidad	1518
21691	Triadelphia	2779
21692	Margate	2729
21693	South Punta Gorda Heights	1506
21694	Pointe Ã  la Hache	2473
21695	Namekagon	3109
21696	Natchitoches	2991
21697	Newellton	865
21698	Indian Mound	1099
21699	Strandell	1983
21700	Dawson	522
21701	Dawson	913
21702	Dawson	1916
21703	Dawson	1479
21704	Dawson	1497
21705	Dawson	2574
21706	Dawson	881
21707	Dawson	695
21708	Dawson	2442
21709	Dawson	2292
21710	Lake Pine	2841
21711	Roberta	1413
21712	Calion	501
21713	West Reading	362
21714	Yocemento	825
21715	Churchill	2632
21716	Churchill	2946
21717	Churchill	579
21718	Wanderoos	2547
21719	Homer City	2147
21720	Ceiba Zona Urbana	1308
21721	Magna	2637
21722	Alamota	1447
21723	Colby	2327
21724	Colby	3030
21725	Foresthill	2289
21726	Highland Center	2174
21727	Pikesville	1498
21728	Tabler	2493
21729	Rosharon	1984
21730	Oyster Creek	1984
21731	Stanaford	1634
21732	Homosassa	799
21733	Wrenshall	780
21734	Valrico	868
21735	Green Bank	1243
21736	Oradell	1572
21737	Windy Hills	997
21738	Sombrillo	1750
21739	Plain City	1433
21740	Plain City	2057
21741	Holliday	2357
21742	Holliday	3095
21743	Bodega Bay	1790
21744	Magma	1914
21745	Banks Springs	2851
21746	Webberville	3050
21747	Webberville	287
21748	Bagwell	2235
21749	Lajitas	1617
21750	Canova	449
21751	Canova	2725
21752	Springfield	2786
21753	Springfield	1743
21754	Springfield	2323
21755	Springfield	751
21756	Springfield	1910
21757	Springfield	2483
21758	Springfield	542
21759	Springfield	565
21760	Springfield	479
21761	Springfield	1893
21762	Springfield	385
21763	Springfield	1286
21764	Springfield	1446
21765	Springfield	2405
21766	Springfield	1014
21767	Springfield	695
21768	Springfield	672
21769	Springfield	902
21770	Springfield	2921
21771	Springfield	637
21772	Springfield	1094
21773	Springfield	1573
21774	Heavener	2263
21775	Sanderson	912
21776	Sanderson	1470
21777	Gotha	3141
21778	West Valley	1370
21779	West Valley	3268
21780	Reddell	62
21781	Briggsville	1057
21782	Briggsville	2869
21783	Redgranite	1210
21784	Lowes	1071
21785	Clarklake	1819
21786	Juniper	693
21787	Seibert	2197
21788	Zaleski	848
21789	Mikkalo	942
21790	Pink Hill	1070
21791	Gibbsboro	2977
21792	Ê»Ewa Villages	1878
21793	South Philipsburg	393
21794	Caruthersville	2383
21795	Glenbrook	2825
21796	PuakÅ	1488
21797	Daphnedale Park	1771
21798	Oreana	1104
21799	Oreana	3158
21800	Oreana	982
21801	Saybrook Manor	96
21802	Terre Haute	3110
21803	Millhousen	2487
21804	Delafield	2074
21805	Delafield	2426
21806	Freeville	2614
21807	Cannon Town	2038
21808	Somis	3221
21809	Haring	1487
21810	Hibbing	3195
21811	Grayling	1462
21812	Grayling	579
21813	Grayling	1418
21814	Sellersburg	2318
21815	Vineyard Haven	3271
21816	Saint Pauls	2256
21817	Herrin	123
21818	Indus	296
21819	Stansbury park	1622
21820	Willow Island	2999
21821	Clifton	3162
21822	Clifton	2323
21823	Clifton	488
21824	Clifton	481
21825	Clifton	2167
21826	Clifton	973
21827	Clifton	1955
21828	Clifton	404
21829	Clifton	2144
21830	Clifton	2405
21831	Clifton	2601
21832	Clifton	340
21833	Clifton	792
21834	Bow Mar	2362
21835	Windermere	3141
21836	Downers Grove	950
21837	West Portsmouth	3256
21838	Fish Haven	1632
21839	Jefferson Valley	1919
21840	Pigeon	342
21841	Fenton	3196
21842	Fenton	2258
21843	Fenton	1598
21844	Fenton	3069
21845	Fenton	1718
21846	Schererville	1323
21847	Kendrick	1360
21848	Kendrick	1188
21849	Kendrick	3205
21850	Kendrick	682
21851	Almyra	2623
21852	Aloha	465
21853	Weissert	3064
21854	Dobbin	734
21855	Bainville	1679
21856	Branchport	1575
21857	Madisonburg	393
21858	Madisonburg	2612
21859	South Dos Palos	1985
21860	Knightstown	1107
21861	Van Horne	1639
21862	Gold Canyon	1914
21863	Nondalton	2011
21864	Lyndora	789
21865	Yarnell	2495
21866	Honda	2107
21867	Wamac	2898
21868	Ty Ty	1427
21869	Hondo	1199
21870	Hondo	827
21871	Brewster Hill	2751
21872	Chautauqua	3112
21873	Chautauqua	3113
21874	Milbank	1121
21875	Leipsic	216
21876	Leipsic	2756
21877	Brickerville	1139
21878	Rough and Ready	1784
21879	Proctor	3195
21880	Proctor	1322
21881	Proctor	2180
21882	Proctor	3225
21883	Proctor	2511
21884	Proctor	1385
21885	Hepler	1414
21886	Quebec	2160
21887	Tierra Bonita	1832
21888	Byromville	454
21889	Ledoux	2967
21890	Grand View-on-Hudson	2960
21891	Imlaystown	278
21892	Jacksonville Beach	1599
21893	Mattituck	940
21894	Cottonwood	2637
21895	Cottonwood	1813
21896	Cottonwood	578
21897	Cottonwood	140
21898	Cottonwood	2883
21899	Cottonwood	150
21900	Cottonwood	2117
21901	Cottonwood	2361
21902	Cottonwood	2495
21903	Cottonwood	1458
21904	Sea Isle City	1994
21905	Middleberg	2493
21906	Tylersville	2902
21907	Tylersville	785
21908	Allouez	639
21909	Blossom	893
21910	Bald Eagle	654
21911	Bethesda	138
21912	Bethesda	1688
21913	Bethesda	740
21914	Bethesda	2426
21915	Bethesda	1591
21916	Hagewood	2991
21917	Gaffney	434
21918	Slaughter Beach	1887
21919	Osage Beach	2978
21920	Airmont	2960
21921	Shiner	978
21922	Vinson	2881
21923	Hillside	761
21924	Hillside	969
21925	Hillside	1952
21926	Hillside	2495
21927	Stonefort	123
21928	Powelton	1973
21929	West Mineral	432
21930	Lockett	2164
21931	Waxhaw	494
21932	Katie	1879
21933	Fort Thomas	2013
21934	Fort Thomas	179
21935	Wesleyville	1512
21936	Tightwad	1110
21937	Port Hope	342
21938	Wallingford	2588
21939	Wallingford	2518
21940	Sontag	530
21941	Vonore	2346
21942	Ocean Gate	2627
21943	Geraldine	1752
21944	Geraldine	3219
21945	Mesquite	1242
21946	Mesquite	525
21947	Mesquite	2329
21948	Glen Ellen	1790
21949	Hitchita	1042
21950	Wiconisco	1369
21951	Locust Fork	2420
21952	Firthcliffe	3137
21953	Proberta	3186
21954	Mortonsville	2000
21955	Lluveras	2406
21956	Bennet	1138
21957	Fritz Creek	1806
21958	Hardeeville	3046
21959	Watkins	1290
21960	Watkins	1639
21961	Watkins	2695
21962	Metea	3175
21963	Francis Creek	626
21964	Tionesta	1420
21965	Tionesta	1771
21966	Saint Augustine Shores	223
21967	Baconton	1475
21968	Nassau Shores	101
21969	Naknek	1013
21970	Humansville	2542
21971	Three Way	2045
21972	Virginia Beach	3273
21973	Ruidoso Downs	1199
21974	Trout Dale	3260
21975	Howell	663
21976	Howell	1421
21977	Howell	1187
21978	Howell	389
21979	Howell	1400
21980	Lagrange	599
21981	Lagrange	845
21982	Alhambra	2054
21983	Alhambra	404
21984	Reydon	1741
21985	Pleasant Prairie	2582
21986	Mercedes	1353
21987	Kettle River	780
21988	CabÃ¡n Comunidad	2414
21989	Caputa	907
21990	Rago	3068
21991	Abrams	2776
21992	Nathan	1176
21993	Salt Lick	2375
21994	Cabot	789
21995	Cabot	464
21996	Cabot	1585
21997	Newport Center	1436
21998	Bingham Lake	3122
21999	Greenport	940
22000	Rendon	3084
22001	Larose	1574
22002	Fallston	1883
22003	Fallston	2959
22004	Fallston	857
22005	Robertsdale	1988
22006	Grover Hill	2956
22007	Bellerose	101
22008	Ozan	1586
22009	Leonardsville	2042
22010	University Center	3118
22011	Warrior	987
22012	Cistern	2567
22013	Miller City	2756
22014	Miller City	2719
22015	Buckeye Lake	3255
22016	Imlay City	3188
22017	Big Run	1000
22018	Douglasville	2820
22019	San Rafael	1515
22020	San Rafael	1769
22021	New Albany	506
22022	New Albany	416
22023	New Albany	2141
22024	New Albany	2937
22025	New Albany	267
22026	Scottdale	2385
22027	Scottdale	1751
22028	Hachita	1128
22029	Otter	210
22030	Capitanejo	846
22031	Mauriceville	3139
22032	Belle Valley	3231
22033	Gage	281
22034	Gage	824
22035	Port Aransas	819
22036	West Bradenton	2834
22037	Shallotte	2395
22038	Riverside	1310
22039	Riverside	2959
22040	Riverside	484
22041	Riverside	1350
22042	Riverside	3036
22043	Riverside	3210
22044	Riverside	1421
22045	Riverside	1851
22046	Riverside	1105
22047	Riverside	408
22048	Riverside	737
22049	Riverside	663
22050	Riverside	1874
22051	Riverside	2963
22052	Riverside	917
22053	Riverside	2887
22054	Riverside	672
22055	Riverside	761
22056	Riverside	2841
22057	Cochiti Lake	971
22058	Hill View Heights	379
22059	New Whiteland	1264
22060	Dillonvale	1006
22061	Canal Lewisville	56
22062	Millerstown	1848
22063	Worden	2054
22064	Worden	759
22065	Worden	2281
22066	Worden	332
22067	Onaka	2944
22068	Cragsmoor	1952
22069	Klingerstown	2826
22070	Coldwater	1567
22071	Coldwater	2027
22072	Coldwater	2611
22073	Coldwater	2513
22074	Coldwater	2007
22075	Lando	89
22076	Mazomanie	749
22077	HanapÄ“pÄ“	2209
22078	Palmer Heights	314
22079	Chase City	2178
22080	Lindenau	2732
22081	El Dorado Springs	66
22082	Novelty	3217
22083	Novelty	586
22084	Jacksboro	2502
22085	Jacksboro	178
22086	De Smet	3149
22087	De Smet	3083
22088	De Smet	1707
22089	Ocala	682
22090	Sands Point	101
22091	Woodville	1340
22092	Woodville	2873
22093	Woodville	567
22094	Woodville	95
22095	Woodville	1817
22096	Woodville	182
22097	Woodville	649
22098	Woodville	1207
22099	Woodville	308
22100	Coventry	215
22101	Coventry	1436
22102	Roberts	2701
22103	Roberts	649
22104	Roberts	232
22105	Roberts	1229
22106	Roberts	1008
22107	Roberts	3035
22108	North Edwards	263
22109	Bonita Springs	2101
22110	Saint Pete Beach	2785
22111	The Lakes	2195
22112	Tulalip	99
22113	Flomot	2629
22114	Chanute	603
22115	Lampasas	3245
22116	Eoline	1582
22117	Bradfordville	1207
22118	Lake Ka-Ho	712
22119	La Motte	1821
22120	Dunbar	1728
22121	Dunbar	1467
22122	Dunbar	2280
22123	Dunbar	2574
22124	Gail	1554
22125	Guayama Zona Urbana	2413
22126	Cable	3109
22127	Silver Grove	179
22128	Atkinson	451
22129	Atkinson	1869
22130	Atkinson	1109
22131	Atkinson	2793
22132	Mountville	1139
22133	Mountville	947
22134	Sierraville	171
22135	Sobieski	2776
22136	Sobieski	164
22137	Mackeys	463
22138	Cottage Grove	480
22139	Cottage Grove	1446
22140	Cottage Grove	749
22141	Cottage Grove	1108
22142	Tarboro	1098
22143	Tarboro	2976
22144	Sunshine	2267
22145	Sunshine	281
22146	Sunshine	740
22147	Sunshine	150
22148	North Sea	940
22149	Castle Shannon	2632
22150	Hopkins	91
22151	Hopkins	2810
22152	Hopkins	2908
22153	Hopkins	1675
22154	Folsom	2809
22155	Folsom	507
22156	Folsom	3225
22157	Folsom	2617
22158	Folsom	2688
22159	Folsom	2905
22160	Mud Lake	1008
22161	Robbins	761
22162	Robbins	326
22163	Robbins	2242
22164	Robbins	220
22165	Rake	2692
22166	Matador	2629
22167	Tacoma	1925
22168	Tacoma	2106
22169	South Prairie	1925
22170	Columbia Heights	1260
22171	La Garita	384
22172	Grays Branch	1052
22173	KÄ«pahulu	2438
22174	Golden Beach	1705
22175	Golden Beach	2580
22176	North Loup	3169
22177	Smoaks	2109
22178	Salamanca	1370
22179	Marbledale	583
22180	Menands	924
22181	Mount Freedom	2877
22182	Gibbs	1386
22183	Landa	1717
22184	Wamic	906
22185	Penalosa	3068
22186	La Puebla	1750
22187	West Whittier	404
22188	Rancocas Woods	2841
22189	Llano Grande	1353
22190	Blairsville	2147
22191	Blairsville	511
22192	Liberty Plain	1936
22193	Cape Neddick	850
22194	Lemoyne	186
22195	Lemoyne	83
22196	Mosier	906
22197	Central Park	2499
22198	Lake Worth	3071
22199	Lake Worth	3084
22200	Doolittle	1353
22201	Doolittle	1303
22202	Almeria	2427
22203	East Orange	2744
22204	South Royalton	2483
22205	Evergreen	628
22206	Evergreen	1238
22207	Evergreen	3270
22208	Evergreen	2904
22209	Evergreen	1975
22210	Evergreen	1761
22211	Evergreen	992
22212	New Trier	2864
22213	Abram	1353
22214	Elkland	2151
22215	Elkland	2592
22216	Gray Summit	2130
22217	Windsor Hills	404
22218	Jerseytown	1079
22219	Coshocton	56
22220	Louisa	57
22221	Louisa	535
22222	Erwinville	2994
22223	Orpha	3170
22224	Abington	1936
22225	Abington	731
22226	Louise	2425
22227	Louise	754
22228	Louise	3047
22229	Evangeline	1612
22230	Ray	1914
22231	Ray	377
22232	Ray	296
22233	Ray	1929
22234	Falcon	76
22235	Falcon	3119
22236	Falcon	2781
22237	Falcon	1783
22238	Falcon	2904
22239	Falcon	3228
22240	Falcon	1320
22241	Hauser	772
22242	Hauser	3087
22243	Silesia	2064
22244	Silesia	3035
22245	Western	106
22246	Ramah	3228
22247	Ramah	3150
22248	Pilot Mound	247
22249	Pembroke Park	2729
22250	Briarcliff	3050
22251	Briarcliff	2459
22252	Orange Cove	937
22253	Wide Ruins	932
22254	Gano	785
22255	Gays Mills	1416
22256	Becida	2784
22257	Gans	1140
22258	Saint Georges	2563
22259	Pedernal	1625
22260	Deanville	820
22261	Show Low	3161
22262	Galt	2290
22263	Galt	2506
22264	Galt	2688
22265	South Lagrange	392
22266	Lake Saint Croix Beach	480
22267	Goodno	1377
22268	Glens Falls	2302
22269	Moores Mill	2048
22270	Hustonville	1190
22271	Norlina	2301
22272	Cumberland	3217
22273	Cumberland	76
22274	Cumberland	678
22275	Cumberland	2315
22276	Cumberland	1497
22277	Cumberland	3048
22278	Cumberland	81
22279	Cumberland	1898
22280	Cumberland	3174
22281	Cumberland	2467
22282	Seven Devils	1614
22283	Domingo	971
22284	Strauss	1242
22285	Steele	1479
22286	Steele	2383
22287	Steele	917
22288	Chester	3009
22289	Chester	256
22290	Chester	2873
22291	Chester	3011
22292	Chester	970
22293	Chester	3137
22294	Chester	1615
22295	Chester	2680
22296	Chester	2877
22297	Chester	1449
22298	Chester	2483
22299	Chester	397
22300	Chester	542
22301	Chester	2809
22302	Chester	1415
22303	Chester	1964
22304	Chester	2701
22305	Chester	89
22306	Chester	3104
22307	Chester	1327
22308	Chester	954
22309	Rancho Palos Verdes	404
22310	Kalvesta	1086
22311	Athalia	537
22312	Drexel	1915
22313	Drexel	925
22314	Drexel	737
22315	Drexel	3178
22316	Wiederkehr Village	2126
22317	Fort Mitchell	2397
22318	Fort Mitchell	1451
22319	Fort Mitchell	1354
22320	Diamond Bluff	1926
22321	Centralia	2533
22322	Centralia	316
22323	Centralia	690
22324	Centralia	352
22325	Centralia	250
22326	Centralia	284
22327	Centralia	1079
22328	Centralia	1931
22329	MayagÃ¼ez	98
22330	Newport Beach	3140
22331	Nephi	1576
22332	Starrs Mill	2572
22333	Strong City	1741
22334	Strong City	934
22335	Gonvick	3199
22336	Saline	2281
22337	Saline	1762
22338	FrÃ¡nquez Comunidad	1987
22339	Corder	2774
22340	Narberth	731
22341	Brookings	109
22342	Brookings	811
22343	Williamson	673
22344	Williamson	2054
22345	Williamson	2599
22346	Williamson	1174
22347	Williamson	2941
22348	Williamson	2495
22349	New Philadelphia	2826
22350	New Philadelphia	2552
22351	Steens	3066
22352	Kurten	1626
22353	Cosmopolis	2499
22354	Monches	2426
22355	Ludington	747
22356	Ludington	1727
22357	Ashland City	527
22358	Comus	740
22359	Sheffield Lake	845
22360	Alachua	132
22361	Center	589
22362	Center	2342
22363	Center	2372
22364	Center	1578
22365	Center	189
22366	Center	384
22367	Center	1829
22368	Center	133
22369	Rand	1824
22370	Rand	1467
22371	Pearl River	1429
22372	Pearl River	2960
22373	Pearl River	2905
22374	Trentwood	1431
22375	Cedar Bluff	2855
22376	Cedar Bluff	1776
22377	Cedar Bluff	433
22378	Grand Ecore	2991
22379	Thorntown	248
22380	B and E Colonia	166
22381	Studley	1224
22382	Port Townsend	989
22383	Pontoosuc	1969
22384	Walshville	735
22385	Napoleon	2186
22386	Napoleon	1112
22387	Napoleon	797
22388	Napoleon	2774
22389	Napoleon	1819
22390	Rea	610
22391	Beverly Hills	3196
22392	Beverly Hills	2663
22393	Beverly Hills	799
22394	Beverly Hills	404
22395	Beverly Hills	702
22396	Tilleda	2827
22397	Rossburg	2636
22398	Tecate	2381
22399	Reyno	2684
22400	Freeman	1757
22401	Freeman	1431
22402	Freeman	3178
22403	Salina	2385
22404	Salina	932
22405	Salina	103
22406	Salina	1001
22407	Salina	1884
22408	Salina	3209
22409	Pitkas Point	2367
22410	Hermosa	1781
22411	Hermosa	3059
22412	Wurtland	1052
22413	Agate Beach	1184
22414	Washington Park	918
22415	Washington Park	2920
22416	Washington Park	2729
22417	Washington Park	438
22418	Towaco	2877
22419	Henning	2036
22420	Henning	2763
22421	Henning	606
22422	Liscomb	2462
22423	Cayuga Heights	2614
22424	West Lawn	362
22425	Rex	2256
22426	Rex	1943
22427	Rew	1217
22428	Lake Davis	3011
22429	Sumiton	1349
22430	Cadiz	1107
22431	Cadiz	622
22432	Cadiz	2450
22433	Cadiz	721
22434	Gard	2054
22435	Locust Grove	1113
22436	Locust Grove	1884
22437	Locust Grove	217
22438	San Juan Bautista	706
22439	Rover	2869
22440	Rover	1690
22441	Colson	3133
22442	Shadyside	1591
22443	Frederickson	1925
22444	Garo	1748
22445	Kipton	845
22446	New Port Richey	1915
22447	Wilmington	3097
22448	Wilmington	2901
22449	Wilmington	875
22450	Wilmington	95
22451	Wilmington	2742
22452	Wilmington	2563
22453	Wilmington	254
22454	Pingree	2645
22455	Brimson	2506
22456	Brimson	3195
22457	Grantsdale	601
22458	Mount Laguna	2381
22459	Nahunta	2793
22460	Black Canyon City	2495
22461	Payne	3195
22462	Payne	1583
22463	Payne	2956
22464	Lavonia	2142
22465	Paulette	1962
22466	Riverview	3196
22467	Riverview	2606
22468	Riverview	868
22469	Riverview	216
22470	Riverview	851
22471	Riverview	1146
22472	Riverview	2668
22473	Barlow	3117
22474	Barlow	1875
22475	Barlow	3223
22476	Moonstone	319
22477	Glancy	2295
22478	South Farmingdale	101
22479	Fairdealing	798
22480	Taneyville	753
22481	Pine Grove	3225
22482	Pine Grove	2826
22483	Pine Grove	906
22484	Pine Grove	2253
22485	Pine Grove	2321
22486	Pine Grove	3216
22487	Pine Grove	992
22488	Kenedy	3264
22489	Shelby	1672
22490	Shelby	195
22491	Shelby	857
22492	Shelby	1323
22493	Shelby	187
22494	Shelby	2866
22495	Shelby	2548
22496	Shelby	3166
22497	Shelby	61
22498	Shelby	1565
22499	West Waynesburg	561
22500	Big Falls	279
22501	Big Falls	296
22502	Winside	2604
22503	Picabo	1405
22504	Carpenter	1741
22505	Carpenter	264
22506	Carpenter	1474
22507	Carpenter	2295
22508	Carpenter	2322
22509	Luttrell	497
22510	Gowan	3195
22511	Key Biscayne	1705
22512	Bayport	3274
22513	Bayport	940
22514	Bayport	480
22515	High Landing	908
22516	Edgartown	3271
22517	Punta Rassa	2101
22518	Brooklyn	111
22519	Brooklyn	708
22520	Brooklyn	2368
22521	Brooklyn	784
22522	Brooklyn	1934
22523	Brooklyn	3098
22524	Brooklyn	1819
22525	Brooklyn	3270
22526	Brooklyn	1306
22527	Brooklyn	918
22528	Brooklyn	860
22529	Brooklyn	3015
22530	Brooklyn	1100
22531	Brooklyn	2265
22532	Gate	1881
22533	South Range	2823
22534	South Range	2065
22535	Hayden Row	95
22536	West Elizabeth	2632
22537	Circleville	121
22538	Circleville	1986
22539	Circleville	1815
22540	Circleville	2646
22541	Circleville	302
22542	Bronson	1455
22543	Bronson	1567
22544	Bronson	1033
22545	Bronson	1569
22546	Bronson	3024
22547	Cuylerville	386
22548	Bonneauville	1298
22549	Las Animas	1998
22550	Heiberger	1846
22551	Earlham	2051
22552	Olmos Park	1083
22553	Jansen	990
22554	Jansen	205
22555	Koszta	3081
22556	Luxora	938
22557	Brandenberg	2377
22558	Floridatown	758
22559	Eutaw	559
22560	Gravelly	2869
22561	Ochopee	832
22562	Gary	2379
22563	Gary	1323
22564	Gary	1513
22565	Gary	1799
22566	Gary	529
22567	Littletown	1247
22568	Plevna	586
22569	Plevna	2048
22570	Plevna	3201
22571	Plevna	457
22572	Brandon	868
22573	Brandon	2812
22574	Brandon	2370
22575	Brandon	2819
22576	Brandon	2588
22577	Brandon	2090
22578	Brandon	1135
22579	Brandon	1991
22580	Brandon	2293
22581	Brandon	588
22582	Horseshoe Lake	1785
22583	University Place	1925
22584	Glenmoore	90
22585	Walterboro	2109
22586	Pine Aire	940
22587	Ericsburg	296
22588	Campton	203
22589	Campton	1548
22590	Campton	2038
22591	Two Guns	353
22592	Forbus	1036
22593	Medinah	950
22594	Floydale	818
22595	Kenmare	1551
22596	Howesville	1526
22597	Big Pine	2411
22598	Zephyr Cove	2825
22599	Rio	2829
22600	Rio	1078
22601	Rio	584
22602	Rio	2212
22603	Rufus	2079
22604	Piper	1312
22605	McConnellsburg	2717
22606	Absarokee	1568
22607	San Jon	1253
22608	Rugby	1924
22609	Rugby	112
22610	Valley Springs	3144
22611	Valley Springs	2293
22612	Valley Springs	252
22613	Salida	2676
22614	Salida	1941
22615	Kinney	3195
22616	Randle	2533
22617	Cades	2429
22618	Juno Beach	3071
22619	Fairplains	446
22620	DeMotte	3041
22621	Kingsmill	3073
22622	Crabtree	943
22623	Crabtree	2385
22624	Lilburn	1373
22625	Garrochales Comunidad	1908
22626	Plantation	2729
22627	Plantation	997
22628	Salineville	1662
22629	Pukalani	2438
22630	Pocopson	90
22631	Ingot	2883
22632	Spargursville	1257
22633	Universal	1095
22634	Santa Teresa	1242
22635	Pine Cove	3210
22636	North Houston	145
22637	Eldorendo	2485
22638	Los Trujillos	3272
22639	Solvang	2107
22640	Cotopaxi	969
22641	Koleen	557
22642	Aaronsburg	393
22643	Boulevard	2381
22644	Norseland	554
22645	Red Head	482
22646	Ben Bolt	2803
22647	Pernell	1879
22648	Chestnut Mountain	1024
22649	North Woodstock	3134
22650	South Sumter	515
22651	Belgreen	2125
22652	Sespe	3221
22653	Nemaha	283
22654	Nemaha	844
22655	Raub	2282
22656	DeCordova	1933
22657	Withers	1746
22658	Gower	2899
22659	Blackman	2038
22660	Muddy	105
22661	Muddy	2724
22662	Dewy Rose	1877
22663	Mystic	1621
22664	Mystic	1593
22665	Klamath Falls	759
22666	Shady Spring	1634
22667	Gowen	604
22668	Ossun	2769
22669	Arvonia	1089
22670	Gulf Hammock	1455
22671	Peden	3084
22672	San Saba	291
22673	Fort Irwin	721
22674	Wichita	887
22675	Plumas Lake	1775
22676	Park Forest Village	393
22677	Bunker	2208
22678	Hague	972
22679	South Toledo Bend	1233
22680	Twin Peaks	721
22681	Saint Stephens	470
22682	Saint Stephens	2526
22683	Saint Stephens	885
22684	Rising Fawn	411
22685	Wentworth	2823
22686	Wentworth	1327
22687	Wentworth	1234
22688	Wentworth	2083
22689	Tolbert	2164
22690	Ellicott	1510
22691	Ellicott	3228
22692	Cut Bank	1740
22693	Lake Harbor	3071
22694	Tilden	1144
22695	Tilden	2050
22696	Tilden	137
22697	Tilden	2593
22698	Tilden	2680
22699	Eastlawn	2281
22700	Windsor Forest	1631
22701	CaÃ±ada de los Alamos	1750
22702	Caddo	70
22703	Caddo	2847
22704	Swaledale	1596
22705	Lone Rock	1598
22706	Lone Rock	1674
22707	New Salisbury	618
22708	Grundy Center	2503
22709	Weiser	493
22710	Feather Sound	2785
22711	Sparkill	2960
22712	Lititz	1139
22713	Coachella	3210
22714	Star Lake	1307
22715	Forest Glade	2790
22716	Riverwoods	1326
22717	Brazos Country	61
22718	Braithwaite	2473
22719	Gaza	1885
22720	Robbinsdale	91
22721	Hopeful Heights	251
22722	Ramey	1300
22723	Swampscott	2745
22724	Telocaset	495
22725	Vinings	394
22726	Blue Point	940
22727	Reager	3033
22728	Locust	102
22729	Locust	278
22730	Westend	721
22731	South Miami	1705
22732	Wagon Mound	3190
22733	West Chicago	950
22734	Reinersville	117
22735	Symco	279
22736	North Valley Stream	101
22737	Ramer	729
22738	Ramer	1647
22739	Intracoastal City	2035
22740	Mignon	1407
22741	Valley View Park	721
22742	Elk Run Heights	1901
22743	Johnetta	3183
22744	Roe	2350
22745	Ligon	270
22746	Blawenburg	129
22747	Kenmawr	2632
22748	Presho	1143
22749	Webster Springs	2589
22750	Glen Campbell	2147
22751	Gays	742
22752	Westwego	1005
22753	East Oakdale	1941
22754	Hale Center	1012
22755	Rox	1206
22756	Vancleave	1822
22757	Farmington	2885
22758	Farmington	644
22759	Farmington	1393
22760	Farmington	2875
22761	Farmington	2912
22762	Farmington	2574
22763	Farmington	3259
22764	Farmington	1071
22765	Farmington	2864
22766	Farmington	471
22767	Farmington	652
22768	Farmington	3205
22769	Farmington	2929
22770	Farmington	1464
22771	Farmington	230
22772	Farmington	686
22773	Farmington	2430
22774	Farmington	590
22775	Farmington	2712
22776	Farmington	216
22777	Farmington	2663
22778	Farmington	2124
22779	Roy	3014
22780	Roy	1433
22781	Roy	2657
22782	Roy	1762
22783	Roy	1925
22784	Roy	2061
22785	Ontario	226
22786	Ontario	1672
22787	Ontario	1310
22788	Ontario	2599
22789	Ontario	721
22790	Birds Landing	2867
22791	Arabi	2298
22792	Arabi	548
22793	Ocilla	1371
22794	Calhoun City	1278
22795	Pajonal	1219
22796	Knik	150
22797	Luis M. CintrÃ³n Comunidad	330
22798	Bunkie	1975
22799	Saltaire	940
22800	Goldston	1630
22801	Larson	926
22802	Lake Dalecarlia	1323
22803	Princeton Junction	2009
22804	Potters Hill	3126
22805	Brandywine Manor	90
22806	Darling	3119
22807	Phelps City	3258
22808	Sterlington	243
22809	Pyramid	2332
22810	Boonton	2877
22811	West Middlesex	2010
22812	Frohna	1843
22813	Bayside Terrace	145
22814	Ashland	3236
22815	Ashland	1556
22816	Ashland	1768
22817	Ashland	2977
22818	Ashland	382
22819	Ashland	1808
22820	Ashland	3134
22821	Ashland	3211
22822	Ashland	73
22823	Ashland	2826
22824	Ashland	1533
22825	Ashland	3177
22826	Ashland	2324
22827	Ashland	1640
22828	Ashland	383
22829	Ashland	2201
22830	Ashland	250
22831	Ashland	2377
22832	Ashland	2991
22833	Deerfield Beach	2729
22834	Irrigon	2845
22835	Soper	895
22836	Bluetown Colonia	1832
22837	Granite Springs	1919
22838	Centre	433
22839	Prairie Village	1272
22840	Evans Mills	995
22841	Grand Glaise	1818
22842	Pajarito	405
22843	Hersey	2159
22844	Crescent	2267
22845	Crescent	759
22846	Crescent	2694
22847	Crescent	2182
22848	Crescent	3016
22849	Crescent	660
22850	Powder Wash	1721
22851	Lockport	1574
22852	Lockport	2910
22853	Lockport	875
22854	Fitler	2380
22855	Weyers Cave	1261
22856	Montevallo	227
22857	Montevallo	195
22858	North Terre Haute	3110
22859	Wilcox	1697
22860	Wilcox	162
22861	Wilcox	923
22862	Wilcox	820
22863	Cannon Ball	2925
22864	Banning	3210
22865	Martin Bluff	1822
22866	Burlison	1684
22867	Bradford	2136
22868	Bradford	1217
22869	Bradford	598
22870	Bradford	478
22871	Bradford	237
22872	Bradford	668
22873	Bradford	3116
22874	Bradford	1905
22875	Bradford	3136
22876	Repton	3270
22877	Repton	1786
22878	Kalamazoo	419
22879	Hebo	2093
22880	East Grand Forks	2543
22881	Marissa	918
22882	Tifton	1427
22883	Iredell	340
22884	Heath Springs	1137
22885	Disputanta	1714
22886	Belcourt	1860
22887	Axson	3250
22888	Comstock	3064
22889	Comstock	594
22890	Comstock	1530
22891	Keystone Heights	1532
22892	Heathcote	94
22893	Crookston	2016
22894	Crookston	2543
22895	Greigsville	386
22896	Arlington	3031
22897	Arlington	473
22898	Arlington	190
22899	Arlington	3034
22900	Arlington	425
22901	Arlington	2514
22902	Arlington	1834
22903	Arlington	3036
22904	Arlington	1381
22905	Arlington	1780
22906	Arlington	1991
22907	Arlington	3084
22908	Arlington	1078
22909	Arlington	3086
22910	Arlington	95
22911	Arlington	2565
22912	Arlington	3201
22913	Arlington	1707
22914	Arlington	99
22915	Arlington	1704
22916	Arlington	1972
22917	Arlington	1281
22918	Arlington	942
22919	Dobbins Heights	3089
22920	Blakeman	421
22921	Cresaptown	1497
22922	McCool Junction	852
22923	Bement	1995
22924	Pomfret	335
22925	Bonnie	1004
22926	Huetter	3087
22927	Comer	2058
22928	Comer	288
22929	Delavan	1777
22930	Delavan	2830
22931	Delavan	1094
22932	Delavan	2879
22933	Rush City	2021
22934	Rockdell	1452
22935	Rocky Ridge	1730
22936	Rocky Ridge	1576
22937	Stotts City	534
22938	Fairlea	2836
22939	Coates	2864
22940	Coal Run Village	1172
22941	Willow Canyon	1247
22942	Bergen Park	992
22943	Silver Spring	740
22944	Tempe	3086
22945	Ridge	750
22946	Ridge	940
22947	Ridge	2558
22948	Fairlee	3136
22949	Fairlee	217
22950	Smithdale	2632
22951	Smithdale	3132
22952	Port Arthur	1003
22953	North Plains	465
22954	Harrison Valley	715
22955	Otway	3256
22956	Otway	1182
22957	Beecher	875
22958	Beecher	2258
22959	Tecumseh	2032
22960	Tecumseh	3110
22961	Tecumseh	2586
22962	Tecumseh	1274
22963	Tecumseh	2940
22964	Tecumseh	1157
22965	Barview	772
22966	Saint Martins	722
22967	Mapleton	3000
22968	Mapleton	2550
22969	Mapleton	1444
22970	Mapleton	1446
22971	Mapleton	705
22972	Mapleton	2456
22973	Mapleton	2201
22974	Mapleton	3180
22975	Mapleton	1569
22976	Ruleville	1088
22977	Rock Port	3258
22978	North Bend	772
22979	North Bend	3217
22980	North Bend	2075
22981	North Bend	2902
22982	North Bend	956
22983	Caribou	2201
22984	Caribou	3011
22985	Rerdell	3274
22986	Hancocks Bridge	2628
22987	Oakford	2634
22988	Oakford	403
22989	Liborio NegrÃ³n Torres Comunidad	2406
22990	South Wilmington	2505
22991	Detroit Lakes	2458
22992	Swords	118
22993	Bellefont	233
22994	Yankee Lake	2946
22995	Dinero	1706
22996	Sioux Falls	2293
22997	Gandy	2152
22998	Gandy	2785
22999	Gandy	2188
23000	Old Appleton	2619
23001	Colonial Pine Hills	907
23002	Shaver Lake	937
23003	Schrag	1294
23004	Potosi	1131
23005	Potosi	1061
23006	Potosi	475
23007	Werley	1131
23008	Charlevoix	541
23009	Mi-Wuk Village	2798
23010	Brooklet	1445
23011	Sayreville	94
23012	Troutville	2475
23013	Troutville	1300
23014	Intercession City	2157
23015	Websters Corners	1510
23016	Walkersville	3153
23017	Miramar	2729
23018	Mamont	2385
23019	Gunn City	3178
23020	New Amsterdam	618
23021	Louisburg	669
23022	Louisburg	1916
23023	Louisburg	2120
23024	Louisburg	526
23025	East Bank	1467
23026	Marianne	297
23027	Blacksburg	739
23028	Blacksburg	434
23029	Briscoe	965
23030	Soda Springs	1784
23031	Soda Springs	461
23032	Marianna	483
23033	Marianna	1816
23034	Marianna	2104
23035	East Peoria	1777
23036	Skidway Lake	159
23037	Larsen	2690
23038	Ogallala	186
23039	Searcy	2062
23040	Searcy	1905
23041	Randalia	2565
23042	Osage City	1156
23043	Bonney	1984
23044	Siesta Shores	2781
23045	Glenham	1093
23046	Knox	297
23047	Knox	2400
23048	Knox	1655
23049	Karlstad	2857
23050	Glen Ferris	2564
23051	Towaoc	2615
23052	Tippecanoe	622
23053	North Corbin	1744
23054	Combs	1844
23055	Sturgeon Lake	1358
23056	Honaker	1452
23057	Holly Hills	2362
23058	Ranchette Estates	1141
23059	Wolbach	802
23060	Wilson Creek	1125
23061	Kingsdown	233
23062	Libuse	2402
23063	Cumberland City	1099
23064	Cumberland City	2900
23065	Keewatin	2777
23066	Jerusalem	2358
23067	Jerusalem	1573
23068	Jerusalem	2976
23069	Comal	611
23070	Plains	1664
23071	Plains	2909
23072	Plains	1466
23073	Plains	2641
23074	Plains	512
23075	Plains	75
23076	Calumet Park	761
23077	Felicity	1241
23078	Lakewood	404
23079	Lakewood	1925
23080	Lakewood	2776
23081	Lakewood	708
23082	Lakewood	3112
23083	Lakewood	3192
23084	Lakewood	2627
23085	Lakewood	515
23086	Lakewood	2760
23087	Lakewood	992
23088	Bonner	3149
23089	Keats	211
23090	Church Hill	2701
23091	Church Hill	2168
23092	Church Hill	2474
23093	Hogatza	1462
23094	Stevenson	3195
23095	Stevenson	1817
23096	Stevenson	2843
23097	Kentland	1231
23098	Kentland	2064
23099	Farwell	262
23100	Farwell	2644
23101	Farwell	2294
23102	Farwell	3234
23103	Green Meadows	2323
23104	Ilwaco	1306
23105	Kanaskat	3217
23106	Westfir	1446
23107	Clemmons	1980
23108	Martinsburg	960
23109	Martinsburg	1722
23110	Martinsburg	2237
23111	Martinsburg	804
23112	Martinsburg	2945
23113	Martinsburg	588
23114	Darlington	2773
23115	Darlington	2959
23116	Darlington	725
23117	Darlington	528
23118	Darlington	647
23119	Darlington	765
23120	Darlington	1572
23121	Darlington	1547
23122	Darlington	3216
23123	Darlington	1883
23124	Derita	2177
23125	Angwin	3151
23126	CataÃ±o	651
23127	Fort Ripley	704
23128	Omaha	2878
23129	Omaha	2824
23130	Omaha	252
23131	Omaha	578
23132	Omaha	1100
23133	East Amana	3081
23134	Jennersville	90
23135	Ramos	2447
23136	Gansevoort	1484
23137	McBaine	250
23138	Tallaboa Alta Comunidad	1030
23139	Sahalee	3217
23140	Hampton Manor	2828
23141	Hooper	1433
23142	Hooper	2892
23143	Hooper	2908
23144	Hooper	1294
23145	Hooper	956
23146	East Freedom	804
23147	Hastings-on-Hudson	1919
23148	Rye	2030
23149	Rye	858
23150	Rye	1919
23151	Rye	2920
23152	Candler	682
23153	Melody Hill	1562
23154	Tusayan	353
23155	Bloomfield	589
23156	Bloomfield	274
23157	Bloomfield	2874
23158	Bloomfield	2092
23159	Bloomfield	1790
23160	Bloomfield	2929
23161	Bloomfield	557
23162	Livona	972
23163	Norwich	1593
23164	Norwich	338
23165	Norwich	3068
23166	Norwich	650
23167	Norwich	2483
23168	Jelloway	588
23169	Wilbur	1195
23170	Giddings	2097
23171	Ramon	1199
23172	Bee Ridge	1236
23173	Miami	1705
23174	Miami	1732
23175	Miami	107
23176	Miami	2794
23177	Miami	2920
23178	Miami	3242
23179	Carlinville	712
23180	Renner	2293
23181	Bingham	228
23182	Bingham	1227
23183	Bingham	130
23184	Bingham	2569
23185	Bingham	1517
23186	Nightmute	2260
23187	Alpha	566
23188	Alpha	2306
23189	Alpha	1866
23190	Alpha	1814
23191	Alpha	1109
23192	Salyersville	1320
23193	Okeechobee	676
23194	Hendley	2287
23195	Cass Lake	3179
23196	Lysite	968
23197	Antreville	1944
23198	Muldraugh	1665
23199	Chataignier	62
23200	Saint Olaf	1942
23201	Bledsoe	3249
23202	Fort Ashby	974
23203	Willsboro	2742
23204	El Portal	1705
23205	El Portal	1660
23206	Fillmore	1496
23207	Fillmore	2152
23208	Fillmore	2400
23209	Fillmore	2752
23210	Fillmore	3221
23211	Fillmore	735
23212	Fillmore	610
23213	Bevis	2075
23214	Talleyville	2563
23215	Whitemarsh Island	1631
23216	Amityville	940
23217	Palmona Park	2101
23218	Camp Three	2981
23219	Chackbay	1574
23220	Twain	3011
23221	Arrowbear Lake	721
23222	Sasakwa	1628
23223	Coleraine	2777
23224	Rhame	315
23225	Capps Switch	327
23226	Bessemer Bend	805
23227	Earlimart	308
23228	Schaller	844
23229	Pine Crest	2559
23230	Bagley	1131
23231	Bagley	3199
23232	Bagley	3257
23233	Heil	1130
23234	Hominy	1154
23235	Red Oak	1381
23236	Red Oak	604
23237	Red Oak	2715
23238	Red Oak	3187
23239	Red Oak	732
23240	Red Oak	823
23241	Marionville	534
23242	Claire City	3241
23243	Vernon Center	1444
23244	Chistochina	3172
23245	Mission Viejo	3140
23246	Swandale	1536
23247	Lake Clarke Shores	3071
23248	Cochrane	2686
23249	Cochrane	366
23250	Naponee	2128
23251	Casa Conejo	3221
23252	West Monroe	243
23253	West Monroe	2352
23254	Avery Island	1178
23255	Freda	1130
23256	Freda	2065
23257	Rancho Cordova	2688
23258	Manassa	1461
23259	Nesconset	940
23260	Apalachin	2150
23261	Bechyn	222
23262	Nageezi	2929
23263	Bosco	243
23264	Frazier Park	263
23265	Au Gres	3173
23266	Gueydan	2035
23267	Timber Hills	1493
23268	Edenburg	362
23269	West Alton	1082
23270	Catlettsburg	73
23271	New Paltz	1952
23272	Mount Ida	730
23273	La Crescent	2115
23274	Villard	2644
23275	Horsham	731
23276	Jim Falls	660
23277	Stony Creek Mills	362
23278	Powellton	2564
23279	Colton	1464
23280	Colton	1307
23281	Colton	2293
23282	Colton	721
23283	Colton	705
23284	Tanglewood	2097
23285	Ohiowa	701
23286	Thor	318
23287	Ê»Ä€huimanu	1878
23288	Schenevus	778
23289	Mount Tabor	226
23290	Keystone	2379
23291	Keystone	868
23292	Keystone	1724
23293	Keystone	907
23294	Keystone	1639
23295	Keystone	186
23296	Cedartown	2544
23297	Amsterdam	724
23298	Amsterdam	1006
23299	Amsterdam	1067
23300	Amsterdam	579
23301	Rock City	959
23302	Limerick	731
23303	Spartansburg	1417
23304	Otsego	338
23305	Otsego	2291
23306	Otsego	2908
23307	Branchville	1015
23308	Branchville	1910
23309	Branchville	1889
23310	Branchville	408
23311	Brohard	1050
23312	White Island Shores	1936
23313	Fernan Lake Village	3087
23314	Carmel Valley Village	2955
23315	Kinde	342
23316	Waveland	2869
23317	Waveland	1966
23318	Waveland	725
23319	Sentinel	3086
23320	Sentinel	757
23321	Valley Ford	1790
23322	North Barrington	1326
23323	Highmore	2838
23324	Freer	1600
23325	Clines Corners	1625
23326	DeRidder	1727
23327	Anvik	1462
23328	Bonnie Doone	76
23329	Amherstdale	2179
23330	Greeley	1177
23331	Greeley	1394
23332	Greeley	802
23333	Greeley	1101
23334	Greeley	2805
23335	Lone Pine	2411
23336	Adamsburg	2385
23337	Keavy	1744
23338	Velda Village Hills	3196
23339	Lenola	2841
23340	Helm	937
23341	Landfall	480
23342	Yoman	1925
23343	KÅloa	2209
23344	Vashon Heights	3217
23345	Brownstown	2569
23346	Brownstown	1809
23347	Brownstown	3032
23348	Candelero Abajo Comunidad	2170
23349	MayagÃ¼ez Zona Urbana	98
23350	Sena	1039
23351	Millbury	2338
23352	Greentop	2739
23353	Sandyville	2308
23354	Sandyville	2552
23355	Sandyville	1820
23356	Atwater	2457
23357	Atwater	1637
23358	Atwater	1985
23359	Parkwood	1563
23360	Parkwood	1048
23361	Satellite Beach	2189
23362	Sugarloaf Mountain Park	308
23363	Parkerville	2879
23364	Bellerive Acres	3196
23365	Parkfield	2955
23366	Floral Park	101
23367	Barahona	1987
23368	Savery	3036
23369	Scalp Level	3032
23370	Norridgewock	130
23371	Bay Village	708
23372	Solomon	1316
23373	Solomon	2013
23374	Little River	3220
23375	Little River	2749
23376	Little River	1053
23377	Little River	1958
23378	Little River	433
23379	Newton Hamilton	2474
23380	Rowlett	525
23381	Glamis	153
23382	Millburn	1326
23383	Calamus	2896
23384	Lower Allen	83
23385	Duncombe	2590
23386	New Petersburg	2924
23387	Lewis and Clark Village	2813
23388	Wayland	1106
23389	Wayland	2320
23390	Wayland	2908
23391	Wayland	2887
23392	Wayland	270
23393	Eagle Mills	244
23394	Eagle Mills	848
23395	Deephaven	91
23396	Pataha	3002
23397	Selz	1924
23398	Ness City	3023
23399	Parsippany	2877
23400	Lansing	1699
23401	Lansing	1432
23402	Lansing	1872
23403	Lansing	287
23404	Lansing	761
23405	Lansing	2614
23406	Lansing	2555
23407	Lansing	1591
23408	Laporte	1950
23409	Laporte	831
23410	Laporte	2784
23411	Bairoa	1856
23412	Woonsocket	929
23413	Woonsocket	2858
23414	New Providence	726
23415	New Providence	2387
23416	New Providence	502
23417	Coverdale	2536
23418	Meadow Glade	2326
23419	Abercrombie	1673
23420	Lorain	845
23421	Lorain	3032
23422	Port Clinton	1730
23423	Port Clinton	2826
23424	Lenora	3033
23425	Lenora	201
23426	Fortuna Foothills	2113
23427	Lenore	673
23428	Lenore	1880
23429	Horse Branch	2780
23430	Plato Center	322
23431	New Martinsville	3225
23432	Berkeley Springs	110
23433	Butters	2063
23434	Gorman	1463
23435	Gorman	1688
23436	Gorman	404
23437	Gorman	310
23438	Trappe	731
23439	Trappe	1160
23440	Cleveland	2031
23441	Cleveland	1506
23442	Cleveland	1109
23443	Cleveland	708
23444	Cleveland	1452
23445	Cleveland	1565
23446	Cleveland	3237
23447	Cleveland	3190
23448	Cleveland	1778
23449	Cleveland	1262
23450	Cleveland	2645
23451	Cleveland	3107
23452	Cleveland	2420
23453	Cleveland	2144
23454	Cleveland	2589
23455	Cleveland	3178
23456	Cleveland	1254
23457	Cleveland	1903
23458	Cleveland	863
23459	Cleveland	1695
23460	Cleveland	626
23461	Cleveland	1573
23462	City of Milford (balance)	2409
23463	Kings	1978
23464	River Ridge	1005
23465	Six Mile	266
23466	Six Mile	367
23467	Rowan	2290
23468	Tascosa	1691
23469	Tajiguas	2107
23470	Yarrow Point	3217
23471	Makemie Park	3027
23472	Walters	2830
23473	Walters	1465
23474	Walters	1595
23475	Walters	3248
23476	DeSoto	525
23477	DeSoto	512
23478	Alliance	238
23479	Alliance	1816
23480	Alliance	2255
23481	Alliance	1653
23482	Davidson Heights	1883
23483	Lake Wylie	851
23484	Friendsville	3015
23485	Friendsville	2421
23486	Friendsville	310
23487	Horatio	3207
23488	Horatio	515
23489	Jacksons Mills	2627
23490	Oglethorpe	3155
23491	Union Star	1756
23492	Mesick	1487
23493	Apalachee	118
23494	Dietrich	1205
23495	Counce	2390
23496	Dendron	2708
23497	Ridgetop	751
23498	Delbarton	673
23499	Perryopolis	2574
23500	Washburn	1901
23501	Washburn	980
23502	Washburn	3128
23503	Washburn	1999
23504	Washburn	624
23505	Washburn	2201
23506	Washburn	774
23507	Washburn	3109
23508	Washburn	2282
23509	Huntertown	443
23510	Gilford Park	2627
23511	Estherwood	1612
23512	Wheeling	761
23513	Wheeling	921
23514	Wheeling	388
23515	Wheeling	2779
23516	Charles City	884
23517	Charles City	265
23518	Scammon	432
23519	Danville	3235
23520	Danville	1891
23521	Danville	1497
23522	Danville	1482
23523	Danville	736
23524	Danville	2036
23525	Danville	208
23526	Danville	1762
23527	Danville	1150
23528	Danville	246
23529	Danville	2765
23530	Danville	3143
23531	Danville	2869
23532	Danville	2911
23533	Danville	2527
23534	Danville	588
23535	Danville	1794
23536	Wellborn	3124
23537	Wellborn	1626
23538	Fall Branch	467
23539	Oscarville	2260
23540	Las Nutrias	228
23541	Wolf Bayou	3276
23542	Bairoa La Veinticinco Comunidad	1856
23543	Turpin	1881
23544	Metamora	2122
23545	Metamora	3188
23546	Metamora	2714
23547	Metamora	1999
23548	Dycusburg	1786
23549	Pedro	907
23550	East Cape Girardeau	2719
23551	North Enid	3004
23552	Tiptonville	1324
23553	Beclabito	2929
23554	Brodhead	3183
23555	Brodhead	2368
23556	Emerald Beach	624
23557	South Shaftsbury	1780
23558	Waltonville	1004
23559	Trujillo	1039
23560	Twin Groves	333
23561	Glover	1865
23562	Glover	1436
23563	Maida	1720
23564	Syracuse	2875
23565	Syracuse	2076
23566	Syracuse	115
23567	Syracuse	2979
23568	Syracuse	718
23569	Syracuse	1449
23570	Syracuse	2280
23571	Sewall's Point	2212
23572	Grand Coteau	2967
23573	McKenzie	2146
23574	McKenzie	2221
23575	McKenzie	787
23576	Arbon	2657
23577	Copalis Beach	2499
23578	Herty	1859
23579	Bakerstown Station	2632
23580	Hess	2959
23581	Christoval	3226
23582	Alondra Park	404
23583	Pecan Plantation	1933
23584	Princeton	2009
23585	Princeton	2003
23586	Princeton	1705
23587	Princeton	1138
23588	Princeton	2855
23589	Princeton	1635
23590	Princeton	2005
23591	Princeton	1360
23592	Princeton	866
23593	Princeton	3115
23594	Princeton	1803
23595	Princeton	524
23596	Princeton	1058
23597	Princeton	1335
23598	Princeton	2200
23599	Princeton	2133
23600	Princeton	2239
23601	Princeton	947
23602	Princeton	1704
23603	Princeton	1165
23604	Princeton	785
23605	Breckinridge	3004
23606	Bowling Green	2250
23607	Bowling Green	2338
23608	Bowling Green	2305
23609	Bowling Green	2893
23610	Bowling Green	1497
23611	Bowling Green	1171
23612	West Barnstable	1162
23613	Nipton	721
23614	Neoga	78
23615	South Rockwood	2352
23616	RÃ­o Blanco	1619
23617	Bude	2137
23618	Benham	1898
23619	Shelter Island Heights	940
23620	Arab	2472
23621	Herd	1154
23622	Buda	1378
23623	Buda	1704
23624	Southam	653
23625	East Ellijay	2317
23626	Markville	1358
23627	Fireco	1634
23628	Boalsburg	393
23629	Hoopa	319
23630	Sheldon	2500
23631	Sheldon	973
23632	Sheldon	1955
23633	Sheldon	2606
23634	Sheldon	227
23635	Sheldon	1773
23636	Sheldon	1885
23637	Sheldon	145
23638	Sheldon	2115
23639	Sheldon	439
23640	Dalhart	521
23641	Bismarck	2689
23642	Bismarck	230
23643	Bismarck	2146
23644	Bismarck	2036
23645	Rillito	1247
23646	Hood River	949
23647	Port Orford	811
23648	Revere	1464
23649	Revere	2320
23650	Revere	941
23651	Revere	1250
23652	Lorane	362
23653	RÃ­o CaÃ±as Abajo	846
23654	Guffey	1748
23655	Spray	963
23656	West Melbourne	2189
23657	Mountainhome	2351
23658	Eunice	2273
23659	Eunice	2089
23660	Eunice	2967
23661	Tontogany	2338
23662	Dover Hill	2213
23663	Romeroville	1039
23664	Mahaffey	1300
23665	Fisher	1032
23666	Fisher	2543
23667	Fisher	483
23668	Fisher	1499
23669	Fisher	519
23670	Clear Lake	2152
23671	Clear Lake	2547
23672	Clear Lake	1422
23673	Clear Lake	2444
23674	Clear Lake	1596
23675	Clear Lake	695
23676	Clear Lake	1799
23677	Clear Lake	2886
23678	Enville	88
23679	Wray	2112
23680	Fabens	3227
23681	Cedar Mills	2695
23682	Wheeler	1125
23683	Wheeler	587
23684	Wheeler	2093
23685	Wheeler	2517
23686	Wheeler	3043
23687	Wheeler	965
23688	Wheeler	3168
23689	Wheeler	2969
23690	Wheeler	2498
23691	Wheeler	1611
23692	Allons	2108
23693	Buena	2617
23694	Buena	3268
23695	Hazard	1844
23696	Hazard	2082
23697	Munster	1323
23698	Mineral	2533
23699	Mineral	3186
23700	Mineral	1704
23701	Mineral	57
23702	Arco	765
23703	Arco	1192
23704	Arco	1102
23705	Beaver Meadows	3038
23706	Fredonia	2010
23707	Fredonia	353
23708	Fredonia	1342
23709	Fredonia	58
23710	Fredonia	2937
23711	Fredonia	2186
23712	Fredonia	3112
23713	Fredonia	2855
23714	Fredonia	608
23715	Fredonia	745
23716	Black Springs	730
23717	Koppel	1883
23718	Willaha	353
23719	Chignik Lagoon	2011
23720	Ê»ÅŒmaÊ»o	2209
23721	June Lake	3160
23722	Fernway	789
23723	Wye Mills	1160
23724	Funter	207
23725	Reece City	1163
23726	Los Llanos Comunidad	1469
23727	Saint Lucie	1577
23728	Vanleer	2434
23729	Wilder	179
23730	Wilder	2039
23731	Wilder	1814
23732	Wilder	2483
23733	Wilder	1036
23734	Tillmans Corner	1301
23735	Kiskimere	775
23736	Moingona	247
23737	Stoney Point	1140
23738	Quinwood	2836
23739	Valier	2139
23740	Valier	577
23741	Kindred	3180
23742	Westvale	2979
23743	Myoma	789
23744	Parker School	3219
23745	North Bellingham	2618
23746	Herculaneum	993
23747	Tres Piedras	1930
23748	Dos Cabezas	3232
23749	New Jerusalem	362
23750	Carmel-by-the-Sea	2955
23751	Young Harris	2735
23752	Morley	3019
23753	Morley	1764
23754	Morley	2244
23755	Freedhem	164
23756	Ravensworth	2405
23757	PeÃ±uelas	1030
23758	Orchard Hill	2148
23759	Buell	736
23760	Perdido	1988
23761	Fults	2356
23762	Starkey	2297
23763	Sugar Land	1890
23764	Readland	629
23765	Carver	1320
23766	Carver	1037
23767	Kenneth	838
23768	Kenneth	1272
23769	North Marshfield	1936
23770	RoEllen	2553
23771	Union Bridge	2232
23772	Neola	2428
23773	Neola	3016
23774	Mattese	3196
23775	Mountain Gate	2883
23776	Peach Orchard	2383
23777	Peach Orchard	1534
23778	Ben Avon Heights	2632
23779	Kennett	1546
23780	Heizer	613
23781	Buhl	3195
23782	Buhl	1402
23783	Hindsboro	2816
23784	Brambleton	3118
23785	Novato	1515
23786	Laverne	1793
23787	Creelsboro	1453
23788	Carmichaels	561
23789	Lenoir	2852
23790	Columbia	3037
23791	Columbia	1139
23792	Columbia	2356
23793	Columbia	261
23794	Columbia	2851
23795	Columbia	1675
23796	Columbia	2306
23797	Columbia	688
23798	Columbia	1075
23799	Columbia	635
23800	Columbia	1387
23801	Columbia	2165
23802	Columbia	1483
23803	Columbia	2117
23804	Columbia	250
23805	Columbia	2798
23806	Columbia	2398
23807	Columbia	687
23808	University	2770
23809	Naschitti	2929
23810	Pine River	3179
23811	Pine River	1210
23812	Percle	771
23813	Bexar	683
23814	Bexar	2716
23815	Hornerstown	278
23816	Garfield Heights	708
23817	Melvin	894
23818	Melvin	445
23819	Melvin	232
23820	Melvin	2158
23821	Melvin	1309
23822	Cazadero	1790
23823	Lawrence Creek	755
23824	Emerado	1581
23825	Noonan	593
23826	Martensdale	2308
23827	Valparaiso	3236
23828	Valparaiso	2498
23829	Valparaiso	2038
23830	McCuneville	1845
23831	Lynchburg	2924
23832	Lynchburg	871
23833	Lynchburg	2904
23834	Lynchburg	328
23835	Lynchburg	1430
23836	Lynchburg	145
23837	Lynchburg	2105
23838	Galva	2522
23839	Galva	1109
23840	Galva	3054
23841	Peterson	1911
23842	Peterson	1537
23843	Peterson	700
23844	Wren	538
23845	Wren	2984
23846	Stewart	2386
23847	Stewart	741
23848	Stewart	733
23849	Stewart	1230
23850	Buie	2256
23851	Myrtle Grove	254
23852	Myrtle Grove	2667
23853	Rocky Mound	3088
23854	Adairville	2183
23855	Coosada	808
23856	Lee City	203
23857	Muir	2826
23858	Muir	1613
23859	East Vandergrift	2385
23860	Athol	1602
23861	Athol	3087
23862	Athol	1760
23863	Athol	1038
23864	Blissfield	2586
23865	Blissfield	56
23866	Purdy	1925
23867	Purdy	3244
23868	Purdy	1879
23869	Purdy	624
23870	Los Ojos	2725
23871	Steward	2098
23872	Voca	1309
23873	Jasonville	557
23874	Rocky Mount	3187
23875	Rocky Mount	2143
23876	Rocky Mount	2995
23877	Waimalu	1878
23878	Argo	987
23879	Argo	1172
23880	Argo	1667
23881	North Riverside	761
23882	Richfield	91
23883	Richfield	476
23884	Richfield	1725
23885	Richfield	1014
23886	Richfield	1380
23887	Richfield	102
23888	Richfield	1205
23889	Richfield	1729
23890	Richfield	3186
23891	Richfield	3209
23892	Sequoyah	2831
23893	Fort Peck	3168
23894	Brockton	1936
23895	Brockton	1679
23896	Bedford Center	1919
23897	Eckley	2112
23898	Goodyear	3086
23899	Laona	1419
23900	El Negro	280
23901	Odanah	382
23902	Bayshore	254
23903	Bayshore	2101
23904	Hext	402
23905	Tinsman	1284
23906	Peterstown	2353
23907	Halleck	108
23908	Amoret	1067
23909	Orono	392
23910	Orono	91
23911	Vilas	1893
23912	Vilas	449
23913	Vilas	3106
23914	Vilas	2937
23915	Cornwall-on-Hudson	3137
23916	London Mills	2712
23917	Govan	2890
23918	Barnstable	1162
23919	Smoke Rise	2420
23920	Betteravia	2107
23921	Burtrum	2649
23922	Winooski	2801
23923	Concepcion	1600
23924	Nevinville	1287
23925	Inglewood	956
23926	Inglewood	404
23927	Polk City	2539
23928	Polk City	2545
23929	Crowley	1612
23930	Crowley	3084
23931	Crowley	1167
23932	Pioche	1206
23933	Paducah	2037
23934	Paducah	1440
23935	Akhiok	3101
23936	Okolona	2325
23937	Okolona	1112
23938	Okolona	699
23939	Iron Ridge	955
23940	Seminole Manor	3071
23941	McCleary	2499
23942	Sunny Crest	761
23943	Kofa	2113
23944	Prospect Park	2809
23945	Prospect Park	792
23946	Prospect Plains	94
23947	Olmstead	2183
23948	Hebron Estates	843
23949	Heeney	1724
23950	La Pryor	417
23951	Galivants Ferry	3220
23952	Riverside Park	2841
23953	Kimballton	2640
23954	De Funiak Springs	1547
23955	Washam	3093
23956	South Williamson	1172
23957	Myrtlewood	1080
23958	Forest Junction	1428
23959	Whiteclay	1227
23960	Glen Aubrey	1153
23961	Schellsburg	2954
23962	Brookville	2122
23963	Brookville	101
23964	Brookville	103
23965	Brookville	1000
23966	Brookville	2618
23967	Brookville	737
23968	Morse	1263
23969	Morse	1612
23970	Morse	1520
23971	Glen Ullin	1379
23972	Tarentum	2632
23973	Newman Grove	2050
23974	Osterdock	1942
23975	Kettering	2064
23976	Kettering	737
23977	Engadine	1701
23978	Columbus	2537
23979	Columbus	206
23980	Columbus	1850
23981	Columbus	432
23982	Columbus	3066
23983	Columbus	2417
23984	Columbus	2141
23985	Columbus	1260
23986	Columbus	1078
23987	Columbus	926
23988	Columbus	1568
23989	Columbus	1553
23990	Columbus	2336
23991	Columbus	1291
23992	Columbus	2307
23993	Columbus	281
23994	Columbus	2841
23995	Saint Henry	2007
23996	Bulpitt	2949
23997	Bitter Springs	353
23998	East Branch	2804
23999	Cologne	1037
24000	Palominas	3232
24001	Mayesville	515
24002	Howland Center	2946
24003	Redwood	1460
24004	Redwood	995
24005	Redwood	2203
24006	Redwood	2309
24007	Alstown	2822
24008	La Fermina Comunidad	2170
24009	Hormigueros	1251
24010	Drakes Branch	1507
24011	Earlville	2042
24012	Earlville	2507
24013	Earlville	2805
24014	Aspen Park	992
24015	Eupora	2591
24016	Bartolo Comunidad	1676
24017	Big Stone City	1121
24018	Qulin	783
24019	Palm Desert	3210
24020	Wigwam	3228
24021	Clearbrook	3199
24022	Post Falls	3087
24023	Mesa Grande	2381
24024	Vanoss	133
24025	New Pittsburg	2612
24026	Bunn	2120
24027	Bunn	524
24028	Gearhart	813
24029	Phelps	3049
24030	Phelps	1172
24031	Phelps	1350
24032	Phelps	357
24033	Happys Inn	1185
24034	Punta Santiago	2170
24035	Sultan	99
24036	Milburn	3064
24037	Milburn	1166
24038	Milburn	1035
24039	Zortman	1557
24040	Pacific	3217
24041	Pacific	2130
24042	Colonial Village	2910
24043	Websters Crossing	386
24044	Buna	3042
24045	Oklaunion	2164
24046	Nolic	1247
24047	Layhill	740
24048	Poplar Plains	914
24049	Altavista	176
24050	Hoskins	2604
24051	Hoskins	1984
24052	Hoskins	1638
24053	Reed Point	1568
24054	Loyal	1501
24055	Loyal	2327
24056	Leacock	1139
24057	Napaskiak	2260
24058	Healy Lake	1561
24059	Smithville	1754
24060	Smithville	2100
24061	Smithville	2355
24062	Smithville	229
24063	Smithville	2612
24064	Smithville	1367
24065	Smithville	539
24066	Smithville	2617
24067	Smithville	1541
24068	Smithville	358
24069	Smithville	2345
24070	Crescent City	1468
24071	Crescent City	1955
24072	Crescent City	2758
24073	Ulen	248
24074	Ulen	1530
24075	Thorndale	2176
24076	Thorndale	90
24077	Cavendish	2483
24078	Libertytown	3153
24079	Roulo	2606
24080	Cartago	2411
24081	Toa Baja	1334
24082	Tice	2101
24083	Plumsteadville	2634
24084	Elbridge	2979
24085	Mount Joy	1139
24086	Halfmoon Landing	3105
24087	Vaucluse	646
24088	Butteville	677
24089	New Hope	679
24090	New Hope	2276
24091	New Hope	3066
24092	New Hope	2598
24093	New Hope	241
24094	New Hope	2048
24095	New Hope	2957
24096	New Hope	91
24097	New Hope	2634
24098	New Hope	274
24099	New Hope	2203
24100	New Hope	1261
24101	New Hope	1335
24102	Wallburg	2759
24103	Pistakee Highlands	3192
24104	Layhigh	785
24105	Sparta	2360
24106	Sparta	1889
24107	Sparta	1906
24108	Sparta	2950
24109	Sparta	776
24110	Sparta	2680
24111	Sparta	2846
24112	Sparta	219
24113	Sparta	580
24114	Sparta	1973
24115	Golinda	2597
24116	Castolon	1617
24117	Park View	2239
24118	Hertel	1745
24119	Torrey	2603
24120	Birdsboro	362
24121	Mission Canyon	2107
24122	Lac du Flambeau	1159
24123	Los Molinos	3186
24124	Clarendon	2350
24125	Clarendon	952
24126	Clarendon	2307
24127	Flaxville	1502
24128	Meinhard	1631
24129	South Bloomfield	1986
24130	Price	1830
24131	Price	2701
24132	Price	3037
24133	Price	2501
24134	Price	2083
24135	Recluse	177
24136	Dixons Mills	1080
24137	Vernonburg	1631
24138	Arbutus	1498
24139	Ehrenberg	2638
24140	Uhrichsville	2552
24141	Arma	1414
24142	Laird Hill	2501
24143	Switz City	557
24144	San Dimas	404
24145	Randsburg	263
24146	New Troy	1767
24147	Canadian	1620
24148	Canadian	3211
24149	Oriska	2341
24150	Maine	628
24151	Inver Grove Heights	2864
24152	Cattaraugus	1370
24153	Piedra Gorda Comunidad	1249
24154	Georges Mills	1949
24155	Russellville	2752
24156	Russellville	90
24157	Russellville	533
24158	Russellville	2125
24159	Russellville	636
24160	Russellville	2629
24161	Russellville	2642
24162	Russellville	595
24163	Russellville	1723
24164	Russellville	2183
24165	Russellville	722
24166	Cantrall	695
24167	Lilydale	2864
24168	Arno	1781
24169	Pacific Grove	2955
24170	Mesita	2068
24171	Mesita	1769
24172	Komalty	1992
24173	Pleasant View	1433
24174	Pleasant View	1305
24175	Pleasant View	775
24176	Pleasant View	2615
24177	Pleasant View	527
24178	Pleasant View	188
24179	Pride	498
24180	Dime Box	2097
24181	Stony Lake	3166
24182	McAlisterville	1729
24183	Manasquan	278
24184	Edmonds	99
24185	Edmonds	2060
24186	Ambler	2907
24187	Ambler	731
24188	Edinburgh	1264
24189	Beeville	981
24190	Cornettsville	435
24191	Cornettsville	1844
24192	Murphys Corner	99
24193	Montevideo	661
24194	Wilkinsburg	2632
24195	Sorento	3127
24196	West End	778
24197	West End	326
24198	Silver Creek	3112
24199	Silver Creek	1234
24200	Silver Creek	1333
24201	Silver Creek	530
24202	Silver Creek	2291
24203	Brighton	560
24204	Brighton	743
24205	Brighton	1290
24206	Brighton	987
24207	Brighton	484
24208	Brighton	2344
24209	Brighton	712
24210	Brighton	740
24211	Brighton	389
24212	Brighton	2909
24213	Brighton	1684
24214	Brighton	2542
24215	Tilghmanton	492
24216	Millerton	3031
24217	Millerton	2151
24218	Millerton	229
24219	Millerton	2608
24220	East Rutherford	1572
24221	Burt	1555
24222	Burt	299
24223	Burt	1598
24224	Burt	573
24225	Burt	2910
24226	Prien	364
24227	Hoople	2633
24228	Burr	2635
24229	Burr	2280
24230	Reading	362
24231	Reading	2075
24232	Reading	141
24233	Reading	95
24234	Reading	304
24235	Reading	1090
24236	Ekwok	2019
24237	Fort Washakie	968
24238	Norway	772
24239	Norway	1703
24240	Norway	1910
24241	Norway	1904
24242	Norway	1315
24243	Norway	1871
24244	Norway	1639
24245	Middle Point	2984
24246	Carnation	3217
24247	Crawford	1451
24248	Crawford	876
24249	Crawford	1797
24250	Crawford	3066
24251	Crawford	1741
24252	Crawford	455
24253	Crawford	702
24254	New Home	60
24255	Havertown	2809
24256	Langdon Place	997
24257	Pikeville	697
24258	Pikeville	2598
24259	Pikeville	1172
24260	Telma	276
24261	Jenners	131
24262	Taconic Shores	1073
24263	Anniston	1283
24264	Anniston	939
24265	Ralph	3013
24266	Azalea Park	3141
24267	Lumberton	1915
24268	Lumberton	2256
24269	Lumberton	2841
24270	Lumberton	2725
24271	Lumberton	2389
24272	Lumberton	890
24273	Volt	1679
24274	Douglass Hills	997
24275	North Conway	2227
24276	Brimhall Nizhoni	3150
24277	Bald Head Island	2395
24278	Lamison	409
24279	South Windham	79
24280	South Windham	3098
24281	Moyie Springs	2022
24282	Holtwood	1139
24283	Bellefontaine Neighbors	3196
24284	Ellinwood	613
24285	Cambrian Park	2198
24286	Fort Supply	3082
24287	Inchelium	1150
24288	Bush	123
24289	Bush	2905
24290	Alderwood Manor	99
24291	Oldenburg	2122
24292	Galestown	2508
24293	Bayside Gardens	2093
24294	Clementsville	1392
24295	Morgan Farm Colonia	3214
24296	Blackshear	1923
24297	Uintah	1433
24298	Flat Lick	587
24299	Thorne Bay	1345
24300	Long Ridge	1045
24301	Sun	2905
24302	Poestenkill	2828
24303	Heilwood	2147
24304	Columbus City	58
24305	Saint Robert	371
24306	Econfina	902
24307	Clover Bank	1510
24308	Golden Glades	1705
24309	Volo	1326
24310	Avilla	104
24311	Avilla	3229
24312	Avilla	3044
24313	Diamond Beach	1994
24314	Aliquippa	1883
24315	Green Ridge	2809
24316	Green Ridge	2860
24317	Seneca Knolls	2979
24318	Muse	483
24319	Lomas Comunidad	396
24320	Russell Gardens	101
24321	Miranda	319
24322	Miranda	1996
24323	Miranda	2944
24324	Babcock	2339
24325	Hurdland	586
24326	Tindall	2506
24327	Warden	1125
24328	Warden	1671
24329	Southport	902
24330	Southport	1524
24331	Southport	678
24332	Southport	2395
24333	Southport	408
24334	Rebersburg	393
24335	Eastland	1463
24336	Greasewood	3161
24337	Woodlawn Park	997
24338	Woodlawn Park	958
24339	Doyleville	549
24340	Botna	187
24341	Bone Gap	1650
24342	Axton	1115
24343	Riviera	1689
24344	Kanawha	2337
24345	Kanawha	1965
24346	Maiden	2526
24347	Bay City	1926
24348	Bay City	2674
24349	Bay City	2093
24350	Bay City	903
24351	Baker	2891
24352	Baker	2400
24353	Baker	2272
24354	Baker	2038
24355	Baker	1900
24356	Baker	457
24357	Baker	1381
24358	Baker	2507
24359	Baker	2092
24360	Baker	1530
24361	Baker	721
24362	Baker	1401
24363	Plattsmouth	3181
24364	Tuppers Plains	1449
24365	Rosemead	404
24366	The Hammocks	1705
24367	Enhaut	1369
24368	Glouster	741
24369	Uncasville	1593
24370	Saratoga	256
24371	Saratoga	260
24372	Saratoga	3036
24373	Saratoga	2679
24374	Saratoga	2198
24375	Saratoga	2936
24376	Saratoga	2389
24377	Saxman	2749
24378	Saxman	2525
24379	Grainton	1135
24380	Leasburg	516
24381	Leasburg	1411
24382	Vona	2197
24383	Grainfield	1338
24384	String Prairie	358
24385	Barrville	2474
24386	Levittown Comunidad	1334
24387	Hunterdon	741
24388	Cadillac	1487
24389	Wallaceton	1300
24390	Bull Valley	3192
24391	Lloyd	999
24392	Lloyd	1403
24393	Falfurrias	1055
24394	Hughes Springs	3176
24395	Deersville	622
24396	Dowagiac	3182
24397	Forbes	1091
24398	Forbes	3195
24399	Conde	1038
24400	Triumph	2473
24401	Triumph	2507
24402	Panola	604
24403	Panola	1999
24404	Panola	514
24405	Shannon City	505
24406	Millheim	393
24407	Tichnor	2623
24408	Black Rock	539
24409	Black Rock	2618
24410	Black Rock	2538
24411	Black Rock	3150
24412	Columbia Hills Corners	845
24413	Green Village	2877
24414	Malverne	101
24415	Crandon	1419
24416	College Place	2989
24417	Brigantine	2617
24418	Niantic	3158
24419	Niantic	1593
24420	Bluffside	918
24421	Cornfields	932
24422	Woods Creek	99
24423	Shady Hollow	3050
24424	Butlertown	217
24425	Brumley	2705
24426	Golconda	2643
24427	Golconda	320
24428	Gallup	3150
24429	Phlox	2639
24430	Holden Heights	3141
24431	Hodgenville	1838
24432	Winchell	633
24433	Pantego	438
24434	Pantego	3084
24435	Portola Valley	1423
24436	Bay Port	342
24437	Maryhill Estates	997
24438	Langley Park	2064
24439	Sparks	2016
24440	Sparks	3227
24441	Sparks	763
24442	Sparks	2332
24443	Sparks	1188
24444	Orosi	308
24445	Walton	251
24446	Walton	3123
24447	Walton	2804
24448	Walton	665
24449	Walton	3175
24450	Walton	1138
24451	Walton	1577
24452	Beatrice	2349
24453	Beatrice	3206
24454	Ogden Dunes	2498
24455	Hildale	472
24456	Alligator	1565
24457	Mount Hood Village	3223
24458	Lanett	1342
24459	Texasville	288
24460	Wake Village	826
24461	Keyesport	2898
24462	Shell Beach	2298
24463	Conda	461
24464	Mount Ivy	2960
24465	Horseheads	1524
24466	Paulden	2495
24467	Alameda	405
24468	Alameda	1556
24469	Morzhovoi	1145
24470	College Springs	1517
24471	Secretary	2508
24472	Yosemite Lakes	1563
24473	Hallett	1254
24474	Flatwoods	1052
24475	Flatwoods	1765
24476	Flatwoods	2402
24477	Maljamar	2089
24478	Time	1170
24479	Port Bolivar	2523
24480	Siesta Key	1236
24481	Kennedy	3112
24482	Kennedy	2857
24483	Kennedy	590
24484	Kennedy	892
24485	Voss	2633
24486	Flagler Beach	1696
24487	Bolivar	1496
24488	Bolivar	2385
24489	Bolivar	169
24490	Bolivar	1565
24491	Bolivar	991
24492	Bolivar	2697
24493	Bolivar	2552
24494	Bolivar	2542
24495	Ringwood	3192
24496	Ringwood	792
24497	Ringwood	397
24498	Upper Nyack	2960
24499	Duane Lake	979
24500	Tracyton	1048
24501	McKeesport	2632
24502	Mount Horeb	749
24503	Tenaha	189
24504	Fishtail	1568
24505	Chromo	86
24506	Turners Falls	2129
24507	Eastlake	1290
24508	Eastlake	1328
24509	Big Rock	1099
24510	Big Rock	322
24511	Bauerstown	2632
24512	Kasigluk	2260
24513	Winterstown	853
24514	Cobb Island	335
24515	Stanleytown	1115
24516	Chappell	1800
24517	Goshenville	90
24518	Armour	2818
24519	Ashwaubenon	639
24520	Ralls	574
24521	Ellisburg	2977
24522	Ellisburg	995
24523	Souris	1717
24524	Manson	2897
24525	Manson	276
24526	Manson	1277
24527	Renningers	2826
24528	Grove Center	498
24529	Parkton	2256
24530	Big Flat	2459
24531	Oakwood Park	1541
24532	Mantador	1673
24533	Ringold	229
24534	Fellsburg	2385
24535	Fellsburg	1651
24536	Hempstead	2088
24537	Hempstead	101
24538	Oakwood Hills	3192
24539	Crooked Lake Park	2545
24540	Pleasant Green	158
24541	Decorah	2624
24542	Unionvale	622
24543	Buellton	2107
24544	Harbert	1767
24545	Florence	605
24546	Florence	251
24547	Florence	2856
24548	Florence	2255
24549	Florence	601
24550	Florence	1914
24551	Florence	1588
24552	Florence	359
24553	Florence	121
24554	Florence	404
24555	Florence	969
24556	Florence	2370
24557	Florence	1446
24558	Florence	1587
24559	Florence	115
24560	Florence	140
24561	Florence	1170
24562	Florence	681
24563	Florence	1492
24564	Florence	2841
24565	Roselawn	1231
24566	Oak Park Heights	480
24567	Staten Island	3090
24568	McNab	1586
24569	Laguna Heights	1832
24570	Indian Heights	257
24571	Boncarbo	205
24572	Sylvanite	1185
24573	Hilliard	2141
24574	Hilliard	100
24575	Sylva	1807
24576	Rosati	1303
24577	Lake Shangrila	2582
24578	Underwood	605
24579	Underwood	1012
24580	Underwood	2318
24581	Underwood	2763
24582	Underwood	2282
24583	Underwood	3016
24584	Hymer	934
24585	Belleair	2785
24586	Smith	1898
24587	Trujillo Alto	1605
24588	Ropesville	97
24589	Woodmoor	3228
24590	Tina	2228
24591	Matlock	744
24592	Matlock	2926
24593	Low Moor	2896
24594	Low Moor	777
24595	Belgium	2036
24596	Belgium	608
24597	Grazierville	804
24598	Minquadale	2563
24599	New Sharon	278
24600	New Sharon	2669
24601	Eden Roc	1488
24602	Beavercreek	566
24603	Knauertown	90
24604	Mount Baldy	721
24605	Angleton	1984
24606	Lapel	2044
24607	Hagan	1652
24608	Fork Mountain	1396
24609	Phelan	721
24610	Alden Bridge	1635
24611	Kellnersville	626
24612	Pronto	320
24613	Salem Lakes	2582
24614	Edgemont Park	287
24615	Agate	1876
24616	Weesatche	2583
24617	Maize	887
24618	Stillings	1851
24619	Seymourville	2694
24620	Woodmont	2409
24621	Ocean Pines	1759
24622	Panora	3257
24623	Buffalo Gap	1061
24624	Buffalo Gap	3059
24625	West Bend	476
24626	West Bend	3202
24627	Port Clarence	717
24628	Osseo	91
24629	Osseo	854
24630	Osseo	304
24631	Dering Harbor	940
24632	Baldwyn	2096
24633	Sherwin	432
24634	Normanna	981
24635	Sicily Island	3248
24636	North Sultan	99
24637	Carolina Shores	2395
24638	Highspire	1369
24639	Cadley	2313
24640	Coryville	1217
24641	Van Wyck	1137
24642	Blakeley	2246
24643	Blakeley	1467
24644	Kopperl	340
24645	Aristocrat Ranchettes	1101
24646	Nyac	2260
24647	Benicia	2867
24648	Shannon Hills	104
24649	Bessemer City	2835
24650	North Crows Nest	678
24651	Cornelius	465
24652	Cornelius	2177
24653	Elkport	1942
24654	Big Bend City	661
24655	Ranchitos Las Lomas	817
24656	Ashport	606
24657	Kiahsville	2607
24658	Mosby	1541
24659	Mosby	3001
24660	Castleberry	3270
24661	Mosca	2892
24662	Lewisville	1107
24663	Lewisville	2452
24664	Lewisville	2772
24665	Lewisville	2796
24666	Lewisville	1008
24667	Lewisville	2326
24668	Lewisville	1980
24669	Lewisville	2358
24670	Turnersville	2626
24671	Excelsior Estates	63
24672	Leominster	1760
24673	Central Aguirre	2259
24674	Twin City	301
24675	Rivanna	2829
24676	Walnut Cove	347
24677	Beach Glen	2877
24678	Grinnell	1338
24679	Grinnell	2265
24680	Cusseta	1342
24681	Cusseta	1025
24682	Smolan	103
24683	Flourtown	731
24684	Democrat	2496
24685	Montverde	1331
24686	Hollyhill	2268
24687	Brookridge	3274
24688	Montgomeryville	731
24689	Tira	3252
24690	McClave	1998
24691	Grand River	2484
24692	Grand River	1328
24693	Barker	2910
24694	Wilburton Number One	1079
24695	Anaktuvuk Pass	1801
24696	Jarrettsville	2959
24697	Walled Lake	2663
24698	Frederic	2547
24699	Frederic	1418
24700	Lennox	1191
24701	Lennox	404
24702	Epworth Heights	1241
24703	West Fairview	83
24704	North Beach	2983
24705	Tiro	1412
24706	Estell Manor	2617
24707	Sugarcreek	2990
24708	Sugarcreek	2552
24709	Honeydew	319
24710	Oregon	1870
24711	Oregon	749
24712	Oregon	1978
24713	Oregon	2942
24714	Northbrook	761
24715	Northbrook	2075
24716	Northbrook	90
24717	Armona	861
24718	Oldham	1707
24719	Villa	2496
24720	Pecos	1781
24721	Pecos	1039
24722	Herscher	2870
24723	Hannastown	2385
24724	Shellsburg	1639
24725	Au Train	2767
24726	Mount Clemens	1481
24727	Flagler	2197
24728	Lennon	2451
24729	Bolivia	2395
24730	La Grulla	166
24731	Brantwood	1357
24732	Port Austin	342
24733	Halstead	3123
24734	Leavenworth	1699
24735	Leavenworth	1409
24736	Leavenworth	276
24737	Armonk	1919
24738	Crownsville	2440
24739	Jonesborough	467
24740	Emerald	649
24741	Oakland City	3115
24742	Inger	2777
24743	Saint Johnsbury	2765
24744	Woodmore	2064
24745	Fiskdale	1760
24746	Raywick	680
24747	Seaboard	470
24748	Seaboard	312
24749	Shelly	529
24750	New Concord	338
24751	New Concord	1426
24752	Royal Palm Estates	3071
24753	Trinity Village	317
24754	Maunawili	1878
24755	Saint Johnsburg	2910
24756	Ellzey	1455
24757	Carneiro	293
24758	Rose Valley	2809
24759	Rose Bud	1905
24760	Tea	1191
24761	Balcones Heights	1083
24762	Heimdal	2916
24763	Topaz Lake	2825
24764	Bertha	2649
24765	Prince George	1714
24766	Lake Placid	2909
24767	Lake Placid	2742
24768	Floydada	269
24769	Bottineau	1717
24770	Pawleys Island	1209
24771	Vale Summit	1497
24772	Molalla	3223
24773	Moffat	384
24774	Moffat	1958
24775	South Pittsburg	679
24776	D'Hanis	827
24777	Cornwell	89
24778	Cornwell	2909
24779	Stuckey	2429
24780	Trabuco Canyon	3140
24781	Fennville	2908
24782	Paw Paw Lake	1767
24783	Auburn Hills	2663
24784	Tougaloo	1046
24785	Soap Lake	1125
24786	Knightdale	1399
24787	Bigbee Valley	1962
24788	Sisseton	3241
24789	North Marysville	99
24790	Swanquarter	2837
24791	Topeka Junction	67
24792	Sierra Blanca	1438
24793	Waconia	1037
24794	Gulf Park Estates	1822
24795	Maybrook	3137
24796	Kerrtown	1417
24797	East Liberty	2184
24798	North Cape May	1994
24799	Purdon	881
24800	Faulkton	2944
24801	Seattle	3217
24802	Marblemount	1422
24803	Guion	1633
24804	Fruitland	2067
24805	Fruitland	2428
24806	Fruitland	2619
24807	Fruitland	1702
24808	Fruitland	2479
24809	Fruitland	657
24810	Fruitland	2929
24811	Fruitland	1148
24812	Fruitland	2651
24813	Akiachak	2260
24814	Roseland	3102
24815	Roseland	432
24816	Roseland	2744
24817	Roseland	169
24818	Roseland	1790
24819	Roseland	2114
24820	Roseland	1297
24821	Rockville Centre	101
24822	New Albin	2555
24823	Hedwigs Hill	745
24824	Reiffton	362
24825	Gulf Shores	1988
24826	Victorville	721
24827	State Road	2707
24828	Bay Point	3143
24829	Malin	759
24830	Narragansett Pier	478
24831	White Bird	1458
24832	Austwell	2919
24833	Dry Run	2135
24834	Dry Run	2075
24835	Pinewood Estates	2389
24836	North Tustin	3140
24837	Willernie	480
24838	Beulah Valley	2030
24839	Ransomville	2910
24840	Dorseyville	2632
24841	East Highland Park	59
24842	East Berlin	1298
24843	Talladega Springs	1407
24844	Reganton	572
24845	Hunker	2385
24846	Shawnee Hills	2806
24847	Reeves	440
24848	Reeves	879
24849	Ossian	2624
24850	Ossian	2915
24851	Glen Echo Park	3196
24852	South Lead Hill	252
24853	Benwood	2461
24854	Alvord	1147
24855	Alvord	139
24856	Indianola	3211
24857	Indianola	1088
24858	Indianola	2632
24859	Indianola	1279
24860	Indianola	319
24861	Indianola	2204
24862	Indianola	2308
24863	Indianola	1035
24864	Indianola	2036
24865	Indianola	1048
24866	Herald Harbor	2440
24867	Winger	2543
24868	Plainwell	2908
24869	Alburnett	944
24870	Port Lavaca	1279
24871	Campbell Station	1818
24872	Hammondville	1752
24873	Hanna City	2456
24874	Michigan	273
24875	Stoutsville	2357
24876	Stoutsville	406
24877	Vestal Center	1153
24878	West Dennis	1162
24879	Clam Lake	382
24880	Fox Run	789
24881	Delta	960
24882	Delta	2152
24883	Delta	2714
24884	Delta	853
24885	Delta	2056
24886	Delta	2619
24887	Delta	1797
24888	Delta	1533
24889	Register	1445
24890	West Athens	404
24891	Crosstown	1843
24892	North Fairfield	341
24893	Normandy	867
24894	Normandy	3196
24895	Normandy	2953
24896	Dunkirk	3112
24897	Dunkirk	414
24898	Dunkirk	2388
24899	Dunkirk	2866
24900	Dunkirk	2983
24901	Weed Heights	142
24902	Ponce Zona Urbana	459
24903	Mathews	1802
24904	Mathews	1574
24905	Aguila	3086
24906	Spanish Springs	2332
24907	Grubbs	1818
24908	South Holland	761
24909	Warrensburg	1269
24910	Warrensburg	2302
24911	Warrensburg	3158
24912	Larue	1645
24913	Harlem	2691
24914	Harlem	1074
24915	Harlem	2017
24916	Harlem	1403
24917	East Los Angeles	404
24918	Pelahatchie	2370
24919	Staplehurst	167
24920	Haileyville	3211
24921	Brazil	1526
24922	Horse Creek	264
24923	Berwyn	3064
24924	Berwyn	761
24925	Berwyn	90
24926	Owaneco	2949
24927	Desloge	230
24928	Lee Vining	3160
24929	Peeples Valley	2495
24930	Barnum	780
24931	Barnum	2590
24932	Riceville	256
24933	Riceville	3254
24934	Riceville	1417
24935	Riceville	1270
24936	Roxie	2137
24937	Inverness	1088
24938	Inverness	195
24939	Inverness	1515
24940	Inverness	453
24941	Inverness	761
24942	Inverness	799
24943	Inverness	2362
24944	Sweet Water	1080
24945	Conasauga	2541
24946	Fall City	3217
24947	Yorketown	278
24948	Mila Doce	1353
24949	Beverly Beach	1696
24950	Beverly Beach	2440
24951	Old Ocean	1984
24952	Center Hill	1478
24953	Center Hill	1905
24954	Center Hill	513
24955	Merrimac	1062
24956	Merrimac	739
24957	Merrimac	1344
24958	Silvana	99
24959	Kirtland	2929
24960	Kirtland	1328
24961	Malmo	3236
24962	Malmo	2300
24963	Brookside	2877
24964	Brookside	2563
24965	Brookside	969
24966	Brookside	987
24967	Brookside	1591
24968	Eglon	1048
24969	Jerico	698
24970	Rhinelander	3239
24971	Millsap	931
24972	Orrin	1924
24973	Kechi	887
24974	Wakpala	2296
24975	Saint George	2509
24976	Saint George	1092
24977	Saint George	2698
24978	Saint George	554
24979	Saint George	2033
24980	Saint George	1974
24981	Saint George	472
24982	Micco	2189
24983	Wrightsville	1271
24984	Wrightsville	375
24985	Wrightsville	853
24986	Renovo	2902
24987	Mohler	1195
24988	Saint Joseph	2813
24989	Saint Joseph	532
24990	Saint Joseph	1598
24991	Saint Joseph	267
24992	Saint Joseph	1709
24993	Saint Joseph	3130
24994	Saint Joseph	865
24995	Saint Joseph	1767
24996	Saint Joseph	2947
24997	Saint Joseph	519
24998	Spragueville	1821
24999	Easley	367
25000	Austinville	2404
25001	Rolette	1860
25002	Purdum	1406
25003	Calavo Gardens	2381
25004	Beech Bluff	2045
25005	Aguas Claras	1308
25006	Corryton	583
25007	Port Dickinson	1153
25008	KÄ«hei	2438
25009	Coxton	1898
25010	Goodman	1728
25011	Goodman	204
25012	Goodman	2278
25013	Frankclay	230
25014	Unity Village	1826
25015	Tabor	2877
25016	Tabor	2543
25017	Tabor	2786
25018	Tabor	967
25019	Balta	1924
25020	Nogales	1361
25021	Leadington	230
25022	Merriman	2016
25023	San Luis Rey	2381
25024	Greenback	2734
25025	Canistota	2343
25026	Larto	3248
25027	Harlan	443
25028	Harlan	1602
25029	Harlan	1184
25030	Harlan	1898
25031	Harlan	187
25032	PÄpaÊ»ikou	1488
25033	South Park View	997
25034	Salkum	2533
25035	Longfellow	1693
25036	Longfellow	2474
25037	Moss Landing	2955
25038	Myron	1633
25039	Fort Atkinson	2624
25040	Fort Atkinson	994
25041	Amherst Junction	1636
25042	Meadow Vale	997
25043	Kurtz	1809
25044	Beulah Beach	1511
25045	Holiday Shores	2054
25046	Palm Harbor	2785
25047	Laguna	1769
25048	Mill Spring	2611
25049	Mill Spring	2537
25050	Duque Comunidad	1619
25051	Tonsina	3172
25052	Old Town	392
25053	Old Town	2394
25054	Urbandale	2539
25055	Mahtowa	780
25056	Casselman	131
25057	Coosa	266
25058	Bealeton	3224
25059	Masthope	1177
25060	Alarka	1034
25061	Bulger	483
25062	Sicard	243
25063	Platte Center	1850
25064	Buckeystown	3153
25065	Hawesville	1971
25066	Thawville	1955
25067	Forrest	387
25068	Forrest	1253
25069	West Louisville	437
25070	Hodgkins	761
25071	Orrum	2256
25072	Sanibel	2101
25073	Bar Harbor	1970
25074	Laredo Ranchettes	817
25075	Fivepointville	1139
25076	Stites	1458
25077	Bridge City	3139
25078	Bridge City	1005
25079	Tok	1561
25080	Southwest	2385
25081	Tom	229
25082	Greenbank	1220
25083	Longton	163
25084	Ulster	416
25085	Waukau	2690
25086	Northcrest	702
25087	Natalia	827
25088	Parrish	1349
25089	Parrish	2834
25090	Pojoaque	1750
25091	Swift	877
25092	Hunters Hollow	843
25093	Sligo	297
25094	Sligo	1635
25095	Gideon	430
25096	Gideon	1857
25097	Fence Lake	1769
25098	Hedley	952
25099	Laurel Hill	2726
25100	Laurel Hill	2038
25101	Laurel Hill	2405
25102	Laurel Hill	1685
25103	Portland	79
25104	Portland	2551
25105	Portland	3204
25106	Portland	2491
25107	Portland	2492
25108	Portland	1596
25109	Portland	414
25110	Portland	314
25111	Portland	1547
25112	Portland	3056
25113	Portland	3214
25114	Portland	2775
25115	Portland	1613
25116	Portland	2862
25117	Portland	96
25118	Guinea	2893
25119	Roebuck	3162
25120	Corbin	2492
25121	Corbin	1305
25122	Corbin	996
25123	Maloy	2700
25124	Foscoe	3213
25125	Napier Field	674
25126	New Freedom	853
25127	Woodsboro	3153
25128	Woodsboro	2919
25129	Renova	1565
25130	Glen Jean	2564
25131	Fannett	1003
25132	New Lenox	875
25133	Nashua	698
25134	Nashua	3168
25135	Nashua	869
25136	Nashua	627
25137	Estancia	1625
25138	Johnson Lane	2825
25139	Nellysford	272
25140	East Foothills	2198
25141	Sonnette	210
25142	Purdin	946
25143	Shell Rock	782
25144	Merced	1985
25145	Mossville	2456
25146	Stetsonville	1065
25147	Seffner	868
25148	Baldwin	1498
25149	Baldwin	1599
25150	Baldwin	2490
25151	Baldwin	101
25152	Baldwin	2632
25153	Baldwin	2884
25154	Baldwin	2680
25155	Baldwin	1821
25156	Baldwin	1332
25157	Baldwin	649
25158	Baldwin	2146
25159	Kiowa	3211
25160	Kiowa	1740
25161	Kiowa	1876
25162	Kiowa	2024
25163	Merrimon	1182
25164	Little Cedar	1474
25165	Potterville	1063
25166	Potterville	2764
25167	Laurel Mountain Park	2385
25168	Hurlock	2508
25169	Shokan	1952
25170	Enterprise	2693
25171	Enterprise	2329
25172	Enterprise	767
25173	Enterprise	1316
25174	Enterprise	1212
25175	Enterprise	615
25176	Enterprise	3248
25177	Enterprise	472
25178	Enterprise	814
25179	Mercer	2010
25180	Mercer	2005
25181	Mercer	2045
25182	Mercer	1863
25183	Mercer	2282
25184	Pinland	1064
25185	Thermopolis	311
25186	Graham	2810
25187	Graham	1925
25188	Graham	2683
25189	Graham	214
25190	Graham	1509
25191	Graham	2252
25192	Maryland Heights	3196
25193	Tiburones	1908
25194	Copper Harbor	3125
25195	Aulne	681
25196	Southard	1404
25197	Southard	278
25198	Dillingham	2270
25199	Dillingham	2019
25200	Amalga	2709
25201	East Freehold	278
25202	Richlands	329
25203	Richlands	1776
25204	Meadowbrook Terrace	1532
25205	Dragoon	3232
25206	Chatcolet	3083
25207	Meadow Woods	3141
25208	Matheny	1027
25209	Tanaina	150
25210	Highwoods	678
25211	Fort Seneca	2262
25212	Picnic Point	99
25213	Beaverdale	1482
25214	Beaverdale	3032
25215	Alburg	962
25216	Star City	830
25217	Star City	369
25218	Star City	1194
25219	Sandy Spring	740
25220	Seaton	2004
25221	Seaton	1958
25222	Chickaloon	150
25223	Camp Wood	2876
25224	Dunmore	3057
25225	Dunmore	1243
25226	Stockdale	1173
25227	Stockdale	483
25228	Stockdale	2938
25229	Eggleston	1364
25230	Waukee	522
25231	Bethel Island	3143
25232	Pettisville	2714
25233	Willow Ranch	1771
25234	Greenville	2353
25235	Greenville	2047
25236	Greenville	2636
25237	Greenville	2031
25238	Greenville	3011
25239	Greenville	1503
25240	Greenville	2611
25241	Greenville	556
25242	Greenville	267
25243	Greenville	2563
25244	Greenville	1537
25245	Greenville	929
25246	Greenville	485
25247	Greenville	1216
25248	Greenville	2010
25249	Greenville	3215
25250	Greenville	1882
25251	Greenville	869
25252	Greenville	1261
25253	Greenville	1356
25254	Greenville	787
25255	Greenville	2995
25256	Greenville	1852
25257	Greenville	3127
25258	Experiment	2148
25259	Saylorsburg	2351
25260	Le Claire	2239
25261	Pearce	3232
25262	Palmetto	2715
25263	Palmetto	2834
25264	Palmetto	2967
25265	Hawaiian Beaches	1488
25266	Elkton	342
25267	Elkton	2650
25268	Elkton	2814
25269	Elkton	2084
25270	Elkton	1432
25271	Elkton	652
25272	Elkton	1051
25273	Elkton	109
25274	Elkton	1662
25275	Elkton	1365
25276	Applegate	445
25277	Applegate	1808
25278	Applegate	2289
25279	Delia	1815
25280	Warda	2567
25281	Gretna	2441
25282	Gretna	1005
25283	Gretna	1014
25284	Gretna	456
25285	Finesville	2306
25286	La Parguera Comunidad	1763
25287	Langworthy	3019
25288	Guinda	709
25289	Port Sulphur	2473
25290	Laurelton	504
25291	Pearcy	2446
25292	Slick	755
25293	Burchard	140
25294	Burchard	1255
25295	Sleepy Hollow	177
25296	Sleepy Hollow	1919
25297	Sleepy Hollow	322
25298	Sleepy Hollow	721
25299	Salt Wells	3012
25300	Delhi	1671
25301	Delhi	2804
25302	Delhi	2853
25303	Delhi	1985
25304	Delhi	205
25305	Delhi	2805
25306	Delhi	1250
25307	Newberry Springs	721
25308	Pismo Beach	2207
25309	Corbet	881
25310	Joshua Tree	721
25311	Malta	2382
25312	Malta	1755
25313	Malta	1557
25314	Malta	117
25315	Tonica	2507
25316	May City	2158
25317	Hamilton	1721
25318	Hamilton	2072
25319	Hamilton	2355
25320	Hamilton	2854
25321	Hamilton	146
25322	Hamilton	601
25323	Hamilton	278
25324	Hamilton	2210
25325	Hamilton	2886
25326	Hamilton	3076
25327	Hamilton	3118
25328	Hamilton	2418
25329	Hamilton	1422
25330	Hamilton	1117
25331	Hamilton	1969
25332	Hamilton	2908
25333	Hamilton	2042
25334	Hamilton	683
25335	Hamilton	687
25336	Hamilton	785
25337	Blue Ridge Manor	997
25338	Balko	1881
25339	Radium	3022
25340	Radium	2470
25341	Radium	1319
25342	Morris Plains	2877
25343	Plandome Manor	101
25344	Point MacKenzie	150
25345	Shipshewana	599
25346	Barnesville	891
25347	Barnesville	1530
25348	Barnesville	740
25349	Barnesville	1591
25350	Skyway	3217
25351	Warba	2777
25352	Tolar	1678
25353	Tolar	1933
25354	Lakeridge	2825
25355	Frostburg	1497
25356	White Church	3184
25357	Bally	362
25358	Tangerine	3141
25359	West Baraboo	1344
25360	Cloudcroft	344
25361	PÄkalÄ Village	2209
25362	Burchinal	1596
25363	Hazlehurst	794
25364	Hazlehurst	2295
25365	Orrstown	2135
25366	Esperanza	1518
25367	Coyote Wells	153
25368	Schoenchen	825
25369	Camino	1594
25370	Brusly	2994
25371	Mitiwanga	1511
25372	Melcher-Dallas	687
25373	Paynes	3147
25374	Old Brookville	101
25375	Byrne	2060
25376	Crisfield	128
25377	Fort Motte	1285
25378	Bourg	910
25379	LaPlace	1995
25380	Morita	258
25381	Aurora	3195
25382	Aurora	677
25383	Aurora	2078
25384	Aurora	1290
25385	Aurora	534
25386	Aurora	109
25387	Aurora	1637
25388	Aurora	154
25389	Aurora	3209
25390	Aurora	2947
25391	Aurora	322
25392	Aurora	2812
25393	Aurora	1147
25394	Aurora	2023
25395	Aurora	1961
25396	Aurora	438
25397	Aurora	2468
25398	Cadott	660
25399	Draketown	2577
25400	Delft	3122
25401	Pleasantville	1919
25402	Pleasantville	406
25403	Pleasantville	2563
25404	Pleasantville	2990
25405	Pleasantville	687
25406	Pleasantville	2617
25407	Hiller	2574
25408	Fall River Mills	2883
25409	Snyder	113
25410	Snyder	1992
25411	Snyder	956
25412	Snyder	3193
25413	Rifle	3003
25414	Blevins	1586
25415	Byron	3100
25416	Byron	3009
25417	Byron	2269
25418	Byron	2451
25419	Byron	2723
25420	Byron	3143
25421	Byron	1258
25422	Byron	1978
25423	Elmendorf	1083
25424	Boulder Creek	1362
25425	Nenana	1462
25426	Smith Center	1602
25427	Raemon	2256
25428	Raoul	2884
25429	Slaty Fork	1243
25430	Gallina	2725
25431	Jacobus	853
25432	Hartland	1713
25433	Hartland	3192
25434	Hartland	130
25435	Hartland	308
25436	Hartland	2483
25437	Hartland	2426
25438	Hartland	1551
25439	Monteagle	679
25440	Southdown	910
25441	Keener	286
25442	Keener	1163
25443	McGonigle	785
25444	Swink	895
25445	Swink	345
25446	Keenes	2610
25447	Bouse	2638
25448	South Boardman	2439
25449	Chappaqua	1919
25450	Vega Baja Zona Urbana	1996
25451	Canadys	2109
25452	Cathlamet	2445
25453	Navarino	2827
25454	Bayard	2918
25455	Bayard	3257
25456	Bayard	1127
25457	Bayard	1128
25458	Fulshear	1890
25459	Brevard	822
25460	Plumerville	1573
25461	Chicken	1561
25462	Bradley Beach	278
25463	Chevy Chase Heights	2147
25464	Meyer	1474
25465	Lucas Valley	1515
25466	Deweyville	1421
25467	Deweyville	1233
25468	Barnhart	993
25469	Barnhart	2169
25470	North Adams	2672
25471	North Adams	304
25472	Keokee	2103
25473	Gallion	1011
25474	Sorum	1134
25475	Germantown	190
25476	Germantown	476
25477	Germantown	1073
25478	Germantown	3266
25479	Germantown	1885
25480	Germantown	740
25481	Germantown	2898
25482	Germantown	737
25483	Montandon	2963
25484	Caylor	2103
25485	Royal	1537
25486	Royal	2111
25487	Royal	519
25488	Choptank	2894
25489	Harlow	2400
25490	Canadohta Lake	1417
25491	Vanlue	1972
25492	Jeisyville	2949
25493	Bacavi	3161
25494	Wernersville	362
25495	South Naknek	1013
25496	San Pierre	1655
25497	Palmer Park	2064
25498	Cramerton	2835
25499	Bear Rocks	2574
25500	Milford Mill	1498
25501	Tye	1061
25502	Karnack	619
25503	Ronkonkoma	940
25504	Garden City	2137
25505	Garden City	2606
25506	Garden City	101
25507	Garden City	1444
25508	Garden City	2387
25509	Garden City	199
25510	Garden City	1086
25511	Garden City	2746
25512	Garden City	2322
25513	Garden City	3220
25514	Garden City	2490
25515	Garden City	1101
25516	Garden City	2660
25517	Garden City	3178
25518	Garden City	1631
25519	Garden City	157
25520	Turnerville	2884
25521	Turnerville	1186
25522	Sweet Grass	2866
25523	Olivia	2702
25524	Olivia	222
25525	Estero	2101
25526	Tolna	273
25527	May Creek	99
25528	May Creek	3172
25529	Green Valley Farms	1832
25530	Blue Ridge Shores	57
25531	Blue Berry Hill	981
25532	Delco	1238
25533	Timberlane	1005
25534	Timberlane	249
25535	Dixon	329
25536	Dixon	2725
25537	Dixon	3036
25538	Dixon	75
25539	Dixon	2867
25540	Dixon	2098
25541	Dixon	2239
25542	Dixon	2237
25543	Dixon	2593
25544	Dixon	371
25545	Cranell	2919
25546	West Carthage	995
25547	Poudre Park	831
25548	Hughesville	1770
25549	Hughesville	2145
25550	Hughesville	2860
25551	Hughesville	335
25552	Scott	1271
25553	Scott	1565
25554	Scott	2769
25555	Scott	1585
25556	Scott	2984
25557	Alderdale	149
25558	Swiss Alp	2567
25559	White Apple	2137
25560	Sandersville	3020
25561	Sandersville	490
25562	Twin Valley	529
25563	Tununak	2260
25564	East Danville	2924
25565	Green Grass	200
25566	MacArthur	1634
25567	Fish Lake	2792
25568	Paint Creek	2281
25569	Kawaihae	1488
25570	Waltham	95
25571	Waltham	1432
25572	Waltham	3219
25573	Wallins Creek	1898
25574	Thorofare	2626
25575	New Plymouth	2479
25576	Forada	2819
25577	Nesco	2617
25578	Westcreek	2815
25579	Nordland	989
25580	Slackwoods	2009
25581	Salinas	2259
25582	Salinas	2955
25583	Viola	2304
25584	Viola	2960
25585	Viola	887
25586	Viola	1674
25587	Viola	819
25588	Viola	2883
25589	Viola	1071
25590	Viola	216
25591	Viola	2004
25592	Viola	1258
25593	Viola	2716
25594	Viola	944
25595	West Salem	2612
25596	West Salem	3130
25597	West Salem	1650
25598	Uncas	1366
25599	Chisholm	2124
25600	Chisholm	3195
25601	Chisholm	2985
25602	Monkstown	630
25603	Blythewood	1675
25604	Dyersburg	2553
25605	Natural Dam	1415
25606	Cypress Quarters	676
25607	Bunceton	158
25608	Keenan	734
25609	Greatwood	1890
25610	Pylesville	2959
25611	Willard	565
25612	Willard	2327
25613	Willard	2180
25614	Willard	451
25615	Willard	2940
25616	Willard	2562
25617	Willard	457
25618	Willard	341
25619	Willard	1421
25620	Willard	1625
25621	Aspen Springs	3160
25622	Pike View	1240
25623	Dennison	1997
25624	Dennison	2319
25625	Dennison	2552
25626	Union Gap	3268
25627	Highland Falls	3137
25628	Glenpool	2906
25629	New Braunfels	611
25630	Crab Orchard	1634
25631	Crab Orchard	1190
25632	Crab Orchard	77
25633	Crab Orchard	1274
25634	Crab Orchard	123
25635	Holiday Island	2223
25636	Truro	2051
25637	Eastvale	3210
25638	Eastvale	1883
25639	Sharonville	2075
25640	Minooka	2505
25641	Lochsloy	99
25642	Southern View	695
25643	Blauvelt	2960
25644	Micro	1165
25645	Cass City	1486
25646	Star Harbor	2652
25647	Bridge Creek	2493
25648	Bull Hollow	2808
25649	Roanoke	2452
25650	Roanoke	1999
25651	Roanoke	2681
25652	Roanoke	1564
25653	Roanoke	3251
25654	Roanoke	3069
25655	Roanoke	2683
25656	Winterhaven	153
25657	Tuntutuliak	2260
25658	Camas Valley	2814
25659	Hetland	1707
25660	Arroyo Gardens	1832
25661	Dover Beaches North	2627
25662	Blairsden	3011
25663	La Rose	2466
25664	Pipe Creek	2917
25665	Tollhouse	937
25666	Mulhall	2182
25667	Fairfield Glade	77
25668	Timberlake	176
25669	Timberlake	1960
25670	Timberlake	1328
25671	Pine Plains	3031
25672	Soudersburg	1139
25673	Choudrant	1202
25674	Sapelo Island	1043
25675	Piedra	3086
25676	Oak Trail Shores	1933
25677	Kissee Mills	753
25678	Prompton	2605
25679	Phoenix Lake	2798
25680	Cranbury	94
25681	Barney	1056
25682	Barney	1673
25683	Laingsburg	2451
25684	Oliver	2823
25685	Oliver	2192
25686	Oliver	424
25687	Oliver	2574
25688	Lake Milton	2839
25689	Barnes	481
25690	White Castle	2694
25691	Barnet	2765
25692	Olivet	1757
25693	Olivet	2628
25694	Olivet	2036
25695	Olivet	1156
25696	Olivet	2390
25697	Olivet	2764
25698	Lukachukai	932
25699	Valley Bend	2678
25700	Arapahoe	968
25701	Arapahoe	2287
25702	Arapahoe	1609
25703	Arapahoe	2255
25704	Kellerville	965
25705	Delway	286
25706	Kinderlou	3067
25707	Sunfield	1842
25708	Sunfield	2764
25709	La Pine	3246
25710	North River Shores	2212
25711	Lidgerwood	1673
25712	Snook	820
25713	High Springs	132
25714	Brown City	445
25715	Elkader	1942
25716	Shorewood Forest	2498
25717	Kendallville	3229
25718	Ceres	1941
25719	Saint Paris	520
25720	Pocono Springs	2605
25721	Rosston	775
25722	Rosston	1783
25723	Rosston	1793
25724	North Omak	1874
25725	Atolia	721
25726	Glen Burnie	2440
25727	Willow Glen	2402
25728	La Fontaine	1245
25729	Rancho Cucamonga	721
25730	New Llano	225
25731	Pearson	2032
25732	Pearson	2639
25733	Pearson	3276
25734	Pearson	3250
25735	Robbinsville	2009
25736	Robbinsville	2012
25737	Manilla	1408
25738	Manilla	2514
25739	Westmoreland	3238
25740	Westmoreland	2491
25741	Westmoreland	2033
25742	Gautier	1822
25743	Moffit	2146
25744	Cottage Hills	2054
25745	Wild Cherry	2716
25746	Hill 'n Dale	3274
25747	Dixie	663
25748	Dixie	1056
25749	Dixie	2989
25750	Dixie	2668
25751	Dixie	1347
25752	Dixie	1458
25753	Yscloskey	2298
25754	Floodwood	3195
25755	Rockmart	2544
25756	Fort Ransom	1773
25757	Vayas	459
25758	Nettie	1347
25759	Sandy Beach	1510
25760	Kings Point	1322
25761	Kings Point	101
25762	Woodlawn Heights	2044
25763	South Sioux City	2865
25764	Saint Regis Falls	2131
25765	Walhalla	747
25766	Walhalla	643
25767	Walhalla	2418
25768	Rutledge	2809
25769	Rutledge	2489
25770	Rutledge	118
25771	Rutledge	980
25772	Rutledge	1358
25773	Rutledge	2727
25774	New England	573
25775	Alleman	2539
25776	Pisek	2633
25777	Tremont	1777
25778	Tremont	2826
25779	Tremont	137
25780	Cedar Slope	308
25781	RincÃ³n Zona Urbana	2448
25782	Dill City	757
25783	Capron	1015
25784	Capron	249
25785	Capron	2477
25786	Normantown	2216
25787	Kelleys Island	1511
25788	Schoharie	2416
25789	Pocono Mountain Lake Estates	3038
25790	Dyess	938
25791	West Farmington	2946
25792	Sunnyvale	2198
25793	Sunnyvale	525
25794	BenÃ­tez Comunidad	396
25795	Wylliesburg	1507
25796	Hermiston	1544
25797	Saint Lucas	2565
25798	Hurstville	1821
25799	Sand Point	1145
25800	Avoca	2195
25801	Avoca	3080
25802	Avoca	1645
25803	Avoca	920
25804	Avoca	2887
25805	Avoca	2641
25806	Avoca	3022
25807	Avoca	531
25808	Avoca	3181
25809	Avoca	3016
25810	Cedar Hill	751
25811	Cedar Hill	2929
25812	Cedar Hill	525
25813	Cedar Hill	993
25814	Mineville	2742
25815	Donaldson	2689
25816	Donaldson	2857
25817	Donaldson	2826
25818	Robert Lee	645
25819	Oak Hill	3050
25820	Oak Hill	1411
25821	Oak Hill	2564
25822	Oak Hill	409
25823	Oak Hill	2162
25824	Oak Hill	1531
25825	Oak Hill	2760
25826	Oak Hill	1828
25827	Oak Hill	814
25828	Dickson	2434
25829	Dickson	2560
25830	Willoughby	1328
25831	Boxholm	247
25832	Lake Zurich	1326
25833	Tacna	2113
25834	Nopal	2160
25835	Farrsville	1233
25836	Ponderosa	971
25837	Ponderosa	308
25838	Lead Hill	252
25839	Walnut Bottom	83
25840	Dustin Acres	263
25841	Roseworth	1402
25842	Holiday Valley	2323
25843	Tendal	2056
25844	Menchalville	626
25845	Fair Lawn	1572
25846	Willapa	1306
25847	Halltown	534
25848	Forest River	2633
25849	Middleville	1597
25850	Middleville	625
25851	RincÃ³n	2448
25852	Weippe	3198
25853	Cedar Point	2507
25854	Cedar Point	1182
25855	Cedar Point	934
25856	Vandling	3057
25857	Foster Brook	1217
25858	King Arthur Park	579
25859	Califon	1491
25860	Ranger	1463
25861	Ranger	879
25862	Brushy	1140
25863	Grace	2380
25864	Grace	461
25865	Cleta	2279
25866	Tallula	403
25867	Fallbrook	2381
25868	Milligan	701
25869	Milligan	2038
25870	Cleona	1493
25871	La Alianza	2087
25872	Kirkersville	3255
25873	Mindoro	3130
25874	Canyon Lake	611
25875	Canyon Lake	3210
25876	Green Valley Lake	721
25877	Little Sioux	616
25878	North Bonneville	2843
25879	Cleone	1053
25880	Dollar Bay	2065
25881	Cinebar	2533
25882	Byram	408
25883	Byram	1046
25884	Bendersville	1298
25885	Spearman	1520
25886	Waldport	1184
25887	Coal City	1634
25888	Coal City	2505
25889	Coal City	1044
25890	HÄliÊ»imaile	2438
25891	Keizer	677
25892	Becker	3272
25893	Becker	2444
25894	Becker	100
25895	Hampton Bays	940
25896	East End	104
25897	Stroudsburg	2351
25898	Royce	507
25899	Las Ochenta	2259
25900	Disautel	1874
25901	Bennett Springs	2904
25902	Fredericktown	483
25903	Fredericktown	2055
25904	Fredericktown	588
25905	Union Creek	1808
25906	Finzel	310
25907	Burdette	938
25908	Chippewa Park	2184
25909	Stilesville	1891
25910	Lamesa	2998
25911	South Corning	2887
25912	Idmon	2328
25913	Oilmont	2866
25914	Rancho Santa Fe	2381
25915	Jayton	218
25916	Powhatan Point	1591
25917	Sauk Village	761
25918	Whitehouse Station	1491
25919	Bermuda Run	2912
25920	Rio Dell	319
25921	Moraine	737
25922	Pueblito del Rio	800
25923	Grady	986
25924	Grady	812
25925	Grady	729
25926	Grady	1194
25927	Cadogan	775
25928	Byesville	3048
25929	Kezar Falls	1703
25930	Dieringer	1925
25931	Moquino	1769
25932	Tocito	2929
25933	Dover Beaches South	2627
25934	South Carthage	1604
25935	Mililani Town	1878
25936	Comanche	2848
25937	Comanche	332
25938	Comanche	2511
25939	Atco	2977
25940	Minerva	2176
25941	Minerva	238
25942	Minerva	748
25943	Kirklin	2897
25944	Leonardtown	2580
25945	Tualatin	465
25946	Aspermont	2155
25947	Goessel	681
25948	East Walpole	2618
25949	Nicoma Park	958
25950	San Isidro Comunidad	396
25951	Grand Cane	1311
25952	Porter Center	2910
25953	Unalaska	1974
25954	Kingdom City	2551
25955	Yermo	721
25956	West Siloam Springs	2808
25957	Cheneyville	2402
25958	Sugar City	2060
25959	Sugar City	1167
25960	New Richmond	1027
25961	New Richmond	1241
25962	New Richmond	649
25963	New Richmond	725
25964	Morehead	603
25965	Morehead	864
25966	Bordeaux	1849
25967	Watford City	916
25968	Cactus Flat	2013
25969	Trail City	200
25970	Albright	1961
25971	Bowen	1969
25972	Liborio Negron Torres	2406
25973	Cedonia	657
25974	Cut Off	1574
25975	Verplanck	1919
25976	Haralson	2766
25977	Fort Gibson	2731
25978	Winslow	959
25979	Winslow	2977
25980	Winslow	956
25981	Winslow	1169
25982	Winslow	471
25983	Winslow	1500
25984	Winslow	3161
25985	Shopton	1441
25986	Cleora	2808
25987	Sugartown	1727
25988	Falkirk	2282
25989	Leakey	2876
25990	Natural Bridge	152
25991	Natural Bridge	995
25992	Natural Bridge	2970
25993	Grandview Heights	2141
25994	Piney Park	2130
25995	McVille	273
25996	McVille	3121
25997	Atlasburg	483
25998	Washoe City	2332
25999	Gantt	2575
26000	Gantt	2031
26001	Aten	65
26002	Minatare	1016
26003	Weatherby Lake	1851
26004	Harman	2811
26005	Harman	2678
26006	North Key Largo	2348
26007	Montmorenci	646
26008	Montmorenci	596
26009	Stedman	76
26010	Lake San Marcos	2381
26011	North Pole	209
26012	Nashotah	2426
26013	East Cleveland	1695
26014	East Cleveland	708
26015	Sea Ranch Lakes	2729
26016	Seaside Heights	2627
26017	Brant Lake	1327
26018	Little Ferry	1572
26019	Atascadero	2207
26020	Blacksville	830
26021	Vigo Park	423
26022	Wedges Corner	1326
26023	Cape Girardeau	2619
26024	Upper Preston	3217
26025	Reedsville	1961
26026	Reedsville	1449
26027	Reedsville	626
26028	Reedsville	2474
26029	Mifflinville	1079
26030	Jennings	3196
26031	Jennings	2077
26032	Jennings	1254
26033	Jennings	2486
26034	Jennings	2736
26035	Jennings	310
26036	Jennings	3069
26037	Pole Ojea Comunidad	1682
26038	Fruitville	1236
26039	Checotah	1042
26040	Ocean	1497
26041	Samburg	346
26042	Huckabay	1545
26043	Allandale	814
26044	Derby Line	1436
26045	Ballplay	1163
26046	Sioux City	3024
26047	Canning	3052
26048	Snydertown	2963
26049	Dallas Center	522
26050	Huber	2911
26051	Chamblee	1751
26052	Stoneboro	2010
26053	Divernon	695
26054	Pletcher	126
26055	Armington	1777
26056	Armington	2334
26057	Tuluksak	2260
26058	Carbon Cliff	1363
26059	Brecon	2075
26060	San Marino	404
26061	Veradale	1431
26062	Shindler	1191
26063	Henderson	2497
26064	Henderson	2329
26065	Henderson	2459
26066	Henderson	2501
26067	Henderson	1623
26068	Henderson	1290
26069	Henderson	2894
26070	Henderson	3034
26071	Henderson	2451
26072	Henderson	2655
26073	Henderson	852
26074	Henderson	88
26075	Henderson	743
26076	Henderson	584
26077	Henderson	2116
26078	Henderson	460
26079	Henderson	995
26080	Independence Hill	1323
26081	Rands	1277
26082	Lawndale	2181
26083	Lawndale	857
26084	Lawndale	404
26085	Lawndale	627
26086	McDougal	1534
26087	McAlpin	3124
26088	Manatee Road	1455
26089	Ashford	1925
26090	Ashford	2117
26091	Granite City	2054
26092	East Syracuse	2979
26093	Glenville	1713
26094	Glenville	1451
26095	Glenville	1807
26096	Glenville	2316
26097	Glenville	1919
26098	Glenville	2284
26099	Glenville	408
26100	Sharptown	2122
26101	Sharptown	2628
26102	Sharptown	2067
26103	Ulm	1225
26104	Ulm	2334
26105	Ulm	1589
26106	Kidron	2612
26107	Tustin	2159
26108	Tustin	3140
26109	Tustin	1210
26110	Imboden	539
26111	Chandler	2195
26112	Chandler	3086
26113	Chandler	391
26114	Chandler	1188
26115	Chandler	2652
26116	Coulee	354
26117	South Whitley	1304
26118	Tingley	2700
26119	Camp Nelson	308
26120	Lochearn	1498
26121	Wallowa	2693
26122	Vernon Hills	1326
26123	Lemon Grove	2250
26124	Lemon Grove	2381
26125	Fate	2985
26126	Isle of Palms	905
26127	Dripping Springs	1378
26128	Dripping Springs	2808
26129	Wind Lake	426
26130	Fielding	1421
26131	Elmdale	1061
26132	Elmdale	164
26133	Elmdale	934
26134	Genoa City	1094
26135	Post Oak Bend City	2361
26136	Old Glory	2155
26137	Playa Fortuna	2447
26138	Tilghman	1160
26139	Phoenicia	1952
26140	Percilla	2118
26141	Battle Lake	2763
26142	Coburn	2871
26143	Coburn	393
26144	Richmond Heights	1705
26145	Richmond Heights	3196
26146	Richmond Heights	708
26147	Big Horn	1225
26148	New Seabury	1162
26149	Hobucken	2255
26150	Coburg	1403
26151	Coburg	732
26152	Coburg	1446
26153	Jeffersonton	656
26154	McLain	563
26155	Viburnum	1865
26156	Sholes	2604
26157	Sehili	932
26158	MÄÊ»alaea	2438
26159	Irwinville	1371
26160	Burdett	2737
26161	Burdett	1256
26162	Conkling Park	3087
26163	American Falls	2657
26164	Yatesville	2641
26165	Yatesville	67
26166	Kirkman	187
26167	Mercer Island	3217
26168	Warriors Mark	2550
26169	Bronaugh	227
26170	Putnamville	2752
26171	Smeltertown	2676
26172	Arenas Valley	1128
26173	Relampago	1353
26174	Grass Range	2061
26175	Lakeville	2864
26176	Lakeville	386
26177	Lakeville	3102
26178	Lakeville	1990
26179	South Plains	269
26180	Rosa SÃ¡nchez Comunidad	280
26181	Parcelas PeÃ±uelas Comunidad	2086
26182	Jonesville	1120
26183	Jonesville	304
26184	Jonesville	1495
26185	Jonesville	1553
26186	Jonesville	150
26187	Jonesville	3248
26188	Jonesville	503
26189	Jonesville	2103
26190	Grand Chenier	1831
26191	Harkers Island	1182
26192	Lafayette	1889
26193	Lafayette	2769
26194	Lafayette	1342
26195	Lafayette	739
26196	Lafayette	441
26197	Lafayette	596
26198	Lafayette	2267
26199	Lafayette	3143
26200	Lafayette	554
26201	Lafayette	237
26202	Lafayette	3157
26203	Lafayette	363
26204	Gnadenhutten	2552
26205	Atka	1974
26206	Wiley Ford	974
26207	Boulder Flats	968
26208	Port Wakefield	3101
26209	Ingersoll	2269
26210	Alta Sierra	1784
26211	Bardstown	274
26212	Black River Village	348
26213	Flower Hill	101
26214	North Port	1236
26215	Wilber	106
26216	Bustamante	2781
26217	Fort Scott	1569
26218	Lower Kalskag	2260
26219	Remsenburg	940
26220	King Salmon	1013
26221	Kibler	1415
26222	McCoys Corner	1889
26223	Mystic Island	2627
26224	Emmalane	343
26225	Jemez Pueblo	971
26226	Lakeland Village	3210
26227	Smithfield	840
26228	Smithfield	1006
26229	Smithfield	3225
26230	Smithfield	1111
26231	Smithfield	1595
26232	Smithfield	2712
26233	Smithfield	2709
26234	Smithfield	2574
26235	Smithfield	1165
26236	Copenhagen	2529
26237	Saucier	617
26238	Pelland	296
26239	Ocean View	1887
26240	Sedalia	710
26241	Sedalia	2860
26242	Sedalia	2815
26243	Sedalia	2897
26244	Sedalia	1071
26245	Chepachet	929
26246	Juliette	2359
26247	Upham	170
26248	Upham	3191
26249	Williamsfield	584
26250	Ballardvale	2745
26251	Mooreton	1673
26252	Avawam	1844
26253	Onego	302
26254	Rahway	502
26255	Windsor Heights	2539
26256	Windsor Heights	1069
26257	Haddam	481
26258	Oak Park	761
26259	Oak Park	1644
26260	Oak Park	2663
26261	Oak Park	3221
26262	Oak Park	301
26263	Felida	2326
26264	Haddonfield	2977
26265	La Playa Comunidad	1375
26266	Chums Corner	1592
26267	Blandburg	3032
26268	Castle Pines North	2815
26269	Barling	3128
26270	Sallis	3121
26271	Princes Lakes	1264
26272	Mouser	2272
26273	Rock Springs	3093
26274	Rock Springs	576
26275	Rock Springs	1344
26276	Rock Springs	2495
26277	Rock Springs	2377
26278	Rock Springs	3150
26279	Calera	195
26280	Calera	70
26281	Geistown	3032
26282	New Stanton	2385
26283	Greenway	2520
26284	Greenway	1534
26285	Ellensburg	400
26286	Cold Bay	1145
26287	Lanham	2064
26288	Brothers	3246
26289	Wheeless	2199
26290	Mousie	1522
26291	Parma Heights	708
26292	Sugar Tree Ridge	2924
26293	Chardon	1899
26294	Dale City	321
26295	New Deal	300
26296	New Deal	2491
26297	Pajaro	2955
26298	Vinco	3032
26299	Shay	775
26300	Shaw	3195
26301	Shaw	603
26302	Shaw	1565
26303	Pleasant Run Farm	2075
26304	Kinta	1180
26305	Thompson Springs	1152
26306	Loch Lloyd	3178
26307	Brackett	1710
26308	Parkway	2130
26309	Parkway	2688
26310	Readington	1491
26311	Benevolence	2682
26312	Talihina	2263
26313	Herlong	2799
26314	Belden	3011
26315	Belden	65
26316	Belden	2096
26317	Belden	354
26318	Inniswold	1381
26319	Sturgeon	250
26320	Sturgeon	2632
26321	Stouchsburg	362
26322	Usk	1031
26323	Sanborn	1885
26324	Sanborn	2341
26325	Sanborn	1976
26326	Sanborn	2910
26327	Sanborn	1250
26328	Mathiston	2591
26329	Wilberforce	566
26330	Shungnak	2907
26331	Brownell	3023
26332	Edmundson Acres	263
26333	Ranlo	2835
26334	Mishawaka	3102
26335	Saint Elmo	2569
26336	Unga	1145
26337	Tumwater	2190
26338	Tundra	1804
26339	Corcoran	91
26340	Corcoran	861
26341	Potomac Park	1497
26342	Pajonal Comunidad	1219
26343	Tompkinsville	2347
26344	Ute	3000
26345	Warren Park	678
26346	Adamsville	1882
26347	Adamsville	338
26348	Adamsville	1417
26349	Adamsville	987
26350	Adamsville	3245
26351	Adamsville	1647
26352	Little Sturgeon	1708
26353	HaleÊ»iwa	1878
26354	Jellico	178
26355	Hoot Owl	1884
26356	Moorcroft	1019
26357	Castle Hayne	254
26358	Keithsburg	431
26359	Keithsburg	2004
26360	Kempton	362
26361	Kempton	1683
26362	Kempton	232
26363	Harmon	824
26364	Harmon	2098
26365	Harmon	1379
26366	Harmon	2234
26367	Kiblah	2703
26368	Cuyuna	704
26369	BoquerÃ³n Comunidad	1682
26370	Christiana	2671
26371	Christiana	1139
26372	Christiana	2563
26373	Salmon Creek	1790
26374	Salmon Creek	2326
26375	Sleetmute	2260
26376	Symerton	875
26377	Lower Grand Lagoon	902
26378	Sapello	1039
26379	Murillo Colonia	1353
26380	Range	2547
26381	Range	3270
26382	Maggie Valley	2556
26383	Shelbiana	1172
26384	PepeÊ»ekeo	1488
26385	Keeler	2411
26386	Niagara	1728
26387	Niagara	2655
26388	Niagara	1581
26389	Wildersville	2653
26390	Cokeburg	483
26391	Gambell	717
26392	Bragg City	2383
26393	Depauw	618
26394	Amorita	2269
26395	Orderville	323
26396	Tumalo	3246
26397	Schurz	977
26398	Pond Eddy	1946
26399	San Bruno	1423
26400	Dayton	1080
26401	Dayton	1322
26402	Dayton	261
26403	Dayton	2084
26404	Dayton	2368
26405	Dayton	775
26406	Dayton	737
26407	Dayton	91
26408	Dayton	3107
26409	Dayton	2590
26410	Dayton	1077
26411	Dayton	1977
26412	Dayton	2144
26413	Dayton	596
26414	Dayton	2507
26415	Dayton	179
26416	Dayton	94
26417	Dayton	1225
26418	Dayton	348
26419	Dayton	142
26420	Dayton	363
26421	Bloomingburg	2571
26422	Bloomingburg	1946
26423	Quentin	1493
26424	Foxburg	297
26425	Picacho	1914
26426	Picacho	1199
26427	Weston Lakes	1890
26428	Angiola	308
26429	Gardiner	1952
26430	Gardiner	1500
26431	Gardiner	1749
26432	Gardiner	2814
26433	Encinitas	2381
26434	Holly Pond	2660
26435	Arden	2329
26436	Arden	2563
26437	Arden	3137
26438	Arden	833
26439	Globe	2920
26440	Idaville	2093
26441	Idaville	1904
26442	Idaville	1298
26443	Coalport	1300
26444	Higginson	1905
26445	Geyserville	1790
26446	Poncha Springs	2676
26447	Sandia Park	405
26448	Scotts Hill	2488
26449	Plum Branch	1456
26450	Linglestown	1369
26451	Kaffir	423
26452	Derwood	740
26453	Trowbridge	191
26454	Trowbridge	220
26455	Lake Carmel	2751
26456	Moberly	2681
26457	Woodardville	1762
26458	North City	3217
26459	Hulett	1019
26460	Moonachie	1572
26461	Leisure Knoll	2627
26462	Hermantown	3195
26463	Washington Heights	3137
26464	Los Altos Colonia	817
26465	Robinette	2179
26466	Mimosa Park	1081
26467	Jewell Valley	2811
26468	Comunas Comunidad	280
26469	Honomu	1488
26470	Bonilla	2934
26471	Fishkill	3031
26472	Bivins	3176
26473	Glendale Heights	950
26474	Holts Corner	2465
26475	Pageland	1616
26476	Attu	1974
26477	Dacula	1373
26478	Eagle Mountain	705
26479	Hartsburg	2181
26480	Hartsburg	250
26481	Bavaria	103
26482	Corbin City	2617
26483	Snowmass	399
26484	Salisbury	101
26485	Salisbury	131
26486	Salisbury	2067
26487	Salisbury	863
26488	Salisbury	2745
26489	Salisbury	350
26490	Kurtistown	1488
26491	Pineora	1743
26492	Reed	2655
26493	Reed	1661
26494	Reed	2365
26495	Benderville	639
26496	Painter	3027
26497	Channing	3263
26498	Waseca	2972
26499	Lido Beach	101
26500	Geff	2610
26501	Centralhatchee	936
26502	Dibble	1454
26503	Coral Terrace	1705
26504	Musselshell	2981
26505	Lemmon Valley	2332
26506	Thalia	1858
26507	RÃ­o CaÃ±as Abajo Comunidad	846
26508	Godfrey	2054
26509	Godfrey	118
26510	Lake Arthur Estates	789
26511	Catherine	409
26512	Catherine	3003
26513	Wheeler Springs	3221
26514	Deschutes River Woods	3246
26515	Willacoochee	3250
26516	Fort Indiantown Gap	1493
26517	Oyens	1935
26518	Midland	1497
26519	Midland	3128
26520	Midland	3210
26521	Midland	277
26522	Midland	557
26523	Midland	2901
26524	Midland	759
26525	Midland	1925
26526	Midland	2620
26527	Midland	1010
26528	Midland	2987
26529	Midland	2986
26530	Midland	3224
26531	Midland	1883
26532	Valley City	1170
26533	Valley City	2341
26534	Valley City	828
26535	Walla Walla	2989
26536	Grapevine	1124
26537	Grapevine	3084
26538	Rosslyn Farms	2632
26539	Cattle Creek	3003
26540	Beacon	3031
26541	Beacon	2669
26542	Venango	1135
26543	Venango	1417
26544	Mittie	440
26545	Hatillo	2992
26546	Bothell	3217
26547	Roscoe	919
26548	Roscoe	1709
26549	Roscoe	1946
26550	Roscoe	3035
26551	Roscoe	2691
26552	Roscoe	1009
26553	Roscoe	835
26554	Roscoe	483
26555	Roscoe	186
26556	Onarga	1955
26557	Loma Vista Colonia	166
26558	Munford	1407
26559	Munford	1684
26560	South Lebanon	943
26561	South Lebanon	2312
26562	Addison	950
26563	Addison	1739
26564	Addison	2586
26565	Addison	2887
26566	Addison	469
26567	Addison	2970
26568	Addison	131
26569	Addison	525
26570	Bemus Point	3112
26571	Exeland	2833
26572	Louisville	1007
26573	Louisville	2971
26574	Louisville	238
26575	Louisville	997
26576	Louisville	2267
26577	Louisville	2033
26578	Louisville	2421
26579	Louisville	288
26580	Louisville	1540
26581	Louisville	3181
26582	Sargent	3064
26583	Sargent	2766
26584	Garden Plain	887
26585	Harding	164
26586	Harding	3013
26587	Harding	2618
26588	Harding	1569
26589	Chelan Falls	276
26590	Marlinton	1243
26591	Woodson	375
26592	Woodson	114
26593	Woodson	3185
26594	Windcrest	1083
26595	Saint Helen	68
26596	Filer	1402
26597	Wardsville	722
26598	Costa Mesa	3140
26599	Coatsburg	1291
26600	Fort Myers Shores	2101
26601	Hageman	2312
26602	Westerly	478
26603	Matanuska	150
26604	Topock	829
26605	New Almelo	3033
26606	Norton	3033
26607	Norton	2948
26608	Norton	1725
26609	Windsor Locks	1712
26610	Section	1817
26611	Tappahannock	2743
26612	Medanales	2725
26613	McBean	3091
26614	Archbold	2714
26615	Desert View Highlands	404
26616	Barwick	3029
26617	Cliff Village	1234
26618	Grand Junction	562
26619	Grand Junction	2697
26620	Grand Junction	2433
26621	Grand Junction	2167
26622	Forest Grove	465
26623	Forest Grove	2632
26624	Sunrise	621
26625	Sunrise	1806
26626	Sunrise	2729
26627	Sunrise	2021
26628	Sunrise	1849
26629	Gresham Park	1751
26630	Locust Corner	1241
26631	Ellston	2700
26632	Pine Brook	2877
26633	Tokio	2400
26634	Tokio	1586
26635	Tokio	3099
26636	Pacheco	3143
26637	Reid	492
26638	Idlewild	308
26639	Idlewild	251
26640	Idlewild	1332
26641	Salley	646
26642	Rixford	1217
26643	Rheatown	558
26644	Schaghticoke	2828
26645	Sauk City	1344
26646	Orchard Farm	1082
26647	Deer Park	2075
26648	Deer Park	1326
26649	Deer Park	2157
26650	Deer Park	940
26651	Deer Park	3151
26652	Deer Park	1431
26653	Deer Park	649
26654	Deer Park	145
26655	Deer Park	310
26656	Deer Park	470
26657	Sugarloaf Saw Mill	308
26658	San Mar	492
26659	Swartzville	1139
26660	Tyhee	2863
26661	Strathmere	1994
26662	Hopewell Junction	3031
26663	Piqua	668
26664	Piqua	3025
26665	Lance Creek	3051
26666	Cochituate	95
26667	Chispa	793
26668	Rivesville	686
26669	Oriental	2255
26670	Sargeant	1432
26671	Lakeview	1321
26672	Lakeview	101
26673	Lakeview	2459
26674	Lakeview	1022
26675	Lakeview	1087
26676	Lakeview	3210
26677	Lakeview	1752
26678	Lakeview	306
26679	Lakeview	1925
26680	Lakeview	2729
26681	Lakeview	1356
26682	Lakeview	2184
26683	Lakeview	2331
26684	Lakeview	623
26685	Ridge Farm	2036
26686	White Plains	2707
26687	White Plains	1919
26688	White Plains	1283
26689	White Plains	567
26690	White Plains	335
26691	White Plains	3253
26692	Conrath	2500
26693	South Acton	95
26694	Winstonville	1565
26695	Jamaica Beach	2523
26696	Sidell	2036
26697	Moscow Mills	1201
26698	Moose Creek	209
26699	North English	3081
26700	Rogers City	2238
26701	Shaktoolik	717
26702	Mexia	2790
26703	Ponsford	2458
26704	Coquille	772
26705	Notasulga	3156
26706	Lares	3085
26707	Tarrant	987
26708	Gardner	2250
26709	Gardner	1272
26710	Gardner	1760
26711	Gardner	2505
26712	Gardner	3180
26713	Gardner	2961
26714	Gardner	2402
26715	Old River-Winfree	1343
26716	Surfside Beach	3220
26717	Surfside Beach	1984
26718	Hidden Timber	2648
26719	Gallipolis Ferry	743
26720	Kingsport	1948
26721	Great Neck Estates	101
26722	Citronelle	1301
26723	Benton Harbor	1767
26724	Hilmar	1985
26725	Ceiba Comunidad	707
26726	West Fork	471
26727	Modale	616
26728	Glen Cove	101
26729	Machias	1370
26730	Machias	99
26731	Machias	469
26732	Brisbin	1300
26733	Meadows	1296
26734	Coolville	741
26735	Faust	1622
26736	Pine Castle	3141
26737	Silver Valley	897
26738	Langeloth	483
26739	Waukon	1195
26740	Waukon	2555
26741	Coral Gables	1705
26742	Kinnelon	2877
26743	Lynnfield	2745
26744	Burgoon	1340
26745	Cinco Bayou	2038
26746	East Milton	758
26747	Webb City	3044
26748	Webb City	1154
26749	Webb City	2126
26750	Steger	761
26751	Batesland	1774
26752	Olivarez	1353
26753	Tabor City	1238
26754	Omo Ranch	1594
26755	Kersey	162
26756	Kersey	1101
26757	Kanauga	1739
26758	Fosters	1911
26759	Quitman	2340
26760	Quitman	1056
26761	Quitman	2810
26762	Quitman	3276
26763	Quitman	1827
26764	Quitman	1212
26765	Gilberton	2826
26766	Gilberton	1048
26767	Newtown Grant	2634
26768	Yorkville	1913
26769	Yorkville	2957
26770	Yorkville	3238
26771	Yorkville	3116
26772	Yorkville	426
26773	Yorkville	1591
26774	Sebring	2909
26775	Sebring	2839
26776	Suwannee	2394
26777	Burntfork	3093
26778	Whitley City	2268
26779	Bassville Park	1331
26780	Van	1804
26781	Van	2623
26782	Van	246
26783	Galeton	715
26784	Galeton	1101
26785	Fenwick Island	1887
26786	Griggstown	129
26787	Longview	198
26788	Longview	2371
26789	Longview	2526
26790	Longview	951
26791	Longview	519
26792	Atlantic Highlands	278
26793	Teutopolis	1742
26794	Yonah	1903
26795	Anon Raices Comunidad	459
26796	La Crosse	1464
26797	La Crosse	2792
26798	La Crosse	2515
26799	La Crosse	132
26800	La Crosse	2178
26801	La Crosse	3130
26802	Embudo	2725
26803	Molyneaux Corners	2910
26804	Boling	3047
26805	Niarada	1761
26806	Rayville	63
26807	Rayville	1671
26808	Kellner	1636
26809	Troutman	422
26810	Samaria	3240
26811	Amelia Court House	2419
26812	New Beaver	540
26813	Geneva-on-the-Lake	462
26814	Miami Heights	2075
26815	Medicine Mound	2696
26816	Remy	1140
26817	Seahurst	3217
26818	Brownsdale	758
26819	Brownsdale	1432
26820	Horns	1413
26821	Manhattan Beach	704
26822	Manhattan Beach	404
26823	VÃ¡zquez Comunidad	2259
26824	Niederwald	2853
26825	Oelwein	2565
26826	East Hartford	1712
26827	Cape May Point	1994
26828	Sunland Park	1242
26829	Hoschton	1829
26830	Anguilla	592
26831	San Lorenzo	1556
26832	San Lorenzo	1128
26833	San Lorenzo	3163
26834	Jayuya	3164
26835	Saint Gabriel	2694
26836	Abbott	1658
26837	Abbott	2794
26838	Abbott	2249
26839	Abbott	351
26840	Abbott	452
26841	Snowball	576
26842	Grapeview	744
26843	Smith River	1468
26844	Hanley Falls	2635
26845	Ranchito	1930
26846	Chandler Springs	1407
26847	Morgans Point	145
26848	Keauhou	1488
26849	Dallesport	149
26850	Bordelonville	1975
26851	Brady Lake	1637
26852	Fruitland Park	1331
26853	Murphy City	1329
26854	Geuda Springs	2492
26855	Finley Point	1322
26856	Poulsbo	1048
26857	Udell	1621
26858	Grovespring	2292
26859	Saint Michaels	932
26860	Saint Michaels	1160
26861	Batson	2389
26862	Allakaket	1462
26863	Copperton	2637
26864	Corrigan	2540
26865	Rieth	1544
26866	Lakemoor	3192
26867	Lovilia	2354
26868	Rena	1415
26869	Nilwood	712
26870	Belltown	3210
26871	Beulaville	3126
26872	Royersford	731
26873	Elfers	1915
26874	Brackenridge	2632
26875	Denbigh	3191
26876	Alsip	761
26877	Rachal	1055
26878	Stella Niagara	2910
26879	Beckley	1634
26880	Reno	2332
26881	Reno	2494
26882	Reno	1699
26883	Reno	489
26884	Reno	893
26885	Reno	2115
26886	Reno	3127
26887	Norton Shores	1485
26888	Millwood	3262
26889	Millwood	1919
26890	Millwood	2385
26891	Millwood	1431
26892	Millwood	1550
26893	Cumings	1890
26894	Copan	468
26895	Nowata	3203
26896	Comptche	1053
26897	East Sonora	2798
26898	Largo	2785
26899	Largo	1505
26900	Largo	2064
26901	Johnfarris	269
26902	Lakemont	2001
26903	Lakemont	804
26904	Lauderdale-by-the-Sea	2729
26905	Englevale	1773
26906	Englevale	1414
26907	Auxvasse	2551
26908	Annapolis	1865
26909	Annapolis	2440
26910	Annapolis	1410
26911	Annapolis	1048
26912	Wauconda	1326
26913	Frystown	362
26914	Crown City	1739
26915	Pittsburg	3211
26916	Pittsburg	3143
26917	Pittsburg	123
26918	Pittsburg	3088
26919	Pittsburg	1414
26920	Mertzon	2169
26921	Tallaboa	1030
26922	New Windsor	3137
26923	New Windsor	2004
26924	New Windsor	2232
26925	North Crossett	2862
26926	Roslyn Heights	101
26927	Prices Fork	739
26928	Los Panes Comunidad	1856
26929	Mooresboro	857
26930	Smithtown	940
26931	Chouteau	1884
26932	Saint Marys City	2580
26933	Mound	2056
26934	Mound	91
26935	Sandy Valley	2329
26936	Hanoverton	1662
26937	Tolstoy	713
26938	Skene	1565
26939	Lansdowne	2809
26940	Lansdowne	1498
26941	O'Neals	1563
26942	Killbuck	2277
26943	Negaunee	1058
26944	Taylorville	2949
26945	Meadowview	491
26946	Oxbow	3180
26947	Oxbow	2201
26948	Oxbow	995
26949	Missouri City	1890
26950	Missouri City	1541
26951	Walapai	829
26952	La Plena	2259
26953	South Vinemont	2660
26954	Arden Town	2688
26955	Lower Marlboro	2983
26956	Lower Burrell	2385
26957	Grant City	1837
26958	Edwardsburg	3182
26959	Farson	3093
26960	Farson	2174
26961	Longmont	2267
26962	Francis Mills	2627
26963	Pineola	799
26964	Bovey	2777
26965	Los Alvarez	166
26966	Haile	509
26967	Haile	132
26968	Donald	677
26969	Donald	3268
26970	Friendship	1496
26971	Friendship	3256
26972	Friendship	2440
26973	Friendship	1295
26974	Friendship	2689
26975	Friendship	1811
26976	Friendship	899
26977	Friendship	512
26978	Arnold Line	890
26979	Harmarville	2632
26980	Coulterville	1660
26981	Coulterville	2680
26982	Duxbury	1936
26983	Eastport	2022
26984	Eastport	940
26985	Eastport	1855
26986	Eastport	469
26987	Eastport	173
26988	Hinson	2441
26989	Peetz	2180
26990	Valley Hi	2184
26991	South Hill	1925
26992	South Hill	2178
26993	South Hill	2614
26994	Hatchbend	2771
26995	Alsea	1638
26996	Swarthmore	2809
26997	Woxall	731
26998	Rachel	686
26999	Rachel	1206
27000	Nazlini	932
27001	Lakemore	1725
27002	Lemmon	1134
27003	Jacksonburg	3225
27004	Jacksonburg	785
27005	Valatie	1073
27006	Luce	2763
27007	Meredith	305
27008	Meredith	399
27009	Danube	222
27010	Lanesville	618
27011	Luck	2547
27012	Luck	2041
27013	Hephzibah	3091
27014	Pie Town	2040
27015	Cynthiana	2859
27016	Cynthiana	1173
27017	Cynthiana	621
27018	Alsen	1381
27019	Alsen	1720
27020	Bryson City	1034
27021	Allerton	2608
27022	Allerton	519
27023	Lake Stickney	99
27024	Seagrove	2677
27025	Brooten	1709
27026	Alsey	2243
27027	Lucy	1625
27028	Serena	3248
27029	Dellroy	2229
27030	Gold Point	3194
27031	Jardine	1749
27032	Hiawatha	1721
27033	Hiawatha	3037
27034	Hiawatha	638
27035	Hiawatha	944
27036	Bowdle	835
27037	New Chapel Hill	1603
27038	Lenoir City	2734
27039	Vardaman	1278
27040	South Whittier	404
27041	Yucaipa	721
27042	Massena	3174
27043	Massena	1307
27044	Cayuco Comunidad	2768
27045	Solomons	2983
27046	LopeÃ±o	2781
27047	Latty	2956
27048	Reva	3013
27049	Aquebogue	940
27050	Glen Head	101
27051	Swayzee	1118
27052	Honea Path	1397
27053	Inkom	2863
27054	Minorca	1680
27055	Corinne	1421
27056	Corinne	1027
27057	Ê»Ulupalakua	2438
27058	PeÃ±asco	1930
27059	Le Moyen	2967
27060	Hartford City	900
27061	Hartford City	743
27062	Glen Wilton	2475
27063	Boydston	3073
27064	Walkerton	1654
27065	Walkerton	3102
27066	Manly	1835
27067	Bay View Garden	1999
27068	Bass Harbor	1970
27069	Mimbres	1128
27070	Nisland	764
27071	Halibut Cove	1806
27072	Hockley	145
27073	Hanging Rock	537
27074	Coloma	1767
27075	Coloma	1594
27076	Coloma	1210
27077	Pelican Bay	832
27078	Pelican Bay	3084
27079	City View Heights	785
27080	Lopezville	1353
27081	Desert Edge	3210
27082	Delton	625
27083	Dyersville	1931
27084	Colome	922
27085	Quilcene	989
27086	West Winfield	1597
27087	Burnt Ranch	317
27088	Palmyra	2165
27089	Palmyra	994
27090	Palmyra	1493
27091	Palmyra	705
27092	Palmyra	691
27093	Palmyra	2599
27094	Palmyra	712
27095	Palmyra	795
27096	Palmyra	618
27097	Palmyra	2841
27098	Palmyra	1194
27099	Palmyra	2280
27100	Woodsfield	2358
27101	Saranac	1613
27102	Rawsonville	2281
27103	North Amherst	2922
27104	East Renton Highlands	3217
27105	Upland	2809
27106	Upland	1118
27107	Upland	1316
27108	Upland	721
27109	Upland	2128
27110	Ghent	1634
27111	Ghent	1073
27112	Ghent	140
27113	Ghent	2222
27114	Ghent	1725
27115	Fall River	1078
27116	Fall River	597
27117	Fall River	3076
27118	Taylorstown Station	483
27119	Fritch	1758
27120	New Berlin	1460
27121	New Berlin	504
27122	New Berlin	695
27123	New Berlin	650
27124	New Berlin	2426
27125	Lucerne	311
27126	Lucerne	1101
27127	Lucerne	2755
27128	Lucerne	276
27129	Lucerne	1330
27130	Campo Bonito	1914
27131	Huntington Beach	3140
27132	Lofall	1048
27133	Peaster	931
27134	Broxton	307
27135	Broxton	769
27136	Popponesset Island	1162
27137	Arrow Point	624
27138	Saint Clement	1171
27139	Kennewick	1646
27140	Valmont	2267
27141	Valmont	344
27142	New Site	2933
27143	Parthenon	1232
27144	Ahtanum	3268
27145	Prairie Grove	3192
27146	Prairie Grove	471
27147	Baskin	2785
27148	Baskin	2140
27149	Latta	818
27150	Latta	133
27151	Mount Moriah	620
27152	Harcourt	2590
27153	Myton	2428
27154	Horse Cave	1240
27155	Pineda	2189
27156	Lochbuie	1101
27157	Walnut	1648
27158	Walnut	404
27159	Walnut	2041
27160	Walnut	1704
27161	Walnut	3016
27162	Walnut	1414
27163	Pole Ojea	1682
27164	Concordville	2809
27165	Mackenzie	3196
27166	West Green	769
27167	Bourbonnais	2870
27168	Lastrup	164
27169	Saranap	3143
27170	Ogemaw	244
27171	Lassater	689
27172	Shartlesville	362
27173	Castleton	2588
27174	Castleton	678
27175	Castleton	3201
27176	Hollenberg	481
27177	Coahoma	161
27178	Coahoma	258
27179	Port Barre	2967
27180	Start	1671
27181	Trevlac	632
27182	Starr	2701
27183	Starr	1397
27184	Lake Wisconsin	1078
27185	Upper Arlington	2141
27186	Wegdahl	661
27187	Science Hill	372
27188	Paragonah	1864
27189	Farmersburg	1947
27190	Farmersburg	1942
27191	Fawn Grove	853
27192	Southern Pines	326
27193	Protem	753
27194	Hatton	2152
27195	Hatton	1294
27196	Hatton	538
27197	Hatton	3056
27198	Fox Lake	955
27199	Fox Lake	1326
27200	Fox Lake	1669
27201	Oshoto	1019
27202	Bardwell	1834
27203	Bardwell	823
27204	Readlyn	1873
27205	Quitaque	553
27206	Corinth	2452
27207	Corinth	2869
27208	Corinth	1120
27209	Corinth	1484
27210	Corinth	3205
27211	Corinth	936
27212	South Salem	1919
27213	South Salem	1257
27214	Sunbright	112
27215	Red Lake Falls	569
27216	Epping	2085
27217	Epping	377
27218	Tishomingo	1166
27219	Tishomingo	173
27220	Circle	1374
27221	Circle	1920
27222	Circle	1462
27223	Almont	3188
27224	Almont	1379
27225	Almont	549
27226	Claysville	483
27227	Claysville	3048
27228	Liberty City	2371
27229	Tamarac	2729
27230	Lutcher	1275
27231	Dalkena	1031
27232	Glenbeulah	915
27233	Grass Valley	1784
27234	Grass Valley	2079
27235	Flatwillow	1222
27236	Almond	1496
27237	Almond	1636
27238	Almond	1034
27239	Almond	3276
27240	Friars Point	161
27241	Sheffield	2136
27242	Sheffield	1149
27243	Sheffield	1693
27244	Sheffield	3060
27245	Sheffield	845
27246	Sheffield	2307
27247	Sheffield	1704
27248	Lemoncove	308
27249	Stone Mountain	1751
27250	Sublimity	677
27251	North Bibb	1582
27252	Blaine Hill	2632
27253	Briceville	1396
27254	Joseph City	3161
27255	Ault	1101
27256	Princeton Meadows	94
27257	Spring Ridge	362
27258	Spring Ridge	3153
27259	Rio Rico	1361
27260	Big Lake	1870
27261	Big Lake	2964
27262	Big Lake	1422
27263	Big Lake	2444
27264	Big Lake	150
27265	Standard	2062
27266	Standard	209
27267	Standard	2754
27268	Manvel	1984
27269	Manvel	1581
27270	Moroni	1035
27271	Coldfoot	1462
27272	Medfield	2618
27273	Goodenow	875
27274	Bowden	2678
27275	Valmora	3190
27276	Mettler	263
27277	Lulu	1075
27278	Lookingglass	2814
27279	Nicodemus	2014
27280	Sandstone	1358
27281	Esmond	2400
27282	Esmond	929
27283	Esmond	1755
27284	Harney	212
27285	Harney	1716
27286	Cauthron	2249
27287	Cowansburg	2385
27288	Fairfield Harbour	135
27289	Luke	1085
27290	Luke	1497
27291	Two Harbors	1329
27292	Bowesmont	2418
27293	Clayhatchee	674
27294	Waiehu	2438
27295	Big Bear City	721
27296	Lake Darby	2141
27297	Johns	2370
27298	Joel	2547
27299	Joel	1442
27300	Esmont	2829
27301	Westlake	364
27302	Westlake	708
27303	Westlake	3071
27304	Westlake	3084
27305	Joes	2112
27306	Manor	3050
27307	Manor	1498
27308	Manor	2385
27309	Manor	1550
27310	Saxtons River	3097
27311	Lula	161
27312	Lula	1024
27313	Lula	133
27314	Neches	1395
27315	Stark	603
27316	Chokoloskee	832
27317	Woodloch	734
27318	Mount Vista	2326
27319	Pastoria	3027
27320	Tamaqua	2826
27321	Rheem	3143
27322	House Springs	993
27323	Lackey	270
27324	Siam	1060
27325	Hampstead	2232
27326	Hampstead	451
27327	Parkers Prairie	2763
27328	Glennallen	3172
27329	Pettibone	1479
27330	Gibsonburg	1340
27331	Strausstown	362
27332	Klawock	1345
27333	Lime Lake	1370
27334	Grenada	255
27335	Grenada	337
27336	Highland Heights	708
27337	Highland Heights	179
27338	Nanticoke Acres	2067
27339	Momeyer	3187
27340	Blueberry	2823
27341	Harlem Heights	2101
27342	Prairie City	3039
27343	Prairie City	1117
27344	Prairie City	3131
27345	Prairie City	1134
27346	Martinsville	2319
27347	Martinsville	2901
27348	Martinsville	111
27349	Martinsville	2295
27350	Martinsville	2721
27351	Martinsville	129
27352	Martinsville	749
27353	Martinsville	1666
27354	Broadview Park	2729
27355	Arizona Village	829
27356	Clark Fork	623
27357	Santaquin	705
27358	Anneta	3262
27359	Wellington	3037
27360	Wellington	1142
27361	Wellington	1955
27362	Wellington	1283
27363	Wellington	2774
27364	Wellington	2492
27365	Wellington	831
27366	Wellington	2405
27367	Wellington	997
27368	Wellington	845
27369	Wellington	142
27370	Wellington	3071
27371	Black Mountain	2270
27372	West Bay	902
27373	Manteno	2870
27374	Weeksville	2066
27375	Weeksville	75
27376	Hecker	2356
27377	Holly Springs	1399
27378	Holly Springs	524
27379	Holly Springs	431
27380	Holly Springs	2463
27381	Gardi	2613
27382	Parkerfield	1026
27383	Arena	3080
27384	Wingate	494
27385	Wingate	3150
27386	Wingate	725
27387	Telford	467
27388	Telford	731
27389	Nahma	1798
27390	Valdez	1930
27391	Valdez	205
27392	Valdez	3172
27393	Farrar	2790
27394	Ambridge	1883
27395	Theodore	1301
27396	Saint Louisville	3255
27397	Northwye	1303
27398	Fobes Hill	99
27399	Yabucoa	280
27400	Bluffdale	2637
27401	Rockford	2707
27402	Rockford	3206
27403	Rockford	2691
27404	Rockford	672
27405	Rockford	1431
27406	Rockford	2421
27407	Rockford	265
27408	Rockford	219
27409	Rockford	2007
27410	Rockford	1929
27411	Rockford	2291
27412	Granville	477
27413	Granville	973
27414	Granville	2754
27415	Granville	3191
27416	Granville	830
27417	Granville	2926
27418	Granville	1810
27419	Granville	3255
27420	Granville	2474
27421	Luna	2040
27422	Alice Acres	2803
27423	Arrowhead Springs	3093
27424	Lund	1401
27425	Lund	461
27426	Lund	1864
27427	Mossyrock	2533
27428	Houck	932
27429	Virginia	3195
27430	Virginia	2863
27431	Virginia	1048
27432	Virginia	3206
27433	Virginia	3177
27434	Ochoa	2160
27435	Karluk	3101
27436	Rockcreek	465
27437	Cullen	1507
27438	Cullen	2594
27439	Wynnburg	1324
27440	Inglis	1455
27441	Manti	1035
27442	New Bethlehem	297
27443	East Berwick	2641
27444	Hinesburg	2801
27445	Glenview Hills	997
27446	Port Lions	3101
27447	Sixteen Mile Stand	2075
27448	Craigmont	2534
27449	Montchanin	2563
27450	Chaires	1207
27451	Killen	605
27452	Roebling	2841
27453	Maywood Park	3204
27454	Arnold City	2574
27455	Casitas Springs	3221
27456	Lubbock	300
27457	Dahlonega	151
27458	Pleasant Plain	1001
27459	Pleasant Plain	2312
27460	Downingtown	90
27461	Ali Chuk	1247
27462	Cape Fair	2666
27463	Isle of Hope	1631
27464	Winkelman	2920
27465	Monmouth Beach	278
27466	Minnesott Beach	2255
27467	Hico	1202
27468	Hico	2564
27469	Hico	2072
27470	Narrows	1364
27471	Narrows	2780
27472	Millinocket	392
27473	Perkinsville	2483
27474	Perkinsville	2495
27475	Keene	1266
27476	Keene	916
27477	Keene	56
27478	Keene	202
27479	Keene	263
27480	Keene	1697
27481	Keene	1228
27482	Pembroke Pines	2729
27483	Concession	2473
27484	West Mountain	705
27485	Square Butte	3219
27486	Brush Creek	1604
27487	Brush Creek	2808
27488	Los Luceros	2725
27489	Blue Canyon	2289
27490	Schuylerville	1484
27491	Green Forest	2223
27492	Garey	2107
27493	Grantfork	2054
27494	Sanctuary	931
27495	South Park	1391
27496	Renick	2681
27497	Glassmanor	2064
27498	South Milwaukee	904
27499	Bonners Ferry	2022
27500	Mondovi	2686
27501	Mondovi	1195
27502	Perth Amboy	94
27503	Lankin	2633
27504	Westerville	3064
27505	Westerville	2141
27506	Sloatsburg	2960
27507	Bonetraill	377
27508	Onslow	3019
27509	Dry Lake	2329
27510	Faxon	1770
27511	Faxon	2512
27512	Pueblo of Sandia Village	971
27513	Coto Norte Comunidad	1580
27514	Paradise Beach	2667
27515	Port Armstrong	3026
27516	Lansford	3038
27517	Lansford	1717
27518	Searles	263
27519	Searles	637
27520	Aura	2149
27521	Snapfinger	1751
27522	Colona	2775
27523	Colona	1109
27524	Charles	2216
27525	Pitts	410
27526	Nescatunga	2269
27527	Neilton	2499
27528	West Little River	1705
27529	Ford Heights	761
27530	Tupelo	331
27531	Tupelo	2096
27532	Tupelo	1818
27533	Hough	2272
27534	Ludowici	2274
27535	Coatesville	90
27536	Coatesville	1891
27537	Bowdon	2230
27538	Bowdon	2916
27539	Kings Valley	1638
27540	Ransom Canyon	300
27541	Cliffside Park	1572
27542	Fruit Hill	2075
27543	East Rockaway	101
27544	Watha	451
27545	Matherville	2004
27546	Matherville	2609
27547	Anthonyville	1785
27548	Kasota	3237
27549	Del Monte Forest	2955
27550	Colony	2567
27551	Colony	1394
27552	Colony	1019
27553	Colony	757
27554	South Jordan	2637
27555	Grand Rivers	390
27556	Bloomville	2804
27557	Bloomville	2262
27558	Library	2632
27559	Balaton	140
27560	Camanche Village	2253
27561	Alturas	2545
27562	Alturas	1771
27563	Dry Creek	1561
27564	Dry Creek	430
27565	Dry Creek	1727
27566	Skyline View	1369
27567	Noonday	394
27568	Noonday	1603
27569	Dunnellon	682
27570	Ledyard	1598
27571	Chehalis	2533
27572	Loma Grande Colonia	417
27573	Lutz	868
27574	Omega	1427
27575	Omega	1173
27576	Adjuntas Zona Urbana	3265
27577	Fortine	1185
27578	English Turn	2473
27579	Abita Springs	2905
27580	Elk Springs	1721
27581	Blanket	633
27582	Tobique	3179
27583	Forestdale	987
27584	Forestdale	1162
27585	Cave Spring	2297
27586	Cave Spring	266
27587	Palm Bay	2189
27588	Leilani Estates	1488
27589	Phenix City	1451
27590	Vya	2332
27591	Barbourmeade	997
27592	Lusk	3051
27593	Baileyton	2660
27594	Baileyton	558
27595	Woodinville	3217
27596	Sewickley Heights	2632
27597	Tarlton	1986
27598	Mount Gilead	2846
27599	Mount Gilead	723
27600	Fulks Run	2084
27601	Leadville	1325
27602	Nine Mile Falls	1431
27603	El Segundo	404
27604	Tonet	1566
27605	Sale Creek	2073
27606	Deer Lodge	2913
27607	Ogdensburg	1889
27608	Ogdensburg	1307
27609	Ogdensburg	279
27610	Moonshine Hill	145
27611	West Laurel	2064
27612	Kittitas	400
27613	Los Angeles	2973
27614	Los Angeles	404
27615	Lampeter	1139
27616	Lynnwood	99
27617	Lynnwood	2574
27618	Brookfield	1427
27619	Brookfield	761
27620	Brookfield	946
27621	Brookfield	2977
27622	Brookfield	1760
27623	Brookfield	2426
27624	White Mountain	717
27625	Leando	2430
27626	Blackey	3133
27627	Coppock	1106
27628	Skillman	129
27629	Boomer	2564
27630	Cullom	387
27631	Beckett Ridge	785
27632	Cowpens	3162
27633	Yosemite	1909
27634	Cincinnati	1621
27635	Cincinnati	2075
27636	Sycamore Hills	3196
27637	North Robinson	1412
27638	Big Spring	1295
27639	Big Spring	930
27640	Big Spring	258
27641	Big Spring	492
27642	Big Spring	736
27643	Wheelwright	270
27644	Bardonia	2960
27645	Laymantown	2475
27646	Obert	65
27647	Cimarron City	2182
27648	Rombauer	783
27649	East Chicago	1323
27650	Connorsville	2969
27651	Melbeta	1016
27652	Hinton	1935
27653	Hinton	621
27654	Hinton	2366
27655	Hinton	307
27656	Woodrow	300
27657	Woodrow	483
27658	Woodrow	474
27659	Kunkle	378
27660	Eagle Butte	200
27661	Kobuk	2907
27662	Altus	1811
27663	Altus	2126
27664	Plain Dealing	1635
27665	McWhorter	615
27666	Altamont	231
27667	Altamont	2504
27668	Altamont	759
27669	Altamont	1954
27670	Altamont	2428
27671	Altamont	2826
27672	Altamont	1742
27673	Altamont	924
27674	Altamont	436
27675	Altamont	1799
27676	Monticello	2932
27677	Monticello	1946
27678	Monticello	1381
27679	Monticello	1904
27680	Monticello	2602
27681	Monticello	2368
27682	Monticello	2531
27683	Monticello	3019
27684	Monticello	359
27685	Monticello	530
27686	Monticello	3045
27687	Monticello	407
27688	Monticello	999
27689	Monticello	170
27690	Monticello	1995
27691	Monticello	2291
27692	Goodland	1231
27693	Goodland	832
27694	Goodland	2080
27695	North Highlands	306
27696	North Highlands	2688
27697	Townsend	2422
27698	Townsend	1043
27699	Townsend	2563
27700	Townsend	2421
27701	Townsend	95
27702	Townsend	2776
27703	White Haven	2641
27704	White Haven	1185
27705	Minetto	1262
27706	Nutting Lake	95
27707	Newark	1556
27708	Newark	138
27709	Newark	1147
27710	Newark	2744
27711	Newark	1759
27712	Newark	586
27713	Newark	2563
27714	Newark	2599
27715	Newark	1913
27716	Newark	3255
27717	Huntington Park	404
27718	Denio	320
27719	Watts	1385
27720	North Attleboro	597
27721	Neenah	2690
27722	Anamoose	3191
27723	Perham	2763
27724	Kinsey	2117
27725	Kinsey	3060
27726	Moore Station	2652
27727	Haley	315
27728	CorazÃ³n	2413
27729	Quinault	2499
27730	Caplis	1635
27731	Hilo	1488
27732	Pistol River	811
27733	New Boston	3256
27734	New Boston	2606
27735	New Boston	2004
27736	New Boston	826
27737	Weskan	1686
27738	Weogufka	1929
27739	Halfa	2518
27740	Asher	2032
27741	Hilt	337
27742	Ashtabula	462
27743	Washington	1777
27744	Washington	473
27745	Washington	1454
27746	Washington	215
27747	Washington	484
27748	Washington	2337
27749	Washington	435
27750	Washington	481
27751	Washington	486
27752	Washington	483
27753	Washington	2130
27754	Washington	472
27755	Washington	447
27756	Washington	2306
27757	Washington	1248
27758	Washington	1586
27759	Washington	1288
27760	Washington	1132
27761	Washington	438
27762	Washington	1784
27763	Washington	2967
27764	Rocky Top	1396
27765	Sumter	512
27766	Sumter	515
27767	Sand Lake	219
27768	Mooleyville	930
27769	Newland	1614
27770	Pine Apple	409
27771	Ecorse	2606
27772	Roeville	758
27773	Terrace Park	2075
27774	Banks	465
27775	Banks	1694
27776	Banks	3171
27777	Banks	2658
27778	Banks	1175
27779	Hilton Head Island	439
27780	Kirby	2137
27781	Kirby	311
27782	Kirby	1176
27783	Kirby	1083
27784	Kirby	2233
27785	Kirby	2724
27786	East Stroudsburg	2351
27787	Silt	3003
27788	Okawville	487
27789	Excelsior	91
27790	Excelsior	655
27791	Dallas	2835
27792	Dallas	2315
27793	Dallas	2641
27794	Dallas	1868
27795	Dallas	682
27796	Dallas	2957
27797	Dallas	525
27798	Dallas	2538
27799	East Glenville	979
27800	Laneburg	1783
27801	Maple Shade	2841
27802	Alakanuk	2367
27803	Silo	70
27804	Plainview	1663
27805	Plainview	101
27806	Plainview	2988
27807	Plainview	1927
27808	Plainview	1012
27809	Plainview	2869
27810	Plainview	308
27811	Obetz	2141
27812	Inguadona	3179
27813	Illinois City	1363
27814	Zwingle	1931
27815	Fries	3260
27816	Hiko	1206
27817	Mosses	3065
27818	Houma	910
27819	Crystal Lake Park	3196
27820	Hinesville	3105
27821	Rosa Sanchez	280
27822	Longrun	1157
27823	Johnston City	123
27824	Eucheeanna	1547
27825	Wilbraham	542
27826	Stephan	2838
27827	Spanish Valley	2932
27828	Clarysville	1497
27829	Windom	3122
27830	Windom	630
27831	Windom	1510
27832	Windom	2522
27833	Bozman	1160
27834	Melrude	3195
27835	Rosaryville	2064
27836	Krum	2452
27837	Coldspring	2733
27838	Ohio City	2984
27839	Clearlake	1330
27840	Chesaning	299
27841	Federal	2632
27842	Hettinger	1293
27843	Terra Linda	1515
27844	North Kansas City	1541
27845	Cooksville	837
27846	Cooksville	2283
27847	Wickatunk	278
27848	Comunas	280
27849	Scanlon	780
27850	Newhalem	1983
27851	Val Verde	404
27852	North Atlanta	1751
27853	Newhalen	2011
27854	Sonestown	1950
27855	Omena	2787
27856	Val Verda	2875
27857	Hazel Run	2635
27858	Starbrick	2307
27859	Vineyards	832
27860	The Grove	872
27861	Bendon	180
27862	De Lancey	2804
27863	West Seneca	1510
27864	Lequire	1180
27865	Chattanooga	2512
27866	Chattanooga	2007
27867	Chattanooga	2073
27868	Norco	3210
27869	Norco	1081
27870	Latimer	2136
27871	Latimer	1822
27872	Latimer	1864
27873	Latimer	2879
27874	Whipple	489
27875	Woodland Hills	997
27876	Woodland Hills	705
27877	Galion	2730
27878	Galion	1412
27879	Losantville	2679
27880	Medulla	2545
27881	Puryear	1108
27882	Sound Beach	940
27883	Wister	2263
27884	McMillin	1925
27885	Weiner	1499
27886	Arnott	1636
27887	Pocalla Springs	515
27888	Spirit Lake	3087
27889	Spirit Lake	1314
27890	Sims	1118
27891	Sims	2936
27892	Sims	730
27893	Sims	2610
27894	Townsville	460
27895	Riddleville	490
27896	Teays Valley	2750
27897	Grand Lake	1831
27898	Grand Lake	1151
27899	Knights Landing	709
27900	Eighty Four	483
27901	Calabasas	404
27902	Mozelle	1957
27903	War	2379
27904	Aiken	269
27905	Aiken	646
27906	Strawberry Plains	985
27907	Way	2052
27908	Shambaugh	1517
27909	Wax	3262
27910	Crown Heights	3031
27911	Bangs	633
27912	Broadhurst	2613
27913	Lemoore	861
27914	Friendswood	2523
27915	Egnar	1040
27916	Heuvelton	1307
27917	Ashby	1122
27918	Ashby	1582
27919	Ashby	1126
27920	Ponemah	546
27921	Pleasant Run	2075
27922	Minnetonka	91
27923	Smiths Station	2102
27924	Denby	1774
27925	North College Hill	2075
27926	Bumpus Mills	1099
27927	Toccoa	2849
27928	Alton	2771
27929	Alton	1398
27930	Alton	305
27931	Alton	2054
27932	Alton	1409
27933	Alton	323
27934	Alton	2905
27935	Alton	1690
27936	Alton	2202
27937	Alton	1353
27938	Alton	796
27939	Alton	2926
27940	Kendall Park	94
27941	Lake Preston	1707
27942	Fairhope	2574
27943	Fairhope	1988
27944	Mouth of Wilson	3260
27945	Garnett	1394
27946	Garnett	1606
27947	Iron City	1629
27948	Iron City	532
27949	West College Corner	496
27950	Newald	1419
27951	Ladner	3013
27952	Monte Alto	1353
27953	Irondale	989
27954	Irondale	1006
27955	Irondale	475
27956	Irondale	1290
27957	Irondale	987
27958	Irondale	1943
27959	Laurel Park	1115
27960	Laurel Park	2651
27961	Stephen	2470
27962	Stirling City	766
27963	High Island	2523
27964	Savage	2246
27965	Savage	261
27966	Savage	2027
27967	Savage	1669
27968	Sarcoxie	3044
27969	Pedricktown	2628
27970	Meadowlakes	1339
27971	Atqasuk	1801
27972	Oglala	1774
27973	Sudden Valley	1983
27974	Dugger	1947
27975	Erose	587
27976	Thomastown	1932
27977	Helena	748
27978	Helena	1307
27979	Helena	1559
27980	Helena	1340
27981	Helena	195
27982	Helena	1677
27983	Helena	2269
27984	Helena	1822
27985	Helena	317
27986	Helena	3264
27987	Helena	2206
27988	Conconully	1874
27989	Potter	2546
27990	Potter	1428
27991	Potter	1610
27992	Potter	1400
27993	Potter	3259
27994	Saint Mary	680
27995	Saint Mary	2631
27996	Saint Mary	1740
27997	Saint Mary	1274
27998	Harpster	2233
27999	Harpster	1458
28000	Luther	958
28001	Luther	1332
28002	Luther	247
28003	Luther	3035
28004	Halls	606
28005	Halls	609
28006	Alborn	3195
28007	Gratiot	3255
28008	Gratiot	2773
28009	Marana	1247
28010	Pondsville	492
28011	Garryowen	2724
28012	House	1253
28013	Norge	2493
28014	Hideout	1792
28015	Island View	1646
28016	Island View	296
28017	Newtonia	1234
28018	Timnath	831
28019	Gully	2543
28020	Lake Minchumina	1462
28021	Dalcour	2473
28022	Wood-Ridge	1572
28023	Cucumber	2379
28024	Dunes City	1446
28025	Joice	1835
28026	Roaring Gap	776
28027	Lorena	702
28028	Almota	1464
28029	Sturgeon Bay	1708
28030	Gouverneur	1307
28031	Rowland	108
28032	Rowland	2256
28033	Goffstown	869
28034	Rosemark	190
28035	Mount Fern	2877
28036	Fair Play	643
28037	Fair Play	2542
28038	McKinley Heights	2946
28039	Tesuque	1750
28040	Rialto	721
28041	Lake Erie Beach	1510
28042	Halma	2857
28043	Zenda	3068
28044	Ugashik	2011
28045	Passaic	792
28046	Passaic	1067
28047	Hallandale Beach	2729
28048	Soldiers Grove	1416
28049	Knollwood	3261
28050	Knollwood	1326
28051	Chesapeake	1467
28052	Chesapeake	534
28053	Chesapeake	537
28054	Chesapeake	2728
28055	Turley	2906
28056	Turley	2929
28057	Winchendon	1760
28058	Alicia	539
28059	Glen Haven	1131
28060	Glen Haven	831
28061	Glen Haven	1751
28062	Budd Lake	2877
28063	Frink	1282
28064	De Tour Village	662
28065	Nanticoke	2641
28066	Nanticoke	2067
28067	Garden City Park	101
28068	Floradale	1298
28069	El Dara	1170
28070	Byer	1828
28071	Lonedell	2130
28072	Dominion	1083
28073	Dominion	2701
28074	Fleischmanns	2804
28075	Hanston	1434
28076	Wibaux	810
28077	Dupuyer	577
28078	Helotes	1083
28079	Meiners Oaks	3221
28080	Altha	1282
28081	Callahan	100
28082	Callahan	337
28083	Quarryville	1139
28084	Hunts Point	3217
28085	Albuquerque	405
28086	Darmstadt	918
28087	Darmstadt	1562
28088	Upper Darby	2809
28089	Garceno	166
28090	West Sacramento	709
28091	Bowie	3232
28092	Bowie	1148
28093	Bowie	1797
28094	Bowie	2064
28095	Breathedsville	492
28096	Modest Town	3027
28097	Cherry Hill Mall	2977
28098	Hyrum	2709
28099	Lynwood	761
28100	Lynwood	404
28101	Cherry Valley	778
28102	Cherry Valley	2691
28103	Cherry Valley	3210
28104	Cherry Valley	789
28105	Cherry Valley	2482
28106	Salesville	1719
28107	Salesville	3048
28108	Salesville	2459
28109	Higganum	96
28110	Memphis	3236
28111	Memphis	190
28112	Memphis	2318
28113	Memphis	1481
28114	Memphis	366
28115	Memphis	1022
28116	Memphis	2727
28117	Memphis	2834
28118	LÄwaÊ»i	2209
28119	Bay Minette	1988
28120	Summersville	2273
28121	Summersville	2369
28122	Summersville	1347
28123	Commodore	2147
28124	Sagaponack	940
28125	Fernbrook	2381
28126	Kenefic	70
28127	Why	1247
28128	Canaseraga	1496
28129	Mogote	1461
28130	Westernport	1497
28131	North Gates	2344
28132	Espino Comunidad	1375
28133	Stockholm	1889
28134	Stockholm	1121
28135	Stockholm	1711
28136	Arnold	3144
28137	Arnold	3195
28138	Arnold	2385
28139	Arnold	2440
28140	Arnold	3064
28141	Arnold	993
28142	Lesage	1979
28143	Halls Gap	1190
28144	Canyon City	1117
28145	Americus	141
28146	Americus	736
28147	Americus	512
28148	Americus	596
28149	Terramuggus	1712
28150	Morganville	411
28151	Morganville	1531
28152	Morganville	278
28153	Loraine	221
28154	Loraine	1291
28155	Loraine	1477
28156	Kimberton	90
28157	McMillan	2971
28158	McMillan	3267
28159	Markleysburg	2574
28160	BayamÃ³n Comunidad	1066
28161	French River	3195
28162	Anahola	2209
28163	Marble Falls	1339
28164	Kiron	1408
28165	Purcell	1454
28166	Purcell	3044
28167	Centropolis	2133
28168	Lucedale	1928
28169	Iron Post	1884
28170	Whittaker	2281
28171	Caballo	170
28172	Ingenio Comunidad	1334
28173	Port Reading	94
28174	Whippany	2877
28175	Virgin	472
28176	Arcola	3118
28177	Arcola	1445
28178	Arcola	443
28179	Arcola	2816
28180	Arcola	412
28181	Arcola	1890
28182	Arcola	485
28183	Eastlawn Gardens	314
28184	Stanleyville	1980
28185	Santa Rosa Colonia	166
28186	Deweese	1535
28187	Hillsborough	3135
28188	Hillsborough	1423
28189	Virgil	322
28190	Virgil	1480
28191	Virgil	3076
28192	Virgil	2934
28193	Clarkdale	394
28194	Clarkdale	2495
28195	Virgie	1172
28196	York Harbor	850
28197	Ellisforde	1874
28198	Emigrant	1749
28199	Burkittsville	3153
28200	Glenrock	3170
28201	Anding	3078
28202	Aberdeen Gardens	2499
28203	Raisin	2800
28204	Cascade Valley	1125
28205	Fifth Street	1890
28206	New Hradec	2968
28207	Old Orchard Beach	850
28208	Wabaunsee	888
28209	Great Neck Gardens	101
28210	Dwale	270
28211	Laura	668
28212	Piffard	386
28213	New Hampshire	3007
28214	Paw Creek	2177
28215	San Pasqual	2381
28216	Crockett	2404
28217	Crockett	3143
28218	Crockett	2118
28219	Tees Toh	3161
28220	East Gaffney	434
28221	Trenton	1106
28222	Trenton	2606
28223	Trenton	2009
28224	Trenton	2650
28225	Trenton	1549
28226	Trenton	2898
28227	Trenton	3116
28228	Trenton	2802
28229	Trenton	3017
28230	Trenton	2709
28231	Trenton	909
28232	Trenton	2506
28233	Trenton	377
28234	Trenton	630
28235	Trenton	411
28236	Trenton	785
28237	Capitanejo Comunidad	846
28238	Lloyd Harbor	940
28239	Las MarÃ­as Zona Urbana	3222
28240	Big Fork	2546
28241	Wasco	263
28242	Wasco	2079
28243	Weber City	2248
28244	Weber City	812
28245	Rattan	1425
28246	Wayne Heights	2135
28247	Whittemore	1598
28248	Whittemore	275
28249	Manns Harbor	842
28250	Tomah	2360
28251	Vernon Valley	1889
28252	Bark River	1798
28253	New Palestine	1967
28254	Dudleyville	1914
28255	Thornhill	997
28256	Kratzerville	2163
28257	Medart	1976
28258	Sky Londa	1423
28259	Towamensing Trails	3038
28260	Oldtown	1052
28261	Oldtown	1497
28262	Oldtown	623
28263	Siasconset	2861
28264	Northwest Harbor	940
28265	Cosby	610
28266	East Douglas	1760
28267	Cliffside	714
28268	Cliffside	2670
28269	Avis	2902
28270	Conneaut Lake	1417
28271	Hartline	1125
28272	Orson	2605
28273	Hoffman	1543
28274	Hoffman	1122
28275	Hoffman	2898
28276	Hoffman	2910
28277	Hoffman	3089
28278	French Camp	590
28279	French Camp	896
28280	Rolling Fork	592
28281	Oak Grove	1407
28282	Oak Grove	1285
28283	Oak Grove	2361
28284	Oak Grove	1826
28285	Oak Grove	1260
28286	Oak Grove	1894
28287	Oak Grove	3118
28288	Oak Grove	467
28289	Oak Grove	431
28290	Oak Grove	2951
28291	Oak Grove	2441
28292	Oak Grove	1254
28293	Oak Grove	779
28294	Oak Grove	1363
28295	Oak Grove	3223
28296	Okauchee	2426
28297	Gayville	836
28298	Augusta Springs	1261
28299	Wilkeson	1925
28300	Brushvale	627
28301	Bucklin	233
28302	Bucklin	946
28303	Delray Beach	3071
28304	Briar Creek	1079
28305	Onekama	2162
28306	Sentinel Butte	2965
28307	Fuller Acres	263
28308	Midas	108
28309	Suffolk	127
28310	Suffolk	2061
28311	Alvin	2036
28312	Alvin	1723
28313	Alvin	1984
28314	Mauldin	2031
28315	Pacific Junction	2497
28316	Sugar Valley	879
28317	North Grosvenor Dale	3098
28318	Bessie	757
28319	ManatÃ­ Zona Urbana	1580
28320	Little Rock	139
28321	Little Rock	375
28322	Little Rock	818
28323	Little Rock	1229
28324	Little Rock	546
28325	Little Rock	1570
28326	Tibbie	470
28327	Hindsville	2049
28328	Clarendon Hills	950
28329	Timber	465
28330	New River	374
28331	New River	415
28332	New River	3086
28333	New River	2242
28334	Dimondale	2764
28335	Burr Ridge	950
28336	Sun City West	3086
28337	Clive	2539
28338	Clive	1622
28339	Grape Creek	3226
28340	Jackpot	108
28341	Sarahsville	3231
28342	Galien	1767
28343	Keokuk	2095
28344	Peach Springs	829
28345	Pawtucket	929
28346	Blodgett	2244
28347	Blodgett	1638
28348	Hato Candal	1676
28349	Jenison	1733
28350	Point Roberts	1983
28351	Rocky Comfort	204
28352	Coal Fork	1467
28353	Cannonsburg	73
28354	Dunn Loring	2405
28355	Lavaca	3128
28356	Montalba	1395
28357	Schenectady	979
28358	Northway	1561
28359	Kampsville	1280
28360	Hawkeye	2565
28361	Owyhee	108
28362	Owyhee	157
28363	Danielsville	2058
28364	West Newton	2385
28365	Mylo	1860
28366	Byng	133
28367	Ravinia	3096
28368	Pottsboro	3261
28369	Duchess Landing	1042
28370	White Center	3217
28371	Southampton	940
28372	Southampton	2634
28373	Cream Ridge	278
28374	Lindenhurst	940
28375	Lindenhurst	1326
28376	Tehachapi	263
28377	Senecaville	3048
28378	Highland Lake	2618
28379	Highland Lake	2420
28380	Vossburg	3040
28381	Eustis	2422
28382	Eustis	1331
28383	Eustis	2091
28384	Stapleton	1007
28385	Stapleton	2188
28386	Stapleton	1988
28387	Prospectville	731
28388	Celestine	1854
28389	Coulee City	1125
28390	Buckley	1925
28391	Buckley	1487
28392	Buckley	1955
28393	Boquillas Crossing	1617
28394	Gibraltar	362
28395	Gibraltar	2606
28396	Del Rey Oaks	2955
28397	Paytes	1896
28398	Wynnedale	678
28399	Belle Haven	3027
28400	Sisco Heights	99
28401	Sabine	1003
28402	Boyes	2558
28403	Germfask	1376
28404	Boyer	1408
28405	Sabina	2901
28406	Harrison City	2385
28407	Convoy	2984
28408	Thousandsticks	1957
28409	Holiday Beach	148
28410	Whale Pass	1345
28411	Ridgeville	2509
28412	Ridgeville	1163
28413	Ridgeville	2679
28414	Adelphia	278
28415	Gridley	766
28416	Gridley	2283
28417	Gridley	1054
28418	Riverwood	997
28419	Moca Zona Urbana	2868
28420	Temecula	3210
28421	Redondo Beach	404
28422	Lee Acres	405
28423	Cove Creek	2556
28424	Mingus	1719
28425	Mamou	62
28426	Imbs	918
28427	Los Pinos	2725
28428	East Dennis	1162
28429	Hawaiian Ocean View	1488
28430	Del Rio	1941
28431	Del Rio	594
28432	Bluefield	1776
28433	Bluefield	2003
28434	Lismore	1090
28435	Annette	1345
28436	Betterton	217
28437	Matewan	673
28438	Edenborn	2574
28439	Paxtonville	2163
28440	Maynardville	497
28441	Ocean Acres	2627
28442	Bayou George	902
28443	Page City	2185
28444	Rio Bravo	817
28445	Los Altos Hills	2198
28446	Cawker City	1476
28447	Maplewood Park	2946
28448	Rio Del Mar	1362
28449	Clear Springs	1460
28450	Clear Springs	1547
28451	McNeill	136
28452	Grama	1242
28453	Boyce	1215
28454	Boyce	2402
28455	Saltville	2410
28456	Shubert	2442
28457	Lonerock	942
28458	District Heights	2064
28459	Myra	2161
28460	West Hamburg	362
28461	Uravan	2662
28462	Beckett	2626
28463	Leflore	255
28464	Leflore	2263
28465	Grant	895
28466	Grant	2882
28467	Grant	440
28468	Grant	2331
28469	Grant	1008
28470	Grant	2472
28471	Grant	1748
28472	Grant	2189
28473	Grant	2388
28474	Grant	480
28475	Grant	1135
28476	Grant	732
28477	Moorland	997
28478	Moorland	2590
28479	La Grande	1925
28480	La Grande	495
28481	Dry Fork	456
28482	Anston	639
28483	Boonsboro	492
28484	Stronghurst	2654
28485	Lancaster	1139
28486	Lancaster	3259
28487	Lancaster	2739
28488	Lancaster	2857
28489	Lancaster	1137
28490	Lancaster	1131
28491	Lancaster	773
28492	Lancaster	404
28493	Lancaster	1510
28494	Lancaster	1246
28495	Lancaster	165
28496	Lancaster	406
28497	Lancaster	1136
28498	Lancaster	525
28499	Kennard Corner	99
28500	Grano	221
28501	Summerland	2107
28502	Summerland	1601
28503	Avon	1891
28504	Avon	2786
28505	Avon	1493
28506	Avon	1709
28507	Avon	845
28508	Avon	386
28509	Avon	842
28510	Avon	2974
28511	Avon	2712
28512	Avon	2709
28513	Avon	2117
28514	Avon	2913
28515	Avon	2570
28516	Boyds	740
28517	Boyds	1150
28518	Milano	2176
28519	Shadwell	2829
28520	Buford	2924
28521	Buford	1477
28522	Buford	377
28523	Buford	1373
28524	Buford	923
28525	Buist	3240
28526	Etter	327
28527	Cairo	2719
28528	Cairo	1367
28529	Cairo	2494
28530	Cairo	556
28531	Cairo	441
28532	Cairo	2681
28533	Cairo	1023
28534	Cairo	336
28535	Coffman	2631
28536	Riceboro	3105
28537	Scotsdale	993
28538	Annetta	931
28539	White Creek	1295
28540	South Webster	3256
28541	Rolling Hills Estates	404
28542	East Hodge	1827
28543	Top-of-the-World	2920
28544	Conifer	992
28545	Sudan	1374
28546	Padonia	638
28547	Longview Heights	198
28548	Walker Mill	2064
28549	Aragon	2040
28550	Aragon	2544
28551	Wills Point	1804
28552	Airport Road Addition	1055
28553	Northvue	789
28554	Golden Gate	2610
28555	Golden Gate	832
28556	Bethel Acres	2032
28557	Pastos Comunidad	2034
28558	Hatfield	1830
28559	Hatfield	2546
28560	Hatfield	2922
28561	Hatfield	731
28562	Hatfield	1939
28563	Hatfield	2373
28564	Kirbyville	3042
28565	Kirbyville	753
28566	Irwindale	404
28567	Henley	722
28568	Milaca	2200
28569	Watkins Glen	2737
28570	Hopland	1053
28571	Saint Paul Park	480
28572	Dellwood	1295
28573	Dellwood	3196
28574	Dellwood	480
28575	Dellwood	1816
28576	Villanova	2809
28577	Spring Arbor	1819
28578	Lochmoor Waterway Estates	2101
28579	Calverton Park	3196
28580	Fuller Heights	2545
28581	Retreat	881
28582	Retreat	1685
28583	Detmold	1497
28584	Burris	968
28585	Burris	300
28586	East Shore	3011
28587	Lincoln	1407
28588	Lincoln	2181
28589	Lincoln	164
28590	Lincoln	2097
28591	Lincoln	2632
28592	Lincoln	1861
28593	Lincoln	1138
28594	Lincoln	471
28595	Lincoln	2289
28596	Lincoln	2146
28597	Lincoln	1199
28598	Lincoln	1193
28599	Lincoln	3134
28600	Lincoln	1195
28601	Lincoln	1643
28602	Lincoln	392
28603	Lincoln	1489
28604	Lincoln	2762
28605	Lincoln	2206
28606	Georgetown	3217
28607	Georgetown	3120
28608	Georgetown	1632
28609	Georgetown	267
28610	Georgetown	1129
28611	Georgetown	2036
28612	Georgetown	1905
28613	Georgetown	408
28614	Georgetown	217
28615	Georgetown	2758
28616	Georgetown	121
28617	Georgetown	2958
28618	Georgetown	1887
28619	Georgetown	2245
28620	Georgetown	1209
28621	Georgetown	2295
28622	Georgetown	636
28623	Georgetown	1530
28624	Georgetown	1883
28625	Georgetown	1594
28626	Big Chimney	1467
28627	Clint	3227
28628	Kangley	3217
28629	Kangley	2507
28630	East Troy	1094
28631	East Troy	416
28632	Tavernier	2348
28633	Mather	561
28634	Danielson	3098
28635	Peaks Mill	2132
28636	Y City	2249
28637	Grain Valley	1826
28638	Tschetter Colony	1757
28639	Gainesville	1028
28640	Gainesville	560
28641	Gainesville	514
28642	Gainesville	1157
28643	Gainesville	321
28644	Gainesville	132
28645	Gainesville	2161
28646	Gainesville	1024
28647	Cheshire	1739
28648	Cheshire	2672
28649	Cheshire	1446
28650	Oxnard	3221
28651	Sarasota	1236
28652	Tunnel Springs	2349
28653	Dillard	2001
28654	Dillard	2814
28655	Dillard	1411
28656	Freeport	1984
28657	Freeport	79
28658	Freeport	101
28659	Freeport	959
28660	Freeport	622
28661	Freeport	2688
28662	Freeport	1709
28663	Freeport	775
28664	Freeport	1547
28665	Freeport	625
28666	Freeport	1794
28667	Pineland	3046
28668	Pineland	2101
28669	Pineland	1033
28670	South Chesconessex	3027
28671	Hawthorne	977
28672	Hawthorne	1919
28673	Hawthorne	404
28674	Hawthorne	132
28675	Hawthorne	792
28676	Clermont	678
28677	Clermont	2565
28678	Clermont	1331
28679	Clermont	1024
28680	Sebree	2593
28681	Yalaha	1331
28682	Silverhill	116
28683	Silverhill	1988
28684	Prairie Creek	1645
28685	Ursine	1206
28686	Chebanse	2870
28687	Mexico Beach	902
28688	Iron Horse	3011
28689	Stoneville	1663
28690	Stoneville	2083
28691	Elkridge	261
28692	Satolah	2001
28693	Reader	1783
28694	Reader	3225
28695	Lockridge	1001
28696	Taloga	201
28697	Raynham Center	597
28698	Corvallis	601
28699	Corvallis	1638
28700	Ursina	131
28701	Amberley	2075
28702	Morrilton	1573
28703	Mountain Creek	126
28704	Redmon	2192
28705	Del Rey	937
28706	Cline	2455
28707	Withamsville	1241
28708	Kennard	1107
28709	Kennard	473
28710	Kennard	2118
28711	Pantano	1247
28712	Johnsonburg	2306
28713	Johnsonburg	162
28714	Pawnee	695
28715	Pawnee	1254
28716	Pawnee	981
28717	Wilson City	939
28718	Nara Visa	1253
28719	Fessenden	2916
28720	San Lucas	2955
28721	Cholame	2207
28722	Augusta	663
28723	Augusta	1889
28724	Augusta	3266
28725	Augusta	3091
28726	Augusta	1710
28727	Augusta	2921
28728	Augusta	1969
28729	Augusta	419
28730	Augusta	1500
28731	Augusta	1082
28732	Augusta	786
28733	Augusta	2206
28734	Knifley	1387
28735	Wauzeka	1416
28736	Peebles	1292
28737	Brunson	1606
28738	Johnson	1464
28739	Johnson	2032
28740	Johnson	283
28741	Johnson	2154
28742	Johnson	448
28743	Johnson	471
28744	Johnson	55
28745	Ingenio	1334
28746	Harold	758
28747	Harold	270
28748	Tilford	1663
28749	Claryville	179
28750	Lealman	2785
28751	Gaylesville	433
28752	Peaceful Valley	1983
28753	Myrtle Springs	1804
28754	Bostonia	2381
28755	Deora	1893
28756	Bloomfield Hills	2663
28757	Wheat Ridge	992
28758	Koshkonong	1690
28759	San Juan Hot Springs	3140
28760	East Hope	623
28761	Miracle Hot Springs	263
28762	Maxton	2256
28763	Sunburg	2457
28764	Dighton	1447
28765	Parrottsville	3146
28766	Trujillo Alto Zona Urbana	1605
28767	Land of Pines	278
28768	Viper	1844
28769	Choate	3264
28770	Rapid Valley	907
28771	Captains Cove	3027
28772	Fandon	3131
28773	Mabton	3268
28774	West Alexandria	241
28775	Harlowton	172
28776	Fifty Lakes	704
28777	Stampley	1002
28778	Clarcona	3141
28779	Belfast	1496
28780	Belfast	1124
28781	Belfast	2598
28782	Belfast	314
28783	Belfast	450
28784	Belfast	2465
28785	La Huerta	348
28786	El Toro	1823
28787	El Toro	3140
28788	Cleveland Heights	708
28789	Lees Summit	1826
28790	Staves	858
28791	Warner Robins	2116
28792	Garrochales	1908
28793	Fort Adams	182
28794	Rural Valley	775
28795	Corum	2848
28796	Sandusky	445
28797	Sandusky	1511
28798	Mirrormont	3217
28799	Parishville	1307
28800	Gratz	1045
28801	Gratz	1369
28802	Lone Tree	2815
28803	Lone Tree	1263
28804	Ansted	2564
28805	East Glacier Park Village	1740
28806	Wye	3149
28807	Fontana	721
28808	Fontana	669
28809	Fontana	1094
28810	Hinsdale	950
28811	Hinsdale	1228
28812	Hinsdale	3168
28813	Triana	2048
28814	Between	1548
28815	Midvale	2637
28816	Midvale	493
28817	Midvale	2552
28818	Midvale	1185
28819	Discovery	3153
28820	Whiteland	1309
28821	Whiteland	1264
28822	Elysian	3237
28823	Tichigan	426
28824	Richville	238
28825	Richville	1307
28826	Richville	2763
28827	San Simeon	2207
28828	Garneill	2061
28829	Montesano	2499
28830	Candelaria	2160
28831	Candelaria	1334
28832	Watchtower	1952
28833	Rafael Gonzalez	2992
28834	Page Manor	737
28835	Latah	1431
28836	Bonita	2730
28837	Bonita	1148
28838	Bonita	2381
28839	Spring Valley Lake	721
28840	Antonia	1129
28841	Trafford	987
28842	Trafford	2385
28843	Tigerville	2031
28844	Coopers Plains	2887
28845	Woodlawn Beach	758
28846	Peggs	430
28847	Lincolndale	1919
28848	Irwin	2870
28849	Irwin	2385
28850	Irwin	612
28851	Irwin	187
28852	Irwin	1137
28853	Irwin	1489
28854	Irwin	1985
28855	Corry	1512
28856	Klukwan	207
28857	Knob Lick	230
28858	Knob Lick	398
28859	Prosit	3195
28860	Ahmeek	3125
28861	Carp Lake	2519
28862	Platinum	2260
28863	Channelview	145
28864	Bystrom	1941
28865	East Las Vegas	2329
28866	Olberg	1914
28867	Chain O' Lakes	279
28868	Shillington	362
28869	Kempner	3245
28870	Lake Dallas	2452
28871	San Gabriel	404
28872	Venetie	1462
28873	Unicoi	1388
28874	Hartwick	778
28875	Hartwick	2265
28876	Bremond	750
28877	Arroyo Hondo	1930
28878	Elverta	2688
28879	Rigby	1008
28880	Hardesty	2272
28881	Norridge	761
28882	Passapatanzy	1982
28883	Randle Cliff Beach	2983
28884	Sabana Hoyos Comunidad	2087
28885	Webster Groves	3196
28886	Royal Palm Beach	3071
28887	Sea Ranch	1790
28888	Mattydale	2979
28889	Walstonburg	555
28890	Pittsboro	1630
28891	Pittsboro	1278
28892	Pittsboro	1891
28893	Wasta	907
28894	Newberg	363
28895	McCrory	663
28896	Deaver	2723
28897	Newbern	2553
28898	Newbern	1011
28899	Calumet	1885
28900	Calumet	2777
28901	Calumet	2385
28902	Calumet	2065
28903	Calumet	1368
28904	Bighorn	160
28905	Neshoba	1429
28906	Owenyo	2411
28907	Enoree	3162
28908	Mount Crawford	2084
28909	McKinney Acres	1299
28910	Grand View Estates	2815
28911	Grawn	1592
28912	Haworth	1572
28913	Haworth	229
28914	Puyallup	1925
28915	Schulter	1543
28916	Pace	758
28917	Pace	1565
28918	Grand Mesa	1797
28919	Payson	1291
28920	Payson	2920
28921	Payson	705
28922	El Monte	404
28923	Dunn Center	2968
28924	Beroun	1358
28925	Cliff	1128
28926	Carnuel	405
28927	Fittstown	133
28928	North Plainfield	129
28929	Ritzville	1294
28930	Emmonak	2367
28931	Ree Heights	1068
28932	Burns Harbor	2498
28933	East Springfield	1006
28934	Asbury Lake	1532
28935	Carlsbad	348
28936	Carlsbad	3226
28937	Carlsbad	2381
28938	Lamboglia	807
28939	Clopton	674
28940	Samuels	274
28941	West Slope	465
28942	Tisch Mills	626
28943	Gerber	3186
28944	Bloom	233
28945	Holbrook	2287
28946	Holbrook	761
28947	Holbrook	940
28948	Holbrook	3240
28949	Holbrook	3161
28950	Holbrook	2618
28951	Applewold	775
28952	Spindale	2670
28953	Bad Axe	342
28954	Austonio	2118
28955	Hoffman Estates	761
28956	Navasota	847
28957	Muldoon	2567
28958	PunaluÊ»u	1488
28959	Oneida Castle	3238
28960	Grays	663
28961	Lynn Grove	1426
28962	Manchaca	3050
28963	Elmodel	1472
28964	Gurdon	2325
28965	Shady Side	2440
28966	Shrewsbury	3196
28967	Shrewsbury	1467
28968	Shrewsbury	278
28969	Shrewsbury	853
28970	Iron Belt	1863
28971	Applewood	992
28972	White Cone	3161
28973	Plover	1636
28974	Plover	1244
28975	McMechen	2461
28976	Annamoriah	1276
28977	Interlaken	278
28978	Interlaken	1792
28979	Interlaken	2261
28980	Interlaken	1362
28981	Pateros	1874
28982	Smalleytown	129
28983	Red Springs	756
28984	Red Springs	2256
28985	Grantley	853
28986	West Falls Church	3165
28987	Hawaiian Acres	1488
28988	Laurel Run	2641
28989	Buffalo City	2686
28990	Castor	2496
28991	Castor	1762
28992	Fordville	2633
28993	Wampsville	2042
28994	Meadow Bridge	2564
28995	Mattawa	1125
28996	Van Tassell	3051
28997	Brookdale	2744
28998	Brookdale	1910
28999	Brookdale	1362
29000	Eads	1991
29001	Eads	190
29002	Clementson	3148
29003	Arizona City	1914
29004	Beach Park	1326
29005	East Thermopolis	311
29006	Wawona	1660
29007	Flowella	1055
29008	Leonardville	211
29009	Pioneer	1894
29010	Pioneer	1463
29011	Pioneer	378
29012	Pioneer	178
29013	Pioneer	2253
29014	Pioneer	318
29015	Cushing	262
29016	Cushing	164
29017	Cushing	181
29018	Cushing	2547
29019	Cushing	1666
29020	Cushing	3024
29021	Beallsville	740
29022	Beallsville	483
29023	Beallsville	2358
29024	West Point	3144
29025	West Point	2875
29026	West Point	1538
29027	West Point	3137
29028	West Point	2567
29029	West Point	2095
29030	West Point	1905
29031	West Point	2393
29032	West Point	1735
29033	West Point	754
29034	West Point	2660
29035	West Point	1969
29036	West Point	2392
29037	West Point	1662
29038	Prospect Heights	761
29039	Prospect Heights	969
29040	Doles	1836
29041	Philadelphia	2734
29042	Philadelphia	995
29043	Philadelphia	1504
29044	Philadelphia	1429
29045	Philadelphia	691
29046	Akron	1935
29047	Akron	1139
29048	Akron	1510
29049	Akron	2711
29050	Akron	1486
29051	Akron	1725
29052	Akron	474
29053	Akron	1011
29054	Akron	1026
29055	Sheppton	2826
29056	Wesley	1598
29057	Wesley	301
29058	Wesley	2049
29059	El Rito	2725
29060	Ottosen	318
29061	Page	353
29062	Page	2263
29063	Page	2200
29064	Page	1869
29065	Page	2564
29066	Page	3180
29067	Black Point	1515
29068	Gifford	3041
29069	Gifford	1606
29070	Gifford	2387
29071	Gifford	2689
29072	Gifford	3159
29073	Gifford	657
29074	Gifford	2114
29075	Gifford	1880
29076	Gifford	519
29077	Caddo Valley	2325
29078	Wainiha	2209
29079	Harbine	990
29080	Escondido	2381
29081	Vieques	1235
29082	Sunbury	2963
29083	Sunbury	1917
29084	Sunbury	64
29085	Sunbury	2806
29086	Sand Creek	1119
29087	Kahoka	2320
29088	Gorham	773
29089	Gorham	1825
29090	Gorham	79
29091	Gorham	357
29092	Gorham	1450
29093	Beaver Dam Lake	3137
29094	Franquez	1987
29095	Village Shires	2634
29096	Landusky	1557
29097	La Plena Comunidad	2259
29098	Ware Place	2031
29099	Mobeetie	965
29100	Elkhorn City	1172
29101	Burrel	937
29102	Port Isabel	1832
29103	Stephensburg	2392
29104	Carlock	2283
29105	Mathis	3214
29106	Waterview	2067
29107	Roselle Park	502
29108	Okmulgee	1543
29109	Fearrington Village	1630
29110	Michie	1647
29111	Monolith	263
29112	Cedar Creek	358
29113	Cedar Creek	2249
29114	Cedar Creek	2920
29115	Cedar Creek	3181
29116	Hustisford	955
29117	Ogletown	2563
29118	Jauca Comunidad	2086
29119	Ryland Heights	2397
29120	Lovewell	174
29121	Stacy	1309
29122	Stacy	2021
29123	Delight	1176
29124	Gilchrist	2523
29125	Gilchrist	759
29126	Mattoxtown	2570
29127	Greendale	3196
29128	Greendale	904
29129	Greendale	154
29130	Greendale	2570
29131	West Stewartstown	773
29132	Wetmore	3061
29133	Wetmore	284
29134	Wetmore	2767
29135	Bear River	231
29136	Lindsey	1340
29137	Bucktail	575
29138	Stewardson	191
29139	Playita Cortada	2086
29140	Edgehill	3111
29141	White Heath	1995
29142	Glencross	200
29143	Mountain View	231
29144	Mountain View	2664
29145	Mountain View	3184
29146	Mountain View	1488
29147	Mountain View	1943
29148	Mountain View	2198
29149	Mountain View	281
29150	Mountain View	1992
29151	Mountain View	2526
29152	Mountain View	992
29153	Radford	3108
29154	West Lake Sammamish	3217
29155	Gladiola	2089
29156	North Wilkesboro	446
29157	KualapuÊ»u	2438
29158	Saint Joe	576
29159	Saint Joe	1753
29160	Saint Joe	3083
29161	Saint Joe	2905
29162	Holly Grove	2350
29163	Broad Brook	1712
29164	Luyando Comunidad	2015
29165	Cedar Butte	791
29166	Sun River Terrace	2870
29167	Kennesaw	394
29168	Eagle Lake	3057
29169	Eagle Lake	2201
29170	Eagle Lake	1444
29171	Eagle Lake	206
29172	Eagle Lake	2545
29173	Eagle Lake	426
29174	Lewistown	2531
29175	Lewistown	2061
29176	Lewistown	2184
29177	Lewistown	2712
29178	Lewistown	2474
29179	Mayoworth	1265
29180	Alexis	2310
29181	McCaskill	1586
29182	Falls Church	3165
29183	Conway	2227
29184	Conway	2633
29185	Conway	333
29186	Conway	2904
29187	Conway	2519
29188	Conway	3094
29189	Conway	312
29190	Conway	3220
29191	Conway	1060
29192	Conway	1422
29193	Conway	3183
29194	Conway	3141
29195	Conway	2522
29196	Conway	1883
29197	Gleeson	3232
29198	McRae	1905
29199	McRae	1677
29200	WahiawÄ	1878
29201	Cave Creek	3086
29202	Tillatoba	883
29203	Holley	758
29204	Holley	943
29205	Holley	1437
29206	Cherokee Falls	434
29207	West University Place	145
29208	Quijotoa	1247
29209	Mumford	750
29210	Grand Forks	1581
29211	Vieques Zona Urbana	1518
29212	Shenandoah Retreat	1215
29213	Valera	897
29214	Castle	87
29215	Fenner	721
29216	Birdsville	390
29217	Birdsville	2440
29218	South Colton	1307
29219	Hobart Bay	1337
29220	East Saint Louis	918
29221	Escondida	228
29222	Manes	2292
29223	Hackettstown	2306
29224	Barton Creek	3050
29225	Cissna Park	1955
29226	New London	1106
29227	New London	90
29228	New London	1593
29229	New London	2501
29230	New London	598
29231	New London	2499
29232	New London	341
29233	New London	1578
29234	New London	2457
29235	New London	102
29236	New London	501
29237	New London	279
29238	Holmes City	2819
29239	Fort Hill Census Designated Place	2538
29240	Forked Island	2035
29241	Faunsdale	1080
29242	Mount Kisco	1919
29243	Elk Ridge	705
29244	Antwerp	995
29245	Antwerp	2956
29246	Kingsland	858
29247	Kingsland	1738
29248	Kingsland	2976
29249	El Jebel	2974
29250	Grand Gulf	572
29251	Ailey	738
29252	Palm City	2212
29253	Spaulding	695
29254	Spaulding	3053
29255	Hilshire Village	145
29256	Sand Fork	2316
29257	Southmayd	3261
29258	Jim Thorpe	3038
29259	Forest Heights	2064
29260	Spenard	2364
29261	Waynesboro	517
29262	Waynesboro	2135
29263	Waynesboro	2601
29264	Waynesboro	2609
29265	Waynesboro	927
29266	Hudson Falls	477
29267	Lonepine	75
29268	East Peru	2051
29269	West Hanover	1936
29270	Spring City	1977
29271	Spring City	1035
29272	Spring City	90
29273	Turkey	1022
29274	Turkey	286
29275	Turkey	670
29276	Gheen	3195
29277	Knox City	586
29278	Knox City	582
29279	Clear Lake City	145
29280	Eidson Road	867
29281	Ionia	698
29282	Ionia	1613
29283	Ionia	1643
29284	Ionia	174
29285	Lindsay	2996
29286	Lindsay	1850
29287	Lindsay	2161
29288	Lindsay	1862
29289	Lindsay	308
29290	Lindsay	1879
29291	Halfway House	731
29292	New Washington	1412
29293	New Washington	2318
29294	New Washington	1300
29295	Lincoln Village	2141
29296	Lincoln Village	590
29297	Kings Grant	254
29298	Brewster	1874
29299	Brewster	1406
29300	Brewster	1090
29301	Brewster	1162
29302	Brewster	238
29303	Brewster	2751
29304	Brewster	3030
29305	Lake Mohawk	2229
29306	Lake Mohawk	1889
29307	La Grange	356
29308	La Grange	2568
29309	La Grange	754
29310	La Grange	2104
29311	La Grange	1070
29312	La Grange	2567
29313	La Grange	761
29314	La Grange	2531
29315	La Grange	1692
29316	Pyatt	684
29317	Balmorhea	1781
29318	Cibecue	3161
29319	White Butte	1134
29320	Zebulon	1399
29321	Zebulon	1174
29322	Goldfield	3194
29323	Goldfield	2290
29324	Goldfield	277
29325	Day Heights	1241
29326	Dadeville	412
29327	Dadeville	2933
29328	Tooele	1622
29329	Harpersville	195
29330	Truxton	829
29331	Truxton	1201
29332	Challenge	1775
29333	Lunds	2827
29334	Corfu	2257
29335	Pittsview	1451
29336	Pine Village	2303
29337	Oneonta	778
29338	Oneonta	2420
29339	Oneonta	179
29340	Torrance	1625
29341	Torrance	404
29342	Pimmit Hills	2405
29343	Tankersley	3226
29344	Searles Valley	721
29345	Lundy	2758
29346	Hagerhill	1270
29347	Rockton	2691
29348	Onalaska	2540
29349	Onalaska	2533
29350	Onalaska	3130
29351	North Pekin	1777
29352	Cashiers	1807
29353	Pala	2381
29354	Ravenden	539
29355	Portage	3217
29356	Portage	1078
29357	Portage	2338
29358	Portage	2334
29359	Portage	2201
29360	Portage	1421
29361	Portage	419
29362	Portage	2498
29363	Portage	3032
29364	Pocatello	2863
29365	Lindisfarne	1322
29366	Cross Timbers	1051
29367	Truth or Consequences	170
29368	Funkley	546
29369	Zearing	2581
29370	Merkel	1061
29371	Palo	944
29372	Lemont	393
29373	Lemont	761
29374	Stacey Street	3071
29375	Ricketts	1408
29376	Esperance	99
29377	Esperance	2416
29378	South Valley Stream	101
29379	Antlers	1425
29380	Scobey	1502
29381	Three Lakes	1705
29382	Three Lakes	99
29383	Three Lakes	3239
29384	Northwoods	3196
29385	Shavano Park	1083
29386	Nowthen	1260
29387	Crandall	618
29388	Crandall	2361
29389	Crandall	1212
29390	Clarktown	3256
29391	Columbiana	195
29392	Columbiana	1662
29393	Westhampton Beach	940
29394	Paden City	2872
29395	Beowawe	1716
29396	Lake Shore	3179
29397	Lake Shore	2326
29398	Lake Shore	2440
29399	Lake Shore	705
29400	Bridgeport	299
29401	Bridgeport	103
29402	Bridgeport	2918
29403	Bridgeport	3160
29404	Bridgeport	615
29405	Bridgeport	408
29406	Bridgeport	2626
29407	Bridgeport	533
29408	Bridgeport	2822
29409	Bridgeport	1147
29410	Bridgeport	1817
29411	Bridgeport	307
29412	Bridgeport	731
29413	Bridgeport	492
29414	Bridgeport	2042
29415	Bridgeport	1591
29416	Vine Grove	2392
29417	Saint David	3232
29418	Saint David	2201
29419	Saint David	2712
29420	Rozel	1256
29421	Offerman	1923
29422	South New Berlin	650
29423	South Hempstead	101
29424	Ernul	135
29425	Rozet	177
29426	Dune Acres	2498
29427	Oldsmar	2785
29428	Atlas	2963
29429	Atlas	3044
29430	Pana	2949
29431	Lake Delton	1344
29432	Falling Spring	777
29433	Falling Spring	2836
29434	Cantu Addition	1055
29435	Kaunakakai	2438
29436	Marble	2777
29437	Marble	549
29438	Marble	657
29439	Marble	427
29440	Marble	2049
29441	Top of the World	3140
29442	River Bend	135
29443	River Bend	1826
29444	Sainte Genevieve	2631
29445	Bedford Hills	1919
29446	Crane Lake	3195
29447	Zarephath	129
29448	Labish Village	677
29449	Dishman	1431
29450	Spiritwood Lake	2645
29451	Pinecliffe	3055
29452	Durham	766
29453	Durham	465
29454	Durham	2885
29455	Durham	1688
29456	Durham	681
29457	Durham	471
29458	Durham	96
29459	Crows Landing	1941
29460	Diamond Bar	404
29461	Laton	937
29462	Manteca	590
29463	Bradley	1634
29464	Bradley	2870
29465	Bradley	2772
29466	Bradley	3075
29467	Bradley	2493
29468	Bradley	2668
29469	Bradley	2955
29470	Bradley	2322
29471	Canal Fulton	238
29472	Cambria Center	2910
29473	Lumberport	615
29474	Vidalia	1680
29475	Vidalia	2216
29476	Mango	868
29477	North Aurora	322
29478	Orchard Hills	775
29479	Wekiwa Springs	1627
29480	Sugar Mountain	1614
29481	Niskayuna	979
29482	Martindale	2853
29483	Earl	857
29484	Hidden Lake	2267
29485	Moorewood	3062
29486	Alpharetta	2715
29487	Sartell	1709
29488	Hartstown	1417
29489	Drynob	2904
29490	La Due	1110
29491	Campo Rico	396
29492	Rainier	1072
29493	Rainier	2190
29494	Cokeville	1186
29495	Celada Comunidad	696
29496	Castle Danger	1329
29497	Ivalee	1163
29498	Gypsum	1730
29499	Gypsum	2974
29500	Gypsum	103
29501	Frisco	1335
29502	Frisco	842
29503	Frisco	1724
29504	Marble Hill	2173
29505	Wildell	1243
29506	Markleeville	1937
29507	Sewal	2608
29508	Guasti	721
29509	Spinnerstown	2634
29510	Eau Claire	789
29511	Eau Claire	1710
29512	Eau Claire	1767
29513	Mentone	718
29514	Mentone	856
29515	Mentone	721
29516	Mentone	1752
29517	Gardnertown	3137
29518	Coral	2147
29519	Coram	1761
29520	Coram	940
29521	Taylor Lake Village	145
29522	Owasa	2387
29523	Buckman	164
29524	Paraloma	3207
29525	Scottsdale	3086
29526	San Fidel	1769
29527	Skippack	731
29528	Montalvo	3221
29529	Fryburg	2025
29530	Lindcove	308
29531	Palo Pinto	1719
29532	Lockland	2075
29533	La Playa	1375
29534	Manitou Beach	2586
29535	Fearisville	2532
29536	Shuqualak	1962
29537	Jamesburg	94
29538	Jamesburg	2036
29539	Normangee	1208
29540	Leach	2808
29541	Beauregard	2295
29542	Coarsegold	1563
29543	Marinette	1728
29544	Swepsonville	1509
29545	North Hartsville	647
29546	Lauada	1034
29547	First Mesa	3161
29548	Baskett	2655
29549	Parc	2895
29550	North Tunica	2658
29551	Quartz Hill	404
29552	Limon	1200
29553	West Unity	378
29554	Park	1338
29555	West Selmont	523
29556	Brush Fork	2003
29557	Whitelaw	626
29558	Hemingway	2429
29559	Bienville	1762
29560	Cajahs Mountain	2852
29561	Tinsley	3078
29562	Frederika	1873
29563	Stantonsburg	2936
29564	Rushmere	1595
29565	Warrington	2667
29566	Warrington	2634
29567	Coalfield	3217
29568	Coalfield	112
29569	Helendale	721
29570	Lime Ridge	1079
29571	Lime Ridge	1344
29572	Komandorski Village	1556
29573	Calamine	2773
29574	Greenhorn	2030
29575	Greenhorn	3011
29576	Greenhorn	1471
29577	Manter	2154
29578	East Massapequa	101
29579	Manteo	842
29580	Paul	2299
29581	Paul	2280
29582	Lakeline	1328
29583	Solvay	2979
29584	Painesville	1328
29585	Necedah	235
29586	Howison	617
29587	Saint Martin	1822
29588	Saint Martin	636
29589	Saint Martin	1709
29590	Dania Beach	2729
29591	Reidsville	2083
29592	Reidsville	1791
29593	Treveskyn	2632
29594	Templeton	1714
29595	Templeton	2224
29596	Templeton	775
29597	Templeton	2207
29598	Seiling	201
29599	Birch Bay	1983
29600	Richton	1839
29601	Albertson	101
29602	Washington Terrace	1433
29603	Susquehanna Trails	853
29604	Simpson	1503
29605	Simpson	453
29606	Simpson	3057
29607	Simpson	1258
29608	Simpson	225
29609	Simpson	1268
29610	Simpson	1476
29611	Juncal	911
29612	Spring Bay	1999
29613	Lower Brule	1143
29614	Millers Cove	1667
29615	Beemer	2393
29616	Onaway	1360
29617	Onaway	2238
29618	Cougar	198
29619	Fedora	449
29620	Middleboro	1512
29621	Stebbins	717
29622	Harper	960
29623	Harper	1310
29624	Harper	1886
29625	Harper	1048
29626	Harper	1794
29627	Wildwood	3196
29628	Wildwood	2632
29629	Wildwood	1326
29630	Wildwood	997
29631	Wildwood	513
29632	Wildwood	2421
29633	Wildwood	1994
29634	Wildwood	2389
29635	Tryon	2521
29636	Tryon	2537
29637	Tryon	1188
29638	South Pekin	1777
29639	Oakland Acres	3039
29640	Steele City	990
29641	Bay Center	1306
29642	Placitas	971
29643	Leupp Corner	353
29644	Oak Ridge North	734
29645	Mantee	2591
29646	Mount Repose	1241
29647	Olden	1463
29648	Portville	1370
29649	Bartlett	121
29650	Bartlett	190
29651	Bartlett	2227
29652	Bartlett	1954
29653	Bartlett	966
29654	Bartlett	967
29655	Bartlett	2411
29656	Bartlett	489
29657	Bartlett	761
29658	Carville	2694
29659	Edwall	1195
29660	Boles Acres	344
29661	Middlefield	1899
29662	Rivergrove	3223
29663	Ê»Aiea	1878
29664	Saint Rosa	1709
29665	Lisman	894
29666	Lisman	2593
29667	Bolckow	610
29668	Jackson	476
29669	Jackson	1391
29670	Jackson	1046
29671	Jackson	1214
29672	Jackson	1814
29673	Jackson	1862
29674	Jackson	670
29675	Jackson	2045
29676	Jackson	1828
29677	Jackson	312
29678	Jackson	2865
29679	Jackson	646
29680	Jackson	2619
29681	Jackson	1819
29682	Jackson	2331
29683	Jackson	2253
29684	Jackson	806
29685	Braddock	2632
29686	Braddock	2977
29687	Braddock	972
29688	Saint Rose	2898
29689	Saint Rose	1081
29690	Waves	842
29691	Florahome	2758
29692	Round Top	2567
29693	Stennett	732
29694	Sierra View	2351
29695	Ester	209
29696	Cabery	232
29697	Dacoma	2477
29698	Chain of Rocks	1201
29699	Delavan Lake	1094
29700	Hacker Valley	2589
29701	Ali Chukson	1247
29702	Estes	148
29703	East Middletown	3137
29704	Morgan Hill	2198
29705	Samak	1726
29706	Inez	2215
29707	Inez	2800
29708	Dalies	3272
29709	Fanning	2028
29710	RodrÃ­guez Hevia Comunidad	1066
29711	Lupus	2264
29712	Contra Costa Centre	3143
29713	Neelys Landing	2619
29714	Lake Grove	940
29715	Rosepine	225
29716	Roosevelt Gardens	2729
29717	Pavo	1056
29718	Brand	3193
29719	Dunnstown	2902
29720	Newtown Square	2809
29721	Centerdale	929
29722	Toston	2422
29723	Holdenville	3053
29724	Fall Creek	1291
29725	Fall Creek	1710
29726	Golf Manor	2075
29727	Cedar Knolls	2877
29728	Lake Wynonah	2826
29729	Eagle Grove	2290
29730	Eagle Grove	1239
29731	Schulenburg	2567
29732	Dixie Union	1550
29733	Freeny	1932
29734	South Blooming Grove	3137
29735	Fitzgerald	2661
29736	Mechanicsburg	695
29737	Mechanicsburg	520
29738	Mechanicsburg	675
29739	Mechanicsburg	83
29740	Rockleigh	1572
29741	Caguas	1856
29742	Wall Lake	844
29743	Hoytsville	1726
29744	Dacono	1101
29745	Big Bear Lake	721
29746	Gold Beach	811
29747	Campbellsport	2090
29748	Gregory	663
29749	Gregory	1868
29750	Gregory	3214
29751	Gregory	2831
29752	Gregory	389
29753	Roaming Shores	462
29754	Huxley	189
29755	Huxley	2581
29756	Harvard	3192
29757	Harvard	1535
29758	Rainelle	2836
29759	Brundage	2363
29760	Hartshorne	3211
29761	Boca Grande	2101
29762	Five Corners	2326
29763	Mount Blanchard	1972
29764	O'Brien	1179
29765	O'Brien	3124
29766	O'Brien	2203
29767	Bell Island Hot Springs	2525
29768	Apple Canyon Lake	1698
29769	Tyonek	1806
29770	Opdyke West	97
29771	Bishop Hill	1109
29772	Wallerville	506
29773	Park River	2633
29774	Bengal	188
29775	East Tawas	275
29776	Moundville	227
29777	Moundville	1011
29778	Dermott	629
29779	Dermott	3193
29780	Houmont Park	145
29781	Palmview	1353
29782	Union Point	567
29783	Harriston	1261
29784	Harriston	1002
29785	McAdoo	2826
29786	Beech Bottom	1069
29787	Southland	855
29788	Rueter	753
29789	White	109
29790	White	2862
29791	White	609
29792	Howes	1663
29793	West Union	2319
29794	West Union	2565
29795	West Union	1292
29796	West Union	2649
29797	West Union	643
29798	West Union	2782
29799	West Brookfield	1760
29800	Liberty Lake	1431
29801	Jewettville	1510
29802	Sigourney	960
29803	Runaway Bay	1147
29804	Topaz	3160
29805	Gates	677
29806	Gates	1917
29807	Gates	606
29808	Steelville	1411
29809	Red Feather Lakes	831
29810	Kerkhoven	1956
29811	Lake Panasoffkee	513
29812	Palmas	2659
29813	Leathersville	1203
29814	Mackinaw City	2481
29815	Shively	319
29816	Shively	997
29817	Oliver Springs	666
29818	New Eagle	483
29819	Colmor	2794
29820	Mooresburg	2168
29821	New Carlisle	2323
29822	New Carlisle	3102
29823	Lake Petersburg	403
29824	South Woodstock	3098
29825	Hainesville	2340
29826	Hainesville	1326
29827	Lonetree	231
29828	Mount Eden	1556
29829	Mount Eden	1940
29830	Soderville	1260
29831	Bee Spring	309
29832	Lime City	2338
29833	Newport Hills	3217
29834	Dorado Zona Urbana	2656
29835	Lincolnton	1183
29836	Lincolnton	1203
29837	Little Orleans	1497
29838	Bridgeland	2428
29839	Wanblee	1813
29840	Rowlesburg	1961
29841	Waukegan	1326
29842	Amherst	1945
29843	Amherst	2687
29844	Amherst	869
29845	Amherst	2469
29846	Amherst	1560
29847	Amherst	1636
29848	Amherst	845
29849	Amherst	1374
29850	Neshanic Station	129
29851	Manton	3186
29852	Manton	1487
29853	South Laurel	2064
29854	Jamison	1211
29855	NÄnÄwale Estates	1488
29856	Branson West	2666
29857	Bozar	2496
29858	Kenhorst	362
29859	Hotevilla	3161
29860	Pilot Point	2452
29861	Pilot Point	2011
29862	La Plant	200
29863	Langley	293
29864	Langley	646
29865	Langley	1220
29866	Langley	1176
29867	Langley	1884
29868	Langley	270
29869	Ninock	1635
29870	Shonkin	3219
29871	Citrus City	1353
29872	Depue	1704
29873	Argos	2464
29874	Wimer	1808
29875	Rhea	471
29876	Rhea	201
29877	Southlake	3084
29878	Gorgas	1349
29879	Marion Hill	1883
29880	Jackson Center	2010
29881	Jackson Center	194
29882	East Brooklyn	2505
29883	East Brooklyn	3098
29884	Machens	1082
29885	Falling Water	2073
29886	Mariano ColÃ³n Comunidad	1469
29887	Telogia	3106
29888	Bardolph	3131
29889	Endee	1253
29890	Elverson	90
29891	Homestead	2632
29892	Homestead	1404
29893	Homestead	3081
29894	Homestead	1471
29895	Homestead	1705
29896	Homestead	63
29897	Homestead	1223
29898	Homestead	154
29899	Morovis	1987
29900	New Augusta	1839
29901	Lyons Falls	2529
29902	Wallis	61
29903	Trufant	1356
29904	Santa Clara Comunidad	1892
29905	Bayonne	2587
29906	Samoa	319
29907	Palmer	3217
29908	Palmer	2504
29909	Palmer	1676
29910	Palmer	1244
29911	Palmer	150
29912	Palmer	1058
29913	Palmer	2949
29914	Palmer	481
29915	Palmer	1333
29916	Palmer	823
29917	Sierra Brooks	171
29918	Swoyersville	2641
29919	Raquette Lake	2069
29920	Hollis	1345
29921	Hollis	2881
29922	Hollis	1847
29923	Merryville	1727
29924	Owensburg	557
29925	Hesperia	721
29926	Hesperia	3166
29927	Wateree	1675
29928	Buffalo Lake	222
29929	Perry Park	2815
29930	HÄlawa	1878
29931	Watchung	129
29932	Marcus Hook	2809
29933	Upper Fruitland	2929
29934	Tomato	938
29935	Crainville	123
29936	Chilili	405
29937	Gabbettville	754
29938	Bucksport	3220
29939	Bucksport	1970
29940	Nelsonia	3027
29941	Brady	577
29942	Brady	1196
29943	Brady	2499
29944	Brady	1309
29945	Buck Creek	596
29946	Delray	2921
29947	Pennwyn	362
29948	Spring Mount	731
29949	Hobson City	1283
29950	Worley	3087
29951	Weaver	2988
29952	Weaver	1283
29953	Elmhurst	950
29954	Cowgill	2854
29955	Pueblo	2030
29956	Elmira Heights	1524
29957	Parcelas de Navarro Comunidad	696
29958	Refton	1139
29959	Chicora	789
29960	Chicora	2609
29961	Gales Ferry	1593
29962	Cherry Hill	2606
29963	Cherry Hill	875
29964	Cherry Hill	652
29965	Cherry Hill	2977
29966	Cherry Hill	321
29967	McCracken	2515
29968	Pottsville	2072
29969	Pottsville	2826
29970	Pottsville	2642
29971	Brightwood	2059
29972	Brightwood	710
29973	Brightwood	3223
29974	Manchester Center	1780
29975	Curwensville	1300
29976	Wauneta	3113
29977	Wauneta	933
29978	Lochloosa	132
29979	Casa de Oro	2381
29980	South Lyon	2663
29981	Upper Saddle River	1572
29982	Hickory Valley	2697
29983	Fort Bragg	1053
29984	Crellin	310
29985	La Paloma Addition Colonia	3214
29986	ImbÃ©ry Comunidad	1908
29987	Nibley	2709
29988	Shivers	1787
29989	Fort Calhoun	473
29990	Rockingham	2376
29991	Rockingham	3089
29992	Brier Hill	1307
29993	New Kensington	2385
29994	Dogtown	590
29995	Westport	1183
29996	Westport	635
29997	Westport	2902
29998	Westport	2487
29999	Westport	2499
30000	Westport	813
30001	Westport	1254
30002	Westport	2742
30003	Westport	2644
30004	Westport	1692
30005	Westport	1053
30006	Westport	408
30007	Caswell Beach	2395
30008	Hayden	507
30009	Hayden	2420
30010	Hayden	2920
30011	Hayden	1519
30012	Hayden	2622
30013	Hayden	3087
30014	East Quincy	3011
30015	Pilot Station	2367
30016	Botines	817
30017	Crotonville	1919
30018	Denning	2126
30019	Waller	1925
30020	Waller	2088
30021	Waller	1079
30022	Cranesville	1512
30023	Knapp	2969
30024	Jaars	494
30025	La Plata	3159
30026	La Plata	2929
30027	La Plata	335
30028	Pattonville	893
30029	Randleman	2677
30030	Musella	1413
30031	Wellersburg	131
30032	Midwest	805
30033	Overton	2501
30034	Overton	2999
30035	Overton	2329
30036	Leitersburg	492
30037	Tonganoxie	1699
30038	Lawen	212
30039	Volland	888
30040	Newfolden	2470
30041	Selinsgrove	2163
30042	Tunis Mills	1160
30043	Minden	1697
30044	Minden	2825
30045	Minden	2594
30046	Minden	2564
30047	Minden	3016
30048	Desert	1335
30049	Salamonia	414
30050	Whatley	1214
30051	Kitts Hill	537
30052	Cartwright	916
30053	Cartwright	70
30054	Loyal Valley	745
30055	South Dayton	1370
30056	Lilliwaup	744
30057	Merchantville	2977
30058	Ellicottville	1370
30059	Sioux Center	2926
30060	Wightmans Grove	1340
30061	Sabana Seca	1334
30062	Portage Creek	2019
30063	Millhaven	424
30064	Cloverleaf	145
30065	LaFollette	178
30066	Osceola	938
30067	Osceola	3102
30068	Osceola	2547
30069	Osceola	919
30070	Osceola	2548
30071	Osceola	1707
30072	Osceola	1211
30073	Lexington Park	2580
30074	Algerita	291
30075	Cottage Lake	3217
30076	Splendora	734
30077	Groveville	2009
30078	Camp Crook	3013
30079	Manheim	1139
30080	Biggs	766
30081	Earling	187
30082	Bonlee	1630
30083	Wanette	2032
30084	San Augustine	2172
30085	San Augustine	2107
30086	Colchester	1593
30087	Colchester	3131
30088	Kaycee	1265
30089	Thorne	977
30090	Adamstown	1139
30091	Adamstown	3153
30092	Caprock	2089
30093	Briarcliff Manor	1919
30094	Catlett	3224
30095	Beattyville	2099
30096	Chisago City	2021
30097	Philipsburg	393
30098	Philipsburg	1103
30099	Franklin Springs	2142
30100	New Market	853
30101	New Market	725
30102	New Market	1060
30103	New Market	3153
30104	New Market	985
30105	New Market	2048
30106	New Market	2740
30107	Manhattan	874
30108	Manhattan	875
30109	Manhattan	579
30110	Manhattan	213
30111	Manhattan	211
30112	Ute Park	2794
30113	Spofford	242
30114	Charity	526
30115	Holman	3190
30116	North Sudbury	95
30117	Nemacolin	561
30118	Moodus	96
30119	Sharon Hill	2809
30120	Norphlet	501
30121	Hovland	762
30122	Edgar	628
30123	Edgar	2732
30124	Edgar	2192
30125	Edgar	1535
30126	Edgar	3035
30127	Williamston	287
30128	Williamston	2210
30129	Williamston	1397
30130	Robertsburg	2750
30131	Cornudas	1438
30132	RÃ­o Lajas Comunidad	2656
30133	Dornsife	2963
30134	Kirkville	2174
30135	Dranesville	2405
30136	Coto Norte	1996
30137	Chinook	1403
30138	Chinook	1306
30139	Jagual Comunidad	3163
30140	Toponas	1519
30141	Hamberg	2916
30142	Osborne	2632
30143	Osborne	2202
30144	Laneville	2501
30145	Laneville	1092
30146	Brasher Falls	1307
30147	Sabana Seca Comunidad	1334
30148	Jermyn	2502
30149	Jermyn	3057
30150	San Luis Obispo	2207
30151	Baranof	3026
30152	Lafitte	1005
30153	Hixson	2073
30154	Crystal City	417
30155	Crystal City	993
30156	Mantua	1421
30157	Mantua	1637
30158	Mantua	2405
30159	Mantua	2626
30160	Mariano ColÃ³n	1469
30161	Nettle Lake	378
30162	Rapids	2910
30163	Sand City	2955
30164	Leary	826
30165	Leary	1281
30166	Lake Lure	2670
30167	Needmore	2717
30168	Needmore	2510
30169	Needmore	1400
30170	Wood Dale	950
30171	Orwin	2826
30172	Greycliff	2217
30173	Red River	1930
30174	Chubbuck	721
30175	Chubbuck	2863
30176	Moravian Falls	446
30177	Chandlerville	3177
30178	Vista	919
30179	Vista	1919
30180	Vista	2381
30181	Cane Savannah	515
30182	Ho-Ho-Kus	1572
30183	Haiwee	2411
30184	Cerrillos	1750
30185	Loch Arbour	278
30186	Felt	2199
30187	Felt	1392
30188	Artondale	1925
30189	Bronxville	1919
30190	Coventry Lake	1317
30191	Innis	2578
30192	Stony Brook	940
30193	Gladden	2632
30194	Gladden	418
30195	Russellton	2632
30196	Mantorville	953
30197	Arenzville	3177
30198	Saddle Rock	101
30199	Shongaloo	2594
30200	New Elliott	1323
30201	Similk Beach	1422
30202	Sahuarita	1247
30203	Watonga	1404
30204	Lamoine	2883
30205	North Epworth	747
30206	Buckhall	321
30207	Geiger	514
30208	Waumandee	2686
30209	Stamford	3022
30210	Stamford	1813
30211	Stamford	1897
30212	Stamford	2804
30213	Stamford	408
30214	Warthen	490
30215	Lindy	589
30216	Oilton	755
30217	Oilton	817
30218	New Ellenton	646
30219	Oskawalik	2260
30220	Nulato	1462
30221	Hytop	1817
30222	Buncombe	1268
30223	Ovalo	1061
30224	Mullins	685
30225	Arkport	2887
30226	Juncos	2271
30227	Dotyville	2090
30228	Dotyville	1732
30229	Koontzville	1874
30230	Islamorada	2348
30231	Stanhope	1889
30232	Stanhope	2070
30233	Brantleyville	195
30234	New Summerfield	429
30235	South Torrington	356
30236	Ardmore	731
30237	Ardmore	124
30238	Ardmore	2789
30239	Ardmore	2560
30240	Ardmore	1365
30241	Holmen	3130
30242	Eagle Bend	2649
30243	Eagle Bend	2309
30244	Copalis Crossing	2499
30245	Bowersville	566
30246	Bowersville	1239
30247	Brundidge	1175
30248	McLean	2283
30249	McLean	3073
30250	McLean	2405
30251	McLean	1927
30252	Apple Mountain Lake	2314
30253	Pond Creek	1119
30254	Sterling	2180
30255	Sterling	1274
30256	Sterling	2512
30257	Sterling	1102
30258	Sterling	2146
30259	Sterling	3118
30260	Sterling	2612
30261	Sterling	2749
30262	Sterling	672
30263	Sterling	1035
30264	Sterling	3173
30265	Sterling	1806
30266	Sterling	1718
30267	Ship Bottom	2627
30268	Worthville	1000
30269	Worthville	2222
30270	Opa-locka	1705
30271	South Weber	2875
30272	Fridley	1260
30273	Kingsford	1315
30274	Silverton	677
30275	Silverton	99
30276	Silverton	2627
30277	Silverton	2931
30278	Silverton	2075
30279	Silverton	553
30280	Hanna	1042
30281	Hanna	2792
30282	Hanna	2428
30283	Hanna	3036
30284	Hanna	2234
30285	Bar Mills	850
30286	Linda	1775
30287	Manistique	1376
30288	Shade	741
30289	Norwood	1862
30290	Norwood	541
30291	Norwood	2313
30292	Norwood	102
30293	Norwood	1572
30294	Norwood	740
30295	Norwood	2809
30296	Norwood	1307
30297	Norwood	2075
30298	Norwood	1040
30299	Norwood	2456
30300	Norwood	997
30301	Norwood	2941
30302	Norwood	2618
30303	Norwood	2292
30304	Kingsville	1269
30305	Kingsville	1498
30306	Kingsville	1689
30307	Whitethorn	319
30308	Leawood	1272
30309	Leawood	1234
30310	Shiprock	2929
30311	Meadowbrook Farm	997
30312	Elizabethtown	2063
30313	Elizabethtown	1139
30314	Elizabethtown	2075
30315	Elizabethtown	1553
30316	Elizabethtown	2742
30317	Elizabethtown	2392
30318	Elizabethtown	2391
30319	Van Horn	1097
30320	Pine Mountain Valley	146
30321	Houghton Lake	68
30322	Alianza Comunidad	1249
30323	Cocodrie	910
30324	San Carlos Park	2101
30325	Shady	682
30326	Shoal Creek Drive	1234
30327	River Falls	1926
30328	River Falls	2575
30329	Linby	1001
30330	East Juliette	3021
30331	Edgeworth	2632
30332	Hammett	809
30333	Linch	1265
30334	Poy Sippi	1210
30335	Mocane	1881
30336	Greer	2031
30337	Greer	932
30338	Greer	3198
30339	Greer	1690
30340	Spring Mill	997
30341	Haigler	1096
30342	Chalkyitsik	1462
30343	Birch Tree	1668
30344	Raymondville	2273
30345	Raymondville	1141
30346	Raymondville	1307
30347	Newmarket	2085
30348	Green	1531
30349	Green	3264
30350	Green	2814
30351	Green	1725
30352	Fenn	1458
30353	Hometown	2826
30354	Hometown	761
30355	Hometown	2750
30356	Balance Rock	308
30357	Leatherwood	1844
30358	Natoma	2202
30359	Buckner	2772
30360	Buckner	2139
30361	Buckner	1692
30362	Buckner	1826
30363	Buckner	57
30364	Ericson	966
30365	Sharp	2176
30366	Chimney Rock	2670
30367	Chimney Rock	86
30368	Lake Summerset	2691
30369	Bloomdale	2338
30370	Gerald	2130
30371	Gerald	1112
30372	La Victoria	166
30373	Stumpy Point	842
30374	Longwood	1627
30375	Longwood	2395
30376	Longwood	90
30377	Depew	1510
30378	Depew	755
30379	Agoura	404
30380	Channahon	875
30381	McLeod	2217
30382	McLeod	3176
30383	McLeod	1773
30384	Lake Michigan Beach	1767
30385	Union Beach	278
30386	Devore	721
30387	Las Vegas	1039
30388	Las Vegas	2329
30389	Helmetta	94
30390	Margaretville	2804
30391	Richtex	407
30392	Garberville	319
30393	Rehobeth	2117
30394	California Hot Springs	308
30395	Ventana	1247
30396	Beardsley	55
30397	Beardsley	3086
30398	Beardsley	421
30399	Baldwinsville	2979
30400	New Haven	1481
30401	New Haven	274
30402	New Haven	743
30403	New Haven	578
30404	New Haven	341
30405	New Haven	443
30406	New Haven	1019
30407	New Haven	2130
30408	New Haven	1474
30409	New Haven	2409
30410	Forest View	761
30411	Westmere	924
30412	Flamingo	2348
30413	Shoveltown	3196
30414	Union Dale	3015
30415	La Harpe	442
30416	La Harpe	1969
30417	Fenwick	96
30418	Fenwick	1347
30419	Fenwick	2628
30420	Lanark Village	2134
30421	Kresson	2977
30422	Plumwood	2057
30423	Paullina	1885
30424	Camptown	416
30425	Bronwood	913
30426	Le Loup	2133
30427	Newport	1184
30428	Newport	1095
30429	Newport	1031
30430	Newport	480
30431	Newport	851
30432	Newport	2563
30433	Newport	82
30434	Newport	1949
30435	Newport	1436
30436	Newport	392
30437	Newport	839
30438	Newport	1597
30439	Newport	1182
30440	Newport	194
30441	Newport	2415
30442	Newport	1539
30443	Newport	179
30444	Newport	1976
30445	Newport	1818
30446	Newport	3146
30447	Newport	1848
30448	Stonewall Gap	205
30449	Buffalo Chip	1663
30450	Sunrise Beach	1925
30451	Sunrise Beach	2978
30452	Pilot Hill	1594
30453	Harker Heights	1958
30454	Fishers	2071
30455	Montebello	2960
30456	Montebello	404
30457	Colville	657
30458	Wewahitchka	2401
30459	Hollywood Park	1083
30460	Temperanceville	3027
30461	Rocksprings	1649
30462	Deering	2907
30463	Deering	2383
30464	Deering	3191
30465	Eubank	372
30466	Tagus	354
30467	Sanak	1145
30468	Oakridge	1446
30469	Hoover	1851
30470	Hoover	987
30471	Hoover	764
30472	Hoover	3073
30473	Elkville	1825
30474	Humphreys	1811
30475	Humphreys	1951
30476	Wolfdale	483
30477	Jenks	2906
30478	Blue Mound	3158
30479	Blue Mound	3084
30480	Blue Mound	945
30481	Hooven	2075
30482	Chinle	932
30483	Lofgreen	1622
30484	Lowrys	89
30485	Scott City	2244
30486	Scott City	2247
30487	Foxboro	2823
30488	Ravenwood	2810
30489	Ravenwood	1675
30490	North Augusta	646
30491	Noblesville	2071
30492	College Grove	122
30493	West City	2139
30494	Wallula	2989
30495	Beasley	1890
30496	Vieques Comunidad	1235
30497	Amelia City	100
30498	Fowler	2903
30499	Fowler	1664
30500	Fowler	937
30501	Fowler	345
30502	Fowler	1641
30503	Holabird	2838
30504	Claflin	613
30505	Munsons Corners	1480
30506	Cheriton	313
30507	The Glen	2302
30508	Putney	458
30509	Putney	635
30510	Putney	3097
30511	Littleton Common	95
30512	New Lyme Station	462
30513	Garland	167
30514	Garland	787
30515	Garland	1747
30516	Garland	286
30517	Garland	1421
30518	Garland	2307
30519	Garland	525
30520	Garland	2703
30521	Garland	1569
30522	Garland	1684
30523	Mount Houston	145
30524	Thompsons	1890
30525	Aransas Pass	3214
30526	Rock Lake	801
30527	North Lilbourn	1857
30528	Murdock	1956
30529	Murdock	3068
30530	Murdock	1506
30531	Murdock	3181
30532	Murdock	2312
30533	Elmwood Place	2075
30534	Silvertip	1806
30535	Voorheesville	924
30536	Hesperus	2106
30537	Baldwin Harbor	101
30538	High Ridge	993
30539	Fairdale	561
30540	Fairdale	2633
30541	Lebam	1306
30542	Fairoaks	2632
30543	Sugden	986
30544	Saint Libory	918
30545	Saint Libory	262
30546	Toddville	3220
30547	Toddville	1919
30548	Toddville	2508
30549	Toddville	944
30550	Big Coppitt Key	2348
30551	Juliaetta	1360
30552	Millikin	2747
30553	Cross Village	2519
30554	Cannon Beach	813
30555	Quebradillas Zona Urbana	591
30556	Ebro	482
30557	Ebro	3199
30558	Ackerly	2998
30559	Hide-A-Way Hills	2236
30560	Muldrow	1140
30561	Indian Falls	3011
30562	Topinabee	2481
30563	McLouth	998
30564	Beach Ridge	2910
30565	Kandiyohi	2457
30566	Monaca	1883
30567	Citrus Heights	2688
30568	Saint Simons	1102
30569	Newtonsville	1241
30570	Collingwood Park	278
30571	Port Hudson	1381
30572	Arnold Mill	2715
30573	Maury City	899
30574	Cedarburg	608
30575	Carbury	1717
30576	Greentree	2977
30577	Continental	1247
30578	Continental	2756
30579	East Fultonham	338
30580	Vayas Comunidad	459
30581	Panthersville	1751
30582	Pillsbury	2341
30583	Innsbrook	2311
30584	Pengilly	2777
30585	Rio Grande	1739
30586	Rio Grande	1994
30587	Newry	226
30588	Newry	804
30589	Newry	643
30590	Lattimer	2641
30591	Darrtown	785
30592	Scottsville	2829
30593	Scottsville	2642
30594	Scottsville	1476
30595	Scottsville	444
30596	Scottsville	619
30597	Scottsville	2344
30598	Cheboygan	2481
30599	West Chazy	2895
30600	Stockman	189
30601	Mindenmines	612
30602	Letart Falls	1449
30603	Wakita	1119
30604	Misenheimer	102
30605	Romney	1463
30606	Romney	2921
30607	Sidon	1905
30608	Sidon	1116
30609	Kapowsin	1925
30610	Schoeneck	1139
30611	New Egypt	2627
30612	Atlanta	2181
30613	Atlanta	2715
30614	Atlanta	2071
30615	Atlanta	2887
30616	Atlanta	3176
30617	Atlanta	3159
30618	Atlanta	2584
30619	Atlanta	921
30620	Atlanta	1302
30621	Atlanta	809
30622	Atlanta	1076
30623	Atlanta	1026
30624	Electric Mills	3247
30625	Pfeifer	825
30626	Schaefferstown	1493
30627	Hartwell	1110
30628	Hartwell	1239
30629	Prescott Valley	2495
30630	Kenefick	3107
30631	Axis	1301
30632	North Johns	987
30633	Devola	489
30634	Old Hundred	2726
30635	Quail Creek	2800
30636	Tuttle	1490
30637	Tuttle	1985
30638	Tuttle	1479
30639	Tuttle	2493
30640	New Chicago	1323
30641	Matheson	1876
30642	Escobas	2781
30643	Charing	1063
30644	Turney	2899
30645	Falmouth Foreside	79
30646	Yoe	853
30647	Anchor	2283
30648	Pine City	1464
30649	Pine City	1358
30650	Boyle	1565
30651	Turner	677
30652	Turner	3173
30653	Turner	1077
30654	Turner	1403
30655	Turner	461
30656	Marksboro	2306
30657	Salt Gap	1309
30658	Boerne	1912
30659	Dooling	454
30660	Byrnes Mill	993
30661	East Cathlamet	2445
30662	Fox Chapel	2632
30663	East Highlands	721
30664	Cushman	138
30665	Cushman	2966
30666	Cushman	1446
30667	Huron Beach	2238
30668	Buenos	855
30669	McAllen	1353
30670	Free Home	431
30671	Bedias	847
30672	Flagtown	129
30673	North San Pedro	819
30674	New Underwood	907
30675	New Creek	974
30676	Carter	231
30677	Carter	3269
30678	Carter	3219
30679	Carter	2559
30680	Carter	2562
30681	Carter	922
30682	Carter	1419
30683	Carter	3078
30684	Syria	2059
30685	Ratcliff	2187
30686	Ratcliff	2118
30687	Edgerly	364
30688	Port Washington North	101
30689	Coto Laurel	459
30690	Milliken	1101
30691	Vallonia	1809
30692	Commerce City	1290
30693	Morales	1823
30694	Horseshoe Bend	3171
30695	Horseshoe Bend	1633
30696	Fanning Springs	1549
30697	Toca	2298
30698	Earlsboro	2032
30699	Fort Barnwell	135
30700	Cordes Lakes	2495
30701	Mount Selman	429
30702	Sexton	1598
30703	Popponesset	1162
30704	Forest Lakes Estates	353
30705	Hudson	968
30706	Hudson	1915
30707	Hudson	1073
30708	Hudson	2641
30709	Hudson	1725
30710	Hudson	930
30711	Hudson	2886
30712	Hudson	1901
30713	Hudson	869
30714	Hudson	1101
30715	Hudson	2508
30716	Hudson	95
30717	Hudson	2586
30718	Hudson	1319
30719	Hudson	1191
30720	Hudson	1859
30721	Hudson	2852
30722	Hudson	649
30723	Hudson	921
30724	Hudson	2283
30725	North Bellport	940
30726	Saint Xavier	2724
30727	Highland City	2545
30728	Beeler	3023
30729	Neuse	1399
30730	Atlantis	3071
30731	Reisterstown	1498
30732	Falls City	3264
30733	Falls City	2442
30734	Falls City	2538
30735	Discovery Bay	3143
30736	Montezuma	1724
30737	Montezuma	3155
30738	Montezuma	2791
30739	Montezuma	3074
30740	Montezuma	2007
30741	Montezuma	2265
30742	Valley Mills	340
30743	East Leavenworth	1851
30744	Ladora	3081
30745	Narcissa	1732
30746	Winchester	1125
30747	Winchester	2329
30748	Winchester	2814
30749	Winchester	2243
30750	Winchester	3210
30751	Winchester	2609
30752	Winchester	2123
30753	Winchester	359
30754	Winchester	3196
30755	Winchester	998
30756	Winchester	95
30757	Winchester	1292
30758	Winchester	2679
30759	Winchester	2690
30760	Winchester	1543
30761	Winchester	2534
30762	Winchester	2832
30763	Winchester	2321
30764	Winchester	1228
30765	Somerdale	2552
30766	Somerdale	2977
30767	West Orange	3139
30768	Atlantic	3027
30769	Atlantic	1970
30770	Atlantic	1417
30771	Atlantic	3174
30772	Atlantic	1182
30773	Elizaville	248
30774	Elizaville	914
30775	Juncal Comunidad	911
30776	Nolensville	122
30777	Jefferson Heights	556
30778	Fussels Corner	2545
30779	Belle Meade	2760
30780	Jetersville	2419
30781	Lille	2201
30782	Glendive	2996
30783	Lake Monroe	1627
30784	Archville	1919
30785	Fritz	1320
30786	Croton-on-Hudson	1919
30787	Maharishi Vedic City	1001
30788	Narcisso	1440
30789	East Islip	940
30790	Elm City	2936
30791	Barco	1259
30792	Glenallen	2173
30793	Lamine	158
30794	Kaumalapau	2438
30795	Knappa	813
30796	Olde West Chester	785
30797	Coteau	926
30798	Salem	677
30799	Salem	925
30800	Salem	615
30801	Salem	2102
30802	Salem	466
30803	Salem	1359
30804	Salem	690
30805	Salem	1385
30806	Salem	1662
30807	Salem	2716
30808	Salem	1106
30809	Salem	418
30810	Salem	2343
30811	Salem	2442
30812	Salem	2745
30813	Salem	477
30814	Salem	67
30815	Salem	2281
30816	Salem	2628
30817	Salem	1242
30818	Salem	390
30819	Salem	705
30820	Salem	2124
30821	Salem	643
30822	Salem	1064
30823	East Lynn	2607
30824	Lautz	2081
30825	Bellvue	831
30826	Eagerville	712
30827	Corunna	2451
30828	Corunna	1753
30829	New Rochelle	1919
30830	Karnak	370
30831	Lilly	454
30832	Lilly	3032
30833	Rodarte	1930
30834	Rock Spring	1351
30835	Toco	893
30836	Light Street	1079
30837	Brian Head	1864
30838	New Hempstead	2960
30839	Cecilton	652
30840	Snellville	1373
30841	Frazee	2458
30842	New Wilmington	540
30843	Holtville	153
30844	Holtville	808
30845	Tom Bean	3261
30846	Rowley	2745
30847	Rowley	2812
30848	Ringling	986
30849	Ringling	2842
30850	Reevesville	1268
30851	Reevesville	2509
30852	Hicks	225
30853	Pingree Grove	322
30854	Sterling Forest	3137
30855	Audubon	2458
30856	Audubon	2977
30857	Audubon	731
30858	Audubon	2640
30859	Priest River	623
30860	Arkansaw	1711
30861	Harkeyville	291
30862	Islandton	2109
30863	Bellechester	1997
30864	Blue Island	761
30865	Frazer	3168
30866	Frazer	90
30867	Willoughby Hills	1328
30868	Cuero	2732
30869	Atmautluak	2260
30870	Norma	2242
30871	Beal City	1020
30872	Fort Green	2250
30873	Todd	3026
30874	Gracey	2951
30875	Hayneville	2116
30876	Hayneville	3065
30877	Glen Arm	1498
30878	Ben Wheeler	1804
30879	KapaÊ»au	1488
30880	Byrnedale	162
30881	Hightsville	254
30882	Brevig Mission	717
30883	Carlsville	1708
30884	Burnt Store Marina	2101
30885	Solway	583
30886	Solway	546
30887	Pittston	2641
30888	Payne Gap	3133
30889	Holladay	2637
30890	Holladay	1642
30891	Mahaska	481
30892	Pinesdale	601
30893	Toga	1089
30894	North Valley	405
30895	Knight	225
30896	Smock	2574
30897	Wampum	540
30898	Gilmore City	318
30899	North	1910
30900	Grayburg	2389
30901	Chaffee	3180
30902	Chaffee	2244
30903	Kuna	157
30904	Millers Landing	1806
30905	Brocton	3112
30906	Brocton	2192
30907	Westbend	2914
30908	Wittenberg	1843
30909	Wittenberg	2827
30910	Baton Rouge	1381
30911	New Waterford	1662
30912	Centertown	2780
30913	Centertown	2304
30914	Centertown	722
30915	Winder	2403
30916	Kulm	2029
30917	Francisville	251
30918	Hundred	3225
30919	Schleswig	1408
30920	Akaska	1093
30921	Prague	3236
30922	Prague	1188
30923	Broadalbin	2710
30924	Urie	231
30925	Grifton	1503
30926	Hillview	564
30927	Hillview	2763
30928	Hillview	843
30929	Brentford	1038
30930	Peach Lake	2751
30931	Green Valley	1777
30932	Green Valley	404
30933	Green Valley	907
30934	Green Valley	1247
30935	Green Valley	140
30936	Green Valley	2827
30937	Emerald Lake Hills	1423
30938	Norborne	2228
30939	Reeltown	2933
30940	Gilbertsville	778
30941	Gilbertsville	2468
30942	Gilbertsville	731
30943	Swifton	1818
30944	Alexander	916
30945	Alexander	2136
30946	Alexander	1658
30947	Alexander	375
30948	Alexander	1545
30949	Alexander	2515
30950	Alexander	927
30951	Alexander	2257
30952	Lake Park	3067
30953	Lake Park	2458
30954	Lake Park	494
30955	Lake Park	3071
30956	Lake Park	1314
30957	Port Union	785
30958	Leadwood	230
30959	Northdale	868
30960	Park Grove	3168
30961	South Mansfield	1311
30962	Onida	1424
30963	Marshallberg	1182
30964	Center Ossipee	2227
30965	Arnaudville	2967
30966	Hiwasse	1645
30967	Maywood	761
30968	Maywood	2091
30969	Maywood	404
30970	Maywood	2531
30971	Maywood	1572
30972	Munfordville	1240
30973	Redowl	1663
30974	Madison Lake	1444
30975	Essex	2870
30976	Essex	1498
30977	Essex	1517
30978	Essex	1761
30979	Essex	2092
30980	Essex	721
30981	Essex	2745
30982	Marshdale	992
30983	Rich	161
30984	White River	791
30985	Caney City	2652
30986	Rice	881
30987	Rice	3233
30988	Rice	1644
30989	Rice	657
30990	Rice	721
30991	Rice	2947
30992	Alabaster	275
30993	Alabaster	195
30994	Putnam	1080
30995	Putnam	201
30996	Putnam	2959
30997	Putnam	816
30998	Putnam	3098
30999	Hublersburg	393
31000	Chatfield	1785
31001	Chatfield	1412
31002	Chatfield	700
31003	Togo	2777
31004	Togo	358
31005	Wesley Chapel	494
31006	Wesley Chapel	1915
31007	Murphys Estates	909
31008	Barton Hills	2281
31009	Volente	3050
31010	Loysburg	2954
31011	Amargosa Valley	874
31012	Wrens	1007
31013	Byrdstown	240
31014	Kekaha	2209
31015	Amesti	1362
31016	West Wyoming	2641
31017	Tonto Basin	2920
31018	Bal Harbour	1705
31019	Sturtevant	426
31020	Overly	1717
31021	Cresbard	2944
31022	Calais	469
31023	Flowell	2152
31024	Hulmeville	2634
31025	Mexican Water	932
31026	Glenford	1845
31027	Limestone	2870
31028	Limestone	2250
31029	Limestone	467
31030	Limestone	1568
31031	Limestone	1370
31032	Limestone	2562
31033	Limestone	2201
31034	Limestone	2831
31035	Limestone	1232
31036	Pomeroy	3094
31037	Pomeroy	90
31038	Pomeroy	1449
31039	Pomeroy	3002
31040	Pomeroy	1312
31041	Pomeroy	1277
31042	Pine Brook Hill	2267
31043	Miltona	2819
31044	Jaffrey	1228
31045	Eagleport	117
31046	Milpitas	2198
31047	Cottontown	2491
31048	Oak Harbor	1730
31049	Oak Harbor	1220
31050	Ferriday	1680
31051	Wiley	2840
31052	Iola	847
31053	Iola	1079
31054	Iola	1540
31055	Iola	442
31056	Iola	279
31057	Leonard	192
31058	Leonard	3199
31059	Leonard	2663
31060	Leonard	630
31061	Leonard	2906
31062	Leonard	3180
31063	Garden Prairie	249
31064	Smoot	1186
31065	White Signal	1128
31066	Trawick	1666
31067	North Tonawanda	2910
31068	Gulf Breeze	758
31069	Hayesville	960
31070	Hayesville	383
31071	Hayesville	677
31072	Hayesville	1525
31073	Baring	3217
31074	Baring	586
31075	Glen Elder	1476
31076	Rico	642
31077	Olympia Heights	1705
31078	Harris Hill	1510
31079	York Springs	1298
31080	Greenleafton	700
31081	Booneville	2517
31082	Booneville	2187
31083	Booneville	760
31084	Tecolotito	1039
31085	Castaic	404
31086	Bogalusa	488
31087	Watervliet	1767
31088	Watervliet	924
31089	Miller House	1462
31090	Boquet	2385
31091	Hoven	713
31092	Blue Grass	2171
31093	Blue Grass	2239
31094	South Point	1832
31095	South Point	537
31096	Waresboro	1550
31097	Stowell	1343
31098	Enchanted Oaks	2652
31099	Toone	2697
31100	Oakville	3196
31101	Oakville	58
31102	Oakville	2499
31103	Oakville	1990
31104	Oakville	2352
31105	Oakville	2473
31106	Oakville	3151
31107	Leon Valley	1083
31108	Beech Mountain Lakes	2641
31109	Juncos Zona Urbana	2271
31110	Walnut Shade	753
31111	Martin Lake	1260
31112	Clarkfield	2635
31113	Cavalero Corner	99
31114	Branch Hill	1241
31115	Goodwell	2272
31116	Faribault	2748
31117	Amonate	1776
31118	Tolu	1786
31119	Myrtle	1713
31120	Myrtle	673
31121	Myrtle	506
31122	Myrtle	1880
31123	Myrtle	1690
31124	Millcreek	2637
31125	Hilltop	2408
31126	Hilltop	2946
31127	Hilltop	2564
31128	Hilltop	1174
31129	Hilltop	1260
31130	Hilltop	3076
31131	Pendleton Center	2910
31132	Wauna	1925
31133	Long Mott	1279
31134	Sea Cliff	101
31135	Griffithville	1905
31136	Epworth	3075
31137	Epworth	1931
31138	Epworth	631
31139	Nucla	2662
31140	Tome	3272
31141	Coamo Zona Urbana	1469
31142	Chestnut	2181
31143	Chestnut	2991
31144	Harrisonville	1449
31145	Harrisonville	1498
31146	Harrisonville	3178
31147	Escatawpa	1822
31148	Cedar Bluffs	3236
31149	Cedar Bluffs	2486
31150	Los Llanos	1469
31151	Iona	2195
31152	Iona	1489
31153	Iona	1143
31154	Iona	581
31155	Iona	2101
31156	Seymour	2592
31157	Seymour	756
31158	Seymour	2266
31159	Seymour	3208
31160	Seymour	1809
31161	Seymour	2608
31162	Seymour	519
31163	Flynn	1208
31164	Ione	2845
31165	Ione	874
31166	Ione	1031
31167	Ione	2253
31168	Falkner	1648
31169	Allport	1300
31170	Allport	1585
31171	Capitan	1199
31172	Fertile	1835
31173	Fertile	2543
31174	Brandermill	1615
31175	Victory Mills	1484
31176	Corozal Zona Urbana	2880
31177	Mount Liberty	588
31178	Murchison	2652
31179	Nantucket	2861
31180	Fountain Inn	2031
31181	Ranburne	3275
31182	WaKeeney	1021
31183	Correll	55
31184	Tony	2500
31185	Stewartsville	1756
31186	Stewartsville	2306
31187	Paul Smiths	2131
31188	Moores Bridge	1911
31189	Painted Hills	111
31190	Ridgeway	1115
31191	Ridgeway	3080
31192	Ridgeway	407
31193	Ridgeway	3252
31194	Ridgeway	2624
31195	Ridgeway	2388
31196	Ridgeway	1806
31197	Ridgeway	620
31198	Saint Jo	1148
31199	Maricao Zona Urbana	2616
31200	Wells Branch	3050
31201	McClusky	1226
31202	Tyler	1431
31203	Tyler	1603
31204	Tyler	1192
31205	Tyler	523
31206	Pawnee City	1255
31207	Bowers	362
31208	Lake Angelus	2663
31209	Rio Linda	2688
31210	Mine La Motte	2055
31211	Ken Caryl	992
31212	Peppermill Village	2064
31213	Port Carbon	2826
31214	Seconsett Island	1162
31215	Nassawadox	313
31216	Ledgewood	2877
31217	Laurel Hollow	101
31218	Brownington	1110
31219	Tool	2652
31220	Heafford Junction	1204
31221	Salt Springs	682
31222	South Montrose	3015
31223	Aleknagik	2019
31224	McGregor	1942
31225	McGregor	377
31226	McGregor	2300
31227	McGregor	702
31228	McGregor	2101
31229	Franklintown	853
31230	Cove Neck	101
31231	Mission Woods	1272
31232	Pine Forest	3139
31233	Termo	2799
31234	Clinton	1491
31235	Clinton	1095
31236	Clinton	2632
31237	Clinton	1046
31238	Clinton	2875
31239	Clinton	3238
31240	Clinton	1110
31241	Clinton	1500
31242	Clinton	55
31243	Clinton	1396
31244	Clinton	837
31245	Clinton	2586
31246	Clinton	559
31247	Clinton	2336
31248	Clinton	2064
31249	Clinton	286
31250	Clinton	552
31251	Clinton	1862
31252	Clinton	1725
31253	Clinton	3149
31254	Clinton	2431
31255	Clinton	1760
31256	Clinton	3062
31257	Clinton	96
31258	Clinton	1220
31259	Clinton	1227
31260	Clinton	947
31261	Clinton	2896
31262	Clinton	2821
31263	Hahnville	1081
31264	Belle Vernon	2574
31265	Lake Latonka	2010
31266	Arminto	805
31267	Casnovia	219
31268	Browardale	2729
31269	Tyronza	1499
31270	Davenport Center	2804
31271	Post Oak	1269
31272	Harbour Pointe	99
31273	Avondale Estates	1751
31274	Whitmore Village	1878
31275	Moodys	430
31276	Old Mystic	1593
31277	Askov	1358
31278	Nairn	2473
31279	Lodge Pole	1403
31280	Dos Palos	1985
31281	Alderley	955
31282	Inman	3162
31283	Inman	1869
31284	Inman	2572
31285	Inman	2522
31286	Saw Creek	1177
31287	Mifflintown	1729
31288	Carrothers	2262
31289	Burton	3217
31290	Burton	420
31291	Burton	2199
31292	Burton	1899
31293	Burton	486
31294	Burton	2258
31295	Burton	439
31296	Salix	3032
31297	Salix	3024
31298	Funny River	1806
31299	Halfway	1012
31300	Halfway	492
31301	Halfway	444
31302	Halfway	2542
31303	Halfway	1471
31304	Sunrise Lake	1177
31305	Moundridge	2522
31306	Gila	1128
31307	Slagle	225
31308	Gattman	2355
31309	Le Center	3237
31310	Lakes of the Four Seasons	2498
31311	Westbrook	1477
31312	Westbrook	79
31313	Westbrook	3122
31314	Lueders	3022
31315	Tenstrike	546
31316	Broaddus	2172
31317	Castroville	827
31318	Castroville	2955
31319	Ursa	1291
31320	Donna	1353
31321	Rio Vista	1266
31322	Rio Vista	2867
31323	Belleville	2606
31324	Belleville	478
31325	Belleville	918
31326	Belleville	2869
31327	Belleville	995
31328	Belleville	1871
31329	Belleville	749
31330	Belleville	2474
31331	Lawnside	2977
31332	Oak Brook	950
31333	Irvington	930
31334	Irvington	2824
31335	Irvington	1919
31336	Irvington	487
31337	Irvington	1136
31338	Irvington	1598
31339	New Strawn	1054
31340	Granbury	1933
31341	Southern Shores	842
31342	Maple Bluff	749
31343	Fowlstown	2485
31344	Water Mill	940
31345	Ingold	286
31346	La Union	1242
31347	Fairton	82
31348	Kimper	1172
31349	Port Neches	1003
31350	Elk Mound	2969
31351	Chernofski	1974
31352	Biorka	1974
31353	Tukwila	3217
31354	Cedarville	1415
31355	Cedarville	566
31356	Cedarville	1771
31357	Cedarville	959
31358	Cedarville	1597
31359	Cedarville	2064
31360	Cedarville	1172
31361	Cedarville	82
31362	Barataria	1005
31363	Mahtomedi	480
31364	Vandergrift	2385
31365	Roan Mountain	2559
31366	West Tawakoni	3215
31367	Candelero Arriba	2170
31368	Aliceville	366
31369	Aliceville	1054
31370	Middle Amana	3081
31371	Wilno	1192
31372	Zag	116
31373	Paso Robles	2207
31374	Hamer	1008
31375	New Hyde Park	101
31376	West Hattiesburg	890
31377	Zap	2008
31378	Rockland	585
31379	Rockland	2873
31380	Rockland	2657
31381	Rockland	2563
31382	Rockland	3130
31383	Rockland	3072
31384	Reagan	2597
31385	Reagan	2653
31386	GuÃ¡nica Zona Urbana	1252
31387	Schroon Lake	2742
31388	Nicholson	1029
31389	Nicholson	1829
31390	Nicholson	136
31391	Iota	1612
31392	Myrtle Creek	2814
31393	New Munich	1709
31394	Wilna	1128
31395	Malott	1874
31396	Rouseville	2990
31397	Wahak Hotrontk	1247
31398	Garciasville	166
31399	Gallipolis	1739
31400	Camden	585
31401	Camden	2052
31402	Camden	2977
31403	Camden	365
31404	Camden	1031
31405	Camden	3238
31406	Camden	409
31407	Camden	2540
31408	Camden	241
31409	Camden	2738
31410	Camden	2220
31411	Camden	937
31412	Camden	304
31413	Camden	63
31414	Camden	216
31415	Camden	1642
31416	Camden	244
31417	Camden	2975
31418	Seven Oaks	2540
31419	Seven Oaks	324
31420	Vaughnsville	2756
31421	Lowes Island	3118
31422	Liberty Pole	226
31423	Gill	1101
31424	Scammon Bay	2367
31425	Exmore	313
31426	Mount Penn	362
31427	Chula Vista	2381
31428	Rosholt	1636
31429	Rosholt	3241
31430	Wellsville	1496
31431	Wellsville	2133
31432	Wellsville	853
31433	Wellsville	736
31434	Wellsville	1662
31435	Wellsville	2709
31436	Rockwall	2985
31437	Willington	1456
31438	Presto	2632
31439	Graeagle	3011
31440	Lizella	1583
31441	Clarkesville	2884
31442	Wilma	3106
31443	Slidell	1147
31444	Slidell	2905
31445	Hybla Valley	2405
31446	Manor Creek	997
31447	Boston Heights	1725
31448	Delft Colony	308
31449	Carsonville	1063
31450	Carsonville	445
31451	Toro	1032
31452	Hamel	91
31453	Hamel	2054
31454	Meriwether	1456
31455	Mishicot	626
31456	Eclectic	808
31457	Freeland	299
31458	Freeland	1220
31459	Freeland	2395
31460	Freeland	2641
31461	Garfield	1464
31462	Garfield	3050
31463	Garfield	1645
31464	Garfield	2676
31465	Garfield	1242
31466	Garfield	301
31467	Garfield	2819
31468	Garfield	1572
31469	Garfield	1256
31470	Villa Ridge	2130
31471	Red Gate	1353
31472	Aberfoil	1441
31473	Rushsylvania	2184
31474	Deep Water	2564
31475	Diamondville	1186
31476	Castana	3000
31477	Salvo	842
31478	Springbrook	880
31479	Springbrook	1821
31480	Hudson Oaks	931
31481	Kettle Falls	657
31482	Mount Oliver	2632
31483	Mount Royal	2626
31484	Melbourne Village	2189
31485	Rion	407
31486	Sergeant Bluff	3024
31487	Woodbury	2954
31488	Woodbury	3137
31489	Woodbury	2995
31490	Woodbury	480
31491	Woodbury	641
31492	Woodbury	784
31493	Woodbury	2764
31494	Woodbury	2626
31495	North Plymouth	1936
31496	Vancourt	3226
31497	Cerritos	404
31498	Natural Bridge Station	152
31499	Nissequogue	940
31500	Asheboro	2677
31501	Yucca	829
31502	Port Jefferson Station	940
31503	Rios	1600
31504	Quasqueton	2812
31505	Cambria	1078
31506	Cambria	123
31507	Cambria	2897
31508	Cambria	2207
31509	Salus	1273
31510	Coupeville	1220
31511	Echo	897
31512	Echo	674
31513	Echo	1726
31514	Echo	2635
31515	Echo	2402
31516	Echo	1544
31517	Ingomar	506
31518	Ingomar	2377
31519	Connorville	1772
31520	Woodburn	443
31521	Woodburn	677
31522	Woodburn	2305
31523	Woodburn	1211
31524	Woodburn	2405
31525	Quogue	940
31526	Henniker	598
31527	Wolf Creek	1433
31528	Wolf Creek	1665
31529	Wolf Creek	2203
31530	Wolf Creek	2206
31531	Mount Olivet	752
31532	Arnegard	916
31533	Dawesville	3029
31534	Weimar	206
31535	Weimar	2289
31536	McKeansburg	2826
31537	Sulphur Rock	138
31538	Zeb	430
31539	Fort Gates	872
31540	Tamaroa	1842
31541	Crystal Springs	1915
31542	Crystal Springs	2446
31543	Crystal Springs	2295
31544	Williston Highlands	1455
31545	Buladean	1473
31546	Las Croabas	330
31547	Rosendale	2090
31548	Rosendale	610
31549	Rosendale	2695
31550	Maple Bay	2543
31551	Kinter	2113
31552	Skime	877
31553	Ladoga	725
31554	Donie	2524
31555	Cedar Hills	465
31556	Cedar Hills	705
31557	White Stone	1136
31558	Piltzville	3149
31559	Wake Forest	1399
31560	Anatone	147
31561	Stovall	282
31562	Stovall	161
31563	Stovall	2995
31564	Nevis	2784
31565	South Patrick Shores	2189
31566	Toksook Bay	2260
31567	Shingletown	2883
31568	Holdrege	1302
31569	Soldotna	1806
31570	Provo	3207
31571	Provo	705
31572	Provo	124
31573	Tunica Resorts	2658
31574	Enetai	1048
31575	Saragosa	1781
31576	Winfall	2647
31577	Broadmoor	3228
31578	Broadmoor	1423
31579	Weekapaug	478
31580	Hixton	1830
31581	Sprague River	759
31582	Kitty Hawk	842
31583	Bokoshe	2263
31584	Tullahassee	3079
31585	Salol	877
31586	South Renovo	2902
31587	Lake Brownwood	633
31588	Cidra Zona Urbana	1066
31589	Saint Petersburg	297
31590	Saint Petersburg	2785
31591	Tibes Comunidad	459
31592	McAfee	1889
31593	Crown Point	1005
31594	Crown Point	1806
31595	Crown Point	1323
31596	Wausa	589
31597	Goofy Ridge	746
31598	Mount Savage	1497
31599	Rollingwood	3050
31600	Rollingwood	3143
31601	South San Jose Hills	404
31602	New Douglas	2054
31603	Barronett	2315
31604	Iowa	364
31605	McKees Rocks	2632
31606	Nushagak	2019
31607	Mondamin	616
31608	Kootenai	623
31609	Carson	1130
31610	Carson	2843
31611	Carson	404
31612	Carson	1930
31613	Carson	3016
31614	Malone	452
31615	Malone	2683
31616	Malone	2499
31617	Malone	1816
31618	Malone	2131
31619	Sayner	1159
31620	South Bay	3071
31621	Chadds Ford	2809
31622	State Center	2462
31623	Marblehead	1730
31624	Marblehead	2745
31625	Coletown	2570
31626	Terry	1894
31627	Terry	1590
31628	Terry	1046
31629	Cassandra	3032
31630	Promise City	2608
31631	Taylors Falls	2021
31632	Cammack Village	375
31633	Toms Place	3160
31634	Tybee Island	1631
31635	Magnetic Springs	510
31636	Stoutland	2978
31637	Seven Lakes	326
31638	Manchester-by-the-Sea	2745
31639	Merino	2180
31640	Capitol	2558
31641	Fleming-Neon	3133
31642	West Falmouth	1162
31643	Conover	2526
31644	Veteran	356
31645	Massadona	1721
31646	New Buffalo	1767
31647	New Buffalo	1848
31648	Belgique	1843
31649	Timber Lake	200
31650	Skiddy	2879
31651	Killona	1081
31652	Gilmanton	2686
31653	La Platte	1014
31654	Cragford	1533
31655	West Springfield	542
31656	West Springfield	2405
31657	Maple Plain	91
31658	Thunder Hawk	2296
31659	Mooers	2895
31660	Orchard Beach	2440
31661	Monument Beach	1162
31662	Maiden Rock	1926
31663	Maiden Rock	2026
31664	Eagle City	1404
31665	Mermentau	1612
31666	Ellport	540
31667	Bovard	2385
31668	Broadview	761
31669	Broadview	332
31670	Broadview	812
31671	Fieldbrook	319
31672	Fort Towson	895
31673	Zim	3195
31674	Saint Leo	1915
31675	Saint Leo	2635
31676	Saint Leo	3068
31677	Chapmanville	2179
31678	North Salem	1891
31679	Lithia Springs	2820
31680	Modena	90
31681	Pocono Pines	2351
31682	Chewelah	657
31683	La Vergne	2671
31684	Ironia	2877
31685	Aspen Hill	740
31686	Buck Grove	1408
31687	Gastonia	2835
31688	Kernville	263
31689	Port Hadlock	989
31690	Amistad	507
31691	Westland	483
31692	Westland	2606
31693	Otterville	1523
31694	Otterville	158
31695	Mascot	1897
31696	Mascot	583
31697	Missoula	3149
31698	Ayer	2989
31699	Ayer	95
31700	Edgewater Park	2841
31701	Abbyville	3201
31702	Walkertown	1980
31703	Glenfield	3117
31704	Glenfield	2529
31705	Glenfield	2632
31706	La Fermina	800
31707	Loretto	91
31708	Loretto	680
31709	Loretto	532
31710	Loretto	253
31711	Loretto	3032
31712	Oceano	2207
31713	Tesco	1009
31714	Frederick	1555
31715	Frederick	2749
31716	Frederick	1101
31717	Frederick	635
31718	Frederick	3153
31719	Vanport	1883
31720	Jessieville	2446
31721	Avon Park	2909
31722	Pacific Beach	2499
31723	Warm Springs	983
31724	Warm Springs	874
31725	Warm Springs	2374
31726	Warm Springs	2684
31727	Warm Springs	395
31728	Warm Springs	2995
31729	Sea Bright	278
31730	Earlington	3253
31731	Huguley	1342
31732	Gloucester City	2977
31733	Jamacha Junction	2381
31734	McNaughton	3239
31735	Blakely	1085
31736	Blakely	3057
31737	Loretta	2833
31738	Loretta	2515
31739	Oceana	1027
31740	Frederica	216
31741	Dardanelle	2798
31742	Dardanelle	2869
31743	Aguilita Comunidad	846
31744	Skidaway Island	1631
31745	Pleasant Garden	710
31746	Shulerville	1723
31747	Kronenwetter	628
31748	Burnsville	1237
31749	Burnsville	2864
31750	Burnsville	1765
31751	Burnsville	523
31752	Burnsville	173
31753	Chicago Heights	761
31754	Sierra Vista	3232
31755	Rimforest	721
31756	New Town	354
31757	Round Hill	3118
31758	Cathedral City	3210
31759	Medicine Lake	91
31760	Medicine Lake	1223
31761	Duluth	3195
31762	Duluth	1373
31763	Duluth	2033
31764	Ivanhoe	2404
31765	Ivanhoe	286
31766	Ivanhoe	1326
31767	Ivanhoe	308
31768	Ivanhoe	1192
31769	Crossroads	2089
31770	Mahanoy City	2826
31771	West Hurley	1952
31772	Boykin	409
31773	Boykin	2704
31774	Boykin	365
31775	Pleasant Unity	2385
31776	Buckholts	2176
31777	McHenry	3192
31778	McHenry	3117
31779	McHenry	2665
31780	McHenry	2780
31781	Four Bears Village	916
31782	Indian Springs Village	195
31783	Monteview	1008
31784	North Bethesda	740
31785	Nixons Crossroads	3220
31786	Roundhead	2388
31787	La Homa	1353
31788	Celina	1527
31789	Celina	1335
31790	Celina	2007
31791	Riva	2440
31792	Meacham	1544
31793	Waxahachie	823
31794	Harrah	958
31795	Harrah	3268
31796	Yarborough Landing	833
31797	Onancock	3027
31798	North Charleston	905
31799	Roman Forest	734
31800	Tuthill	1047
31801	Endwell	1153
31802	Chesterhill	117
31803	Fort White	1075
31804	Cooperton	1992
31805	Lavon	1335
31806	Nasonville	2339
31807	Montbrook	1455
31808	Featherville	809
31809	Falls Village	1990
31810	Osyka	1168
31811	Hartsville	334
31812	Hartsville	1553
31813	Hartsville	647
31814	New Era	1680
31815	New Era	3166
31816	Ickesburg	1848
31817	Higbee	2681
31818	Moville	3024
31819	Wellsburg	1524
31820	Wellsburg	1069
31821	Wellsburg	2503
31822	Wellsburg	2916
31823	Collyer	1021
31824	Eddiceton	2137
31825	Cheverly	2064
31826	Crafton	721
31827	Crafton	2632
31828	Joplin	2502
31829	Joplin	3044
31830	Joplin	3104
31831	Ferryville	1416
31832	Hollywood Heights	918
31833	Chattanooga Valley	1351
31834	Peoria Heights	2456
31835	New Auburn	3034
31836	New Auburn	660
31837	Hampton Springs	1064
31838	Rentchler	918
31839	Trent Woods	135
31840	Carrboro	3135
31841	Keeneyville	2151
31842	Keeneyville	950
31843	Ecru	134
31844	La Rosita	166
31845	McDaniel	1160
31846	El Paso	3227
31847	El Paso	1905
31848	El Paso	1999
31849	Advance	248
31850	Advance	2092
31851	Advance	541
31852	Advance	2912
31853	Salunga	1139
31854	Flanigan	2332
31855	Free Soil	747
31856	Collbran	1752
31857	Collbran	2167
31858	Wild Rose	1210
31859	Redlands	721
31860	Redlands	2167
31861	Grovetown	1074
31862	Byersville	386
31863	Imbery	1908
31864	Ercildoun	90
31865	Brave	561
31866	Columbine	1519
31867	Jennings Lodge	3223
31868	Sebrell	1015
31869	Okabena	1814
31870	Corsica	1000
31871	Corsica	2818
31872	Brice Prairie	3130
31873	Ballantine	332
31874	Lyle	149
31875	Lyle	1432
31876	Finlayson	1358
31877	Rock Valley	2926
31878	Amagon	1818
31879	Cotton Center	308
31880	Fairmont City	918
31881	Maunaloa	2438
31882	Pluckemin	129
31883	Clintwood	550
31884	Saint George Island	2580
31885	Saint George Island	2134
31886	Fieldon	1523
31887	Old Greenwich	408
31888	Phenix	1507
31889	Haddon Heights	2977
31890	Wintersburg	3086
31891	Logandale	2329
31892	Kapalua	2438
31893	Galesburg	419
31894	Galesburg	584
31895	Galesburg	603
31896	Galesburg	3056
31897	Gun Barrel City	2652
31898	Guaynabo Zona Urbana	1921
31899	Tildenville	3141
31900	Bratt	2667
31901	Greenwater	1925
31902	Saint Mary-of-the-Woods	3110
31903	Magnolia Springs	3042
31904	Magnolia Springs	1988
31905	Harrison Grove	2910
31906	Simmesport	1975
31907	Keuka Park	1575
31908	Saint Stephen	1723
31909	Saint Stephen	1709
31910	Balch Springs	525
31911	Torrington	356
31912	Torrington	1990
31913	Brecksville	708
31914	Eaton Estates	845
31915	Madaket	2861
31916	Soldier Creek	2648
31917	Sunrise Beach Village	1738
31918	Green Park	3196
31919	Council Grove	2879
31920	Arvana	2998
31921	Lynd	140
31922	Lynn	1421
31923	Lynn	205
31924	Lynn	539
31925	Lynn	2745
31926	Lynn	2970
31927	Lynn	2679
31928	Nespelem	1874
31929	New Madison	2636
31930	Remsen	1935
31931	Remsen	3238
31932	Freedom	1044
31933	Freedom	2477
31934	Freedom	1883
31935	Freedom	1362
31936	Freedom	461
31937	Heritage Village	2409
31938	Mount Victory	2388
31939	Groveton	773
31940	Groveton	2632
31941	Groveton	316
31942	Groveton	2405
31943	Sanatorium	1787
31944	Sunizona	3232
31945	International Falls	296
31946	Pell Lake	1094
31947	Gilman City	620
31948	West Freehold	278
31949	Waldorf	335
31950	Waldorf	2972
31951	Velda Village	3196
31952	Leisure Village West	2627
31953	Millhurst	278
31954	East Fairview	916
31955	Springport	1107
31956	Springport	1819
31957	Marty	3096
31958	Fern Prairie	2326
31959	Illiopolis	695
31960	Furnace	1867
31961	El Tumbao	1252
31962	Discovery Harbour	1488
31963	Conneaut	462
31964	Arkana	2459
31965	Pella	687
31966	Pella	2827
31967	Duarte	404
31968	Southview	483
31969	Deferiet	995
31970	Munday	582
31971	Nassau	2828
31972	Nassau	1916
31973	National Park	2626
31974	Chickasha	2493
31975	Justus	238
31976	Kummer	3217
31977	Hysham	160
31978	Oakdale	2360
31979	Oakdale	2632
31980	Oakdale	487
31981	Oakdale	440
31982	Oakdale	1816
31983	Oakdale	112
31984	Oakdale	394
31985	Oakdale	2111
31986	Oakdale	1941
31987	Oakdale	2037
31988	Oakdale	940
31989	Oakdale	480
31990	Woodcreek	1378
31991	Catharine	825
31992	Dewey Beach	1887
31993	Richland Springs	291
31994	Aguadilla Zona Urbana	2414
31995	Rosine	2780
31996	Flippen	1113
31997	East Norwich	101
31998	Norwood Young America	1037
31999	Marquand	2055
32000	Summerhill	3032
32001	Litroe	509
32002	Ozora	2631
32003	Four Lakes	1431
32004	Langes Corners	639
32005	Luthersburg	1300
32006	Delanco	2841
32007	Oak Hills	918
32008	Oak Hills	465
32009	Oak Hills	789
32010	Oak Hills	721
32011	Oysterville	1306
32012	Independence	854
32013	Independence	708
32014	Independence	486
32015	Independence	3260
32016	Independence	1826
32017	Independence	2538
32018	Independence	91
32019	Independence	2812
32020	Independence	2027
32021	Independence	1792
32022	Independence	2411
32023	Independence	169
32024	Independence	728
32025	Independence	2397
32026	Lyon	161
32027	Hastings	223
32028	Hastings	2497
32029	Hastings	761
32030	Hastings	986
32031	Hastings	2864
32032	Hastings	1297
32033	Hastings	3032
32034	Hastings	625
32035	Cross City	2394
32036	Harris	1394
32037	Harris	229
32038	Harris	2158
32039	Harris	829
32040	Harris	1951
32041	Harris	2021
32042	Sadieville	2245
32043	Hillsboro Beach	2729
32044	Delphi	2220
32045	Prior Lake	2246
32046	El Granada	1423
32047	Venetian Village	1326
32048	Woodbridge	94
32049	Woodbridge	321
32050	Woodbridge	590
32051	Covel	1027
32052	North Middletown	1570
32053	North Middletown	278
32054	Moorestown	2841
32055	Ponderosa Park	1876
32056	Corbett	859
32057	Marsh	714
32058	Marsh	2996
32059	The Hideout	2605
32060	Bowleys Quarters	1498
32061	Whitman Square	2626
32062	Rockbridge	564
32063	Rockbridge	2236
32064	Jerome	2063
32065	Jerome	155
32066	Jerome	832
32067	Jerome	695
32068	Jerome	131
32069	Jerome	359
32070	Jerome	2495
32071	Timpas	345
32072	Strawberry Point	1942
32073	Reubens	2534
32074	Yakutat	156
32075	New Church	3027
32076	Allenhurst	278
32077	Allenhurst	3105
32078	Calipatria	153
32079	Stoughton	749
32080	Newhall	1639
32081	Newhall	404
32082	Edith	645
32083	Morrison	2304
32084	Morrison	1718
32085	Morrison	2503
32086	Morrison	3230
32087	Morrison	2166
32088	Morrison	992
32089	Los Lunas	3272
32090	Tangipahoa	169
32091	Cotati	1790
32092	Sabana Eneas	3129
32093	Bakersfield	263
32094	Bakersfield	1693
32095	Bakersfield	1157
32096	Cochranton	1417
32097	Garden Farms	2207
32098	Ankenytown	588
32099	Lidderdale	2224
32100	West Leipsic	2756
32101	Cherry Hills Village	2362
32102	Westcliffe	3061
32103	Herreid	175
32104	Chase Crossing	3027
32105	Lugert	1992
32106	Craigtown	652
32107	Tuckahoe	1919
32108	Tuckahoe	59
32109	Maypens	2089
32110	Romayor	3107
32111	Nichols Hills	958
32112	Seven Sisters	1600
32113	Topsham	325
32114	Cuba City	1131
32115	Carriere	136
32116	Alamo Alto	3227
32117	Fort Jesup	1032
32118	Breezy Point	704
32119	Winamac	369
32120	Broadus	210
32121	Cobalt Village	2055
32122	Munden	1871
32123	Basco	1969
32124	Du Quoin	1842
32125	Whitlash	3104
32126	Bagdad	758
32127	Bagdad	721
32128	Bagdad	2495
32129	Bagdad	193
32130	Wasola	1157
32131	Holstein	1297
32132	Holstein	3054
32133	Elberfeld	391
32134	Staatsburg	3031
32135	Wild Horse	1609
32136	Komatke	3086
32137	New Preston	1990
32138	Bartley	2379
32139	Bartley	2204
32140	Hutchins	525
32141	Hutchins	876
32142	Hutchins	1965
32143	LÄnaÊ»i City	2438
32144	Dorneyville	1372
32145	Harrod	441
32146	Bartles	537
32147	Redbird Smith	1140
32148	Rowesville	1910
32149	Barryville	1946
32150	Beaver Valley	989
32151	Flensburg	164
32152	Lavallette	2627
32153	Mountain Center	3210
32154	Goober Hill	189
32155	Wyanet	1704
32156	Flippin	684
32157	Amenia	3031
32158	Amenia	3180
32159	Novice	897
32160	Powder River	805
32161	Riley	680
32162	Riley	3110
32163	Riley	212
32164	Riley	211
32165	Runnelstown	1839
32166	La Center	1875
32167	La Center	2326
32168	Shoshoni	968
32169	Young	2920
32170	Port Clyde	585
32171	Ozona	898
32172	Ozona	136
32173	Sutter	220
32174	Ozone	1273
32175	Ozone	77
32176	Millgrove	900
32177	Raymer	1101
32178	Renville	222
32179	Yanush	604
32180	Apache Creek	2040
32181	Point Arena	1053
32182	Shoshone	2411
32183	Shoshone	1205
32184	Brodnax	2396
32185	Southworth	1048
32186	Quiogue	940
32187	Fountain Lake	2446
32188	Nestoria	2149
32189	South Wayne	2773
32190	Spruce Pine	1473
32191	Spruce Pine	2125
32192	Lourdes	256
32193	Juneau	955
32194	Juneau	234
32195	Los Altos	2198
32196	Whites City	348
32197	Lime Village	2260
32198	South Zanesville	338
32199	Pickett	2690
32200	Mountainair	1625
32201	Myrtletown	319
32202	Lacona	2308
32203	Lacona	1262
32204	Ayrshire	3202
32205	Piney River	272
32206	Lake Hiawatha	2877
32207	Calva	2013
32208	Terrell Hills	1083
32209	Lovingston	272
32210	Baldwin Park	404
32211	Baldwin Park	3178
32212	Marmaduke	560
32213	HonuÊ»apo	1488
32214	Lacassine	3069
32215	Lesslie	851
32216	Lorida	2909
32217	Barden	2246
32218	Ida May	2099
32219	Izagora	2276
32220	Bonduel	2827
32221	Pemberton	2841
32222	Pemberton	1444
32223	Athol Springs	1510
32224	Rosita	3061
32225	Rosita	166
32226	Dellview	2835
32227	Shafter	2160
32228	Shafter	263
32229	Shafter	108
32230	Lacomb	943
32231	Chuluota	1627
32232	Calwa	937
32233	Lapoint	1443
32234	Olustee	1811
32235	Olustee	1470
32236	Minor Hill	1365
32237	Chenequa	2426
32238	Caruthers	937
32239	Ulysses	788
32240	Ulysses	715
32241	Ulysses	535
32242	Ulysses	1123
32243	Ponca City	1366
32244	Patesville	1971
32245	Stitzer	1131
32246	Long Bridge	1975
32247	Belding	1613
32248	Belding	1693
32249	Old Field	940
32250	Suttle	1846
32251	Pine Point	2458
32252	Lake Fenton	2258
32253	Plum Creek	739
32254	Shawnee Land	3152
32255	Mission Bend	1890
32256	Copperas Cove	872
32257	Rushford	1496
32258	Rushford	700
32259	Scaggsville	261
32260	Crestone	384
32261	Schnecksville	1372
32262	Cambridge Springs	1417
32263	Barrett	1122
32264	Barrett	145
32265	East Barre	464
32266	Delanson	979
32267	Girdwood	2364
32268	Caroga Lake	2710
32269	Mikado	2762
32270	Bankston	1931
32271	Cressey	1985
32272	Bel Air	2959
32273	Winterboro	1407
32274	Walthourville	3105
32275	Edina	91
32276	Edina	586
32277	Reedsport	2814
32278	Cutler Bay	1705
32279	Mellott	361
32280	Cedar Glen	721
32281	Mildred	881
32282	Mildred	1590
32283	Mildred	1950
32284	Mildred	442
32285	Sewickley Hills	2632
32286	Arvada	1225
32287	Arvada	992
32288	Mount Hope	2877
32289	Mount Hope	887
32290	Mount Hope	1131
32291	Mount Hope	2564
32292	Seminoe Dam	3036
32293	Mosquero	3014
32294	Forbestown	766
32295	Pine Hollow	906
32296	Shingler	1836
32297	Denver	1183
32298	Denver	1139
32299	Denver	298
32300	Denver	1873
32301	Denver	667
32302	Denver	1837
32303	Boyne Falls	541
32304	Huntsdale	250
32305	Bayou Meto	2623
32306	Pee Dee	685
32307	Schell City	227
32308	North Carrollton	2225
32309	Sarben	186
32310	North Troy	1436
32311	Rocky Ripple	678
32312	Mole Lake	1419
32313	Homer Glen	875
32314	Brockport	2344
32315	Brockport	162
32316	Broseley	783
32317	Pleasant Site	2125
32318	Belford	278
32319	Mount Hood	949
32320	Waggoner	735
32321	Lost Creek	3050
32322	Lost Creek	670
32323	Lost Creek	615
32324	Lost Creek	1031
32325	Kustatan	1806
32326	Shop Springs	2939
32327	Rock Cave	1658
32328	Little Britain	1139
32329	Prestonville	2222
32330	Slayden	2434
32331	Slayden	2463
32332	Carnot	2632
32333	Rhine	954
32334	Lipan	1933
32335	Arendtsville	1298
32336	Nimrod	1463
32337	Nimrod	2171
32338	Statham	2403
32339	Boydton	2178
32340	Eden	128
32341	Eden	1510
32342	Eden	2469
32343	Eden	155
32344	Eden	2083
32345	Eden	3093
32346	Eden	2699
32347	Eden	1433
32348	Eden	2090
32349	Eden	3078
32350	Ormond Beach	814
32351	Crucero	721
32352	Pinehill	1769
32353	North Chelmsford	95
32354	Vancleve	670
32355	Metlakatla	1345
32356	Sellers	685
32357	Boelus	262
32358	Perrydale	2538
32359	New Roads	2578
32360	Lamasco	143
32361	Corcovado	2992
32362	Fishing Creek	2508
32363	Falconer	3112
32364	Cooperdale	56
32365	Goltry	2269
32366	Lusby	2983
32367	Livermore	1556
32368	Livermore	2284
32369	Livermore	831
32370	Livermore	318
32371	Sutton	2020
32372	Sutton	1765
32373	Sutton	1535
32374	Sutton	150
32375	Hershey	1196
32376	Hershey	1369
32377	Tiltonsville	1006
32378	Sedillo	405
32379	Truckee	1784
32380	Cameron Park	1832
32381	Cameron Park	1594
32382	Friona	3234
32383	Northland	1058
32384	Obion	346
32385	Carbonado	1925
32386	Stokes	1503
32387	Eddy	702
32388	South Taft	263
32389	Brocket	653
32390	Goshen	1241
32391	Goshen	152
32392	Goshen	1446
32393	Goshen	3137
32394	Goshen	705
32395	Goshen	1175
32396	Goshen	471
32397	Goshen	1692
32398	Goshen	3145
32399	Goshen	740
32400	Goshen	308
32401	Lakewood Village	2452
32402	Blairs Mills	116
32403	Ochlocknee	3029
32404	Fountain	902
32405	Fountain	3228
32406	Fountain	747
32407	Fountain	700
32408	Fountain	1503
32409	City View	2031
32410	Pickens	2678
32411	Pickens	229
32412	Pickens	2278
32413	Pickens	367
32414	Pickens	1661
32415	Metter	655
32416	Bellfountain	1638
32417	Cyrus	2644
32418	Sainte Marie	3043
32419	Edgerton	805
32420	Edgerton	378
32421	Edgerton	837
32422	Edgerton	2396
32423	Edgerton	1272
32424	Edgerton	1851
32425	Edgerton	2373
32426	Brownwood	633
32427	Brownwood	2092
32428	Cane Beds	829
32429	Hayward	2833
32430	Hayward	1556
32431	Hayward	1713
32432	Hayward	2383
32433	Johnstonville	2799
32434	Maunie	1907
32435	D'Iberville	617
32436	Mekinock	1581
32437	Arion	1408
32438	Yorklyn	2563
32439	Yorklyn	853
32440	El Rio	3221
32441	Macclesfield	1098
32442	Christopher	3217
32443	Christopher	2139
32444	David City	788
32445	Los Banos	1985
32446	McIntyre	183
32447	Parksley	3027
32448	Point	821
32449	Point	509
32450	Woodsville	3134
32451	Woodsville	386
32452	Bentley	1129
32453	Bentley	1969
32454	Bentley	887
32455	Bentley	903
32456	Bentley	3016
32457	La Grange Park	761
32458	Waikoloa Village	1488
32459	Carlstadt	1572
32460	Bannockburn	1326
32461	Faceville	2485
32462	Edesville	217
32463	Candelero Arriba Comunidad	2170
32464	Old Brownsboro Place	997
32465	Rancocas	2841
32466	Wilsons Mills	1703
32467	Wilsons Mills	1165
32468	Coral Bay	1218
32469	Norwalk	2360
32470	Norwalk	404
32471	Norwalk	2308
32472	Norwalk	408
32473	Norwalk	341
32474	Quinhagak	2260
32475	Van Hiseville	2627
32476	Lincoln Acres	2381
32477	Menard	402
32478	Colwell	265
32479	Bernalillo	971
32480	Edge	1626
32481	Appleton	1956
32482	Appleton	2642
32483	Appleton	2266
32484	Appleton	2910
32485	Moxahala	1845
32486	Umkumiute	2260
32487	Lake Leelanau	2787
32488	Town of Pines	2498
32489	Anaconda	395
32490	Wiota	3174
32491	Wiota	2773
32492	Arimo	2863
32493	Mercersburg	2135
32494	Derry	2085
32495	Derry	2385
32496	Derry	2991
32497	El MangÃ³ Comunidad	2271
32498	Poolesville	740
32499	Upsala	164
32500	Glen Riddle	2809
32501	Hewins	3113
32502	Scofield	3037
32503	Escobares	166
32504	Williamsport	1770
32505	Williamsport	1986
32506	Williamsport	492
32507	Williamsport	2303
32508	Prinsburg	2457
32509	Colonial Heights	239
32510	Colonial Heights	1948
32511	Collinsburg	2385
32512	Perryville	2488
32513	Perryville	2385
32514	Perryville	1847
32515	Perryville	2011
32516	Perryville	1843
32517	Perryville	2730
32518	Perryville	652
32519	Perryville	2527
32520	De Sart	290
32521	Beaconsfield	2700
32522	Orange Grove	617
32523	Orange Grove	2803
32524	Blackfoot	672
32525	Blackfoot	1740
32526	Miramar Beach	1547
32527	Gentryville	1939
32528	Gentryville	2817
32529	Terminous	590
32530	Warm River	970
32531	King and Queen Court House	1654
32532	Dooms	1261
32533	Crystal Lake	3192
32534	Crystal Lake	1317
32535	Crystal Lake	2545
32536	Crystal Lake	1965
32537	Cottage City	2064
32538	Hickson	3180
32539	Edie	131
32540	Paxville	1355
32541	Farnam	2999
32542	Sydney	2645
32543	Petros	112
32544	Raven	1776
32545	Sparlingville	920
32546	Gladys	176
32547	Yznaga	1832
32548	Port Graham	1806
32549	Chismville	2187
32550	Perley	529
32551	Casa Blanca	1914
32552	Casa Blanca	1769
32553	Ridgeland	3046
32554	Ridgeland	2052
32555	Ridgeland	2969
32556	Woodbranch	734
32557	Ashton	2082
32558	Ashton	970
32559	Ashton	2158
32560	Ashton	2492
32561	Ashton	2109
32562	Ashton	2098
32563	Ashton	740
32564	Ashton	1038
32565	Union	2353
32566	Union	2637
32567	Union	251
32568	Union	2227
32569	Union	1229
32570	Union	495
32571	Union	2387
32572	Union	1275
32573	Union	2130
32574	Union	3181
32575	Union	503
32576	Union	3193
32577	Union	737
32578	Union	744
32579	Union	559
32580	Union	3192
32581	Karnes City	3264
32582	Lewellen	2761
32583	Berry Hill	2760
32584	Loring	1557
32585	Loring	2525
32586	Tanana	1462
32587	Bunavista	1758
32588	Galena	1462
32589	Galena	2666
32590	Galena	1698
32591	Galena	432
32592	Galena	267
32593	Galena	2806
32594	Galena	217
32595	Domestic	2915
32596	Wacissa	999
32597	Menlo Park	1423
32598	San Carlos	1353
32599	San Carlos	1423
32600	San Carlos	2920
32601	Corolla	1259
32602	Gentry	714
32603	Gentry	528
32604	Gentry	1645
32605	New Zion	1355
32606	Sondheimer	2747
32607	Saxonburg	789
32608	Montgomery Creek	2883
32609	Gildford	453
32610	Coleharbor	2282
32611	Lake McDonald	1761
32612	Doole	1309
32613	Unalakleet	717
32614	Attapulgus	2485
32615	Goodlett	2696
32616	Coalmont	2504
32617	Coalmont	2550
32618	Coalmont	1824
32619	Coalmont	1526
32620	Pleasant Hill	446
32621	Pleasant Hill	3217
32622	Pleasant Hill	77
32623	Pleasant Hill	2539
32624	Pleasant Hill	1493
32625	Pleasant Hill	3178
32626	Pleasant Hill	2540
32627	Pleasant Hill	1032
32628	Pleasant Hill	1170
32629	Pleasant Hill	3143
32630	Pleasant Hill	812
32631	Pleasant Hill	668
32632	North Hurley	1128
32633	Hallock	2857
32634	Ludwigs Corner	90
32635	Austell	394
32636	Saxton	1305
32637	Saxton	2954
32638	Cresson	1933
32639	Cresson	3032
32640	Palacios	2674
32641	Arpelar	3211
32642	Kaumakani	2209
32643	Ovando	2913
32644	Bernardsville	129
32645	Falkville	119
32646	Everett	99
32647	Everett	2954
32648	Everett	278
32649	Everett	1102
32650	Everett	95
32651	Calio	1720
32652	Earl Park	1641
32653	New Meadows	1296
32654	Fergus Falls	2763
32655	East Washington	483
32656	Carney	1498
32657	Carney	1188
32658	Carney	544
32659	Williamsville	695
32660	Williamsville	1510
32661	Williamsville	2374
32662	Williamsville	2611
32663	Marstons Mills	1162
32664	Edna	139
32665	Edna	1954
32666	Edna	1823
32667	Edna	3069
32668	Edna	2207
32669	Middleburg Heights	708
32670	Wauseon	2714
32671	Snowflake	3161
32672	North Chevy Chase	740
32673	Wonewoc	235
32674	Dodson Branch	1810
32675	Chester Hill	1300
32676	Haswell	1991
32677	Howards Grove	915
32678	Gibsland	1762
32679	Mamaroneck	1919
32680	Zahl	377
32681	Winborn	1640
32682	KÄ«lauea	2209
32683	Hay Springs	1227
32684	Everest	638
32685	Rich Hill	1067
32686	Derma	1278
32687	Dunnville	1909
32688	Barre	464
32689	Barre	1760
32690	Plantsville	1712
32691	Honoraville	2489
32692	Ellenwood	1943
32693	Conesville	1702
32694	Conesville	56
32695	Mesa Verde	3210
32696	Walbridge	2338
32697	Elrama	483
32698	Smith Point	1343
32699	Weedpatch	263
32700	La Jara	971
32701	La Jara	1461
32702	Barry	881
32703	Barry	1170
32704	Barry	55
32705	College	209
32706	Quartzsite	2638
32707	Ridgeley	974
32708	Kyburz	1594
32709	Killdeer	2968
32710	Floresville	2938
32711	Boyero	1200
32712	West Okoboji	1314
32713	Ben Arnold	2176
32714	Leesburg	2924
32715	Leesburg	3118
32716	Leesburg	2100
32717	Leesburg	1331
32718	Leesburg	718
32719	Leesburg	621
32720	Leesburg	82
32721	Leesburg	433
32722	Nambe	1750
32723	Rayburn	3107
32724	Richwood	454
32725	Richwood	2458
32726	Richwood	955
32727	Richwood	1984
32728	Richwood	251
32729	Richwood	510
32730	Richwood	1347
32731	Richwood	2626
32732	Richwood	243
32733	Cherry Creek	3112
32734	Cherry Creek	1918
32735	Cherry Creek	2362
32736	Cherry Creek	1401
32737	Hoopersville	2508
32738	Childs	1247
32739	Corral City	2452
32740	Rich Square	312
32741	Humboldt Hill	319
32742	Juniata Terrace	2474
32743	Boyers	789
32744	Chico Hot Springs	1749
32745	Saint Florian	605
32746	Philbrook	2649
32747	Cassatt	365
32748	Timberon	344
32749	Whitewood	536
32750	Fairmount Heights	2064
32751	San Anselmo	1515
32752	North Richland Hills	3084
32753	Western Springs	761
32754	Gap Mills	2353
32755	Baron	1385
32756	Oyster Bay Cove	101
32757	Glenaire	1541
32758	Happy	423
32759	Edinburg	2633
32760	Edinburg	1932
32761	Edinburg	2009
32762	Edinburg	1353
32763	Edinburg	2949
32764	Edinburg	2506
32765	Edinburg	2740
32766	Central Bridge	2416
32767	Literberry	114
32768	Valley Spring	1738
32769	LaBolt	1121
32770	Mucarabones Comunidad	841
32771	Granite Hills	2381
32772	Camden Point	1851
32773	Kilkenny	1483
32774	Kilkenny	3237
32775	Squirrel Mountain Valley	263
32776	Dale	2032
32777	Dale	1939
32778	Dale	2266
32779	Dale	2853
32780	Dale	1117
32781	Dale	3032
32782	Sappington	3196
32783	Sappington	579
32784	Creede	976
32785	Lessley	182
32786	Balsam	1807
32787	Nicut	1140
32788	Edom	1804
32789	Trimont	2211
32790	Edon	378
32791	Pagedale	3196
32792	Oaks	1541
32793	Oaks	731
32794	Oaks	2808
32795	Gibbonsville	2891
32796	Shamrock	965
32797	Shamrock	755
32798	Shamrock	2394
32799	Lake Creek	1808
32800	Lake Creek	1796
32801	Strattanville	297
32802	Gurabo	696
32803	Chickasaw	2007
32804	Chickasaw	1301
32805	Bellwood	761
32806	Bellwood	2189
32807	Bellwood	788
32808	Bellwood	804
32809	Bellwood	1615
32810	Bellwood	2991
32811	East Bethel	1260
32812	North Branch	3188
32813	North Branch	2021
32814	North Branch	129
32815	Pinetta	2047
32816	Wonnie	1320
32817	Priceville	119
32818	Zane	1864
32819	Ariel	198
32820	Ariel	814
32821	Burroughs	1631
32822	Chain-O-Lakes	624
32823	Pompton Plains	2877
32824	Guilford	1852
32825	Guilford	650
32826	Guilford	261
32827	Guilford	2810
32828	Guilford	154
32829	Orienta	397
32830	Poplar	2823
32831	Poplar	1473
32832	Poplar	308
32833	Poplar	1679
32834	Atoka	711
32835	Atoka	348
32836	Atoka	1684
32837	Kwigillingok	2260
32838	Belle Plaine	1639
32839	Belle Plaine	2492
32840	Belle Plaine	2246
32841	Silsbee	2389
32842	Bell Gardens	404
32843	Gassville	2459
32844	Lake Tanglewood	2279
32845	Savannah	383
32846	Savannah	1631
32847	Savannah	2599
32848	Savannah	2390
32849	Savannah	610
32850	South Dartmouth	597
32851	Blooming Grove	881
32852	Ruthsburg	2701
32853	Rush Springs	2493
32854	Headquarters	3198
32855	Blue Jay	721
32856	Blue Jay	2075
32857	Houstonia	2860
32858	Grygla	2470
32859	Chiles	669
32860	Samnorwood	1142
32861	Rexburg	2060
32862	Cannondale	408
32863	Dana	2507
32864	Dana	1095
32865	Dana	562
32866	Dana	2651
32867	Topstone	408
32868	Stark City	1234
32869	Zama	3121
32870	Dane	749
32871	Mason	1120
32872	Mason	743
32873	Mason	2312
32874	Mason	1742
32875	Mason	287
32876	Mason	3109
32877	Mason	745
32878	Mason	1684
32879	Schlater	1116
32880	Robertson	231
32881	Robertson	3196
32882	Wheatcroft	2593
32883	Billington Heights	1510
32884	Koosharem	3209
32885	La Junta	931
32886	La Junta	345
32887	Corning	1845
32888	Corning	2887
32889	Corning	284
32890	Corning	1870
32891	Corning	1534
32892	Corning	1287
32893	Corning	3186
32894	Piscataway	94
32895	Piscataway	2064
32896	Prattsburgh	2887
32897	Iselin	94
32898	Iselin	2147
32899	Kimmins	2530
32900	Blairstown	1639
32901	Blairstown	2306
32902	Blairstown	1110
32903	Riegelsville	2634
32904	Signal Hill	918
32905	Signal Hill	404
32906	Timpie	1622
32907	Colonia	94
32908	Colonie	924
32909	Shellman	2682
32910	Clemson	367
32911	Cornelia	2884
32912	Cornelia	2290
32913	Kenney	61
32914	Kenney	552
32915	Smith Corner	263
32916	Armstrong	223
32917	Armstrong	2518
32918	Armstrong	259
32919	Armstrong	196
32920	Armstrong	70
32921	Huscher	2947
32922	Wilmington Manor	2563
32923	New Vernon	2877
32924	Salitpa	1214
32925	Park City	1726
32926	Park City	1187
32927	Park City	1326
32928	Park City	887
32929	Park City	1568
32930	Park City	2935
32931	Ironside	1310
32932	Nielsville	2543
32933	Cyril	307
32934	Kenner	1005
32935	Carlton	1874
32936	Carlton	2072
32937	Carlton	1214
32938	Carlton	2058
32939	Carlton	1316
32940	Carlton	780
32941	Carlton	3149
32942	Carlton	363
32943	Jessie	2020
32944	Brandreth	1597
32945	Long Branch	483
32946	Long Branch	278
32947	Rosier	927
32948	Grey Forest	1083
32949	Old Jefferson	1381
32950	Terra Alta	1961
32951	Skyline Acres	2075
32952	Grampian	1300
32953	Halifax	795
32954	Halifax	796
32955	Halifax	1369
32956	Horseshoe Bay	1738
32957	Minnetrista	91
32958	Valley Brook	958
32959	Summerside	1241
32960	Elk Park	1614
32961	Lake Wazeecha	2339
32962	West Babylon	940
32963	Shippenville	297
32964	Pine Bush	3137
32965	Bonesteel	1868
32966	Newfields	2085
32967	Hallsburg	702
32968	Mattoon	2943
32969	Mattoon	2827
32970	Larrabee	428
32971	Fairwood	3217
32972	Corsicana	881
32973	Stella Comunidad	2448
32974	Azle	3084
32975	Beverly	1125
32976	Beverly	2678
32977	Beverly	489
32978	Beverly	1291
32979	Beverly	1851
32980	Beverly	2841
32981	Beverly	2745
32982	Beverly	702
32983	Beverly	1193
32984	Oark	1273
32985	Bloom City	1674
32986	Parhams	3248
32987	De Lisle	617
32988	Foundryville	1079
32989	Sodus Point	2599
32990	Cornish	986
32991	Cornish	2709
32992	Cornish	1101
32993	West Harrison	154
32994	Antoine	1176
32995	Larimer	2385
32996	HÄwÄ«	1488
32997	Green Bluff	1431
32998	Murphy	1335
32999	Murphy	2203
33000	Murphy	427
33001	Murphy	1884
33002	Murphy	993
33003	Murphy	982
33004	Mulberry Grove	3127
33005	Gloster	1373
33006	Gloster	1311
33007	Gloster	3132
33008	Deer Range	2473
33009	Le Raysville	416
33010	Brush Prairie	2326
33011	Fleetwood	362
33012	Oacoma	1143
33013	Ceylon	2211
33014	Arial	367
33015	Slaughterville	859
33016	Oskaloosa	998
33017	Oskaloosa	2669
33018	Belleplain	1994
33019	Grand Ronde	2538
33020	Meriden	998
33021	Meriden	428
33022	Meriden	264
33023	Meriden	2409
33024	Handley	1467
33025	Shageluk	1462
33026	South Valley	405
33027	Unity	2327
33028	Unity	450
33029	Unity	1471
33030	Oelrichs	124
33031	Farner	2541
33032	North Boston	1510
33033	Darr	2999
33034	LaupÄhoehoe	1488
33035	Rockhill	2550
33036	Broad Top City	2550
33037	Rohnert Park	1790
33038	Indialantic	2189
33039	Poneto	2915
33040	Friendly	2872
33041	Friendly	2064
33042	Dungannon	2248
33043	Adrian	1310
33044	Adrian	1691
33045	Adrian	1067
33046	Adrian	1090
33047	Adrian	2586
33048	Adrian	301
33049	Minter City	1116
33050	Trempealeau	854
33051	Electra	294
33052	Briarwood	997
33053	Briarwood	3180
33054	Chilly	3063
33055	Wayan	461
33056	Hewitt	2649
33057	Hewitt	2339
33058	Hewitt	792
33059	Hewitt	702
33060	Gravette	1645
33061	Eitzen	2115
33062	Maple Rapids	2903
33063	Twisp	1874
33064	Maverick	376
33065	Saint Ignace	1701
33066	Sil Nakya	1247
33067	Conrad	2503
33068	Conrad	2199
33069	Conrad	577
33070	Fincastle	997
33071	Fincastle	2475
33072	Fincastle	178
33073	Kennan	1357
33074	Hickory Hill	997
33075	Hickory Hill	90
33076	Daus	2579
33077	Arroyo Grande	2207
33078	Guayabal	846
33079	Clutier	1861
33080	Bryce Canyon City	3005
33081	Gordon	1719
33082	Gordon	2636
33083	Gordon	183
33084	Gordon	2826
33085	Gordon	2823
33086	Gordon	2117
33087	Gordon	1227
33088	Gordon	786
33089	Lower Lake	1330
33090	Derby	2408
33091	Derby	887
33092	Derby	1510
33093	Derby	1290
33094	Derby	1840
33095	Derby	1986
33096	Derby	2941
33097	Derby	2409
33098	Parowan	1864
33099	Gasquet	1468
33100	Glad Valley	1918
33101	Meridian	3217
33102	Meridian	1043
33103	Meridian	2023
33104	Meridian	789
33105	Meridian	2815
33106	Meridian	220
33107	Meridian	607
33108	Meridian	2182
33109	Meridian	340
33110	Meridian	157
33111	Ravia	1166
33112	Bates City	2774
33113	Glennville	1791
33114	Choctaw	1574
33115	Choctaw	958
33116	Pioneer Junction	1185
33117	Manchester	853
33118	Manchester	1316
33119	Manchester	357
33120	Manchester	2243
33121	Manchester	2232
33122	Manchester	1615
33123	Manchester	1712
33124	Manchester	1780
33125	Manchester	1053
33126	Manchester	1048
33127	Manchester	1713
33128	Manchester	3196
33129	Manchester	1528
33130	Manchester	2281
33131	Manchester	869
33132	Manchester	768
33133	Manchester	1119
33134	Manchester	1292
33135	Manchester	2995
33136	Manchester	2805
33137	Marion Junction	523
33138	New Riegel	2262
33139	Stony Ridge	2338
33140	Blackford	2593
33141	Social Circle	1548
33142	Creels	2134
33143	Beacon Hill	2401
33144	Love Valley	422
33145	Haslett	287
33146	Southmont	2759
33147	Southmont	3032
33148	Milwaukee	904
33149	Davy	2379
33150	Guthrie Center	3257
33151	Honeyville	1421
33152	Honeyville	2401
33153	Rancho San Diego	2381
33154	Gladeview	1705
33155	Mountain Brook	987
33156	East Randolph	1370
33157	East Randolph	3136
33158	Newman Lake	1431
33159	Pollock Pines	1594
33160	Poquott	940
33161	La Fargeville	995
33162	Whitefield	773
33163	Whitefield	1180
33164	East White Plains	1919
33165	Caddoa	1998
33166	West Allis	904
33167	Laboratory	1183
33168	Deadhorse	1801
33169	Edgefield	2234
33170	Edgefield	909
33171	Marseilles	2507
33172	Marseilles	2233
33173	Pekin	1777
33174	Pekin	273
33175	Pekin	2910
33176	Tyner	2464
33177	Polvadera	228
33178	Tannehill	921
33179	Tombstone	3232
33180	Dawn	1442
33181	Dawn	388
33182	Leucadia	2381
33183	Raton	2794
33184	Norbeck	740
33185	Lebec	263
33186	El Negro Comunidad	280
33187	Rineyville	2392
33188	Rimersburg	297
33189	Butte Falls	1808
33190	Gladbrook	1861
33191	Port Tobacco	335
33192	Fort Branch	3115
33193	Philippi	289
33194	Sumidero	1892
33195	Chase	1498
33196	Chase	2749
33197	Chase	2641
33198	Chase	150
33199	Chase	1332
33200	Chase	2048
33201	Chase	2140
33202	Cooke City	1749
33203	East Sumter	515
33204	Runge	3264
33205	Pomonkey	335
33206	Hayti Heights	2383
33207	North Laurel	261
33208	Tahoma	2289
33209	Independence Corner	1889
33210	Bermuda Dunes	3210
33211	Poynette	1078
33212	Braddock Hills	2632
33213	Center Square	731
33214	Nicholls	769
33215	Forest Lake	480
33216	Forest Lake	1326
33217	Carnesville	2142
33218	Desert Hot Springs	3210
33219	Poston	2638
33220	Poston	1588
33221	Heron Bay	1301
33222	Eland	2827
33223	Robertsville	238
33224	Robertsville	278
33225	Bosque Farms	3272
33226	Sea Girt	278
33227	Arch Cape	813
33228	Dempsey	1741
33229	West Medway	2618
33230	Charm	2277
33231	Eleanor	2750
33232	The Rock	67
33233	West Kennebunk	850
33234	PÅ«pÅ«kea	1878
33235	Emmons	1713
33236	Weathersby	1787
33237	Calcutta	1662
33238	Gluck	714
33239	Gluck	1397
33240	Loma Alta	594
33241	Frackville	2826
33242	Cowles	1039
33243	Cowles	2596
33244	Olmito	1832
33245	Oaktown	581
33246	Craigsville	1261
33247	Craigsville	1347
33248	Chidester	244
33249	Virginia City	2043
33250	Virginia City	2516
33251	Mapleview	1432
33252	Asbury Park	278
33253	Nickel Creek Station	1097
33254	Olmitz	613
33255	Saddle Butte	453
33256	Douglassville	362
33257	Douglassville	3176
33258	Big Delta	1561
33259	Iroquois Point	1878
33260	Saylorville	2539
33261	Disney	1884
33262	Tahoka	60
33263	La Valle	1344
33264	Holiday	1915
33265	Arkadelphia	2660
33266	Arkadelphia	2325
33267	Fountain Green	1035
33268	Fountain Green	2959
33269	Pine Prairie	62
33270	Cowley	2723
33271	Atlantic City	968
33272	Atlantic City	2617
33273	Meckling	1529
33274	Outing	3179
33275	Neutral	432
33276	Bruce Crossing	3072
33277	Waterford	3118
33278	Waterford	1593
33279	Waterford	1484
33280	Waterford	1512
33281	Waterford	489
33282	Waterford	2463
33283	Waterford	426
33284	Waterford	1941
33285	Waterford	2792
33286	Cross Cut	633
33287	Belkofski	1145
33288	Avalon	2225
33289	Avalon	2632
33290	Avalon	404
33291	Avalon	837
33292	Avalon	2849
33293	Avalon	388
33294	Avalon	1994
33295	Bailey Lake	383
33296	Watson	1742
33297	Watson	1339
33298	Watson	661
33299	Watson	385
33300	Watson	3258
33301	Watson	1661
33302	Powellhurst	3204
33303	West Memphis	1785
33304	Sigurd	3209
33305	Aspetuck	408
33306	Tynan	981
33307	Clyde Park	1749
33308	Sorrel	2490
33309	Ireton	2926
33310	Garwin	1861
33311	San Miguel	1242
33312	San Miguel	1247
33313	San Miguel	2207
33314	Santa Ana Heights	3140
33315	Hat Creek	2883
33316	Marlow Heights	2064
33317	Daleville	674
33318	Daleville	2807
33319	Daleville	607
33320	Daleville	2475
33321	Tillar	359
33322	White Oak	2063
33323	White Oak	2371
33324	White Oak	2075
33325	White Oak	2632
33326	White Oak	407
33327	White Oak	2658
33328	White Oak	2976
33329	White Oak	352
33330	White Oak	1546
33331	White Oak	116
33332	White Oak	740
33333	Alexandria	3009
33334	Alexandria	1754
33335	Alexandria	2044
33336	Alexandria	600
33337	Alexandria	2550
33338	Alexandria	1283
33339	Alexandria	2320
33340	Alexandria	2819
33341	Alexandria	1607
33342	Alexandria	179
33343	Alexandria	3255
33344	Alexandria	2402
33345	Briny Breezes	3071
33346	Fort Griffin	1789
33347	Protection	2513
33348	Morenci	973
33349	Morenci	2586
33350	Sterling Run	1833
33351	Allenspark	2267
33352	Kapolei	1878
33353	Cidra	1066
33354	Bates	1117
33355	Bates	2249
33356	Poseyville	2859
33357	Gluek	661
33358	Laplace	935
33359	Cowen	2589
33360	Point Hope	1801
33361	Marengo	3192
33362	Marengo	1409
33363	Marengo	2846
33364	Marengo	1294
33365	Marengo	382
33366	Marengo	3081
33367	Michigan City	2792
33368	Michigan City	1640
33369	Englishtown	278
33370	Las Lomas	166
33371	Las Lomas	2955
33372	McMurray	1422
33373	McMurray	483
33374	Catoosa	2831
33375	Primera	1832
33376	Beaver Falls	1883
33377	Buckingham	1089
33378	Buckingham	2870
33379	Buckingham	2634
33380	Buckingham	1861
33381	Buckingham	1101
33382	Buckingham	525
33383	Buckingham	2101
33384	Olean	1370
33385	Olean	2705
33386	White Hall	1498
33387	White Hall	686
33388	White Hall	3065
33389	White Hall	564
33390	White Hall	988
33391	Danforth	1955
33392	West Pensacola	2667
33393	Tucker	2263
33394	Tucker	1429
33395	Tucker	1395
33396	Tucker	988
33397	Tucker	1751
33398	Springerville	932
33399	Rose Hill Acres	2389
33400	Lake Ripley	994
33401	Vermillion	2471
33402	Vermillion	2864
33403	Vermillion	1529
33404	Farlin	562
33405	East Point	2660
33406	East Point	2715
33407	East Point	2234
33408	Elburn	322
33409	Lewisport	1971
33410	Grapeland	2118
33411	Odebolt	844
33412	The Village of Indian Hill	2075
33413	Balsam Lake	2547
33414	Bayou La Batre	1301
33415	Chana	1978
33416	Ê»EleÊ»ele	2209
33417	Waverly Hall	146
33418	Ratliff City	2560
33419	Peak	1657
33420	Camp Sherman	983
33421	Oracle	1914
33422	Bolinas	1515
33423	Baie de Wasai	662
33424	Utuado Zona Urbana	2768
33425	Los Ybanez	2998
33426	Vidette	927
33427	Bent Creek	2270
33428	Crowder	3211
33429	Crowder	3119
33430	Level Park	1286
33431	Toquerville	472
33432	Sandy	551
33433	Sandy	3223
33434	Sandy	1300
33435	Miamisburg	737
33436	Perryman	2959
33437	Montague	1485
33438	Montague	3219
33439	Montague	1148
33440	Montague	337
33441	Diablock	1844
33442	Notus	2039
33443	Huber Ridge	2141
33444	Ridge Spring	2585
33445	Chama	2068
33446	Chama	2725
33447	Mine Hill	2877
33448	Lillian	1266
33449	Lillian	1988
33450	Plantation Key	2348
33451	Possession	1220
33452	Wallington	1572
33453	Thomasboro	519
33454	Boneau	3219
33455	Houston Acres	997
33456	Filley	3206
33457	Champ	3196
33458	Browns	1650
33459	Low Mountain	3161
33460	Spiveys Corner	286
33461	Los Osos	2207
33462	Wilmar	359
33463	Johnston	2539
33464	Johnston	909
33465	Petrey	2489
33466	Eastpoint	2134
33467	Tubac	1361
33468	Marland	3230
33469	Wausaukee	1728
33470	Willow Hill	3043
33471	Chino Valley	2495
33472	Peck	1880
33473	Peck	445
33474	Peck	2492
33475	Iberia	2846
33476	Iberia	2705
33477	Stock Island	2348
33478	Blue River	1131
33479	Blue River	1724
33480	Blue River	1446
33481	Cats Bridge	3027
33482	Dexter	1426
33483	Dexter	948
33484	Dexter	1449
33485	Dexter	2161
33486	Dexter	522
33487	Dexter	2281
33488	Dexter	1446
33489	Dexter	392
33490	Dexter	1432
33491	Dexter	995
33492	Dexter	2092
33493	Dexter	1336
33494	Dexter	1026
33495	Buies Creek	2702
33496	Springvale	2682
33497	Springvale	1241
33498	Springvale	850
33499	Battlement Mesa	3003
33500	Iron Lightning	1918
33501	Linthicum	2440
33502	Jemez Springs	971
33503	Ebenezer	2278
33504	Speers	483
33505	Hoxie	539
33506	Hoxie	1224
33507	Goodell	1965
33508	Pinhook Corner	1140
33509	Rogerson	1402
33510	St. John	1319
33511	Firebrick	2532
33512	Star Valley Ranch	1186
33513	Town 'n' Country	868
33514	La Push	185
33515	Harrodsburg	2006
33516	Harrodsburg	2345
33517	Island	2284
33518	Port Norris	82
33519	Olena	341
33520	Fordyce	65
33521	Fordyce	524
33522	Forest Acres	1675
33523	Olene	759
33524	Luquillo Zona Urbana	2447
33525	Vinita Park	3196
33526	Stonega	1146
33527	Lemont Furnace	2574
33528	Tokeen	1345
33529	Cowan	2123
33530	Cowan	914
33531	Eaton Rapids	2764
33532	Gulfport	2654
33533	Gulfport	2785
33534	Gulfport	617
33535	Canaan	3134
33536	Canaan	2741
33537	Canaan	984
33538	Canaan	1990
33539	Canaan	1640
33540	Obar	1253
33541	Swanton	2714
33542	Swanton	310
33543	Swanton	106
33544	Swanton	2121
33545	Vacherie	1275
33546	Anchor Bay	1053
33547	WaimÄnalo	1878
33548	Engle	170
33549	Camuy	1249
33550	Blackton	2350
33551	Ravenna	1867
33552	Ravenna	2687
33553	Ravenna	1485
33554	Ravenna	630
33555	Ravenna	1637
33556	Ravenna	1103
33557	Pondosa	495
33558	Pondosa	337
33559	Bijou Hills	1389
33560	Scaly Mountain	3154
33561	Energy	123
33562	Meherrin	1354
33563	Belle Rive	1004
33564	Santa Rita	1740
33565	Feasterville	2634
33566	Peel	684
33567	Waldwick	1572
33568	Sylvania	416
33569	Sylvania	424
33570	Sylvania	1752
33571	Sylvania	2942
33572	Wingo	1071
33573	Wolcottville	3229
33574	Lamkin	2511
33575	Westchase	868
33576	Prairie du Rocher	2680
33577	Adams	2272
33578	Adams	1046
33579	Adams	2633
33580	Adams	535
33581	Adams	2487
33582	Adams	3206
33583	Adams	1432
33584	Adams	1544
33585	Adams	1295
33586	Adams	751
33587	Adams	995
33588	Adams	2672
33589	Pineridge	937
33590	Pineridge	324
33591	Grand Falls	296
33592	Steen	838
33593	Aquadale	102
33594	Eden Isle	2905
33595	Clearfield	1300
33596	Clearfield	1060
33597	Clearfield	2875
33598	Clearfield	922
33599	Bliss Corner	597
33600	Coolidge	1914
33601	Coolidge	2790
33602	Coolidge	2076
33603	Coolidge	3150
33604	Coolidge	3029
33605	Belinda City	2939
33606	Arrow Rock	107
33607	Duanesburg	979
33608	Evensville	1977
33609	Cheswick	2632
33610	Owens	1889
33611	Owens	633
33612	Trophy Club	2452
33613	Matawan	278
33614	Matawan	2972
33615	Gackle	2186
33616	Minnetonka Beach	91
33617	Cropper	193
33618	South Nyack	2960
33619	Lake Forest	3140
33620	Lake Forest	1326
33621	Horsehead	2064
33622	Chevy Chase	740
33623	Glentana	3168
33624	Hamden	848
33625	Oklahoma City	958
33626	Conroe	734
33627	Beardstown	3177
33628	Luray	1516
33629	Luray	2320
33630	Luray	1606
33631	Luray	1450
33632	Big Lagoon	319
33633	Wayzata	91
33634	Blue Lake	319
33635	Santa Ana	1039
33636	Santa Ana	3140
33637	Hokendauqua	1372
33638	Safford	2013
33639	Safford	523
33640	Lannon	2426
33641	Wilmer	169
33642	Wilmer	525
33643	Wilmer	1301
33644	Osgood	2636
33645	Osgood	1489
33646	Osgood	797
33647	Osgood	1951
33648	Fetters Hot Springs	1790
33649	Laveen	3086
33650	Cowlic	1247
33651	Owego	2150
33652	Collis	1922
33653	Bethera	1723
33654	North Sarasota	1236
33655	Tuskegee	3156
33656	Burnet	1339
33657	Gilby	1581
33658	Pascola	2383
33659	Kiwalik	2907
33660	Conroy	3081
33661	Surf City	2627
33662	Surf City	451
33663	Paxtang	1369
33664	Medicine Bow	3036
33665	Hineston	2402
33666	Burney	2487
33667	Burney	2883
33668	Berlin	773
33669	Berlin	866
33670	Berlin	2977
33671	Berlin	2029
33672	Berlin	2660
33673	Berlin	695
33674	Berlin	1759
33675	Berlin	131
33676	Berlin	1741
33677	Berlin	2277
33678	Berlin	1105
33679	Abeytas	228
33680	Gowanda	1370
33681	Auburn	3217
33682	Auburn	1367
33683	Auburn	2038
33684	Auburn	2633
33685	Auburn	1186
33686	Auburn	2289
33687	Auburn	2102
33688	Auburn	2183
33689	Auburn	844
33690	Auburn	2399
33691	Auburn	2403
33692	Auburn	283
33693	Auburn	2628
33694	Auburn	2023
33695	Auburn	2826
33696	Auburn	2940
33697	Auburn	1198
33698	Auburn	695
33699	Auburn	1753
33700	Auburn	903
33701	Auburn	785
33702	New Lisbon	1107
33703	New Lisbon	235
33704	Edgeley	2029
33705	Gracemont	307
33706	Privateer	515
33707	Linesville	1417
33708	Rough Rock	932
33709	Lake View	1510
33710	Lake View	1911
33711	Lake View	818
33712	Lake View	844
33713	Lake View	594
33714	Forestbrook	3220
33715	Valdosta	3067
33716	Emden	1294
33717	Emden	192
33718	Emden	2181
33719	Deemston	483
33720	East Flat Rock	2651
33721	Yewed	2269
33722	Giles	952
33723	Jones Mills	2385
33724	Hilland	2620
33725	Whitehawk	3011
33726	Toad Hop	3110
33727	Roseglen	2282
33728	Pasadena	2440
33729	Pasadena	145
33730	Pasadena	404
33731	Basye	2740
33732	Bluffview	1344
33733	AÃ±asco	1375
33734	Troy Hills	2877
33735	Gu-Win	683
33736	Morton	968
33737	Morton	2809
33738	Morton	1777
33739	Morton	2533
33740	Morton	2240
33741	Morton	222
33742	Morton	3249
33743	Cedar Glen West	2627
33744	Imlay	1104
33745	Imlay	907
33746	Vienna	454
33747	Vienna	74
33748	Vienna	2306
33749	Vienna	2508
33750	Vienna	2337
33751	Vienna	2405
33752	Vienna	1202
33753	Vienna	1268
33754	Vienna	2322
33755	Mont Ida	1394
33756	Idria	706
33757	Lanesboro	2224
33758	Lanesboro	3015
33759	Lanesboro	700
33760	San Marcos	1378
33761	San Marcos	2381
33762	Marshfield Center	1936
33763	Beirne	2325
33764	Choteau	1393
33765	Adair	1884
33766	Adair	3131
33767	Adair	3257
33768	Abbottsburg	2063
33769	New Middletown	618
33770	New Middletown	2839
33771	Plymouth Meeting	731
33772	Southside Place	145
33773	Wild Peach Village	1984
33774	Teton	970
33775	Bostwick	118
33776	Bostwick	2758
33777	Bostwick	885
33778	Lower Tonsina	3172
33779	Yantis	2340
33780	Geronimo	1460
33781	Geronimo	2512
33782	Geronimo	2013
33783	Greencastle	2135
33784	Greencastle	2752
33785	Morland	2014
33786	Le Roy	2159
33787	Le Roy	2283
33788	Le Roy	2257
33789	Le Roy	2484
33790	Le Roy	1432
33791	Fultonham	338
33792	North El Monte	404
33793	Aspinwall	1408
33794	Aspinwall	2632
33795	Lake Tapawingo	1826
33796	Cloverly	740
33797	Englewood	2826
33798	Englewood	2324
33799	Englewood	3254
33800	Englewood	1572
33801	Englewood	1236
33802	Englewood	2362
33803	Englewood	737
33804	Twichell	285
33805	Loma Mar	1423
33806	Stevenstown	3130
33807	Ravena	924
33808	Tellico Plains	2346
33809	Annada	1171
33810	Marfa	2160
33811	Nuevo	3210
33812	Weber	1766
33813	Theilman	2988
33814	Methuen	2745
33815	Iliad	3219
33816	Anceney	579
33817	Mountlake Terrace	99
33818	Atlantic Beach	3220
33819	Atlantic Beach	1599
33820	Atlantic Beach	101
33821	Atlantic Beach	1182
33822	Glassport	2632
33823	The Hills	3050
33824	Lockesburg	3207
33825	Mount Calm	452
33826	Prairieburg	944
33827	West Crossett	2862
33828	Cassadaga	3112
33829	Cassadaga	814
33830	Russell	1326
33831	Russell	140
33832	Russell	1450
33833	Russell	1532
33834	Russell	2307
33835	Russell	1052
33836	Russell	2941
33837	Russell	1905
33838	Russell	542
33839	Russell	2403
33840	Campo	1893
33841	Campo	2381
33842	Higden	3276
33843	New Galilee	1883
33844	Sumatra	3106
33845	Sumatra	2377
33846	Creston	1195
33847	Creston	2612
33848	Creston	1850
33849	Creston	2207
33850	Creston	3093
33851	Creston	1761
33852	Creston	505
33853	Creston	2991
33854	Creston	1978
33855	Ivanof Bay	2011
33856	Bernard	1931
33857	Tuleta	981
33858	Sedgewickville	2173
33859	Laceyville	1029
33860	Marco	832
33861	Marco	2991
33862	Pennside	362
33863	Millstone	3133
33864	Millstone	1276
33865	Millstone	129
33866	Carmel	2071
33867	Carmel	1311
33868	Carmel	2926
33869	Pandora	2756
33870	Pandora	2938
33871	Pandora	1040
33872	Elk Valley	178
33873	Carmen	2891
33874	Carmen	1361
33875	Carmen	2269
33876	El Verano	1790
33877	Parmalee	2834
33878	Willingboro	2841
33879	Carmet	1790
33880	Willey	2224
33881	Benndale	1928
33882	KeaÊ»au	1488
33883	Fork Union	2165
33884	Varnamtown	2395
33885	Thompson Place	2190
33886	Siglerville	2474
33887	Van Dyne	2090
33888	Capleville	190
33889	Los Barreras	166
33890	Mitchell	2054
33891	Mitchell	3111
33892	Mitchell	2749
33893	Mitchell	1032
33894	Mitchell	1016
33895	Mitchell	1571
33896	Mitchell	531
33897	Mitchell	963
33898	Mitchell	1441
33899	Mitchell	1474
33900	Spotsylvania Courthouse	1896
33901	Palatine Bridge	724
33902	Leighton	1149
33903	Leighton	2669
33904	Gause	2176
33905	Airport Drive	3044
33906	Ballwin	3196
33907	Meyersdale	131
33908	Green Hill	2939
33909	Catesby	824
33910	Shanghai	1722
33911	Orangeville	959
33912	Orangeville	2946
33913	Orangeville	1079
33914	Orangeville	1778
33915	Zumbrota	1997
33916	Bonneville	968
33917	Philipp	3147
33918	Moniac	2698
33919	Perrine	1705
33920	Ojo Sarco	2725
33921	Olive Branch	2719
33922	Olive Branch	1241
33923	Olive Branch	871
33924	Clairemont	218
33925	Plum Springs	2305
33926	Haysville	2632
33927	Haysville	887
33928	Clear Spring	492
33929	Valle Crucis	3213
33930	Plattville	1913
33931	Lamberton	1250
33932	Castlewood	1452
33933	Castlewood	901
33934	White Owl	1663
33935	Comfort	1912
33936	Comfort	246
33937	Smackover	501
33938	Freewood Acres	278
33939	Port Alto	1279
33940	Honey Brook	90
33941	Suisun	2867
33942	Peoa	1726
33943	Magnet Cove	2689
33944	Santo	1719
33945	Alamance	1509
33946	Inola	2831
33947	New Lothrop	2451
33948	Millersville	1139
33949	Millersville	2491
33950	Millersville	2440
33951	Millersville	2619
33952	Parksdale	1563
33953	Hilltop Colonia	166
33954	Nikiski	1806
33955	Santa	3083
33956	Excel	2349
33957	Eagle River	2364
33958	Eagle River	3125
33959	Eagle River	1159
33960	Arroyo Colorado Estates Colonia	1832
33961	Cathcart	99
33962	Littlejohn Island	79
33963	Covina	404
33964	Satanta	1181
33965	Woodman	1131
33966	Ellaville	1795
33967	Ellaville	3124
33968	Midtown	666
33969	West Samoset	2834
33970	Marina del Rey	404
33971	Betheden	2971
33972	Saratoga Springs	705
33973	Saratoga Springs	1484
33974	Mulat	758
33975	Brushy Creek	1395
33976	Brentwood	2075
33977	Brentwood	3196
33978	Brentwood	2632
33979	Brentwood	2064
33980	Brentwood	940
33981	Brentwood	3143
33982	Brentwood	471
33983	Brentwood	122
33984	Firth	672
33985	Firth	1138
33986	Casper	805
33987	Ashley Heights	1895
33988	Savona	2887
33989	Penn	2385
33990	Hobson	470
33991	Hobson	2145
33992	Hobson	1062
33993	Marie	938
33994	Saronville	1535
33995	Hamersville	636
33996	Kirksville	1386
33997	Chest Springs	3032
33998	Omemee	1717
33999	Silverville	789
34000	Tillman	3046
34001	Tillman	572
34002	Mannington	2951
34003	Mannington	686
34004	Duncansville	804
34005	Slaughter	1862
34006	Jonancy	1172
34007	Bakerton	3032
34008	East Brookfield	1760
34009	Richmond Highlands	3217
34010	North Freedom	1344
34011	Brinnon	989
34012	Cottondale	1911
34013	Cottondale	1816
34014	Kingston	1486
34015	Kingston	2854
34016	Kingston	2641
34017	Kingston	2049
34018	Kingston	1257
34019	Kingston	1936
34020	Kingston	2720
34021	Kingston	1755
34022	Kingston	1952
34023	Kingston	1048
34024	Kingston	866
34025	Kingston	2564
34026	Kingston	170
34027	Kingston	2695
34028	Kingston	609
34029	Kingston	478
34030	Kingston	1311
34031	Kingston	129
34032	Kingston	2646
34033	Kingston	2046
34034	Kingston	666
34035	Kingston	2467
34036	Medfra	1462
34037	Kintyre	972
34038	Grove City	2010
34039	Grove City	1506
34040	Grove City	2141
34041	Grove City	2695
34042	Deal Island	128
34043	Wolf Point	1679
34044	Mabelle	756
34045	Saint Clair Haven	1481
34046	Kewaunee	1566
34047	Branch	2240
34048	Branch	2126
34049	Branch	1612
34050	Branch	2021
34051	Birchwood Lakes	1177
34052	Despard	615
34053	Landover	2064
34054	Woodland Mills	346
34055	Carrizo Springs	2363
34056	Sellersville	2634
34057	Priddy	2496
34058	Nough	3146
34059	Ramtown	278
34060	Neeses	1910
34061	Genesee Depot	2426
34062	La Veta	2961
34063	Copiague	940
34064	Red Hook	3031
34065	Pascoag	929
34066	Ridge Wood Heights	1236
34067	Iliff	2180
34068	Willis	638
34069	Willis	734
34070	Cadwell	948
34071	Neville	1241
34072	Delmont	2385
34073	Delmont	2818
34074	Windfall	1683
34075	Brandt	1799
34076	Laxon	3213
34077	Scarbro	2564
34078	Monument	393
34079	Monument	3228
34080	Monument	2089
34081	Monument	1117
34082	Tenkiller	430
34083	Northport	2787
34084	Northport	940
34085	Northport	657
34086	Northport	1911
34087	Northport	279
34088	Aromas	706
34089	Sloan	1510
34090	Sloan	2329
34091	Sloan	3024
34092	Puerto De Luna	1459
34093	Saint Andrews	905
34094	Millers Creek	446
34095	Millers Creek	1867
34096	Juda	2368
34097	Sloat	3011
34098	Mulga	987
34099	Erhard	2763
34100	Crothersville	1809
34101	Brashear	3252
34102	Brashear	1386
34103	Riverbend	975
34104	Riverbend	3217
34105	Swift Trail Junction	2013
34106	Smithland	390
34107	Smithland	689
34108	Smithland	3024
34109	North Catasauqua	314
34110	Tiller	2814
34111	Fort Meade	2545
34112	Kenmar	1770
34113	Opdyke	97
34114	Opdyke	1004
34115	Carlson	1016
34116	Eminence	111
34117	Eminence	1111
34118	Eminence	1668
34119	Rexton	1701
34120	Woodhaven	2606
34121	Briggsdale	1101
34122	Havelock	135
34123	Havelock	1244
34124	Havelock	573
34125	Contreras	228
34126	Minturn	539
34127	Minturn	2974
34128	Boston	2632
34129	Boston	274
34130	Boston	2600
34131	Boston	826
34132	Boston	3027
34133	Boston	941
34134	Boston	3029
34135	Faison	3126
34136	Marne	3174
34137	Marne	3255
34138	Marne	1733
34139	Koggiung	1013
34140	Moose Lake	780
34141	Cecilia	1623
34142	Cecilia	2392
34143	Lehigh Acres	2101
34144	Penns Neck	2009
34145	Mission Ridge	2330
34146	Gibsonton	868
34147	Whelen Springs	2325
34148	Freetown	1809
34149	Dolgeville	1597
34150	Hampton	2136
34151	Hampton	2085
34152	Hampton	1491
34153	Hampton	1498
34154	Hampton	2722
34155	Hampton	2078
34156	Hampton	1606
34157	Hampton	2864
34158	Hampton	1284
34159	Hampton	1113
34160	Hampton	477
34161	Hampton	2559
34162	Hampton	415
34163	Hampton	3246
34164	Hampton	1363
34165	Hampton	1298
34166	Caspar	1053
34167	Seal Beach	3140
34168	Navajo Dam	2929
34169	North Oaks	654
34170	Jolly	1539
34171	Moses Lake	1125
34172	Anegam	1247
34173	Willow	2606
34174	Willow	524
34175	Willow	150
34176	Willow	2365
34177	Bolton Landing	2302
34178	De Lamere	3010
34179	Peru	1636
34180	Peru	283
34181	Peru	2507
34182	Peru	3113
34183	Peru	667
34184	Peru	2895
34185	Kasson	1562
34186	Kasson	953
34187	Mechanicstown	3137
34188	Rathbun	1621
34189	Homeville	90
34190	Irby	1195
34191	Henryville	2318
34192	Cameo	1678
34193	Ackworth	2308
34194	Marks	3119
34195	Onley	3027
34196	Lozano	1832
34197	Plettenberg	1685
34198	Shady Dale	3045
34199	El Reno	1368
34200	Sabula	1821
34201	Sabula	1865
34202	Potwin	786
34203	Loma Linda	721
34204	Loma Linda	1234
34205	Pasatiempo	1362
34206	Melstone	2981
34207	Lake Success	101
34208	Colman	92
34209	Oylen	2171
34210	Bondsville	542
34211	La CaÃ±ada Flintridge	404
34212	Colmar	1959
34213	Roggen	1101
34214	Raleigh	1455
34215	Raleigh	1399
34216	Raleigh	1130
34217	Raleigh	105
34218	Raleigh	2995
34219	Raleigh	1601
34220	Woodlyn	2809
34221	Aguilita	846
34222	Lakeview Estates	770
34223	Redbird	3051
34224	North Auburn	2289
34225	Mantoloking	2627
34226	Timpson	189
34227	Shellman Bluff	1043
34228	Nowlin	2620
34229	Goldcreek	2913
34230	Farmer	2333
34231	Farmer	600
34232	Farmer	2822
34233	Hartly	216
34234	Martinez	1074
34235	Martinez	3143
34236	Broad Creek	1182
34237	Desha	138
34238	Missouri Valley	616
34239	Pagosa Junction	86
34240	Cayucos	2207
34241	Umbarger	2279
34242	Carrizales	2992
34243	Mattawana	2474
34244	Warman	1158
34245	Pacifica	1423
34246	Rib Mountain	628
34247	Castalia	2624
34248	Castalia	3187
34249	Castalia	1511
34250	Annetta North	931
34251	Kackley	1871
34252	Milwaukie	3223
34253	Idaho Springs	2958
34254	Rural Hall	1980
34255	South Bethlehem	775
34256	Tanacross	1561
34257	Cookietown	1465
34258	Fairfield Beach	406
34259	Stollings	2179
34260	Saint Peters	1082
34261	Saint Peters	90
34262	Pawnee Rock	613
34263	Murrysville	2385
34264	Maxbass	1717
34265	Coinjock	1259
34266	Lake Almanor West	3011
34267	Grantsburg	1745
34268	Mustoe	2923
34269	Polaris	2331
34270	Allendale	1687
34271	Allendale	805
34272	Allendale	1733
34273	Allendale	1246
34274	Allendale	2867
34275	Allendale	1572
34276	Allendale	1837
34277	Speight	1172
34278	Alleene	833
34279	Biltmore Forest	2270
34280	Camp Bird	2775
34281	Munnsville	2042
34282	Basic	1212
34283	Yadkin Valley	2852
34284	Le Grand	1985
34285	Le Grand	2462
34286	Camak	2313
34287	Scooba	3247
34288	Brillion	1428
34289	Orogrande	344
34290	Salisbury Mills	3137
34291	Patagonia	1361
34292	Ellerbe	3089
34293	North Amityville	940
34294	Ilion	1597
34295	Tenino	2190
34296	Basin	2723
34297	Basin	2382
34298	Basin	996
34299	Upper Tract	302
34300	Goodfield	1999
34301	Bostic	2670
34302	Embreeville	90
34303	Emington	387
34304	Justin	2452
34305	Parcelas Nuevas	1066
34306	Oxford	1738
34307	Oxford	90
34308	Oxford	650
34309	Oxford	1641
34310	Oxford	282
34311	Oxford	2106
34312	Oxford	1633
34313	Oxford	1263
34314	Oxford	2492
34315	Oxford	2287
34316	Oxford	513
34317	Oxford	1160
34318	Oxford	1057
34319	Oxford	2306
34320	Oxford	1283
34321	Oxford	1703
34322	Oxford	2144
34323	Oxford	2245
34324	Oxford	1760
34325	Oxford	2663
34326	Oxford	1311
34327	Oxford	2770
34328	Oxford	1230
34329	Oxford	785
34330	Evans City	789
34331	Tullytown	2634
34332	Umpire	260
34333	Platina	2883
34334	Pine Valley	2381
34335	Pine Valley	2977
34336	Pine Valley	1524
34337	Pine Valley	472
34338	Scarville	2692
34339	Starrsville	1230
34340	Tunnel City	2360
34341	Glen Raven	1509
34342	Westpoint	532
34343	Westpoint	596
34344	Eccles	1634
34345	Arjay	1959
34346	Maroa	3158
34347	Camas	2326
34348	Camas	1008
34349	Camas	75
34350	Mount Hermon	488
34351	Mount Hermon	456
34352	Mount Hermon	2306
34353	Mount Hermon	1362
34354	Mount Hermon	2347
34355	Neopit	543
34356	Roxobel	1681
34357	Morgantown	362
34358	Morgantown	688
34359	Morgantown	784
34360	Morgantown	830
34361	Morgantown	111
34362	Morgantown	1173
34363	Pewaukee	2426
34364	Twitty	965
34365	North Chili	2344
34366	Tansboro	2977
34367	Del Mar	2381
34368	Carsins	2959
34369	Camano	1220
34370	Santa Ana Pueblo	971
34371	Luis Lopez	228
34372	Florence Junction	1914
34373	Waterflow	2929
34374	Spring Branch	611
34375	Pelzer	1397
34376	Richards	227
34377	Richards	847
34378	Wiggins	2665
34379	Wiggins	113
34380	Juniata	1297
34381	Elwood	2044
34382	Elwood	840
34383	Elwood	875
34384	Elwood	2617
34385	Elwood	1421
34386	Elwood	940
34387	Elwood	2028
34388	Jeanerette	1178
34389	Naranjito	1734
34390	Westwood Lake	1705
34391	South Barrington	761
34392	South Portland	79
34393	Ashtola	952
34394	Stairtown	2853
34395	Verdigre	589
34396	Stallion Springs	263
34397	Lares Zona Urbana	3085
34398	Brownsburg	1891
34399	Brownsburg	152
34400	Clearwater Lake	3239
34401	Texico	812
34402	Burnettsville	1904
34403	Hanford	1646
34404	Hanford	861
34405	Garlock	263
34406	Flowery Branch	1024
34407	Acomita Lake	1769
34408	Skedee	1254
34409	Cibola	2638
34410	West Bay Shore	940
34411	Barksdale	1649
34412	Kings Beach	2289
34413	Sea Island	1102
34414	Creedmoor	3050
34415	Creedmoor	282
34416	Candor	2150
34417	Candor	483
34418	Candor	723
34419	Maynard	661
34420	Maynard	95
34421	Maynard	2565
34422	Maynard	2684
34423	Lake Wilson	2195
34424	Briensburg	2468
34425	Wilsons	144
34426	Kemmerer	1186
34427	Cross Lake	704
34428	Nipinnawasee	1563
34429	Daykin	990
34430	Copeland	2022
34431	Copeland	3074
34432	Copeland	832
34433	Copeland	2808
34434	Glen	2300
34435	Glen	2331
34436	Glen	2227
34437	Juno	594
34438	Warrendale	2632
34439	Maplewood	194
34440	Maplewood	3196
34441	Maplewood	654
34442	Maplewood	1925
34443	Maplewood	1708
34444	East Shoreham	940
34445	Tonto Village	2920
34446	Ferdinand	1854
34447	Ferdinand	1458
34448	Mitchell Heights	2179
34449	MarÃ­a Antonia Comunidad	1252
34450	Young America	3175
34451	McGovern	483
34452	Fairmont	701
34453	Fairmont	875
34454	Fairmont	686
34455	Fairmont	2256
34456	Fairmont	99
34457	Fairmont	3004
34458	Fairmont	2211
34459	Larimers Corner	99
34460	Emery	1778
34461	Emery	600
34462	Palatka	2758
34463	Cibolo	1460
34464	Mountain Lodge Park	3137
34465	Nevada	1335
34466	Nevada	2581
34467	Nevada	2006
34468	Nevada	2233
34469	Nevada	227
34470	Crittenden	1120
34471	Doral	1705
34472	Skyline	2824
34473	Skyline	1817
34474	Skyline	1444
34475	Metzger	465
34476	Deep Springs	2411
34477	Timbercreek Canyon	2279
34478	Paragon Estates	2267
34479	Doran	627
34480	Zeeland	1041
34481	Zeeland	1733
34482	Poquoson	2454
34483	Lumber City	1677
34484	Lumber City	2474
34485	Backus Beach	2762
34486	Stone Creek	2552
34487	Red Jacket	673
34488	Occoquan	321
34489	Harwick	2632
34490	Brook Highland	195
34491	San Juan Colonia	166
34492	Banner Hill	1388
34493	Storrie	3011
34494	New Vienna	2901
34495	New Vienna	1931
34496	Hoisington	613
34497	Toppenish	3268
34498	Cave City	2935
34499	Cave City	2372
34500	Irmo	324
34501	Solon Springs	2823
34502	Bluffton	2763
34503	Bluffton	2624
34504	Bluffton	441
34505	Bluffton	1542
34506	Bluffton	2869
34507	Bluffton	2915
34508	Bluffton	439
34509	Clintonville	2990
34510	Clintonville	279
34511	Clintonville	2836
34512	Fryeburg	1703
34513	Fryeburg	1762
34514	New Cassel	101
34515	Meservey	1596
34516	Florissant	3196
34517	Florissant	277
34518	Carrizo Hill	2363
34519	Judith Gap	172
34520	Wimauma	868
34521	La Prairie	1291
34522	La Prairie	2777
34523	Bluff	2932
34524	Wilhoit	2495
34525	Lake Goodwin	99
34526	Rapid City	2439
34527	Rapid City	907
34528	Fidelis	758
34529	Green Island	1821
34530	Green Island	924
34531	Lorentz	1658
34532	Lynn Haven	902
34533	Benjamin	705
34534	Benjamin	582
34535	Schuyler Lake	778
34536	Chisana	3172
34537	Mora Comunidad	3077
34538	Irma	1204
34539	Lake Roesiger	99
34540	Vermont	2712
34541	Hellertown	314
34542	Packwood	2533
34543	Packwood	1001
34544	Fife	1925
34545	Fife	2334
34546	Fife	1309
34547	Crescent Mills	3011
34548	Huntingburg	1854
34549	Silver Cliff	3061
34550	Holt	287
34551	Holt	1541
34552	Holt	1761
34553	Holt	2470
34554	Holt	2038
34555	Holt	1911
34556	Lafontaine	2937
34557	Crystal Lawns	875
34558	Paukaa	1488
34559	Emblem	2723
34560	Garvin	140
34561	Garvin	229
34562	Melstrand	2767
34563	Centerton	1645
34564	Cummings	1606
34565	Cummings	3259
34566	Home	1925
34567	Home	2471
34568	Lake Stevens	99
34569	Sussex	1265
34570	Sussex	1889
34571	Sussex	1888
34572	Sussex	2426
34573	Hagerstown	2600
34574	Hagerstown	492
34575	Argyle	477
34576	Argyle	2452
34577	Argyle	2773
34578	Argyle	1746
34579	Argyle	2095
34580	Argyle	2470
34581	Argyle	1155
34582	Chestertown	2302
34583	Chestertown	217
34584	West Lebanon	2303
34585	Sparland	2466
34586	Valley Forge	90
34587	Spotsylvania	1896
34588	Cherry Grove	2075
34589	Cherry Grove	2326
34590	Tabiona	2428
34591	Annetta South	931
34592	Hardy	1366
34593	Hardy	2334
34594	Hardy	2372
34595	Hardy	885
34596	Hardy	318
34597	Mayfield	3269
34598	Mayfield	2492
34599	Mayfield	708
34600	Mayfield	1071
34601	Mayfield	3057
34602	Mayfield	1035
34603	Mayfield	2710
34604	Mayfield	809
34605	Mayfield	1973
34606	Cockrell Hill	525
34607	Gallitzin	3032
34608	West Jordan	2637
34609	Ezzell	978
34610	Kinross	960
34611	Kinross	662
34612	Oriole Beach	758
34613	Jump River	1065
34614	Candle	2907
34615	Murray Hill	997
34616	Harveysburg	2312
34617	Fallsburg	535
34618	Kendall	2360
34619	Kendall	1705
34620	Kendall	2076
34621	Kendall	1983
34622	Karlsruhe	3191
34623	Pearl Beach	920
34624	Fairborn	566
34625	Enning	1663
34626	Calistoga	3151
34627	King Cove	1145
34628	Basile	62
34629	Marys Corner	2533
34630	Clewiston	2017
34631	Wheatfield	3041
34632	Clicquot	2618
34633	New Post	2833
34634	Casscoe	2623
34635	Laotto	3229
34636	North Wilmington	95
34637	Fristoe	1643
34638	Robinwood	492
34639	Goulds	1705
34640	Littig	3050
34641	Kenova	2607
34642	Elkmont	2789
34643	Hood	2688
34644	Hood	2843
34645	Cosgrave	1104
34646	Mount Trumbull	829
34647	Ellenboro	2670
34648	Ellenboro	1367
34649	Indios	957
34650	Moddersville	2736
34651	Pablo	1322
34652	Frisco City	2349
34653	Mausdale	3235
34654	Sauk Centre	1709
34655	East Dublin	948
34656	Troy	2693
34657	Troy	2054
34658	Troy	346
34659	Troy	416
34660	Troy	3075
34661	Troy	134
34662	Troy	1185
34663	Troy	1121
34664	Troy	1175
34665	Troy	2423
34666	Troy	1360
34667	Troy	1436
34668	Troy	1840
34669	Troy	1958
34670	Troy	723
34671	Troy	2874
34672	Troy	2828
34673	Troy	2663
34674	Troy	1201
34675	Troy	668
34676	Troy	1228
34677	Troy	2028
34678	McComb	1168
34679	McComb	1972
34680	PaÊ»auilo	1488
34681	Abbeville	1114
34682	Abbeville	410
34683	Abbeville	2035
34684	Abbeville	2770
34685	Abbeville	1944
34686	Minnewaukan	2400
34687	Prairie Rose	3180
34688	Kutztown	362
34689	Sullivan	742
34690	Sullivan	1947
34691	Sullivan	498
34692	Sullivan	2130
34693	Sullivan	994
34694	East Galesburg	584
34695	Falmouth	1139
34696	Falmouth	79
34697	Falmouth	1318
34698	Falmouth	303
34699	Falmouth	3124
34700	Falmouth	1162
34701	Falmouth	2736
34702	McColl	2888
34703	Springlake	1374
34704	Springlake	2397
34705	Toronto	1006
34706	Toronto	2896
34707	Toronto	3025
34708	Toronto	1799
34709	Fremont Hills	2950
34710	Tie Plant	255
34711	Tiki Island	2523
34712	Gowrie	2590
34713	Heber Springs	3276
34714	McCullom Lake	3192
34715	Reasnor	3039
34716	Minnehaha Springs	1243
34717	Winlock	2533
34718	Marion Heights	2963
34719	North Newton	3123
34720	Formosa	2431
34721	Eureka Mill	89
34722	East Waterford	1729
34723	Ponder	2452
34724	Froid	1679
34725	West Glacier	1761
34726	Horace	3180
34727	Horace	803
34728	Fort Lee	1572
34729	Saint Ansgar	1474
34730	Ridge Manor	3274
34731	Launiupoko	2438
34732	Yampai	2495
34733	Port Hueneme	3221
34734	Aibonito Zona Urbana	2034
34735	Elkview	1467
34736	Rhododendron	3223
34737	Brazoria	1984
34738	Oxbow Estates	2920
34739	Monomoscoy Island	1162
34740	Sardis	748
34741	Sardis	2385
34742	Sardis	523
34743	Sardis	1514
34744	Sardis	615
34745	Sardis	2653
34746	Sardis	927
34747	Sardis	2358
34748	South Monroe	2352
34749	Keeseville	2742
34750	Johns Island	905
34751	Nezperce	2534
34752	Marklesburg	2550
34753	Litchfield	2082
34754	Litchfield	735
34755	Litchfield	304
34756	Litchfield	2695
34757	Litchfield	1990
34758	Litchfield	828
34759	Litchfield	2799
34760	Bucyrus	1412
34761	Bucyrus	2273
34762	Bucyrus	669
34763	Bucyrus	1293
34764	Leicester	386
34765	Hulah	1154
34766	Water Valley	883
34767	Water Valley	1510
34768	Water Valley	3226
34769	Water Valley	1071
34770	Kirkwood	1139
34771	Kirkwood	3196
34772	Kirkwood	2310
34773	Kirkwood	2006
34774	Kirkwood	1937
34775	Formoso	174
34776	McFarland	749
34777	McFarland	263
34778	McFarland	888
34779	Walnut Heights	3143
34780	Las MarÃ­as Comunidad	1375
34781	Vega Baja	1996
34782	Lorenzo	574
34783	Lorenzo	1610
34784	Lorenzo	1008
34785	Sutherland	1885
34786	Sutherland	2152
34787	Sutherland	1196
34788	Sutherland	144
34789	Sutherland	437
34790	Pineville	204
34791	Pineville	1027
34792	Pineville	1633
34793	Pineville	2177
34794	Pineville	1959
34795	Pineville	1723
34796	Pineville	2402
34797	Tse Bonito	3150
34798	Rohrersville	492
34799	Eolia	3133
34800	Eolia	1171
34801	Paxton	3011
34802	Paxton	232
34803	Paxton	1547
34804	Paxton	186
34805	Hope	85
34806	Hope	2306
34807	Hope	84
34808	Hope	1316
34809	Hope	1586
34810	Hope	1553
34811	Hope	623
34812	Hope	2638
34813	Hope	2987
34814	Hope	1806
34815	Hope	348
34816	Canonsburg	483
34817	Orchid	2114
34818	Nesbitt	619
34819	Winters	376
34820	Winters	709
34821	Horn	2113
34822	Skippers Corner	254
34823	Aguada	2015
34824	Point Pleasant	2627
34825	Point Pleasant	743
34826	Eastview	1647
34827	Millersport	406
34828	Rampart	1462
34829	Dafter	662
34830	Nesmith	2429
34831	Manitou	1555
34832	Manitou	296
34833	Manitou	3253
34834	Monroe City	2357
34835	Monroe City	1343
34836	Monroe City	581
34837	Dicksonville	2147
34838	West Bishop	2411
34839	Boulder Junction	1159
34840	Bettsville	2262
34841	Four Way	327
34842	North Arlington	1572
34843	Sieper	2402
34844	Rafael CapÃ³ Comunidad	2992
34845	Aullville	2774
34846	Fort Jones	337
34847	Troy Grove	2507
34848	Thousand Island Park	995
34849	Lyon Mountain	2895
34850	Marthasville	2311
34851	AÃ±asco Zona Urbana	1375
34852	Second Mesa	3161
34853	McKenney	144
34854	Franksville	426
34855	Port Washington	608
34856	Port Washington	101
34857	Port Washington	2552
34858	Voltaire	3191
34859	Wyndham	59
34860	Mullens	1027
34861	O'Neill	1869
34862	Rauchtown	2902
34863	Gambrills	2440
34864	Brent	2667
34865	Brent	1582
34866	Brent	1140
34867	Leon Junction	872
34868	Auburn Lake Trails	1594
34869	Cruz Bay	1218
34870	Vermilion	2192
34871	Vermilion	1511
34872	Mount Union	1106
34873	Mount Union	2550
34874	Ocee	2715
34875	Geyser	2145
34876	Guys Mills	1417
34877	Wintergreen	272
34878	Piedmont	974
34879	Piedmont	231
34880	Piedmont	1556
34881	Piedmont	1663
34882	Piedmont	1283
34883	Piedmont	622
34884	Piedmont	1397
34885	Piedmont	2611
34886	Piedmont	891
34887	Piedmont	1368
34888	Piedmont	3076
34889	Fort Plain	724
34890	Hord	1540
34891	Laguna Vista	1832
34892	Little Rapids	639
34893	Crocker	170
34894	Crocker	2498
34895	Crocker	371
34896	Crocker	2322
34897	Pine Mountain Club	263
34898	Berrien Springs	1767
34899	Purcellville	3118
34900	Mabscott	1634
34901	Woodland Beach	2352
34902	Biggersville	3205
34903	Tennessee Ridge	2119
34904	Hawk Inlet	207
34905	Merriam Woods	753
34906	Darwin	2319
34907	Darwin	2411
34908	Darwin	2695
34909	Shedd	943
34910	Boulevard Gardens	2729
34911	La Belle	2531
34912	Ireland	2528
34913	Ryderwood	198
34914	Arecibo	2087
34915	Woodside	216
34916	Woodside	1423
34917	Woodside	1778
34918	Woodside	2641
34919	Woodside	2967
34920	Middlebourne	2872
34921	Noxen	1029
34922	Dell Rapids	2293
34923	Lake Como	278
34924	Brokenburg	1896
34925	Bohners Lake	426
34926	Ambrose	593
34927	Ambrose	769
34928	Mud Butte	1663
34929	Summitville	2044
34930	Summitville	2095
34931	Summitville	768
34932	Summitville	1662
34933	La Luz	344
34934	Muscle Shoals	1149
34935	BayamÃ³n	2110
34936	Antelope	681
34937	Antelope	1223
34938	Antelope	2648
34939	Antelope	2688
34940	Antelope	906
34941	Wayne Lakes Park	2636
34942	Stronach	2162
34943	Crofton	589
34944	Crofton	2440
34945	Crofton	2951
34946	Coffeyville	728
34947	East Hanover	2877
34948	Soso	3020
34949	Swartz Creek	2258
34950	Brookview	2508
34951	Minier	1777
34952	Whitakers	3187
34953	Jenera	1972
34954	Friedens	131
34955	Liberty Park	1323
34956	Villa Hills	2397
34957	Lucasville	3256
34958	New Bloomfield	2551
34959	New Bloomfield	1848
34960	Crescent Beach	223
34961	Dubbs	2658
34962	Howe	283
34963	Howe	3261
34964	Howe	2263
34965	Howe	599
34966	Scraper	430
34967	Nutrioso	932
34968	Waring	1912
34969	Waring	3049
34970	New Bern	135
34971	Lake Ketchum	99
34972	Blue Ball	1139
34973	Blue Ball	2249
34974	Blue Ball	785
34975	Lake Forest Park	3217
34976	Hunter	663
34977	Hunter	2559
34978	Hunter	729
34979	Hunter	2561
34980	Hunter	556
34981	Hunter	2312
34982	Hunter	611
34983	Hunter	3004
34984	Hunter	1476
34985	Hunter	3180
34986	Natrona Heights	2632
34987	Hayford	1431
34988	Hawkins	2500
34989	Hawkins	2340
34990	Humacao	2170
34991	Weeks	1178
34992	Maysfield	2176
34993	Arcanum	2636
34994	Dyckesville	639
34995	Warfield	2396
34996	Warfield	2215
34997	Switzer	2179
34998	Northvale	1572
34999	Ponshewaing	2519
35000	Sterley	269
35001	Knoxville	1273
35002	Knoxville	583
35003	Knoxville	584
35004	Knoxville	559
35005	Knoxville	2151
35006	Knoxville	63
35007	Knoxville	687
35008	Knoxville	1413
35009	Milam	1033
35010	Altair	206
35011	Milan	628
35012	Milan	1677
35013	Milan	661
35014	Milan	2281
35015	Milan	797
35016	Milan	2492
35017	Milan	1769
35018	Milan	1431
35019	Milan	1363
35020	Milan	1951
35021	Milan	3116
35022	Milan	1511
35023	Nauvoo	1349
35024	Nauvoo	1969
35025	Dirgin	2501
35026	Coyote	1199
35027	Galloway	565
35028	Galloway	289
35029	Los Chavez	3272
35030	Holgate	1112
35031	Bensley	1615
35032	Seatonville	1704
35033	Bowmansville	1510
35034	Bowmansville	1139
35035	Cedar Ridge	2798
35036	Occidental	1790
35037	King of Prussia	731
35038	Winter Springs	1627
35039	Euharlee	609
35040	Newlonsburg	2385
35041	Canon	1239
35042	Watova	3203
35043	Marche	375
35044	Sarah	2027
35045	McCall Creek	2137
35046	Hazelwood	3217
35047	Hazelwood	3196
35048	Hazelwood	3204
35049	Hazelwood	2556
35050	Isbell	2125
35051	Arkoe	2810
35052	Davisville	1411
35053	Fisk	783
35054	Ocoee	2541
35055	Ocoee	3141
35056	Parkside	2809
35057	Hayfork	317
35058	Muttontown	101
35059	De Soto City	2909
35060	Hatchechubbee	1451
35061	Hiddenite	2718
35062	Moriarty	1625
35063	Makoti	1551
35064	Indian Head Park	761
35065	East Dubuque	1698
35066	Ravenel	905
35067	Ixonia	994
35068	Bonsall	2381
35069	Potter Valley	1053
35070	Wardensville	1900
35071	Cuyler	3094
35072	Cedar Rock	2852
35073	Wallace Ridge	3248
35074	Lobelville	1841
35075	East Chain	2211
35076	Carlsborg	185
35077	Mountain Grove	2292
35078	Sidman	3032
35079	Tee Harbor	234
35080	Chualar	2955
35081	Collingdale	2809
35082	Keego Harbor	2663
35083	Carpio	1551
35084	Hummelstown	1369
35085	Fayette City	2574
35086	Rhodhiss	2852
35087	Trail Creek	2792
35088	Oakpark	2059
35089	Walthall	2591
35090	Miley	1606
35091	Central City	3128
35092	Central City	690
35093	Central City	3055
35094	Central City	536
35095	Central City	131
35096	Central City	1333
35097	Central City	944
35098	Central City	1216
35099	McCord	1154
35100	Malvern	2689
35101	Malvern	2497
35102	Malvern	90
35103	Malvern	2193
35104	Malvern	2229
35105	Monett	624
35106	Federal Way	3217
35107	Parade	200
35108	Moneta	968
35109	Moneta	1885
35110	Moneta	2952
35111	Pequannock	2877
35112	Cherry Log	2317
35113	Morral	692
35114	Harts	1197
35115	Washington Mills	3238
35116	Wofford Heights	263
35117	McCamey	2630
35118	Hoyt	1815
35119	Hoyt	113
35120	Hoyt	2996
35121	Rossiter	2147
35122	Grill	362
35123	Harbor View	2942
35124	Foots Creek	1808
35125	Glen Lyn	1364
35126	Fairhaven	319
35127	Fairhaven	2440
35128	Fairhaven	1709
35129	Boulder	2267
35130	Boulder	2412
35131	Boulder	2898
35132	Boulder	996
35133	Half Day	1326
35134	North Komelik	1914
35135	Yonkers	1919
35136	Oshkosh	2690
35137	Oshkosh	2761
35138	Searingtown	101
35139	Noxon	75
35140	Frost	881
35141	Frost	1243
35142	Frost	2830
35143	Gilluly	705
35144	Pilot Knob	1865
35145	Ovett	3020
35146	New Woodstock	2042
35147	Thornville	1845
35148	Oketo	2471
35149	Miles	1821
35150	Miles	376
35151	Miles	1195
35152	Punta Gorda	1506
35153	MokulÄ“Ê»ia	1878
35154	Charleroi	483
35155	Bon Aqua Junction	2335
35156	Moyers	1425
35157	Lake Camelot	2456
35158	Valley Home	1941
35159	Brookmont	740
35160	Clara City	661
35161	Fort Wayne	443
35162	Pasadena Hills	3196
35163	Worthing	1191
35164	Berthoud	831
35165	Swan Valley	1489
35166	Howes Mill	418
35167	Littleville	1149
35168	Bondville	519
35169	Baldridge	1693
35170	Minnehaha	2326
35171	Rancho Viejo	1832
35172	Dossville	1932
35173	EspaÃ±ola	2725
35174	Miramiguoa Park	2130
35175	West Hollywood	2729
35176	West Hollywood	404
35177	Shell	2723
35178	McCordsville	1967
35179	Rose Hill Farms	2405
35180	Aguilar	205
35181	Maxwelton	1220
35182	Chaniliut	2367
35183	Illmo	2244
35184	Hilton	2344
35185	Lost Hills	263
35186	Parkman	1899
35187	Parkman	1225
35188	Breda	2224
35189	McCook	2204
35190	McCook	761
35191	McCool	3121
35192	Tolley	221
35193	Doddsville	1088
35194	Wyeville	2360
35195	Lake Tansi	77
35196	San Manuel	1914
35197	North Sutton	598
35198	Todd Creek	1290
35199	Camargo	2816
35200	Camargo	201
35201	Camargo	727
35202	McVeigh	1172
35203	Poplar Bluff	783
35204	Clarence Center	1510
35205	Peterman	2349
35206	Lakesite	2073
35207	West Canton	2556
35208	Liberty Center	1112
35209	Rosebud	2597
35210	Rosebud	2648
35211	Rosebud	2166
35212	Rosebud	2377
35213	Piper City	232
35214	McDowell	270
35215	McDowell	2923
35216	Sabana Grande Zona Urbana	2406
35217	San Diego	1600
35218	San Diego	2381
35219	Horatio Gardens	1326
35220	Baumstown	362
35221	Avon-by-the-Sea	278
35222	State College	393
35223	Otis Orchards	1431
35224	Touhy	3236
35225	Morningside	2064
35226	Morningside	2934
35227	Shelley	672
35228	New California	510
35229	Benbow	319
35230	Larslan	3168
35231	Fontanet	3110
35232	Brunswick	79
35233	Brunswick	1238
35234	Brunswick	3153
35235	Brunswick	2111
35236	Brunswick	828
35237	Brunswick	1102
35238	Brunswick	350
35239	Maury	555
35240	Bazemore	2573
35241	Burr Oak	2624
35242	Burr Oak	3103
35243	Burr Oak	174
35244	Megler	1306
35245	Fairfax	2075
35246	Fairfax	1687
35247	Fairfax	3258
35248	Fairfax	1515
35249	Fairfax	1868
35250	Fairfax	2563
35251	Fairfax	222
35252	Fairfax	1579
35253	Fairfax	1154
35254	Fairfax	2121
35255	Fairfax	944
35256	Bokeelia	2101
35257	Chaska	1037
35258	Tiffany	2106
35259	Paraje	1769
35260	Soddy-Daisy	2073
35261	Farley	1851
35262	Farley	1931
35263	East Butler	789
35264	East Hazel Crest	761
35265	Purley	2138
35266	Kensington Park	1236
35267	Soulsbyville	2798
35268	Wortham	230
35269	Wortham	2524
35270	Wausau	628
35271	Wausau	482
35272	Donegal	2385
35273	Monero	2725
35274	Old Fort	2378
35275	Old Fort	2262
35276	Octa	2571
35277	Kilmarnock	1136
35278	Wardner	224
35279	Rosedale	1396
35280	Rosedale	1454
35281	Rosedale	1498
35282	Rosedale	2791
35283	Rosedale	1925
35284	Rosedale	1765
35285	Rosedale	263
35286	Rosedale	1565
35287	Rosedale	2694
35288	Halbur	2224
35289	Darnell	1894
35290	Sacaton	1914
35291	Odessadale	2995
35292	Shaniko	906
35293	Cuervo	1459
35294	North Cape	426
35295	Pecan Grove	1890
35296	Point Marion	2574
35297	Paradise Hills	405
35298	Nellieburg	607
35299	Harriettsville	3231
35300	Winona	1464
35301	Winona	305
35302	Winona	353
35303	Winona	1668
35304	Winona	733
35305	Winona	2185
35306	Winona	2065
35307	Winona	1603
35308	Winona	2423
35309	Winona	1662
35310	Cuprum	1296
35311	Pollock	1129
35312	Pollock	1951
35313	Pollock	1458
35314	Pollock	175
35315	Fruitdale	2198
35316	Fruitdale	470
35317	Fruitdale	764
35318	Fruitdale	1257
35319	Chazy	2895
35320	Van Buren	1398
35321	Van Buren	1415
35322	Van Buren	2201
35323	Van Buren	1118
35324	Van Buren	2561
35325	Van Buren	1972
35326	McAdams	3121
35327	Redwood Falls	1250
35328	Corpus Christi	819
35329	ComerÃ­o	2435
35330	Allentown	3217
35331	Allentown	278
35332	Allentown	2911
35333	Allentown	1372
35334	Allentown	758
35335	Cassel	2883
35336	Weinert	1179
35337	Jamison City	1079
35338	Reliance	3093
35339	Reliance	1143
35340	Independent Hill	321
35341	Lincolnville	905
35342	Lincolnville	681
35343	Lincolnville	1417
35344	Pike City	1176
35345	Pentress	830
35346	Harrisville	2529
35347	Harrisville	622
35348	Harrisville	1367
35349	Harrisville	789
35350	Harrisville	1787
35351	Harrisville	1433
35352	Harrisville	2762
35353	Harrisville	929
35354	Lake Louise	150
35355	Kelly	2063
35356	Kelly	284
35357	Kelly	1391
35358	Kelly	2951
35359	Kelly	2851
35360	Garden Ridge	611
35361	Trexlertown	1372
35362	Harriman	666
35363	Harriman	3137
35364	Luquillo	2447
35365	Grace City	3117
35366	Percival	967
35367	Borton	2192
35368	Seagoville	525
35369	Booker	2871
35370	Helena-West Helena	1559
35371	Wildwood Crest	1994
35372	Brownlee	2016
35373	Brownlee	1635
35374	Brownlee	1471
35375	Cotton City	1352
35376	Denton	2452
35377	Denton	2606
35378	Denton	2894
35379	Denton	2061
35380	Denton	2759
35381	Denton	794
35382	Denton	1138
35383	Denton	2383
35384	Denton	2028
35385	Eastborough	887
35386	South Bethany	1887
35387	Canterwood	1925
35388	Tower Hill	191
35389	Monell	3093
35390	Montana City	996
35391	Miles City	3060
35392	Uvalda	738
35393	Realitos	1600
35394	Wahneta	2545
35395	Crowell	1858
35396	Heritage Hills	1919
35397	Bressler	1369
35398	Mount Vernon	128
35399	Mount Vernon	2632
35400	Mount Vernon	333
35401	Mount Vernon	1919
35402	Mount Vernon	1571
35403	Mount Vernon	534
35404	Mount Vernon	2138
35405	Mount Vernon	1004
35406	Mount Vernon	738
35407	Mount Vernon	2346
35408	Mount Vernon	1301
35409	Mount Vernon	944
35410	Mount Vernon	1422
35411	Mount Vernon	3183
35412	Mount Vernon	1117
35413	Mount Vernon	2405
35414	Mount Vernon	2859
35415	Mount Vernon	588
35416	Uvalde	2455
35417	Hazlet	278
35418	Garden View	1770
35419	Lewiston Orchards	1880
35420	Grey Eagle	2649
35421	Taylor Springs	735
35422	Scotts Corners	1919
35423	Eureka Roadhouse	150
35424	Guyton	1743
35425	Kingston Mines	2456
35426	Cape Carteret	1182
35427	Sunset Bay	3112
35428	Emigrant Gap	2289
35429	Reed Creek	1239
35430	Lower Salem	489
35431	Kyle	1774
35432	Kyle	1378
35433	Collison	2036
35434	Deshler	3009
35435	Deshler	1112
35436	Silvies	1117
35437	Kensington	1712
35438	Kensington	1602
35439	Kensington	101
35440	Kensington	3143
35441	Kensington	740
35442	Kensington	2819
35443	Lolo Hot Springs	3149
35444	Eastover	76
35445	Eastover	1675
35446	Glenolden	2809
35447	Pine Bluff	988
35448	Disston	1446
35449	Little Silver	278
35450	East Prairie	939
35451	Hadley	2195
35452	Hadley	1484
35453	Caney	711
35454	Caney	728
35455	Headrick	1811
35456	Payette	2479
35457	Benton Heights	1767
35458	Galisteo	1750
35459	Ivins	472
35460	Bonham	630
35461	East Greenbush	2828
35462	Merlin	2203
35463	Hebbronville	3189
35464	Isabel	200
35465	Isabel	2024
35466	Batchelor	2578
35467	Del Muerto	932
35468	Exline	1621
35469	Central Valley	3137
35470	Central Valley	3209
35471	Central Valley	1048
35472	Ingram	2500
35473	Ingram	796
35474	Ingram	2632
35475	Ingram	271
35476	Russian Mission	2367
35477	Sulphur	364
35478	Sulphur	2194
35479	Sulphur	320
35480	Yardville	2009
35481	Wilburton Number Two	1079
35482	Curtiss	2327
35483	Curtiss	3232
35484	Gladwyne	731
35485	Chevy Chase Section Five	740
35486	Squires	2817
35487	WaimÄnalo Beach	1878
35488	Center Point	1975
35489	Center Point	987
35490	Center Point	271
35491	Center Point	1526
35492	Center Point	944
35493	Mills	3014
35494	Mills	420
35495	Mills	805
35496	Mills	1576
35497	Canby	1771
35498	Canby	2635
35499	Canby	3223
35500	Berthold	1551
35501	West Riverside	3149
35502	Smyrna	1125
35503	Smyrna	650
35504	Smyrna	2671
35505	Smyrna	394
35506	Smyrna	216
35507	Smyrna	1613
35508	Smyrna	851
35509	Smyrna	2642
35510	Mount Sterling	2430
35511	Mount Sterling	727
35512	Mount Sterling	1416
35513	Mount Sterling	634
35514	Mount Sterling	2057
35515	Mount Sterling	2166
35516	Spencer Mountain	2835
35517	Mead Valley	3210
35518	Bruceton Mills	1961
35519	Bailey	1748
35520	Bailey	607
35521	Bailey	630
35522	Bailey	3187
35523	Womens Bay	3101
35524	Naomi	2574
35525	Castle Valley	1152
35526	Morganton	925
35527	Morganton	2431
35528	Morganton	631
35529	Burgess	612
35530	Burgess	2004
35531	Burgess	2962
35532	Nocona	1148
35533	Cando	801
35534	Lohman	1403
35535	Lohman	722
35536	Thompsontown	1729
35537	Farragut	583
35538	Farragut	967
35539	Saint Albans	1467
35540	Saint Albans	2121
35541	Centereach	940
35542	Riverland	2729
35543	Galveston	2523
35544	Galveston	270
35545	Galveston	3175
35546	Milford Crossroads	2563
35547	Westover Hills	2563
35548	Westover Hills	3084
35549	Uplands Park	3196
35550	Denmark	2095
35551	Denmark	639
35552	Denmark	2770
35553	Denmark	2890
35554	Denmark	1193
35555	Binghamton	1153
35556	Fenders	992
35557	Rothschild	628
35558	Halchita	2932
35559	Tuscarawas	2552
35560	Ottertail	2763
35561	Halls Crossroads	583
35562	Lazy Lake	2729
35563	Round Oak	3021
35564	Spiceland	1107
35565	Dorena	1446
35566	New Castle	1107
35567	New Castle	2563
35568	New Castle	540
35569	New Castle	3003
35570	New Castle	351
35571	New Castle	1111
35572	Bright	154
35573	Goodwine	1955
35574	Palm Valley	223
35575	Palm Valley	1832
35576	North River	3180
35577	Drytown	2253
35578	Bellamy	2625
35579	Bellamy	514
35580	Nampa	2039
35581	Shelter Cove	319
35582	Kaplan	2035
35583	Bettie	1659
35584	Murphytown	2337
35585	Isla	3227
35586	Knightsville	1526
35587	Maumee	2942
35588	Saluda	93
35589	Saluda	2537
35590	Saluda	2585
35591	Belle Center	2184
35592	Winigan	1951
35593	Kahuku	1878
35594	Wayne	2809
35595	Wayne	950
35596	Wayne	1454
35597	Wayne	2338
35598	Wayne	2606
35599	Wayne	2604
35600	Wayne	2607
35601	Wayne	1871
35602	Van Voorhis	483
35603	Whipholt	3179
35604	Harahan	1005
35605	Dexter City	3231
35606	Crayne	1786
35607	Cannon Falls	1997
35608	Chanhassen	1037
35609	Boynton Beach	3071
35610	Coyle	2182
35611	Odenton	2440
35612	Goodwill	3241
35613	Sarasota Springs	1236
35614	Mulvane	2492
35615	Pacolet Mills	3162
35616	Greens Farms	408
35617	Tuskahoma	1425
35618	Huntington Bay	940
35619	Aspen	231
35620	Aspen	399
35621	Egan	92
35622	Egan	1612
35623	Pauls Crossroads	2743
35624	Ewart	2265
35625	Miller Place	940
35626	Berville	920
35627	Eggertsville	1510
35628	Baileys Crossroads	2405
35629	East Atlantic Beach	101
35630	Penbrook	1369
35631	Rochester Hills	2663
35632	West DeLand	814
35633	Isle	2200
35634	Martins Creek	314
35635	Exeter	2085
35636	Exeter	701
35637	Exeter	308
35638	Exeter	2641
35639	Exeter	2243
35640	Exeter	624
35641	Chuichu	1914
35642	Skipton	1160
35643	Money Creek	2115
35644	Mountain Home	2459
35645	Mountain Home	2428
35646	Mountain Home	271
35647	Mountain Home	2651
35648	Mountain Home	809
35649	Luzerne	1639
35650	Luzerne	2641
35651	Lemitar	228
35652	Weyerhaeuser	2500
35653	Charlton Heights	2564
35654	Benavides	1600
35655	South San Gabriel	404
35656	Duboistown	1770
35657	Maple Park	322
35658	Courtdale	2641
35659	Iowa Falls	2387
35660	Du Pont	1746
35661	Gouldsboro	2605
35662	Heritage Creek	997
35663	Shadehill	1134
35664	Seagraves	2993
35665	Capac	920
35666	Slaton	300
35667	West Acton	95
35668	Palm Beach Shores	3071
35669	Castanea	2902
35670	Anamosa	3019
35671	La Alianza Comunidad	2087
35672	Port Barrington	3192
35673	Villanueva	1039
35674	Decatur City	2484
35675	Hardwick	838
35676	Hardwick	2765
35677	Hardwick	1989
35678	Hardwick	861
35679	Matagorda	2674
35680	Mountain Iron	3195
35681	Castle Pines Village	2815
35682	Chignik Lake	2011
35683	Plaster City	153
35684	Gosport	1044
35685	Hockinson	2326
35686	Sacramento	344
35687	Sacramento	2688
35688	Sacramento	2284
35689	Cloud Lake	3071
35690	Kentmore Park	217
35691	Hubbard Lake	1737
35692	Long Island	1558
35693	Long Island	1345
35694	Long Island	1817
35695	Iberville	2694
35696	San Leanna	3050
35697	Graterford	731
35698	Willowick	1328
35699	Charlton	492
35700	Eutawville	1910
35701	Flasher	1379
35702	Marcus	657
35703	Marcus	1663
35704	Marcus	428
35705	Nyssa	1310
35706	Italy	823
35707	Incline Village	2332
35708	San Simon	3232
35709	Hahntown	2385
35710	Horn Hill	2575
35711	Geary	1404
35712	Bivalve	2067
35713	Stewartville	1258
35714	Stewartville	1929
35715	Lapwai	1880
35716	Alcoma	2545
35717	Ducor	308
35718	Sylvan Beach	3238
35719	Oktaha	2731
35720	Alcolu	1355
35721	Gunter	3261
35722	Spurgeon	467
35723	Spurgeon	1169
35724	Rotterdam	979
35725	Las Maravillas	3272
35726	Rio Oso	220
35727	Shenandoah	1381
35728	Shenandoah	1516
35729	Shenandoah	734
35730	Shenandoah	2826
35731	Shenandoah	1517
35732	Golovin	717
35733	West Peavine	1385
35734	Jessup	3057
35735	Jessup	2440
35736	Flaherty	1665
35737	Edenton	1478
35738	West Frostproof	2545
35739	Jemison	126
35740	Sailor Springs	1540
35741	Tyndall	2786
35742	Palmarejo	1763
35743	Pine Lakes Addition	2293
35744	Post Creek	1322
35745	Veguita	228
35746	Fitzpatrick	1441
35747	Holden Beach	2395
35748	Trinchera	205
35749	Boykins	1015
35750	Spring Valley	566
35751	Spring Valley	2960
35752	Spring Valley	2329
35753	Spring Valley	1926
35754	Spring Valley	997
35755	Spring Valley	2381
35756	Spring Valley	471
35757	Spring Valley	700
35758	Spring Valley	145
35759	Spring Valley	1704
35760	Spring Valley	2495
35761	Lake Hills	3217
35762	Lake Hills	1323
35763	Wilkinson Heights	1910
35764	Allen City	270
35765	Kopperston	1027
35766	La Porte City	1901
35767	Morgandale	2946
35768	Fort Blackmore	2248
35769	Zapata	2781
35770	Taconite	2777
35771	Midnight	2425
35772	Saint James	2796
35773	Saint James	2664
35774	Saint James	541
35775	Saint James	2395
35776	Saint James	1303
35777	Saint James	940
35778	Saint James	492
35779	Saint James	1275
35780	Saint James	2569
35781	Saint Landry	62
35782	Wareham Center	1936
35783	Noxapater	2971
35784	Fidelity	1523
35785	Fidelity	3044
35786	West Milton	504
35787	West Milton	668
35788	Cooleemee	2912
35789	Forksville	1950
35790	Humacao Zona Urbana	2170
35791	Clearco	2836
35792	Wellman	484
35793	Wellman	3099
35794	Lakeway	3050
35795	Sister Bay	1708
35796	Ross Corner	1889
35797	LaPorte	2792
35798	Brookton	469
35799	Round Mountain	551
35800	Round Mountain	874
35801	Round Mountain	2883
35802	Amberg	1728
35803	Cross Lanes	1467
35804	Fernley	142
35805	Durbin	223
35806	Durbin	1243
35807	Blockhouse	149
35808	Double Oak	2452
35809	Nodaway	1287
35810	Bellingham	2618
35811	Bellingham	1983
35812	Bellingham	1916
35813	Chillum	2064
35814	Elk Hill	2275
35815	Lutak	1963
35816	Littlerock	2190
35817	Littlerock	404
35818	Blakeslee	2351
35819	Blakeslee	378
35820	Fort Deposit	3065
35821	Plain	1344
35822	Plain	276
35823	Roslyn	2449
35824	Roslyn	101
35825	Roslyn	731
35826	Roslyn	400
35827	Spearville	233
35828	Duncan Falls	338
35829	East Providence	929
35830	Daisy	657
35831	Daisy	1176
35832	Daisy	1652
35833	Shawano	2827
35834	New Sarpy	1081
35835	Penn Yan	1575
35836	Bellemeade	997
35837	Mount Rose	2009
35838	Franklinville	2677
35839	Franklinville	1370
35840	Franklinville	2626
35841	Pescadero	1423
35842	Ikatan	1145
35843	Greentown	238
35844	Greentown	257
35845	Bussey	687
35846	Dovray	2195
35847	Chamberlayne Heights	59
35848	Chauvin	910
35849	Polebridge	1761
35850	Naukati Bay	1345
35851	Lonelyville	940
35852	Zafra	2263
35853	Muncie	2036
35854	Muncie	2807
35855	LÄÊ»ie	1878
35856	Rocky Point	1322
35857	Rocky Point	940
35858	Rocky Point	451
35859	Rocky Point	1048
35860	Blue Diamond	2329
35861	Cressona	2826
35862	Laytonsville	740
35863	Burlington	251
35864	Burlington	3204
35865	Burlington	416
35866	Burlington	2176
35867	Burlington	2723
35868	Burlington	1482
35869	Burlington	537
35870	Burlington	1509
35871	Burlington	2220
35872	Burlington	974
35873	Burlington	2269
35874	Burlington	322
35875	Burlington	95
35876	Burlington	1286
35877	Burlington	1054
35878	Burlington	1422
35879	Burlington	426
35880	Burlington	2197
35881	Burlington	2801
35882	Burlington	2841
35883	Burlington	1551
35884	Belville	2395
35885	Loami	695
35886	Cockeysville	1498
35887	Dairy	759
35888	La Madera	2725
35889	Barranquitas	2844
35890	Saddle Rock Estates	101
35891	Naco	3232
35892	Morrow	2312
35893	Morrow	2967
35894	Morrow	1943
35895	Bowring	1154
35896	Sirmans	2047
35897	Sirmans	1746
35898	Orangevale	2688
35899	Bernie	2092
35900	Cade	1623
35901	Calzada	459
35902	Olympian Village	993
35903	Smith Island	128
35904	West Belmar	278
35905	Rollingbay	1048
35906	Wamsutter	3093
35907	Skull Valley	2495
35908	Brown Deer	904
35909	Palito Blanco	2803
35910	Yanceyville	516
35911	Nabb	2241
35912	Odem	3214
35913	Reedley	937
35914	Coopertown	751
35915	Oden	730
35916	Oden	2519
35917	Bannock	1591
35918	Yaak	1185
35919	Elcho	2639
35920	Ashville	1986
35921	Ashville	917
35922	Ashville	1970
35923	Ashville	999
35924	Ashville	3032
35925	Weyauwega	279
35926	Solano	3014
35927	Lipscomb	987
35928	Lipscomb	2871
35929	Twodot	172
35930	Sims Chapel	470
35931	Schuchk	1247
35932	Cady	1481
35933	Weissport	3038
35934	Southfield	2663
35935	Solana	1506
35936	Sky Valley	2001
35937	Sky Valley	3210
35938	Hartington	65
35939	Matinecock	101
35940	Morris	778
35941	Morris	3120
35942	Morris	987
35943	Morris	658
35944	Morris	2151
35945	Morris	1543
35946	Morris	2505
35947	Lenkerville	1369
35948	Tuckerton	2627
35949	Eldridge	2645
35950	Eldridge	2239
35951	Eldridge	1790
35952	Eldridge	1349
35953	Eldridge	2904
35954	Eldridge	814
35955	Strafford	565
35956	Strafford	90
35957	Spry	3005
35958	Spry	853
35959	Waleska	431
35960	Milledgeville	2226
35961	Milledgeville	2571
35962	Milledgeville	1989
35963	Milledgeville	1647
35964	Bolair	2589
35965	G. L. Garcia	547
35966	Barneveld	3238
35967	Barneveld	3080
35968	Sidney	2804
35969	Sidney	2372
35970	Sidney	967
35971	Sidney	718
35972	Sidney	194
35973	Sidney	1610
35974	Sidney	519
35975	Sidney	1669
35976	Estrella	2892
35977	Glasford	2456
35978	Marshallville	3155
35979	Marshallville	2612
35980	Starr School	1740
35981	Midvale Corner	1220
35982	Tolani Lake	353
35983	Sand Ridge	1262
35984	Perrytown	1586
35985	Highlands	3154
35986	Highlands	1423
35987	Highlands	278
35988	Highlands	145
35989	Nada	206
35990	Honeoye	357
35991	Moreno Valley	3210
35992	Langhorne Manor	2634
35993	Paxson	3172
35994	Mounds View	654
35995	Pine Beach	2627
35996	Owens Cross Roads	2048
35997	Gordon Heights	940
35998	Rensselaer Falls	1307
35999	Huntsville	1077
36000	Huntsville	2184
36001	Huntsville	1350
36002	Huntsville	2049
36003	Huntsville	2681
36004	Huntsville	2242
36005	Huntsville	1433
36006	Huntsville	2048
36007	Huntsville	784
36008	Newell	1771
36009	Newell	501
36010	Newell	719
36011	Newell	764
36012	Newell	1964
36013	Newell	2574
36014	Browns Lake	426
36015	Tennessee	3131
36016	Grand Blanc	2258
36017	Turrell	1785
36018	White River Junction	2483
36019	Sioux Rapids	719
36020	Allensworth	308
36021	Rhinecliff	3031
36022	Mink Creek	2144
36023	Tintah	1922
36024	Gotham	1674
36025	Curtice	2942
36026	Tarnov	1850
36027	La Reforma	166
36028	Jonah	121
36029	Slater	107
36030	Slater	2031
36031	Slater	2581
36032	Slater	1849
36033	North Saint Paul	654
36034	Sigel	191
36035	Sigel	1000
36036	Rosman	822
36037	Honey Grove	630
36038	Washington Court House	2571
36039	West Cape May	1994
36040	Menoken	2146
36041	Straughn	1107
36042	West Elkton	241
36043	Malesus	2045
36044	La Puente	2725
36045	La Puente	404
36046	Fort Chiswell	2404
36047	Pamplico	1588
36048	Stanchfield	1084
36049	Briggs	1339
36050	Briggs	430
36051	Marlette	445
36052	Lavelle	2826
36053	Cool Springs	2780
36054	Dandridge	985
36055	North Salt Lake	2875
36056	Weches	2118
36057	Lakeside	1730
36058	Lakeside	772
36059	Lakeside	1532
36060	Lakeside	1421
36061	Lakeside	1761
36062	Lakeside	992
36063	Lakeside	3084
36064	Lakeside	59
36065	Lakeside	2705
36066	Lakeside	2381
36067	Lakeside	1227
36068	Lakeside	719
36069	Lakeside	792
36070	Reminderville	1725
36071	Faysville	1353
36072	Spur	2554
36073	Jacobson	2300
36074	Odin	690
36075	Odin	2796
36076	Odin	613
36077	Saybrook	2283
36078	Saybrook	462
36079	Commack	940
36080	State Park Place	2054
36081	Black Jack	3196
36082	Wymore	3206
36083	Clear Creek	3037
36084	Clear Creek	2345
36085	Clear Creek	337
36086	Rocky Ford	424
36087	Rocky Ford	345
36088	Rocky Ford	2808
36089	Bear River City	1421
36090	Issaquah	3217
36091	Belleair Beach	2785
36092	Solromar	3221
36093	Golden Valley	2008
36094	Golden Valley	91
36095	Golden Valley	2332
36096	Golden Valley	829
36097	Rocky Fork	1388
36098	Folger	1462
36099	Pittsville	1269
36100	Pittsville	2339
36101	Pittsville	2067
36102	Warrior Run	2641
36103	Plainsboro	94
36104	Michigan Center	1819
36105	Lutie	1142
36106	Clyde Hill	3217
36107	Saint Augustine Beach	223
36108	Lucerne Mines	2147
36109	Lake Kathryn	1331
36110	Mayodan	2083
36111	Sunny Side	2088
36112	Sunny Side	2148
36113	Benchley	750
36114	Orchard Valley	264
36115	Sidnaw	2065
36116	Stolle	918
36117	Glendo	1849
36118	Gem Lake	654
36119	Fries Mill	2626
36120	Slaterville Springs	2614
36121	Mutual	3082
36122	Mutual	520
36123	Kinnear	968
36124	Dos Palos Y	1985
36125	Custer City	3062
36126	Red Buttes	923
36127	Brooker	415
36128	Gibbstown	2626
36129	Neibert	2179
36130	Page Park	2101
36131	Larchwood	139
36132	Pickerington	406
36133	Camarillo	3221
36134	Uniopolis	3007
36135	Susquehanna	3015
36136	Indian Lake	1832
36137	Indian Lake	131
36138	New City	2960
36139	Jones	2730
36140	Jones	413
36141	Jones	958
36142	Kinston	1070
36143	Kinston	767
36144	Doe Run	230
36145	Teterboro	1572
36146	Temple City	404
36147	Prudenville	68
36148	Morrowville	481
36149	Greeneville	558
36150	Atglen	90
36151	Watch Hill	478
36152	Wolverton	627
36153	Progress	2510
36154	Progress	1369
36155	Bradley Gardens	129
36156	North Hampton	2323
36157	Weeki Wachee Gardens	3274
36158	Succasunna	2877
36159	Bacliff	2523
36160	Progreso	1353
36161	Graettinger	3202
36162	Cale	1783
36163	Plata	2160
36164	Esparto	709
36165	Belcher	306
36166	Belcher	1172
36167	Russells Point	2184
36168	Emsworth	2632
36169	Twinsburg	1725
36170	Lowndesboro	3065
36171	Absecon	2617
36172	Bailey Prairie	1984
36173	Benbrook	3084
36174	Bayou Chicot	62
36175	Postville	2368
36176	Postville	2555
36177	Harlingen	1832
36178	Harlingen	129
36179	Yale	1273
36180	Yale	3257
36181	Yale	920
36182	Yale	3043
36183	Yale	2934
36184	Yale	181
36185	Yale	1888
36186	Yale	1414
36187	Cascade Locks	949
36188	Wainscott	940
36189	Zurich	2982
36190	Newington	1712
36191	Newington	424
36192	Newington	2405
36193	Escabosa	405
36194	Frederiksted	648
36195	Oak Creek	904
36196	Oak Creek	1519
36197	Caln	90
36198	Nordman	623
36199	Jackstown	1570
36200	Teachey	3126
36201	Grenville	507
36202	Grenville	2449
36203	Isabela	3077
36204	Swartz	243
36205	Wagoner	3079
36206	Wagoner	2495
36207	Cropsey	2283
36208	Cana	2231
36209	Jarvisburg	1259
36210	Minster	3007
36211	Odon	435
36212	Matoaka	2003
36213	Myers Corner	3031
36214	Nashoba	1425
36215	Blue Creek	1421
36216	Bessmay	3042
36217	Hicksville	2333
36218	Hicksville	101
36219	Velarde	2725
36220	Camp	2716
36221	Charenton	2490
36222	Constantine	3103
36223	Fort Bridger	231
36224	Durant	70
36225	Durant	64
36226	Durant	2278
36227	Nancy	372
36228	Old Mill Creek	1326
36229	Dolton	761
36230	Dolton	2535
36231	Ladysmith	2500
36232	Ladysmith	2893
36233	Pine Knot	2268
36234	Takoma Park	740
36235	Armijo	405
36236	Alamogordo	344
36237	Amawalk	1919
36238	Kedron	858
36239	Plano	1335
36240	Plano	1621
36241	Plano	2305
36242	Plano	1913
36243	Des Arc	1865
36244	Des Arc	1589
36245	Flowing Wells	1247
36246	Pearlington	1966
36247	Lake Andes	3096
36248	Panama City	902
36249	Cyclone	1217
36250	South Waverly	416
36251	Bettendorf	2239
36252	Cotton Valley	2594
36253	South Floral Park	101
36254	Harvel	735
36255	Muncy	269
36256	Muncy	1770
36257	Extension	2140
36258	Capa	3018
36259	Stockland	1955
36260	Loch Lynn Heights	310
36261	Rennerdale	2632
36262	Richmond Dale	1257
36263	Ladson	1723
36264	Exell	327
36265	Blennerhassett	2337
36266	Harvey	1005
36267	Harvey	761
36268	Harvey	2249
36269	Harvey	687
36270	Harvey	2916
36271	Harvey	1058
36272	Durand	2691
36273	Durand	1711
36274	Durand	2451
36275	Durand	2995
36276	Houlka	699
36277	Kohatk	1914
36278	Venice Gardens	1236
36279	Campbellstown	241
36280	Mill Hall	2902
36281	Edler	1893
36282	Owingsville	2375
36283	Canalou	1857
36284	Angola	1510
36285	Angola	2886
36286	Angola	1954
36287	Lytton	1790
36288	Lytton	844
36289	Venersborg	2326
36290	Rockaway	2877
36291	Tazlina	3172
36292	Encino	1055
36293	Encino	1625
36294	Tatums	2560
36295	Elkhart	2181
36296	Elkhart	1380
36297	Elkhart	3145
36298	Elkhart	2539
36299	Elkhart	1395
36300	Owatonna	85
36301	Medaryville	369
36302	Gladstone	507
36303	Gladstone	236
36304	Gladstone	2654
36305	Gladstone	1541
36306	Gladstone	129
36307	Gladstone	1798
36308	Gladstone	272
36309	Gladstone	3223
36310	Orlovista	3141
36311	Sabana Hoyos	2087
36312	Bippus	3251
36313	Nunnelly	2335
36314	Caps	1061
36315	Glenview	997
36316	Glenview	761
36317	Glenview	2381
36318	Napa	3151
36319	Carr	1101
36320	Hornsby	2697
36321	Carp	1206
36322	Muniz	1353
36323	Caro	1486
36324	Somersworth	2885
36325	Leeds	2400
36326	Leeds	987
36327	Leeds	556
36328	Leeds	472
36329	Fulford	2974
36330	Sharpsburg	2632
36331	Sharpsburg	1060
36332	Sharpsburg	741
36333	Sharpsburg	2766
36334	Sharpsburg	492
36335	Sharpsburg	2375
36336	Sharpsburg	3187
36337	Carl	2403
36338	Carl	1287
36339	El Indio	867
36340	Orland	381
36341	Orland	2886
36342	Surprise	3086
36343	Surprise	788
36344	Spartanburg	3162
36345	Bullhead City	829
36346	Cherry Fork	1292
36347	Bradfordsville	680
36348	Wauwatosa	904
36349	Plaza	1431
36350	Plaza	354
36351	Kawela Bay	1878
36352	Bruneau	982
36353	Canyon Creek	2206
36354	Cass	1243
36355	Cass	2126
36356	Montoya	1253
36357	San Leon	2523
36358	Center Sandwich	2227
36359	McEwen	2424
36360	Cocolalla	623
36361	Cash	2621
36362	Cash	3215
36363	Nash	826
36364	Nash	2633
36365	Nash	1119
36366	Welaka	2758
36367	Riner	3093
36368	Riner	739
36369	Pennville	414
36370	Pennville	853
36371	Economy	2600
36372	Economy	1883
36373	Casa	1847
36374	Doe Valley	1665
36375	Corona de Tucson	1247
36376	Hensel	2418
36377	Delong	2711
36378	Pecan Gap	1796
36379	East Lansing	287
36380	Cary	3192
36381	Cary	1399
36382	Cary	592
36383	Salt Lake City	2637
36384	Glenmoor	1662
36385	Horrel Hill	1675
36386	Ardoch	2633
36387	Chilocco	1366
36388	Doris	400
36389	Jamesville	2210
36390	Jamesville	2979
36391	Sanbornville	2227
36392	Cato	2023
36393	Cato	1169
36394	Cato	333
36395	Odum	2613
36396	Cornucopia	3109
36397	Cornucopia	1471
36398	South Williamsport	1770
36399	Chatom	470
36400	North Alamo	1353
36401	South Henderson	460
36402	Paulsboro	2626
36403	Pierron	3127
36404	Luton	3024
36405	Spring Lake	76
36406	Spring Lake	1733
36407	Spring Lake	705
36408	Spring Lake	1967
36409	Spring Lake	2777
36410	Spring Lake	278
36411	Spring Lake	3274
36412	Canajoharie	724
36413	Edmonston	2064
36414	Belcherville	1148
36415	Chincoteague	3027
36416	Louisiana	1171
36417	Glenmont	740
36418	Glenmont	2277
36419	Hughestown	2641
36420	Cooter	2383
36421	Maltby	99
36422	Maltby	3143
36423	French Village	918
36424	Taylors	2031
36425	Three Oaks	1767
36426	Three Oaks	2101
36427	Barahona Comunidad	1987
36428	Clarissa	2649
36429	Grand Meadow	1432
36430	Timblin	1000
36431	Essexville	903
36432	Threelinks	1812
36433	Blunt	3052
36434	Horicon	955
36435	Thalmann	1102
36436	Petronila	819
36437	Millbrook	3031
36438	Millbrook	1913
36439	Millbrook	808
36440	Chunky	714
36441	Chunky	1229
36442	Roberta Mill	1010
36443	Ossineke	1737
36444	Phillipstown	1907
36445	Pence	1863
36446	Harvest	2048
36447	Barnhill	2610
36448	Barnhill	2552
36449	Fairview	3204
36450	Fairview	3048
36451	Fairview	2178
36452	Fairview	1186
36453	Fairview	1919
36454	Fairview	1853
36455	Fairview	1416
36456	Fairview	1572
36457	Fairview	494
36458	Fairview	397
36459	Fairview	686
36460	Fairview	524
36461	Fairview	789
36462	Fairview	2144
36463	Fairview	1191
36464	Fairview	1335
36465	Fairview	122
36466	Fairview	1669
36467	Fairview	1556
36468	Fairview	1234
36469	Fairview	137
36470	Fairview	638
36471	Fairview	1048
36472	Fairview	1351
36473	Fairview	2660
36474	Fairview	2712
36475	Fairview	1035
36476	Fairview	2397
36477	Fairview	492
36478	Glenmora	2402
36479	Vineyard	2502
36480	Vineyard	2688
36481	Vineyard	705
36482	Plato	2273
36483	Plato	2386
36484	Fort Valley	3100
36485	Rodney Village	216
36486	Vaughan	2301
36487	Vaughan	3078
36488	Frankfort Springs	1883
36489	Bala-Cynwyd	731
36490	Elmore City	1879
36491	Baltic	2293
36492	Baltic	1593
36493	Baltic	2552
36494	Montour	1861
36495	Montour	1608
36496	Sagerton	1179
36497	Rose City	3139
36498	Rose City	159
36499	Rose City	2819
36500	Le Sueur	3237
36501	Matoaca	1615
36502	Rendville	1845
36503	Fernville	1079
36504	Snow Lake	1661
36505	Juno Ridge	3071
36506	Fort Edward	477
36507	Cave	1201
36508	Kolola Springs	3066
36509	Brookside Village	1984
36510	Still River	1760
36511	Angoon	207
36512	Senath	1546
36513	Voorhees	129
36514	Bevil Oaks	1003
36515	Santa Margarita	2207
36516	Deloit	1408
36517	White Meadow Lake	2877
36518	Cornerstone	988
36519	Green Springs	1340
36520	Roy Lake	3199
36521	Grand Detour	1978
36522	Angora	3195
36523	Angora	2918
36524	Grassy Butte	916
36525	Lutts	2601
36526	Silver Gate	1749
36527	Harrisonburg	3248
36528	Harrisonburg	1313
36529	Texhoma	2272
36530	Arlee	1322
36531	West Columbia	1984
36532	West Columbia	324
36533	Thoreau	3150
36534	Middle Village	543
36535	Guthrie	3191
36536	Guthrie	2784
36537	Guthrie	2182
36538	Guthrie	2650
36539	Guthrie	3218
36540	Owl Ranch	2803
36541	Leedy	173
36542	Crystola	277
36543	Yampa	1519
36544	Arley	2970
36545	Heppner	2845
36546	Treasure Island	2785
36547	White Springs	2077
36548	Bladensburg	2064
36549	Bladensburg	588
36550	Alcova	805
36551	Tolchester Beach	217
36552	Crossett	2862
36553	Lincoln Estates	875
36554	Yakima	3268
36555	Jersey City	2587
36556	Garrison	2152
36557	Garrison	1498
36558	Garrison	2532
36559	Garrison	2950
36560	Garrison	788
36561	Garrison	704
36562	Garrison	2282
36563	Garrison	1639
36564	Garrison	2913
36565	Garrison	1666
36566	Autaugaville	413
36567	East Kingston	1952
36568	Makanda	1825
36569	Alma Center	1830
36570	Selleck	3217
36571	Hurdtown	2877
36572	Meadowood	789
36573	Belgrade	3114
36574	Belgrade	475
36575	Belgrade	579
36576	Belgrade	1709
36577	Saugatuck	2908
36578	Oatfield	3223
36579	Mangham	1671
36580	Hatch	1242
36581	Hatch	3005
36582	Hatch	461
36583	Manhasset Hills	101
36584	Gold River	2688
36585	Alvarado	1266
36586	Alvarado	2470
36587	Glenridge	2618
36588	Bearmouth	1103
36589	West Leechburg	2385
36590	Atsion	2841
36591	Loudonville	383
36592	Loudonville	924
36593	Nettleton	2096
36594	Upson	1863
36595	Helmer	1360
36596	Wapato	3268
36597	Korbel	319
36598	Walloon Lake	541
36599	Seabeck	1048
36600	Morrisville	448
36601	Morrisville	1399
36602	Morrisville	2634
36603	Morrisville	2042
36604	Morrisville	3224
36605	Morrisville	2542
36606	San Andreas	3144
36607	Websterville	464
36608	Sumrall	890
36609	Asharoken	940
36610	Molena	1174
36611	Orchard Grass Hills	1692
36612	Niverville	1073
36613	Olyphant	3057
36614	Olyphant	1818
36615	Rocklin	2289
36616	Celada	696
36617	Junior	289
36618	Wainaku	1488
36619	Penn Wynne	731
36620	Weedville	162
36621	Meridian Hills	678
36622	Johnsondale	308
36623	Farnham	1510
36624	Farnham	3092
36625	Daniel	1792
36626	Daniel	2412
36627	Ripon	2090
36628	Ripon	590
36629	Galata	2866
36630	Lohrville	1210
36631	Lohrville	1277
36632	Corriganville	1497
36633	Eddington	2634
36634	Centenary	1089
36635	Centenary	685
36636	North Bay Shore	940
36637	Running Water	2786
36638	Wauchula	2250
36639	Bird Island	222
36640	Grassy Creek	116
36641	Tasley	3027
36642	Redby	546
36643	New Point	2487
36644	Newburgh	3137
36645	Newburgh	391
36646	Lookout	1771
36647	Turton	1038
36648	Board Camp	2546
36649	La Palma	1914
36650	La Palma	3140
36651	Ten Sleep	1133
36652	Sicklerville	2977
36653	Evergreen Colonia	166
36654	West Kingston	478
36655	Minersville	2826
36656	Minersville	1882
36657	Ferron	1778
36658	Rheems	1139
36659	Old Harbor	3101
36660	Haydenville	2236
36661	Malta Bend	107
36662	Scandinavia	279
36663	East Moriches	940
36664	Agnes	931
36665	Raceland	1052
36666	Raceland	1574
36667	Los Padillas	405
36668	Helenwood	2242
36669	Linden	522
36670	Linden	1080
36671	Linden	3080
36672	Linden	76
36673	Linden	725
36674	Linden	1841
36675	Linden	590
36676	Linden	3176
36677	Linden	2258
36678	Linden	483
36679	Linden	3161
36680	Linden	502
36681	Chilton	1909
36682	Chilton	1428
36683	Chilton	2597
36684	Lester Prairie	2386
36685	Westby	226
36686	Westby	1223
36687	Loose Creek	1155
36688	Agnew	1138
36689	Midland Park	1572
36690	Midland Park	419
36691	Midland Park	887
36692	Gost Creek	1462
36693	Harwood	2440
36694	Harwood	1164
36695	Harwood	3180
36696	Harwood	227
36697	Lockeford	590
36698	Coalgate	331
36699	Slaughters	2593
36700	Speculator	2069
36701	Bakerstown	2632
36702	Terril	1314
36703	Klickitat	149
36704	Sprague	1138
36705	Sprague	729
36706	Sprague	1195
36707	Orlando	1765
36708	Orlando	3141
36709	Orlando	2182
36710	Kincaid	2949
36711	Kincaid	2564
36712	Kincaid	1394
36713	Baltimore Highlands	1498
36714	Arney	1457
36715	Bellbrook	566
36716	Powell Butte	1018
36717	Kearney Park	2052
36718	Cooper	2602
36719	Cooper	126
36720	Cooper	562
36721	Cooper	1796
36722	Northwoods Beach	2833
36723	Lynbrook	101
36724	Bower Hill	2632
36725	Ferguson	372
36726	Ferguson	3196
36727	Ferguson	2462
36728	Cassopolis	3182
36729	Hunters Creek	3141
36730	K-Bar Ranch	2803
36731	Wendelville	2910
36732	McCune	1414
36733	Pinnacle	1761
36734	Pinnacle	347
36735	Pinnacle	375
36736	Gannett	1405
36737	Westel	77
36738	Fort Yates	2925
36739	Chinchilla	3057
36740	Poplar Creek	733
36741	Tat Momoli	1914
36742	Sabine Pass	1003
36743	Sevierville	3208
36744	Tabernash	1151
36745	Aquilla	1899
36746	Aquilla	452
36747	Wrigley	2335
36748	Wrigley	116
36749	New Edinburg	858
36750	Ruther Glen	2893
36751	Berlin Heights	1511
36752	Mariba	664
36753	Gamerco	3150
36754	Crary	653
36755	Saint Teresa	2134
36756	Secaucus	2587
36757	Lasana	1832
36758	Delevan	1370
36759	Deal	278
36760	Jarreau	2578
36761	Wendte	2330
36762	Dean	1539
36763	Dean	1568
36764	Quinnimont	2564
36765	Morgans Point Resort	1958
36766	Tierra Grande	819
36767	Green Brier	240
36768	Milford Square	2634
36769	Billett	533
36770	Oberlin	2486
36771	Oberlin	845
36772	Oberlin	1369
36773	Oberlin	440
36774	Corydon	618
36775	Corydon	2608
36776	Corydon	2655
36777	Lake Elsinore	3210
36778	Red Chute	1635
36779	Yountville	3151
36780	Broken Arrow	2906
36781	Dewey	468
36782	Dewey	2331
36783	Dewey	3059
36784	Paden	87
36785	Paden	173
36786	Mount Gretna	1493
36787	Tremonton	1421
36788	Gresham	3204
36789	Gresham	685
36790	Gresham	852
36791	Gresham	2827
36792	Peachburg	1441
36793	Campton Hills	322
36794	Kilmichael	733
36795	Loughman	2545
36796	Cedar Rapids	253
36797	Cedar Rapids	944
36798	Las Flores	3186
36799	Crow Agency	2724
36800	Goldenrod	1627
36801	Queen Anne	2701
36802	Flomaton	2668
36803	Burket	718
36804	Ottawa Hills	2942
36805	Riegelwood	1238
36806	Diana	1659
36807	Diana	2589
36808	Leonardo	278
36809	Zeba	2149
36810	Eldon	744
36811	Eldon	2174
36812	Eldon	430
36813	Eldon	2705
36814	Blewett	2455
36815	Maryhill	149
36816	Rice Lake	3195
36817	Rice Lake	2315
36818	Thousand Palms	3210
36819	CataÃ±o Zona Urbana	651
36820	Oceanside	2093
36821	Oceanside	101
36822	Oceanside	2381
36823	Royal Oak	2663
36824	Royal Oak	1160
36825	Cantwell	781
36826	Chagrin Falls	708
36827	Redan	1751
36828	New Holstein	1428
36829	Kure Beach	254
36830	Lowville	2529
36831	Saint Ann	3196
36832	Saint Anthony	91
36833	Saint Anthony	2462
36834	Saint Anthony	970
36835	Saint Anthony	1379
36836	Wildwood Lake	1695
36837	Dunton	642
36838	Forest Meadows	3144
36839	Magazine	2187
36840	Sauget	918
36841	Garden Lakes	266
36842	Snow Lake Shores	1640
36843	Pine Hall	347
36844	Wrightsville Beach	254
36845	Coxsackie	556
36846	Willhoit	1157
36847	Hollymead	2829
36848	Collettsville	2852
36849	Crane	2666
36850	Crane	2213
36851	Crane	212
36852	Crane	245
36853	Crane	1669
36854	Kenai	1806
36855	Wheatley	1045
36856	Wheatley	2980
36857	Kragnes	1530
36858	Anacortes	1422
36859	Kings Park	940
36860	Kings Park	2405
36861	Millers Ferry	409
36862	American Fork	705
36863	Las Ollas Comunidad	2086
36864	Marine	2054
36865	Pascagoula	1822
36866	Edisto	1910
36867	Rio Communities	3272
36868	Wellton	2113
36869	Coeur d'Alene	3087
36870	Surfside	1705
36871	Surfside	3140
36872	South Ogden	1433
36873	Trevorton	2963
36874	Florida City	1705
36875	Bellemont	353
36876	Bellemont	1509
36877	Paint Rock	2699
36878	Paint Rock	1817
36879	Gray Horse	1154
36880	Bromley	2397
36881	Tonka Bay	91
36882	Key West	2348
36883	Key West	1931
36884	Holdingford	1709
36885	Millbrae	1423
36886	Seboeis	392
36887	Meyers	2446
36888	Easterly	750
36889	Lluveras Comunidad	2406
36890	Wrightsboro	254
36891	Monmouth	1821
36892	Monmouth	937
36893	Monmouth	2310
36894	Monmouth	2538
36895	Deer	1232
36896	Fort Johnson	724
36897	Marina	2955
36898	Waupaca	279
36899	Lissie	3047
36900	Kimmswick	993
36901	Itmann	1027
36902	Old Orchard	314
36903	PiÃ±on Hills	721
36904	New Rome	2141
36905	Lacy-Lakeview	702
36906	Webbville	535
36907	Struble	1935
36908	Frytown	1263
36909	Dewar	1543
36910	Clarence	192
36911	Clarence	393
36912	Clarence	64
36913	Clarence	1510
36914	Clarence	2991
36915	Sasabe	1247
36916	New Britain	1712
36917	New Britain	2634
36918	Holly Bluff	3078
36919	Lynxville	1416
36920	Chastang	1301
36921	Saginaw	3195
36922	Saginaw	195
36923	Saginaw	1234
36924	Saginaw	299
36925	Saginaw	3084
36926	La Vernia	2938
36927	Hudson Lake	2792
36928	Mammoth Spring	2716
36929	Grottoes	2084
36930	Dodd City	630
36931	Ottumwa	2620
36932	Ottumwa	2174
36933	Ottumwa	1054
36934	Little River-Academy	1958
36935	Terral	986
36936	Rittman	2612
36937	Woosung	1978
36938	Lattimore	857
36939	Betances	1682
36940	Lake Quivira	1272
36941	Junius	1327
36942	HauÊ»ula	1878
36943	Breckenridge Hills	3196
36944	Tulare	308
36945	Tulare	1038
36946	German Valley	959
36947	West Lake Wales	2545
36948	Leachville	938
36949	North East Carry	1852
36950	Hockingport	741
36951	Freehold	278
36952	McKenzie Bridge	1446
36953	Toledo	1184
36954	Toledo	2533
36955	Toledo	1861
36956	Toledo	78
36957	Toledo	2942
36958	Farina	2569
36959	Coney Island	2666
36960	Central Pacolet	3162
36961	Hot Springs	124
36962	Hot Springs	2041
36963	Hot Springs	2374
36964	Hot Springs	2446
36965	Hot Springs	982
36966	Hot Springs	75
36967	Pine Bluffs	264
36968	Broughton	2074
36969	Broughton	2632
36970	Broughton	2956
36971	Seldovia	1806
36972	Glade Mills	789
36973	Hotchkiss	1797
36974	Kittrell	460
36975	Dunnigan	709
36976	Douglas City	317
36977	Roads	1828
36978	Slovan	483
36979	Fox River Grove	3192
36980	Utting	2638
36981	Lake Santeetlah	2012
36982	Kenel	2296
36983	Napakiak	2260
36984	Lexington	605
36985	Lexington	2845
36986	Lexington	1672
36987	Lexington	2097
36988	Lexington	2278
36989	Lexington	2759
36990	Lexington	2999
36991	Lexington	2241
36992	Lexington	198
36993	Lexington	2436
36994	Lexington	1260
36995	Lexington	859
36996	Lexington	445
36997	Lexington	876
36998	Lexington	95
36999	Lexington	2774
37000	Lexington	324
37001	Lexington	2653
37002	Lexington	2283
37003	Lexington	2570
37004	Jayuya Zona Urbana	3164
37005	Dotsero	2974
37006	Bauxite	104
37007	Montgomery City	736
37008	New Columbus	2641
37009	Fajardo	330
37010	Nokesville	321
37011	Highland Beach	2440
37012	Highland Beach	3071
37013	Brazos Bend	1933
37014	McGrady	446
37015	Kingstree	2429
37016	West Fargo	3180
37017	Thach	2789
37018	Rehoboth	3150
37019	Salmon	2891
37020	Landisburg	1848
37021	West Easton	314
37022	Tuckerman	1818
37023	Hortense	2793
37024	Bosque	3272
37025	Bosque	3086
37026	Haverhill	2745
37027	Haverhill	2462
37028	Haverhill	3071
37029	Lake Koshkonong	994
37030	Mediapolis	1482
37031	Nicksville	3232
37032	Malabar	2189
37033	Mendham	2877
37034	Minam	2693
37035	Roachtown	918
37036	Craig	1721
37037	Craig	1935
37038	Craig	1345
37039	Craig	1870
37040	Craig	1390
37041	Craig	2206
37042	Tahawus	2742
37043	Lompico	1362
37044	Newcomb	2929
37045	Douglass	1666
37046	Douglass	786
37047	Labadieville	771
37048	Speedway	678
37049	Tampa	681
37050	Tampa	868
37051	Roach	2329
37052	Mills River	2651
37053	Oxon Hill	2064
37054	Powers Lake	2582
37055	Powers Lake	926
37056	Dell	938
37057	Dell	2331
37058	Kent Park	1936
37059	Hedwig Village	145
37060	Peckham	1366
37061	Saraland	1301
37062	Westhaven	319
37063	Forkland	559
37064	Summerdale	1988
37065	Mentor-on-the-Lake	1328
37066	Blomkest	2457
37067	MÄnÄ	2209
37068	Sugar Creek	570
37069	Sugar Creek	1826
37070	Seltzer	2826
37071	Cloud Creek	2808
37072	Red Hill	3220
37073	Red Hill	731
37074	Red Hill	808
37075	Quantico	321
37076	Quantico	2067
37077	Weston	177
37078	Weston	3236
37079	Weston	2641
37080	Weston	1851
37081	Weston	205
37082	Weston	480
37083	Weston	1827
37084	Weston	628
37085	Weston	2338
37086	Weston	2729
37087	Weston	2144
37088	Weston	2586
37089	Weston	1544
37090	Weston	1335
37091	Weston	129
37092	Weston	683
37093	Weston	2528
37094	Weston	2595
37095	Weston	3016
37096	Paderborn	918
37097	North Logan	2709
37098	Edisto Beach	2109
37099	Camp Creek	3086
37100	Camp Creek	2003
37101	Jarrell	121
37102	Wheeler Ridge	263
37103	Bodega	1790
37104	Valle Vista	3210
37105	San Antonito	228
37106	Tallulah Falls	2884
37107	Heron Lake	1814
37108	Belleview	682
37109	Belleview	1865
37110	Belleview	251
37111	Coal Creek	969
37112	Tamms	2719
37113	Worthington Springs	500
37114	Cedar Park	121
37115	Cashion Community	294
37116	Pleasant Dale	167
37117	Happy Valley	3223
37118	Happy Valley	1806
37119	South Bradenton	2834
37120	Ferris	1969
37121	Ferris	823
37122	Eatonton	2757
37123	Cozad	2999
37124	Picture Rocks	1770
37125	Picture Rocks	1247
37126	Stonewood	615
37127	Carrabassett	2124
37128	Doctor Phillips	3141
37129	Vowinckel	297
37130	Cumberland Center	79
37131	Redig	3013
37132	Homa Hills	805
37133	Lone Elm	1394
37134	Flandreau	92
37135	Dent	2075
37136	Dent	2763
37137	Blythe	3091
37138	Blythe	3210
37139	Point Baker	758
37140	Point Baker	1345
37141	Blanca	2068
37142	Swan Lake	1322
37143	Swan Lake	3147
37144	Tennant	2683
37145	Tennant	187
37146	Tennant	337
37147	Francisco	3115
37148	Saint Regis	975
37149	Zena	1952
37150	Zena	2808
37151	Thane	234
37152	Hopkins Park	2870
37153	Halethorpe	1498
37154	Carencro	2769
37155	Wesson	501
37156	Wesson	2295
37157	Screven	2613
37158	Yarrowsburg	492
37159	Blanche	433
37160	Devine	827
37161	Glenn Heights	525
37162	Green Hills	483
37163	Henagar	1752
37164	Racine	1449
37165	Racine	426
37166	Racine	246
37167	Racine	1432
37168	Table Grove	2712
37169	Zell	2944
37170	Port Wing	3109
37171	Bullhead	2296
37172	Zela	1347
37173	Westdale	2803
37174	Westdale	2234
37175	Mount Judea	1232
37176	Anthoston	2655
37177	Stanford	2198
37178	Stanford	2145
37179	Stanford	1190
37180	Stanford	2283
37181	Miner	1749
37182	Miner	2244
37183	East Garden City	101
37184	Tower	3195
37185	Tower	2481
37186	Spelter	615
37187	Bethany	465
37188	Bethany	958
37189	Bethany	111
37190	Bethany	742
37191	Bethany	1069
37192	Bethany	2605
37193	Bethany	620
37194	Bethany	785
37195	Pender	2191
37196	Pender	2405
37197	Scottsbluff	1016
37198	Wendover	1622
37199	Vandervoort	2546
37200	Glen White	1634
37201	Ocean City	1759
37202	Ocean City	2038
37203	Ocean City	2499
37204	Ocean City	1994
37205	Au Sable Forks	2742
37206	Pomona Park	2758
37207	Talmage	2428
37208	Talmage	1316
37209	Talmage	1053
37210	Talmage	2280
37211	Ponce	459
37212	Brownsboro Farm	997
37213	Nashwauk	2777
37214	White Pigeon	3103
37215	Yellow Bluff	409
37216	Hallowell	1500
37217	Ponca	2237
37218	Ponca	1232
37219	Brewer	392
37220	Brewer	1843
37221	North Manitou	2787
37222	Wicksville	907
37223	Waupun	2090
37224	Havana	341
37225	Havana	2441
37226	Havana	1353
37227	Havana	728
37228	Havana	2869
37229	Havana	3010
37230	Havana	746
37231	Meaux	2035
37232	Telegraph	355
37233	Inland	1535
37234	Murrieta	3210
37235	Karval	1200
37236	Wynona	1154
37237	Pinetown	438
37238	Rosario	2930
37239	Gallatin Gateway	579
37240	Bull Run	321
37241	Menominee	2969
37242	Menominee	1698
37243	Menominee	544
37244	Menominee	65
37245	Birmingham	1541
37246	Birmingham	2663
37247	Birmingham	1815
37248	Birmingham	2550
37249	Birmingham	2430
37250	Birmingham	987
37251	Scarboro	2098
37252	Minco	2493
37253	Thama	623
37254	Peletier	1182
37255	Tobias	106
37256	Pleasant Mound	3127
37257	Neillsville	2327
37258	Lovelock	1104
37259	BÃºfalo Comunidad	1908
37260	Richland Hills	3084
37261	Isabela Zona Urbana	3077
37262	Swatara	2300
37263	Whitmire	1657
37264	Blanco	551
37265	Blanco	3211
37266	Blanco	2929
37267	De Witt	552
37268	De Witt	106
37269	De Witt	2623
37270	De Witt	2228
37271	New Ringgold	2826
37272	Humarock	1936
37273	Vadnais Heights	654
37274	Giltner	2078
37275	Manorhaven	101
37276	West Pike	715
37277	Spillertown	123
37278	Camp Lake	2582
37279	Tribes Hill	724
37280	Nicholasville	202
37281	East Gillespie	712
37282	Canyon Diablo	353
37283	Gilson	584
37284	Fort Recovery	2007
37285	Menfro	1843
37286	Cokedale	205
37287	Marked Tree	1499
37288	Channel Islands Beach	3221
37289	Meadow Grove	2050
37290	New Liberty	2239
37291	Dothan	1463
37292	Dothan	2117
37293	Ewell	128
37294	Botkins	194
37295	Kenly	1165
37296	Beach	2965
37297	Beach	1550
37298	Brisbane	1423
37299	Volborg	3060
37300	Wetonka	2520
37301	Almedia	1079
37302	Evendale	2075
37303	Potala Pastillo Comunidad	846
37304	Marcell	2777
37305	Gober	630
37306	Carrier	3004
37307	Piney View	1634
37308	Neosho	955
37309	Neosho	1234
37310	Addie	1807
37311	Bell City	364
37312	Bell City	2092
37313	Bell City	1071
37314	Wyano	2385
37315	North Haven	940
37316	North Haven	2409
37317	Lone Grove	2560
37318	Kalaupapa	1508
37319	Addis	2994
37320	Magness	138
37321	Scallorn	2496
37322	Culebra	614
37323	Double Adobe	3232
37324	Loyall	1898
37325	Causey	1678
37326	Powellsville	1681
37327	Olalla	1048
37328	Harrison	2587
37329	Harrison	1825
37330	Harrison	1428
37331	Harrison	1919
37332	Harrison	2294
37333	Harrison	2073
37334	Harrison	252
37335	Harrison	3087
37336	Harrison	2927
37337	Harrison	2075
37338	Harrison	2818
37339	Harrison	490
37340	Harrison	2043
37341	Kenna	1678
37342	Kenna	1820
37343	Edison	2287
37344	Edison	263
37345	Edison	2846
37346	Edison	1422
37347	Edison	1281
37348	Manitowoc	626
37349	Sankertown	3032
37350	Coleridge	2677
37351	Coleridge	65
37352	Vidal Junction	721
37353	Fern Acres	1488
37354	Jolivue	1261
37355	Lake Mills	2692
37356	Lake Mills	994
37357	Haivana Nakya	1247
37358	Wolfe City	3215
37359	Iron Junction	3195
37360	South Cleveland	1695
37361	Selvin	391
37362	Wyaconda	2320
37363	Palmas del Mar	2170
37364	Harbor Hills	3255
37365	Harbor Hills	101
37366	Carrick	337
37367	Roann	1245
37368	McLoud	2032
37369	Dodge Park	2064
37370	Glen Lyon	2641
37371	Armor	1510
37372	Bear Creek	1378
37373	Bear Creek	1985
37374	Bear Creek	1806
37375	Bear Creek	683
37376	Bear Creek	2266
37377	Johnson City	551
37378	Johnson City	467
37379	Johnson City	3223
37380	Johnson City	1153
37381	Big Tree	1510
37382	Sherman Station	392
37383	Ashaway	478
37384	Ko Vaya	1247
37385	Capps	999
37386	Woden	1965
37387	Coyville	2937
37388	Jette	1322
37389	Middleburg	3118
37390	Middleburg	460
37391	Middleburg	2163
37392	Middleburg	2232
37393	Middleburg	1532
37394	Roane	881
37395	Garden Acres	590
37396	Garden Acres	3084
37397	Temple Hills	2064
37398	Chesterville	2816
37399	Chesterville	217
37400	Chesterville	2846
37401	Hillister	2873
37402	Elk Horn	1062
37403	Elk Horn	187
37404	Government Camp	3223
37405	Harpers Ferry	991
37406	Harpers Ferry	2555
37407	Wendel	2385
37408	Wendel	2799
37409	Boyes Hot Springs	1790
37410	Mingo	3039
37411	Wenden	2638
37412	Rising Star	1463
37413	Marion	2410
37414	Marion	1460
37415	Marion	677
37416	Marion	509
37417	Marion	692
37418	Marion	2029
37419	Marion	469
37420	Marion	2135
37421	Marion	607
37422	Marion	1118
37423	Marion	2599
37424	Marion	1846
37425	Marion	1786
37426	Marion	2535
37427	Marion	2204
37428	Marion	2378
37429	Marion	1761
37430	Marion	2382
37431	Marion	1726
37432	Marion	722
37433	Marion	944
37434	Marion	685
37435	Marion	2159
37436	Marion	681
37437	Marion	1785
37438	Marion	123
37439	Marion	279
37440	Moylan	2809
37441	Sebewaing	342
37442	Ranier	296
37443	La Yuca Comunidad	459
37444	Pridgen	769
37445	Highcliff	2632
37446	Hallstead	3015
37447	Elkins	1336
37448	Elkins	2678
37449	Elkins	471
37450	Bear Dance	1322
37451	Middlebush	129
37452	Stockertown	314
37453	South Newport	1043
37454	Ferrum	2143
37455	Karns City	789
37456	Pflugerville	3050
37457	Clarkston Heights	147
37458	Kelley	2581
37459	Seaside Park	2627
37460	Promised Land	3075
37461	Middlebury	3145
37462	Middlebury	3008
37463	Keller	3027
37464	Keller	71
37465	Keller	1150
37466	Keller	3084
37467	Prosper	1335
37468	Jennerstown	131
37469	Childress	716
37470	New Columbia	504
37471	Standish	1936
37472	Standish	79
37473	Standish	3173
37474	Standish	2799
37475	Suttons Bay	2787
37476	Eyers Grove	1079
37477	Marienthal	295
37478	Pigeon Cove	2745
37479	Fishers Landing	995
37480	Jenkintown	731
37481	Pleak	1890
37482	Moultrie	1105
37483	Strahan	2497
37484	Kemp Mill	740
37485	Lawrenceburg	1398
37486	Lawrenceburg	532
37487	Lawrenceburg	154
37488	Laguna Hills	3140
37489	Orange Beach	1988
37490	Packwaukee	1057
37491	Fort Basinger	2909
37492	Meadowbrook	2054
37493	Meadowbrook	195
37494	Meadowbrook	1615
37495	Hygiene	2267
37496	Nathalie	796
37497	Santa Rosa	1832
37498	Santa Rosa	1459
37499	Santa Rosa	1790
37500	Santa Rosa	1247
37501	Santa Rosa	1966
37502	Walnut Park	404
37503	Del Aire	404
37504	Dunsmuir	337
37505	Robe	99
37506	Minford	3256
37507	Saint Donatus	1821
37508	Freeman Spur	123
37509	Rockdale	2122
37510	Rockdale	1498
37511	Rockdale	875
37512	Rockdale	749
37513	Rockdale	2176
37514	McLeansboro	2074
37515	Twining	3173
37516	Roby	2273
37517	Roby	961
37518	Soldier	3000
37519	Soldier	1815
37520	Witco	2964
37521	Hepzibah	615
37522	Markesan	866
37523	Terlingua	1617
37524	Roca	1138
37525	Boulder City	2329
37526	Clendenin	1467
37527	Hazel Crest	761
37528	Andersonville	1396
37529	Andersonville	2122
37530	Andersonville	512
37531	Andersonville	1257
37532	High Hill	736
37533	Richlandtown	2634
37534	Weathers	3211
37535	Weathers	2049
37536	Mount Eagle	393
37537	Linntown	504
37538	Longdale	1404
37539	Michiana	1767
37540	Grandyle Village	1510
37541	Whitten	2387
37542	Devon	251
37543	Devon	90
37544	Devon	1569
37545	Devon	2866
37546	Chinese Camp	2798
37547	Pilger	2153
37548	Marston	1857
37549	Belle Rose	771
37550	Elmore	1730
37551	Elmore	2830
37552	Elmore	808
37553	Devol	1465
37554	Iuka	690
37555	Iuka	336
37556	Iuka	173
37557	Marble Canyon	353
37558	Michiana Shores	2792
37559	West Bristol	2634
37560	Washington Grove	740
37561	Zephyr	633
37562	Osceola Mills	1300
37563	Point Clear	1988
37564	Medina	2645
37565	Medina	91
37566	Medina	3217
37567	Medina	1437
37568	Medina	2917
37569	Medina	2266
37570	Medina	828
37571	Medina	3116
37572	Whiteville	2697
37573	Whiteville	1238
37574	Whiteville	2967
37575	Wheaton	950
37576	Wheaton	2033
37577	Wheaton	740
37578	Wheaton	624
37579	Wheaton	1922
37580	Minong	880
37581	Hannibal	1065
37582	Hannibal	2358
37583	Hannibal	691
37584	Hannibal	1262
37585	Villisca	732
37586	Chilson	389
37587	Minonk	1999
37588	Wickett	1552
37589	Miesville	2864
37590	Fountain Run	2347
37591	Saint Peter	2122
37592	Saint Peter	554
37593	Saint Peter	2090
37594	Saint Peter	2569
37595	Saint Peter	2014
37596	Buzzards Bay	1162
37597	Lansdale	731
37598	Scappoose	1072
37599	Highlands Ranch	2815
37600	Oakes	1091
37601	Valley Creek	987
37602	Glencoe	1163
37603	Glencoe	2490
37604	Glencoe	2386
37605	Glencoe	761
37606	Glencoe	181
37607	Glencoe	580
37608	Glencoe	1199
37609	Glencoe	814
37610	Glencoe	2716
37611	Glencoe	1591
37612	Rock	1798
37613	Rock	1026
37614	Tuxedo	3022
37615	Tuxedo	2651
37616	South Mountain	872
37617	Pierson	1356
37618	Pierson	814
37619	Pierson	3024
37620	Acworth	394
37621	Ê»Ä€inaloa	1488
37622	Clemons	2462
37623	Flag	2664
37624	Petaluma	1790
37625	Oraibi	3161
37626	Castile	1028
37627	Mayersville	2380
37628	Mount Enterprise	2501
37629	Yorba Linda	3140
37630	Elloree	1910
37631	Flat	1462
37632	Flat	872
37633	SeaTac	3217
37634	Ross Fork	2061
37635	Redwood Valley	1053
37636	Moquah	3109
37637	Port Salerno	2212
37638	Ocotillo	153
37639	Juana DÃ­az	846
37640	Columbia Station	845
37641	Fernwood	1168
37642	Fernwood	1484
37643	Fernwood	3083
37644	Kaolin	90
37645	Avonmore	2385
37646	Oakshade	2714
37647	Cheektowaga	1510
37648	Turtle Creek	2632
37649	Trinway	338
37650	Horse Shoe	2651
37651	Wilkesville	848
37652	Tull	1124
37653	West Peoria	2456
37654	Cartersville	81
37655	Cartersville	609
37656	Stacyville	1474
37657	North Perry	1328
37658	Elmont	2940
37659	Elmont	101
37660	West Brooklyn	2098
37661	West Milford	615
37662	Satin	2597
37663	Mineral Springs	494
37664	Mineral Springs	260
37665	Beckwourth	3011
37666	Rock Mills	2683
37667	South Perry	2236
37668	Bennetts Mills	2627
37669	Roseau	877
37670	Brucetown	3152
37671	Moenkopi	353
37672	Alkabo	593
37673	Apgar	1761
37674	Fitchburg	749
37675	Fitchburg	1760
37676	Ryan Park	3036
37677	Pocasset	2493
37678	Pocasset	1162
37679	East Canton	238
37680	June Park	2189
37681	Goff	284
37682	Simpsons	268
37683	Minoa	2979
37684	Hermitage Springs	1527
37685	Shullsburg	2773
37686	Shepherd	332
37687	Shepherd	2073
37688	Shepherd	1020
37689	Shepherd	2733
37690	Tula	2770
37691	Mount Summit	1107
37692	La Marque	2523
37693	Alberhill	3210
37694	Cornell	387
37695	Cornell	660
37696	Cornell	404
37697	Northbranch	174
37698	Coleman	897
37699	Coleman	1166
37700	Coleman	2682
37701	Coleman	1728
37702	Coleman	2987
37703	Coleman	513
37704	Coleman	217
37705	Roxton	893
37706	Minot	1936
37707	Minot	1551
37708	Mineral Hot Springs	384
37709	Kirkland Junction	2495
37710	Minor	987
37711	Roff	133
37712	Otter Creek	1455
37713	Otter Creek	1821
37714	Brinson	2485
37715	Gaithersburg	740
37716	Katherine	829
37717	Vaiden	2225
37718	Pumpkin Center	329
37719	Chaseburg	226
37720	Hawthorn	297
37721	South Vienna	2323
37722	Hatchel	376
37723	Pica	2495
37724	Terrebonne	3246
37725	Terrebonne	569
37726	Muskegon Heights	1485
37727	Agricola	1054
37728	Agricola	1928
37729	National	1497
37730	Mortons Gap	3253
37731	Dalbo	1084
37732	Ignacio	1515
37733	Ignacio	2106
37734	Meadow Creek	2366
37735	Aplington	782
37736	Hansboro	801
37737	Burke	1859
37738	Burke	224
37739	Burke	1868
37740	Burke	2405
37741	Burke	2131
37742	Mariaville Lake	979
37743	Alberton	975
37744	Woodsdale	785
37745	Tanglewilde	2190
37746	Birch River	1347
37747	Cherry Tree	2147
37748	Cherry Tree	1385
37749	Hyndman	2954
37750	Hector	2642
37751	Hector	222
37752	South Walpole	2618
37753	Fort Pierre	2330
37754	Vaughn	1925
37755	Vaughn	1459
37756	Vaughn	2334
37757	Onsted	2586
37758	Brooklyn Heights	3044
37759	Brooklyn Heights	708
37760	Hanover Center	1936
37761	Fairgrove	1486
37762	Peach Creek	2179
37763	Bonifay	2276
37764	China Grove	1083
37765	China Grove	863
37766	McCoole	1497
37767	Dolan Springs	829
37768	Bastian	675
37769	Alfred	1496
37770	Alfred	2803
37771	Alfred	2029
37772	Alfred	850
37773	Bel-Ridge	3196
37774	Briar	1147
37775	Briar	798
37776	Phippsburg	1519
37777	Los Gatos	2198
37778	Bueyeros	3014
37779	Lone Mountain	571
37780	Vollmar	1101
37781	Blue Hills	1712
37782	Umiat	1801
37783	Pledger	2674
37784	San JosÃ©	1334
37785	Shinrock	1511
37786	Orange Park	1532
37787	Walcott	3036
37788	Walcott	1673
37789	Walcott	2239
37790	Brentsville	321
37791	Bransford	2491
37792	Wilbur Park	3196
37793	Foraker	1154
37794	Shenandoah Farms	2314
37795	Swormville	1510
37796	East Conemaugh	3032
37797	Eleva	854
37798	Delmar	2896
37799	Delmar	1887
37800	Delmar	2067
37801	Wood River	1023
37802	Wood River	2054
37803	Conner	601
37804	Kelso	198
37805	Kelso	721
37806	Kelso	2244
37807	Kelso	1661
37808	Mount Nebo	2632
37809	Mount Nebo	1347
37810	Farmersville	1335
37811	Farmersville	1139
37812	Farmersville	735
37813	Farmersville	308
37814	Farmersville	737
37815	Nimmons	1534
37816	South Pass City	968
37817	Bold Spring	2424
37818	Mitchellville	2491
37819	Mitchellville	2539
37820	Mitchellville	1661
37821	Mitchellville	2064
37822	Mineral Wells	1719
37823	Mineral Wells	2337
37824	Grandfalls	1552
37825	Jacksonboro	2109
37826	Hammondsport	2887
37827	Mount Briar	492
37828	Moundsville	2461
37829	Waite Park	1709
37830	Kohls Ranch	2920
37831	Bradford Hills	90
37832	Hidden Valley Lake	1330
37833	Richardsville	2305
37834	Nutter Fort	615
37835	Dry Tavern	561
37836	Arivaca	1247
37837	West Wareham	1936
37838	Padroni	2180
37839	Tecolote	1199
37840	Strasburg	1139
37841	Strasburg	972
37842	Strasburg	1290
37843	Strasburg	3178
37844	Strasburg	191
37845	Strasburg	2740
37846	Strasburg	2552
37847	Jones Creek	1984
37848	Otsego Lake	779
37849	Cardwell	479
37850	Cardwell	1546
37851	Cardwell	996
37852	Kuttawa	143
37853	Rome	1106
37854	Rome	1088
37855	Rome	1604
37856	Rome	416
37857	Rome	266
37858	Rome	3238
37859	Rome	2492
37860	Rome	994
37861	Rome	2456
37862	Rome	2817
37863	Rome	437
37864	Big Cabin	352
37865	Kimmell	3229
37866	Hopkinsville	2312
37867	Hopkinsville	2951
37868	Fennimore	1131
37869	Dravosburg	2632
37870	Davidsonville	2440
37871	Neshkoro	1057
37872	Roma	166
37873	Melvina	2360
37874	Princeville	2209
37875	Princeville	1098
37876	Princeville	2456
37877	Mayhill	344
37878	Caraway	2621
37879	Peekskill	1919
37880	Gayly	2632
37881	Hickory	2194
37882	Hickory	2959
37883	Hickory	2526
37884	Hickory	483
37885	Hickory	1229
37886	Hickory	1071
37887	Highland Mills	3137
37888	Highland Mills	2148
37889	Mendocino	1053
37890	Pine Lake Park	2627
37891	Gold	715
37892	Sleepy Eye	637
37893	Langston	1817
37894	Langston	2182
37895	Westborough	1760
37896	Glenview Manor	997
37897	Golf	761
37898	Golf	3071
37899	White Sulphur Springs	2836
37900	White Sulphur Springs	2842
37901	White Sulphur Springs	2995
37902	South Miami Heights	1705
37903	Schlusser	83
37904	Cliffdell	3268
37905	Mifflinburg	504
37906	Londonderry	2085
37907	Londonderry	1257
37908	Firestone	1101
37909	Carey	716
37910	Carey	2233
37911	Carey	1405
37912	Popejoy	2136
37913	Melmore	2262
37914	Finney	1012
37915	Bagtown	492
37916	Coudersport	715
37917	Roll	900
37918	Roll	2113
37919	Roll	1741
37920	Sandy City	2637
37921	Weidman	1020
37922	Burnt Prairie	1907
37923	Tara Hills	3143
37924	Myersville	3153
37925	Tutu	815
37926	Plumbsock	1889
37927	Owosso	2451
37928	Lozeau	975
37929	East Petersburg	1139
37930	Gwynn	1802
37931	Bacton	90
37932	Buckland	2907
37933	Buckland	3007
37934	Douds	2430
37935	Maustown	785
37936	Hudson Bend	3050
37937	Lefor	236
37938	Kingsdale	1358
37939	Glynn	2578
37940	Glen Echo	740
37941	Wappingers Falls	3031
37942	East Merrimack	869
37943	Deadwood	536
37944	Green Cove Springs	1532
37945	Rutheron	2725
37946	Accokeek	2064
37947	Van Bibber Lake	2752
37948	Arkdale	1295
37949	Mashpee Neck	1162
37950	Blasdell	1510
37951	Talco	1667
37952	Running Springs	721
37953	Texon	2964
37954	South Pasadena	2785
37955	South Pasadena	404
37956	South Connellsville	2574
37957	Colbert	2058
37958	Colbert	70
37959	Colbert	1431
37960	Bartolo	1676
37961	Arock	1310
37962	Greenfield	2924
37963	Greenfield	91
37964	Greenfield	1404
37965	Greenfield	904
37966	Greenfield	2460
37967	Greenfield	1967
37968	Greenfield	412
37969	Greenfield	1384
37970	Greenfield	564
37971	Greenfield	2955
37972	Greenfield	1499
37973	Vergas	2763
37974	Joppatowne	2959
37975	Tupman	263
37976	Cement	307
37977	Mechanic Falls	2399
37978	Speaks	978
37979	Pine Hills	319
37980	Pine Hills	3141
37981	Barnsdall	1154
37982	Max Meadows	2404
37983	Lisco	2761
37984	Winter Gardens	2381
37985	Valley Grove	2779
37986	Almena	3033
37987	Almena	2315
37988	Melbourne Beach	2189
37989	Wellsboro	2151
37990	Wellsboro	2792
37991	West Concord	95
37992	West Concord	953
37993	Buras	2473
37994	Lily Lake	322
37995	Lake Waukomis	1851
37996	North Potomac	740
37997	Pine Island Ridge	2729
37998	Santa BÃ¡rbara Comunidad	396
37999	Redwater	826
38000	Redwater	1932
38001	Mancelona	1855
38002	Pike	1028
38003	Pike	171
38004	Pike	1367
38005	Hawthorn Woods	1326
38006	Bonnetsville	286
38007	Carteret	94
38008	Haskell	1179
38009	Haskell	104
38010	Haskell	2731
38011	Noyes	2857
38012	Gore	3152
38013	Gore	1140
38014	Forest Knolls	1515
38015	Safety Harbor	2785
38016	Black Fork	2249
38017	Humnoke	1585
38018	Frenchglen	212
38019	Hyde Park	3031
38020	Hyde Park	448
38021	Hyde Park	2385
38022	Hyde Park	2709
38023	Pottery Addition	1006
38024	Howardville	1857
38025	Lebanon Church	2740
38026	Collinwood	2601
38027	Walkerville	2026
38028	Walkerville	3166
38029	Ames Lake	3217
38030	Smith Mills	597
38031	Bassett	1115
38032	Bassett	938
38033	Bassett	698
38034	Bassett	404
38035	Bassett	839
38036	Bassett	442
38037	Bassett	826
38038	Naruna	176
38039	Gibsonia	2632
38040	Olive	210
38041	Fort Klamath	759
38042	Indian River City	2189
38043	Majestic	1172
38044	La Feria	1832
38045	El Ojo Comunidad	2086
38046	Dot Lake	1561
38047	Velma	2848
38048	Velma	883
38049	El Ojo	2086
38050	North Muskegon	1485
38051	Misquamicut	478
38052	MÄkaha Valley	1878
38053	East Sparta	238
38054	Flordell Hills	3196
38055	Camp Verde	271
38056	Camp Verde	2495
38057	La Riviera	2688
38058	Bantry	3191
38059	Heckville	300
38060	Pima	2013
38061	Rose	839
38062	Rose	1884
38063	Goss	2357
38064	Goss	688
38065	Waldron	1851
38066	Waldron	2249
38067	Waldron	2930
38068	Waldron	304
38069	Waldron	188
38070	Waldron	1794
38071	Rosa	2420
38072	Warm Mineral Springs	1236
38073	Cookville	1667
38074	East Northport	940
38075	Canal Point	3071
38076	Lindside	2353
38077	Lake Lakengren	241
38078	KapaÊ»a	2209
38079	Ross	1323
38080	Ross	1515
38081	Ross	2640
38082	Ross	354
38083	Ross	877
38084	Ross	702
38085	Ross	785
38086	Allgood	2420
38087	Ephesus	936
38088	La Mirada	404
38089	Candelaria Comunidad	1334
38090	Calhoun	3065
38091	Calhoun	879
38092	Calhoun	1110
38093	Calhoun	3254
38094	Calhoun	2284
38095	Calhoun	1670
38096	Calhoun	243
38097	Flom	529
38098	Lynwood Hills	2381
38099	Mobile	1301
38100	Criner	1454
38101	Silverstreet	1657
38102	Carter Lake	3016
38103	Evington	176
38104	East Bend	1495
38105	Guide Rock	2596
38106	Big Piney	2412
38107	Talpa	897
38108	Talpa	1930
38109	Calverton	3224
38110	Calverton	940
38111	Calverton	2064
38112	North Liberty	1263
38113	North Liberty	3102
38114	Visalia	308
38115	Visalia	2397
38116	Albers	2898
38117	Lavina	2966
38118	Saint Paul	677
38119	Saint Paul	262
38120	Saint Paul	2532
38121	Saint Paul	2487
38122	Saint Paul	2049
38123	Saint Paul	1335
38124	Saint Paul	654
38125	Saint Paul	2095
38126	Saint Paul	603
38127	Saint Paul	1082
38128	Saint Paul	1146
38129	Saint Paul	1974
38130	John Day	1117
38131	Williams Bay	1094
38132	Ardenvoir	276
38133	Rockledge	1163
38134	Rockledge	2189
38135	Rockledge	731
38136	Lackmans	1272
38137	Scholle	1625
38138	Russiaville	257
38139	Tigerton	2827
38140	Anmoore	615
38141	North Philipsburg	393
38142	Kilkare Woods	1556
38143	Denali Park	781
38144	Bear Valley Springs	263
38145	Frankewing	1365
38146	Vanzant	2817
38147	Schiller Park	761
38148	Gove	1338
38149	Bethany Beach	1887
38150	Combined Locks	2266
38151	Albert	1886
38152	Albert	307
38153	Albert	613
38154	Youngwood	2385
38155	Roachdale	2752
38156	Cordaville	1760
38157	Beavertown	2163
38158	Stone Park	761
38159	Duelm	1644
38160	Pacolet	3162
38161	Bunnlevel	2702
38162	Healdton	2560
38163	Spring Gap	1497
38164	Rote	2902
38165	Hidalgo	1353
38166	Hidalgo	3043
38167	Gibson City	232
38168	Talmo	1829
38169	Monongah	686
38170	Skamokawa	2445
38171	Pink	2032
38172	Pine	2920
38173	Pine	809
38174	Pine	1471
38175	Reynoldsburg	2141
38176	Sugarmill Woods	799
38177	Truman	2211
38178	Beattie	2471
38179	Fort Thompson	2685
38180	Stagecoach	142
38181	Stagecoach	734
38182	Kalama	198
38183	Tekamah	1390
38184	Patmos	1586
38185	Roosville	1185
38186	Middle Water	3263
38187	Telephone	630
38188	Uyak	3101
38189	Ann Arbor	2281
38190	Kemah	2523
38191	West Glendive	2996
38192	Lehigh	331
38193	Lehigh	681
38194	Lehigh	2420
38195	Lehigh	2590
38196	McConnelsville	117
38197	Rowe	1039
38198	North Rose	2599
38199	Taos Ski Valley	1930
38200	Stratmoor	3228
38201	Sandia Heights	405
38202	Orfordville	837
38203	Millerville	1533
38204	Millerville	2819
38205	Notiechtown	1140
38206	Weirsdale	682
38207	Parshall	1151
38208	Parshall	354
38209	Fountain Springs	2826
38210	De Borgia	975
38211	La Russell	3044
38212	Greenbush	1936
38213	Greenbush	877
38214	Greenbush	3027
38215	Greenbush	915
38216	Grand Portage	762
38217	Hazelton	155
38218	Hazelton	972
38219	Hazelton	2024
38220	Crow River	2695
38221	Pipe	2090
38222	Munroe Falls	1725
38223	Wahkon	2200
38224	Twin Falls	1402
38225	Grasston	1158
38226	Berryville	2652
38227	Berryville	1215
38228	Berryville	2223
38229	Kalaoa	1488
38230	De Kalb Junction	1307
38231	Fairchild	1710
38232	Glasgow Village	3196
38233	West Thumb	1391
38234	Fellows	263
38235	San Antonio Comunidad	2414
38236	Camilla	1475
38237	Sully	3039
38238	Warren City	2371
38239	Kill Devil Hills	842
38240	Velva	3191
38241	Maple Hill	888
38242	Maple Hill	451
38243	Loco Hills	348
38244	Kasilof	1806
38245	Lake Winnebago	3178
38246	Mayflower	333
38247	Lisle	950
38248	Lisle	1153
38249	Naper	72
38250	Doctors Inlet	1532
38251	Roseto	314
38252	Lake Sumner	1505
38253	Dockton	3217
38254	Fort Pierce	1577
38255	Ivan	2847
38256	Ivan	524
38257	Estelle	1005
38258	Jefferson City	985
38259	Jefferson City	722
38260	Jefferson City	996
38261	North Judson	1655
38262	Lineville	2608
38263	Lineville	1533
38264	Hertford	2647
38265	Genola	164
38266	Genola	705
38267	Belvue	2033
38268	Poplar Grove	249
38269	Poplar Grove	1559
38270	Waskom	619
38271	Chapman	1333
38272	Chapman	314
38273	Chapman	1316
38274	Chapman	787
38275	Chapman	1557
38276	Maquoketa	1821
38277	The Meadows	1236
38278	Holton	1815
38279	Holton	1485
38280	Holton	797
38281	Bethlehem	3134
38282	Bethlehem	314
38283	Bethlehem	2718
38284	Bethlehem	2894
38285	Bethlehem	2779
38286	Bethlehem	2403
38287	Platner	474
38288	Los Ranchos de Albuquerque	405
38289	New Goshen	3110
38290	McClellanville	905
38291	Aroma Park	2870
38292	Winner	922
38293	Wickliffe	1875
38294	Wickliffe	1328
38295	Bonanza	759
38296	Bonanza	384
38297	Bonanza	1443
38298	Bonanza	3128
38299	Bonanza	1943
38300	Serenada	121
38301	Forest Hill Village	1761
38302	Broadview Heights	708
38303	Sugar Grove	2410
38304	Sugar Grove	3213
38305	Sugar Grove	406
38306	Sugar Grove	2307
38307	Sugar Grove	322
38308	Sugar Grove	784
38309	Piru	3221
38310	Oswayo	715
38311	Metcalf	2192
38312	Metcalf	3029
38313	Baxterville	890
38314	San Leandro	1556
38315	Adell	915
38316	Walnut Ridge	539
38317	Guadalupe	3086
38318	Guadalupe	2800
38319	Guadalupe	2107
38320	Glendora	2977
38321	Glendora	404
38322	Glendora	3147
38323	Hazel Hurst	1217
38324	Resaca	879
38325	Poydras	2298
38326	Kernersville	1980
38327	Bel Alton	335
38328	Pavilion	2257
38329	Tunkhannock	1029
38330	Fishersville	1261
38331	Del Norte	2480
38332	Progreso Lakes	1353
38333	Covelo	1053
38334	Niagara Falls	2910
38335	Ormond-by-the-Sea	814
38336	Davant	2473
38337	Cortland	2946
38338	Cortland	1755
38339	Cortland	1480
38340	Cortland	3206
38341	Mazama	1874
38342	Hasty	1998
38343	Hasty	2291
38344	Maple Heights	708
38345	Charco	1247
38346	Charco	2583
38347	Factoryville	1029
38348	Lawley	1582
38349	Lake Arrowhead	721
38350	Lake Arrowhead	850
38351	Mooring	1626
38352	Hasse	2511
38353	Lawler	2300
38354	Lawler	698
38355	Saint Johnsville	724
38356	Gooding	1490
38357	Kniman	3041
38358	West Shiloh	1647
38359	Ballentine	1675
38360	Whites Landing	1340
38361	Boynton	2731
38362	Marydel	2894
38363	Miami Beach	1705
38364	Hinckley	2152
38365	Hinckley	1755
38366	Hinckley	130
38367	Hinckley	1358
38368	New Ross	725
38369	Adena	1006
38370	Pinedale	937
38371	Pinedale	2412
38372	Pinedale	3161
38373	Pinedale	3150
38374	Whitwell	679
38375	Round Grove	534
38376	Talty	2361
38377	Narrowsburg	1946
38378	Pueblito del Carmen Comunidad	2413
38379	Shorewood Hills	749
38380	Loachapoka	2102
38381	Four Points Colonia	817
38382	Chambersburg	2135
38383	Chambersburg	3138
38384	Strong	2963
38385	Strong	2355
38386	Strong	501
38387	Pawhuska	1154
38388	Lake Meade	1298
38389	Santa Paula	3221
38390	Metaline	1031
38391	Port LaBelle	2017
38392	Francitas	1823
38393	West Dundee	322
38394	Pennsboro	1367
38395	Sand Draw	968
38396	Old Westbury	101
38397	Mount Rainier	2064
38398	Fontana Village	2012
38399	Bethel Park	2632
38400	Joppa	2660
38401	Joppa	2288
38402	Joppa	2959
38403	Oretta	1727
38404	Jersey	1694
38405	Jersey	1548
38406	Yellville	684
38407	Homerville	1746
38408	Worthington Hills	997
38409	Rawlings	1497
38410	Kings Mills	2312
38411	Clifton Hill	2681
38412	Evarts	1898
38413	Great Falls	89
38414	Great Falls	2334
38415	Great Falls	740
38416	Great Falls	2405
38417	Harrogate	571
38418	Pinckard	674
38419	Callimont	131
38420	Caseville	342
38421	Santos	682
38422	Allensville	2650
38423	Allensville	2474
38424	Allensville	848
38425	Herricks	101
38426	Mabelvale	375
38427	Laketon	1245
38428	Laketon	3073
38429	Scenic	907
38430	Dixie Inn	2594
38431	Naches	3268
38432	Dawsonville	740
38433	Dawsonville	2997
38434	Fowlerville	389
38435	Fowlerville	386
38436	Fort Clark Springs	242
38437	Port Kent	2742
38438	Bannertown	2707
38439	Stockham	2078
38440	Mexican Hat	2932
38441	Winnie	1343
38442	Lamont	1464
38443	Lamont	2812
38444	Lamont	1119
38445	Lamont	970
38446	Lamont	999
38447	Lamont	3036
38448	Lamont	263
38449	Lamont	1565
38450	Lamont	3076
38451	Sterrett	195
38452	Lamoni	2484
38453	Columbiaville	3188
38454	South Tunnel	2491
38455	Malverne Park Oaks	101
38456	Westfield Center	828
38457	Union City	1556
38458	Union City	2636
38459	Union City	2715
38460	Union City	346
38461	Union City	1512
38462	Union City	2587
38463	Union City	2679
38464	Union City	1567
38465	Union City	1368
38466	Union City	2046
38467	Lamona	1195
38468	Plessis	995
38469	Gilroy	2198
38470	Sunnyslope	3210
38471	Sunnyslope	1048
38472	Aubrey	2452
38473	Aubrey	2104
38474	Bluff Park	987
38475	Albrightsville	3038
38476	Phoenix	2473
38477	Phoenix	761
38478	Phoenix	3086
38479	Phoenix	1808
38480	Phoenix	3078
38481	Phoenix	1262
38482	Chitina	3172
38483	Killian	385
38484	Point Reyes Station	1515
38485	Berger	2130
38486	Orocovis Zona Urbana	2783
38487	Ivey	183
38488	La Vale	1497
38489	Bergen	1814
38490	Bergen	2257
38491	Bergen	3191
38492	San Quentin	1515
38493	Homeland Park	1397
38494	Isleta	405
38495	South Platte	992
38496	Webber	174
38497	Hawk Run	1300
38498	New Milton	2782
38499	Pencer	877
38500	Ranchester	1225
38501	River Hills	904
38502	ManatÃ­	1580
38503	Lake in the Hills	3192
38504	Ducktown	2541
38505	Ducktown	1981
38506	Moon Run	2632
38507	Austintown	2839
38508	Saint Augustine South	223
38509	Blandon	362
38510	Goodlow Park	881
38511	Yauco Zona Urbana	545
38512	Imbler	495
38513	Talkeetna	150
38514	Agnos	2716
38515	Grand Coulee	1125
38516	Bahama	1688
38517	Taylors Creek	2075
38518	Mendenhall	1787
38519	Parryville	3038
38520	Coketon	1092
38521	Isle of Wight	1595
38522	Dorcas	1127
38523	Somers Point	2617
38524	Covert	2433
38525	Covert	2202
38526	Hickory Creek	2452
38527	South Duxbury	1936
38528	Basalt	672
38529	Basalt	2974
38530	Koyukuk	1462
38531	Mount Andrew	288
38532	Ellettsville	2345
38533	Plainville	1295
38534	Plainville	1291
38535	Plainville	435
38536	Plainville	2075
38537	Plainville	879
38538	Plainville	2982
38539	Herkimer	2471
38540	Herkimer	1597
38541	Tahlequah	3217
38542	Tahlequah	430
38543	Moseley	2549
38544	Munich	1720
38545	Ohiopyle	2574
38546	Spanaway	1925
38547	Festus	993
38548	Wounded Knee	1774
38549	James Town	3093
38550	Kerhonkson	1952
38551	Arnot	2151
38552	Granite Bay	2289
38553	Rockford Bay	3087
38554	Arnett	824
38555	Arnett	872
38556	Topanga	404
38557	Oildale	263
38558	Saugus	2745
38559	Saugus	404
38560	Cohutta	3049
38561	Hammond	750
38562	Hammond	1307
38563	Hammond	1323
38564	Hammond	2988
38565	Hammond	2558
38566	Hammond	813
38567	Hammond	169
38568	Hammond	1995
38569	Hammond	649
38570	Hammond	1569
38571	Sabillasville	3153
38572	Farmingdale	101
38573	Farmingdale	278
38574	Farmingdale	1500
38575	Farmingdale	907
38576	Huntleigh	3196
38577	Chesuncook	1852
38578	Whitetail	1502
38579	New Suffolk	940
38580	Pooler	1631
38581	Aspers	1298
38582	Cactus Forest	1914
38583	New Union	768
38584	Level Green	2385
38585	Cinnaminson	2841
38586	Dallastown	853
38587	Lake Catherine	1326
38588	Lake Crystal	1444
38589	Naguabo	1619
38590	Pierre	3052
38591	Sumac	2196
38592	Eskridge	888
38593	Charlo	1322
38594	Perote	1441
38595	Naselle	1306
38596	Spurger	2873
38597	Dennard	2431
38598	Jesup	2613
38599	Jesup	2812
38600	Squire	2379
38601	Cave-in-Rock	2391
38602	Sumas	1983
38603	Burien	3217
38604	Old Tappan	1572
38605	CoquÃ­	2259
38606	Klemme	1965
38607	San Angelo	3226
38608	Flat Rock	2606
38609	Flat Rock	2262
38610	Flat Rock	1410
38611	Flat Rock	2651
38612	Flat Rock	1817
38613	Flat Rock	188
38614	Ridgemark	706
38615	Fairburn	2715
38616	Fairburn	3059
38617	Stockport	117
38618	Stockport	2430
38619	Bulls Gap	2168
38620	Linndale	708
38621	Mound Bayou	1565
38622	Fairbury	990
38623	Fairbury	387
38624	Vergennes	1825
38625	Vergennes	3008
38626	Santo Domingo Pueblo	971
38627	Lignum	656
38628	Evant	872
38629	Mallard	3202
38630	Evans	1074
38631	Evans	225
38632	Evans	1101
38633	Evans	657
38634	Evans	1820
38635	Evans	2669
38636	Beaverton	465
38637	Beaverton	3168
38638	Beaverton	892
38639	Beaverton	790
38640	Santee	1910
38641	Santee	589
38642	Santee	2381
38643	Gerrard	2480
38644	Hollister	753
38645	Hollister	2639
38646	Hollister	1402
38647	Hollister	1555
38648	Hollister	706
38649	Hollister	795
38650	Bantam	1990
38651	Catalina	1247
38652	Lake Itasca	3199
38653	Tenakee Springs	207
38654	Homosassa Springs	799
38655	Sand Springs	3001
38656	Sand Springs	258
38657	Sand Springs	2805
38658	Sand Springs	2906
38659	Panorama Heights	3140
38660	Copper Hill	2920
38661	Good Hart	2519
38662	Meade	1664
38663	King Lake	2824
38664	Addyston	2075
38665	Pleasureville	193
38666	Pleasureville	853
38667	Timken	2515
38668	Brooktrails	1053
38669	Paicines	706
38670	Craig Beach	2839
38671	Scotland Neck	795
38672	Window Rock	932
38673	Burtons Bridge	3192
38674	Holly Hill	1910
38675	Holly Hill	814
38676	False Pass	1145
38677	Dalkeith	2401
38678	Richburg	1496
38679	Richburg	89
38680	Brussels	1280
38681	Hutsonville	1410
38682	College City	539
38683	College City	1803
38684	Farmers	864
38685	Wenatchee	276
38686	Carolina Zona Urbana	2889
38687	Channel Lake	1326
38688	Tiptop	1776
38689	Midlothian	761
38690	Midlothian	1497
38691	Midlothian	1615
38692	Midlothian	823
38693	Mount Upton	650
38694	Tipton	64
38695	Tipton	804
38696	Tipton	1555
38697	Tipton	2264
38698	Tipton	1476
38699	Tipton	308
38700	Tipton	1683
38701	Tieton	3268
38702	Buena Park	3140
38703	Seabrook Beach	2085
38704	Rayle	447
38705	Sistersville	2872
38706	Ansley	3064
38707	Ansley	1827
38708	Ansley	1966
38709	Ansley	1175
38710	Lake Katrine	1952
38711	PÄpaÊ»aloa	1488
38712	Stroud	1342
38713	Stroud	1188
38714	Miamitown	2075
38715	Dos Rios	1053
38716	Luyando	2015
38717	Belcamp	2959
38718	Delta Junction	1561
38719	Ridgely	2894
38720	Ridgely	1851
38721	Ridgely	1324
38722	North Roby	961
38723	Wilmington Island	1631
38724	Knierim	1277
38725	Coal Run	489
38726	Swearingen	1440
38727	North Beach Haven	2627
38728	Ponce de Leon	2276
38729	Ivor	1015
38730	Audubon Park	997
38731	Audubon Park	2977
38732	Hammonton	2617
38733	Westtown	90
38734	Ciales	1700
38735	Saint Bethlehem	726
38736	Coal Grove	537
38737	Coleville	3160
38738	Bergoo	2589
38739	Oberon	2400
38740	Lodge	2109
38741	Lodge	1995
38742	Jeffrey	246
38743	South Lancaster	1760
38744	Charlottesville	2205
38745	White Horse Beach	1936
38746	Rural Retreat	2404
38747	Forest Center	1329
38748	Wood Heights	63
38749	Kohrville	145
38750	New Caney	734
38751	Bound Brook	129
38752	Erwin	2702
38753	Erwin	1388
38754	Erwin	1707
38755	Evaro	3149
38756	Cross Keys	3196
38757	Cross Keys	2626
38758	Rayne	1612
38759	North Creek	2302
38760	North Creek	2756
38761	Hooppole	1109
38762	Evart	2159
38763	Pathfork	1898
38764	Rancho Mirage	3210
38765	Klamath Agency	759
38766	Angier	2702
38767	Pepin	1711
38768	Dearborn Heights	2606
38769	New Trenton	2122
38770	Suring	2776
38771	Schram City	735
38772	Jakes Corner	2920
38773	Rose Lake	3087
38774	Owensboro	437
38775	Tovey	2949
38776	Moselle	3020
38777	Glendon	326
38778	Glendon	314
38779	Vallejo	2867
38780	Pen Mar	2135
38781	Arden on the Severn	2440
38782	Wormleysburg	83
38783	Palmer Lake	3228
38784	Cordele	548
38785	Coronaca	3075
38786	Mound Valley	1954
38787	Kelford	1681
38788	Macedon	2599
38789	Cordell	1874
38790	Cordell	757
38791	Buchanan Lake Village	1738
38792	Sunrise Manor	2329
38793	Lithopolis	406
38794	Shafer	2021
38795	Corwin	2910
38796	Corwin	2312
38797	Corwin	1794
38798	Pierrepont Manor	995
38799	Lake Panorama	3257
38800	Boyden	2926
38801	Highwood	1326
38802	Highwood	3219
38803	Ucolo	2932
38804	Burkesville	80
38805	Hugoton	659
38806	Marbleton	2412
38807	Lone Wolf	1992
38808	Synarep	1874
38809	Volga	1942
38810	Volga	109
38811	Oconto Falls	2776
38812	Epsie	210
38813	Catawba Island	1730
38814	Hemingford	1653
38815	Gillette	177
38816	Gillette	2877
38817	Indios Comunidad	957
38818	Rio Creek	1566
38819	North Brentwood	2064
38820	Taopi	1432
38821	Fort Defiance	932
38822	Leith	1130
38823	Leith	2574
38824	Black Butte Ranch	3246
38825	Casky	2951
38826	Woodstown	2628
38827	Tanque Verde	1247
38828	Mauckport	618
38829	Fortsonia	1877
38830	Maupin	906
38831	New Effington	3241
38832	Damar	2982
38833	Yulee	100
38834	Long Valley	2877
38835	Long Valley	1813
38836	Western Lake	931
38837	Cumby	3252
38838	Lindstrom	2021
38839	Hebron	2452
38840	Hebron	3009
38841	Hebron	251
38842	Hebron	2794
38843	Hebron	2067
38844	Hebron	994
38845	Hebron	1493
38846	Hebron	3192
38847	Hebron	3255
38848	Hebron	2498
38849	Hebron	1379
38850	Flaxton	926
38851	Center Junction	3019
38852	Van Vleck	2674
38853	Coronado	2381
38854	Shannondale	991
38855	Red Level	2575
38856	Worton	217
38857	Shell Knob	624
38858	Whitetop	3260
38859	Desert Shores	153
38860	Kaweah	308
38861	Hannover	2342
38862	South Gate	404
38863	Von Ormy	1083
38864	Gisela	2920
38865	Arpin	2339
38866	WaikÄne	1878
38867	Langford	2469
38868	Langford	217
38869	Upalco	2428
38870	Edisto Island	905
38871	Fernando	2386
38872	Rumson	278
38873	Bear Valley	1937
38874	Damiansville	2898
38875	Raymore	3178
38876	Cokato	2291
38877	Brinkhaven	588
38878	Lynden	1983
38879	High Point	3274
38880	High Point	710
38881	High Point	2264
38882	Iliamna	2011
38883	Van Zandt	1983
38884	Richmond Beach	3217
38885	Rhome	1147
38886	Artesia	404
38887	Artesia	2013
38888	Artesia	348
38889	Artesia	3066
38890	Collinsville	1115
38891	Collinsville	2054
38892	Collinsville	3261
38893	Collinsville	2906
38894	Collinsville	1712
38895	Collinsville	607
38896	Collinsville	1752
38897	Collinsville	785
38898	Baker City	1471
38899	Glasgow	772
38900	Glasgow	152
38901	Glasgow	259
38902	Glasgow	1001
38903	Glasgow	2243
38904	Glasgow	3168
38905	Glasgow	2563
38906	Glasgow	1467
38907	Glasgow	2935
38908	Glasgow	1883
38909	Kingstown	2701
38910	Kingstown	857
38911	Hills and Dales	238
38912	Hills and Dales	997
38913	East Burke	2765
38914	Perry	1028
38915	Perry	1847
38916	Perry	2451
38917	Perry	1421
38918	Perry	2597
38919	Perry	2035
38920	Perry	522
38921	Perry	998
38922	Perry	646
38923	Perry	2116
38924	Perry	3230
38925	Perry	1578
38926	Perry	1170
38927	Perry	1064
38928	Perry	1328
38929	Long Pond	130
38930	Silio	1625
38931	Glenarden	2064
38932	Whitinsville	1760
38933	Platte	3096
38934	Perth	801
38935	Perth	2492
38936	Bondad	2106
38937	Swede Heaven	99
38938	South Toms River	2627
38939	Montvale	1572
38940	Montvale	2952
38941	Bruning	3009
38942	Shooks	546
38943	Woolwine	889
38944	Imogene	967
38945	Spearsville	509
38946	Dixfield	1703
38947	Haylow	1400
38948	Pirtleville	3232
38949	Penzance	3161
38950	Gig Harbor	1925
38951	Bridge	772
38952	Bridge	2382
38953	Dubois	968
38954	Dubois	2328
38955	Dubois	1854
38956	Antrim	2151
38957	Antrim	1635
38958	Antrim	869
38959	Antrim	3048
38960	Babb	1740
38961	Heathrow	1627
38962	Clements	1250
38963	Clements	934
38964	Kanaranzi	838
38965	Dufur	906
38966	Farmland	2679
38967	Prathersville	1541
38968	Crimora	1261
38969	Barnegat Light	2627
38970	Keams Canyon	3161
38971	Neavitt	1160
38972	Hamill	922
38973	Fultondale	987
38974	Mayer	2495
38975	Mayer	1037
38976	Fort Stockton	1693
38977	Palmas Comunidad	2659
38978	Fountain City	2686
38979	Fountain City	2600
38980	Meldrum	1959
38981	Shepardsville	3110
38982	Strykersville	1028
38983	Rawls Springs	1934
38984	Hall Summit	2234
38985	Del Mar Heights	1832
38986	Santo Domingo Comunidad	1030
38987	Buddtown	2841
38988	Dover	1501
38989	Dover	748
38990	Dover	2885
38991	Dover	853
38992	Dover	135
38993	Dover	2877
38994	Dover	2642
38995	Dover	2552
38996	Dover	868
38997	Dover	2774
38998	Dover	1099
38999	Dover	2940
39000	Dover	623
39001	Dover	216
39002	Dover	1258
39003	Dover	424
39004	Dover	2618
39005	Dover	1704
39006	Culmerville	2632
39007	Dames Quarter	128
39008	Hinkley	721
39009	Momence	2870
39010	Pennock	2457
39011	San Francisco	1902
39012	Big Bar	317
39013	Wautoma	1210
39014	Maytown	987
39015	Maytown	1139
39016	Maytown	814
39017	Twin Bridges	2043
39018	Barceloneta	1908
39019	Casey	2319
39020	Casey	3257
39021	Castle Pines	2815
39022	Rocheport	250
39023	Casselberry	1627
39024	Rye Brook	1919
39025	Savageville	3027
39026	Big Bay	1058
39027	Flowersville	1547
39028	Gotebo	1992
39029	Mizpah	296
39030	Mizpah	3060
39031	Carlos	1497
39032	Carlos	847
39033	Carlos	2819
39034	Bayne	3217
39035	Lake Village	1231
39036	Lake Village	629
39037	Corcovado Comunidad	2992
39038	Ellenburg Depot	2895
39039	Colleyville	3084
39040	Cornwall	1493
39041	Yarbo	470
39042	Redmond	3217
39043	Redmond	3209
39044	Redmond	3246
39045	Shandon	2207
39046	Shandon	785
39047	Piercy	1053
39048	Aboite	443
39049	Macy	2191
39050	Macy	667
39051	Trommald	704
39052	Traverse	554
39053	Scobeyville	278
39054	Keeline	3051
39055	Blue Bell	731
39056	Pierce	1042
39057	Pierce	2369
39058	Pierce	1101
39059	Pierce	3047
39060	Pierce	1927
39061	Pierce	3198
39062	Tomball	145
39063	Shiro	847
39064	Harper Woods	2606
39065	George	1125
39066	George	139
39067	George	312
39068	McMinnville	2304
39069	McMinnville	363
39070	Providence Forge	2788
39071	Onycha	2575
39072	Dubuque	1931
39073	Kilbourne	1894
39074	Kilbourne	2806
39075	Kilbourne	746
39076	Bach	342
39077	East Millinocket	392
39078	Chippewa Falls	660
39079	Busch	2223
39080	Yah-ta-hey	3150
39081	Highland Hills	950
39082	Highland Hills	708
39083	Rocky	757
39084	Silva	2611
39085	Anaheim	3140
39086	Tehuacana	2790
39087	Magwalt	1736
39088	Verdel	589
39089	Delaware City	2563
39090	Verden	2493
39091	Livia	437
39092	Benkelman	1096
39093	Shell Point	439
39094	Margie	296
39095	Toyah	1781
39096	Allenfarm	1626
39097	Mack	2075
39098	Mack	2167
39099	Cornland	2181
39100	Watrous	3190
39101	Dell City	1438
39102	Leslie	287
39103	Leslie	576
39104	Leslie	3063
39105	Leslie	2130
39106	Leslie	512
39107	Casco	1566
39108	Casco	79
39109	North Fork	2891
39110	North Fork	108
39111	Germantown Hills	1999
39112	Front Royal	2314
39113	Malvado	912
39114	Hendrum	529
39115	Saegertown	1417
39116	Rhodes	2462
39117	Rhodes	790
39118	Joliet	875
39119	Joliet	3035
39120	Toomsboro	183
39121	Lino Lakes	1260
39122	Mount Zion	2440
39123	Mount Zion	2430
39124	Mount Zion	1416
39125	Mount Zion	3158
39126	Mount Zion	2230
39127	Hostetter	2385
39128	Linneus	946
39129	Petersham	1760
39130	Wakulla	1976
39131	Wakulla	2256
39132	Havre	453
39133	Parcelas Viejas Borinquen Comunidad	1856
39134	Naples	2878
39135	Naples	79
39136	Naples	1443
39137	Naples	357
39138	Naples	2243
39139	Naples	832
39140	Naples	2022
39141	Naples	2322
39142	Ratliff	100
39143	Tribune	803
39144	Crooksville	1845
39145	Eureka Springs	2223
39146	Colmar Manor	2064
39147	Wood Lake	2016
39148	Wood Lake	2635
39149	Pierce City	534
39150	Bevington	2051
39151	Gran Quivira	1625
39152	Optima	2272
39153	Romoland	3210
39154	Pullman	1464
39155	Pullman	714
39156	Pullman	1367
39157	Busby	2724
39158	Clarington	2358
39159	Arredondo	132
39160	Archie	3248
39161	Archie	3178
39162	Waurika	986
39163	Godwin	76
39164	Goodhue	1997
39165	Redway	319
39166	Leopolis	2827
39167	Optimo	3190
39168	Smartsville	1775
39169	Windemere	3050
39170	Raeville	253
39171	Brinckerhoff	3031
39172	Casar	857
39173	Chena Hot Springs	209
39174	Gilt Edge	1684
39175	Sperryville	1248
39176	Turtle River	546
39177	Churchville	2634
39178	Churchville	2959
39179	Churchville	1261
39180	Churchville	2344
39181	Clinchco	550
39182	Goudeau	1975
39183	West Miami	1705
39184	Machovec	327
39185	Jacumba Hot Springs	2381
39186	La Ward	1823
39187	Monida	2331
39188	Panacea	1976
39189	Barber	157
39190	Barber	2966
39191	Barber	1160
39192	Charters	2532
39193	Walnuttown	362
39194	Vandiver	2945
39195	Vandiver	195
39196	Arabia	2016
39197	Arabia	537
39198	Arbela	2727
39199	Sadorus	519
39200	Dove Creek	642
39201	Drip Rock	1812
39202	Felts Mills	995
39203	Indian Wells	3210
39204	Indian Wells	3161
39205	Cahone	642
39206	Sawgrass	223
39207	Rock Point	335
39208	Rock Point	932
39209	Highland Home	2489
39210	Eliasville	214
39211	Dumont	2958
39212	Dumont	1572
39213	Dumont	782
39214	Dumont	1922
39215	Laureles	1832
39216	Catron	1857
39217	Locustdale	1079
39218	Portsmouth	3212
39219	Portsmouth	2085
39220	Portsmouth	3256
39221	Portsmouth	187
39222	Carlin	108
39223	Aguas Claras Comunidad	1308
39224	Baxter Estates	101
39225	Palm Beach Gardens	3071
39226	Thrall	121
39227	Stephen Creek	2733
39228	Potomac	2036
39229	Potomac	740
39230	Rebecca	2536
39231	Chandalar	1462
39232	West Chatham	1162
39233	Lyndon	997
39234	Lyndon	1156
39235	Lyndon	1718
39236	Lyndon	2979
39237	Tarkio	975
39238	Tarkio	3258
39239	Skiatook	1154
39240	Mayna	3248
39241	Maple Ridge	2839
39242	Elk Falls	163
39243	Monitor	276
39244	Burmah	201
39245	Chaplin	274
39246	Lake Waccamaw	1238
39247	East Lake	842
39248	East Lake	2162
39249	East Lake	2300
39250	East Lake	2785
39251	Virginville	362
39252	Ellabell	71
39253	Ancor	2075
39254	Gravity	1060
39255	Indian Shores	2785
39256	Frierson	1311
39257	Cherryplain	2828
39258	Walnut Hill	2667
39259	Walnut Hill	1948
39260	Walnut Hill	690
39261	Britt	3195
39262	Britt	1965
39263	Seaford	849
39264	Seaford	1887
39265	Seaford	101
39266	Estherville	2518
39267	Summit Corners	2426
39268	Letona	1905
39269	Berkey	2942
39270	Island Park	101
39271	Island Park	970
39272	Bryson	2502
39273	Patsville	108
39274	Volin	836
39275	Pendroy	1393
39276	Valeria	3039
39277	Valeria	203
39278	Crivitz	1728
39279	Belle Terre	940
39280	Belle Terre	771
39281	Amchitka	1974
39282	Indian River	2481
39283	Houston	1847
39284	Houston	699
39285	Houston	150
39286	Houston	3124
39287	Houston	2273
39288	Houston	216
39289	Houston	145
39290	Houston	2115
39291	Houston	483
39292	Paint Bank	351
39293	Ball	2402
39294	Three Forks	579
39295	North Yelm	2190
39296	Manitou Springs	3228
39297	Hallsboro	1238
39298	Spalding	1880
39299	Spalding	802
39300	Lim Rock	1817
39301	Baraga	2149
39302	Stanton	2008
39303	Stanton	3140
39304	Stanton	126
39305	Stanton	2563
39306	Stanton	2130
39307	Stanton	2914
39308	Stanton	2214
39309	Stanton	1997
39310	Stanton	1356
39311	Stanton	2153
39312	Stanton	1288
39313	Stanton	2557
39314	Stanton	732
39315	Traskwood	104
39316	Hendron	2037
39317	Paradise Heights	3141
39318	Eddystone	2809
39319	Coal Mountain	1981
39320	Brant Rock	1936
39321	Skokomish	744
39322	Bala	211
39323	Pine Haven	1019
39324	Woodland Heights	2990
39325	Roxborough Park	2815
39326	Aroya	1609
39327	Piney Woods	2370
39328	Glen Park	995
39329	Saint Charles	299
39330	Saint Charles	1632
39331	Saint Charles	3253
39332	Saint Charles	2051
39333	Saint Charles	1868
39334	Saint Charles	2623
39335	Saint Charles	2423
39336	Saint Charles	2105
39337	Saint Charles	322
39338	Saint Charles	1082
39339	Saint Charles	335
39340	Saint Charles	2103
39341	Saint Charles	785
39342	Boydsville	1534
39343	Emily	704
39344	Millboro	2374
39345	Millboro	922
39346	Roaring Spring	804
39347	Malo	1150
39348	Enlow	2632
39349	Pettry	2003
39350	Upper Montclair	2744
39351	Shelbina	192
39352	Katalla	3172
39353	Cogdell	1746
39354	McKnight	2881
39355	McKnight	2632
39356	Stayton	677
39357	Fuquay-Varina	1399
39358	Supai	353
39359	Janesville	2799
39360	Janesville	2972
39361	Janesville	837
39362	Janesville	1873
39363	Kimbrough	409
39364	Gilberts	322
39365	Southville	1760
39366	Enloe	1796
39367	Trezevant	2221
39368	Gainesboro	1810
39369	Pryor	1884
39370	Pryor	2724
39371	Alianza	1249
39372	Big Bow	2154
39373	Spring	145
39374	Derrick City	1217
39375	Calista	3068
39376	Happy Camp	337
39377	Logan	2139
39378	Logan	2179
39379	Logan	579
39380	Logan	1881
39381	Logan	1253
39382	Logan	616
39383	Logan	2709
39384	Logan	2236
39385	Logan	1558
39386	Logan	1551
39387	San Ildefonso Pueblo	1750
39388	Bainbridge Island	1048
39389	Denison	1408
39390	Denison	1815
39391	Denison	3261
39392	Port Madison	1048
39393	Pueblo West	2030
39394	Albion	1425
39395	Albion	2977
39396	Albion	1650
39397	Albion	2235
39398	Albion	2382
39399	Albion	1053
39400	Albion	1464
39401	Albion	1437
39402	Albion	1512
39403	Albion	1286
39404	Albion	253
39405	Albion	2558
39406	Albion	3229
39407	Albion	2462
39408	Balm	868
39409	South Branch	129
39410	Wooster	2612
39411	Wooster	333
39412	Manassas	1779
39413	Manassas	1791
39414	Butte La Rose	1623
39415	Irasburg	1436
39416	Lakeview Heights	864
39417	Los Ebanos	1353
39418	South Boston	796
39419	Salem Heights	2075
39420	Murray	2637
39421	Murray	224
39422	Murray	1426
39423	Murray	1211
39424	Murray	3181
39425	Murray	1232
39426	Kachina Village	353
39427	North San Juan	1784
39428	Belle Isle	3141
39429	Santa Clara	1460
39430	Santa Clara	2198
39431	Santa Clara	1446
39432	Santa Clara	1128
39433	Santa Clara	1892
39434	Santa Clara	472
39435	Buck Meadows	1660
39436	North Evans	1510
39437	Star	2370
39438	Star	2496
39439	Star	157
39440	Star	723
39441	Confluence	131
39442	Heads	485
39443	Poland	1597
39444	Poland	2839
39445	Topton	427
39446	Topton	362
39447	Portal	3232
39448	Portal	1445
39449	Portal	926
39450	Van Cortlandtville	1919
39451	Drewryville	1015
39452	Many	1032
39453	Iraan	1693
39454	Camuy Zona Urbana	1249
39455	Minocqua	3239
39456	Arapaho	3062
39457	Kokadjo	1852
39458	Lakehead	2883
39459	Treynor	3016
39460	Verdon	635
39461	Verdon	2442
39462	Roessleville	924
39463	Stella	2473
39464	Stella	1234
39465	Stella	1426
39466	Stella	2442
39467	Stella	2448
39468	Stella	1365
39469	Rochert	2458
39470	Manzano	1625
39471	Wamesit	95
39472	McAdenville	2835
39473	West Vandergrift	2385
39474	Lake Hamilton	2545
39475	Lake Hamilton	2446
39476	Gray Mountain	353
39477	El Rancho	1750
39478	El Rancho	992
39479	Laguna Beach	902
39480	Laguna Beach	3140
39481	Manalapan	3071
39482	Manalapan	278
39483	Monserrate Comunidad	1996
39484	Sophia	1634
39485	Sophia	2677
39486	Pidcoke	872
39487	Flatonia	2567
39488	Curtin	2814
39489	Glenvar Heights	1705
39490	India Hook	851
39491	Curtis	3042
39492	Curtis	2091
39493	Curtis	3082
39494	Curtis	2325
39495	Greenacres	263
39496	Almira	1195
39497	Appling	1074
39498	Massapequa Park	101
39499	Mocanaqua	2641
39500	Platea	1512
39501	Vaiva Vo	1914
39502	Woodstock	1582
39503	Woodstock	261
39504	Woodstock	431
39505	Woodstock	2877
39506	Woodstock	3192
39507	Woodstock	520
39508	Woodstock	1952
39509	Woodstock	2483
39510	Woodstock	2740
39511	Woodstock	2373
39512	Larchmont	1919
39513	Genesee	1360
39514	Genesee	715
39515	Genesee	2258
39516	Genesee	992
39517	Volta	1985
39518	Onset	1936
39519	Hawk Point	1201
39520	Shepton	1335
39521	Lesley	1022
39522	Millican	1626
39523	Blackwells	394
39524	Grayslake	1326
39525	Emhouse	881
39526	Terrytown	1005
39527	Terrytown	1016
39528	Sierra City	171
39529	Park Falls	1357
39530	Nason	1004
39531	Baldwinville	1760
39532	Bergman	252
39533	Mohave Valley	829
39534	Kulpmont	2963
39535	Fraser	1151
39536	Fraser	247
39537	Fraser	1481
39538	Gila Crossing	3086
39539	Toyei	932
39540	Folcroft	2809
39541	Bernville	362
39542	North Redwood	1250
39543	Kellyville	755
39544	Barr	2027
39545	Ojo Feliz	3190
39546	Folletts	2896
39547	Santa Claus	1939
39548	Santa Claus	2216
39549	Wright	177
39550	Wright	780
39551	Wright	233
39552	Wright	2038
39553	Wright	2669
39554	Mark	2754
39555	Mark	2874
39556	Mebane	1509
39557	Bard	1253
39558	Stem	282
39559	Ooltewah	2073
39560	Shrub Oak	1919
39561	Pilot Grove	158
39562	Mars	789
39563	Mart	702
39564	Constableville	2529
39565	Pardeeville	1078
39566	Washoe	3035
39567	Castalian Springs	2491
39568	Lotus Woods	1326
39569	Risco	1857
39570	West Odessa	928
39571	Braman	1366
39572	Watterson Park	997
39573	Emajagua	2437
39574	Salome	2638
39575	Hickman	1138
39576	Hickman	1941
39577	Hickman	2713
39578	Crystal Beach	2785
39579	Crystal Beach	357
39580	Smyer	97
39581	Central Point	2893
39582	Central Point	1808
39583	Mendon	1291
39584	Mendon	3103
39585	Mendon	2007
39586	Mendon	2709
39587	Mendon	350
39588	Villa Rica	2230
39589	Winter Park	1151
39590	Winter Park	3141
39591	Callicoon	1946
39592	West Homestead	2632
39593	Brill	2315
39594	East Carondelet	918
39595	Crucible	561
39596	Carrier Mills	105
39597	Stoneburg	1148
39598	Council Hill	2731
39599	Kahului	2438
39600	East Olympia	2190
39601	KÄÊ»anapali	2438
39602	Hickory Grove	2177
39603	Hickory Grove	851
39604	Mount Washington	843
39605	Northfork	2379
39606	Denver City	1466
39607	Ancho	1199
39608	Pettus	981
39609	Albertville	660
39610	Albertville	2472
39611	Albertville	2291
39612	Snoqualmie Falls	3217
39613	Latexo	2118
39614	Shonto	3161
39615	Bergholtz	2910
39616	Dimmitt	1457
39617	PÄhoa	1488
39618	Unified Government of Greeley County (balance)	803
39619	Rankin	2036
39620	Rankin	2632
39621	Rankin	2630
39622	Shakopee	2246
39623	Fort Belknap Agency	1403
39624	East Porterville	308
39625	New Fairview	1147
39626	Bath	2903
39627	Bath	2122
39628	Bath	646
39629	Bath	635
39630	Bath	2887
39631	Bath	314
39632	Bath	438
39633	Bath	325
39634	Bath	746
39635	Savoy	630
39636	Savoy	1403
39637	Savoy	519
39638	Seven Springs	2598
39639	Seven Springs	131
39640	Rossford	2338
39641	New Knoxville	3007
39642	Regan	2146
39643	Finleyville	483
39644	Okauchee Lake	2426
39645	Wailea	2438
39646	Pittman Center	3208
39647	PÃ¡jaros Comunidad	841
39648	Douro	928
39649	Squaw Valley	937
39650	Panorama Park	2239
39651	Ore City	1659
39652	Morven	1056
39653	Morven	1383
39654	Stonerstown	2954
39655	Fort Garland	2068
39656	Melvern	1156
39657	Whitehall	477
39658	Whitehall	1044
39659	Whitehall	2632
39660	Whitehall	385
39661	Whitehall	854
39662	Whitehall	1485
39663	Whitehall	2141
39664	Whitehall	996
39665	Whitehall	1499
39666	Kapp Heights	2963
39667	Kenton	216
39668	Kenton	2199
39669	Kenton	2397
39670	Kenton	2388
39671	Kenton	2065
39672	Kenton	346
39673	Emida	3083
39674	Bayshore Gardens	2834
39675	Crowders	2835
39676	Lyden	2725
39677	Grovania	2116
39678	Manasota Key	1506
39679	Trowbridge Park	1058
39680	Crestwood Village	2627
39681	Lombard	950
39682	Regal	2457
39683	Wolfforth	300
39684	Johnson Creek	994
39685	Twin	683
39686	Yorkfield	950
39687	Rancho Rinconada	2198
39688	Stidham	1042
39689	Interlochen	1592
39690	Oak Hills Place	1381
39691	Vickery	1340
39692	Calabash	2395
39693	Granite Quarry	863
39694	Chupadero	1750
39695	Tidioute	2307
39696	Higgins	2871
39697	Renton	3217
39698	NÄnÄkuli	1878
39699	Beacon Square	1915
39700	Rector	1534
39701	Helper	3037
39702	Alsatia	2747
39703	Amelia	2490
39704	Amelia	1241
39705	Amelia	1869
39706	Copemish	2162
39707	New Matamoras	489
39708	Holly Beach	1831
39709	Primrose	2099
39710	Primrose	253
39711	Primrose	483
39712	Primrose	2995
39713	Lost River	3063
39714	Healy	781
39715	Healy	1447
39716	Ardencroft	2563
39717	Eckerman	662
39718	Shady Point	2263
39719	Hemlock	1845
39720	Hemlock	299
39721	Hemlock	386
39722	Culver City	404
39723	Old Forge	3057
39724	Old Forge	1597
39725	Hampden Sydney	3233
39726	Portis	2202
39727	Indian Valley	1296
39728	Knippa	2455
39729	Wickes	2546
39730	ComerÃ­o Zona Urbana	2435
39731	Caspiana	306
39732	Kingvale	1784
39733	Maud	1628
39734	Maud	826
39735	Maud	785
39736	Smithers	2564
39737	Goodview	2423
39738	Pittsfield	1170
39739	Pittsfield	130
39740	Pittsfield	598
39741	Pittsfield	2672
39742	The Villages	513
39743	Washta	428
39744	North Braddock	2632
39745	Rison	858
39746	Buffalo Valley	2753
39747	Ten Mile Run	129
39748	Yacolt	2326
39749	Zalma	2173
39750	Geneseo	1109
39751	Geneseo	2749
39752	Geneseo	386
39753	La Luisa Comunidad	1580
39754	Bull Creek	753
39755	Irving	525
39756	Irving	735
39757	Swissvale	2632
39758	Irvine	1867
39759	Irvine	3140
39760	Frenchtown	1491
39761	Frenchtown	3149
39762	Patton Village	734
39763	Patton Village	2799
39764	Pacific City	2093
39765	Queensland	2661
39766	Somonauk	1755
39767	Blairsburg	2070
39768	Goldthwaite	2496
39769	Chapman Ranch	819
39770	Furnace Woods	1919
39771	East Palatka	2758
39772	Pleasanton	1556
39773	Pleasanton	2687
39774	Pleasanton	2040
39775	Pleasanton	2484
39776	Pleasanton	1017
39777	Pleasanton	945
39778	Girard	2946
39779	Girard	1512
39780	Girard	712
39781	Girard	927
39782	Girard	218
39783	Girard	1414
39784	Continental Divide	3150
39785	Burna	390
39786	Carmi	1907
39787	Biola	937
39788	Newburyport	2745
39789	Keweenaw Bay	2149
39790	Bingen	1586
39791	Bingen	149
39792	Willow Park	931
39793	Tamarack	2300
39794	Paskenta	3186
39795	Temelec	1790
39796	Binger	307
39797	Poplar Hills	997
39798	Moulton	978
39799	Moulton	538
39800	Moulton	1621
39801	Far Hills	129
39802	Panorama Village	734
39803	Lowland	2255
39804	Readstown	226
39805	East Bernstadt	1744
39806	Key Center	1925
39807	Bowers Beach	216
39808	Baxter	3039
39809	Baxter	704
39810	Baxter	2753
39811	Centerburg	588
39812	Media	2809
39813	Media	2654
39814	Rockfish	1895
39815	Gruetli-Laager	2504
39816	Portia	539
39817	Brier	99
39818	Luxemburg	1566
39819	Luxemburg	1931
39820	Carne	281
39821	Sulligent	892
39822	Hazleton	3115
39823	Hazleton	2641
39824	Hazleton	2812
39825	Arona	2385
39826	Henderson Point	617
39827	Los Alamos	2478
39828	Los Alamos	2107
39829	Mendes	1791
39830	Burns	2434
39831	Burns	681
39832	Burns	2974
39833	Burns	212
39834	Burns	264
39835	Burns	1601
39836	Swansea	918
39837	Swansea	324
39838	Waretown	2627
39839	Milladore	2339
39840	Warwick	1836
39841	Warwick	2400
39842	Warwick	90
39843	Warwick	1188
39844	Warwick	215
39845	Warwick	3137
39846	Germania	1057
39847	Sonterra	121
39848	West Pittsburg	540
39849	North Vernon	2622
39850	University City	3196
39851	Roeland Park	1272
39852	Raymond	2085
39853	Raymond	1046
39854	Raymond	735
39855	Raymond	1632
39856	Raymond	2766
39857	Raymond	1138
39858	Raymond	1223
39859	Raymond	2322
39860	Raymond	2122
39861	Raymond	1901
39862	Raymond	2749
39863	Raymond	510
39864	Raymond	1306
39865	Raymond	2457
39866	Raymond	1563
39867	Reynoldsville	1629
39868	Reynoldsville	1000
39869	Reynoldsville	2375
39870	Sebastopol	1790
39871	Sebastopol	2240
39872	Whitehorse	200
39873	Windsor	1681
39874	Windsor	646
39875	Windsor	853
39876	Windsor	1101
39877	Windsor	1595
39878	Windsor	2009
39879	Windsor	1110
39880	Windsor	1153
39881	Windsor	749
39882	Windsor	1790
39883	Windsor	191
39884	Windsor	2483
39885	Barnum Island	101
39886	Bobtown	3027
39887	Bobtown	561
39888	Prince Frederick	2983
39889	Lydia	2235
39890	Lydia	647
39891	Lydia	1178
39892	Aldora	891
39893	Pottersville	2302
39894	Pottersville	129
39895	Rural Ridge	2632
39896	Brice	1022
39897	Brice	2141
39898	Zionsville	248
39899	Radnor	2806
39900	Crenshaw	1000
39901	Crenshaw	3119
39902	Bridgeton	3196
39903	Bridgeton	2791
39904	Bridgeton	135
39905	Bridgeton	82
39906	Brimley	662
39907	Moulton Heights	119
39908	Brosville	456
39909	Lilbourn	1857
39910	Masterson	327
39911	Porter	3079
39912	Porter	2498
39913	Porter	2499
39914	Porter	2635
39915	East Newark	2587
39916	Kent Narrows	2701
39917	Dorchester	2509
39918	Dorchester	2327
39919	Dorchester	3261
39920	Dorchester	712
39921	Dorchester	106
39922	Dorchester	2555
39923	Schroeder	762
39924	Prentiss	3070
39925	Yerington	142
39926	Bethpage	2491
39927	Bethpage	101
39928	Davis Junction	1978
39929	Mays	2514
39930	Mayo	2771
39931	Mayo	3162
39932	Mayo	2440
39933	Mayo	2006
39934	Bluff Dale	1545
39935	Pesotum	519
39936	Battle Ground	2326
39937	Battle Ground	596
39938	Cotulla	2973
39939	Cowell	3143
39940	Jarbidge	108
39941	Parkdale	2862
39942	Parkdale	2162
39943	Parkdale	993
39944	Parkdale	949
39945	Flats	821
39946	Flats	2521
39947	Pewee Valley	1692
39948	McManus	1862
39949	Sandy Creek	2395
39950	Sandy Creek	1262
39951	Powhatan	2549
39952	Powhatan	539
39953	Powhatan	2991
39954	Wynantskill	2828
39955	Hendrix	2420
39956	Hendrix	70
39957	Otisco	2318
39958	Otisco	2972
39959	Enos Corner	1169
39960	Marenisco	1772
39961	Altenburg	1843
39962	Singer	1727
39963	Robbs	2643
39964	Keyser	974
39965	Wilmerding	2632
39966	Downs	2283
39967	Downs	2202
39968	Sabinal	228
39969	Sabinal	2455
39970	Towers Corners	2910
39971	Mays Lick	748
39972	Shaw Heights	1290
39973	Crystal Rock	1511
39974	Elko New Market	2246
39975	Co-Operative	2268
39976	Astor	1331
39977	Stoy	1410
39978	Santa Fe Springs	404
39979	Stow	1725
39980	CoquÃ­ Comunidad	2259
39981	Harristown	3158
39982	Lake Sarasota	1236
39983	Stickney	761
39984	Stickney	2156
39985	Pleasant Ridge	2663
39986	Ramseur	2677
39987	Orwell	462
39988	Archer City	3095
39989	Bradley Junction	2545
39990	Oil City	306
39991	Oil City	2848
39992	Oil City	2990
39993	McLeansville	710
39994	Saddle River	1572
39995	Ruidosa	2160
39996	Whiteson	363
39997	Fairforest	3162
39998	Harmony	1273
39999	Harmony	2306
40000	Harmony	422
40001	Harmony	789
40002	Harmony	2894
40003	Harmony	2207
40004	Harmony	700
40005	Harmony	1526
40006	Harmony	1395
40007	Harmony	929
40008	Burley	2382
40009	Burley	1048
40010	Paramus	1572
40011	Dryden	3188
40012	Dryden	2614
40013	Dryden	912
40014	Dryden	2621
40015	Dryden	2103
40016	Canadensis	2351
40017	Raglesville	435
40018	Sweet Springs	2353
40019	Sweet Springs	107
40020	Fountain Valley	3140
40021	Reeds	3044
40022	Reedy	665
40023	Summertown	301
40024	Summertown	532
40025	Granton	2327
40026	Cuney	429
40027	Fort Shaw	2334
40028	Nebo	2062
40029	Nebo	1170
40030	Nebo	3253
40031	North Richmond	3143
40032	Garrett Park	740
40033	Minto	1462
40034	Minto	2633
40035	Bareville	1139
40036	Sutcliffe	2332
40037	Floraville	918
40038	Gages Lake	1326
40039	Oviedo	1627
40040	Sharpes	2189
40041	Flatgap	1270
40042	Lynnville	114
40043	Lynnville	391
40044	Lynnville	3039
40045	Lynnville	1365
40046	Lynnville	1071
40047	Sandy Lake	2010
40048	Gloucester	2625
40049	Gloucester	2745
40050	Gloucester	1182
40051	Lakewood Park	653
40052	Lakewood Park	1577
40053	Scranton	315
40054	Scranton	562
40055	Scranton	1510
40056	Scranton	1156
40057	Scranton	2187
40058	Scranton	3057
40059	Scranton	1588
40060	Upton	379
40061	Upton	358
40062	Upton	2392
40063	Upton	1760
40064	Georgiaville	929
40065	Pinckneyville	182
40066	Pinckneyville	1842
40067	Aladdin	1019
40068	Aladdin	775
40069	Three Creeks Village	2311
40070	Taylorsville	2637
40071	Taylorsville	3011
40072	Taylorsville	1553
40073	Taylorsville	609
40074	Taylorsville	1940
40075	Taylorsville	2718
40076	Taylorsville	1601
40077	Laurel Springs	2977
40078	Liberal	612
40079	Liberal	168
40080	Neal	3076
40081	La Paz	2464
40082	Hermanville	572
40083	Langdon	1537
40084	Langdon	1720
40085	Langdon	3201
40086	Brunswick Gardens	94
40087	Orange Park Acres	3140
40088	Pine Island	3274
40089	Pine Island	2088
40090	Pine Island	1997
40091	Pine Island	3137
40092	Jupiter	2270
40093	Jupiter	3071
40094	Castine	2636
40095	Castine	1970
40096	Lakeside Park	2397
40097	Wakulla Beach	1976
40098	El Duende	2725
40099	Frogmore	1680
40100	Frogmore	439
40101	Summit Station	3255
40102	Summit Station	2826
40103	Little Creek	2062
40104	Little Creek	216
40105	Oxford Junction	3019
40106	Forest City	2695
40107	Forest City	2692
40108	Forest City	3015
40109	Forest City	1870
40110	Forest City	1627
40111	Forest City	2670
40112	Forest City	746
40113	Nickelsville	2248
40114	Dorado	2656
40115	Tunica	2658
40116	Tunica	1685
40117	Beechmont	1216
40118	Waymart	2605
40119	Battle Creek	2050
40120	Battle Creek	3054
40121	Battle Creek	1286
40122	Loranger	169
40123	Cheyney	2809
40124	Wynnewood	731
40125	Wynnewood	1879
40126	Singac	792
40127	Choctaw Lake	2057
40128	Buckeye	2674
40129	Buckeye	3086
40130	Buckeye	831
40131	Buckeye	2387
40132	Coleta	1718
40133	Barberville	814
40134	Murrayville	114
40135	Chamberlayne	59
40136	Flanagan	387
40137	Platteville	1131
40138	Platteville	1101
40139	Church Point	1612
40140	Kensal	2645
40141	Toonerville	1998
40142	Sheridan Beach	3217
40143	Felch	1315
40144	Weedsport	2023
40145	North Escobares	166
40146	Cheswold	216
40147	Prophetstown	1718
40148	Griffins Mills	1510
40149	Twin Lakes	3067
40150	Twin Lakes	1713
40151	Twin Lakes	568
40152	Twin Lakes	3150
40153	Twin Lakes	1325
40154	Twin Lakes	2582
40155	Twin Lakes	1362
40156	Twin Lakes	1277
40157	Norvelt	2385
40158	Gallman	2295
40159	Fowlerton	2973
40160	Fowlerton	1118
40161	Y-O Ranch	1849
40162	Westhope	1717
40163	Meeker	1938
40164	Meeker	692
40165	Meeker	1188
40166	Meeker	2402
40167	Prairie Home	158
40168	Newkirk	1459
40169	Newkirk	1366
40170	Pompano Beach	2729
40171	Biwabik	3195
40172	Raeford	1895
40173	Finlay	1438
40174	Loma Linda Colonia	3214
40175	North Charleroi	483
40176	Bendavis	2273
40177	Renner Corner	2293
40178	Riverdale Park	1941
40179	Riverdale Park	2064
40180	East San Gabriel	404
40181	Scituate	1936
40182	Scotland	2580
40183	Scotland	3095
40184	Scotland	1677
40185	Scotland	2431
40186	Scotland	2786
40187	Scotland	2135
40188	Scotland	2708
40189	Scotland	721
40190	Scotland	557
40191	Deer Lake	2826
40192	Laurelville	2236
40193	East Haven	2409
40194	Ruidoso	1199
40195	Elyria	2522
40196	Elyria	845
40197	Elyria	3169
40198	Peapack	129
40199	Delmita	166
40200	Towns	1677
40201	La Porte	3011
40202	La Porte	145
40203	Walker Valley	1952
40204	Camino Tassajara	3143
40205	Correctionville	3024
40206	Lovettsville	3118
40207	Hagaman	724
40208	Union Furnace	2236
40209	Mad River	317
40210	Blackstock	89
40211	Meadow Lake	3272
40212	Sikes	921
40213	Davidson	2177
40214	Davidson	1555
40215	Eschbach	3268
40216	Leewood	1467
40217	Agency	2813
40218	Agency	2174
40219	La Puerta	166
40220	Union Deposit	1369
40221	Reece	3076
40222	Diamond	2473
40223	Diamond	2505
40224	Diamond	1234
40225	Agenda	1871
40226	Montecito	2107
40227	Bridgman	1767
40228	Caledonia	426
40229	Caledonia	3066
40230	Caledonia	692
40231	Caledonia	475
40232	Caledonia	386
40233	Caledonia	249
40234	Caledonia	2115
40235	Caledonia	219
40236	Caledonia	3056
40237	Piedra Gorda	1249
40238	Coweta	3079
40239	Mount Shasta	337
40240	Chunchula	1301
40241	Madeline	2799
40242	Saint John	1464
40243	Saint John	1860
40244	Saint John	1622
40245	Saint John	1323
40246	Saint John	2392
40247	Cego	2597
40248	Mount Olive	2877
40249	Mount Olive	2598
40250	Mount Olive	2576
40251	Mount Olive	712
40252	Mount Olive	987
40253	Mount Olive	1633
40254	Upper Grand Lagoon	902
40255	Ohio	1704
40256	Ohio	549
40257	Morse Junction	1758
40258	East Fork	3161
40259	Washougal	2326
40260	Pinetops	1098
40261	Valley Wells	2411
40262	Pettit	430
40263	Plum City	1926
40264	Maxie	1612
40265	Maxie	1934
40266	Glenbar	2013
40267	El Sauz	166
40268	Little Hocking	489
40269	Hilda	2175
40270	Thornfield	1157
40271	Goehner	167
40272	Difficult	1604
40273	Brantley	2489
40274	Dalark	524
40275	Worthington	686
40276	Worthington	1090
40277	Worthington	2755
40278	Worthington	775
40279	Worthington	1052
40280	Worthington	2141
40281	Worthington	557
40282	Worthington	1931
40283	Pecktonville	492
40284	Colfax	1464
40285	Colfax	2794
40286	Colfax	914
40287	Colfax	3039
40288	Colfax	2969
40289	Colfax	1129
40290	Colfax	1673
40291	Colfax	2289
40292	Colfax	2283
40293	Colfax	2897
40294	Mary Esther	2038
40295	Smoketown	1139
40296	Gills Rock	1708
40297	Tuolumne	2798
40298	Carrizo	2920
40299	Wailua	2438
40300	Abbottstown	1298
40301	Boiling Spring Lakes	2395
40302	Westview Circle	1849
40303	Lake Arthur	1336
40304	Lake Arthur	3069
40305	Chriesman	820
40306	Sour Lake	2389
40307	Big Stone Gap	1146
40308	Bigfoot	2408
40309	Lytle Creek	721
40310	Ouzinkie	3101
40311	Cabo Rojo Zona Urbana	1682
40312	Carlyle	2898
40313	Carlyle	442
40314	Carlyle	810
40315	Los Berros	2207
40316	Gruver	2518
40317	Gruver	1520
40318	Stinesville	2345
40319	Cashtown	1298
40320	Robin	2863
40321	Cape Canaveral	2189
40322	Rensselaer	2828
40323	Rensselaer	3041
40324	Rensselaer	1578
40325	Albemarle	102
40326	Ellerslie	1497
40327	Oak Glen	721
40328	Maguayo Comunidad	1763
40329	Addington	986
40330	Matfield Green	934
40331	Yeehaw Junction	2157
40332	New Brockton	767
40333	Bakers Mill	2077
40334	Rogers	91
40335	Rogers	2341
40336	Rogers	1645
40337	Rogers	2062
40338	Rogers	1958
40339	Rogers	2795
40340	Rogers	1662
40341	Hope Mills	76
40342	Silver Hill	2064
40343	Boonville	391
40344	Boonville	1495
40345	Boonville	3238
40346	Boonville	1053
40347	Boonville	158
40348	Tinley Park	761
40349	Wenasoga	3205
40350	Opheim	3168
40351	Gaston	2807
40352	Gaston	465
40353	Gaston	324
40354	Gaston	312
40355	Ansonia	2636
40356	Ansonia	2409
40357	Riomedina	827
40358	Hackneyville	2933
40359	North Lakeville	1936
40360	Gasport	2910
40361	Mulford	3003
40362	Mont Belvieu	1343
40363	Bensenville	950
40364	Tiline	390
40365	Beryl Junction	1864
40366	Hoodsport	744
40367	Steprock	1905
40368	Bald Knob	1905
40369	Bald Knob	246
40370	Wyatt	1827
40371	Wyatt	939
40372	Wenonah	2626
40373	Wenonah	735
40374	Franklin Park	2729
40375	Franklin Park	761
40376	Franklin Park	2632
40377	North Hills	2337
40378	North Hills	101
40379	East Rockwood	2606
40380	Amasa	1866
40381	Salmon Brook	1712
40382	Allison	965
40383	Allison	782
40384	Allison	2106
40385	Allison	3150
40386	Allison	2574
40387	Tangent	943
40388	Rudolph	2339
40389	Rudolph	196
40390	Rudolph	2338
40391	Astatula	1331
40392	Autryville	286
40393	Orofino	3198
40394	Castaneda	2199
40395	Monroe Center	1295
40396	Monroe Center	1978
40397	Hamilton Branch	3011
40398	Demarest	1572
40399	Rosamond	263
40400	Westhoff	2732
40401	Brenham	486
40402	Kettleman City	861
40403	Chauncey	2179
40404	Chauncey	533
40405	Chauncey	954
40406	Chauncey	741
40407	Red Cross	102
40408	Gum Branch	3105
40409	Yelm	2190
40410	Lake Bluff	1326
40411	Shobonier	2569
40412	Ferrelview	1851
40413	Monessen	2385
40414	Reedville	2962
40415	Landisville	1139
40416	Belchertown	2922
40417	Iron Springs	375
40418	Iron Springs	2495
40419	Iron Springs	1864
40420	Empire City	2848
40421	Manahawkin	2627
40422	Cerrillos Hoyos Comunidad	459
40423	Point Isabel	1118
40424	Trilby	1915
40425	Toyahvale	1781
40426	Celo	1237
40427	Slapout	1881
40428	Landover Hills	2064
40429	Ludlowville	2614
40430	Nemo	536
40431	Lodgepole	1610
40432	Lodgepole	1134
40433	Caroleen	2670
40434	Cubero	1769
40435	Raynesford	2145
40436	Patterson	663
40437	Patterson	2891
40438	Patterson	2490
40439	Patterson	1923
40440	Patterson	3123
40441	Patterson	2611
40442	Patterson	2051
40443	Patterson	1941
40444	Patterson	2388
40445	Patterson	564
40446	Manitowish	1863
40447	Andale	887
40448	Blackstone	1953
40449	North Caldwell	2744
40450	Bogota	1572
40451	Bogota	3043
40452	Bogota	2553
40453	Story City	2581
40454	Bromide	1166
40455	Mountain View Acres	721
40456	Jersey Shore	1770
40457	Allegan	2908
40458	Browning	946
40459	Browning	2738
40460	Browning	1740
40461	Poplarville	136
40462	Saint Thomas	2418
40463	Saint Thomas	722
40464	Orrtanna	1298
40465	Chewsville	492
40466	Horseshoe Beach	2394
40467	Nickerson	3201
40468	Nickerson	956
40469	West Wyomissing	362
40470	La Parguera	1763
40471	Bay Lake	3141
40472	Ohop	1925
40473	Fyffe	1752
40474	Sunol	1556
40475	Sunol	1610
40476	Bigfork	2777
40477	Bigfork	1761
40478	Gordonsville	3142
40479	Gordonsville	1604
40480	Bedminster	129
40481	Fortville	1967
40482	Murdo	3018
40483	Weirton	1964
40484	Amistad Acres	594
40485	Corral Viejo Comunidad	459
40486	Flint Hill	1248
40487	Flint Hill	1082
40488	City Terrace	404
40489	Bigelow	1090
40490	Bigelow	1870
40491	Bigelow	1847
40492	Amana	3081
40493	Garibaldi	2093
40494	Rosburg	2445
40495	Conlen	521
40496	Hampshire	2398
40497	Hampshire	322
40498	Conley	1943
40499	Thayer Junction	3093
40500	China Springs	702
40501	Sutersville	2385
40502	Ogilvie	1158
40503	Sweden Valley	715
40504	Prentice	1357
40505	Woodland Park	792
40506	Woodland Park	277
40507	Woodland Park	2882
40508	North Topsail Beach	329
40509	Van Buskirk	1863
40510	Lynch Station	176
40511	Bricelyn	2830
40512	Barada	2442
40513	Lake Providence	2747
40514	Perry Hall	1498
40515	Dalmatia	2963
40516	Urbana	1245
40517	Urbana	3153
40518	Urbana	501
40519	Urbana	520
40520	Urbana	603
40521	Urbana	1639
40522	Urbana	526
40523	Urbana	519
40524	Villa Park	950
40525	Villa Park	3140
40526	Newborn	1230
40527	Gray Hawk	1812
40528	Paw Paw	2098
40529	Paw Paw	2433
40530	Paw Paw	1172
40531	Paw Paw	110
40532	Urbank	2763
40533	Monterey	369
40534	Monterey	1680
40535	Monterey	2923
40536	Monterey	2753
40537	Monterey	1045
40538	Monterey	2426
40539	Monterey	2955
40540	Bayboro	2255
40541	West Bloomfield	1210
40542	Lanton	3184
40543	Sawpit	1040
40544	Hildreth	2128
40545	Olivehurst	1775
40546	Pennington Gap	2103
40547	Gumlog	2142
40548	Shawsville	739
40549	Shawsville	2959
40550	Brookwood	1911
40551	Brookwood	1981
40552	Morning Sun	58
40553	Cinco Ranch	1890
40554	Woodcrest	3210
40555	Mapleville	492
40556	Powdersville	1397
40557	Big Moose	1597
40558	Northlake	2452
40559	Northlake	761
40560	Northlake	1397
40561	Sturkie	2716
40562	Hills	838
40563	Hills	1263
40564	Union Lake	2663
40565	Pueblo Pintado	3150
40566	Toa Baja Zona Urbana	1334
40567	Eagle	2903
40568	Eagle	90
40569	Eagle	2974
40570	Eagle	1561
40571	Eagle	3181
40572	Eagle	157
40573	Eagle	2426
40574	Fairport Harbor	1328
40575	Peerless	1502
40576	Emlenton	2990
40577	Carlyss	364
40578	Berclair	2583
40579	Herald	1907
40580	Herald	2688
40581	Port Blakely	1048
40582	Bertram	1339
40583	Bertram	944
40584	Daguao	1619
40585	Del Sol Colonia	3214
40586	Oyehut	2499
40587	Napavine	2533
40588	Girty	775
40589	Chalfant	2632
40590	Eastchester	1919
40591	Bluff Springs	2667
40592	Bloxom	3027
40593	Matteson	761
40594	Hiouchi	1468
40595	Rapelje	1568
40596	Statesboro	1445
40597	White Earth	2458
40598	White Earth	354
40599	Cochiti	971
40600	Pilot Mountain	2707
40601	Stringer	3040
40602	Glorieta	1750
40603	Sneads Ferry	329
40604	Graf	1931
40605	Lydick	3102
40606	South Alamo	1353
40607	Whalan	700
40608	Winston-Salem	1980
40609	Campbellton	2715
40610	Campbellton	1816
40611	Campbellton	1017
40612	Elgin	1130
40613	Elgin	3113
40614	Elgin	1206
40615	Elgin	365
40616	Elgin	2512
40617	Elgin	495
40618	Elgin	2111
40619	Elgin	1361
40620	Elgin	1512
40621	Elgin	322
40622	Elgin	2565
40623	Elgin	2988
40624	Elgin	2242
40625	Elgin	2984
40626	Elgin	358
40627	Bayview	1832
40628	Bayview	1925
40629	Bayview	438
40630	Bayview	319
40631	Bayview	3087
40632	Samson	2193
40633	Chinquapin	3126
40634	Toxey	894
40635	Santa Susana	3221
40636	Galateo Comunidad	841
40637	Fierro	1128
40638	CorazÃ³n Comunidad	2413
40639	Packard	782
40640	Las Ollas	2086
40641	East Lansdowne	2809
40642	Farmerville	509
40643	Blountville	1948
40644	Lake Bridgeport	1147
40645	Revloc	3032
40646	Wesley Hills	2960
40647	Layton	2348
40648	Layton	2875
40649	Myakka City	2834
40650	Jasper	3042
40651	Jasper	679
40652	Jasper	3044
40653	Jasper	2077
40654	Jasper	2586
40655	Jasper	1349
40656	Jasper	368
40657	Jasper	1173
40658	Jasper	1232
40659	Jasper	1854
40660	Jasper	2373
40661	Pungoteague	3027
40662	Richmond Hill	71
40663	Trebloc	699
40664	Schneider	1323
40665	Margate City	2617
40666	La Mesa	1242
40667	La Mesa	2381
40668	Levittown	101
40669	Levittown	2634
40670	Levittown	1334
40671	Luxor	2385
40672	Queen Creek	3086
40673	Skyland Estates	2314
40674	Mineola	2497
40675	Mineola	2340
40676	Mineola	101
40677	Sierra Village	2798
40678	Ingalls	2044
40679	Ingalls	544
40680	Ingalls	1694
40681	Ingalls	3074
40682	Huey	2898
40683	Cayey Zona Urbana	547
40684	Picuris Pueblo	1930
40685	Gilpin	1909
40686	Gilpin	2554
40687	Brooklyn Park	91
40688	Brooklyn Park	2440
40689	Traver	308
40690	Taylor Creek	676
40691	Leigh	619
40692	Leigh	2795
40693	Hickory Corners	625
40694	Pleasant Gap	393
40695	Pleasant Gap	433
40696	Butte City	765
40697	Schertz	1460
40698	Mason City	3064
40699	Mason City	746
40700	Mason City	1596
40701	Wagarville	470
40702	El Cerro	3272
40703	Chelatna Lodge	150
40704	Lantry	200
40705	East Hills	101
40706	Lindon	474
40707	Lindon	705
40708	Tuolumne City	2798
40709	Saint Catherine	513
40710	Owensville	104
40711	Owensville	3115
40712	Owensville	1241
40713	Owensville	2166
40714	Franklin Furnace	3256
40715	Kingman	829
40716	Kingman	361
40717	Kingman	3068
40718	Stateburg	515
40719	Yeso	1505
40720	Exira	2640
40721	Gray	467
40722	Gray	79
40723	Gray	910
40724	Gray	2640
40725	Gray	1881
40726	Gray	689
40727	Gray	3021
40728	Gray	1489
40729	Damon	1984
40730	Percy	485
40731	Percy	2680
40732	Elysburg	2963
40733	Lake Wissota	660
40734	South Greensburg	2385
40735	Downing	2739
40736	Downing	2969
40737	Downing	2511
40738	Downsville	2969
40739	Downsville	492
40740	Downsville	509
40741	Downsville	2804
40742	Denhoff	1226
40743	Conshohocken	731
40744	Venus	1266
40745	Venus	2909
40746	Overlea	1498
40747	Yoncalla	2814
40748	Tri-City	2814
40749	Burkes Garden	1776
40750	Big Arm	1322
40751	Archer	1885
40752	Archer	132
40753	Archer	1333
40754	Homewood	3220
40755	Homewood	761
40756	Homewood	2133
40757	Homewood	987
40758	Homewood	1883
40759	Little Grass Valley	3011
40760	Milligantown	2385
40761	North Star	2636
40762	North Star	2563
40763	Whitestone Logging Camp	207
40764	Liberty	2632
40765	Liberty	3132
40766	Liberty	1946
40767	Liberty	367
40768	Liberty	1909
40769	Liberty	400
40770	Liberty	2677
40771	Liberty	1754
40772	Liberty	3107
40773	Liberty	2906
40774	Liberty	3206
40775	Liberty	1291
40776	Liberty	1433
40777	Liberty	728
40778	Liberty	496
40779	Liberty	1541
40780	Galliano	1574
40781	Bay Harbor Islands	1705
40782	Las Cruces	1242
40783	Las Cruces	2107
40784	Lepanto	1499
40785	Burtonsville	740
40786	Netawaka	1815
40787	Kolin	2145
40788	Kolin	2402
40789	Escalante	3005
40790	Junction	2646
40791	Junction	355
40792	Junction	578
40793	Murphysboro	1825
40794	Addieville	487
40795	Strongsville	708
40796	Partridge	3201
40797	Murphys	3144
40798	Five Mile Fork	1896
40799	West Jefferson	1872
40800	West Jefferson	987
40801	West Jefferson	2057
40802	Pope Valley	3151
40803	Alburtis	1372
40804	Perez	1771
40805	Hannah	1720
40806	Pumpville	594
40807	Copake Lake	1073
40808	Hugh	1532
40809	Gibson	960
40810	Gibson	3111
40811	Gibson	2726
40812	Gibson	375
40813	Gibson	910
40814	Gibson	1546
40815	Gibson	3116
40816	Spreckels	2955
40817	Witts Springs	576
40818	Cridersville	3007
40819	Narka	1871
40820	Stirrat	2179
40821	Dubberly	2594
40822	Reese	1486
40823	Hugo	895
40824	Hugo	1200
40825	Hugo	480
40826	Chalk Mountain	1545
40827	Simcoe	3191
40828	Glen Avon	3210
40829	Columbus Grove	2756
40830	Bennetts Corners	1437
40831	Casstown	668
40832	San Felipe Pueblo	971
40833	North Bellmore	101
40834	Longboat Key	2834
40835	Fowlkes	2553
40836	Fowlkes	294
40837	Brinsmade	2400
40838	Questa	1930
40839	Elvaston	1969
40840	Middlebrook	1261
40841	Sheboygan Falls	915
40842	Oak Beach	940
40843	Humbird	2327
40844	Busti	3112
40845	Silk Hope	1631
40846	Stonegate	2815
40847	Uvalde Estates	2455
40848	Clarksdale	1756
40849	Clarksdale	161
40850	Ragsdale	581
40851	Seacliff	1362
40852	New Pekin	466
40853	Simsboro	1202
40854	Lake of the Woods	263
40855	Lake of the Woods	3161
40856	Lake of the Woods	519
40857	Chevy Chase View	740
40858	Cassa	1849
40859	Bascom	1816
40860	Bascom	2262
40861	Maringouin	2694
40862	Harleigh	2641
40863	Salt Creek	2030
40864	Shoemakersville	362
40865	Mecca	3210
40866	Mecca	2946
40867	Mecca	2791
40868	Kashegelok	2260
40869	Amado	1361
40870	Summerville	2509
40871	Summerville	2062
40872	Summerville	1341
40873	Summerville	1000
40874	Summerville	495
40875	Silex	1201
40876	Seba Dalkai	3161
40877	Lasara	1141
40878	Baudette	3148
40879	Macungie	1372
40880	Monta Vista	2198
40881	Jobos Comunidad	2413
40882	Poole	2593
40883	Poole	2687
40884	Keota	960
40885	Keota	1180
40886	Keota	1101
40887	Berry Creek	766
40888	SuÃ¡rez	1235
40889	Valley	226
40890	Valley	2824
40891	Valley	657
40892	Valley	1342
40893	Finley	84
40894	Finley	1646
40895	Finley	1425
40896	Big Pine Key	2348
40897	Newmanstown	1493
40898	Silver Ridge	2627
40899	Bergenfield	1572
40900	Ocean Grove	278
40901	Ocean Grove	597
40902	Port Huron	920
40903	Cockrum	871
40904	Fort Yukon	1462
40905	Brockway	1920
40906	Brockway	1000
40907	Olowalu	2438
40908	Annville	1812
40909	Annville	1493
40910	Hull	870
40911	Hull	1170
40912	Hull	1936
40913	Hull	3107
40914	Hull	2926
40915	Hull	2058
40916	Hainesburg	2306
40917	Dobson	2707
40918	Sula	601
40919	Strathmoor Village	997
40920	Elco	483
40921	Elco	2719
40922	Day Valley	1362
40923	Bird in Hand	1139
40924	Waimea	2209
40925	Grit	745
40926	Ironaton	1407
40927	Deer Island	1072
40928	Viewfield	1663
40929	Corrales	971
40930	Silco	2976
40931	Lyford	1141
40932	Eagan	2864
40933	Eagan	571
40934	Andes	2804
40935	Andes	1669
40936	Lycan	1893
40937	Eagar	932
40938	Lachine	1737
40939	Elba	262
40940	Elba	767
40941	Elba	2382
40942	Elba	2257
40943	Elba	2423
40944	Elba	2967
40945	Little Eagle	2296
40946	Highland Haven	1339
40947	Elbe	1925
40948	Plat	476
40949	Mathias	1900
40950	Narod	721
40951	Rivervale	1499
40952	Longtown	3211
40953	Longtown	1843
40954	El Refugio	166
40955	Haynes	1293
40956	Haynes	2104
40957	Palo Alto	2198
40958	Palo Alto	2826
40959	Lower Squankum	278
40960	Ayden	1503
40961	Mountain Park	1992
40962	Mountain Park	2715
40963	Lago Vista	3050
40964	Port Ewen	1952
40965	Rouzerville	2135
40966	Emporium	1833
40967	Berino	1242
40968	Lotsee	2906
40969	North Bay	426
40970	Rafael GonzÃ¡lez Comunidad	2992
40971	Reklaw	2501
40972	Puerto Real	1682
40973	Olcott	2910
40974	Plaska	1022
40975	Cason	2878
40976	Levelland	97
40977	Stockett	2334
40978	Bell Acres	2632
40979	North Courtland	538
40980	Pringle	1758
40981	Pringle	2641
40982	Pringle	3059
40983	Hunt	271
40984	Hunt	386
40985	Betsy Layne	270
40986	Black Diamond	3217
40987	Black Diamond	799
40988	Nedrow	2979
40989	Coalwood	210
40990	North Acomita Village	1769
40991	Hollidaysburg	804
40992	Calico Rock	1633
40993	Equality	578
40994	Schwenksville	731
40995	Black Forest	3228
40996	Perla	2689
40997	Elm Mott	702
40998	Chapin	2136
40999	Chapin	324
41000	Chapin	114
41001	Cochise	3232
41002	Makakilo City	1878
41003	Hot Sulphur Springs	1151
41004	Hume	2192
41005	Hume	1067
41006	Silas	894
41007	Summit Hill	3038
41008	Oneida	1559
41009	Oneida	1528
41010	Oneida	584
41011	Oneida	639
41012	Oneida	2826
41013	Oneida	2242
41014	Oneida	284
41015	Oneida	2805
41016	Oneida	2042
41017	Oneida	785
41018	Drummond	970
41019	Drummond	3109
41020	Drummond	3004
41021	Drummond	1103
41022	Neligh	2111
41023	Lakefield	1814
41024	King City	465
41025	King City	528
41026	King City	2955
41027	Thomson	2226
41028	Thomson	1221
41029	Thomson	780
41030	Keytesville	350
41031	La Verne	404
41032	Tarryall	1748
41033	Wadsworth	2674
41034	Wadsworth	828
41035	Wadsworth	386
41036	Wadsworth	2332
41037	Wadsworth	1326
41038	Allegre	2650
41039	Fordsville	2780
41040	Cedaredge	1797
41041	Willshire	2984
41042	Elmsford	1919
41043	Diaz	1818
41044	Verndale	2171
41045	Haven	3201
41046	Haven	915
41047	Marlborough	1228
41048	Marlborough	3196
41049	Marlborough	95
41050	Kokomo	688
41051	Kokomo	257
41052	Zuehl	1460
41053	Oak Forest	761
41054	Oak Forest	1164
41055	Pisgah Forest	822
41056	Blackwell	2151
41057	Blackwell	1366
41058	Blackwell	1009
41059	Blackwell	1573
41060	Egypt	1936
41061	Egypt	1163
41062	Egypt	699
41063	Egypt	1372
41064	Egypt	2621
41065	Perma	75
41066	Huntington	2518
41067	Huntington	2922
41068	Huntington	3128
41069	Huntington	2405
41070	Huntington	1471
41071	Huntington	1979
41072	Huntington	1859
41073	Huntington	940
41074	Huntington	3251
41075	Huntington	1778
41076	Lorman	1002
41077	Forrest City	2980
41078	Nadine	2089
41079	Richton Park	761
41080	Yukon	1368
41081	Yukon	2273
41082	Yukon	2385
41083	Stockwell	596
41084	Prosser	1646
41085	Prosser	1297
41086	Grayson	2899
41087	Grayson	1373
41088	Grayson	2562
41089	Grayson	2851
41090	Grayson	2970
41091	Grayson	1543
41092	Grayson	1941
41093	Hattiesburg	1934
41094	Leadore	2891
41095	Ollie	960
41096	Ollie	457
41097	Tallmadge	1725
41098	Ririe	1008
41099	Strange Creek	1765
41100	Adjuntas	3265
41101	Munger	903
41102	Congers	2960
41103	Gambier	588
41104	Shasta Lake	2883
41105	Sullivans Island	905
41106	Woodfin	2270
41107	East Quogue	940
41108	Twin Lake	1485
41109	Hogansburg	2131
41110	Lake Hart	111
41111	Lake Hart	3141
41112	Lake Odessa	1613
41113	Saticoy	3221
41114	Cuchara	2961
41115	McGrath	2300
41116	McGrath	1462
41117	Mokane	2551
41118	DeQuincy	364
\.


--
-- TOC entry 2198 (class 0 OID 24700)
-- Dependencies: 190
-- Data for Name: country_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country_type (country_id, country_code, country_name) FROM stdin;
1	USA	United States
\.


--
-- TOC entry 2199 (class 0 OID 24708)
-- Dependencies: 191
-- Data for Name: county_restriction_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.county_restriction_rule (county_restriction_rule_id, age, effective_date, county_id, restriction_item_id) FROM stdin;
\.


--
-- TOC entry 2200 (class 0 OID 24713)
-- Dependencies: 192
-- Data for Name: county_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.county_type (county_id, county_name, state_id) FROM stdin;
55	Big Stone	13
56	Coshocton	40
57	Louisa	20
58	Louisa	8
59	Henrico	20
60	Lynn	5
61	Austin	5
62	Evangeline	52
63	Ray	14
64	Cedar	8
65	Cedar	26
66	Cedar	14
67	Upson	41
68	Roscommon	11
69	Hooker	26
70	Bryan	42
71	Bryan	41
72	Boyd	26
73	Boyd	49
74	Maries	14
75	Sanders	18
76	Cumberland	24
77	Cumberland	53
78	Cumberland	15
79	Cumberland	9
80	Cumberland	49
81	Cumberland	20
82	Cumberland	30
83	Cumberland	50
84	Steele	25
85	Steele	13
86	Archuleta	48
87	Okfuskee	42
88	Chester	53
89	Chester	37
90	Chester	50
91	Hennepin	13
92	Moody	38
93	Middlesex	20
94	Middlesex	30
95	Middlesex	6
96	Middlesex	51
97	Hockley	5
98	MayagÃ¼ez	4
99	Snohomish	35
100	Nassau	33
101	Nassau	36
102	Stanly	24
103	Saline	47
104	Saline	22
105	Saline	15
106	Saline	26
107	Saline	14
108	Elko	34
109	Brookings	38
110	Morgan	44
111	Morgan	16
112	Morgan	53
113	Morgan	48
114	Morgan	15
115	Morgan	14
116	Morgan	49
117	Morgan	40
118	Morgan	41
119	Morgan	21
120	Morgan	12
121	Williamson	5
122	Williamson	53
123	Williamson	15
124	Fall River	38
125	Elliott	49
126	Chilton	21
127	Suffolk (city)	20
128	Somerset	7
129	Somerset	30
130	Somerset	9
131	Somerset	50
132	Alachua	33
133	Pontotoc	42
134	Pontotoc	17
135	Craven	24
136	Pearl River	17
137	Itawamba	17
138	Independence	22
139	Lyon	8
140	Lyon	13
141	Lyon	47
142	Lyon	34
143	Lyon	49
144	Dinwiddie	20
145	Harris	5
146	Harris	41
147	Asotin	35
148	Aransas	5
149	Klickitat	35
150	Matanuska-Susitna	19
151	Lumpkin	41
152	Rockbridge	20
153	Imperial	43
154	Dearborn	16
155	Jerome	10
156	Yakutat	19
157	Ada	10
158	Cooper	14
159	Ogemaw	11
160	Treasure	18
161	Coahoma	17
162	Elk	50
163	Elk	47
164	Morrison	13
165	Garrard	49
166	Starr	5
167	Seward	26
168	Seward	47
169	Tangipahoa	52
170	Sierra	32
171	Sierra	43
172	Wheatland	18
173	Tishomingo	17
174	Jewell	47
175	Campbell	38
176	Campbell	20
177	Campbell	45
178	Campbell	53
179	Campbell	49
180	Benzie	11
181	Payne	42
182	Wilkinson	17
183	Wilkinson	41
184	Hopewell (city)	20
185	Clallam	35
186	Keith	26
187	Shelby	8
188	Shelby	16
189	Shelby	5
190	Shelby	53
191	Shelby	15
192	Shelby	14
193	Shelby	49
194	Shelby	40
195	Shelby	21
196	Kenedy	5
197	Carson City (city)	34
198	Cowlitz	35
199	Glasscock	5
200	Dewey	38
201	Dewey	42
202	Jessamine	49
203	Wolfe	49
204	McDonald	14
205	Las Animas	48
206	Colorado	5
207	Hoonah-Angoon	19
208	Danville (city)	20
209	Fairbanks North Star	19
210	Powder River	18
211	Riley	47
212	Harney	46
213	New York	36
214	Young	5
215	Kent	27
216	Kent	2
217	Kent	7
218	Kent	5
219	Kent	11
220	Sutter	43
221	Renville	25
222	Renville	13
223	St. Johns	33
224	Shoshone	10
225	Vernon	52
226	Vernon	39
227	Vernon	14
228	Socorro	32
229	McCurtain	42
230	St. Francois	14
231	Uinta	45
232	Ford	15
233	Ford	47
234	Juneau	19
235	Juneau	39
236	Stark	25
237	Stark	15
238	Stark	40
239	Colonial Heights (city)	20
240	Pickett	53
241	Preble	40
242	Kinney	5
243	Ouachita	52
244	Ouachita	22
245	Crane	5
246	Boone	44
247	Boone	8
248	Boone	16
249	Boone	15
250	Boone	14
251	Boone	49
252	Boone	22
253	Boone	26
254	New Hanover	24
255	Grenada	17
256	Howard	8
257	Howard	16
258	Howard	5
259	Howard	14
260	Howard	22
261	Howard	7
262	Howard	26
263	Kern	43
264	Laramie	45
265	Floyd	8
266	Floyd	41
267	Floyd	16
268	Floyd	20
269	Floyd	5
270	Floyd	49
271	Kerr	5
272	Nelson	20
273	Nelson	25
274	Nelson	49
275	Iosco	11
276	Chelan	35
277	Teller	48
278	Monmouth	30
279	Waupaca	39
280	Yabucoa	4
281	Luna	32
282	Granville	24
283	Nemaha	26
284	Nemaha	47
285	Ochiltree	5
286	Sampson	24
287	Ingham	11
288	Barbour	21
289	Barbour	44
290	Slope	25
291	San Saba	5
292	Broomfield	48
293	Ellsworth	47
294	Wichita	5
295	Wichita	47
296	Koochiching	13
297	Clarion	50
298	Denver	48
299	Saginaw	11
300	Lubbock	5
301	Emanuel	41
302	Pendleton	44
303	Pendleton	49
304	Hillsdale	11
305	Belknap	29
306	Caddo	52
307	Caddo	42
308	Tulare	43
309	Edmonson	49
310	Garrett	7
311	Hot Springs	45
312	Northampton	24
313	Northampton	20
314	Northampton	50
315	Bowman	25
316	Trinity	5
317	Trinity	43
318	Humboldt	8
319	Humboldt	43
320	Humboldt	34
321	Prince William	20
322	Kane	15
323	Kane	12
324	Lexington	37
325	Sagadahoc	9
326	Moore	24
327	Moore	5
328	Moore	53
329	Onslow	24
330	Fajardo	4
331	Coal	42
332	Yellowstone	18
333	Faulkner	22
334	Trousdale	53
335	Charles	7
336	Pratt	47
337	Siskiyou	43
338	Muskingum	40
339	Sutton	5
340	Bosque	5
341	Huron	40
342	Huron	11
343	Jenkins	41
344	Otero	32
345	Otero	48
346	Obion	53
347	Stokes	24
348	Eddy	32
349	Eddy	25
350	Chariton	14
351	Craig	20
352	Craig	42
353	Coconino	28
354	Mountrail	25
355	Kimble	5
356	Goshen	45
357	Ontario	36
358	Bastrop	5
359	Drew	22
360	Villalba	4
361	Fountain	16
362	Berks	50
363	Yamhill	46
364	Calcasieu	52
365	Kershaw	37
366	Pickens	21
367	Pickens	37
368	Pickens	41
369	Pulaski	16
370	Pulaski	15
371	Pulaski	14
372	Pulaski	49
373	Pulaski	41
374	Pulaski	20
375	Pulaski	22
376	Runnels	5
377	Williams	25
378	Williams	40
379	Weston	45
380	Trimble	49
381	Glenn	43
382	Ashland	39
383	Ashland	40
384	Saguache	48
385	Livingston	52
386	Livingston	36
387	Livingston	15
388	Livingston	14
389	Livingston	11
390	Livingston	49
391	Warrick	16
392	Penobscot	9
393	Centre	50
394	Cobb	41
395	Deer Lodge	18
396	CanÃ³vanas	4
397	Major	42
398	Metcalfe	49
399	Pitkin	48
400	Kittitas	35
401	James City	20
402	Menard	5
403	Menard	15
404	Los Angeles	43
405	Bernalillo	32
406	Fairfield	40
407	Fairfield	37
408	Fairfield	51
409	Wilcox	21
410	Wilcox	41
411	Dade	41
412	Dade	14
413	Autauga	21
414	Jay	16
415	Bradford	33
416	Bradford	50
417	Zavala	5
418	Dent	14
419	Kalamazoo	11
420	Keya Paha	26
421	Rawlins	47
422	Iredell	24
423	Swisher	5
424	Screven	41
425	Arlington	20
426	Racine	39
427	Cherokee	24
428	Cherokee	8
429	Cherokee	5
430	Cherokee	42
431	Cherokee	41
432	Cherokee	47
433	Cherokee	21
434	Cherokee	37
435	Daviess	16
436	Daviess	14
437	Daviess	49
438	Beaufort	24
439	Beaufort	37
440	Allen	52
441	Allen	40
442	Allen	47
443	Allen	16
444	Allen	49
445	Sanilac	11
446	Wilkes	24
447	Wilkes	41
448	Lamoille	31
449	Miner	38
450	Waldo	9
451	Pender	24
452	Hill	5
453	Hill	18
454	Dooly	41
455	Dawes	26
456	Pittsylvania	20
457	Fallon	18
458	Dougherty	41
459	Ponce	4
460	Vance	24
461	Caribou	10
462	Ashtabula	40
463	Washington	24
464	Washington	31
465	Washington	46
466	Washington	16
467	Washington	53
468	Washington	42
469	Washington	9
470	Washington	21
471	Washington	22
472	Washington	12
473	Washington	26
474	Washington	48
475	Washington	14
476	Washington	39
477	Washington	36
478	Washington	27
479	Washington	49
480	Washington	13
481	Washington	47
482	Washington	33
483	Washington	50
484	Washington	8
485	Washington	17
486	Washington	5
487	Washington	15
488	Washington	52
489	Washington	40
490	Washington	41
491	Washington	20
492	Washington	7
493	Washington	10
494	Union	24
495	Union	46
496	Union	16
497	Union	53
498	Union	49
499	Union	38
500	Union	33
501	Union	22
502	Union	30
503	Union	37
504	Union	50
505	Union	8
506	Union	17
507	Union	32
508	Union	15
509	Union	52
510	Union	40
511	Union	41
512	Sumter	41
513	Sumter	33
514	Sumter	21
515	Sumter	37
516	Caswell	24
517	Waynesboro (city)	20
518	Banks	41
519	Champaign	15
520	Champaign	40
521	Dallam	5
522	Dallas	8
523	Dallas	21
524	Dallas	22
525	Dallas	5
526	Dallas	14
527	Cheatham	53
528	Gentry	14
529	Norman	13
530	Lawrence	17
531	Lawrence	16
532	Lawrence	53
533	Lawrence	15
534	Lawrence	14
535	Lawrence	49
536	Lawrence	38
537	Lawrence	40
538	Lawrence	21
539	Lawrence	22
540	Lawrence	50
541	Charlevoix	11
542	Hampden	6
543	Menominee	39
544	Menominee	11
545	Yauco	4
546	Beltrami	13
547	Cayey	4
548	Crisp	41
549	Gunnison	48
550	Dickenson	20
551	Blanco	5
552	De Witt	15
553	Briscoe	5
554	Nicollet	13
555	Greene	24
556	Greene	36
557	Greene	16
558	Greene	53
559	Greene	21
560	Greene	22
561	Greene	50
562	Greene	8
563	Greene	17
564	Greene	15
565	Greene	14
566	Greene	40
567	Greene	41
568	Greene	20
569	Red Lake	13
570	Claiborne	52
571	Claiborne	53
572	Claiborne	17
573	Hettinger	25
574	Crosby	5
575	Arthur	26
576	Searcy	22
577	Pondera	18
578	Gallatin	15
579	Gallatin	18
580	Gallatin	49
581	Knox	16
582	Knox	5
583	Knox	53
584	Knox	15
585	Knox	9
586	Knox	14
587	Knox	49
588	Knox	40
589	Knox	26
590	San Joaquin	43
591	Quebradillas	4
592	Sharkey	17
593	Divide	25
594	Val Verde	5
595	Hamblen	53
596	Tippecanoe	16
597	Bristol	6
598	Merrimack	29
599	LaGrange	16
600	Hanson	38
601	Ravalli	18
602	Covington (city)	20
603	Neosho	47
604	Latimer	42
605	Lauderdale	21
606	Lauderdale	53
607	Lauderdale	17
608	Ozaukee	39
609	Bartow	41
610	Andrew	14
611	Comal	5
612	Barton	14
613	Barton	47
614	Culebra	4
615	Harrison	44
616	Harrison	8
617	Harrison	17
618	Harrison	16
619	Harrison	5
620	Harrison	14
621	Harrison	49
622	Harrison	40
623	Bonner	10
624	Barry	14
625	Barry	11
626	Manitowoc	39
627	Wilkin	13
628	Marathon	39
629	Chicot	22
630	Fannin	5
631	Fannin	41
632	Brown	16
633	Brown	5
634	Brown	15
635	Brown	38
636	Brown	40
637	Brown	13
638	Brown	47
639	Brown	39
640	Brown	26
641	Cannon	53
642	Dolores	48
643	Oconee	37
644	Oconee	41
645	Coke	5
646	Aiken	37
647	Darlington	37
648	St. Croix	23
649	St. Croix	39
650	Chenango	36
651	CataÃ±o	4
652	Cecil	7
653	Ramsey	25
654	Ramsey	13
655	Candler	41
656	Culpeper	20
657	Stevens	35
658	Stevens	13
659	Stevens	47
660	Chippewa	39
661	Chippewa	13
662	Chippewa	11
663	Woodruff	22
664	Menifee	49
665	Roane	44
666	Roane	53
667	Miami	16
668	Miami	40
669	Miami	47
670	Breathitt	49
671	Williamsburg (city)	20
672	Bingham	10
673	Mingo	44
674	Dale	21
675	Bland	20
676	Okeechobee	33
677	Marion	46
678	Marion	16
679	Marion	53
680	Marion	49
681	Marion	47
682	Marion	33
683	Marion	21
684	Marion	22
685	Marion	37
686	Marion	44
687	Marion	8
688	Marion	17
689	Marion	5
690	Marion	15
691	Marion	14
692	Marion	40
693	Marion	41
694	Somervell	5
695	Sangamon	15
696	Gurabo	4
697	Bledsoe	53
698	Chickasaw	8
699	Chickasaw	17
700	Fillmore	13
701	Fillmore	26
702	McLennan	5
703	Hayes	26
704	Crow Wing	13
705	Utah	12
706	San Benito	43
707	Vega Alta	4
708	Cuyahoga	40
709	Yolo	43
710	Guilford	24
711	Atoka	42
712	Macoupin	15
713	Potter	38
714	Potter	5
715	Potter	50
716	Childress	5
717	Nome	19
718	Kosciusko	16
719	Buena Vista	8
720	Gratiot	11
721	San Bernardino	43
722	Cole	14
723	Montgomery	24
724	Montgomery	36
725	Montgomery	16
726	Montgomery	53
727	Montgomery	49
728	Montgomery	47
729	Montgomery	21
730	Montgomery	22
731	Montgomery	50
732	Montgomery	8
733	Montgomery	17
734	Montgomery	5
735	Montgomery	15
736	Montgomery	14
737	Montgomery	40
738	Montgomery	41
739	Montgomery	20
740	Montgomery	7
741	Athens	40
742	Moultrie	15
743	Mason	44
744	Mason	35
745	Mason	5
746	Mason	15
747	Mason	11
748	Mason	49
749	Dane	39
750	Robertson	5
751	Robertson	53
752	Robertson	49
753	Taney	14
754	Troup	41
755	Creek	42
756	Baylor	5
757	Washita	42
758	Santa Rosa	33
759	Klamath	46
760	Owsley	49
761	Cook	15
762	Cook	13
763	Cook	41
764	Butte	38
765	Butte	10
766	Butte	43
767	Coffee	21
768	Coffee	53
769	Coffee	41
770	Rockdale	41
771	Assumption	52
772	Coos	46
773	Coos	29
774	Armstrong	5
775	Armstrong	50
776	Alleghany	24
777	Alleghany	20
778	Otsego	36
779	Otsego	11
780	Carlton	13
781	Denali	19
782	Butler	8
783	Butler	14
784	Butler	49
785	Butler	40
786	Butler	47
787	Butler	21
788	Butler	26
789	Butler	50
790	Gladwin	11
791	Mellette	38
792	Passaic	30
793	Jeff Davis	5
794	Jeff Davis	41
795	Halifax	24
796	Halifax	20
797	Ripley	16
798	Ripley	14
799	Citrus	33
800	Las Piedras	4
801	Towner	25
802	Greeley	26
803	Greeley	47
804	Blair	50
805	Natrona	45
806	Butts	41
807	Patillas	4
808	Elmore	21
809	Elmore	10
810	Wibaux	18
811	Curry	46
812	Curry	32
813	Clatsop	46
814	Volusia	33
815	St. Thomas	23
816	Callahan	5
817	Webb	5
818	Dillon	37
819	Nueces	5
820	Burleson	5
821	Rains	5
822	Transylvania	24
823	Ellis	5
824	Ellis	42
825	Ellis	47
826	Bowie	5
827	Medina	5
828	Medina	40
829	Mohave	28
830	Monongalia	44
831	Larimer	48
832	Collier	33
833	Little River	22
834	Norfolk (city)	20
835	Edmunds	38
836	Yankton	38
837	Rock	39
838	Rock	13
839	Rock	26
840	Gosper	26
841	Toa Alta	4
842	Dare	24
843	Bullitt	49
844	Sac	8
845	Lorain	40
846	Juana DÃ­az	4
847	Grimes	5
848	Vinton	40
849	York	20
850	York	9
851	York	37
852	York	26
853	York	50
854	Trempealeau	39
855	Garza	5
856	Loving	5
857	Cleveland	24
858	Cleveland	22
859	Cleveland	42
860	Kings	36
861	Kings	43
862	Fredericksburg (city)	20
863	Rowan	24
864	Rowan	49
865	Tensas	52
866	Green Lake	39
867	Maverick	5
868	Hillsborough	33
869	Hillsborough	29
870	DeSoto	33
871	DeSoto	17
872	Coryell	5
873	Schleicher	5
874	Nye	34
875	Will	15
876	Oglethorpe	41
877	Roseau	13
878	Bronx	36
879	Gordon	41
880	Washburn	39
881	Navarro	5
882	Emporia (city)	20
883	Yalobusha	17
884	Charles City	20
885	Nuckolls	26
886	Sedgwick	48
887	Sedgwick	47
888	Wabaunsee	47
889	Patrick	20
890	Lamar	17
891	Lamar	41
892	Lamar	21
893	Lamar	5
894	Choctaw	21
895	Choctaw	42
896	Choctaw	17
897	Coleman	5
898	Crockett	5
899	Crockett	53
900	Blackford	16
901	Hamlin	38
902	Bay	33
903	Bay	11
904	Milwaukee	39
905	Charleston	37
906	Wasco	46
907	Pennington	38
908	Pennington	13
909	Edgefield	37
910	Terrebonne	52
911	San SebastiÃ¡n	4
912	Terrell	5
913	Terrell	41
914	Fleming	49
915	Sheboygan	39
916	McKenzie	25
917	St. Clair	21
918	St. Clair	15
919	St. Clair	14
920	St. Clair	11
921	Winn	52
922	Tripp	38
923	Albany	45
924	Albany	36
925	Burke	24
926	Burke	25
927	Burke	41
928	Ector	5
929	Providence	27
930	Breckinridge	49
931	Parker	5
932	Apache	28
933	Chase	26
934	Chase	47
935	St. John the Baptist	52
936	Heard	41
937	Fresno	43
938	Mississippi	22
939	Mississippi	14
940	Suffolk	36
941	Suffolk	6
942	Gilliam	46
943	Linn	46
944	Linn	8
945	Linn	47
946	Linn	14
947	Laurens	37
948	Laurens	41
949	Hood River	46
950	DuPage	15
951	Oktibbeha	17
952	Donley	5
953	Dodge	13
954	Dodge	41
955	Dodge	39
956	Dodge	26
957	Guayanilla	4
958	Oklahoma	42
959	Stephenson	15
960	Keokuk	8
961	Fisher	5
962	Grand Isle	31
963	Wheeler	46
964	Wheeler	41
965	Wheeler	5
966	Wheeler	26
967	Fremont	8
968	Fremont	45
969	Fremont	48
970	Fremont	10
971	Sandoval	32
972	Emmons	25
973	Greenlee	28
974	Mineral	44
975	Mineral	18
976	Mineral	48
977	Mineral	34
978	Lavaca	5
979	Schenectady	36
980	Grainger	53
981	Bee	5
982	Owyhee	10
983	Jefferson	46
984	Jefferson	16
985	Jefferson	53
986	Jefferson	42
987	Jefferson	21
988	Jefferson	22
989	Jefferson	35
990	Jefferson	26
991	Jefferson	44
992	Jefferson	48
993	Jefferson	14
994	Jefferson	39
995	Jefferson	36
996	Jefferson	18
997	Jefferson	49
998	Jefferson	47
999	Jefferson	33
1000	Jefferson	50
1001	Jefferson	8
1002	Jefferson	17
1003	Jefferson	5
1004	Jefferson	15
1005	Jefferson	52
1006	Jefferson	40
1007	Jefferson	41
1008	Jefferson	10
1009	Nolan	5
1010	Cabarrus	24
1011	Hale	21
1012	Hale	5
1013	Bristol Bay	19
1014	Sarpy	26
1015	Southampton	20
1016	Scotts Bluff	26
1017	Atascosa	5
1018	Crook	46
1019	Crook	45
1020	Isabella	11
1021	Trego	47
1022	Hall	5
1023	Hall	26
1024	Hall	41
1025	Chattahoochee	41
1026	Cowley	47
1027	Wyoming	44
1028	Wyoming	36
1029	Wyoming	50
1030	PeÃ±uelas	4
1031	Pend Oreille	35
1032	Sabine	52
1033	Sabine	5
1034	Swain	24
1035	Sanpete	12
1036	Fentress	53
1037	Carver	13
1038	Spink	38
1039	San Miguel	32
1040	San Miguel	48
1041	McIntosh	25
1042	McIntosh	42
1043	McIntosh	41
1044	Owen	16
1045	Owen	49
1046	Hinds	17
1047	Bennett	38
1048	Kitsap	35
1049	Staunton (city)	20
1050	Wirt	44
1051	Hickory	14
1052	Greenup	49
1053	Mendocino	43
1054	Coffey	47
1055	Brooks	5
1056	Brooks	41
1057	Marquette	39
1058	Marquette	11
1059	Taylor	44
1060	Taylor	8
1061	Taylor	5
1062	Taylor	49
1063	Taylor	41
1064	Taylor	33
1065	Taylor	39
1066	Cidra	4
1067	Bates	14
1068	Hand	38
1069	Brooke	44
1070	Lenoir	24
1071	Graves	49
1072	Columbia	46
1073	Columbia	36
1074	Columbia	41
1075	Columbia	33
1076	Columbia	22
1077	Columbia	35
1078	Columbia	39
1079	Columbia	50
1080	Marengo	21
1081	St. Charles	52
1082	St. Charles	14
1083	Bexar	5
1084	Isanti	13
1085	Early	41
1086	Finney	47
1087	Catoosa	41
1088	Sunflower	17
1089	Buckingham	20
1090	Nobles	13
1091	Dickey	25
1092	Tucker	44
1093	Walworth	38
1094	Walworth	39
1095	Vermillion	16
1096	Dundy	26
1097	Culberson	5
1098	Edgecombe	24
1099	Stewart	53
1100	Stewart	41
1101	Weld	48
1102	Glynn	41
1103	Granite	18
1104	Pershing	34
1105	Colquitt	41
1106	Henry	8
1107	Henry	16
1108	Henry	53
1109	Henry	15
1110	Henry	14
1111	Henry	49
1112	Henry	40
1113	Henry	41
1114	Henry	21
1115	Henry	20
1116	Leflore	17
1117	Grant	46
1118	Grant	16
1119	Grant	42
1120	Grant	49
1121	Grant	38
1122	Grant	13
1123	Grant	47
1124	Grant	22
1125	Grant	35
1126	Grant	26
1127	Grant	44
1128	Grant	32
1129	Grant	52
1130	Grant	25
1131	Grant	39
1132	District of Columbia	54
1133	Washakie	45
1134	Perkins	38
1135	Perkins	26
1136	Lancaster	20
1137	Lancaster	37
1138	Lancaster	26
1139	Lancaster	50
1140	Sequoyah	42
1141	Willacy	5
1142	Collingsworth	5
1143	Lyman	38
1144	McMullen	5
1145	Aleutians East	19
1146	Wise	20
1147	Wise	5
1148	Montague	5
1149	Colbert	21
1150	Ferry	35
1151	Grand	48
1152	Grand	12
1153	Broome	36
1154	Osage	42
1155	Osage	14
1156	Osage	47
1157	Ozark	14
1158	Kanabec	13
1159	Vilas	39
1160	Talbot	7
1161	Talbot	41
1162	Barnstable	6
1163	Etowah	21
1164	Gonzales	5
1165	Johnston	24
1166	Johnston	42
1167	Crowley	48
1168	Pike	17
1169	Pike	16
1170	Pike	15
1171	Pike	14
1172	Pike	49
1173	Pike	40
1174	Pike	41
1175	Pike	21
1176	Pike	22
1177	Pike	50
1178	Iberia	52
1179	Haskell	5
1180	Haskell	42
1181	Haskell	47
1182	Carteret	24
1183	Lincoln	24
1184	Lincoln	46
1185	Lincoln	18
1186	Lincoln	45
1187	Lincoln	53
1188	Lincoln	42
1189	Lincoln	9
1190	Lincoln	49
1191	Lincoln	38
1192	Lincoln	13
1193	Lincoln	47
1194	Lincoln	22
1195	Lincoln	35
1196	Lincoln	26
1197	Lincoln	44
1198	Lincoln	17
1199	Lincoln	32
1200	Lincoln	48
1201	Lincoln	14
1202	Lincoln	52
1203	Lincoln	41
1204	Lincoln	39
1205	Lincoln	10
1206	Lincoln	34
1207	Leon	33
1208	Leon	5
1209	Georgetown	37
1210	Waushara	39
1211	Clarke	8
1212	Clarke	17
1213	Clarke	41
1214	Clarke	21
1215	Clarke	20
1216	Muhlenberg	49
1217	McKean	50
1218	St. John	23
1219	Florida	4
1220	Island	35
1221	McDuffie	41
1222	Petroleum	18
1223	Sheridan	18
1224	Sheridan	47
1225	Sheridan	45
1226	Sheridan	25
1227	Sheridan	26
1228	Cheshire	29
1229	Newton	17
1230	Newton	41
1231	Newton	16
1232	Newton	22
1233	Newton	5
1234	Newton	14
1235	LoÃ­za	4
1236	Sarasota	33
1237	Yancey	24
1238	Columbus	24
1239	Hart	41
1240	Hart	49
1241	Clermont	40
1242	DoÃ±a Ana	32
1243	Pocahontas	44
1244	Pocahontas	8
1245	Wabash	16
1246	Wabash	15
1247	Pima	28
1248	Rappahannock	20
1249	Camuy	4
1250	Redwood	13
1251	Hormigueros	4
1252	GuÃ¡nica	4
1253	Quay	32
1254	Pawnee	42
1255	Pawnee	26
1256	Pawnee	47
1257	Ross	40
1258	Olmsted	13
1259	Currituck	24
1260	Anoka	13
1261	Augusta	20
1262	Oswego	36
1263	Johnson	8
1264	Johnson	16
1265	Johnson	45
1266	Johnson	5
1267	Johnson	53
1268	Johnson	15
1269	Johnson	14
1270	Johnson	49
1271	Johnson	41
1272	Johnson	47
1273	Johnson	22
1274	Johnson	26
1275	St. James	52
1276	Calhoun	44
1277	Calhoun	8
1278	Calhoun	17
1279	Calhoun	5
1280	Calhoun	15
1281	Calhoun	41
1282	Calhoun	33
1283	Calhoun	21
1284	Calhoun	22
1285	Calhoun	37
1286	Calhoun	11
1287	Adams	8
1288	Adams	17
1289	Adams	16
1290	Adams	48
1291	Adams	15
1292	Adams	40
1293	Adams	25
1294	Adams	35
1295	Adams	39
1296	Adams	10
1297	Adams	26
1298	Adams	50
1299	Andrews	5
1300	Clearfield	50
1301	Mobile	21
1302	Phelps	26
1303	Phelps	14
1304	Whitley	16
1305	Whitley	49
1306	Pacific	35
1307	St. Lawrence	36
1308	Ceiba	4
1309	McCulloch	5
1310	Malheur	46
1311	De Soto	52
1312	Wyandotte	47
1313	Harrisonburg (city)	20
1314	Dickinson	8
1315	Dickinson	11
1316	Dickinson	47
1317	Tolland	51
1318	Stafford	20
1319	Stafford	47
1320	Magoffin	49
1321	Lake	46
1322	Lake	18
1323	Lake	16
1324	Lake	53
1325	Lake	48
1326	Lake	15
1327	Lake	38
1328	Lake	40
1329	Lake	13
1330	Lake	43
1331	Lake	33
1332	Lake	11
1333	Merrick	26
1334	Toa Baja	4
1335	Collin	5
1336	Chaves	32
1337	Petersburg Borough	19
1338	Gove	47
1339	Burnet	5
1340	Sandusky	40
1341	Chattooga	41
1342	Chambers	21
1343	Chambers	5
1344	Sauk	39
1345	Prince of Wales-Hyder	19
1346	Hinsdale	48
1347	Nicholas	44
1348	Nicholas	49
1349	Walker	21
1350	Walker	5
1351	Walker	41
1352	Hidalgo	32
1353	Hidalgo	5
1354	Lunenburg	20
1355	Clarendon	37
1356	Montcalm	11
1357	Price	39
1358	Pine	13
1359	Salem (city)	20
1360	Latah	10
1361	Santa Cruz	28
1362	Santa Cruz	43
1363	Rock Island	15
1364	Giles	20
1365	Giles	53
1366	Kay	42
1367	Ritchie	44
1368	Canadian	42
1369	Dauphin	50
1370	Cattaraugus	36
1371	Irwin	41
1372	Lehigh	50
1373	Gwinnett	41
1374	Lamb	5
1375	AÃ±asco	4
1376	Schoolcraft	11
1377	Glades	33
1378	Hays	5
1379	Morton	25
1380	Morton	47
1381	East Baton Rouge	52
1382	Kimball	26
1383	Anson	24
1384	Adair	8
1385	Adair	42
1386	Adair	14
1387	Adair	49
1388	Unicoi	53
1389	Brule	38
1390	Burt	26
1391	Teton	45
1392	Teton	10
1393	Teton	18
1394	Anderson	47
1395	Anderson	5
1396	Anderson	53
1397	Anderson	37
1398	Anderson	49
1399	Wake	24
1400	Echols	41
1401	White Pine	34
1402	Twin Falls	10
1403	Blaine	18
1404	Blaine	42
1405	Blaine	10
1406	Blaine	26
1407	Talladega	21
1408	Crawford	8
1409	Crawford	16
1410	Crawford	15
1411	Crawford	14
1412	Crawford	40
1413	Crawford	41
1414	Crawford	47
1415	Crawford	22
1416	Crawford	39
1417	Crawford	50
1418	Crawford	11
1419	Forest	39
1420	Forest	50
1421	Box Elder	12
1422	Skagit	35
1423	San Mateo	43
1424	Sully	38
1425	Pushmataha	42
1426	Calloway	49
1427	Tift	41
1428	Calumet	39
1429	Neshoba	17
1430	Lynchburg (city)	20
1431	Spokane	35
1432	Mower	13
1433	Weber	12
1434	Hodgeman	47
1435	Orleans	52
1436	Orleans	31
1437	Orleans	36
1438	Hudspeth	5
1439	Hertford	24
1440	Cottle	5
1441	Bullock	21
1442	Deaf Smith	5
1443	Uintah	12
1444	Blue Earth	13
1445	Bulloch	41
1446	Lane	46
1447	Lane	47
1448	Meigs	53
1449	Meigs	40
1450	Russell	47
1451	Russell	21
1452	Russell	20
1453	Russell	49
1454	McClain	42
1455	Levy	33
1456	McCormick	37
1457	Castro	5
1458	Idaho	10
1459	Guadalupe	32
1460	Guadalupe	5
1461	Conejos	48
1462	Yukon-Koyukuk	19
1463	Eastland	5
1464	Whitman	35
1465	Cotton	42
1466	Yoakum	5
1467	Kanawha	44
1468	Del Norte	43
1469	Coamo	4
1470	Baker	33
1471	Baker	46
1472	Baker	41
1473	Mitchell	24
1474	Mitchell	8
1475	Mitchell	41
1476	Mitchell	47
1477	Mitchell	5
1478	Chowan	24
1479	Kidder	25
1480	Cortland	36
1481	Macomb	11
1482	Des Moines	8
1483	Tyrrell	24
1484	Saratoga	36
1485	Muskegon	11
1486	Tuscola	11
1487	Wexford	11
1488	Hawaii	3
1489	Bonneville	10
1490	Gooding	10
1491	Hunterdon	30
1492	Codington	38
1493	Lebanon	50
1494	Mahnomen	13
1495	Yadkin	24
1496	Allegany	36
1497	Allegany	7
1498	Baltimore	7
1499	Poinsett	22
1500	Kennebec	9
1501	Kingfisher	42
1502	Daniels	18
1503	Pitt	24
1504	Philadelphia	50
1505	De Baca	32
1506	Charlotte	33
1507	Charlotte	20
1508	Kalawao	3
1509	Alamance	24
1510	Erie	36
1511	Erie	40
1512	Erie	50
1513	Panola	5
1514	Panola	17
1515	Marin	43
1516	Page	20
1517	Page	8
1518	Vieques	4
1519	Routt	48
1520	Hansford	5
1521	Pleasants	44
1522	Knott	49
1523	Jersey	15
1524	Chemung	36
1525	Clay	24
1526	Clay	16
1527	Clay	53
1528	Clay	49
1529	Clay	38
1530	Clay	13
1531	Clay	47
1532	Clay	33
1533	Clay	21
1534	Clay	22
1535	Clay	26
1536	Clay	44
1537	Clay	8
1538	Clay	17
1539	Clay	5
1540	Clay	15
1541	Clay	14
1542	Clay	41
1543	Okmulgee	42
1544	Umatilla	46
1545	Erath	5
1546	Dunklin	14
1547	Walton	33
1548	Walton	41
1549	Gilchrist	33
1550	Ware	41
1551	Ward	25
1552	Ward	5
1553	Bartholomew	16
1554	Borden	5
1555	Tillman	42
1556	Alameda	43
1557	Phillips	18
1558	Phillips	47
1559	Phillips	22
1560	Phillips	48
1561	Southeast Fairbanks	19
1562	Vanderburgh	16
1563	Madera	43
1564	Roanoke (city)	20
1565	Bolivar	17
1566	Kewaunee	39
1567	Branch	11
1568	Stillwater	18
1569	Bourbon	47
1570	Bourbon	49
1571	Davison	38
1572	Bergen	30
1573	Conway	22
1574	Lafourche	52
1575	Yates	36
1576	Juab	12
1577	St. Lucie	33
1578	Ralls	14
1579	Fairfax (city)	20
1580	ManatÃ­	4
1581	Grand Forks	25
1582	Bibb	21
1583	Bibb	41
1584	Jerauld	38
1585	Lonoke	22
1586	Hempstead	22
1587	Florence	39
1588	Florence	37
1589	Prairie	22
1590	Prairie	18
1591	Belmont	40
1592	Grand Traverse	11
1593	New London	51
1594	El Dorado	43
1595	Isle of Wight	20
1596	Cerro Gordo	8
1597	Herkimer	36
1598	Kossuth	8
1599	Duval	33
1600	Duval	5
1601	Smith	17
1602	Smith	47
1603	Smith	5
1604	Smith	53
1605	Trujillo Alto	4
1606	Hampton	37
1607	Alexandria (city)	20
1608	Gem	10
1609	Cheyenne	48
1610	Cheyenne	26
1611	Cheyenne	47
1612	Acadia	52
1613	Ionia	11
1614	Avery	24
1615	Chesterfield	20
1616	Chesterfield	37
1617	Brewster	5
1618	Ascension	52
1619	Naguabo	4
1620	Hemphill	5
1621	Appanoose	8
1622	Tooele	12
1623	St. Martin	52
1624	Skagway	19
1625	Torrance	32
1626	Brazos	5
1627	Seminole	33
1628	Seminole	42
1629	Seminole	41
1630	Chatham	24
1631	Chatham	41
1632	Bear Lake	10
1633	Izard	22
1634	Raleigh	44
1635	Bossier	52
1636	Portage	39
1637	Portage	40
1638	Benton	46
1639	Benton	8
1640	Benton	17
1641	Benton	16
1642	Benton	53
1643	Benton	14
1644	Benton	13
1645	Benton	22
1646	Benton	35
1647	McNairy	53
1648	Tippah	17
1649	Edwards	5
1650	Edwards	15
1651	Edwards	47
1652	Evans	41
1653	Box Butte	26
1654	King and Queen	20
1655	Starke	16
1656	Bristol (city)	20
1657	Newberry	37
1658	Upshur	44
1659	Upshur	5
1660	Mariposa	43
1661	Desha	22
1662	Columbiana	40
1663	Meade	38
1664	Meade	47
1665	Meade	49
1666	Nacogdoches	5
1667	Titus	5
1668	Shannon	14
1669	Richland	18
1670	Richland	15
1671	Richland	52
1672	Richland	40
1673	Richland	25
1674	Richland	39
1675	Richland	37
1676	RÃ­o Grande	4
1677	Telfair	41
1678	Roosevelt	32
1679	Roosevelt	18
1680	Concordia	52
1681	Bertie	24
1682	Cabo Rojo	4
1683	Tipton	16
1684	Tipton	53
1685	West Feliciana	52
1686	Wallace	47
1687	Allendale	37
1688	Durham	24
1689	Kleberg	5
1690	Oregon	14
1691	Oldham	5
1692	Oldham	49
1693	Pecos	5
1694	Bradley	22
1695	Bradley	53
1696	Flagler	33
1697	Kearney	26
1698	Jo Daviess	15
1699	Leavenworth	47
1700	Ciales	4
1701	Mackinac	11
1702	Muscatine	8
1703	Oxford	9
1704	Bureau	15
1705	Miami-Dade	33
1706	Live Oak	5
1707	Kingsbury	38
1708	Door	39
1709	Stearns	13
1710	Eau Claire	39
1711	Pepin	39
1712	Hartford	51
1713	Freeborn	13
1714	Prince George	20
1715	Camas	10
1716	Eureka	34
1717	Bottineau	25
1718	Whiteside	15
1719	Palo Pinto	5
1720	Cavalier	25
1721	Moffat	48
1722	Berkeley	44
1723	Berkeley	37
1724	Summit	48
1725	Summit	40
1726	Summit	12
1727	Beauregard	52
1728	Marinette	39
1729	Juniata	50
1730	Ottawa	40
1731	Ottawa	47
1732	Ottawa	42
1733	Ottawa	11
1734	Naranjito	4
1735	King William	20
1736	Winkler	5
1737	Alpena	11
1738	Llano	5
1739	Gallia	40
1740	Glacier	18
1741	Roger Mills	42
1742	Effingham	15
1743	Effingham	41
1744	Laurel	49
1745	Burnett	39
1746	Clinch	41
1747	Park	45
1748	Park	48
1749	Park	18
1750	Santa Fe	32
1751	DeKalb	41
1752	DeKalb	21
1753	DeKalb	16
1754	DeKalb	53
1755	DeKalb	15
1756	DeKalb	14
1757	Hutchinson	38
1758	Hutchinson	5
1759	Worcester	7
1760	Worcester	6
1761	Flathead	18
1762	Bienville	52
1763	Lajas	4
1764	Mecosta	11
1765	Braxton	44
1766	Berrien	41
1767	Berrien	11
1768	Hanover	20
1769	Cibola	32
1770	Lycoming	50
1771	Modoc	43
1772	Gogebic	11
1773	Ransom	25
1774	Oglala Lakota	38
1775	Yuba	43
1776	Tazewell	20
1777	Tazewell	15
1778	Emery	12
1779	Manassas (city)	20
1780	Bennington	31
1781	Reeves	5
1782	Taliaferro	41
1783	Nevada	22
1784	Nevada	43
1785	Crittenden	22
1786	Crittenden	49
1787	Simpson	17
1788	Simpson	49
1789	Shackelford	5
1790	Sonoma	43
1791	Tattnall	41
1792	Wasatch	12
1793	Harper	42
1794	Harper	47
1795	Schley	41
1796	Delta	5
1797	Delta	48
1798	Delta	11
1799	Deuel	38
1800	Deuel	26
1801	North Slope	19
1802	Mathews	20
1803	Colusa	43
1804	Van Zandt	5
1805	Franklin (city)	20
1806	Kenai Peninsula	19
1807	Jackson	24
1808	Jackson	46
1809	Jackson	16
1810	Jackson	53
1811	Jackson	42
1812	Jackson	49
1813	Jackson	38
1814	Jackson	13
1815	Jackson	47
1816	Jackson	33
1817	Jackson	21
1818	Jackson	22
1819	Jackson	11
1820	Jackson	44
1821	Jackson	8
1822	Jackson	17
1823	Jackson	5
1824	Jackson	48
1825	Jackson	15
1826	Jackson	14
1827	Jackson	52
1828	Jackson	40
1829	Jackson	41
1830	Jackson	39
1831	Cameron	52
1832	Cameron	5
1833	Cameron	50
1834	Carlisle	49
1835	Worth	8
1836	Worth	41
1837	Worth	14
1838	Larue	49
1839	Perry	17
1840	Perry	16
1841	Perry	53
1842	Perry	15
1843	Perry	14
1844	Perry	49
1845	Perry	40
1846	Perry	21
1847	Perry	22
1848	Perry	50
1849	Platte	45
1850	Platte	26
1851	Platte	14
1852	Piscataquis	9
1853	Oscoda	11
1854	Dubois	16
1855	Antrim	11
1856	Caguas	4
1857	New Madrid	14
1858	Foard	5
1859	Angelina	5
1860	Rolette	25
1861	Tama	8
1862	East Feliciana	52
1863	Iron	39
1864	Iron	12
1865	Iron	14
1866	Iron	11
1867	Estill	49
1868	Gregory	38
1869	Holt	26
1870	Holt	14
1871	Republic	47
1872	Ashe	24
1873	Bremer	8
1874	Okanogan	35
1875	Ballard	49
1876	Elbert	48
1877	Elbert	41
1878	Honolulu	3
1879	Garvin	42
1880	Nez Perce	10
1881	Beaver	42
1882	Beaver	12
1883	Beaver	50
1884	Mayes	42
1885	O'Brien	8
1886	Gillespie	5
1887	Sussex	2
1888	Sussex	20
1889	Sussex	30
1890	Fort Bend	5
1891	Hendricks	16
1892	Aguas Buenas	4
1893	Baca	48
1894	West Carroll	52
1895	Hoke	24
1896	Spotsylvania	20
1897	Harlan	26
1898	Harlan	49
1899	Geauga	40
1900	Hardy	44
1901	Black Hawk	8
1902	San Francisco	43
1903	White	41
1904	White	16
1905	White	22
1906	White	53
1907	White	15
1908	Barceloneta	4
1909	Casey	49
1910	Orangeburg	37
1911	Tuscaloosa	21
1912	Kendall	5
1913	Kendall	15
1914	Pinal	28
1915	Pasco	33
1916	Lac qui Parle	13
1917	Gates	24
1918	Ziebach	38
1919	Westchester	36
1920	McCone	18
1921	Guaynabo	4
1922	Traverse	13
1923	Pierce	41
1924	Pierce	25
1925	Pierce	35
1926	Pierce	39
1927	Pierce	26
1928	George	17
1929	Coosa	21
1930	Taos	32
1931	Dubuque	8
1932	Leake	17
1933	Hood	5
1934	Forrest	17
1935	Plymouth	8
1936	Plymouth	6
1937	Alpine	43
1938	Rio Blanco	48
1939	Spencer	16
1940	Spencer	49
1941	Stanislaus	43
1942	Clayton	8
1943	Clayton	41
1944	Abbeville	37
1945	Amherst	20
1946	Sullivan	36
1947	Sullivan	16
1948	Sullivan	53
1949	Sullivan	29
1950	Sullivan	50
1951	Sullivan	14
1952	Ulster	36
1953	Nottoway	20
1954	Labette	47
1955	Iroquois	15
1956	Swift	13
1957	Leslie	49
1958	Bell	5
1959	Bell	49
1960	Person	24
1961	Preston	44
1962	Noxubee	17
1963	Haines	19
1964	Hancock	44
1965	Hancock	8
1966	Hancock	17
1967	Hancock	16
1968	Hancock	53
1969	Hancock	15
1970	Hancock	9
1971	Hancock	49
1972	Hancock	40
1973	Hancock	41
1974	Aleutians West	19
1975	Avoyelles	52
1976	Wakulla	33
1977	Rhea	53
1978	Ogle	15
1979	Cabell	44
1980	Forsyth	24
1981	Forsyth	41
1982	King George	20
1983	Whatcom	35
1984	Brazoria	5
1985	Merced	43
1986	Pickaway	40
1987	Morovis	4
1988	Baldwin	21
1989	Baldwin	41
1990	Litchfield	51
1991	Kiowa	48
1992	Kiowa	42
1993	Kiowa	47
1994	Cape May	30
1995	Piatt	15
1996	Vega Baja	4
1997	Goodhue	13
1998	Bent	48
1999	Woodford	15
2000	Woodford	49
2001	Rabun	41
2002	Baltimore (city)	7
2003	Mercer	44
2004	Mercer	15
2005	Mercer	14
2006	Mercer	49
2007	Mercer	40
2008	Mercer	25
2009	Mercer	30
2010	Mercer	50
2011	Lake and Peninsula	19
2012	Graham	24
2013	Graham	28
2014	Graham	47
2015	Aguada	4
2016	Cherry	26
2017	Hendry	33
2018	Lanier	41
2019	Dillingham	19
2020	Griggs	25
2021	Chisago	13
2022	Boundary	10
2023	Cayuga	36
2024	Barber	47
2025	Billings	25
2026	Silver Bow	18
2027	Tate	17
2028	Doniphan	47
2029	LaMoure	25
2030	Pueblo	48
2031	Greenville	37
2032	Pottawatomie	42
2033	Pottawatomie	47
2034	Aibonito	4
2035	Vermilion	52
2036	Vermilion	15
2037	McCracken	49
2038	Okaloosa	33
2039	Canyon	10
2040	Catron	32
2041	Madison	24
2042	Madison	36
2043	Madison	18
2044	Madison	16
2045	Madison	53
2046	Madison	49
2047	Madison	33
2048	Madison	21
2049	Madison	22
2050	Madison	26
2051	Madison	8
2052	Madison	17
2053	Madison	5
2054	Madison	15
2055	Madison	14
2056	Madison	52
2057	Madison	40
2058	Madison	41
2059	Madison	20
2060	Madison	10
2061	Fergus	18
2062	La Salle Parish	52
2063	Bladen	24
2064	Prince George's	7
2065	Houghton	11
2066	Pasquotank	24
2067	Wicomico	7
2068	Costilla	48
2069	Hamilton	36
2070	Hamilton	8
2071	Hamilton	16
2072	Hamilton	5
2073	Hamilton	53
2074	Hamilton	15
2075	Hamilton	40
2076	Hamilton	47
2077	Hamilton	33
2078	Hamilton	26
2079	Sherman	46
2080	Sherman	47
2081	Sherman	5
2082	Sherman	26
2083	Rockingham	24
2084	Rockingham	20
2085	Rockingham	29
2086	Santa Isabel	4
2087	Arecibo	4
2088	Waller	5
2089	Lea	32
2090	Fond du Lac	39
2091	Frontier	26
2092	Stoddard	14
2093	Tillamook	46
2094	Lee	24
2095	Lee	8
2096	Lee	17
2097	Lee	5
2098	Lee	15
2099	Lee	49
2100	Lee	41
2101	Lee	33
2102	Lee	21
2103	Lee	20
2104	Lee	22
2105	Lee	37
2106	La Plata	48
2107	Santa Barbara	43
2108	Overton	53
2109	Colleton	37
2110	BayamÃ³n	4
2111	Antelope	26
2112	Yuma	48
2113	Yuma	28
2114	Indian River	33
2115	Houston	13
2116	Houston	41
2117	Houston	21
2118	Houston	5
2119	Houston	53
2120	Franklin	24
2121	Franklin	31
2122	Franklin	16
2123	Franklin	53
2124	Franklin	9
2125	Franklin	21
2126	Franklin	22
2127	Franklin	35
2128	Franklin	26
2129	Franklin	6
2130	Franklin	14
2131	Franklin	36
2132	Franklin	49
2133	Franklin	47
2134	Franklin	33
2135	Franklin	50
2136	Franklin	8
2137	Franklin	17
2138	Franklin	5
2139	Franklin	15
2140	Franklin	52
2141	Franklin	40
2142	Franklin	41
2143	Franklin	20
2144	Franklin	10
2145	Judith Basin	18
2146	Burleigh	25
2147	Indiana	50
2148	Spalding	41
2149	Baraga	11
2150	Tioga	36
2151	Tioga	50
2152	Millard	12
2153	Stanton	26
2154	Stanton	47
2155	Stonewall	5
2156	Aurora	38
2157	Osceola	33
2158	Osceola	8
2159	Osceola	11
2160	Presidio	5
2161	Cooke	5
2162	Manistee	11
2163	Snyder	50
2164	Wilbarger	5
2165	Fluvanna	20
2166	Gasconade	14
2167	Mesa	48
2168	Hawkins	53
2169	Irion	5
2170	Humacao	4
2171	Wadena	13
2172	San Augustine	5
2173	Bollinger	14
2174	Wapello	8
2175	Barnwell	37
2176	Milam	5
2177	Mecklenburg	24
2178	Mecklenburg	20
2179	Logan	44
2180	Logan	48
2181	Logan	15
2182	Logan	42
2183	Logan	49
2184	Logan	40
2185	Logan	47
2186	Logan	25
2187	Logan	22
2188	Logan	26
2189	Brevard	33
2190	Thurston	35
2191	Thurston	26
2192	Edgar	15
2193	Geneva	21
2194	Murray	42
2195	Murray	13
2196	Murray	41
2197	Kit Carson	48
2198	Santa Clara	43
2199	Cimarron	42
2200	Mille Lacs	13
2201	Aroostook	9
2202	Osborne	47
2203	Josephine	46
2204	Red Willow	26
2205	Charlottesville (city)	20
2206	Lewis and Clark	18
2207	San Luis Obispo	43
2208	Reynolds	14
2209	Kauai	3
2210	Martin	24
2211	Martin	13
2212	Martin	33
2213	Martin	16
2214	Martin	5
2215	Martin	49
2216	Toombs	41
2217	Sweet Grass	18
2218	Appomattox	20
2219	Queens	36
2220	Carroll	16
2221	Carroll	53
2222	Carroll	49
2223	Carroll	22
2224	Carroll	8
2225	Carroll	17
2226	Carroll	15
2227	Carroll	29
2228	Carroll	14
2229	Carroll	40
2230	Carroll	41
2231	Carroll	20
2232	Carroll	7
2233	Wyandot	40
2234	Red River	52
2235	Red River	5
2236	Hocking	40
2237	Dixon	26
2238	Presque Isle	11
2239	Scott	8
2240	Scott	17
2241	Scott	16
2242	Scott	53
2243	Scott	15
2244	Scott	14
2245	Scott	49
2246	Scott	13
2247	Scott	47
2248	Scott	20
2249	Scott	22
2250	Hardee	33
2251	Treutlen	41
2252	Appling	41
2253	Amador	43
2254	Walthall	17
2255	Pamlico	24
2256	Robeson	24
2257	Genesee	36
2258	Genesee	11
2259	Salinas	4
2260	Bethel	19
2261	Seneca	36
2262	Seneca	40
2263	Le Flore	42
2264	Moniteau	14
2265	Poweshiek	8
2266	Outagamie	39
2267	Boulder	48
2268	McCreary	49
2269	Alfalfa	42
2270	Buncombe	24
2271	Juncos	4
2272	Texas	42
2273	Texas	14
2274	Long	41
2275	Goochland	20
2276	Holmes	33
2277	Holmes	40
2278	Holmes	17
2279	Randall	5
2280	Otoe	26
2281	Washtenaw	11
2282	McLean	25
2283	McLean	15
2284	McLean	49
2285	Daggett	12
2286	Sterling	5
2287	Furnas	26
2288	Massac	15
2289	Placer	43
2290	Wright	8
2291	Wright	13
2292	Wright	14
2293	Minnehaha	38
2294	Clare	11
2295	Copiah	17
2296	Corson	38
2297	Roanoke	20
2298	St. Bernard	52
2299	Minidoka	10
2300	Aitkin	13
2301	Warren	24
2302	Warren	36
2303	Warren	16
2304	Warren	53
2305	Warren	49
2306	Warren	30
2307	Warren	50
2308	Warren	8
2309	Warren	17
2310	Warren	15
2311	Warren	14
2312	Warren	40
2313	Warren	41
2314	Warren	20
2315	Barron	39
2316	Gilmer	44
2317	Gilmer	41
2318	Clark	16
2319	Clark	15
2320	Clark	14
2321	Clark	49
2322	Clark	38
2323	Clark	40
2324	Clark	47
2325	Clark	22
2326	Clark	35
2327	Clark	39
2328	Clark	10
2329	Clark	34
2330	Stanley	38
2331	Beaverhead	18
2332	Washoe	34
2333	Defiance	40
2334	Cascade	18
2335	Hickman	53
2336	Hickman	49
2337	Wood	44
2338	Wood	40
2339	Wood	39
2340	Wood	5
2341	Barnes	25
2342	Oliver	25
2343	McCook	38
2344	Monroe	36
2345	Monroe	16
2346	Monroe	53
2347	Monroe	49
2348	Monroe	33
2349	Monroe	21
2350	Monroe	22
2351	Monroe	50
2352	Monroe	11
2353	Monroe	44
2354	Monroe	8
2355	Monroe	17
2356	Monroe	15
2357	Monroe	14
2358	Monroe	40
2359	Monroe	41
2360	Monroe	39
2361	Kaufman	5
2362	Arapahoe	48
2363	Dimmit	5
2364	Anchorage	19
2365	Greer	42
2366	Summers	44
2367	Kusilvak	19
2368	Green	39
2369	Green	49
2370	Rankin	17
2371	Gregg	5
2372	Sharp	22
2373	Pipestone	13
2374	Bath	20
2375	Bath	49
2376	Bacon	41
2377	Rosebud	18
2378	McDowell	24
2379	McDowell	44
2380	Issaquena	17
2381	San Diego	43
2382	Cassia	10
2383	Pemiscot	14
2384	Westmoreland	20
2385	Westmoreland	50
2386	McLeod	13
2387	Hardin	8
2388	Hardin	40
2389	Hardin	5
2390	Hardin	53
2391	Hardin	15
2392	Hardin	49
2393	Cuming	26
2394	Dixie	33
2395	Brunswick	24
2396	Brunswick	20
2397	Kenton	49
2398	Maury	53
2399	Androscoggin	9
2400	Benson	25
2401	Gulf	33
2402	Rapides	52
2403	Barrow	41
2404	Wythe	20
2405	Fairfax	20
2406	Sabana Grande	4
2407	Buena Vista (city)	20
2408	Frio	5
2409	New Haven	51
2410	Smyth	20
2411	Inyo	43
2412	Sublette	45
2413	Guayama	4
2414	Aguadilla	4
2415	Newport	27
2416	Schoharie	36
2417	Muscogee	41
2418	Pembina	25
2419	Amelia	20
2420	Blount	21
2421	Blount	53
2422	Broadwater	18
2423	Winona	13
2424	Humphreys	53
2425	Humphreys	17
2426	Waukesha	39
2427	Loup	26
2428	Duchesne	12
2429	Williamsburg	37
2430	Van Buren	8
2431	Van Buren	22
2432	Van Buren	53
2433	Van Buren	11
2434	Dickson	53
2435	ComerÃ­o	4
2436	Lexington (city)	20
2437	Maunabo	4
2438	Maui	3
2439	Kalkaska	11
2440	Anne Arundel	7
2441	Gadsden	33
2442	Richardson	26
2443	Petersburg (city)	20
2444	Sherburne	13
2445	Wahkiakum	35
2446	Garland	22
2447	Luquillo	4
2448	RincÃ³n	4
2449	Day	38
2450	Trigg	49
2451	Shiawassee	11
2452	Denton	5
2453	Kearny	47
2454	Poquoson (city)	20
2455	Uvalde	5
2456	Peoria	15
2457	Kandiyohi	13
2458	Becker	13
2459	Baxter	22
2460	Weakley	53
2461	Marshall	44
2462	Marshall	8
2463	Marshall	17
2464	Marshall	16
2465	Marshall	53
2466	Marshall	15
2467	Marshall	42
2468	Marshall	49
2469	Marshall	38
2470	Marshall	13
2471	Marshall	47
2472	Marshall	21
2473	Plaquemines	52
2474	Mifflin	50
2475	Botetourt	20
2476	Love	42
2477	Woods	42
2478	Los Alamos	32
2479	Payette	10
2480	Rio Grande	48
2481	Cheboygan	11
2482	Cross	22
2483	Windsor	31
2484	Decatur	8
2485	Decatur	41
2486	Decatur	47
2487	Decatur	16
2488	Decatur	53
2489	Crenshaw	21
2490	St. Mary	52
2491	Sumner	53
2492	Sumner	47
2493	Grady	42
2494	Grady	41
2495	Yavapai	28
2496	Mills	5
2497	Mills	8
2498	Porter	16
2499	Grays Harbor	35
2500	Rusk	39
2501	Rusk	5
2502	Jack	5
2503	Grundy	8
2504	Grundy	53
2505	Grundy	15
2506	Grundy	14
2507	LaSalle	15
2508	Dorchester	7
2509	Dorchester	37
2510	Bailey	5
2511	Comanche	5
2512	Comanche	42
2513	Comanche	47
2514	Rush	16
2515	Rush	47
2516	Storey	34
2517	Prentiss	17
2518	Emmet	8
2519	Emmet	11
2520	McPherson	38
2521	McPherson	26
2522	McPherson	47
2523	Galveston	5
2524	Freestone	5
2525	Ketchikan Gateway	19
2526	Catawba	24
2527	Boyle	49
2528	Lewis	44
2529	Lewis	36
2530	Lewis	53
2531	Lewis	14
2532	Lewis	49
2533	Lewis	35
2534	Lewis	10
2535	Turner	38
2536	Turner	41
2537	Polk	24
2538	Polk	46
2539	Polk	8
2540	Polk	5
2541	Polk	53
2542	Polk	14
2543	Polk	13
2544	Polk	41
2545	Polk	33
2546	Polk	22
2547	Polk	39
2548	Polk	26
2549	Powhatan	20
2550	Huntingdon	50
2551	Callaway	14
2552	Tuscarawas	40
2553	Dyer	53
2554	Dickens	5
2555	Allamakee	8
2556	Haywood	24
2557	Haywood	53
2558	Carter	18
2559	Carter	53
2560	Carter	42
2561	Carter	14
2562	Carter	49
2563	New Castle	2
2564	Fayette	44
2565	Fayette	8
2566	Fayette	16
2567	Fayette	5
2568	Fayette	53
2569	Fayette	15
2570	Fayette	49
2571	Fayette	40
2572	Fayette	41
2573	Fayette	21
2574	Fayette	50
2575	Covington	21
2576	Covington	17
2577	Haralson	41
2578	Pointe Coupee	52
2579	Sequatchie	53
2580	St. Mary's	7
2581	Story	8
2582	Kenosha	39
2583	Goliad	5
2584	Montmorency	11
2585	Saluda	37
2586	Lenawee	11
2587	Hudson	30
2588	Rutland	31
2589	Webster	44
2590	Webster	8
2591	Webster	17
2592	Webster	14
2593	Webster	49
2594	Webster	52
2595	Webster	41
2596	Webster	26
2597	Falls	5
2598	Wayne	24
2599	Wayne	36
2600	Wayne	16
2601	Wayne	53
2602	Wayne	49
2603	Wayne	12
2604	Wayne	26
2605	Wayne	50
2606	Wayne	11
2607	Wayne	44
2608	Wayne	8
2609	Wayne	17
2610	Wayne	15
2611	Wayne	14
2612	Wayne	40
2613	Wayne	41
2614	Tompkins	36
2615	Montezuma	48
2616	Maricao	4
2617	Atlantic	30
2618	Norfolk	6
2619	Cape Girardeau	14
2620	Haakon	38
2621	Craighead	22
2622	Jennings	16
2623	Arkansas	22
2624	Winneshiek	8
2625	Gloucester	20
2626	Gloucester	30
2627	Ocean	30
2628	Salem	30
2629	Motley	5
2630	Upton	5
2631	Ste. Genevieve	14
2632	Allegheny	50
2633	Walsh	25
2634	Bucks	50
2635	Yellow Medicine	13
2636	Darke	40
2637	Salt Lake	12
2638	La Paz	28
2639	Langlade	39
2640	Audubon	8
2641	Luzerne	50
2642	Pope	22
2643	Pope	15
2644	Pope	13
2645	Stutsman	25
2646	Piute	12
2647	Perquimans	24
2648	Todd	38
2649	Todd	13
2650	Todd	49
2651	Henderson	24
2652	Henderson	5
2653	Henderson	53
2654	Henderson	15
2655	Henderson	49
2656	Dorado	4
2657	Power	10
2658	Tunica	17
2659	Arroyo	4
2660	Cullman	21
2661	Ben Hill	41
2662	Montrose	48
2663	Oakland	11
2664	Stone	22
2665	Stone	17
2666	Stone	14
2667	Escambia	33
2668	Escambia	21
2669	Mahaska	8
2670	Rutherford	24
2671	Rutherford	53
2672	Berkshire	6
2673	Wrangell	19
2674	Matagorda	5
2675	Galax (city)	20
2676	Chaffee	48
2677	Randolph	24
2678	Randolph	44
2679	Randolph	16
2680	Randolph	15
2681	Randolph	14
2682	Randolph	41
2683	Randolph	21
2684	Randolph	22
2685	Buffalo	38
2686	Buffalo	39
2687	Buffalo	26
2688	Sacramento	43
2689	Hot Spring	22
2690	Winnebago	39
2691	Winnebago	15
2692	Winnebago	8
2693	Wallowa	46
2694	Iberville	52
2695	Meeker	13
2696	Hardeman	5
2697	Hardeman	53
2698	Charlton	41
2699	Concho	5
2700	Ringgold	8
2701	Queen Anne's	7
2702	Harnett	24
2703	Miller	22
2704	Miller	41
2705	Miller	14
2706	Geary	47
2707	Surry	24
2708	Surry	20
2709	Cache	12
2710	Fulton	36
2711	Fulton	16
2712	Fulton	15
2713	Fulton	49
2714	Fulton	40
2715	Fulton	41
2716	Fulton	22
2717	Fulton	50
2718	Alexander	24
2719	Alexander	15
2720	Lander	34
2721	Martinsville (city)	20
2722	Hampton (city)	20
2723	Big Horn	45
2724	Big Horn	18
2725	Rio Arriba	32
2726	Scotland	24
2727	Scotland	14
2728	Chesapeake (city)	20
2729	Broward	33
2730	Morehouse	52
2731	Muskogee	42
2732	DeWitt	5
2733	San Jacinto	5
2734	Loudon	53
2735	Towns	41
2736	Missaukee	11
2737	Schuyler	36
2738	Schuyler	15
2739	Schuyler	14
2740	Shenandoah	20
2741	Essex	31
2742	Essex	36
2743	Essex	20
2744	Essex	30
2745	Essex	6
2746	Rich	12
2747	East Carroll	52
2748	Rice	13
2749	Rice	47
2750	Putnam	44
2751	Putnam	36
2752	Putnam	16
2753	Putnam	53
2754	Putnam	15
2755	Putnam	14
2756	Putnam	40
2757	Putnam	41
2758	Putnam	33
2759	Davidson	24
2760	Davidson	53
2761	Garden	26
2762	Alcona	11
2763	Otter Tail	13
2764	Eaton	11
2765	Caledonia	31
2766	Coweta	41
2767	Alger	11
2768	Utuado	4
2769	Lafayette	52
2770	Lafayette	17
2771	Lafayette	33
2772	Lafayette	22
2773	Lafayette	39
2774	Lafayette	14
2775	Ouray	48
2776	Oconto	39
2777	Itasca	13
2778	Ohio	16
2779	Ohio	44
2780	Ohio	49
2781	Zapata	5
2782	Doddridge	44
2783	Orocovis	4
2784	Hubbard	13
2785	Pinellas	33
2786	Bon Homme	38
2787	Leelanau	11
2788	New Kent	20
2789	Limestone	21
2790	Limestone	5
2791	Parke	16
2792	LaPorte	16
2793	Brantley	41
2794	Colfax	32
2795	Colfax	26
2796	Watonwan	13
2797	Newport News (city)	20
2798	Tuolumne	43
2799	Lassen	43
2800	Victoria	5
2801	Chittenden	31
2802	Hitchcock	26
2803	Jim Wells	5
2804	Delaware	36
2805	Delaware	8
2806	Delaware	40
2807	Delaware	16
2808	Delaware	42
2809	Delaware	50
2810	Nodaway	14
2811	Buchanan	20
2812	Buchanan	8
2813	Buchanan	14
2814	Douglas	46
2815	Douglas	48
2816	Douglas	15
2817	Douglas	14
2818	Douglas	38
2819	Douglas	13
2820	Douglas	41
2821	Douglas	47
2822	Douglas	35
2823	Douglas	39
2824	Douglas	26
2825	Douglas	34
2826	Schuylkill	50
2827	Shawano	39
2828	Rensselaer	36
2829	Albemarle	20
2830	Faribault	13
2831	Rogers	42
2832	Winchester (city)	20
2833	Sawyer	39
2834	Manatee	33
2835	Gaston	24
2836	Greenbrier	44
2837	Hyde	24
2838	Hyde	38
2839	Mahoning	40
2840	Prowers	48
2841	Burlington	30
2842	Meagher	18
2843	Skamania	35
2844	Barranquitas	4
2845	Morrow	46
2846	Morrow	40
2847	Stephens	5
2848	Stephens	42
2849	Stephens	41
2850	Banner	26
2851	Caldwell	52
2852	Caldwell	24
2853	Caldwell	5
2854	Caldwell	14
2855	Caldwell	49
2856	Switzerland	16
2857	Kittson	13
2858	Sanborn	38
2859	Posey	16
2860	Pettis	14
2861	Nantucket	6
2862	Ashley	22
2863	Bannock	10
2864	Dakota	13
2865	Dakota	26
2866	Toole	18
2867	Solano	43
2868	Moca	4
2869	Yell	22
2870	Kankakee	15
2871	Lipscomb	5
2872	Tyler	44
2873	Tyler	5
2874	Davis	8
2875	Davis	12
2876	Real	5
2877	Morris	30
2878	Morris	5
2879	Morris	47
2880	Corozal	4
2881	Harmon	42
2882	Newaygo	11
2883	Shasta	43
2884	Habersham	41
2885	Strafford	29
2886	Steuben	16
2887	Steuben	36
2888	Marlboro	37
2889	Carolina	4
2890	Bamberg	37
2891	Lemhi	10
2892	Alamosa	48
2893	Caroline	20
2894	Caroline	7
2895	Clinton	36
2896	Clinton	8
2897	Clinton	16
2898	Clinton	15
2899	Clinton	14
2900	Clinton	49
2901	Clinton	40
2902	Clinton	50
2903	Clinton	11
2904	Laclede	14
2905	St. Tammany	52
2906	Tulsa	42
2907	Northwest Arctic	19
2908	Allegan	11
2909	Highlands	33
2910	Niagara	36
2911	Twiggs	41
2912	Davie	24
2913	Powell	18
2914	Powell	49
2915	Wells	16
2916	Wells	25
2917	Bandera	5
2918	Morrill	26
2919	Refugio	5
2920	Gila	28
2921	Hampshire	44
2922	Hampshire	6
2923	Highland	20
2924	Highland	40
2925	Sioux	25
2926	Sioux	8
2927	Sioux	26
2928	San Juan	4
2929	San Juan	32
2930	San Juan	35
2931	San Juan	48
2932	San Juan	12
2933	Tallapoosa	21
2934	Beadle	38
2935	Barren	49
2936	Wilson	24
2937	Wilson	47
2938	Wilson	5
2939	Wilson	53
2940	Shawnee	47
2941	Lucas	8
2942	Lucas	40
2943	Coles	15
2944	Faulk	38
2945	Audrain	14
2946	Trumbull	40
2947	Cloud	47
2948	Norton (city)	20
2949	Christian	15
2950	Christian	14
2951	Christian	49
2952	Bedford	20
2953	Bedford	53
2954	Bedford	50
2955	Monterey	43
2956	Paulding	40
2957	Paulding	41
2958	Clear Creek	48
2959	Harford	7
2960	Rockland	36
2961	Huerfano	48
2962	Northumberland	20
2963	Northumberland	50
2964	Reagan	5
2965	Golden Valley	25
2966	Golden Valley	18
2967	St. Landry	52
2968	Dunn	25
2969	Dunn	39
2970	Winston	21
2971	Winston	17
2972	Waseca	13
2973	La Salle	5
2974	Eagle	48
2975	Camden	24
2976	Camden	41
2977	Camden	30
2978	Camden	14
2979	Onondaga	36
2980	St. Francis	22
2981	Musselshell	18
2982	Rooks	47
2983	Calvert	7
2984	Van Wert	40
2985	Rockwall	5
2986	Midland	5
2987	Midland	11
2988	Wabasha	13
2989	Walla Walla	35
2990	Venango	50
2991	Natchitoches	52
2992	Hatillo	4
2993	Gaines	5
2994	West Baton Rouge	52
2995	Meriwether	41
2996	Dawson	18
2997	Dawson	41
2998	Dawson	5
2999	Dawson	26
3000	Monona	8
3001	Garfield	18
3002	Garfield	35
3003	Garfield	48
3004	Garfield	42
3005	Garfield	12
3006	Garfield	26
3007	Auglaize	40
3008	Addison	31
3009	Thayer	26
3010	Sargent	25
3011	Plumas	43
3012	Churchill	34
3013	Harding	38
3014	Harding	32
3015	Susquehanna	50
3016	Pottawattamie	8
3017	Jones	24
3018	Jones	38
3019	Jones	8
3020	Jones	17
3021	Jones	41
3022	Jones	5
3023	Ness	47
3024	Woodbury	8
3025	Woodson	47
3026	Sitka	19
3027	Accomack	20
3028	Thomas	26
3029	Thomas	41
3030	Thomas	47
3031	Dutchess	36
3032	Cambria	50
3033	Norton	47
3034	Sibley	13
3035	Carbon	18
3036	Carbon	45
3037	Carbon	12
3038	Carbon	50
3039	Jasper	8
3040	Jasper	17
3041	Jasper	16
3042	Jasper	5
3043	Jasper	15
3044	Jasper	14
3045	Jasper	41
3046	Jasper	37
3047	Wharton	5
3048	Guernsey	40
3049	Whitfield	41
3050	Travis	5
3051	Niobrara	45
3052	Hughes	38
3053	Hughes	42
3054	Ida	8
3055	Gilpin	48
3056	Traill	25
3057	Lackawanna	50
3058	Richmond (city)	20
3059	Custer	38
3060	Custer	18
3061	Custer	48
3062	Custer	42
3063	Custer	10
3064	Custer	26
3065	Lowndes	21
3066	Lowndes	17
3067	Lowndes	41
3068	Kingman	47
3069	Jefferson Davis	52
3070	Jefferson Davis	17
3071	Palm Beach	33
3072	Ontonagon	11
3073	Gray	5
3074	Gray	47
3075	Greenwood	37
3076	Greenwood	47
3077	Isabela	4
3078	Yazoo	17
3079	Wagoner	42
3080	Iowa	39
3081	Iowa	8
3082	Woodward	42
3083	Benewah	10
3084	Tarrant	5
3085	Lares	4
3086	Maricopa	28
3087	Kootenai	10
3088	Camp	5
3089	Richmond	24
3090	Richmond	36
3091	Richmond	41
3092	Richmond	20
3093	Sweetwater	45
3094	Carson	5
3095	Archer	5
3096	Charles Mix	38
3097	Windham	31
3098	Windham	51
3099	Terry	5
3100	Peach	41
3101	Kodiak Island	19
3102	St. Joseph	16
3103	St. Joseph	11
3104	Liberty	18
3105	Liberty	41
3106	Liberty	33
3107	Liberty	5
3108	Radford (city)	20
3109	Bayfield	39
3110	Vigo	16
3111	Glascock	41
3112	Chautauqua	36
3113	Chautauqua	47
3114	Nance	26
3115	Gibson	16
3116	Gibson	53
3117	Foster	25
3118	Loudoun	20
3119	Quitman	17
3120	Quitman	41
3121	Attala	17
3122	Cottonwood	13
3123	Harvey	47
3124	Suwannee	33
3125	Keweenaw	11
3126	Duplin	24
3127	Bond	15
3128	Sebastian	22
3129	San GermÃ¡n	4
3130	La Crosse	39
3131	McDonough	15
3132	Amite	17
3133	Letcher	49
3134	Grafton	29
3135	Orange	24
3136	Orange	31
3137	Orange	36
3138	Orange	16
3139	Orange	5
3140	Orange	43
3141	Orange	33
3142	Orange	20
3143	Contra Costa	43
3144	Calaveras	43
3145	Elkhart	16
3146	Cocke	53
3147	Tallahatchie	17
3148	Lake of the Woods	13
3149	Missoula	18
3150	McKinley	32
3151	Napa	43
3152	Frederick	20
3153	Frederick	7
3154	Macon	24
3155	Macon	41
3156	Macon	21
3157	Macon	53
3158	Macon	15
3159	Macon	14
3160	Mono	43
3161	Navajo	28
3162	Spartanburg	37
3163	San Lorenzo	4
3164	Jayuya	4
3165	Falls Church (city)	20
3166	Oceana	11
3167	Valley	10
3168	Valley	18
3169	Valley	26
3170	Converse	45
3171	Boise	10
3172	Valdez-Cordova	19
3173	Arenac	11
3174	Cass	8
3175	Cass	16
3176	Cass	5
3177	Cass	15
3178	Cass	14
3179	Cass	13
3180	Cass	25
3181	Cass	26
3182	Cass	11
3183	Rockcastle	49
3184	Howell	14
3185	Throckmorton	5
3186	Tehama	43
3187	Nash	24
3188	Lapeer	11
3189	Jim Hogg	5
3190	Mora	32
3191	McHenry	25
3192	McHenry	15
3193	Scurry	5
3194	Esmeralda	34
3195	St. Louis	13
3196	St. Louis	14
3197	St. Louis (city)	14
3198	Clearwater	10
3199	Clearwater	13
3200	Bleckley	41
3201	Reno	47
3202	Palo Alto	8
3203	Nowata	42
3204	Multnomah	46
3205	Alcorn	17
3206	Gage	26
3207	Sevier	22
3208	Sevier	53
3209	Sevier	12
3210	Riverside	43
3211	Pittsburg	42
3212	Portsmouth (city)	20
3213	Watauga	24
3214	San Patricio	5
3215	Hunt	5
3216	St. Helena	52
3217	King	35
3218	King	5
3219	Chouteau	18
3220	Horry	37
3221	Ventura	43
3222	Las MarÃ­as	4
3223	Clackamas	46
3224	Fauquier	20
3225	Wetzel	44
3226	Tom Green	5
3227	El Paso	5
3228	El Paso	48
3229	Noble	16
3230	Noble	42
3231	Noble	40
3232	Cochise	28
3233	Prince Edward	20
3234	Parmer	5
3235	Montour	50
3236	Saunders	26
3237	Le Sueur	13
3238	Oneida	36
3239	Oneida	39
3240	Oneida	10
3241	Roberts	38
3242	Roberts	5
3243	Manassas Park (city)	20
3244	Greensville	20
3245	Lampasas	5
3246	Deschutes	46
3247	Kemper	17
3248	Catahoula	52
3249	Cochran	5
3250	Atkinson	41
3251	Huntington	16
3252	Hopkins	5
3253	Hopkins	49
3254	McMinn	53
3255	Licking	40
3256	Scioto	40
3257	Guthrie	8
3258	Atchison	14
3259	Atchison	47
3260	Grayson	20
3261	Grayson	5
3262	Grayson	49
3263	Hartley	5
3264	Karnes	5
3265	Adjuntas	4
3266	Bracken	49
3267	Luce	11
3268	Yakima	35
3269	Beckham	42
3270	Conecuh	21
3271	Dukes	6
3272	Valencia	32
3273	Virginia Beach (city)	20
3274	Hernando	33
3275	Cleburne	21
3276	Cleburne	22
\.


--
-- TOC entry 2201 (class 0 OID 24718)
-- Dependencies: 193
-- Data for Name: restriction_item_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restriction_item_type (restriction_item_id, restriction_item_code, restriction_item_name) FROM stdin;
\.


--
-- TOC entry 2194 (class 0 OID 16759)
-- Dependencies: 186
-- Data for Name: state_restriction_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state_restriction_item (state_rule_id, state_age, state_effective_date, item_id, item_name, state_id) FROM stdin;
\.


--
-- TOC entry 2202 (class 0 OID 24726)
-- Dependencies: 194
-- Data for Name: state_restriction_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state_restriction_rule (state_restriction_rule_id, age, effective_date, restriction_item_id, state_id) FROM stdin;
\.


--
-- TOC entry 2203 (class 0 OID 24731)
-- Dependencies: 195
-- Data for Name: state_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state_type (state_id, state_code, state_name, country_id) FROM stdin;
2	DE	Delaware	1
3	HI	Hawaii	1
4	PR	Puerto Rico	1
5	TX	Texas	1
6	MA	Massachusetts	1
7	MD	Maryland	1
8	IA	Iowa	1
9	ME	Maine	1
10	ID	Idaho	1
11	MI	Michigan	1
12	UT	Utah	1
13	MN	Minnesota	1
14	MO	Missouri	1
15	IL	Illinois	1
16	IN	Indiana	1
17	MS	Mississippi	1
18	MT	Montana	1
19	AK	Alaska	1
20	VA	Virginia	1
21	AL	Alabama	1
22	AR	Arkansas	1
23	VI	Virgin Islands	1
24	NC	North Carolina	1
25	ND	North Dakota	1
26	NE	Nebraska	1
27	RI	Rhode Island	1
28	AZ	Arizona	1
29	NH	New Hampshire	1
30	NJ	New Jersey	1
31	VT	Vermont	1
32	NM	New Mexico	1
33	FL	Florida	1
34	NV	Nevada	1
35	WA	Washington	1
36	NY	New York	1
37	SC	South Carolina	1
38	SD	South Dakota	1
39	WI	Wisconsin	1
40	OH	Ohio	1
41	GA	Georgia	1
42	OK	Oklahoma	1
43	CA	California	1
44	WV	West Virginia	1
45	WY	Wyoming	1
46	OR	Oregon	1
47	KS	Kansas	1
48	CO	Colorado	1
49	KY	Kentucky	1
50	PA	Pennsylvania	1
51	CT	Connecticut	1
52	LA	Louisiana	1
53	TN	Tennessee	1
54	DC	District of Columbia	1
\.


--
-- TOC entry 2204 (class 0 OID 24739)
-- Dependencies: 196
-- Data for Name: store_csv_batch_job_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_csv_batch_job_entity (store_csv_batch_job_id, run_date_time) FROM stdin;
\.


--
-- TOC entry 2205 (class 0 OID 24744)
-- Dependencies: 197
-- Data for Name: store_csv_rule_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_csv_rule_entity (store_csv_rule_id, effective_date, geography_type, restriction_age, restriction_item_id, store_number, store_csv_batch_job_id) FROM stdin;
\.


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 187
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 41118, true);


--
-- TOC entry 2048 (class 2606 OID 24694)
-- Name: city_restriction_rule city_restriction_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city_restriction_rule
    ADD CONSTRAINT city_restriction_rule_pkey PRIMARY KEY (city_restriction_rule_id);


--
-- TOC entry 2050 (class 2606 OID 24699)
-- Name: city_type city_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city_type
    ADD CONSTRAINT city_type_pkey PRIMARY KEY (city_id);


--
-- TOC entry 2052 (class 2606 OID 24707)
-- Name: country_type country_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_type
    ADD CONSTRAINT country_type_pkey PRIMARY KEY (country_id);


--
-- TOC entry 2054 (class 2606 OID 24712)
-- Name: county_restriction_rule county_restriction_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_restriction_rule
    ADD CONSTRAINT county_restriction_rule_pkey PRIMARY KEY (county_restriction_rule_id);


--
-- TOC entry 2056 (class 2606 OID 24717)
-- Name: county_type county_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_type
    ADD CONSTRAINT county_type_pkey PRIMARY KEY (county_id);


--
-- TOC entry 2058 (class 2606 OID 24725)
-- Name: restriction_item_type restriction_item_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restriction_item_type
    ADD CONSTRAINT restriction_item_type_pkey PRIMARY KEY (restriction_item_id);


--
-- TOC entry 2046 (class 2606 OID 16763)
-- Name: state_restriction_item state_restriction_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_restriction_item
    ADD CONSTRAINT state_restriction_item_pkey PRIMARY KEY (state_rule_id);


--
-- TOC entry 2060 (class 2606 OID 24730)
-- Name: state_restriction_rule state_restriction_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_restriction_rule
    ADD CONSTRAINT state_restriction_rule_pkey PRIMARY KEY (state_restriction_rule_id);


--
-- TOC entry 2062 (class 2606 OID 24738)
-- Name: state_type state_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_type
    ADD CONSTRAINT state_type_pkey PRIMARY KEY (state_id);


--
-- TOC entry 2064 (class 2606 OID 24743)
-- Name: store_csv_batch_job_entity store_csv_batch_job_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_csv_batch_job_entity
    ADD CONSTRAINT store_csv_batch_job_entity_pkey PRIMARY KEY (store_csv_batch_job_id);


--
-- TOC entry 2066 (class 2606 OID 24748)
-- Name: store_csv_rule_entity store_csv_rule_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_csv_rule_entity
    ADD CONSTRAINT store_csv_rule_entity_pkey PRIMARY KEY (store_csv_rule_id);


--
-- TOC entry 2067 (class 2606 OID 24749)
-- Name: city_restriction_rule fk1u1f7xalb4eyn25gfo30wk87l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city_restriction_rule
    ADD CONSTRAINT fk1u1f7xalb4eyn25gfo30wk87l FOREIGN KEY (city_id) REFERENCES public.city_type(city_id);


--
-- TOC entry 2075 (class 2606 OID 24789)
-- Name: state_type fk20y6fa9eghs6m4b9kiukh1fod; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_type
    ADD CONSTRAINT fk20y6fa9eghs6m4b9kiukh1fod FOREIGN KEY (country_id) REFERENCES public.country_type(country_id);


--
-- TOC entry 2071 (class 2606 OID 24769)
-- Name: county_restriction_rule fk36m9bynmiwxak6j0cqr9lbn59; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_restriction_rule
    ADD CONSTRAINT fk36m9bynmiwxak6j0cqr9lbn59 FOREIGN KEY (restriction_item_id) REFERENCES public.restriction_item_type(restriction_item_id);


--
-- TOC entry 2068 (class 2606 OID 24754)
-- Name: city_restriction_rule fk4tbtdveaegprrjp6bxlkc20mr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city_restriction_rule
    ADD CONSTRAINT fk4tbtdveaegprrjp6bxlkc20mr FOREIGN KEY (restriction_item_id) REFERENCES public.restriction_item_type(restriction_item_id);


--
-- TOC entry 2069 (class 2606 OID 24759)
-- Name: city_type fkahkyvt0i6kkavw4ujmklusfgo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city_type
    ADD CONSTRAINT fkahkyvt0i6kkavw4ujmklusfgo FOREIGN KEY (county_id) REFERENCES public.county_type(county_id);


--
-- TOC entry 2073 (class 2606 OID 24779)
-- Name: state_restriction_rule fkhqfkw6ltcsvwpyejlxp4n41mj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_restriction_rule
    ADD CONSTRAINT fkhqfkw6ltcsvwpyejlxp4n41mj FOREIGN KEY (restriction_item_id) REFERENCES public.restriction_item_type(restriction_item_id);


--
-- TOC entry 2072 (class 2606 OID 24774)
-- Name: county_type fkio2ngabkpygpxvf593j1jm39m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_type
    ADD CONSTRAINT fkio2ngabkpygpxvf593j1jm39m FOREIGN KEY (state_id) REFERENCES public.state_type(state_id);


--
-- TOC entry 2070 (class 2606 OID 24764)
-- Name: county_restriction_rule fkokkrfgotd411iw5qnaeqnbvua; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.county_restriction_rule
    ADD CONSTRAINT fkokkrfgotd411iw5qnaeqnbvua FOREIGN KEY (county_id) REFERENCES public.county_type(county_id);


--
-- TOC entry 2076 (class 2606 OID 24794)
-- Name: store_csv_rule_entity fkorcinrw2cpyqh699mj0hptl5o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_csv_rule_entity
    ADD CONSTRAINT fkorcinrw2cpyqh699mj0hptl5o FOREIGN KEY (store_csv_batch_job_id) REFERENCES public.store_csv_batch_job_entity(store_csv_batch_job_id);


--
-- TOC entry 2074 (class 2606 OID 24784)
-- Name: state_restriction_rule fkpnv9f5iwlp5hsykh21mgkw8li; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state_restriction_rule
    ADD CONSTRAINT fkpnv9f5iwlp5hsykh21mgkw8li FOREIGN KEY (state_id) REFERENCES public.state_type(state_id);


-- Completed on 2019-09-04 13:50:52

--
-- PostgreSQL database dump complete
--

