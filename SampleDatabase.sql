
---Phan Van Phuc
---Phuc da comment
USE master;  
GO  
IF DB_ID (N'Bank') IS NOT NULL  
DROP DATABASE Bank;  
GO  
CREATE DATABASE Bank  
go
use Bank
go

--Tao bang BANK
create table Bank
(
	b_id	char(10),
	b_name	nvarchar(50),
	b_ad	nvarchar(200),
	primary key(b_id)
)
go
--Tao bang BRANCH 
create table Branch
(
	BR_id CHAR(5),
	BR_name	nvarchar(50),
	BR_ad	nvarchar(150),
	B_id	char(10),
	primary key(BR_id),
	foreign key (B_id) references Bank
)
go
--tao bang CUSTOMER
create table customer
(
	Cust_id	char(6),
	Cust_name	nvarchar(50),
	Cust_phone	varchar(15),
	Cust_ad		nvarchar(150),
	Br_id		char(5),
	primary key(Cust_id),
	foreign key (Br_id) references Branch
)
go
--tao bang ACCOUNT
create table account
(
	Ac_no	char(10),
	ac_balance	numeric(15,0),
	ac_type	char(1),
	cust_id	char(6),
	primary key(ac_no),
	foreign key(cust_id) references Customer
)
go
--tao bang transaction
create table transactions
(
	t_id	char(10),
	t_type	char(1),
	t_amount numeric(15,0),
	t_date	date,
	t_time	time,
	ac_no	char(10),
	primary key(t_id),
	foreign key (ac_no) references account
)
go
---Insert data
insert into bank values('BFTVVNVX07',N'Ngân hàng Công thương Việt Nam',N'03 Lý Thái Tổ, Hà Nội, Việt Nam')

insert into branch values('VB001',N'Vietcombank Thái Bình',N'12 Lý Bôn - tp Thái Bình','BFTVVNVX07')
insert into branch values('VB002',N'Vietcombank Nam Định',N'04 Trần Hưng Đạo - tp Nam Định','BFTVVNVX07')
insert into branch values('VB003',N'Vietcombank Thái Nguyên',N'44 Trần Nhân Tông - tp Thái Nguyên','BFTVVNVX07')
insert into branch values('VB004',N'Vietcombank Hà Nội',N'32 Cầu Giấy','BFTVVNVX07')
insert into branch values('VB005',N'Vietcombank Bắc Ninh',N'98 Phan Huy Chú','BFTVVNVX07')
insert into branch values('VT006',N'Vietcombank Thanh Hóa',N'23 Nguyễn Du','BFTVVNVX07')
insert into branch values('VT007',N'Vietcombank Nghệ An',N'01 Phan Bội Châu','BFTVVNVX07')
insert into branch values('VT008',N'Vietcombank Hà Tĩnh',N'72 Hà Huy Tập','BFTVVNVX07')
insert into branch values('VT009',N'Vietcombank Quảng Bình',N'','BFTVVNVX07')
insert into branch values('VT010',N'Vietcombank Quảng Trị',N'','BFTVVNVX07')
insert into branch values('VT011',N'Vietcombank Huế',N'85 Lê Thánh Tông','BFTVVNVX07')
insert into branch values('VN012',N'Vietcombank Đà Nẵng',N'01 Bạch Đằng','BFTVVNVX07')
insert into branch values('VN013',N'Vietcombank Quảng Nam',N'33 Cửa Đại, Hội An','BFTVVNVX07')
insert into branch values('VN014',N'Vietcombank Sài Gòn',N'Quận 1, tp HCM','BFTVVNVX07')
insert into branch values('VN015',N'Vietcombank Đồng Tháp',N'87 Phan Châu Trinh','BFTVVNVX07')
insert into branch values('VN016',N'Vietcombank Cà Mau',N'34 Trường Chinh','BFTVVNVX07')
insert into branch values('VN017',N'Vietcombank Phan Thiết',N'99 Lý Thái Tổ','BFTVVNVX07')
insert into branch values('VN018',N'Vietcombank Vũng Tàu',N'78 Hai Bà Trưng','BFTVVNVX07')
insert into branch values('VN019',N'Vietcombank Kiên Giang',N'238 Hải PHòng','BFTVVNVX07')

select * from Branch

insert into customer values('000001',N'Hà Công Lực','01283388103',N'NGUYỄN TIẾN DUẨN - THÔN 3 - XÃ DHÊYANG - EAHLEO - ĐĂKLĂK','VT009')
insert into customer values('000002',N'Trần Đức Quý','01638843209',N'215/90 VÕ VĂN KIỆT, PHƯỜNG THANH XUÂN, TP BUÔN MA THUỘT, ĐĂK LĂK','VT010')
insert into customer values('000003',N'Lê Quang Phong','01219688656',N'TRUNG THIỆN, DƯƠNG THỦY, LỆ THỦY, QUẢNG BÌNH.','VT011')
insert into customer values('000004',N'Trần Văn Thiện Thanh','0905556510',N'19 ĐƯỜNG SỐ 1, ĐIỆN QUANG, ĐIỆN BÀN, QUẢNG NAM','VB004')
insert into customer values('000005',N'Nguyễn Đức Duy','0935270776',N'Giáo Tây, Đại Hòa, Đại Lộc, Quảng Nam','VB005')
insert into customer values('000006',N'Nguyễn Quang Công Minh','01282157875',N'HÒA SƠN, HÒA VANG, ĐÀ NẴNG','VT006')
insert into customer values('000007',N'Trần Trương Thiện Nguyên','01265323711',N'TỔ DÂN PHỐ 4,P NAM LÝ, TP ĐỒNG HỚI, QUẢNG BÌNH','VB001')
insert into customer values('000008',N'Nguyễn Lê Minh Quân','0962883220',N'K79/4 THANH THỦY, HẢI CHÂU, ĐÀ NẴNG','VB002')
insert into customer values('000009',N'Nguyễn Văn Linh','01689084633',N'58 HÙNG VƯƠNG, TX BA ĐỒN, QUẢNG BÌNH','VB003')
insert into customer values('000010',N'Đặng Nhật Phong','01652512225',N'K907 NGUYỄN LƯƠNG BẰNG- QUẬN LIÊU CHIỂU- ĐÀ NẴNG','VB004')
insert into customer values('000011',N'Lê Tấn Anh Quốc','0975208772',N'THÔN THANH QUÝT 1, ĐIỆN THẮNG TRUNG, ĐIỆN BÀN, QUẢNG NAM','VB005')
insert into customer values('000012',N'Hứa Văn Đại','01269162146',N'TỔ 27A, NẠI HIÊN ĐÔNG, SƠN TRÀ, TP. ĐÀ NẴNG','VT006')
insert into customer values('000013',N'Hồ Quỳnh Hữu Phát','0978354865',N'PHAN THỊ HỒNG PHƯỢNG, THÔN 1B, XÃ ĐỒNG TRẠCH, BỐ TRẠCH, QUẢNG BÌNH','VT007')
insert into customer values('000014',N'Phan Nguyên Anh','0964318076',N'KHỐI HẬU XÁ, TỔ 37, PHƯỜNG THANH HÀ, TP. HỘI AN, TỈNH QUẢNG NAM.','VT008')
insert into customer values('000015',N'Trương Quang Hòa','0976308098',N'294 HUỲNH THÚC KHÁNG, AN XUÂN, TAM KỲ, QUẢNG NAM','VT009')
insert into customer values('000016',N'Lê Anh Huy','0966654330',N'412 CÁCH MẠNG THÁNG 8, QUẬN CẨM LỆ, ĐÀ NẴNG','VT010')
insert into customer values('000017',N'Hồ Trần Nhật Khánh','01648438000',N'193/12 NÚI THÀNH, PHƯỜNG HÒA CƯỜNG BẮC, HẢI CHÂU, ĐÀ NẴNG','VT011')
insert into customer values('000018',N'Lê Minh Trí','0935700123',N'TDP3-P TỨ HẠ, HƯƠNG TRÀ, TT HUẾ','VN012')
insert into customer values('000019',N'Phan Công Diễn','0935604934',N'TỔ 19 - PHƯỜNG PHƯỚC MỸ - SƠN TRÀ - ĐÀ NẴNG ','VN013')
insert into customer values('000020',N'Nguyễn Xuân Anh','0905939426',N'67 Trần Văn Dư, Mỹ An, Ngũ Hành Sơn Đà Nẵng','VN014')
insert into customer values('000021',N'Nguyễn Tiến Trung','01224064353',N'1/45 QUANG TRUNG, KHU PHỐ 2, PHƯỜNG 2, THỊ XÃ QUẢNG TRỊ, TỈNH QUẢNG TRỊ.','VN015')
insert into customer values('000022',N'Lê Hoàng Duy','0932517402',N'15A VÕ VĂN TẦN, QUY NHƠN, BÌNH ĐỊNH','VN016')
insert into customer values('000023',N'Trần Ngọc Quốc','01202023287',N'tổ 4,Bình Lãnh,Thăng Bình','VN017')
insert into customer values('000024',N'Huỳnh Tấn Dũng','0982805825',N'KHU VỰC VẠN THUẬN, PHƯỜNG NHƠN THÀNH, TX AN NHƠN, BÌNH ĐỊNH','VN018')
insert into customer values('000025',N'Trần Quang Khải','0935777298',N'KIỆT 38 TÔN THẤT SƠN, THỦY PHƯƠNG, HƯƠNG THỦY, TT HUẾ','VN019')
insert into customer values('000026',N'Nguyễn Trí Hùng','0905886802',N'HUỲNH HÙNG, THÔN 4, XÃ HÒA PHONG, KRÔNG BÔNG, ĐĂK LĂK','VT007')
insert into customer values('000027',N'Dương Ngọc Long','01208776312',N'01 THOẠI NGỌC HẦU, TAM KỲ, QUẢNG NAM','VT008')
insert into customer values('000028',N'Trương Nhật Minh','01654217772',N'TỔ 37B KHU VỰC 4, SỐ NHÀ 20/6A CHI LĂNG, QUY NHƠN, BÌNH ĐỊNH','VT009')
insert into customer values('000029',N'Lê Nguyễn Hoàng Văn','0969590517',N'SỐ 31 ĐƯỜNG HÒA MINH 4, LIÊN CHIỂU, ĐÀ NẴNG','VT010')
insert into customer values('000030',N'Nguyễn Văn Hoàng Long','0914660398',N'TỔ 45 ĐA PHƯỚC II, HÒA KHÁNH BẮC, LIÊN CHIỂU, ĐÀ NẴNG','VT009')
insert into customer values('000031',N'Trần Phước Đạt','0914163750',N'11 THÚC TỀ, THANH KHÊ, TP. ĐÀ NẴNG','VT010')
insert into customer values('000032',N'Phạm Duy Khánh','01646636030',N'08/38 TRẦN BÌNH TRỌNG - P. ĐÔNG SƠN - TP THANH HÓA','VT011')
insert into customer values('000033',N'Lương Minh Hiếu','0936185901',N'ĐỘI 7, THÔN 8, TAM LỘC, PHÚ NINH, QUẢNG NAM','VT009')
insert into customer values('000034',N'Nguyễn Ngọc Thắng','01656730217',N'16 LÝ THÁNH TÔNG, ĐỒNG HỚI, QUẢNG BÌNH','VT010')
insert into customer values('000035',N'Trương Duy Tường','01645500071',N'ĐỘI 1 - PHAN XÁ - XUÂN THỦY - LỆ THỦY - QuẢNG BÌNH','VT011')

select * from customer

insert into account values('1000000001',88118000,'1','000001')
insert into account values('1000000002',188372000,'0','000002')
insert into account values('1000000003',44770000,'0','000003')
insert into account values('1000000004',157231000,'1','000004')
insert into account values('1000000005',178232000,'0','000005')
insert into account values('1000000006',-15678000,'1','000006')
insert into account values('1000000007',332183000,'1','000007')
insert into account values('1000000008',393221000,'1','000008')
insert into account values('1000000009',172923000,'0','000009')
insert into account values('1000000010',-6107000,'1','000010')
insert into account values('1000000011',227449000,'1','000011')
insert into account values('1000000012',184002000,'0','000012')
insert into account values('1000000013',229384000,'1','000013')
insert into account values('1000000014',94311000,'1','000014')
insert into account values('1000000015',104826000,'0','000015')
insert into account values('1000000016',236633000,'0','000016')
insert into account values('1000000017',121389000,'1','000017')
insert into account values('1000000018',226017000,'1','000018')
insert into account values('1000000019',133429000,'1','000019')
insert into account values('1000000020',272623000,'1','000020')
insert into account values('1000000021',358446000,'0','000021')
insert into account values('1000000022',69486000,'0','000022')
insert into account values('1000000023',232929000,'0','000023')
insert into account values('1000000024',301503000,'1','000024')
insert into account values('1000000025',221284000,'0','000025')
insert into account values('1000000026',184739000,'1','000026')
insert into account values('1000000027',3672000,'0','000027')
insert into account values('1000000028',143249000,'0','000028')
insert into account values('1000000029',85747000,'0','000029')
insert into account values('1000000030',238311000,'1','000030')
insert into account values('1000000031',243154000,'1','000031')
insert into account values('1000000032',350917000,'1','000032')
insert into account values('1000000033',265088000,'0','000033')
insert into account values('1000000034',86609000,'0','000034')
insert into account values('1000000035',248363000,'0','000035')
insert into account values('1000000036',381588000,'1','000001')
insert into account values('1000000037',59175000,'0','000018')
insert into account values('1000000038',123720000,'0','000019')
insert into account values('1000000039',83933000,'0','000020')
insert into account values('1000000040',333106000,'1','000021')
insert into account values('1000000041',227374000,'0','000022')
insert into account values('1000000042',179736000,'1','000023')
insert into account values('1000000043',222900000,'1','000024')
insert into account values('1000000044',214214000,'1','000025')
insert into account values('1000000045',56524000,'1','000026')
insert into account values('1000000046',349664000,'1','000027')
insert into account values('1000000047',77659000,'0','000028')
insert into account values('1000000048',99830000,'1','000029')
insert into account values('1000000049',91027000,'1','000014')
insert into account values('1000000050',95035000,'0','000015')
insert into account values('1000000051',100367000,'0','000016')
insert into account values('1000000052',77555000,'1','000017')
insert into account values('1000000053',295473000,'0','000018')
insert into account values('1000000054',197525000,'1','000019')

select * from account

insert into transactions values('0000000201','0',1752000,'2011/12/27','07:45','1000000041')
insert into transactions values('0000000202','0',3617000,'2016/01/31','03:12','1000000019')
insert into transactions values('0000000203','0',1344000,'2012/06/16','09:43','1000000009')
insert into transactions values('0000000204','1',64088000,'2010/06/13','12:18','1000000021')
insert into transactions values('0000000205','1',72397000,'2010/01/16','09:12','1000000040')
insert into transactions values('0000000206','1',47332000,'2015/04/06','12:34','1000000007')
insert into transactions values('0000000207','0',4052000,'2014/07/30','05:00','1000000011')
insert into transactions values('0000000208','1',87035000,'2012/01/23','13:15','1000000013')
insert into transactions values('0000000209','0',2804000,'2015/10/09','23:10','1000000044')
insert into transactions values('0000000210','0',4538000,'2017/11/19','07:48','1000000022')
insert into transactions values('0000000211','1',28350000,'2012/01/03','10:39','1000000004')
insert into transactions values('0000000212','0',3201000,'2014/05/01','07:01','1000000032')
insert into transactions values('0000000213','1',69085000,'2015/06/10','12:06','1000000031')
insert into transactions values('0000000214','1',66529000,'2011/01/16','16:21','1000000045')
insert into transactions values('0000000215','0',1803000,'2012/02/13','21:03','1000000034')
insert into transactions values('0000000216','0',2952000,'2014/11/20','17:32','1000000053')
insert into transactions values('0000000217','0',4790000,'2014/07/25','04:47','1000000034')
insert into transactions values('0000000218','1',57458000,'2013/08/01','11:03','1000000043')
insert into transactions values('0000000219','1',16136000,'2012/05/27','13:31','1000000027')
insert into transactions values('0000000220','0',1620000,'2014/07/05','14:41','1000000016')
insert into transactions values('0000000221','1',2424000,'2015/06/23','09:44','1000000044')
insert into transactions values('0000000222','1',61787000,'2010/06/04','12:38','1000000038')
insert into transactions values('0000000223','0',105000,'2014/12/16','22:31','1000000045')
insert into transactions values('0000000224','1',1534000,'2014/10/16','14:39','1000000041')
insert into transactions values('0000000225','0',2951000,'2010/02/08','09:17','1000000027')
insert into transactions values('0000000226','0',4807000,'2011/09/19','00:51','1000000048')
insert into transactions values('0000000227','1',13573000,'2011/09/06','11:41','1000000021')
insert into transactions values('0000000228','0',3341000,'2012/07/03','01:06','1000000005')
insert into transactions values('0000000229','1',4653000,'2011/10/23','13:27','1000000039')
insert into transactions values('0000000230','1',11090000,'2015/04/13','12:41','1000000001')
insert into transactions values('0000000231','0',105000,'2016/11/27','13:02','1000000044')
insert into transactions values('0000000232','1',97609000,'2010/05/17','12:06','1000000046')
insert into transactions values('0000000233','1',1113000,'2016/03/18','15:33','1000000019')
insert into transactions values('0000000234','0',4680000,'2010/11/07','21:59','1000000038')
insert into transactions values('0000000235','1',42182000,'2011/02/28','10:32','1000000018')
insert into transactions values('0000000236','1',67251000,'2013/11/13','12:28','1000000025')
insert into transactions values('0000000237','1',19841000,'2013/10/30','16:58','1000000009')
insert into transactions values('0000000238','0',2310000,'2011/04/21','22:56','1000000048')
insert into transactions values('0000000239','0',4902000,'2015/05/17','09:31','1000000037')
insert into transactions values('0000000240','1',68984000,'2017/04/17','09:56','1000000042')
insert into transactions values('0000000241','0',400000,'2010/06/16','03:20','1000000042')
insert into transactions values('0000000242','1',95102000,'2011/03/27','15:06','1000000041')
insert into transactions values('0000000243','1',51881000,'2016/06/26','14:42','1000000020')
insert into transactions values('0000000244','1',83905000,'2011/08/21','16:33','1000000001')
insert into transactions values('0000000245','1',67883000,'2011/01/22','09:11','1000000026')
insert into transactions values('0000000246','0',3975000,'2016/09/15','17:57','1000000032')
insert into transactions values('0000000247','0',4814000,'2010/05/13','04:48','1000000003')
insert into transactions values('0000000248','0',984000,'2012/09/30','07:34','1000000002')
insert into transactions values('0000000249','0',1183000,'2017/07/11','10:15','1000000013')
insert into transactions values('0000000250','0',4269000,'2013/01/14','03:36','1000000027')
insert into transactions values('0000000251','1',50812000,'2014/01/27','15:30','1000000030')
insert into transactions values('0000000252','1',76973000,'2017/06/02','08:21','1000000035')
insert into transactions values('0000000253','1',44310000,'2013/10/25','16:14','1000000046')
insert into transactions values('0000000254','0',230000,'2013/05/18','01:58','1000000049')
insert into transactions values('0000000255','0',2764000,'2013/03/03','05:40','1000000042')
insert into transactions values('0000000256','1',42744000,'2013/01/10','14:47','1000000002')
insert into transactions values('0000000257','1',42623000,'2011/02/19','11:09','1000000049')
insert into transactions values('0000000258','1',37565000,'2010/08/12','08:20','1000000048')
insert into transactions values('0000000259','1',29850000,'2017/02/01','11:24','1000000012')
insert into transactions values('0000000260','1',30877000,'2017/05/07','12:54','1000000022')
insert into transactions values('0000000261','0',963000,'2010/01/09','02:42','1000000048')
insert into transactions values('0000000262','0',2131000,'2017/07/27','23:54','1000000007')
insert into transactions values('0000000263','0',1844000,'2010/11/22','15:00','1000000038')
insert into transactions values('0000000264','1',70780000,'2016/03/29','12:52','1000000040')
insert into transactions values('0000000265','0',3675000,'2013/05/03','09:39','1000000031')
insert into transactions values('0000000266','0',4769000,'2017/08/27','13:57','1000000039')
insert into transactions values('0000000267','1',61672000,'2014/11/15','08:58','1000000011')
insert into transactions values('0000000268','0',4783000,'2014/02/25','12:20','1000000032')
insert into transactions values('0000000269','1',56511000,'2010/04/25','13:38','1000000026')
insert into transactions values('0000000270','0',633000,'2014/02/23','09:15','1000000040')
insert into transactions values('0000000271','1',50123000,'2015/03/26','15:54','1000000016')
insert into transactions values('0000000272','0',4643000,'2011/04/25','07:59','1000000053')
insert into transactions values('0000000273','0',1655000,'2014/05/02','19:55','1000000023')
insert into transactions values('0000000274','0',393000,'2010/02/28','08:11','1000000015')
insert into transactions values('0000000275','0',128000,'2015/12/19','16:26','1000000024')
insert into transactions values('0000000276','1',60500000,'2011/05/12','11:21','1000000026')
insert into transactions values('0000000277','1',64983000,'2013/09/27','09:29','1000000040')
insert into transactions values('0000000278','0',3246000,'2017/01/23','08:55','1000000035')
insert into transactions values('0000000279','0',73000,'2013/07/01','19:33','1000000024')
insert into transactions values('0000000280','1',94002000,'2016/11/24','10:17','1000000046')
insert into transactions values('0000000281','1',70658000,'2013/12/04','15:24','1000000024')
insert into transactions values('0000000282','0',472000,'2010/03/21','02:16','1000000024')
insert into transactions values('0000000283','0',802000,'2013/05/25','03:50','1000000048')
insert into transactions values('0000000284','1',6815000,'2014/06/30','10:43','1000000032')
insert into transactions values('0000000285','0',3384000,'2017/10/10','04:44','1000000018')
insert into transactions values('0000000286','1',39274000,'2010/02/08','09:18','1000000033')
insert into transactions values('0000000287','0',1733000,'2015/03/11','12:21','1000000054')
insert into transactions values('0000000288','1',60723000,'2017/02/08','08:52','1000000047')
insert into transactions values('0000000289','0',601000,'2011/10/15','10:01','1000000044')
insert into transactions values('0000000290','1',95797000,'2013/01/03','10:03','1000000007')
insert into transactions values('0000000291','1',17028000,'2010/08/02','13:10','1000000042')
insert into transactions values('0000000292','0',3990000,'2010/07/03','19:03','1000000045')
insert into transactions values('0000000293','0',4870000,'2017/07/31','01:40','1000000028')
insert into transactions values('0000000294','0',2942000,'2017/09/12','11:25','1000000046')
insert into transactions values('0000000295','1',69188000,'2016/05/20','14:45','1000000040')
insert into transactions values('0000000296','1',79183000,'2011/08/16','13:19','1000000011')
insert into transactions values('0000000297','1',69815000,'2013/09/06','16:23','1000000004')
insert into transactions values('0000000298','0',4825000,'2011/04/25','16:20','1000000034')
insert into transactions values('0000000299','1',51986000,'2015/11/11','11:30','1000000023')
insert into transactions values('0000000300','1',48143000,'2016/07/20','16:32','1000000041')
insert into transactions values('0000000301','1',51568000,'2013/06/02','11:45','1000000019')
insert into transactions values('0000000302','0',938000,'2013/04/22','19:36','1000000016')
insert into transactions values('0000000303','1',65913000,'2014/03/12','08:36','1000000037')
insert into transactions values('0000000304','0',4220000,'2013/08/23','12:53','1000000011')
insert into transactions values('0000000305','0',1925000,'2014/08/26','15:35','1000000013')
insert into transactions values('0000000306','0',101000,'2012/08/07','11:42','1000000049')
insert into transactions values('0000000307','0',1180000,'2017/04/29','01:24','1000000027')
insert into transactions values('0000000308','1',22385000,'2012/01/19','13:27','1000000039')
insert into transactions values('0000000309','0',439000,'2013/06/13','23:42','1000000018')
insert into transactions values('0000000310','1',30540000,'2016/12/14','15:30','1000000053')
insert into transactions values('0000000311','1',88810000,'2013/04/06','09:45','1000000019')
insert into transactions values('0000000312','0',4601000,'2016/04/02','06:28','1000000021')
insert into transactions values('0000000313','0',3236000,'2015/08/07','18:14','1000000012')
insert into transactions values('0000000314','1',66597000,'2014/07/09','13:12','1000000036')
insert into transactions values('0000000315','0',4245000,'2011/07/24','18:54','1000000030')
insert into transactions values('0000000316','1',93838000,'2014/11/25','13:09','1000000013')
insert into transactions values('0000000317','1',87961000,'2016/01/24','11:23','1000000032')
insert into transactions values('0000000318','1',48242000,'2016/01/23','12:29','1000000002')
insert into transactions values('0000000319','0',1374000,'2014/05/21','12:51','1000000041')
insert into transactions values('0000000320','0',4122000,'2010/09/08','15:36','1000000009')
insert into transactions values('0000000321','0',3650000,'2017/11/12','21:24','1000000053')
insert into transactions values('0000000322','0',1789000,'2013/07/24','00:54','1000000016')
insert into transactions values('0000000323','1',62031000,'2014/05/12','14:33','1000000008')
insert into transactions values('0000000324','1',12276000,'2015/09/16','11:56','1000000011')
insert into transactions values('0000000325','0',1123000,'2011/06/14','00:21','1000000038')
insert into transactions values('0000000326','1',17385000,'2014/06/25','12:24','1000000026')
insert into transactions values('0000000327','0',3185000,'2013/02/09','04:04','1000000033')
insert into transactions values('0000000328','0',678000,'2010/05/14','13:05','1000000009')
insert into transactions values('0000000329','1',61632000,'2016/12/05','11:34','1000000004')
insert into transactions values('0000000330','0',3913000,'2015/04/15','01:12','1000000013')
insert into transactions values('0000000331','0',1065000,'2012/07/14','13:28','1000000048')
insert into transactions values('0000000332','0',1503000,'2015/01/20','12:49','1000000037')
insert into transactions values('0000000333','1',80947000,'2017/05/07','16:48','1000000048')
insert into transactions values('0000000334','0',3728000,'2014/11/25','23:07','1000000013')
insert into transactions values('0000000335','0',3300000,'2013/10/09','04:06','1000000017')
insert into transactions values('0000000336','1',50367000,'2012/05/20','15:25','1000000012')
insert into transactions values('0000000337','1',85455000,'2010/09/18','15:46','1000000031')
insert into transactions values('0000000338','0',4225000,'2013/01/07','05:41','1000000007')
insert into transactions values('0000000339','1',9121000,'2017/06/19','11:58','1000000018')
insert into transactions values('0000000340','0',381000,'2014/08/05','18:42','1000000015')
insert into transactions values('0000000341','0',1100000,'2013/02/24','21:31','1000000038')
insert into transactions values('0000000342','1',30491000,'2014/07/29','08:57','1000000032')
insert into transactions values('0000000343','1',27835000,'2016/06/21','13:17','1000000012')
insert into transactions values('0000000344','0',1551000,'2014/08/08','02:15','1000000010')
insert into transactions values('0000000345','0',3505000,'2013/06/27','05:07','1000000048')
insert into transactions values('0000000346','0',4189000,'2014/07/10','01:34','1000000001')
insert into transactions values('0000000347','1',91697000,'2010/01/16','08:11','1000000044')
insert into transactions values('0000000348','1',99536000,'2013/03/11','16:49','1000000032')
insert into transactions values('0000000349','0',353000,'2012/03/16','02:45','1000000027')
insert into transactions values('0000000350','0',389000,'2015/10/08','23:47','1000000012')
insert into transactions values('0000000351','1',72423000,'2014/02/14','10:25','1000000041')
insert into transactions values('0000000352','1',13763000,'2013/09/27','11:16','1000000016')
insert into transactions values('0000000353','1',51814000,'2014/09/29','12:22','1000000043')
insert into transactions values('0000000354','1',91252000,'2013/06/02','14:34','1000000008')
insert into transactions values('0000000355','0',2514000,'2014/06/04','05:17','1000000054')
insert into transactions values('0000000356','0',4919000,'2013/06/18','12:22','1000000047')
insert into transactions values('0000000357','0',3143000,'2016/01/26','23:03','1000000032')
insert into transactions values('0000000358','0',1992000,'2010/04/12','23:45','1000000014')
insert into transactions values('0000000359','1',58270000,'2012/09/10','15:45','1000000046')
insert into transactions values('0000000360','1',74070000,'2012/02/19','16:56','1000000008')
insert into transactions values('0000000361','0',1680000,'2016/04/05','07:36','1000000032')
insert into transactions values('0000000362','1',55726000,'2014/01/25','10:59','1000000007')
insert into transactions values('0000000363','1',21146000,'2013/08/12','14:42','1000000047')
insert into transactions values('0000000364','1',78735000,'2017/12/01','16:46','1000000007')
insert into transactions values('0000000365','0',2671000,'2017/11/30','00:15','1000000031')
insert into transactions values('0000000366','1',95431000,'2012/10/22','16:41','1000000034')
insert into transactions values('0000000367','0',3909000,'2011/02/25','09:26','1000000026')
insert into transactions values('0000000368','1',21611000,'2012/12/19','16:55','1000000017')
insert into transactions values('0000000369','0',2331000,'2016/07/21','08:19','1000000039')
insert into transactions values('0000000370','1',97722000,'2017/10/09','15:37','1000000036')
insert into transactions values('0000000371','0',2549000,'2011/10/05','03:57','1000000007')
insert into transactions values('0000000372','1',85892000,'2012/10/29','11:51','1000000036')
insert into transactions values('0000000373','0',1567000,'2010/01/16','17:36','1000000022')
insert into transactions values('0000000374','1',16323000,'2013/09/01','09:40','1000000021')
insert into transactions values('0000000375','0',187000,'2010/05/15','16:42','1000000018')
insert into transactions values('0000000376','0',4229000,'2017/02/07','19:30','1000000031')
insert into transactions values('0000000377','1',59997000,'2014/12/11','09:30','1000000035')
insert into transactions values('0000000378','0',4296000,'2016/12/29','12:59','1000000026')
insert into transactions values('0000000379','0',4857000,'2014/03/30','01:16','1000000031')
insert into transactions values('0000000380','0',1799000,'2017/01/30','04:47','1000000002')
insert into transactions values('0000000381','1',44405000,'2015/09/06','08:57','1000000008')
insert into transactions values('0000000382','0',1668000,'2014/08/23','07:24','1000000054')
insert into transactions values('0000000383','1',40698000,'2011/07/16','15:15','1000000014')
insert into transactions values('0000000384','1',22497000,'2012/05/01','11:44','1000000043')
insert into transactions values('0000000385','1',49035000,'2017/06/08','09:48','1000000016')
insert into transactions values('0000000386','1',44783000,'2014/01/01','13:31','1000000044')
insert into transactions values('0000000387','1',56079000,'2015/08/28','15:41','1000000038')
insert into transactions values('0000000388','0',2951000,'2012/09/29','11:43','1000000015')
insert into transactions values('0000000389','1',28775000,'2015/06/24','09:26','1000000038')
insert into transactions values('0000000390','0',4035000,'2011/02/01','23:57','1000000008')
insert into transactions values('0000000391','1',92145000,'2013/01/07','15:16','1000000023')
insert into transactions values('0000000392','0',4447000,'2010/03/27','18:13','1000000023')
insert into transactions values('0000000393','1',38568000,'2013/08/28','11:28','1000000054')
insert into transactions values('0000000394','1',61242000,'2013/09/04','10:14','1000000040')
insert into transactions values('0000000395','0',1095000,'2016/10/29','23:55','1000000005')
insert into transactions values('0000000396','0',4208000,'2017/12/12','22:47','1000000044')
insert into transactions values('0000000397','0',1277000,'2012/01/15','20:09','1000000013')
insert into transactions values('0000000398','0',4794000,'2014/12/16','05:05','1000000043')
insert into transactions values('0000000399','1',69667000,'2015/09/14','10:12','1000000015')
insert into transactions values('0000000400','1',85228000,'2014/08/17','09:53','1000000016')
insert into transactions values('0000000401','1',2215000,'2014/09/03','13:18','1000000031')
insert into transactions values('0000000402','1',34163000,'2015/02/25','10:05','1000000012')
insert into transactions values('0000000403','0',4244000,'2017/11/30','00:54','1000000041')
insert into transactions values('0000000404','1',12142000,'2016/12/02','14:47','1000000029')
insert into transactions values('0000000405','1',45481000,'2013/03/23','11:22','1000000012')

select * from account
select * from customer
--select * from Bank
Select * from Branch
select * from transactions

--1.Liệt kê những tk có số tiền nhiều hơn 50tr
select Ac_no ,Ac_balance
from account
where ac_balance > 50000000
--2.Liệt kê nhuững giao dịch diễn ra vào ban đêm.
select * from transactions
where t_time between '00:00' and '03:00' 
--3.Hiển thị những KH thuộc thi nhánh VB01. VB03, VB07
select cust_name, Br_id
from customer
where Br_id in( 'VB001','VB003','VB007')
--4 Hiển thị những giao dịch rút tiền
select t_type, t_id
from transactions
where t_type = '0'
--5 Tìm những KH quê Ở đN
select * from customer 
select Cust_name, cust_ad
from customer
where Cust_ad like N'%Đà Nẵng' 
--6 Tìm những KH họ trần
select Cust_name
from customer
where Cust_name like N'Trần%'
--7 Tìm những KH Họ trần & tên kết thúc G
select Cust_name
from customer
where Cust_name like N'Trần%[g]'
--8 TÌm những KH tên có chứa "Thị'
select cust_name
from customer
where Cust_name like N'%Thị %'
--9 Tìm những KH mà kí tự thứ 2 trong Họ và tên là chữ R
select Cust_name
from customer
where Cust_name like N'[^...]r%'
--10 Tìm những KH có tên kí tự thứ 3 từ dưới lên là chữ A
select Cust_name
from customer
where Cust_name like N'%A[^...][^...]'
--11 Tìm những kH có số điện thoại đuôi cuối 808
select Cust_name, cust_phone
from customer
where Cust_phone like '%103'
--12 Tìm nhưng kh sử dụng sđt của Viettel ***********
select cust_name, cust_phone from customer 
where Cust_phone like '09[6-8]%' or Cust_phone like '016[2-9]%'
--13 Tìm những KH có tên ko bắt đầu bằng chữ T và kết thúc bằng chữ N
select Cust_name 
from customer
where cust_name like N'[^T]%N'
--14 Tìm những KH có quê ở nông thôn ( địa chỉ có chữ Xã)
select Cust_name, Cust_ad 
from customer 
where Cust_ad like N'Đội%'
--15 Tìm những Kh tên huy và quê ở đN
select *from customer
select Cust_name, Cust_ad
from customer 
where Cust_name like N'%huy' and Cust_ad like N'%Đà Nẵng'
--16 Tìm những KH thuộc chi nhánh VB001 quê ở huế và ko họ trần
select Cust_name, Cust_ad, Br_id
from customer
where Br_id like 'VB001' and Cust_ad like N'%Huế' and Cust_name Not Like N'Trần%'
--17 Liệt kê những giao dịch rút tiền diễn ra năm 2014
select * from transactions
select t_type, t_date
from transactions
where T_type = '0' and YEAR(T_date)=2014

select * from transactions --1: nộp 0: rút
select * from account
select * from customer
select * from Bank
Select * from Branch
---------------------------------------------------------------------------
------------------BÀI TẬP SQL- BẢN ĐƠN-----------------------------------
--1. Liệt kê danh sách khách hàng ở Đà Nẵng
select Cust_name, Cust_ad
from customer 
where Cust_ad like N'%Đà Nẵng'
--2. Liệt kê những tài khoản loại VIP (type = 1)
select AC_no, Ac_type
from account
where ac_type= '1'
--3. Liệt kê những khách hàng không sử dụng số điện thoại của Mobi phone
select Cust_name, Cust_phone
from customer
where Cust_phone not like '012[0-9]%' and Cust_phone not like '09[3-5]%'
--4. Liệt kê những khách hàng họ Phạm
select Cust_name
from customer 
where Cust_name like N'Phạm %'
--5. Liệt kê những khách hàng tên chứa chữ g
select Cust_name
from customer
where Cust_name like N'%[g]'
--6. Liệt kê những khách hàng chữ cái thứ 2 là chữ H, T, A, Ê
select Cust_name
from customer
where Cust_name like N'[^...][H,T,A,Ê]%'
--7. Liệt kê những giao dịch diễn ra trong quý IV năm 2016
select t_id, t_date
from transactions
where DATEPART(qq,t_date)=4 and YEAR(t_date)=2016
--8. Liệt kê những giao dịch bất thường (tiền trong tài khoản âm)
select Ac_no, ac_balance
from account
where ac_balance < 0
--9. Có bao nhiêu người có tài khoản bất thường
select COUNT (ac_balance)  as SoTK_BatThuongn
from account
where ac_balance < 0
--10. Thống kê số lượng giao dịch, số tiền giao dịch theo loại giao dịch
select  t_type  Loai_gd ,Count(t_id)  So_gd, sum(t_amount)  So_tien_gd
from transactions
group by t_type
select * from transactions
--11. Có bao nhiêu khách hàng có địa chỉ ở Huế
select count(Cust_id) So_Luong_KH_Hue
from customer
where Cust_ad like N'%Huế'
--12. Số tiền trong các tài khoản nhiều nhất là bao nhiêu
select * from account
select MAX(ac_balance) TK_nhieu_tien_nhat
from account
--13. Ngày giao dịch gần đây nhất là ngày bao nhiêu
select * from transactions
select max (t_date) Ngay_gan_nhat
from transactions
--14. Có bao nhiêu khách hàng họ Trần và tên Dũng
select * from customer
select count(cust_name) So_luong
from customer
where Cust_name like N'Trần%' and Cust_name like N'%Quý'
--15. Trong năm 2016 và 2017 tổng lượng tiền gửi vào ngân hàng là bao nhiêu
select sum(t_amount) as Tong_tien_gui
from transactions
where t_type ='1' and (year(t_date)=2016 or year(t_date)=2017)
--16. Thống kê số lượng tài khoản, số tiền trung bình trong tài khoản theo từng loại
select * from account
select ac_type, count(Ac_no) as So_luong_Tk, AVG(ac_balance) as Tien_TB
from account
group by ac_type
--17. Có bao nhiêu khách họ Hồ sử dụng dịch vụ di động của Viettel
select COUNT(Cust_id) So_Luong
from customer
where Cust_name like N'Hồ %' and (Cust_phone like '09[6-8]%' or Cust_phone like '016[2-9]%')
--18. Ngân hàng Vietcombank có tổng cộng bao nhiêu chi nhánh
select Count(BR_name) as So_chi_nhanh
from Branch
where BR_name like N'Vietcombank%'
--19. Có bao nhiêu khách hàng không ở Quảng Nam
select count(Cust_id) as So_KH
from customer
where Cust_ad not like N'%Quảng Nam'
--20. Có bao nhiêu tài khoản nhiều hơn 300 triệu, tổng tiền trong số các tài khoản đó là bao
--nhiêu?
select Count(ac_no) as So_TK, sum(ac_balance)
from account
where ac_balance > 300000000
--21. Số tiền trung bình của mỗi lần thực hiện giao dịch rút tiền trong năm 2017 là bao nhiêu
select AVG(t_amount) as Tien_TB
from transactions
where t_type = '0' and YEAR(t_date)=2017
--22. Số tiền rút tiền trung bình vào mùa thu đông năm 2013 của các chi nhánh là bao nhiêu?
--(thu đông: quý III, IV)
select AVG(t_amount) as Tien_TB, BR_name
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where t_type = '0' and (datepart(qq,t_date) = 3 or datepart(qq,t_date)=4) and YEAR(t_date)=2013
group by BR_name
--23. Tháng 08/2015, có bao nhiêu giao dịch rút tiền diễn ra vào buổi tối và đêm (từ 20h ngày
--hôm trước tới 05h sang ngày hôm sau)
select count(t_id) So_GD
from transactions
where t_type = '0' and MONTH(t_date)=8 and YEAR(t_date) =2015 and t_time between '20:00' and '05:00'
--24. Hiển thị những giao dịch bất thường trong quý I năm 2012. Giao dịch bất thường: giao
--dịch rút nộp tiền diễn ra ngoài giờ hành chính.
select * from transactions
where DATEPART(qq,t_date)=1 and YEAR(t_date)=2012 and (t_time not between '7:00' and '11:00') 
and (t_time not between '13:00' and '17:00')
--25. Ông Phạm Duy Khánh có khiếu nại tài khoản của ông ta bị trừ một khoản tiền vô lý (gần
--50 triệu) trong tháng 12/2014. Anh/chị hãy truy xuất toàn bộ dữ liệu giao dịch diễn ra
--trong khoảng thời gian này để giải quyết khiếu nại của ông Khánh. 
select * from transactions
where MONTH(t_date)=12 and year(t_date)=2014

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
select * from Customer
select * from Branch
select * from transactions
select * from account



-----------------JOIN--------------------------------
-----------------TRUY VẤN LÔNG----------------------
--1.VC chi nhánh ĐN có bao nhiêu khách hàng. TỔng tiền giao dịch tB trong 1 năm là bao nhiêu?
select count(Cust_name) as So_KH,
(select AVG(t.b) from ( select sum(T_amount) b, YEAR(t_date) a
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where BR_name like N'Vietcombank Đà Nẵng'
group by YEAR(t_date)) t) Tong_tien
from Branch join customer on Branch.BR_id = customer.Br_id
where BR_name like N'Vietcombank Đà Nẵng'
--2.Trong tháng 4/2014 VC chi nhánh Huế đã xử lí bao nhiêu gd rút tiền.
select count(t_id) as So_GD
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where BR_name like N'Vietcombank Huế' and MONTH(T_date)=4 and YEAR(T_date)=2014 and t_type ='0'
--3.VC Hà NỘi hiện đang quản lí Bao nhiêu tK. Số tiền tb trong mỗi tk đó là BN?
select Count(Ac_no) as So_Tk, AVG(ac_balance) as So_Tien_TB
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
where BR_name like N'Vietcombank Hà Nội'
group by BR_name
--4.Ông Phạm Duy Khánh thuộc chi nhánh NH nào? CÓ bao nhiêu Tk trong NH? GD gần đây nhất thuộc ngày nào/ Giờ nào?
select Br_name as Chi_Nhanh, count(ac_balance) as So_Tk, MAX(t_date) as Ngay_gan_nhat, Max(T_time) as Gio_gan_Nhat
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where Cust_name like N'Phạm Duy Khánh' 
group by BR_name
--5. Ai là người có tiền nhiều nhất trong Tk VC hiện nay?

go
select Cust_name as Ten 
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
where ac_balance =
(select max(ac_balance) as Tien_Max 
from account )
--------------------------------------------------------
go
(select AVG(t.b) as Average from ( select sum(T_amount) b, YEAR(t_date) a
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where BR_name like N'Vietcombank Đà Nẵng'
group by YEAR(t_date)) t)
--6. TÌm người gửi tiền nhiều nhất vào VC ĐN vào cuối năm 2012? (name, SĐt)

------------------------------------------------------------------------------------
------------------------JOIN & SUBQUERY-------------------------------
select Cust_name, Cust_ad
from Customer
where Cust_name like N'Phạm%' and (Cust_ad not like N'% Quảng Nam' or Cust_ad not like N'% Đà Nẵng')
--1. Có bao nhiêu khách hàng có ở Quảng Nam thuộc chi nhánh ngân hàng Vietcombank Đà Nẵng
select * from customer
select * from Branch
select COUNT(Cust_name) as So_KH, BR_name 
from customer join Branch on customer.Br_id = Branch.BR_id
where Cust_ad like N'%Quảng Nam' and BR_name like N'%Đà Nẵng'
group by BR_name
--2. Hiển thị danh sách khách hàng thuộc chi nhánh Vũng Tàu và số dư trong tài khoản của họ.
select Cust_name, ac_balance 
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
where BR_name like N'%Vũng Tàu'
--3. Trong quý 1 năm 2012, có bao nhiêu khách hàng thực hiện giao dịch rút tiền tại Ngân hàng Vietcombank?
select count(cust_name) SoKH
from customer join account on customer.Cust_id = account.cust_id
						join transactions on account.Ac_no = transactions.ac_no
where t_type = '0' and DATEPART(qq,t_date) =1 and YEAR(t_date) = 2012

--4. Thống kê số lượng giao dịch, tổng tiền giao dịch và số tiền giao dịch trong từng tháng của năm 2014
select * from transactions
select MONTH(t_date) Thang,COUNT(t_id) So_GD, Sum(t_amount) TienGD
from transactions
where YEAR(t_date) =2014
group by MONTH(t_date)
--5. Thống kê tổng tiền khách hàng gửi của mỗi chi nhánh, sắp xếp theo thứ tự giảm dần của tổng tiền
select  BR_name, Sum(ac_balance) Tong_Tien
from account join customer on account.Cust_id = customer.cust_id
				join Branch on customer.Br_id = Branch.BR_id
where ac_type ='1'
group by BR_name
order by Sum(ac_balance) DESC
select *from transactions
----6. Thống kê giao dịch theo từng năm, nội dung thống kê gồm: số lượng giao dịch, lượng tiền giao dịch trung bình
select year(t_date) as Nam, COUNT(t_type) as SoLuongGiaoDich,avg(t_amount) as TienGiaoDichTrungBinh
from transactions
group by year (t_date)
----1.VC chi nhánh ĐN có bao nhiêu khách hàng. TỔng tiền giao dịch tB trong 1 năm là bao nhiêu?
go
select count(Cust_name) as So_KH,
(select AVG(tong) from ( select sum(T_amount) tong, YEAR(t_date) a
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where BR_name like N'Vietcombank Đà Nẵng'
group by YEAR(t_date)) y) Tong_tien
from Branch join customer on Branch.BR_id = customer.Br_id
where BR_name like N'Vietcombank Đà Nẵng'
go
-----------------
--7. Thống kê số lượng giao dịch theo ngày và đêm trong năm 2017 ở chi nhánh Hà Nội, Sài Gòn
select BR_name as Chi_Nhanh, year(t_date) as Nam_Giao_Dich,
( select count(*)
from transactions
where t_time between '07:00' and '17:00')  as GiaoDichBanNgay,

( select count(*) 
from transactions
where t_time not between '17:00' and '07:00') as GiaoDichBandem 
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
			join transactions on account.Ac_no=transactions.ac_no
where year(t_date) = 2017 and (BR_name like N'Vietcombank Hà Nội' or BR_name like N'Vietcombank Sài Gòn') 
--8. Hiển thị danh sách khách hàng chưa thực hiện giao dịch nào trong năm 2017?
select Cust_name, t_date
from customer join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where t_type is null and year(T_date) not like '2017'
select * from transactions
--9. Hiển thị những giao dịch trong mùa xuân của các chi nhánh miền trung. Gợi ý: giả sử một
--năm có 4 mùa, mỗi mùa kéo dài 3 tháng; chi nhánh miền trung có mã chi nhánh bắt đầu bằng VT.
select t_id, t_type, t_amount 
from transactions join account on transactions.ac_no = account.Ac_no
					join customer on account.cust_id = customer.Cust_id
where DATEPART(qq,t_date)=1 and Br_id like 'VT%'
--10. Hiển thị họ tên và các giao dịch của khách hàng sử dụng số điện thoại có 3 số đầu là 093 và 2 số cuối là 02. 
select Cust_name, Cust_phone, t_id, t_type, t_amount
from customer join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where Cust_phone like '093%02'
--11. Hãy liệt kê 2 chi nhánh làm việc kém hiệu quả nhất trong toàn hệ thống (số lượng giao
--dịch gửi tiền ít nhất) trong quý 3 năm 2017
select top 2 BR_name
from Branch join customer on Branch.BR_id=customer.Br_id
	        join account on customer.Cust_id=account.cust_id
			join transactions on transactions.ac_no=account.Ac_no
where t_type =1  and  DATEPART(qq,t_date)=3 and YEAR(t_date)= 2017
order by BR_name ASC
--12. Hãy liệt kê 2 chi nhánh có bận mải nhất hệ thống (thực hiện nhiều giao dịch gửi tiền nhất)
--trong năm 2017.
select top 2 BR_name
from Branch join customer on Branch.BR_id=customer.Br_id
	        join account on customer.Cust_id=account.cust_id
			join transactions on transactions.ac_no=account.Ac_no
where t_type =1  and YEAR(t_date)= 2017
order by BR_name DESC
--13. Chi nhánh Bình Dương có bao nhiêu khách hàng không thực hiện bất kỳ giao dịch nào
--trong vòng 1 năm trở lại đây. Nếu có thể, hãy hiển thị tên và số điện thoại của các khách
--đó để phòng marketing xử lý.
select * from Branch
select Cust_name, Cust_phone 
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.ac_no = transactions.ac_no
where Branch.BR_name like N'%Đà N' and transactions.t_type is null and DATEDIFF(yy,t_date,getdate())=30
go
--14. Thống kê thông tin giao dịch theo mùa, nội dung thống kê gồm: số lượng giao dịch,
--lượng tiền giao dịch trung bình, tổng tiền giao dịch, lượng tiền giao dịch nhiều nhất,
--lượng tiền giao dịch ít nhất.
select COUNT(t_id) as SLGiaoDich,AVG(t_amount) as luongTienGDTrungBinh,Sum(t_amount) as TongTienGD,
	MAX(t_amount) as LuongTienGDNhieuNhat,min(t_amount) as LuongTienGDItNhat
	from transactions
--15. Tìm số tiền giao dịch nhiều nhất trong năm 2016 của chi nhánh Huế. Nếu có thể, hãy đưa
--ra tên của khách hàng thực hiện giao dịch đó.
select Cust_name, max(t_amount) as SO_tien
from customer join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
				join Branch on customer.Br_id = Branch.BR_id
where YEAR(t_date)= 2016 and BR_name like N'%Huế' 
group by Cust_name
--16. Tìm khách hàng có lượng tiền gửi nhiều nhất vào ngân hàng trong năm 2017 (nhằm mục
--đích tri ân khách hàng)
select top 1 cust_name, max(t_amount) as Max_TienGiaoDich,BR_name,Cust_phone,Cust_ad
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		    join transactions on account.Ac_no=transactions.ac_no
where YEAR(t_date)=2017 and t_type =0
group by Cust_name,BR_name,t_amount,Cust_phone,Cust_ad
order by t_amount desc
/*select Cust_name,(select MAX(So_Tien_Gui) from (select Sum(t_amount) as So_Tien_Gui 
from customer join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where t_type = 1 and year(t_date) =2017)*/
select * from transactions 
-----
select count(Cust_name) as So_KH,
(select AVG(t.b) from ( select sum(T_amount) b, YEAR(t_date) a
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where BR_name like N'Vietcombank Đà Nẵng'
group by YEAR(t_date)) t) Tong_tien
from Branch join customer on Branch.BR_id = customer.Br_id
where BR_name like N'Vietcombank Đà Nẵng'
--17. Hãy liệt kê những tài khoảng trong vòng 6 tháng trở lại đây không phát sinh giao dịch
select transactions.ac_no,t_type,t_amount,t_date
from account join transactions on account.Ac_no=transactions.ac_no
where MONTH(t_date) <6 and t_type is null
--18. Ông Phạm Duy Khánh thuộc chi nhánh nào? Từ 01/2017 đến nay ông Khánh đã thực
--hiện bao nhiêu giao dịch gửi tiền vào ngân hàng với tổng số tiền là bao nhiêu.
select Cust_name,BR_name,
(select count(t_type) 
from customer
            join account on customer.Cust_id=account.cust_id
		    join transactions on account.Ac_no=transactions.ac_no
where (t_type =1 and t_date between '2017/01/01' and '2019/09/02')and Cust_name like N'Phạm Duy Khánh') as SLGiaoDichGui,

(select sum(t_amount)
from customer
            join account on customer.Cust_id=account.cust_id
		    join transactions on account.Ac_no=transactions.ac_no
where (t_type =1 and t_date between '2017/01/01' and '2019/09/02') and Cust_name like N'Phạm Duy Khánh') as TongTienGiaoDichGui

from Branch join customer on Branch.BR_id=customer.Br_id
where Cust_name like N'Phạm Duy Khánh'
--19. Tìm giao dịch gửi tiền nhiều nhất trong mùa đông. Nếu có thể, hãy đưa ra tên của người
--thực hiện giao dịch và chi nhánh.
select top 1 t_amount,  Cust_name, BR_ad 
from customer join Branch on customer.Br_id = Branch.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where t_type = 1 and month(t_date) between 10 and 12
group by Cust_name,  BR_ad, t_amount
order by t_amount desc
--20. Để bổ sung nhân sự cho các chi nhánh, cần có kết quả phân tích về cường độ làm việc
--của họ. Hãy liệt kê những chi nhánh phải làm việc qua trưa (có giao dịch gửi tiền diễn ra
--vào giờ nghỉ trưa).
select BR_name 
from Branch join customer on Branch.Br_id = customer.BR_id
				join account on customer.Cust_id = account.cust_id
				join transactions on account.Ac_no = transactions.ac_no
where t_time between '11:30' and '13:00'
--21. Hãy liệt kê các giao dịch bất thường. Gợi ý: là các giao dịch gửi tiền những được thực
--hiện ngoài khung giờ làm việc và cho phép overtime (từ sau 16h đến trước 7h)
select t_id, t_type, t_amount
from transactions
where t_type = 1 and (t_time >= '16:00' or t_time < '07:00')
--22. Có bao nhiêu người ở Đắc Lắc sở hữu nhiều hơn một tài khoản?
select count(P.cust_name) as SLKhachHang
from (select cust_name, count(ac_no) SLTaiKhoan
from customer join account on account.cust_id=customer.cust_id
where cust_ad like N'%Đăk Lăk'
group by cust_name) P
where P.SLTaiKhoan>1
---
select * from customer
select count(ac_no) as So_tk
from customer join account on customer.cust_id = account.Cust_id
where Cust_ad like N'%ĐăkLăk' 
group by account.cust_id
--23. Nếu mỗi giao dịch rút tiền ngân hàng thu phí 3.000 đồng, hãy tính xem tổng tiền phí thu
--được từ thu phí dịch vụ từ năm 2012 đến năm 2017 là bao nhiêu?
select(select COUNT(t_type) as SLGiaoDichRutTien
from transactions
where t_type = 0 and t_date between '2012/01/01' and '2017/12/31') * 3.000 as TongTienPhi
-- 24. Hiển thị thông tin các khách hàng họ Trần theo các cột sau:                                                   
select customer.cust_id,Cust_name,ac_balance
from customer join account on customer.Cust_id=account.cust_id
where Cust_name like N'Trần%'
----25. Cuối mỗi năm, nhiều khách hàng có xu hướng rút tiền khỏi ngân hàng để 
--        chuyển sang ngân hàng khác hoặc chuyển sang hình thức tiết kiệm khác.
--        Hãy lọc những khách hàng có xu hướng rút tiền khỏi ngân hàng bằng hiển thị những người rút gần hết tiền trong tài khoản,
--        chỉ quan tâm tới khách hàng có nhiều tiền trong tài khoản, cụ thể như sau:
--        tổng tiền rút trong tháng 12/2017 trên 100 triệu và số tiền còn lại trong tài khoản nhỏ hơn 100.000
select Cust_name ten
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		join transactions on account.Ac_no=transactions.ac_no
where (YEAR(t_date)=2017 and MONTH(t_date)=1) and t_type=0 and t_amount > 100000000 and ac_balance <100000
group by account.ac_no, Cust_name
----26. Thời gian vừa qua, hệ thống CSDL của ngân hàng bị hacker tấn công (giả sử tí cho vui  ), 
--tổng tiền trong tài khoản bị thay đổi bất thường.
--Hãy liệt kê những tài khoản bất thường đó. Gợi ý: tài khoản bất thường là tài khoản có tổng tiền gửi – tổng tiền rút <> 
--số tiền trong tài khoản.
--Sau khi điều tra xong, anh/chị hãy cập nhật lại số tiền trong tài khoản cho đúng. Số dư = tổng tiền gửi – tổng tiền rút 
Select account.Ac_no, Ac_balance, (Select SUM(t_amount) 
								   from transactions Where transactions.ac_no = account.Ac_no AND t_type = '1') 
								   -
								  (Select SUM(t_amount) 
								   from transactions Where  transactions.ac_no = account.Ac_no AND t_type = '0')
From account
Where (Select SUM(t_amount) 
	   from transactions Where transactions.ac_no = account.Ac_no AND t_type = '1') 
	   -
	  (Select SUM(t_amount) 
	   from transactions  Where  transactions.ac_no = account.Ac_no AND t_type = '0') <> ac_balance
--27. Do cơ chế kiểm soát chưa tốt nên một số tài khoản có số dư âm. Hãy liệt kê những tài khoản đó. 
--Giao dịch đó được thực hiện ở chi nhánh nào? (mục đích để quy kết trách nhiệm ) 
select Ac_no,BR_name,ac_balance
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
where ac_balance < 0
----28. (Giả sử) Gần đây, một số khách hàng ở chi nhánh Đà Nẵng kiện rằng: 
--tổng tiền trong tài khoản không khớp với số tiền họ thực hiện giao dịch. 
--Hãy điều tra sự việc này bằng cách hiển thị danh sách khách hàng ở Đà Nẵng
--bao gồm các thông tin sau: mã khách hàng, họ tên khách hàng, tổng tiền đang có trong tài khoản, tổng tiền đã gửi, tổng tiền đã rút, 
--kết luận (nếu tổng tiền gửi – tổng tiền rút = số tiền trong tài khoản  OK, trường hợp còn lại  có sai). 
--Gợi ý: sử dụng cú pháp case…when (đọc trong tài liệu) 


--29. Ngân hàng cần biết những chi nhánh nào có nhiều giao dịch rút tiền vào buổi chiều để chuẩn bị chuyển tiền tới.
--Hãy liệt kê danh sách các chi nhánh và lượng tiền rút trung bình theo ngày (chỉ xét những giao dịch diễn ra trong buổi chiều), 
--sắp xếp giảm giần theo lượng tiền giao dịch. 

select BR_name,AVG(t_amount) as LuongTienRutTB,day(t_date) as Ngay
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		join transactions on account.Ac_no=transactions.ac_no
where t_type = 0 and t_time between '13:00' and '17:30'
group by day(t_date),BR_name
order by LuongTienRutTB desc
--30. Tìm những khách hàng có cùng chi nhánh với ông Phan Nguyên 
select Cust_name
from Branch join customer on Branch.BR_id=customer.Br_id
where Br_name = ( select BR_name
from Branch join customer on Branch.BR_id=customer.Br_id
where Cust_name like N'%Phan Nguyên%' )
-- 31. Liệt kê những giao dịch thực hiện cùng giờ với giao dịch của ông Lê Nguyễn Hoàng Văn ngày 2016-12-02 
select transactions.t_id,Cust_name,t_date
from customer
        join account on customer.Cust_id=account.cust_id
		join transactions on account.Ac_no=transactions.ac_no
where t_date = (select t_date
from customer
        join account on customer.Cust_id=account.cust_id
		join transactions on account.Ac_no=transactions.ac_no
where Cust_name like N'Lê Nguyễn Hoàng Văn' and t_date = '2016/12/02')
-- 32. Hiển thị danh sách khách hàng ở cùng thành phố với Trần Văn Thiện Thanh                                 (*)
select * from customer
where cust_ad =
(select Cust_ad
from customer
where Cust_name like N'Trần Văn Thiện Thanh' and Cust_ad like N'%Quảng Nam')

--33. Tìm những giao dịch diễn ra cùng ngày với giao dịch có mã số 0000000217 
select *
from transactions
where t_date = (select t_date
from transactions
where t_id = 0000000217 )

--34. Tìm những giao dịch cùng loại với giao dịch có mã số 0000000387
 select *
from transactions
where t_type = (select t_type
from transactions
where t_id = 0000000217 )

--35. Những chi nhánh nào thực hiện nhiều giao dịch gửi tiền trong tháng 12/2015 hơn chi nhánh Đà Nẵng 
select BR_name
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		join transactions on account.Ac_no=transactions.ac_no
where t_type >
(select COUNT(t_type) as SLGiaoDich
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		join transactions on account.Ac_no=transactions.ac_no
where t_type= 1 and BR_name like N'Vietcombank Đà Nẵng' and (YEAR(t_date)=2016 and month(t_date)=12))
--36. Ông Nguyễn Văn Linh thuộc chi nhánh ngân hàng nào, chi nhánh đó có ở quê ông ấy không? Số tiền trong tài khoản của ông ấy là bao nhiêu? 
      --Trong 20 trở lại đây ông Linh có thực  hiện giao dịch nào không



--37. Số điện thoại trong CSDL của ngân hàng hiện đang lưu số điện thoại ở dạng 11 số. 
--Dựa theo quy tắc đổi số điện thoại của các nhà mạng, hãy cập nhật lại số điện thoại cho đúng.

select * from customer
select * from Branch
select * from account
select * from transactions

-----------------------------------------------------------------------------------------------------------------------------------
-------------------------------------T-SQL-------------------------------------------------------k--
--1.In sđt của Hà Công Lực
 --c1: set
 declare @SĐt varchar(12)
 set @SĐt = (select Cust_phone from customer 
 where Cust_name = N'Hà Công Lực')
 print  'So dien thoai: ' +@SĐT
 --c2: select
 declare @soDienThoai varchar(12)
 select @soDienThoai= Cust_phone
 from customer 
 where Cust_name = N'Hà Công Lực'
 print  'So dien thoai: ' + @soDienThoai
 --2.Nguyễn Đức Duy thuộc chi nhánh nào và có bao nhiêu tài khoản
 --c2: select
 declare @chiNhanh nvarchar(100), @soTK int
 select @chiNhanh = (select BR_name from Branch),
	    @soTK = (select count(Ac_no) from account
				group by cust_id
		)
from customer join account on customer.Cust_id = account.cust_id
				join Branch on customer.Br_id = Branch.BR_id
where Cust_name = N'Nguyễn Đức Duy'
print  @chiNhanh 
print @soTk 

--3.Chi nhánh VC ĐN có ad ở đâu, có bn khách hàng, tổng lượng tiền.
go
select * from Branch
declare @diaChi nvarchar(50), @soKH int, @tongTien int
select @diaChi =(select BR_ad 
				 from Branch
				 where BR_name = N'Vietcombank Đà Nẵng'),
		@soKH =( select COUNT(Cust_id)
				 from Branch join customer on Branch.BR_id = customer.Br_id
				 where BR_name = N'Vietcombank Đà Nẵng'), 
		@tongTien = ( select sum(ac_balance)
		from account join customer on account.cust_id = customer.Cust_id
					  join Branch on customer.Br_id = Branch.BR_id
		where BR_name = N'Vietcombank Đà Nẵng')
from customer join account on customer.Cust_id = account.cust_id
				join Branch on customer.Br_id = Branch.BR_id
where BR_name = N'Vietcombank Đà Nẵng'
print N'Địa chỉ:'
print  @diaChi
print  N'Số khách hàng:'
print  @soKH
print N'Tổng tiền '
print  @tongTien
go
--4.Trần Văn Thiện Thanh có ad ở đâu hiện đang có bn tài khoản, trong tháng 4/2014 thực hiện bn giao dịch rút tiền.
go
select * from transactions
declare @diaChi nvarchar(50), @demTaiKhoan int, @soGiaodich int
select @diaChi = (select Cust_ad
				  from customer
				  where Cust_name = N'Trần Văn Thiện Thanh'),
	   @demTaiKhoan = (select count(Ac_no)
						from account join customer on account.cust_id = customer.Cust_id
						where Cust_name = N'Trần Văn Thiện Thanh'),
	   @soGiaodich =(select count(t_id)
	                from transactions join account on transactions.ac_no = account.Ac_no
									  join customer on account.cust_id = customer.Cust_id
					where Cust_name = N'Trần Văn Thiện Thanh')
from transactions join account on transactions.ac_no = account.Ac_no
				  join customer on account.cust_id = customer.Cust_id
where Cust_name = N'Trần Văn Thiện Thanh'
print N'Địa chỉ: '
print @diaChi
print N'Số tài khoản: '
print @demTaiKhoan
print N'Số giao dịch: '
print @soGiaodich					
go
--5.Trần ĐỨc quý có bn tiền trong tk, hãy liệt kê tất cả các gd từ trước đến nay của TĐQ, mỗi gd hiển thị: mã Gd, ngày giờ, số tiền, loại gd
--(table)
select * from transactions 
select * from account

go
declare @table5 table ( soTien int, maGD varchar(15), ngay date, gio time, tien int, loaiGD bit)
insert into @table5 select
	(select SUM(ac_balance)
	from account join customer on account.cust_id = customer.Cust_id
	where Cust_name = N'Trần Đức Quý'),
	(select t_id 
	from transactions join account on transactions.ac_no= account.Ac_no
					  join customer on account.cust_id = customer.Cust_id
	where Cust_name = N'Trần Đức Quý'),
	(select t_date 
	from transactions join account on transactions.ac_no= account.Ac_no
					  join customer on account.cust_id = customer.Cust_id
    where Cust_name = N'Trần Đức Quý'),
	(select t_time
	from transactions join account on transactions.ac_no= account.Ac_no
					  join customer on account.cust_id = customer.Cust_id
    where Cust_name = N'Trần Đức Quý'),
	(select t_amount
	from transactions join account on transactions.ac_no= account.Ac_no
					  join customer on account.cust_id = customer.Cust_id
    where Cust_name = N'Trần Đức Quý'),
	(select t_type))
	from transactions join account on transactions.ac_no= account.Ac_no
					  join customer on account.cust_id = customer.Cust_id
    where Cust_name = N'Trần Đức Quý')
from transactions join account on transactions.ac_no= account.Ac_no
					  join customer on account.cust_id = customer.Cust_id
where Cust_name = N'Trần Đức Quý'
select * from @table5
--6.Ngày 13/02/2013 diễn ra bn gd rút tiền và những gd đó diễn ra ở những chi nhánh nào, hiển thị ds những gd đó( table)
go
declare @tab table ( numGd int,
					w_chiNhanh nvarchar(50),
					ma  char(10),
					soTien numeric(15,0))
insert into @tab select 
					(
						select count(t_id) 
						from transactions  
						where t_type = '0' and t_date = '2013-05-18'), 
						BR_ad,t_id,t_amount
				 from Branch join customer on Branch.BR_id=customer.Br_id
							join account on customer.Cust_id=account.cust_id
							join transactions on account.Ac_no=transactions.ac_no
				where t_date = '2013-05-18' and t_type = '0'
select * from @tab

go
--ex: hiển thị ds  ( tên, sđt, đc) ở cn đn
DECLARE @T Table ( ten nvarchar(50),
					sđt varchar(12),
					diaChi nvarchar(100))
insert into @T select Cust_name, Cust_phone, Cust_ad
				from customer join branch on customer.Br_id = Branch.BR_id
				where BR_name like N'%Đà Nẵng'
select * from @T
select * from transactions

--------------------------------------------------------------------------------------
---------------------------------BIẾN------------------------------------------------
--1. Tháng nào là tháng bận rộn nhất của chi nhánh Đà Nẵng (có nhiều giao dịch nhất).
--COD THƯỜNG
select top 1 (Count(t_amount)) GD, MONTH(t_date) Thang
from transactions join account on transactions.ac_no = account.Ac_no
				  join customer on account.cust_id = customer.Cust_id
				  join Branch on customer.Br_id = Branch.BR_id
where BR_name like N'% Đà Nẵng' 
group by transactions.t_date
order by (Count(t_amount)) DESC
--
--T-SQL
go
declare @table2 table ( thang date, dem int)
insert into @table2 select ( select top 1 COUNT(t_amount), MONTH(t_date)
							from transactions join account on transactions.ac_no = account.Ac_no
												join customer on account.cust_id = customer.Cust_id
												join Branch on customer.Br_id = Branch.BR_id
							where  BR_name like N'% Đà Nẵng' 
							group by transactions.t_date
							order by (Count(t_amount)) DESC)
from transactions join account on transactions.ac_no = account.Ac_no
				  join customer on account.cust_id = customer.Cust_id
				  join Branch on customer.Br_id = Branch.BR_id
where BR_name like N'% Đà Nẵng' 
select * from @table2
--2. Có bao nhiêu khách hàng quê ở Quang Nam nhưng lại mở tài khoản ở chi nhánh Đà Nẵng, số
--tiền trung bình trong tài khoản của họ là bao nhiêu
--Select
declare @numKhach int, @moneyTB numeric(15,0)
select @numKhach = (select Count(Cust_name) from customer join Branch on customer.Br_id = Branch.BR_id
					where Cust_ad like N'%Quảng Nam' and BR_name like N'%Đà Nẵng'),
	   @moneyTB =( select AVG(ac_balance) from customer join Branch on customer.Br_id = Branch.BR_id
												join account on customer.Cust_id = account.Cust_id
									where Cust_ad like N'%Quảng Nam' and BR_name like N'%Đà Nẵng')
print N'Số Khách'
print  @numKhach
print N'Tiền trung bình'
print   @moneyTB
--table 
go
declare @ta table (soKhach int, tientb numeric(15,0))
insert into @ta select (select Count(Cust_name) from customer join Branch on customer.Br_id = Branch.BR_id
					where Cust_ad like N'%Quảng Nam' and BR_name like N'%Đà Nẵng'),
					(select AVG(ac_balance) from customer join Branch on customer.Br_id = Branch.BR_id
												join account on customer.Cust_id = account.Cust_id
									where Cust_ad like N'%Quảng Nam' and BR_name like N'%Đà Nẵng')
				from customer join Branch on customer.Br_id = Branch.BR_id
							  join account on customer.Cust_id = account.Cust_id
				where Cust_ad like N'%Quảng Nam' and BR_name like N'%Đà Nẵng'
select * from @ta
go
--3. Khách hàng Dương Ngọc Long thuộc chi nhánh ngân hàng nào, quê quán ở đâu, sở hữu bao
--nhiêu tài khoản và trong năm 2016 đã thực hiện bao nhiêu giao dịch trên mỗi tài khoản.
--SELECT:
select * from transactions
declare @chiNhanh nvarchar(50), @queQuan nvarchar(50), @soTaiKhoan int, @soGiaoDich int
select @chiNhanh = (select BR_name 
					from Branch join customer on Branch.BR_id = customer.Br_id
					where Cust_name = N'Dương Ngọc Long'),
	   @queQuan =(select Cust_ad 
				  from customer
				  where Cust_name = N'Dương Ngọc Long'),
	   @soTaiKhoan =( select COUNT(Ac_no) 
					  from account join customer on account.cust_id = customer.Cust_id
					  where Cust_name = N'Dương Ngọc Long'),
	   @soGiaoDich =(select COUNT(t_amount)
					from transactions 
					where YEAR(t_date) =2016  and Cust_name = N'Dương Ngọc Long'
					)
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		    join transactions on account.Ac_no=transactions.ac_no 
where Cust_name = N'Dương Ngọc Long' and YEAR(t_date) =2016
print N'Chi nhanh'
print @chiNhanh
print N'Quê quán'
print @queQuan
print @soTaiKhoan
print @soGiaoDich
--Table
declare @table1 table ( chiNhanh nvarchar(50), queQuan nvarchar(50), soTaiKhoan int, soGiaoDich int)
insert into @table1 select (select BR_name 
					from Branch join customer on Branch.BR_id = customer.Br_id
					where Cust_name = N'Dương Ngọc Long'),
					(select Cust_ad 
				     from customer
				     where Cust_name = N'Dương Ngọc Long'),
					 (select COUNT(Ac_no) 
					  from account join customer on account.cust_id = customer.Cust_id
					  where Cust_name = N'Dương Ngọc Long'),
					  (select COUNT(t_amount)
						from transactions 
					   where YEAR(t_date) =2016 and Cust_name = N'Dương Ngọc Long' )
from Branch join customer on Branch.BR_id=customer.Br_id
            join account on customer.Cust_id=account.cust_id
		    join transactions on account.Ac_no=transactions.ac_no 
where Cust_name = N'Dương Ngọc Long' and YEAR(t_date) =2016
select * from @table1
--4. Hiển thị số lượng giao dịch của khách hàng Trương Quang Hòa trong vòng 2 năm trở lại đây.
--SET
select * from transactions
declare @soLuongGiaoDich int
set @soLuongGiaoDich = (select COUNT(T_id) 
					from transactions join account on transactions.ac_no = account.Ac_no
										join customer on account.cust_id = customer.Cust_id
					where Cust_name = N'Trương Quang Hòa' and DATEDIFF(yy,t_date,GETDATE())=2)
print N'Số giao dịch: '
print @soLuongGiaoDich
--TABLE
declare @table3 table ( soLuongGiaoDich int)
insert into @table3 select ( select COUNT(T_id))
					from transactions join account on transactions.ac_no = account.Ac_no
										join customer on account.cust_id = customer.Cust_id
					where Cust_name = N'Trương Quang Hòa' and DATEDIFF(yy,t_date,GETDATE())=2
select * from @table3
--5. Hiển thị danh sách khách hàng không thực hiện bất kì giao dịch nào trong vòng 3 năm trở lại
--đây
go
select * from customer
declare @dsKhach nvarchar(50) 
set @dsKhach = (select Cust_name 
				from customer join account on customer.Cust_id = account.Cust_id
								join transactions on account.Ac_no = transactions.Ac_no
				where t_type is null and Datediff(yy,t_date,getdate())=3)
print N'Danh sách khách: '
print @dsKhach
go
---TABLE
declare @table4 table (dsKhach nvarchar(50))
insert into @table4 select(select Cust_name)
from customer join account on customer.Cust_id = account.Cust_id
								join transactions on account.Ac_no = transactions.Ac_no
				where t_type is null and Datediff(yy,t_date,getdate())=3
select * from @table4
--Chi nhánh ngân hàng nào đang quản lý ít tiền (tổng tiền trong tài khoản của khách) nhất
select * from Branch
select * from account
declare @ChiNhanh nvarchar(50)
select @ChiNhanh = (select top 1 BR_name, sum(ac_balance)
					from Branch join customer on Branch.BR_id = customer.Br_id
								join account on customer.Cust_id = account.cust_id
					group by Branch.BR_name, account.ac_balance
					order by sum(ac_balance) ASC)
Print @ChiNhanh
--6. Có những khách hàng nào chưa thực hiện giao dịch nào từ trước tới nay.
select * from transactions
declare @khachHang2 nvarchar(100) 
select @khachHang2 = (select Cust_name
                  from customer join account on customer.Cust_id = account.cust_id
				               join transactions on account.Ac_no = transactions.ac_no
				  where YEAR(t_date) < 2019 and t_type is null)
print N'Danh sach khach: '
print @khachHang2

declare @table6 table (khachHang nvarchar(100))
insert into @table6 select
(
	select Cust_name 
	from customer
)
from customer join account on customer.Cust_id = account.cust_id
				   join transactions on account.Ac_no = transactions.ac_no
where YEAR(t_date) < 2019 and t_type is null
select * from @table6

--7. Có những tài khoản nào thực hiện giao dịch (rút hoặc gửi tiền) cùng ngày với giao dịch gần
--đây nhất của ông Nguyễn Trí Hùng, những giao dịch đó được thực hiện ở những chi nhánh
--nào?
select * from transactions
select * from account
select * from Branch
DECLARE @taikhoan VARCHAR(15), @chinhanh5 NVARCHAR(50)
SELECT @taikhoan = (select ac_no
					from account),
	   @chinhanh5 =(select BR_name
					from Branch)
FROM Branch join customer on Branch.BR_id = customer.Br_id
			join account on customer.Cust_id = account.cust_id
			join transactions on account.Ac_no = transactions.ac_no
WHERE cust_name LIKE N'Nguyễn Trí Hùng'
GROUP BY br_name
HAVING COUNT(t_id) = ( SELECT top 1 count(t_id) as Ngaygannhat
					   FROM Branch join customer on Branch.BR_id = customer.Br_id
								   JOIN account on customer.Cust_id = account.cust_id
								   JOIN transactions ON account.Ac_no = transactions.ac_no
					   WHERE BR_name like N'%Đà Nẵng'
					   GROUP by MONTH(t_date)
					   ORDER by Ngaygannhat DESC
					 )
PRINT @taikhoan 
PRINT @chinhanh5
----EX:
--3. liệt kê những gd diễn ra cùng giờ với gd của ông lê nguyễn hoàng văn vào 2/12/2016
select cust_name, t_id,t_date, t_time
from transactions join account on transactions.ac_no = account.Ac_no
				  join customer on account.cust_id = customer.Cust_id
where datepart(hh,t_time) = (select datepart(hh,t_time)
							 from transactions join account on transactions.ac_no = account.Ac_no
				                               join customer on account.cust_id = customer.Cust_id
							 where Cust_name = N'Lê Nguyễn Hoàng Văn'
							       and t_date = '2016/12/02')
and Cust_name not like N'Lê Nguyễn Hoàng Văn'
--8. Trong tháng 11/2010, có bao nhiêu khách hàng thuộc chi nhánh Quảng Nam thực hiện nhiều
--hơn 1 giao dịch? Hãy hiển thị danh sách những khách hàng và số lần giao dịch tương ứng.
--9. Ai là người có nhiều tiền gửi vào ngân hàng Vietcombank nhất tính tới thời điểm tháng
--12/2016
select * from transactions
declare @table9 table (  soTien int,who nvarchar(50))
insert into @table9 select top 1 sum(t_amount) ,cust_name
					from customer join Branch on customer.Br_id = Branch.BR_id
								 join account on customer.Cust_id = account.cust_id
								 join transactions on account.Ac_no = transactions.ac_no
					where t_type =1 and YEAR(t_date) < 2017
					group by customer.Cust_name
select * from @table9

-------------------------IF-ELSE-------------------------------------------
--1.Giao dịch gần đây nhất của CN ĐN là giao dịch gửi tiền hay rút tiền?
select * from Branch
declare @t_type char(1)
set @t_type =(select top 1 t_type
			from transactions join account on transactions.ac_no = account.Ac_no
								  join customer on account.cust_id = customer.Cust_id
								  join Branch on customer.Br_id = Branch.BR_id
			where BR_name like N'%Đà Nẵng'
						order by t_date DESC, t_time DESC)
if @t_type = '0'
	print N'Rút tiền'
else
print N'Gửi tiền'
---

--2.Ông Nguyễn Đưc Duy đang sở hữu tk loại j ( loại 0: vip, loại 1: normal)
declare @checkTk char(1)
set @checkTk = ( select ac_type
				from account join customer on account.cust_id = customer.Cust_id
				where Cust_name = N'Nguyễn Đức Duy')
if @checkTk = '0'
	print N'Loại Vip'
else 
	print N'Loại Normal' 
--3.Nguyễn Văn Linh sử dụng SĐT của Hãng nào ? VT>MB>VN>#
--IF-ELSE:
select * from account
declare @checkSDT char(15) 
select @checkSDT = ( select Cust_phone
				from customer
				where Cust_name = N'Nguyễn Văn Linh')
if (@checkSDT  like '09[6-8]%' or @checkSDT like '016[2-9]%')
	print N'Hãng Viettel'
else if (@checkSDT like '012[0-3]%' and @checkSDT like '09[3-5]%')
	print N'Hãng mobi'
else if @checkSDT like '012[4-9]%'
	print N'Hãng Vina'
else
	print N'Hãng Khác'
--CASE-WHEN:
declare @checkSDT1 char(50), @checkCase varchar(50)
select @checkSDT1 = ( select Cust_phone
				from customer
				where Cust_name = N'Nguyễn Văn Linh')
set @checkCase= Case when (@checkSDT1  like '09[6-8]%' or @checkSDT1 like '016[2-9]%')
					Then  N'Hãng Viettel'
					when (@checkSDT1 like '012[0-3]%' and @checkSDT1 like '09[3-5]%')
					Then  N'Hãng mobi'
					Else  N'Hãng Khác' END
print @checkCase
--4.Nguyễn Ngọc Thắng và Trương Duy Tường có cùng quê với nhau ko?
select * from customer
declare @checkque1 nvarchar(50),@checkque2 nvarchar(50)
select @checkque1 = (select RIGHT(cust_ad,9)
					from customer
					where Cust_name = N'Nguyễn Ngọc Thắng'),
		@checkque1 =(select RIGHT(cust_ad,9)
					from customer
					where Cust_name = N'Trương Duy Tường')
if @checkque1 = @checkque2
	print N'Cùng quê'
else
	print N'Khác quê'

--5.Nguyễn Lê Minh QUân có mở TK VC tại quê của anh ta hay ko?
select * from customer
select * from Branch
declare @checkChiNhanh nvarchar(50), @checkQue nvarchar(50)
select @checkChiNhanh = ( select )
--6. Trong 6 tháng gần đây Trần Đức Quý có thực hiện giao dịch nào ko? Có/không?
go
declare @checkGD char(1)
select @checkGD =(select t_type
				from transactions join account on transactions.ac_no = account.Ac_no
									join customer on account.cust_id = customer.Cust_id
				where Cust_name =N'Trần Đức Quý' and DATEDIFF(mm,t_date,getdate())=6 )
if (@checkGD = '0' or @checkGD ='1')
	print N'Có'
else
	print N'Không'
go
--7. Lê Minh Trí có phải là người có nhiều tiền nhất trong TK tại chi nhánh mà anh ta mở ko?
select * from account
select * from customer
declare @checkCN nvarchar(50), @tien int, @tong_tien int, @br_id char(12)
set @tong_tien = ( select Sum(ac_balance)
				from account join customer on account.cust_id = customer.Cust_id
				where Cust_name = N'Lê Minh Trí'
				)
set @checkCN = ( select Br_name
					from Branch join customer on Branch.BR_id = customer.Br_id
					where Cust_name = 'Lê Minh Trí')
--set @checkTen =( select top 1 Cust_name
--				from account join customer on account.cust_id = customer.Cust_id
--							join Branch on customer.Br_id =Branch.BR_id
--				where BR_ad = @checkCN
--				order by ac_balance DESC)
set @tien = (select max(ac_balance)
			from account join customer on account.Cust_id = customer.Cust_id
							join Branch on customer.Br_id =Branch.BR_id
			where BR_ad = @checkCN)
if(@tong_tien > @tien)
	print N'Tiền lớn nhất'
else
	print N'Không phải tiền lớn nhất'
--if (@checkTen = N'Nguyễn Minh Trí')
--	print N'Đúng'
--else
--	print N'Sai'
--8. Lê Hoàng Duy có quê thuộc miền nào? (bắc bộ/bắc trung bộ/ nam trung bộ/nam bộ)
select * from customer
where Cust_name = 'Lê Hoàng Duy'
select * from customer
declare @checkHomeTown nvarchar(50)
set @checkHomeTown = (select RIGHT(cust_ad,11)
						from customer
						where Cust_name ='Lê Hoàng Duy')
						--charindex()
						--right()
if(@checkHomeTown in ( N'Lào Cai', N'Yên Bái',N'Điện Biên', N'Hòa Bình', N'Lai Châu', N'Sơn La',
		N'Hà Giang',N'Cao Bằng',N'Bắc Kạn',N'Lạng Sơn',N'Tuyên Quang',N'Thái Nguyên',
		N'Phú Thọ'))
		print N'Quê ở Bắc bộ'
else if(@checkHomeTown in (N'Thanh Hóa', N'Nghệ An', N'Hà Tĩnh', N'Quảng Bình', N'Quảng Trị', N'Huế'))
		print N'Quê ở Bắc trung bộ '
else if(@checkHomeTown in (N'Đà Nẵng', N'Quảng Nam',N'Quảng Ngãi',N'Bình Định'))
		print N'Quê ở Nam trung bộ'
else 
	print N'Không có'


--9.In dãy 1-1000
declare @num int
set @num =1
while @num <=1000
	begin
		print @num
		set @num =@num +1
	end
--10.In ra dãy số lẻ 1- 9999.
declare @numOdd int
set @numOdd =1
while @numOdd <1000
	begin
		if @numOdd % 2 != 0
		print @numOdd
		set @numOdd +=1
	end
--11.In ra dãy chắn 1-10000. Chia hết cho 4 thì bỏ qua ko in.
declare @numEven int
set @numEven =1
while @numEven <=10000
	begin
		if (@numEven % 2 = 0 and @numEven % 4 <> 0)
				print @numEven
		set @numEven +=1
		end
--12.Thêm mới 10000 dòng dữ liệu vào bảng customer.
declare @x int =0
declare @i int =1
select top 1 @x = CONVERT(int,cust_id)
from customer
order by Cust_id desc
while @i <=10
begin
	insert into customer(Cust_id) values (@x + @i)
	set @i +=1
end
select * from customer
--select * from customer
--declare  @dem int
--set @dem=0
--while (@dem <1000)
--BEGIN
--	insert into customer (Cust_id) values (@dem)
--	 set @dem = @dem + 1
--END
--select Count(*) customer
--13.In ra dãy fibonaci có phạm vi <1000
--14.IN
--*
--**
--***
--****
--*****
declare @star char(5), @numStar int, @number int
set @star ='*'
set @numStar =1
set @number =5
while @numStar <= @number
	print @star
	set @star = @star +'*'
--15 In
	-- *
	--***
 --  *****
 -- *******
--16 IN 
	--	  *
	--   **
	--  ***
	-- ****
	--*****
--17 In mũi tên: ^
--18 Lấy ra SĐT của Hà Công Lực, in ra tất ước của SĐT đó.
go
declare @numSdt int, @valuei int
select Convert( int,Cust_phone)
from customer
set @numSdt = (select Cust_phone 
				from customer
				where Cust_name =N'Hà Công Lực')
set @valuei =1
while( @valuei < @numSdt)
	begin
	if( @numSdt % @valuei =0)
			print @valuei
		set @valuei +=1
	end

--19.SĐT của Hà Công Lực và Trần Đức Quý có ước chung hay ko.

Select * from account
declare @cust_id nvarchar(100), @ac_no char(12)

--Trần Quang Khải thực hiện giao dịch lần đầu tiên tại ngân hàng Vietcombank là vào ngày thứ mấy? 

--đưa ra câu trả lời bằng tiếng Việt: thứ hai, thứ 3, thứ tư, ..., chủ nhật)

--Dùng IF...ELSE và CASE...WHEN để code

select * from transactions
declare @checkGd date, @thu int
set @checkGd = (select max(t_date)
				from transactions join account on transactions.ac_no = account.Ac_no
								join customer on account.cust_id = customer.Cust_id
				where Cust_name = N'Trần Quang Khải')
print @checkGd
set @thu = DATEPART(dw,@checkGd)
if @thu = '2' 
	print N'Thứ 2'
else if @thu = '3' 
	print N'Thứ 3'
else if @thu = '4' 
	print N'Thứ 4'
else if @thu = '5' 
	print N'Thứ 5'
else if @thu = '6' 
	print N'Thứ 6'
else if @thu = '7' 
	print N'Thứ 7'
else
	print N'Chủ nhật'

----------------------------------CURSOR------------------------------------------------
--Với mỗi khách hàng sử dụng số điện thoại Viettel,
--nếu số tiền trong tài khoản của họ ít hơn 50.000 thì cộng thêm cho họ 50.000 vào tài khoản tương ứng.
select * from account
--1.Với mỗi KH của cn ĐN, in ra số tiền trong tk của họ và nhận xét
---Ít: <1.000.000
---Else: nhiều

--B1: khai báo
declare  @name nvarchar(50), @soTien int 
declare khachHang Cursor for  select Cust_name, sum(ac_balance)
							from customer join account on customer.Cust_id = account.cust_id
							where  Cust_phone like '09[6-8]%' or Cust_phone like '016[2-9]%'
							group by Cust_name, Ac_no
--B2: mở
open khachHang
fetch khachHang into @name, @soTien
--B3: fetch
while @@FETCH_STATUS = 0
begin
	print N'Khách hàng: ' + @name + N' sử dụng SĐT viettel'
	if @soTien <50000 
		begin
			update account
			set ac_balance = ac_balance + 50000
			print N'Đã Cộng'
		end
	else
		print N'Không cộng'
	fetch khachHang into @name, @soTien
end
--b4: close
close khachHang
--B5: hủy
deallocate khachHang
select * from customer

select cust_name as ten
--select count (*)
from customer join account on customer.Cust_id = account.cust_id
where ac_balance < '500000' and (Cust_phone like '09[6-8]%' or Cust_phone like '016[2-9]%')

-------------------------------HÀM && THỦ TỤC--------------------------------
--1.Trả về tên(outP), địa chỉ(outp) của chi nhánh nếu biết mã(inp) của nó.
select * from Branch
create proc getInfor @ma varchar(50),
			@name nvarchar(50) out,
			@add nvarchar(50) out
as
begin
	select @name =Br_name, @add = BR_ad from Branch
	where BR_id = @ma
end
---test
declare @getName nvarchar(50), @getAdd nvarchar(50)
exec getInfor 'VB001', @getName out, @getAdd out
print @getName
print @getAdd
--2.Trả về số tiền trong tk nếu biết số Tk
select * from customer
create proc getAc @ac char(15),
			@numT int out
as
begin
	select @numT = ac_balance from account
	where Ac_no = @ac
end
--test
declare @getT int
exec getAc '1000000001', @getT out
print @getT
--3/Trả về tổng số kh của Vc bank
select * from Branch
alter proc numKH @condition nvarchar(50),
					@countKhach int out
as
begin
	select @countKhach = count(Cust_id) from customer join Branch on customer.Br_id = Branch.BR_name
									where BR_name = @condition
end
--test
declare @numKhach int
Exec numKH N'Vietcombank%', @numKhach out
print @numKhach

--4.In ra ds KH ở Huế.
alter proc listKhach @diachi nvarchar(100),
						@outKhach nvarchar(100) out
as
begin
	set @outKhach = (select cust_name from customer
	where Cust_ad like @diachi )
end
--test
declare @add nvarchar(100)
exec listKhach N'%Huế', @add out 
print N'Danh sách khách hàng'
print @add

select Cust_name
from customer
where Cust_ad like N'%Huế'
-------------------------Function-------------------------------
--1.Trả về số tiền trong tk nếu biết số Tk
create function fGetMoney(@acc varchar(120))
returns numeric(15,0)
as
begin
	declare @temp numeric(15,0)
	select @temp = ac_balance from account
							where Ac_no = @acc
	return @temp
end

create function f_getMoney(@soTk char(12))
returns numeric(15)
as
begin
	declare @temp1 numeric(15)
	select @temp1 = ac_balance from account where Ac_no = @soTk
	return @temp1
end
select dbo.f_getMoney('1000000001')
--test
select dbo.fGetMoney('1000000001')
--2.Trả về tổng số kh của Vc bank
create function fCountKhach (@num int)
returns int
as
begin
	select @num =  count(cust_name) from customer join Branch on customer.Br_id = Branch.BR_id
									where BR_name like N'Vietcombank%'
	return @num
end
---test
select dbo.fCountKhach

select * from Bank
--3.In ra ds KH ở Huế.
create proc ex_Cust @diachi nvarchar(100),
					@result nvarchar(100) out
as
begin
	select @result = Cust_name from customer
	where Cust_ad like @diachi
end

declare @ex nvarchar(100)
exec ex_Cust N'%HUẾ', @ex out 
print N'Danh sách khách'
print @ex


------------------THỦ TỤC + HÀM----------------------------------
--Hãy tạo các module (thủ tục hoặc hàm) thực hiện các yêu cầu dưới đây:
--1.	Trả về tên chi nhánh ngân hàng nếu biết mã của nó.
--****THỦ TỤC******
select * from Branch
create proc getBr_name @main char(5),
						@name_br nvarchar(50) out
as
begin
	set @name_br =( select BR_name 
	from Branch
	where @main = BR_id)
end
--Test
declare @exPortName nvarchar(50) 
exec getBr_name 'VN012', @exPortName out 
print @exPortName
--Hàm--
drop function f_getBr_name
create function f_getBr_name (@Br_id char(5))
returns nvarchar(50)
as
begin
	declare @name_br nvarchar(50)
	select @name_br= Br_name 
			from Branch
			where BR_id = @Br_id
	return @name_br
end
select dbo.f_getBr_name('VN014')
select * from Branch

--2.	Trả về tên, địa chỉ và số điện thoại của khách hàng nếu biết mã khách.
select * from customer
drop proc exPort1
create proc exPort1 @idCust char(6),
					@exName nvarchar(50) out,
					@exAdd nvarchar(50) out,
					@exNumPhone char(12) out
as
begin
	select  @exName = Cust_name, @exAdd= Cust_ad, @exNumPhone= cust_phone
	from Customer
	where @idCust = Cust_id
end
--Test
declare @exportName nvarchar(50), @exportadd nvarchar(50), @exportnum char(12)
exec exPort1'000002', @exportName out , @exportadd out, @exportnum out 
print @exportName
print @exportadd
print @exportnum

--3.	In ra danh sách khách hàng của một chi nhánh cụ thể nếu biết mã chi nhánh đó.
select * from Branch
drop proc list_cust
create proc list_cust @br_id char(6),
						@cust_name nvarchar(50) out
as
begin
	select @cust_name = cust_name
			from customer join Branch on customer.Br_id = Branch.BR_id
			where @br_id = Branch.BR_id
end
--Test
declare @ex_list_Cust nvarchar(50)
exec list_cust 'VB004', @ex_list_Cust out
print @ex_list_Cust

select Cust_name name 
from customer join Branch on customer.Br_id = Branch.BR_id
where branch.BR_id ='VB004'
--4.	Kiểm tra một khách hàng nào đó đã tồn tại trong hệ thống CSDL của ngân hàng chưa nếu biết:
--họ tên, số điện thoại của họ. Đã tồn tại trả về 1, ngược lại trả về 0
select * from customer
drop proc check_ex_cust
create proc check_ex_cust @cust_name nvarchar(50),
						@cust_phone char(12),
						@customer nvarchar(50) out
as
begin
	DECLARE @temp char(12)
	Select @temp= Cust_id
	from Customer
	where @cust_name=Cust_name and @cust_phone= Cust_phone

	IF @temp Is not null
	 SET @customer = '1'
	 ELSE
	 SET @customer = '0'
end
--Test:
declare @ex_customer nvarchar(50)
exec check_ex_cust 'Hà Công Lực', '01283388103', @ex_customer out 
print @ex_customer
--5.	Cập nhật số tiền trong tài khoản nếu biết mã số tài khoản và số tiền mới.
--Thành công trả về 1, thất bại trả về 0
select * from account
drop proc update_ac
create PROC update_ac1 @t_id char(12), 
						@money numeric(15,0),
						@ac_balance numeric(15,0) out
AS
BEGIN
	DECLARE @Price_temp numeric(15,0)
	UPDATE account
	SET @Price_temp= @money
	where Ac_no=@t_id and @money= @@ROWCOUNT
	if @money Is not null
		set @ac_balance=1
	else 
		set @ac_balance=0
END
--Test
DECLARE @ex_result Varchar(50)
exec update_ac1 '1000000001','12345678', @ex_result out
Print @ex_result
select * from account
--6.	Cập nhật địa chỉ của khách hàng nếu biết mã số của họ. 
--Thành công trả về 1, thất bại trả về 0
select * from customer
drop proc update_add
CREATE PROC update_add @cust_id char(12),
					@result nvarchar(50) out

AS
BEGIN
	declare @add nvarchar(50)
	UPDATE customer
	set @add= Cust_ad where Cust_id=@cust_id
	if @add = @@ROWCOUNT
		begin
		set @result = '1'
		print @result
		end
	else
		begin
		set @result = '0'
		print @result
		end
	return @result
END
--test
declare @resultac nvarchar(50)
exec update_add '000003', @resultac out
print @resultac

--7.	Trả về số tiền có trong tài khoản nếu biết mã tài khoản.
select * from account
create proc getAcbalance @ac_no char(10),
						@ac_balance numeric(15,0) out
as
begin
	select @ac_balance = ac_balance
			from account
			where @ac_no = account.Ac_no
end
--Test
declare @get_ac numeric(15,0)
exec getAcbalance '1000000001', @get_ac out
print @get_ac
--Hàm--
create function fGet_acbalance (@ac_no char(10))
returns numeric(15)
as
begin
	declare @f_ac_balance numeric(15)
	select @f_ac_balance = ac_balance
	from account
	return @f_ac_balance
end
--Test:
select dbo.fGet_acbalance ('1000000001')

--8.	Trả về số lượng khách hàng, tổng tiền trong các tài khoản nếu biết mã chi nhánh.
create proc static_cust @br_id char(5),
						@count_cust int out,
						@sum_acbalance numeric(15,0) out
as
begin
	select @count_cust = (select COUNT(cust_name)
						from customer join Branch on customer.Br_id = Branch.BR_id
						where @br_id = Branch.BR_id),
		   @sum_acbalance= (select sum(ac_balance)
						from account join customer on account.cust_id = customer.Cust_id
										join Branch on customer.Br_id = Branch.BR_id
						where @br_id = Branch.BR_id)
	from account join customer on account.cust_id = customer.Cust_id
				join Branch on customer.Br_id = Branch.BR_id
	where @br_id = Branch.BR_id
end		
--test
declare @get_count_cust int, @get_sum_acbalance numeric(15,0)
exec static_cust 'VB004' ,@get_count_cust out, @get_sum_acbalance out
print N'Số khách hàng của chi nhánh'
print @get_count_cust
print N'Tổng tiền trong tài khoản'
print @get_sum_acbalance
---Check data
select sum(ac_balance)
from account join customer on account.cust_id = customer.Cust_id
			join Branch on customer.Br_id = Branch.BR_id
where branch.BR_id ='VB004'
--9.	Kiểm tra một giao dịch có bất thường hay không nếu biết mã giao dịch. 
--Giao dịch bất thường: giao dịch gửi diễn ra ngoài giờ hành chính, giao dịch rút diễn ra vào thời điểm 0am  3am
alter proc check_Tran1 @t_id char(10),
						@result time out
as
begin
	select @result = T_time
					from transactions
					where @t_id = t_id
	if (@result between '00:00' and '03:00')
		print N'Bất thường'
    else
		print N'Bình thường'
end
--Test:
declare @ex_result time
exec check_Tran1 '0000000201', @ex_result out
select * from transactions

--Hàm--
create function f_check_tran (@t_id char(10))
returns nvarchar(50)
as
begin
	declare @temp time, @f_ex_result nvarchar(50)
	set @temp = (select t_time
				from transactions
				where t_id =@t_id)
	if (@temp between '00:00' and '03:00')
		set @f_ex_result= N'Bất thường'
	else
		set @f_ex_result= N'Bình thường'
	return @f_ex_result
end
--Test:
select dbo.f_check_tran('0000000228')
--10.	Trả về mã giao dịch mới. Mã giao dịch tiếp theo được tính như sau: MAX(mã giao dịch đang có) + 1. 
--Hãy đảm bảo số lượng kí tự luôn đúng với quy định về mã giao dịch
select * from transactions
declare @x int =0
declare @i int =1
select top 1 @x = CONVERT(int,cust_id)
from customer
order by Cust_id desc
while @i <=10
begin
	insert into customer(Cust_id) values (@x + @i)
	set @i +=1
end
create proc crea_tId @old_tid char(12) out,
					@new_tid char(12) out
as
begin
	set @old_tid = (select max(t_id)
					from transactions
end


--11.	Thêm một bản ghi vào bảng TRANSACTIONS nếu biết các thông tin ngày giao dịch,
--thời gian giao dịch, số tài khoản, loại giao dịch, số tiền giao dịch. 
--Công việc cần làm bao gồm
create proc insert_transaction (@t_date date,
								@t_time time,
								@t_id char(10),
								@t_type char(1),
								@t_amount numeric(15),
								@check int out)
as
begin
--a.	Kiểm tra ngày và thời gian giao dịch có hợp lệ không. Nếu không, ngừng xử lý
	if( DATEPART(dw,@t_date)=1  or  (DATEPART(dw,@t_date)=7)
	or(( @t_time not between '07:00' and '11:00') or ( @t_time not between '13:00' and '17:00') and @t_type = '1'))
	return
--b.	Kiểm tra số tài khoản có tồn tại trong bảng ACCOUNT không? Nếu không, ngừng xử lý
	declare @ac_no char(10)
	if not exists ( select * from account where Ac_no = @ac_no)
	return
--c.	Kiểm tra loại giao dịch có phù hợp không? Nếu không, ngừng xử lý
	if (@t_type not like '0' or @t_type not like '1')
	return
--d.	Kiểm tra số tiền có hợp lệ không (lớdeclare @temp numeric(15)
	set @t_amount =( select t_amount from transactions)
	if @t_amount <0
	return

--e.	Tính mã giao dịch mới
	/*declare @new_t_id char(10), @old_t_id char(10),@count int =1, @temp numeric(10) 
	select @old_t_id = max(t_id) from transactions
	set @temp = CAST(@old_t_id as numeric(10)) + 1
	set @new_t_id = CAST(@temp AS char(10))
	while @count <= (len(@old_t_id) - LEN(@temp))
		begin
			set @new_t_id = '0' + @new_t_id
			set @count = @count + 1
		end
		return @new_t_id*/
--f.	Thêm mới bản ghi vào bảng TRANSACTIONS
--select * from transactions
--create proc Insert_tran (@t_id,@t_type,@t_amount, @t_date,t_time);
--g.	Cập nhật bảng ACCOUNT bằng cách cộng hoặc trừ số tiền vừa thực hiện giao dịch tùy theo loại giao dịch
if @@ROWCOUNT>0
	begin
		if(@t_type='1')
			begin
				update account set ac_balance = ac_balance + @t_amount
				where Ac_no = @ac_no
			end
		else
			begin
				update account set ac_balance = ac_balance - @t_amount
				where Ac_no = @ac_no
			end
	end
	if @@ROWCOUNT <= 0
		rollback tran
	else
		commit
end
update account
set ac_balance = ac_balance + 50000
where Ac_no ='1000000004'
select * from account
select * from transactions

--BT: Tạo 1 thủ tục thực hiện xóa bản ghi trong bản Tran với các công việc:
create proc delete_tran (@t_id char(10),
						@t_type char(1),
						@check int out)
as
begin
	--a. Kiểm tra mã giao dịch đã tồn tại hay chưa. Nếu chưa tồn tại, kết thúc xử lí.
	if not exists (select t_id from transactions)
	return
	--b. Nếu loại giao dịch là gửi tiền. Thực hiện xóa bản ghi trong bản ghi trong bảng TRANSACTIONS đồng thời cập
	--nhật bản ACCOUNT với sự thay đổi cảu cột AC_BALANCE như sau AC_BALANCE = AC_BALANCE - t_amount của giao tác vừa xóa.
	if(@t_type ='1')
		begin
			
		end
--c. Nếu là giao dịch rút tiền. Thực hiện xóa bản ghi trong bảng TRANSACTIONS đồng thời cập nhật bảng ACCOUNT với sự thay đổi của
	--cột AC_BALANCE như sau: AC_BALANCE = AC_BALANCE _ t_amount của giao tác vừa xóa.
--Trong quá trình thực hiện, nếu lỗi ở 1 bước bất kì thì kết thúc toàn bộ dữ liệu quay trở lại trạng thái ban đầu.

--12.	Thêm mới một tài khoản nếu biết: mã khách hàng, loại tài khoản, số tiền trong tài khoản. Bao gồm những công việc sau:
--a.	Kiểm tra mã khách hàng đã tồn tại trong bảng CUSTOMER chưa? Nếu chưa, ngừng xử lý
--b.	Kiểm tra loại tài khoản có hợp lệ không? Nếu không, ngừng xử lý
--c.	Kiểm tra số tiền có hợp lệ không? Nếu NULL thì để mặc định là 50000, nhỏ hơn 0 thì ngừng xử lý.
--d.	Tính số tài khoản mới. Số tài khoản mới bằng MAX(các số tài khoản cũ) + 1
--e.	Thêm mới bản ghi vào bảng ACCOUNT với dữ liệu đã có.
--13.	Kiểm tra thông tin khách hàng đã tồn tại trong hệ thống hay chưa nếu biết họ 
--tên và số điện thoại. Tồn tại trả về 1, không tồn tại trả về 0
select * from customer
drop proc spTaiKhoan
CREATE PROC spTaiKhoan @cust_name char(6), 
						@Tien numeric(15,0),
						@TienTK numeric(15,0) out
AS
BEGIN
	DECLARE @Price numeric(15,0)
	UPDATE account
	SET @Price= @Tien
	where Ac_no=@cust_name and @Tien= @@ROWCOUNT
	if @Price Is not null
		begin 
		set @TienTK=1
		end
	else 
		set @TienTK=0
END
declare @check_inf numeric(15,0)
exec spTaiKhoan 'Hà Công Lực',@check_inf out
print @check_inf
--14.	Tính mã giao dịch mới. Mã giao dịch tiếp theo được tính như sau: MAX(mã giao dịch đang có) + 1. 
--Hãy đảm bảo số lượng kí tự luôn đúng với quy định về mã giao dịch

--15.	Tính mã tài khoản mới. (định nghĩa tương tự như câu trên) 
create function ex_ac()
returns bigint
as
begin
	declare @newAc_no bigint
	select @newAc_no = max(ac_no) + 1 
	from account
	return @newAc_no
end
--test
select dbo.ex_ac()
--16.	Trả về tên chi nhánh ngân hàng nếu biết mã của nó.
create proc get_brName @br_id char(5),
					@get_br_name nvarchar(50) out
as
begin
	select @get_br_name = Br_name
					from Branch
					where @br_id = BR_id
end
---Test:
declare @ex_br_name nvarchar(50)
exec get_brName 'VN018', @ex_br_name out
print @ex_br_name

create function ex_brName (@Br_id char(5))
returns nvarchar(50)
as
begin
	
end
--17.	Trả về tên của khách hàng nếu biết mã khách.
create proc getName @cust_id char(6),
					@get_name nvarchar(50) out
as
begin
	select @get_name = cust_name
					from customer
					where @cust_id = Cust_id
end
---Test:
declare @ex_name nvarchar(50)
exec getName '000001', @ex_name out
print @ex_name

--18.	Trả về số tiền có trong tài khoản nếu biết mã tài khoản.
create proc get_acbalaces @ac_no char(10),
							@get_acbalance numeric(15,0) out
as
begin
	set @get_acbalance = (select ac_balance 
						from account
						where @ac_no = Ac_no)
end
--Test:
declare @ex_balance numeric(15,0)
exec get_acbalaces '1000000001', @ex_balance out
print @ex_balance

---FUNCTION----------
drop function get_acbalance1
create function get_acbalance1 (@ac_no1 char(10))
returns int
as
begin
	declare @temp numeric (15,0)
	set @temp =( select ac_balance 
				from account
				where Ac_no = @ac_no1)
	return @temp 
end
select dbo.get_acbalance1('1000000001')
select * from account
--19.	Trả về số lượng khách hàng nếu biết mã chi nhánh.
select * from Branch
create proc count_cus @br_id char(5),
						@num_cust int out
as
begin
	select @num_cust = COUNT(cust_name) 
					from customer join Branch on customer.Br_id = Branch.BR_id
					where @br_id = Branch.BR_id
end
----Test:
declare @ex_num_cust int
exec count_cus 'VB001', @ex_num_cust out
print N'Số khách hàng:'
print @ex_num_cust
--20.	Kiểm tra một giao dịch có bất thường hay không nếu biết mã giao dịch. 
--Giao dịch bất thường: giao dịch gửi diễn ra ngoài giờ hành chính, giao dịch rút diễn ra vào thời điểm 0am  3am
select * from transactions

create proc check_Tran @t_id char(10),
						@result time out
as
begin
	select @result = T_time
					from transactions
					where @t_id = t_id
end
--Test:
declare @ex_result time
exec check_Tran '0000000228', @ex_result out
print N'Giao dịch diễn ra vào lúc:'
print @ex_result
print N'Đây là giao dịch:'
if (@ex_result between '00:00' and '03:00')
	print N'Bất thường'
else
	print N'Bình thường'
--21.	Sinh mã khách hàng tự động. Module này có chức năng tạo và trả về mã khách hàng mới bằng cách lấy MAX(mã khách hàng cũ) + 1.
--22.	Sinh mã chi nhánh tự động. Sơ đồ thuật toán của module được mô tả như sau:

--------------TRIGGER---------------------------

--1.Khi thêm mới dữ liệu cho bảng transaction nếu số tiền <0 hủy bỏ thao tác:
create trigger check_Amount
on transactions for insert
as
begin
	declare @amount numeric(15)
	set @amount = (select T_amount 
					from inserted) --Dùng magic table
	if @amount < 0 
	begin
		print 'So tien khong hop le'
		rollback
	end
end
insert into transactions(t_id,t_amount)
values ('1000000000',100000)
select * from transactions
where t_id = '1000000000'

--3.Khi cập nhật tên trên bảng cus nếu tên KH <3 kí tự hủy giao dịch.
select * from customer
create trigger up_Cust 
on customer for insert
as
begin
	declare @temp nvarchar(50)
	set @temp=(select cust_name from inserted)
	if len(@temp) <=3
	begin
		print 'invalid value'
		rollback
	end
	else
		commit
end
insert into customer(Cust_id,Cust_name)
values('000000','Rick')
--4.Khi xóa dữ liệu trên bảng acc,
--hãy đảm bảo mọi giao dịch lq đến tk đó phải đc xóa trước, sau đó mới xóa data
--5. Khi thêm mới dữ liệu vào bảng cus. 
--Kiểm tra mã chi nhánh chưa thuộc Branch thì hủy bỏ thao tác --TB: lỗi.

 
 ------------------------------------------------------------------------------------------------------------------
 ------------------------------------------------------------------------------------------------------------------
 ------------------------------Bài tập trigger---------------------------------------
--1.	Khi xóa dữ liệu trong bảng account, hãy thực hiện thao tác cập nhật trạng thái
--tài khoản là 9 (không dùng nữa) thay vì xóa.
create trigger UT_Dele_data
on account
instead of delete
as
begin
	declare @ac_no char(10)
	set @ac_no = (select ac_no from deleted)
	update account
	set ac_type ='9'
	where Ac_no = @ac_no
end

delete from account 
where Ac_no ='1000000003'
select * from account
--2.	Khi thêm mới dữ liệu trong bảng transactions hãy thực hiện các công việc sau:
--a.	Kiểm tra trạng thái tài khoản của giao dịch hiện hành. Nếu trạng thái tài khoản ac_type = 9 
--thì đưa ra thông báo ‘tài khoản đã bị xóa’ và hủy thao tác đã thực hiện. Ngược lại:
create trigger UT_insert_data
on transactions 
--i.	Nếu là giao dịch gửi: số dư = số dư + tiền gửi. 
select * from transactions
create TRIGGER UT_Upd_AC
ON transactions
FOR INSERT
AS
BEGIN
	DECLARE @tiengd NUMERIC(15,0), @t_type CHAR(1), @ac_no CHAR(10)
	SELECT @t_type = t_type, @tiengd = t_amount, @ac_no = ac_no FROM inserted
	UPDATE account
	SET ac_balance = ac_balance + IIF (@t_type = '1', @tiengd, -@tiengd)
	WHERE Ac_no = @ac_no
END
--ii.	Nếu là giao dịch rút: số dư = số dư – tiền rút. Nếu số dư sau khi thực hiện giao dịch < 50.000 
--thì đưa ra thông báo ‘không đủ tiền’ và hủy thao tác đã thực hiện.
--3.	Khi sửa dữ liệu trong bảng transactions hãy tính lại số dư:
--Số dư = số dư cũ + (số dữ mới – số dư cũ)
--4.	Sau khi xóa dữ liệu trong transactions hãy tính lại số dư:
--a.	Nếu là giao dịch rút
--Số dư = số dư cũ + t_amount
create trigger UT_upAmount
on transactions for update
as
begin
	declare @Temp numeric(15), @type bit 
	set @Temp = (select t_amount from transactions)
	set @type = (select t_type from transactions)
	if(@type = 0)
		begin
			set @Temp = @Temp +
		end
	
end
select * from transactions
--b.	Nếu là giao dịch gửi
--Số dư = số dư cũ – t_amount
--5.	Khi cập nhật hoặc sửa dữ liệu tên khách hàng, hãy đảm bảo tên khách không nhỏ hơn 5 kí tự. 
create trigger UT_Update_Cust
on customer for update
as
begin
	declare @temp_T nvarchar(50)
	set @temp_T =(select Cust_name from inserted)
	if len(@temp_T) <=5
	begin
		print 'invalid value'
		rollback
	end
	else
		begin
			commit
			print 'Sucessfull'
		end
end

select * from customer
update customer
set Cust_name= N'Heo'
where Cust_id ='000000'
--6.	Khi tác động đến bảng account (thêm, sửa, xóa), hãy kiểm tra loại tài khoản. Nếu ac_type = 9 
--(đã bị xóa) thì đưa ra thông báo ‘tài khoản đã bị xóa’ và hủy các thao tác vừa thực hiện.
alter trigger UT_check_ac
on account for update
as
begin
	declare @temp char(1)
	set @temp = (select ac_type from deleted)
	if(@temp =9)
		begin 
			print N'Tài khoản đã bị xóa'
			rollback
		end
	else
	begin
		commit
		print N'Commit'
	end
end
select * from account
update account
set ac_balance = 9000000
where Ac_no = '1000000001'
drop trigger UT_check_cust

-----------QUIZ 6------------------------
create trigger UT_check_cust
on customer for update
as
begin
	declare @temp char(10)
	set @temp = (select cust_phone from inserted)
	if(@temp like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
		begin 
			print N'Commit'
			commit
		end
	else
	    begin
            print N'Invalid format'
            rollback
		end
end
update customer
set cust_phone = 'k123456789'
where cust_id = '000001'
select * from customer

--7.	Khi thêm mới dữ liệu vào bảng customer, kiểm tra nếu họ tên và số điện thoại đã tồn tại trong 
--bảng thì đưa ra thông báo ‘đã tồn tại khách hàng’ và hủy toàn bộ thao tác.
alter trigger UT_Check_Cust
on customer for insert
as
begin
	declare @temp_name nvarchar(50), @temp_Phone char(12)
	if exists (select cust_name from customer where Cust_name = @temp_name ) or exists (select cust_phone from customer
	where Cust_phone = @temp_Phone )
		begin
			print N'customer exitend'
			rollback
		end
	else
		begin
			print N'Insert sucessfull'
			commit
		end
end
insert into customer(Cust_name,Cust_phone)
values(N'000037','0123456789')
select * from customer
delete customer
where Cust_name is null
--8.	Khi thêm mới dữ liệu vào bảng account, hãy kiển tra mã khách hàng. Nếu mã khách hàng chưa 
--tồn tại trong bảng customer thì đưa ra thông báo ‘khách hàng chưa tồn tại, hãy tạo mới khách hàng trước’ 
--và hủy toàn bộ thao tác. 
alter trigger UT_up_ac
on account
for insert
as
begin 
	declare @cust_id char(6)
	select @cust_id = cust_id from inserted
	if not exists ( select cust_id from customer where cust_id = @cust_id)
		begin
			print N'khách hàng chưa tồn tại, hãy tạo mới khách hàng trước'
			rollback
		end
	else
		begin
			print N'Commit'
			commit
		end
end
select * from account
insert into account(Ac_no,cust_id)
values('1000000092','000001')

----------------------------------------------------------------------------
--1. Kiểm tra thông tin khách hàng đã tồn tại trong hệ thống hay chưa nếu biết họ tên và số điện thoại. 
--Tồn tại trả về 1, không tồn tại trả về 0
CREATE function check_info_cust( @cust_name nvarchar(50), 
						@cust_phone char(12))
returns char(1)
AS
BEGIN
	declare @result_check_info char(1)
	select  @cust_name= cust_name, @cust_phone= cust_phone from customer
	if (exists (select cust_name from customer where Cust_name = @cust_name ) or exists (select cust_phone from customer
	where Cust_phone = @cust_phone ))
		begin
			set @result_check_info = '1'
		end
	else 
		begin
			set @result_check_info= '0'
		end
	return @result_check_info
END
select dbo.check_info_cust('Hà Công Lực','0123456789')
--2. Tính mã giao dịch mới. Mã giao dịch tiếp theo được tính như sau: MAX(mã giao dịch đang có) + 1. 
--Hãy đảm bảo số lượng kí tự luôn đúng với quy định về mã giao dịch
drop function get_new_t_id
create function get_new_t_id ()
returns char(10)
as
begin
	declare @new_t_id char(10), @old_t_id char(10),@count int =1, @len int, @lenMax int
	set @old_t_id =(select max (cast(t_id as numeric(10)) from transactions) +1)
	set @new_t_id = CAST(@old_t_id AS char(10))
	set @len = len(@new_t_id)
	set @lenMax = (select top 1 len(t_id) from transactions)
	while @len < @lenMax
		begin
			set @new_t_id = '0' + @new_t_id
		end
		return @new_t_id
end
select dbo.get_new_t_id()
select * from transactions
--3. Tính mã tài khoản mới. (định nghĩa tương tự như câu trên)
create function get_new_ac_no ()
returns char(10)
as
begin
	declare @new_ac_no char(10), @old_ac_no char(10),@count int =1, @temp numeric(10) 
	select @old_ac_no = max(ac_no) from account
	set @temp = CAST(@old_ac_no as numeric(10)) + 1
	set @new_ac_no = CAST(@temp AS char(10))
	while @count <= (len(@old_ac_no) - LEN(@temp))
		begin
			set @new_ac_no = '0' + @new_ac_no
			set @count = @count + 1
		end
		return @new_ac_no
end
select dbo.get_new_ac_no()
select * from account
--4. Trả về tên chi nhánh ngân hàng nếu biết mã của nó.
--Function:
create function ex_Br_name (@Br_id char(5))
returns nvarchar(50)
as
begin
	declare @result nvarchar(50)
	set @result =( select BR_name from Branch
					where BR_id = @Br_id )
	return @result
end
select dbo.ex_Br_name('VB001')

--5. Trả về tên của khách hàng nếu biết mã khách. 
---Function:
create function Ex_name2( @Cust_id char(6))
returns nvarchar(50)
as
begin
	declare @result_5 nvarchar(50)
	set @result_5 =(select cust_name from customer
					where Cust_id = @Cust_id)
	return @result_5
end
select dbo.Ex_name2('000001')

--6. Trả về số tiền có trong tài khoản nếu biết mã tài khoản.
--Function:
create function ex_acbalance (@Ac_no char(10))
returns numeric(15)
as
begin
	declare @result06 numeric(15)
	set @result06 =(select ac_balance from account 
					where Ac_no = @Ac_no)
	return @result06
end
select dbo.ex_acbalance('1000000034')
--7. Trả về số lượng khách hàng nếu biết mã chi nhánh.
--Function:
drop function Count_Num_Cust
create function Count_Num_Cust (@BR_ID char(5))
returns int
as
begin
	declare @result07 int
	set @result07 =(select count(Cust_name) from customer 
							where BR_id = @br_id)
	return @result07
end
select dbo.Count_Num_Cust('VB004')
select * from customer
--8. Kiểm tra một giao dịch có bất thường hay không nếu biết mã giao dịch.
--Giao dịch bất thường: giao dịch gửi diễn ra ngoài giờ hành chính, giao dịch rút diễn ra vào thời điểm 0am à 3am
select * from transactions
drop proc check_transaction
create function check_transaction (@t_id char(10))
returns nvarchar(50)
as
begin
	declare @result_check nvarchar(50),@t_type_temp char(1), @t_time_check time
	select @t_type_temp = t_type , @t_time_check =t_time 
	from transactions
	where t_id = @t_id
	if((@t_type_temp='1' and (@t_time_check not between '07:00' and '11:00' or @t_time_check not between '13:00' and '17:00'))
		or ( @t_type_temp ='0' and @t_time_check between '00:00' and '03:00'))
		begin
			set @result_check = N'Giao dịch bất thường'
		end
	else
		begin
			set @result_check = N'Giao dịch bình thường'
		end
	return @result_check
end
select dbo.check_transaction('0000000201')


