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
