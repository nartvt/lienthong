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
select DISTINCT from Hoadon

alter table SANPHAM add check (GIA >= 500);

-- cau I.9
alter table CTHD add check(SL >= 1);

-- cau I.10

alter table KHACHHANG add check(NGDK >  NGSINH);