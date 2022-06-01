create database quanlyrapchieuphim;

use quanlyrapchieuphim;

SET DATEFORMAT dmy;

create table PHIM (
	MAPHIM varchar(10) not null,
	TENPHIM  varchar(30) not null,
	DAODIEN  varchar(30) not null,
	IMDB float,
	primary key (MAPHIM)
);

create  table GHE (
	MAGHE varchar(10) not null,
	RAP varchar(10) not null,
	LOAIGHE varchar(5) not null,
	SOGHE int, 
	TRANGTHAI varchar (10) not null,
	primary key(MAGHE)
);

create table DATVE (
	MADV varchar(10) not null,
	MAPHIM varchar(10) not null,
	NGDAT date, 
	TONGCONG int ,
	primary key(MADV)
);

create table CTDV (
	MADV varchar(10) not null,
	MAGHE varchar(10) not null,
	GIAGHE float ,
	primary key(MADV,MAGHE)
);

alter table DATVE add constraint fk_datve_phim foreign key (MAPHIM) references PHIM (MAPHIM);
alter table CTDV add constraint fk_ctdv_datve foreign key (MADV) references DATVE (MADV);
alter table CTDV add constraint fk_ctdv_ghe foreign key (MAGHE) references GHE (MAGHE);

-- cau a
alter table  GHE add constraint  trang_thai_ghe check (TRANGTHAI IN ('Đã đặt', 'Còn Trống'));

-- cau b
delete from PHIM where DAODIEN='Phan Gia Nhật Linh';

-- cau c
select * 
from DATVE 
where NGDAT='01/04/2022'
order by TONGCONG desc;

-- cau d 
select GHE.* 
from GHE join CTDV on GHE.MAGHE  = CTDV.MAGHE
join DATVE on DATVE.MADV = CTDV.MADV 
where year(DATVE.NGDAT) = 2022 and month(DATVE.NGDAT) = 4
order by CTDV.GIAGHE asc;

-- cau e 
select PHIM.TENPHIM , PHIM.IMDB 
from PHIM join DATVE on PHIM.MAPHIM  = DATVE.MAPHIM 
join CTDV on CTDV.MADV = DATVE.MADV 
where CTDV.GIAGHE>=100000;

-- cau f 
select * 
from PHIM 
where PHIM.MAPHIM  =  (
	select DATVE.MAPHIM  from DATVE 
	where PHIM.MAPHIM  = DATVE.MAPHIM 
	and PHIM.DAODIEN ='Vủ Ngọc Đãng'
	group by  DATVE.MAPHIM
	order by count(DATVE.MAPHIM) DESC 
	limit 1
);

-- cau g

select PHIM.* 
from PHIM join DATVE on PHIM.MAPHIM  = DATVE.MAPHIM 
join CTDV on CTDV.MADV = DATVE.MADV 
join GHE on CTDV.MAGHE = GHE.MAGHE 
where PHIM.IMDB > 6 
and GHE.LOAIGHE='VIP';

-- cau h 
select GHE.* 
from PHIM join DATVE on PHIM.MAPHIM  = DATVE.MAPHIM 
join CTDV on CTDV.MADV = DATVE.MADV 
join GHE on CTDV.MAGHE = GHE.MAGHE 
where PHIM.IMDB > 7.5 and GHE.TRANGTHAI='Đã Đặt' ;
