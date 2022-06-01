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
 
