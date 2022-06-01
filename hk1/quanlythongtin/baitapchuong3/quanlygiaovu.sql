drop database quanlygiaovu;
create database quanlygiaovu;
use quanlygiaovu;

SET DATEFORMAT dmy;
create table KHOA(
    MAKHOA char(4),
    TENKHOA varchar(25) not null,
    NGTLAP smalldatetime not null,
    TRGKHOA varchar(10) not null,
    primary key(MAKHOA)
);

insert into KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) values('KHMT','Khoa hoc may tinh','06/07/2005','GV01');
insert into KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) values('HTTT','He thong thong tin','06/07/2005','GV02');
insert into KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) values('CNPM','Cong nghe phan mem','06/07/2005','GV04');
insert into KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) values('MTT','Mang va truyen thong','20/10/2005','GV03');
insert into KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) values('KTMT','Ky thuat may tinh','20/12/2005','Null');



create table GIAOVIEN(
    MAGV varchar(10),
    HOTEN varchar(50),
    HOCVI varchar(10),
    HOCHAM varchar(10),
    GIOITINH varchar(3),
    NGSINH smalldatetime,
    NGVL smalldatetime,
    HESO float,
    MUCLUONG float,
    MAKHOA char(4),
    primary key(MAGV),
    constraint fk_giaovien_khoa foreign key (MAKHOA) references KHOA(MAKHOA)
);
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV01','Ho Thanh Son','PTS','GS','Nam','05/02/1950','01/11/2004',5,2250000,'KHMT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV02','Tran Tam Thanh','TS','PGS','Nam','17/12/1965','20/4/2004',4.5,2025000,'HTTT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV03','Do Nghiem Phung','TS','GS','Nu','08/01/1950','23/9/2004',4,1800000,'CNPM');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV04','Tran Nam Son','TS','PGS','Nam','22/2/1961','01/12/2005',4.5,2025000,'KTMT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV05','Mai Thanh Danh','ThS','GV','Nam','03/12/1958','01/12/2005',3,1350000,'HTTT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV06','Tran Doan Hung','TS','GV','Nam','03/11/1953','01/12/2005',4.5,2025000,'KHMT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV07','Nguyen Minh Tien','ThS','GV','Nam','23/11/1971','03/01/2005',4,1800000,'KHMT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV08','Le Thi Tran','KS','Null','Nu','26/3/1974','03/01/2005',1.69,760500,'KHMT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV09','Nguyen To Lan','ThS','GV','Nu','31/12/1966','03/01/2005',4,1800000,'HTTT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV10','Le Tran Anh Loan','KS','Null','Nu','17/7/1972','03/01/2005',1.86,837000,'CNPM');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV11','Ho Thanh Tung','CN','GV','Nam','01/12/1980','15/5/2005',2.67,1201500,'MTT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV12','Tran Van Anh','CN','Null','Nu','29/3/1981','15/5/2005',1.69,760500,'CNPM');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV13','Nguyen Linh Dan','CN','Null','Nu','23/5/1980','15/5/2005',1.69,760500,'KTMT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV14','Truong Minh Chau','ThS','GV','Nu','30/11/1976','15/5/2005',3,1350000,'MTT');
insert into GIAOVIEN (MAGV, HOTEN, HOCVI,HOCHAM,GIOITINH, NGSINH, NGVL,HESO, MUCLUONG, MAKHOA) values('GV15','Le Ha Thanh','ThS','GV','Nam','05/04/1978','15/5/2005',3,1350000,'KHMT');


alter table  LOP drop constraint fk_lophoc_giaovien;

drop table if exists LOP;
create table LOP(
    MALOP char(3),
    TENLOP varchar(40) not null,
    TRGLOP varchar(10) not null,
    SISO tinyint,
    MAGVCN varchar(10) not null,
    primary key(MALOP),
    constraint fk_lophoc_giaovien foreign key (MAGVCN) references GIAOVIEN(MAGV)
);

insert into LOP(MALOP, TENLOP, TRGLOP, SISO, MAGVCN)values('K11','Lop 1 khoa 1','K1108',11,'GV07');
insert into LOP(MALOP, TENLOP, TRGLOP, SISO, MAGVCN)values('K12','Lop 2 khoa 1','K1205',12,'GV09');
insert into LOP(MALOP, TENLOP, TRGLOP, SISO, MAGVCN)values('K13','Lop 3 khoa 1','K1305',12,'GV14');


drop table MONHOC;
create table MONHOC(
    MAMH varchar(10),
    TENMH varchar(25) not null,
    TCLT tinyint default 1,
    TCTH tinyint default 1,
    MAKHOA char(4),
    primary key(MAMH),
  constraint fk_monhoc_khoa foreign key (MAKHOA) references KHOA(MAKHOA)
);
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('THDC','Tin hoc dai cuong',4,1,'KHMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('CTRR','Cau truc roi rac',5,2,'KHMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('CSDL','Co so du lieu',3,1,'HTTT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('CTDLGT','Cau truc du lieu va giai thuat',3,1,'KHMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('PTTKTT','Phan tich thiet ke thuat toan',3,0,'KHMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('DHMT','Do hoa may tinh',3,1,'KHMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('KTMT','Kien truc may tinh',3,0,'KTMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('TKCSDL','Thiet ke co so du lieu',3,1,'HTTT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('PTTKHTTT','Phan tich thiet ke he thong thong tin',4,1,'HTTT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('HDH','He dieu hanh',4,1,'KTMT');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('NMCNPM','Nhap mon cong nghe phan mem',3,0,'CNPM');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('LTCFW','Lap trinh C for win',3,1,'CNPM');
insert into MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) values('LTHDT','Lap trinh huong doi tuong',3,1,'CNPM');


create table DIEUKIEN(
    MAMH varchar(10),
    MAMH_TRUOC varchar(10),
    primary key(MAMH, MAMH_TRUOC),
    constraint fk_dieukien_monhoc foreign key (MAMH) references MONHOC(MAMH),
    constraint fk_dieukien_monhoc_truoc foreign key (MAMH_TRUOC) references MONHOC(MAMH),
    check (MAMH <> MAMH_TRUOC)
);
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('CSDL','CTRR');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('CSDL','CTDLGT');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('CTDLGT','THDC');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('PTTKTT','THDC');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('PTTKTT','CTDLGT');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('DHMT','THDC');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('LTHDT','THDC');
insert into DIEUKIEN (MAMH, MAMH_TRUOC) values('PTTKHTTT','CSDL');

drop table if exists GIANGDAY;
alter table  GIANGDAY drop constraint fk_giangday_lophoc ;
create table GIANGDAY(
    MALOP char(3),
    MAMH varchar(10),
    MAGV varchar(10),
    HOCKY tinyint,
    NAM int,
    TUNGAY smalldatetime,
    DENNGAY smalldatetime,
    primary key(MALOP, MAMH),
    constraint fk_giangday_lophoc foreign key (MALOP) references LOP(MALOP),
    constraint fk_giangday_monhoc foreign key (MAMH) references MONHOC(MAMH),
    constraint fk_giangday_giaovien foreign key (MAGV) references GIAOVIEN(MAGV)
);
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K11','THDC','GV07',1,2006,'01/02/2006','05/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K12','THDC','GV06',1,2006,'01/02/2006','05/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K13','THDC','GV15',1,2006,'01/02/2006','05/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K11','CTRR','GV02',1,2006,'01/09/2006','17/5/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K12','CTRR','GV02',1,2006,'01/09/2006','17/5/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K13','CTRR','GV08',1,2006,'01/09/2006','17/5/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K11','CSDL','GV05',2,2006,'06/01/2006','15/7/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K12','CSDL','GV09',2,2006,'06/01/2006','15/7/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K13','CTDLGT','GV15',2,2006,'06/01/2006','15/7/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K13','CSDL','GV05',3,2006,'08/01/2006','15/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K13','DHMT','GV07',3,2006,'08/01/2006','15/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K11','CTDLGT','GV15',3,2006,'08/01/2006','15/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K12','CTDLGT','GV15',3,2006,'08/01/2006','15/12/2006');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K11','HDH','GV04',1,2007,'01/02/2007','18/2/2007');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K12','HDH','GV04',1,2007,'01/02/2007','20/3/2007');
insert into GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) values('K11','DHMT','GV07',1,2007,'18/2/2007','20/3/2007');



drop table if exists HOCVIEN;
alter table  HOCVIEN drop constraint fk_hocvien_lophoc
create table HOCVIEN(
    MAHV char(5) not null,
    HO varchar(10) not null,
    TEN varchar(40) not null,
    NGSINH smalldatetime not null,
    GIOITINH varchar(3) not null,
    NOISINH varchar(50) not null,
    MALOP char(3) not null,
    primary key(MAHV),
    constraint fk_hocvien_lophoc foreign key (MALOP) references LOP(MALOP)
);


insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1101','Nguyen Van','A','27/1/1986','Nam','TpHCM','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1102','Tran Ngoc','Han','14/3/1986','Nu','Kien Giang','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1103','Ha Duy','Lap','18/4/1986','Nam','Nghe An','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1104','Tran Ngoc','Linh','30/3/1986','Nu','Tay Ninh','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1105','Tran Minh','Long','27/2/1986','Nam','TpHCM','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1106','Le Nhat','Minh','24/1/1986','Nam','TpHCM','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1107','Nguyen Nhu','Nhut','27/1/1986','Nam','Ha Noi','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1108','Nguyen Manh','Tam','27/2/1986','Nam','Kien Giang','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1109','Phan Thi Thanh','Tam','27/1/1986','Nu','Vinh Long','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1110','Le Hoai','Thuong','02/05/1986','Nu','Can Tho','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1111','Le Ha','Vinh','25/12/1986','Nam','Vinh Long','K11');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1201','Nguyen Van','B','02/11/1986','Nam','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1202','Nguyen Thi Kim','Duyen','18/1/1986','Nu','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1203','Tran Thi Kim','Duyen','17/9/1986','Nu','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1204','Truong My','Hanh','19/5/1986','Nu','Dong Nai','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1205','Nguyen Thanh','Nam','17/4/1986','Nam','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1206','Nguyen Thi Truc','Thanh','03/04/1986','Nu','Kien Giang','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1207','Tran Thi Bich','Thuy','02/08/1986','Nu','Nghe An','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1208','Huynh Thi Kim','Trieu','04/08/1986','Nu','Tay Ninh','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1209','Pham Thanh','Trieu','23/2/1986','Nam','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1210','Ngo Thanh','Tuan','14/2/1986','Nam','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1211','Do Thi','Xuan','03/09/1986','Nu','Ha Noi','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1212','Le Thi Phi','Yen','03/12/1986','Nu','TpHCM','K12');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1301','Nguyen Thi Kim','Cuc','06/09/1986','Nu','Kien Giang','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1302','Truong Thi My','Hien','18/3/1986','Nu','Nghe An','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1303','Le Duc','Hien','21/3/1986','Nam','Tay Ninh','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1304','Le Quang','Hien','18/4/1986','Nam','TpHCM','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1305','Le Thi','Huong','27/3/1986','Nu','TpHCM','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1306','Nguyen Thai','Huu','30/3/1986','Nam','Ha Noi','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1307','Tran Minh','Man','28/5/1986','Nam','TpHCM','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1308','Nguyen Hieu','Nghia','04/08/1986','Nam','Kien Giang','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1309','Nguyen Trung','Nghia','18/1/1987','Nam','Nghe An','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1310','Tran Thi Hong','Tham','22/4/1986','Nu','Tay Ninh','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1311','Tran Minh','Thuc','04/04/1986','Nam','TpHCM','K13');
insert into HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) values('K1312','Nguyen Thi Kim','Yen','09/07/1986','Nu','TpHCM','K13');




drop table if exists KETQUATHI;
create table KETQUATHI(
    MAHV char(5),
    MAMH varchar(10),
    LANTHI tinyint,
    NGTHI smalldatetime,
    DIEM tinyint,
    KQUA varchar(10),
    primary key(MAHV,MAMH,LANTHI),
    constraint fk_ketquathi_hocvien foreign key (MAHV) references HOCVIEN(MAHV),
    constraint fk_ketquathi_monhoc foreign key (MAMH) references MONHOC(MAMH)
);

insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1101','CSDL',1,'20/7/2006',10,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1101','CTDLGT',1,'28/12/2006',9,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1101','THDC',1,'20/5/2006',9,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1101','CTRR',1,'13/5/2006',9.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CSDL',1,'20/7/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CSDL',2,'27/7/2006',4.25,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CSDL',3,'08/10/2006',4.5,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CTDLGT',1,'28/12/2006',4.5,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CTDLGT',2,'01/05/2007',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CTDLGT',3,'15/1/2007',6,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','THDC',1,'20/5/2006',5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1102','CTRR',1,'13/5/2006',7,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1103','CSDL',1,'20/7/2006',3.5,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1103','CSDL',2,'27/7/2006',8.25,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1103','CTDLGT',1,'28/12/2006',7,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1103','THDC',1,'20/5/2006',8,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1103','CTRR',1,'13/5/2006',6.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1104','CSDL',1,'20/7/2006',3.75,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1104','CTDLGT',1,'28/12/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1104','THDC',1,'20/5/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1104','CTRR',1,'13/5/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1104','CTRR',2,'20/5/2006',3.5,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1104','CTRR',3,'30/6/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1201','CSDL',1,'20/7/2006',6,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1201','CTDLGT',1,'28/12/2006',5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1201','THDC',1,'20/5/2006',8.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1201','CTRR',1,'13/5/2006',9,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','CSDL',1,'20/7/2006',8,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','CTDLGT',1,'28/12/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','CTDLGT',2,'01/05/2007',5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','THDC',1,'20/5/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','THDC',2,'27/5/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','CTRR',1,'13/5/2006',3,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1202','CTRR',3,'30/6/2006',6.25,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1203','CSDL',1,'20/7/2006',9.25,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1203','CTDLGT',1,'28/12/2006',9.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1203','THDC',1,'20/5/2006',10,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1203','CTRR',1,'13/5/2006',10,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1204','CSDL',1,'20/7/2006',8.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1204','CTDLGT',1,'28/12/2006',6.75,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1204','THDC',1,'20/5/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1204','CTRR',1,'13/5/2006',6,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1301','CSDL',1,'20/12/2006',4.25,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1301','CTDLGT',1,'25/7/2006',8,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1301','THDC',1,'20/5/2006',7.75,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1301','CTRR',1,'13/5/2006',8,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1302','CSDL',1,'20/12/2006',6.75,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1302','CTDLGT',1,'25/7/2006',5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1302','THDC',1,'20/5/2006',8,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1302','CTRR',1,'13/5/2006',8.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','CSDL',1,'20/12/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','CTDLGT',1,'25/7/2006',4.5,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','CTDLGT',2,'08/07/2006',4,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','CTDLGT',3,'15/8/2006',4.25,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','THDC',1,'20/5/2006',4.5,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','CTRR',1,'13/5/2006',3.25,'Khong Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1303','CTRR',2,'20/5/2006',5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1304','CSDL',1,'20/12/2006',7.75,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1304','CTDLGT',1,'25/7/2006',9.75,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1304','THDC',1,'20/5/2006',5.5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1304','CTRR',1,'13/5/2006',5,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1305','CSDL',1,'20/12/2006',9.25,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1305','CTDLGT',1,'25/7/2006',10,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1305','THDC',1,'20/5/2006',8,'Dat');
insert into KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) values('K1305','CTRR',1,'13/5/2006',10,'Dat');




-- I.1 
alter table  HOCVIEN add DIEMTB float;
alter table  HOCVIEN add XEPLOAI varchar(10);
alter table  HOCVIEN add GHICHU varchar(50);


-- I.3
alter table  HOCVIEN add check(GIOITINH in ('Nam', 'Nu'));

-- I.4
alter table  KETQUATHI alter column DIEM float(2,2);

alter table  KETQUATHI drop constraint ck_ketquathi_diem;
alter table  KETQUATHI add constraint  ck_ketquathi_diem check(DIEM between 0 and 10);

--  
alter table  KETQUATHI add constraint  check_KETQUA check
(	
	(KQUA = 'Dat' AND DIEM BETWEEN 5 AND 10)
	OR (KQUA = 'Khong dat' AND DIEM < 5)
)

-- I.6  
alter table  KETQUATHI add constraint  check_LANTHI check (LANTHI <= 3)

-- I.7  
alter table  GIANGDAY add constraint  check_HOCKY check (HOCKY BETWEEN 1 AND 3)

-- I.8  
alter table  GIAOVIEN add constraint  check_HOCVI check (HOCVI IN ('CN', 'KS', 'Ths', 'TS', 'PTS'))

-- I.11 
ALTER TABLE HOCVIEN ADD CONSTRAINT CHECK_TUOI CHECK (YEAR(GETDATE()) - YEAR(NGSINH) >= 18)

-- I.12  
ALTER TABLE GIANGDAY ADD CONSTRAINT CHECK_GIANGDAY CHECK (TUNGAY < DENNGAY)

-- I.13 
ALTER TABLE GIAOVIEN ADD CONSTRAINT CHECK_TUOILAM CHECK (YEAR(NGVL) - YEAR(NGSINH) >= 22)

-- I.14 
ALTER TABLE MONHOC ADD CONSTRAINT CHECK_TINCHI CHECK (ABS(TCLT - TCTH) <= 3)

-- II.1  
UPDATE GIAOVIEN
SET HESO = 0.2 * HESO
where  MAGV IN (select  TRGKHOA from  KHOA)

-- II.2 
UPDATE HocVien
SET DiemTB =
(
	select  AVG(Diem)
	from  KetQuaThi
	where  LanThi = (select  MAX(LanThi) from  KetQuaThi KQ where  MaHV = KetQuaThi.MaHV group by MaHV)
	group by MaHV
	HAVING MaHV = HocVien.MaHV
)

-- II.3  
UPDATE HOCVIEN
SET GHICHU = 'Cam thi'
where  MAHV IN 
(
	select  MAHV
	from  KETQUATHI
	where  LANTHI = 3 AND DIEM < 5
)

-- II.4  

UPDATE HOCVIEN
SET XEPLOAI =
(
	CASE 
		WHEN DIEMTB >= 9 THEN 'XS'
		WHEN DIEMTB >= 8 AND DIEMTB < 9 THEN 'G'
		WHEN DIEMTB >= 6.5 AND DIEMTB < 8 THEN 'K'
		WHEN DIEMTB >= 5 AND DIEMTB < 6.5 THEN 'TB'
		WHEN DIEMTB < 5 THEN 'Y'
	END
)

-- III.1 In ra danh sách (mã học viên, họ tên, ngày sinh, mã lớp) lớp trưởng của các lớp
select 
	MaHV, (Ho+Ten) HoTen, NgSinh, HocVien.MaLop
from 
	HocVien, Lop
where 
	HocVien.MaHV = Lop.TrgLop

-- III.2 In ra bảng điểm khi thi (mã học viên, họ tên , lần thi, điểm số) môn CTRR của lớp “K12”, sắp xếp theo tên, họ học viên
select  
	HocVien.MaHV, (Ho+' '+Ten) HoTen, LanThi, Diem 
from  
	KetQuaThi, HocVien
where 
	KetQuaThi.MaHV = HocVien.MaHV
	AND MaMH = 'CTRR'
	AND MaLop = 'K12'
order by
	Ten, Ho

-- III.3 In ra danh sách những học viên (mã học viên, họ tên) và những môn học mà học viên đó thi lần thứ nhất đã đạt
select 
	HocVien.MaHV, (Ho+' '+Ten) HoTen, TenMH
from 
	KetQuaThi, MonHoc, HocVien
where 
	KetQuaThi.MaMH = MonHoc.MaMH
	AND KetQuaThi.MaHV = HocVien.MaHV
	AND LanThi = 1 AND KQua = 'Dat'

-- III.4 In ra danh sách học viên (mã học viên, họ tên) của lớp “K11” thi môn CTRR không đạt (ở lần thi 1)
select 
	HocVien.MaHV, (Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND MaLop = 'K11'
	AND MaMH = 'CTRR'
	AND KQua = 'Khong Dat'
	AND LanThi = 1

-- III.5  Danh sách học viên (mã học viên, họ tên) của lớp “K” thi môn CTRR không đạt (ở tất cả các lần thi)
select  distinct
	HocVien.MaHV, (Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND MaLop like 'K%'
	AND MaMH = 'CTRR'
	AND NOT EXISTS
		(select  * from  KetQuaThi 
		where  
			KQua = 'Dat' 
			AND MaMH = 'CTRR' 
			AND MaHV = HocVien.MaHV)

-- III.6 Tìm tên những môn học mà giáo viên có tên “Tran Tam Thanh” dạy trong học kỳ 1 năm 2006
select  distinct TenMH
from 
	MonHoc, GiaoVien, GiangDay
where 
	MonHoc.MaMH = GiangDay.MaMH
	AND GiaoVien.MaGV = GiangDay.MaGV
	AND HoTen = 'Tran Tam Thanh'
	AND HocKy = 1 AND Nam = 2006

-- III.7 Tìm những môn học (mã môn học, tên môn học) mà giáo viên chủ nhiệm lớp “K11” dạy trong học kỳ 1 năm 2006
select  distinct
	MonHoc.MaMH, TenMH
from 
	MonHoc, Lop, GiangDay
where 
	GiangDay.MaMH = MonHoc.MaMH
	AND GiangDay.MaGV = Lop.MaGVCN
	AND Lop.MaLop = 'K11'
	AND HocKy = 1 AND Nam = 2006

-- III.8 Tìm họ tên lớp trưởng của các lớp mà giáo viên có tên “Nguyen To Lan” dạy môn “Co So Du Lieu”
select  distinct 
	(HO+' '+TEN) HOTEN
from 
	HocVien, Lop, GiaoVien, GiangDay, MonHoc
where 
	Lop.TrgLop = HocVien.MaHV
	AND GiangDay.MaLop = Lop.MaLop
	AND GiangDay.MaGV = GiaoVien.MaGV
	AND GiangDay.MaMH = MonHoc.MaMH
	AND HoTen = 'Nguyen To Lan'
	AND TenMH = 'Co So Du Lieu'

-- III.9 In ra danh sách những môn học (mã môn học, tên môn học) phải học liền trước môn “Co So Du Lieu”
select 
	MonHocTruoc.MaMH, MonHocTruoc.TenMH
from 
	MonHoc, MonHoc AS MonHocTruoc, DieuKien
where 
	MonHoc.MaMH = DieuKien.MaMH
	AND MonHocTruoc.MaMH = DieuKien.MaMH_Truoc
	AND MonHoc.TenMH = 'Co So Du Lieu'

-- III.10 Môn “Cau Truc Roi Rac” là môn bắt buộc phải học liền trước những môn học (mã môn học, tên môn học) nào
select  
	MonHoc.MaMH, MonHoc.TenMH
from 
	MonHoc, MonHoc AS MonHocTruoc, DieuKien
where 
	MonHoc.MaMH = DieuKien.MaMH
	AND MonHocTruoc.MaMH = DieuKien.MaMH_Truoc
	AND MonHocTruoc.TenMH = 'Cau Truc Roi Rac'

-- III.11 Tìm họ tên giáo viên dạy môn CTRR cho cả hai lớp “K11” và “K12” trong cùng học kỳ 1 năm 2006
select  HoTen
from 
	GiaoVien, GiangDay
where 
	GiaoVien.MaGV = GiangDay.MaGV
	AND MaLop = 'K11'
	AND HocKy = 1 AND Nam = 2006
INTERSECT 
	(select  HoTen
	from 
		GiaoVien, GiangDay
	where 
		GiaoVien.MaGV = GiangDay.MaGV
		AND MaLop = 'K12' AND HocKy = 1 AND Nam = 2006)

-- III.12 Tìm những học viên (mã học viên, họ tên) thi không đạt môn CSDL ở lần thi thứ 1 nhưng chưa thi lại môn này
select 
	HocVien.MaHV, (Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND MaMH = 'CSDL' AND LanThi = 1 AND KQua = 'Khong Dat'
	AND NOT EXISTS (select  * from  KetQuaThi where  LanThi > 1 AND KetQuaThi.MaHV = HocVien.MaHV)

-- III.13 Tìm giáo viên (mã giáo viên, họ tên) không được phân công giảng dạy bất kỳ môn học nào
select  MaGV, HoTen
from  GiaoVien
where  MaGV NOT IN (select  MaGV from  GiangDay)

-- III.14 Tìm giáo viên (mã giáo viên, họ tên) không được phân công giảng dạy bất kỳ môn học nào thuộc khoa giáo viên đó phụ trách
select  MaGV, HoTen
from  GiaoVien
where  NOT EXISTS
(
	select  *
	from  MonHoc
	where  MonHoc.MaKhoa = GiaoVien.MaKhoa
	AND NOT EXISTS
	(
		select  *
		from  GiangDay
		where  GiangDay.MaMH = MonHoc.MaMH
		AND GiangDay.MaGV = GiaoVien.MaGV
	)
)

-- III.15 Tìm họ tên các học viên thuộc lớp “K11” thi một môn bất kỳ quá 3 lần vẫn “Khong dat” hoặc thi lần thứ 2 môn CTRR được 5 điểm
select  distinct
	(Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND MaLop = 'K11'
	AND ((LanThi = 2 AND Diem = 5)
	OR HocVien.MaHV IN
	(
		select  distinct MaHV
		from  KetQuaThi
		where  KQua = 'Khong Dat'
		group by MaHV, MaMH
		HAVING COUNT(*) > 3	
	))

-- III.16 Tìm họ tên giáo viên dạy môn CTRR cho ít nhất hai lớp trong cùng một học kỳ của một năm học
select  HoTen
from 
	GiaoVien, GiangDay
where 
	GiaoVien.MaGV = GiangDay.MaGV
	AND MaMH = 'CTRR'
group by 
	GiaoVien.MaGV, HoTen, HocKy
HAVING 
	COUNT(*) >= 2

-- III.17 Danh sách học viên và điểm thi môn CSDL (chỉ lấy điểm của lần thi sau cùng)
select 
	HocVien.*, Diem AS 'Điểm thi CSDL sau cùng'
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND MaMH = 'CSDL'
	AND LanThi = 
	(
		select  MAX(LanThi) 
		from  KetQuaThi 
		where  MaMH = 'CSDL' AND KetQuaThi.MaHV = HocVien.MaHV 
		group by MaHV
	)

-- III.18 Danh sách học viên và điểm thi môn “Co So Du Lieu” (chỉ lấy điểm cao nhất của các lần thi)
select 
	HocVien.*, Diem AS 'Điểm thi CSDL cao nhất'
from 
	HocVien, KetQuaThi, MonHoc
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND KetQuaThi.MaMH = MonHoc.MaMH
	AND TenMH = 'Co So Du Lieu'
	AND Diem = 
	(
		select  MAX(Diem) 
		from  KetQuaThi, MonHoc
		where 
			KetQuaThi.MaMH = MonHoc.MaMH
			AND MaHV = HocVien.MaHV
			AND TenMH = 'Co So Du Lieu'
		group by MaHV
	)

-- III.19  
select  MaKhoa, TenKhoa
from  Khoa
where  NgTLap = (select  MIN(NgTLap) from  Khoa)

-- III.20 
select  COUNT(*) 'Số giáo viên có học hàm GS hoặc PGS'
from  GiaoVien
where  HocHam IN ('GS', 'PGS')

-- III.21  
select  MaKhoa, HocVi, COUNT(*) 'Số giáo viên'
from  GiaoVien
group by MaKhoa, HocVi
order by MaKhoa

-- III.22  
select  MaMH, KQua, COUNT(*) 'Số học viên'
from  KetQuaThi
group by MaMH, KQua
order by MAMH

-- III.23 
select  distinct
	GiaoVien.MaGV, HoTen
from 
	GiaoVien, Lop, GiangDay
where 
	GiangDay.MaLop = Lop.MaLop
	AND GiangDay.MaGV = GiaoVien.MaGV
	AND GiaoVien.MaGV = Lop.MaGVCN

-- III.24 
select  
	Ho+' '+Ten  
from 
	HocVien, Lop
where 
	HocVien.MaHV = Lop.TrgLop
	AND Lop.SiSo = (select  MAX(SiSo) from  Lop)

-- III.25  
select  Ho + ' ' + Ten  
from 
	HocVien, Lop, KetQuaThi
where 
	HocVien.MAHV = Lop.TrgLop
	AND HocVien.MaHV = KetQuaThi.MaHV
	AND KQua = 'Khong Dat'
group by 
	TrgLop, Ho, Ten
HAVING 
	COUNT(*) > 3

-- III.26  
-- Cách 1:
select  TOP 1 WITH TIES 
	HocVien.MaHV, (Ho+' '+Ten) AS HoTen
from  
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND Diem >= 9
group by 
	HocVien.MaHV, Ho, Ten
order by 
	COUNT(*) DESC

-- Cách 2:
select 
	HocVien.MaHV, Ho+' '+Ten AS HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND Diem >= 9
group by
	HocVien.MaHV, Ho, Ten
HAVING
	COUNT(*) >= ALL(select  COUNT(*) from  KetQuaThi where  Diem >= 9 group by MaHV) 

 

-- III.28  
select  MaGV, COUNT(distinct MaMH) 'Số môn học', COUNT(distinct MALOP) 'Số lớp'
from  GiangDay
group by MaGV
 

-- III.30 
-- Cách 1:
select  TOP 1 WITH TIES
	MonHoc.MaMH, TenMH
from 
	MonHoc, KetQuaThi
where 
	MonHoc.MaMH = KetQuaThi.MaMH
	AND LanThi = 1
	AND KQua = 'Khong Dat'
group by
	MonHoc.MaMH, TenMH
order by
	COUNT(*) DESC

-- Cách 2:
select 
	MonHoc.MaMH, TenMH
from 
	MonHoc, KetQuaThi
where 
	MonHoc.MaMH = KetQuaThi.MaMH
	AND LanThi = 1
	AND KQua = 'Khong Dat'
group by 
	MonHoc.MaMH, TenMH
HAVING
	COUNT(*) >= ALL (select  COUNT(*) from  KetQuaThi where  LanThi = 1 AND KQua = 'Khong Dat' group by MAMH)

-- III.31  
select  distinct
	HocVien.MaHV, (Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND NOT EXISTS
	(
		select  *
		from  KetQuaThi
		where  LanThi = 1
		AND KQua = 'Khong Dat'
		AND MaHV = HocVien.MaHV
	)

-- III.32  
select  distinct
	HocVien.MaHV, (Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND NOT EXISTS
	(
		select  *
		from  KetQuaThi
		where  LanThi = (select  MAX(LanThi) from  KetQuaThi where  MaHV = HocVien.MaHV group by MaHV)
		AND KQua = 'Khong Dat'
		AND MaHV = HocVien.MaHV
	)

-- III.33 
select  MaHV, (Ho+' '+Ten) HoTen
from  HocVien
where  NOT EXISTS
(
	select  *
	from  MonHoc
	where  NOT EXISTS
	(
		select  *
		from  KetQuaThi
		where 
			KetQuaThi.MaMH = MonHoc.MaMH
			AND KetQuaThi.MaHV = HocVien.MaHV
			AND LanThi = 1 AND KQua = 'Dat'
	)
)
 