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