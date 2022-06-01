
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


-- III.6  
select  distinct TenMH
from 
	MonHoc, GiaoVien, GiangDay
where 
	MonHoc.MaMH = GiangDay.MaMH
	AND GiaoVien.MaGV = GiangDay.MaGV
	AND HoTen = 'Tran Tam Thanh'
	AND HocKy = 1 AND Nam = 2006

-- III.7  
select  distinct
	MonHoc.MaMH, TenMH
from 
	MonHoc, Lop, GiangDay
where 
	GiangDay.MaMH = MonHoc.MaMH
	AND GiangDay.MaGV = Lop.MaGVCN
	AND Lop.MaLop = 'K11'
	AND HocKy = 1 AND Nam = 2006

-- III.8  
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

-- III.9 
select 
	MonHocTruoc.MaMH, MonHocTruoc.TenMH
from 
	MonHoc, MonHoc AS MonHocTruoc, DieuKien
where 
	MonHoc.MaMH = DieuKien.MaMH
	AND MonHocTruoc.MaMH = DieuKien.MaMH_Truoc
	AND MonHoc.TenMH = 'Co So Du Lieu'

-- III.10 
select  
	MonHoc.MaMH, MonHoc.TenMH
from 
	MonHoc, MonHoc AS MonHocTruoc, DieuKien
where 
	MonHoc.MaMH = DieuKien.MaMH
	AND MonHocTruoc.MaMH = DieuKien.MaMH_Truoc
	AND MonHocTruoc.TenMH = 'Cau Truc Roi Rac'

-- III.11 
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

-- III.12 
select 
	HocVien.MaHV, (Ho+' '+Ten) HoTen
from 
	HocVien, KetQuaThi
where 
	HocVien.MaHV = KetQuaThi.MaHV
	AND MaMH = 'CSDL' AND LanThi = 1 AND KQua = 'Khong Dat'
	AND NOT EXISTS (select  * from  KetQuaThi where  LanThi > 1 AND KetQuaThi.MaHV = HocVien.MaHV)

-- III.13 
select  MaGV, HoTen
from  GiaoVien
where  MaGV NOT IN (select  MaGV from  GiangDay)

-- III.14  
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

-- III.15  
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

-- III.16 
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

-- III.17  
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

-- III.18 
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
