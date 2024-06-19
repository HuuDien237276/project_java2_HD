-- Table: public.hoinghi

-- DROP TABLE IF EXISTS public.hoinghi;

CREATE TABLE IF NOT EXISTS public.hoinghi
(
    mahoinghi character varying(10) COLLATE pg_catalog."default" NOT NULL,
    tenhoinghi character varying(30) COLLATE pg_catalog."default",
    songuoi integer,
    maloaiphong character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT hoinghi_pkey PRIMARY KEY (mahoinghi),
    CONSTRAINT f_lp_hn FOREIGN KEY (maloaiphong)
        REFERENCES public.loaiphong (maloaiphong) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.hoinghi
    OWNER to postgres;
	
	
	-- Table: public.loaiphong

-- DROP TABLE IF EXISTS public.loaiphong;

CREATE TABLE IF NOT EXISTS public.loaiphong
(
    maloaiphong character varying(10) COLLATE pg_catalog."default" NOT NULL,
    tenloaiphong character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT loaiphong_pkey PRIMARY KEY (maloaiphong)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.loaiphong
    OWNER to postgres;