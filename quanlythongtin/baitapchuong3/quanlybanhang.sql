drop database if exists quanlybanhang;
create database quanlybanhang;
use quanlybanhang;


SET DATEFORMAT dmy;

drop table if exists KHACHHANG;
create table KHACHHANG (
    MAKH varchar(10) not null,
    HOTEN varchar(30),
    DCHI varchar(50),
    SODT varchar(10), 
    NGSINH datetime, 
    DOANHSO money,
    NGDK datetime,
    primary key(MAKH)
);

insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','08823451','22/10/1960',13060000,'22/07/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','04/03/1974',280000,'30/07/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','06/12/1980',3860000,'08/05/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','03/09/1965',250000,'10/02/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','03/10/1950',21000,'28/10/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981',915000,'24/11/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','04/06/1971',12500,'12/01/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','01/10/1971',365000,'13/12/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','09/03/1979',70000,'14/01/2007');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','05/02/1983',67500,'16/01/2007');


drop table if exists SANPHAM;
create table SANPHAM (
    MASP varchar(10) not null, 
    TENSP varchar(30),
    DVT varchar(10),
    NUOCSX varchar(10),
    GIA money,
    primary key(MASP)
);

insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BC01','But chi','cay','Singapore',3000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BC02','But chi','cay','Singapore',5000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BC03','But chi','cay','Viet Nam',3500);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BC04','But chi','hop','Viet Nam',30000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BB01','But bi','cay','Viet Nam',5000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BB02','But bi','cay','Trung Quoc',7000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('BB03','But bi','hop','Thai Lan',100000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV05','Tap 100 trang','chuc','Viet Nam',23000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV06','Tap 200 trang','chuc','Viet Nam',53000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('TV07','Tap 100 trang','chuc','Trung Quoc',34000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST01','So tay 500 trang','quyen','Trung Quoc',40000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST02','So tay loai 1','quyen','Viet Nam',55000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST03','So tay loai 2','quyen','Viet Nam',51000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST04','So tay','quyen','Thai Lan',55000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST05','So tay mong','quyen','Thai Lan',20000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST06','Phan viet bang','hop','Viet Nam',5000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST07','Phan khong bui','hop','Viet Nam',7000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST08','Bong bang','cai','Viet Nam',1000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST09','But long','cay','Viet Nam',5000);
insert into SANPHAM (MASP,TENSP, DVT, NUOCSX, GIA) values('ST10','But long','cay','Trung Quoc',7000);

drop table if exists NHANVIEN;
create table NHANVIEN (
  MANV varchar(10) not null,
  HOTEN varchar(30),
  NGVL datetime,
  SODT varchar(10),
  primary key(MANV)
);

insert into NHANVIEN(MANV,HOTEN,SODT,NGVL) values('NV01','Nguyen Nhu Nhut', '0927345678', '13/4/2006')
insert into NHANVIEN(MANV,HOTEN,SODT,NGVL) values('NV02','Le Thi Phi Yen', '0987567390', '21/4/2006')
insert into NHANVIEN(MANV,HOTEN,SODT,NGVL) values('NV03','Nguyen Van B', '0997047382', '27/4/2006')
insert into NHANVIEN(MANV,HOTEN,SODT,NGVL) values('NV04','Ngo Thanh Tuan', '0913758498', '24/6/2006')
insert into NHANVIEN(MANV,HOTEN,SODT,NGVL) values('NV05','Nguyen Thi Truc Thanh', '0918590387', '20/7/2006')


-- alter table HOADON drop constraint if exists fk_hoadon_khachhang;
-- alter table HOADON drop constraint if exists fk_hoadon_nhanvien;
drop table if exists HOADON;
create table HOADON (
    SOHD int not null,
    NGHD datetime,
    MAKH varchar(10),
    MANV varchar(10),
    TRIGIA float,
    primary key(SOHD)   
);
alter table HOADON add  constraint fk_hoadon_khachhang foreign key (MAKH) references KHACHHANG(MAKH);  
alter table HOADON add constraint fk_hoadon_nhanvien foreign key (MANV) references NHANVIEN(MANV);

insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1001,'23/07/2006','KH01','NV01',320000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1002,'08/12/2006','KH01','NV02',840000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1003,'23/08/2006','KH02','NV01',100000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1004,'09/01/2006','KH02','NV01',180000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1005,'20/10/2006','KH01','NV02',3800000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1006,'16/10/2006','KH01','NV03',2430000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1007,'28/10/2006','KH03','NV03',510000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1008,'28/10/2006','KH01','NV03',440000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1009,'28/10/2006','KH03','NV04',200000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1010,'11/01/2006','KH01','NV01',5200000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1011,'11/04/2006','KH04','NV03',250000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1012,'30/11/2006','KH05','NV03',21000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1013,'12/12/2006','KH06','NV01',5000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1014,'31/12/2006','KH03','NV02',3150000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1015,'01/01/2007','KH06','NV01',910000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1016,'01/01/2007','KH07','NV02',12500);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1017,'01/02/2007','KH08','NV03',35000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1018,'13/01/2007','KH08','NV03',330000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1019,'13/01/2007','KH01','NV03',30000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1020,'14/01/2007','KH09','NV04',70000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1021,'16/01/2007','KH10','NV03',67500);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1022,'16/01/2007','KH10',NULL,7000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1023,'16/01/2007','KH10',NULL,7000);


-- alter table CTHD drop constraint fk_cthd_hoadon;
-- alter table CTHD drop constraint fk_cthd_sanpham;
drop table if exists CTHD;
create table CTHD(
    SOHD int not null,
    MASP varchar(10) not null,
    SL int,
    primary key(SOHD,MASP)    
);
alter table CTHD  add constraint fk_cthd_hoadon foreign key (SOHD) references HOADON(SOHD);
alter table CTHD  add constraint fk_cthd_sanpham foreign key (MASP) references SANPHAM(MASP);

insert into CTHD (SOHD,MASP,SL) values(1001,'TV02',10);
insert into CTHD (SOHD,MASP,SL) values(1001,'ST01',5);
insert into CTHD (SOHD,MASP,SL) values(1001,'BC01',5);
insert into CTHD (SOHD,MASP,SL) values(1001,'BC02',10);
insert into CTHD (SOHD,MASP,SL) values(1001,'ST08',10);
insert into CTHD (SOHD,MASP,SL) values(1002,'BC04',20);where
insert into CTHD (SOHD,MASP,SL) values(1002,'BB01',20);
insert into CTHD (SOHD,MASP,SL) values(1002,'BB02',20);
insert into CTHD (SOHD,MASP,SL) values(1003,'BB03',10);
insert into CTHD (SOHD,MASP,SL) values(1004,'TV01',20);
insert into CTHD (SOHD,MASP,SL) values(1004,'TV02',10);
insert into CTHD (SOHD,MASP,SL) values(1004,'TV03',10);
insert into CTHD (SOHD,MASP,SL) values(1004,'TV04',10);
insert into CTHD (SOHD,MASP,SL) values(1005,'TV05',50);
insert into CTHD (SOHD,MASP,SL) values(1005,'TV06',50);
insert into CTHD (SOHD,MASP,SL) values(1006,'TV07',20);
insert into CTHD (SOHD,MASP,SL) values(1006,'ST01',30);
insert into CTHD (SOHD,MASP,SL) values(1006,'ST02',10);
insert into CTHD (SOHD,MASP,SL) values(1007,'ST03',10);
insert into CTHD (SOHD,MASP,SL) values(1008,'ST04',8);
insert into CTHD (SOHD,MASP,SL) values(1009,'ST05',10);
insert into CTHD (SOHD,MASP,SL) values(1010,'TV07',50);
insert into CTHD (SOHD,MASP,SL) values(1010,'ST07',50);
insert into CTHD (SOHD,MASP,SL) values(1010,'ST08',100);
insert into CTHD (SOHD,MASP,SL) values(1010,'ST04',50);
insert into CTHD (SOHD,MASP,SL) values(1010,'TV03',100);
insert into CTHD (SOHD,MASP,SL) values(1011,'ST06',50);
insert into CTHD (SOHD,MASP,SL) values(1012,'ST07',3);
insert into CTHD (SOHD,MASP,SL) values(1013,'ST08',5);
insert into CTHD (SOHD,MASP,SL) values(1014,'BC02',80);
insert into CTHD (SOHD,MASP,SL) values(1014,'BB02',100);
insert into CTHD (SOHD,MASP,SL) values(1014,'BC04',60);
insert into CTHD (SOHD,MASP,SL) values(1014,'BB01',50);
insert into CTHD (SOHD,MASP,SL) values(1015,'BB02',30);
insert into CTHD (SOHD,MASP,SL) values(1015,'BB03',7);
insert into CTHD (SOHD,MASP,SL) values(1016,'TV01',5);
insert into CTHD (SOHD,MASP,SL) values(1017,'TV02',1);
insert into CTHD (SOHD,MASP,SL) values(1017,'TV03',1);
insert into CTHD (SOHD,MASP,SL) values(1017,'TV04',5);
insert into CTHD (SOHD,MASP,SL) values(1018,'ST04',6);
insert into CTHD (SOHD,MASP,SL) values(1019,'ST05',1);
insert into CTHD (SOHD,MASP,SL) values(1019,'ST06',2);
insert into CTHD (SOHD,MASP,SL) values(1020,'ST07',10);
insert into CTHD (SOHD,MASP,SL) values(1021,'ST08',5);
insert into CTHD (SOHD,MASP,SL) values(1021,'TV01',7);
insert into CTHD (SOHD,MASP,SL) values(1021,'TV02',10);
insert into CTHD (SOHD,MASP,SL) values(1022,'ST07',1);
insert into CTHD (SOHD,MASP,SL) values(1023,'ST04',6);


-- Cau I.2
alter table SANPHAM add GHICHU varchar(20);

-- Cau I.3
alter table KHACHHANG add LOAIKH tinyint;

-- cau I.4
alter table SANPHAM alter column GHICHU varchar(100);

-- cau I.5
alter table SANPHAM drop column GHICHU;

-- cau I.6
alter table KHACHHANG alter column LOAIKH varchar(20);

-- cau I.7 
alter table SANPHAM add check(DVT in ('cay','hop','cai','quyen','chuc'));

-- cau I.8 
select distinct from Hoadon
alter table SANPHAM add check (GIA >= 500);

-- cau I.9
alter table CTHD add check(SL >= 1);

-- cau I.10
alter table KHACHHANG add check(NGDK >  NGSINH);


--- III
-- 1
select MASP ,TENSP from SANPHAM where NUOCSX='Trung Quoc';

-- 2
select MASP ,TENSP from SANPHAM where DVT  IN ('cay','quyen');

-- 3
select MASP ,TENSP from SANPHAM where MASP like 'B%01';

-- 4
select * from SANPHAM where NUOCSX in('Trung Quoc') and  GIA between  30000 and  40000;

--- 5
select * from SANPHAM where NUOCSX in('Trung Quoc', 'Thai Lan') and  GIA between  30000 and  40000;

-- 6
select SOHD ,TRIGIA from HOADON where NGHD between '1/1/2007' and  '2/1/2007';

-- 7

select SOHD,TRIGIA from HOADON where year(NGHD) = 2007 and  month(NGHD) = 1 
order by NGHD desc, TRIGIA ASC

-- 8
select k.MAKH, k.HOTEN from KHACHHANG k join HOADON h on k.MAKH = h.MAKH where h.NGHD = '1/1/2007';

-- 9
select h.SOHD,h.TRIGIA from HOADON h join NHANVIEN n on h.MANV = n.MANV where n.HOTEN ='Nguyen Van B' and  h.NGHD='28/10/2006'; 

-- 10

select s.MASP, s.TENSP from SANPHAM s join CTHD c on s.MASP = c.MASP 
join HOADON h on c.SOHD = h.SOHD join KHACHHANG k on h.MAKH = k.MAKH 
where k.HOTEN ='Nguyen Van A' and  year(h.NGHD)= 2006 and  month(h.NGHD)= 10;

--11.	 
select SOHD
from CTHD
where MASP IN ('BB01', 'BB02')

--12. 
select SOHD
from CTHD
where MASP IN ('BB01', 'BB02')
and  SL between  10 and  20
--13.	 
select SOHD
from CTHD A
where A.MASP = 'BB01'
and  SL between  10 and  20
and  exists(select *
from CTHD B
where B.MASP = 'BB02'
and  SL between  10 and  20
and  A.SOHD = B.SOHD)

--14.	 
select distinct S.MASP, TENSP
from SANPHAM S join  CTHD C
ON S.MASP = C.MASP
where NUOCSX = 'TRUNG QUOC'
and  C.SOHD IN(select distinct C2.SOHD
from CTHD C2 join  HOADON H
ON C2.SOHD = H.SOHD
where NGHD ='1/1/2007')


-- 15
select MASP,TENSP from SANPHAM 
except
select s.MASP,s.TENSP from SANPHAM s join CTHD c on s.MASP = c.MASP 
join HOADON h on c.SOHD = h.SOHD 

-- 16 

select MASP, TENSP from SANPHAM 
except
select s.MASP, s.TENSP from SANPHAM s join CTHD c on s.MASP = c.MASP 
join HOADON h on c.SOHD = h.SOHD  
where year(h.NGHD) = 2006


-- 17

select MASP, TENSP from SANPHAM where NUOCSX ='Trung Quoc'
except
select s.MASP, s.TENSP from SANPHAM s join CTHD c on s.MASP = c.MASP hs 
join HOADON h on c.SOHD = h.SOHD  
where year(h.NGHD) = 2006 and  s.NUOCSX ='Trung Quoc'

-- 18 
select distinct s.MASP, s.TENSP from SANPHAM s join CTHD c on s.MASP = c.MASP 
join HOADON h on c.SOHD = h.SOHD  
where s.NUOCSX ='Singapore'

--19.	 
select H.SOHD 
from HOADON H
where YEAR(NGHD) = 2006 and  NOT exists(select *
from SANPHAM S
where NUOCSX = 'SINGAPORE'
and  NOT exists(select * 
from CTHD C
where C.SOHD = H.SOHD
and  C.MASP = S.MASP))
--20.	 
select COUNT(*)
from HOADON H
where MAKH NOT IN(select MAKH
from KHACHHANG K 
where K.MAKH = H.MAKH)
--21.	 
select COUNT(distinct MASP)
from CTHD C join  HOADON H
ON C.SOHD = H.SOHD
where YEAR(NGHD) = 2006
--22.	 
select MAX(TRIGIA) AS MAX, MIN(TRIGIA) AS MIN
from HOADON
--23.	 
select AVG(TRIGIA) TB
from HOADON
--24.	 
select SUM(TRIGIA) AS DOANHTHU
from HOADON
where YEAR(NGHD) = 2006
--25.	 
select SOHD
from HOADON
where TRIGIA = (select MAX(TRIGIA)
from HOADON)
--26.	 
select HOTEN
from KHACHHANG K join  HOADON H
ON K.MAKH = H.MAKH 
and  SOHD = (select SOHD
			from HOADON
			where TRIGIA = (select MAX(TRIGIA)
							from HOADON))
--27.	 
select TOP 3 MAKH, HOTEN
from KHACHHANG
order by DOANHSO DESC
--28.	 
select MASP, TENSP
from SANPHAM
where GIA IN (select distinct TOP 3 GIA
			  from SANPHAM
			  order by GIA DESC)
--29.	 
select MASP, TENSP
from SANPHAM
where NUOCSX = 'THAI LAN' and  GIA IN (select distinct TOP 3 GIA
from SANPHAM
order by GIA DESC)
--30.	 
select MASP, TENSP
from SANPHAM
where NUOCSX = 'TRUNG QUOC' and  GIA IN (select distinct TOP 3 GIA
from SANPHAM
order by GIA DESC)
--31.	 
select TOP 3 MAKH, HOTEN
from KHACHHANG
order by DOANHSO DESC

-- 32 
select s.NUOCSX, count(s.MASP)
from SANPHAM s 
group by   s.NUOCSX


-- 33
select s.NUOCSX, max(s.GIA), min(s.GIA), avg(s.GIA)
from SANPHAM s 
group by   s.NUOCSX

-- 34
select h.NGHD , sum(h.TRIGIA) as tongdoanhthu
from HOADON h join CTHD c  on h.SOHD = c.SOHD 
group by  h.NGHD 


-- 35 
select s.MASP , sum(c.SL)
from SANPHAM s join CTHD c  on s.MASP = c.MASP
join HOADON h on h.SOHD = c.SOHD 
where MONTH (h.NGHD) = 10 and  YEAR(h.NGHD) = 2006
group by  s.MASP 

-- 36
select MONTH(h.NGHD) as thang, sum(h.TRIGIA) as tongdoanhthu
from HOADON h join CTHD c on h.SOHD = c.SOHD 
where YEAR(h.NGHD) = 2006
group by  MONTH(h.NGHD)


-- 37
select h.SOHD 
from SANPHAM s join CTHD c on s.MASP = c.MASP 
join HOADON h on c.SOHD = h.SOHD
group by  h.SOHD 
having count(s.MASP)>4

-- 38
select h.SOHD 
from SANPHAM s join CTHD c on s.MASP = c.MASP 
join HOADON h on c.SOHD = h.SOHD
where s.NUOCSX = 'Viet Nam'
group by  h.SOHD 
having count(s.MASP)>3

--39. 
from HOADON
where SOHD IN(select SOHD
from CTHD C join  SANPHAM S
ON C.MASP = S.MASP
where NUOCSX = 'VIET NAM' and  SL >= 3)
--40.	 
select MAKH, HOTEN
from KHACHHANG
where MAKH = (select TOP 1 MAKH
from HOADON
group by  MAKH
order by COUNT(distinct SOHD) DESC)
--41.	 
select TOP 1 MONTH(NGHD) AS THANG_DOANHSO_MAX
from HOADON
where YEAR(NGHD) = 2006
group by  MONTH(NGHD)
order by SUM(TRIGIA) DESC
--42.	 
select MASP, TENSP
from SANPHAM
where MASP = (select TOP 1 MASP
from CTHD
group by  MASP
order by SUM(SL) DESC)
