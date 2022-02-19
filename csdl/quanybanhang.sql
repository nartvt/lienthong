create database quanlybanhang;
use quanlybanhang;


create table KHACHHANG (
    MAKH varchar(10) not null,
    HOTEN varchar(30),
    DCHI varchar(50),
    SODT varchar(10), 
    NGSINH datetime, 
    DOANHSO float,
    NGDK datetime,
    primary key(MAKH)
);
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','08823451','22/10/1960',13060000,'22/07/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','04/03/1974',280000,'30/07/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','06/12/1980',3860000,'38845');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','03/09/1965',250000,'38758');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','03/10/1950',21000,'28/10/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981',915000,'24/11/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','04/06/1971',12500,'38729');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','01/10/1971',365000,'13/12/2006');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','09/03/1979',70000,'14/01/2007');
insert into KHACHHANG(MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK) values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','05/02/1983',67500,'16/01/2007');



create table SANPHAM (
    MASP varchar(10) not null, 
    TENSP varchar(30),
    DVT varchar(10),
    NUOCSX varchar(10),
    GIA float,
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

create table HOADON (
    SOHD int not null,
    NGHD datetime,
    MAKH varchar(10),
    MANV varchar(10),
    TRIGIA float,
    primary key(SOHD),
    constraint fk_hoadon_khachhang foreign key (MAKH) references KHACHHANG(MAKH),
    constraint fk_hoadon_nhanvien foreign key (MANV) references NHANVIEN(MANV)
);
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
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1022,'16/01/2007','Null','NV03',7000);
insert into HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) values(1023,'17/01/2007','Null','NV01',330000);



create table CTHD(
    SOHD int not null,
    MASP varchar(10) not null,
    SL int,
    primary key(SOHD,MASP),
    constraint fk_cthd_hoadon foreign key (SOHD) references HOADON(SOHD),
    constraint fk_cthd_sanpham foreign key (MASP) references SANPHAM(MASP)
);
insert into CTHD (SOHD,MASP,SL) values(1001,'TV02',10);
insert into CTHD (SOHD,MASP,SL) values(1001,'ST01',5);
insert into CTHD (SOHD,MASP,SL) values(1001,'BC01',5);
insert into CTHD (SOHD,MASP,SL) values(1001,'BC02',10);
insert into CTHD (SOHD,MASP,SL) values(1001,'ST08',10);
insert into CTHD (SOHD,MASP,SL) values(1002,'BC04',20);
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


