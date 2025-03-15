-- Tạo vào ngày 12/03/2025

-- Cơ sở dữ liệu Quản Lý Nhân Sự
create database QUANLYNHANSU
go

use QUANLYNHANSU
go

-- 1.Bảng Nhân Viên : OK
create table NhanVien(
	MaNhanVien int primary key identity(1, 1),
	HoTen nvarchar(100) not null, 
	NgaySinh date default 2004-3-15, 
	GioiTinh nvarchar(10), 
	DiaChi nvarchar(255), 
	SoDienThoai nvarchar(15), 
	Email nvarchar(100), 
	NgayVaoLam date default 2020-1-1, 
	MaViTriCongViec int default 1, 
	MaPhongBan int default 1, 
	MaLuong int, 
	MaTrangThaiCongViec int default 1, 
	SoCMND nvarchar(20),
	NgayCap date,
	NoiCap nvarchar(100),
	TrinhDoHocVan nvarchar(100) default '12/12',
	KinhNghiemLamViec nvarchar(255) default 'Có kinh nghiệm'
);

INSERT INTO NhanVien (HoTen, NgaySinh, GioiTinh, DiaChi, SoDienThoai, Email, NgayVaoLam, MaViTriCongViec, MaPhongBan, MaLuong, MaTrangThaiCongViec, SoCMND, NgayCap, NoiCap, TrinhDoHocVan, KinhNghiemLamViec)
VALUES
('Nguyễn Văn A', '1990-01-01', 'Nam', '123 Đường ABC, Quận 1, TP.HCM', '0901234567', 'a@example.com', '2020-01-01', 1, 1, 1, 1, '123456789', '2010-01-01', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Trần Thị B', '1992-02-02', 'Nữ', '456 Đường XYZ, Quận 2, TP.HCM', '0909876543', 'b@example.com', '2020-02-01', 1, 1, 2, 1, '987654321', '2012-02-02', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Lê Văn C', '1994-03-03', 'Nam', '789 Đường LMN, Quận 3, TP.HCM', '0903456789', 'c@example.com', '2020-03-01', 1, 1, 3, 1, '456789123', '2014-03-03', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Phạm Thị D', '1996-04-04', 'Nữ', '321 Đường PQR, Quận 4, TP.HCM', '0905678901', 'd@example.com', '2020-04-01', 1, 1, 4, 1, '789123456', '2016-04-04', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Hoàng Văn E', '1998-05-05', 'Nam', '654 Đường STU, Quận 5, TP.HCM', '0907890123', 'e@example.com', '2020-05-01', 1, 1, 5, 1, '123987654', '2018-05-05', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Võ Thị F', '2000-06-06', 'Nữ', '987 Đường VWX, Quận 6, TP.HCM', '0902345678', 'f@example.com', '2020-06-01', 1, 1, 6, 1, '456123987', '2020-06-06', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Đặng Văn G', '2002-07-07', 'Nam', '345 Đường YZA, Quận 7, TP.HCM', '0904567890', 'g@example.com', '2020-07-01', 1, 1, 7, 1, '789456123', '2022-07-07', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Bùi Thị H', '2004-08-08', 'Nữ', '678 Đường BCX, Quận 8, TP.HCM', '0906789012', 'h@example.com', '2020-08-01', 1, 1, 8, 1, '123678945', '2024-08-08', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Ngô Văn I', '2006-09-09', 'Nam', '901 Đường DEF, Quận 9, TP.HCM', '0908901234', 'i@example.com', '2020-09-01', 1, 1, 9, 1, '456321987', '2026-09-09', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Trương Thị J', '2008-10-10', 'Nữ', '234 Đường GHI, Quận 10, TP.HCM', '0901234567', 'j@example.com', '2020-10-01', 1, 1, 10, 1, '789654321', '2028-10-10', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Lý Văn K', '2010-11-11', 'Nam', '567 Đường JKL, Quận 11, TP.HCM', '0903456789', 'k@example.com', '2020-11-01', 1, 1, 11, 1, '123987654', '2030-11-11', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Phan Thị L', '2012-12-12', 'Nữ', '890 Đường MNO, Quận 12, TP.HCM', '0905678901', 'l@example.com', '2020-12-01', 1, 1, 12, 1, '456123987', '2032-12-12', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Vũ Văn M', '2014-01-13', 'Nam', '123 Đường PQR, Quận 1, TP.HCM', '0907890123', 'm@example.com', '2021-01-01', 1, 1, 13, 1, '789456123', '2034-01-13', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Đinh Thị N', '2016-02-14', 'Nữ', '456 Đường STU, Quận 2, TP.HCM', '0902345678', 'n@example.com', '2021-02-01', 1, 1, 14, 1, '123678945', '2036-02-14', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Hồ Văn O', '2018-03-15', 'Nam', '789 Đường VWX, Quận 3, TP.HCM', '0904567890', 'o@example.com', '2021-03-01', 1, 1, 15, 1, '456321987', '2038-03-15', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Dương Thị P', '2020-04-16', 'Nữ', '321 Đường YZA, Quận 4, TP.HCM', '0906789012', 'p@example.com', '2021-04-01', 1, 1, 16, 1, '789654321', '2040-04-16', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Nguyễn Văn Q', '2022-05-17', 'Nam', '654 Đường BCX, Quận 5, TP.HCM', '0908901234', 'q@example.com', '2021-05-01', 1, 1, 17, 1, '123987654', '2042-05-17', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Trần Thị R', '2024-06-18', 'Nữ', '987 Đường DEF, Quận 6, TP.HCM', '0901234567', 'r@example.com', '2021-06-01', 1, 1, 18, 1, '456123987', '2044-06-18', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Lê Văn S', '2026-07-19', 'Nam', '234 Đường GHI, Quận 7, TP.HCM', '0903456789', 's@example.com', '2021-07-01', 1, 1, 19, 1, '789456123', '2046-07-19', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Phạm Thị T', '2028-08-20', 'Nữ', '567 Đường JKL, Quận 8, TP.HCM', '0905678901', 't@example.com', '2021-08-01', 1, 1, 20, 1, '123678945', '2048-08-20', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Hoàng Văn U', '2030-09-21', 'Nam', '890 Đường MNO, Quận 9, TP.HCM', '0907890123', 'u@example.com', '2021-09-01', 1, 1, 21, 1, '456321987', '2050-09-21', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Võ Thị V', '2032-10-22', 'Nữ', '123 Đường PQR, Quận 10, TP.HCM', '0902345678', 'v@example.com', '2021-10-01', 1, 1, 22, 1, '789654321', '2052-10-22', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Đặng Văn W', '2034-11-23', 'Nam', '456 Đường STU, Quận 11, TP.HCM', '0904567890', 'w@example.com', '2021-11-01', 1, 1, 23, 1, '123987654', '2054-11-23', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Bùi Thị X', '2036-12-24', 'Nữ', '789 Đường VWX, Quận 12, TP.HCM', '0906789012', 'x@example.com', '2021-12-01', 1, 1, 24, 1, '456123987', '2056-12-24', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Ngô Văn Y', '2038-01-25', 'Nam', '321 Đường YZA, Quận 1, TP.HCM', '0908901234', 'y@example.com', '2022-01-01', 1, 1, 25, 1, '789456123', '2058-01-25', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Trương Thị Z', '2040-02-26', 'Nữ', '654 Đường BCX, Quận 2, TP.HCM', '0901234567', 'z@example.com', '2022-02-01', 1, 1, 26, 1, '123678945', '2060-02-26', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Lý Văn AA', '2042-03-27', 'Nam', '987 Đường DEF, Quận 3, TP.HCM', '0902345678', 'aa@example.com', '2022-03-01', 1, 1, 27, 1, '456123987', '2062-03-27', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Phan Thị BB', '2044-04-28', 'Nữ', '321 Đường GHI, Quận 4, TP.HCM', '0903456789', 'bb@example.com', '2022-04-01', 1, 1, 28, 1, '789456123', '2064-04-28', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm'),
('Vũ Văn CC', '2046-05-29', 'Nam', '654 Đường JKL, Quận 5, TP.HCM', '0904567890', 'cc@example.com', '2022-05-01', 1, 1, 29, 1, '123678945', '2066-05-29', 'Cục Cảnh Sát TP.HCM', 'Đại học', 'Có kinh nghiệm'),
('Đinh Thị DD', '2048-06-30', 'Nữ', '987 Đường MNO, Quận 6, TP.HCM', '0905678901', 'dd@example.com', '2022-06-01', 1, 1, 30, 1, '456123987', '2068-06-30', 'Cục Cảnh Sát TP.HCM', 'Cao đẳng', 'Có kinh nghiệm');



-- Bảng trạng thái công việc : OK
CREATE TABLE TrangThaiCongViec (
    MaTrangThai INT PRIMARY KEY IDENTITY(1,1),
    TenTrangThai NVARCHAR(50) NOT NULL,
    MoTa NVARCHAR(255)
);
INSERT INTO TrangThaiCongViec (TenTrangThai, MoTa)  
VALUES  
    (N'Đang làm việc', N'Nhân viên hiện tại vẫn đang làm việc tại công ty.'),  
    (N'Đã nghỉ việc', N'Nhân viên đã rời khỏi công ty.'),  
    (N'Tạm nghỉ', N'Nhân viên tạm thời nghỉ phép (nghỉ thai sản, nghỉ ốm, nghỉ không lương, v.v.).'),  
    (N'Thử việc', N'Nhân viên đang trong giai đoạn thử việc.'),  
    (N'Đình chỉ', N'Nhân viên bị đình chỉ công tác do vi phạm hoặc lý do khác.'),  
    (N'Chờ xử lý', N'Nhân viên đang trong quá trình tuyển dụng hoặc chuẩn bị thôi việc.');


-- Bảng Vị Trí Công Việc : OK
CREATE TABLE ViTriCongViec (
    MaViTri INT PRIMARY KEY IDENTITY(1,1),
    TenViTri NVARCHAR(100) NOT NULL,
    MoTa NVARCHAR(255)
);
INSERT INTO ViTriCongViec (TenViTri, MoTa)  
VALUES  
    (N'Giám đốc', N'Quản lý điều hành toàn bộ công ty.'),  
    (N'Trưởng phòng', N'Quản lý và điều hành công việc của một phòng ban.'),  
    (N'Nhân viên Hành chính - Nhân sự', N'Quản lý hồ sơ nhân sự, tuyển dụng và chế độ phúc lợi.'),  
    (N'Kế toán viên', N'Quản lý tài chính, sổ sách kế toán và báo cáo thuế.'),  
    (N'Nhân viên Kinh doanh', N'Phát triển khách hàng và đạt doanh số bán hàng.'),  
    (N'Nhân viên IT', N'Quản trị hệ thống, phát triển phần mềm và bảo mật dữ liệu.'),  
    (N'Chuyên viên Marketing', N'Thực hiện các chiến dịch tiếp thị và xây dựng thương hiệu.'),  
    (N'Nhân viên Sản xuất', N'Đảm bảo quy trình sản xuất và kiểm soát chất lượng sản phẩm.'),  
    (N'Nhân viên Chăm sóc Khách hàng', N'Hỗ trợ khách hàng và xử lý khiếu nại.'),  
    (N'Thực tập sinh', N'Học hỏi và hỗ trợ công việc trong thời gian thực tập.');


-- Bảng Phòng Ban : OK
CREATE TABLE PhongBan (
    MaPhongBan INT PRIMARY KEY IDENTITY(1,1),
    TenPhongBan NVARCHAR(100) NOT NULL,
    MoTa NVARCHAR(255),
    SoDienThoai NVARCHAR(15),
    Email NVARCHAR(100)
);
INSERT INTO PhongBan (TenPhongBan, MoTa, SoDienThoai, Email)  
VALUES  
    (N'Phòng Hành Chính - Nhân Sự', N'Quản lý nhân sự, chế độ đãi ngộ và hành chính.', N'028-1234-5678', N'hr@company.com'),  
    (N'Phòng Kế Toán', N'Quản lý tài chính, kế toán và báo cáo thuế.', N'028-2345-6789', N'accounting@company.com'),  
    (N'Phòng Kinh Doanh', N'Chịu trách nhiệm phát triển khách hàng và doanh số.', N'028-3456-7890', N'sales@company.com'),  
    (N'Phòng Công Nghệ Thông Tin', N'Quản lý hệ thống công nghệ, phần mềm và bảo mật.', N'028-4567-8901', N'it@company.com'),  
    (N'Phòng Marketing', N'Quảng bá thương hiệu và thực hiện các chiến dịch tiếp thị.', N'028-5678-9012', N'marketing@company.com'),  
    (N'Phòng Sản Xuất', N'Giám sát quy trình sản xuất và đảm bảo chất lượng sản phẩm.', N'028-6789-0123', N'production@company.com'),  
    (N'Phòng Chăm Sóc Khách Hàng', N'Hỗ trợ khách hàng và xử lý khiếu nại.', N'028-7890-1234', N'customerservice@company.com');


-- Bảng người dùng (dùng để đăng nhập, xem và quản lý hệ thống) : OK
CREATE TABLE NguoiDung (
    MaNguoiDung INT PRIMARY KEY IDENTITY(1,1),
    TenDangNhap NVARCHAR(100) NOT NULL UNIQUE,
    MatKhau NVARCHAR(255) NOT NULL,
    VaiTro NVARCHAR(50) NOT NULL, -- Vai trò của người dùng (Admin hoặc NhanVien)
    MaNhanVien INT, -- Dùng để liên kết với bảng NhanVien nếu người dùng là nhân viên
);
INSERT INTO NguoiDung (TenDangNhap, MatKhau, VaiTro, MaNhanVien)  
VALUES  
    (N'admin', N'123456', N'Admin', NULL),  
    (N'quanly01', N'quanly@123', N'QuanLy', 1),  
    (N'nhanvien01', N'nhanvien@123', N'NhanVien', 2),  
    (N'nhanvien02', N'nhanvien@123', N'NhanVien', 3),  
    (N'ke_toan01', N'ketoan@123', N'KeToan', 4),  
    (N'marketing01', N'marketing@123', N'Marketing', 5);

-- Bảng Lương
CREATE TABLE Luong (
    MaLuong INT PRIMARY KEY IDENTITY(1,1),
	MaNhanVien int not null,
    ThangNam DATE NOT NULL,
	HeSoLuong float default 1.0,
    Luong DECIMAL(18, 2) NOT NULL,
	GhiChu nvarchar(255)
);
INSERT INTO Luong (MaNhanVien, ThangNam, HeSoLuong, Luong, GhiChu)  
VALUES  
    (1, '2024-02-01', 1, 12000000, N'Lương tháng 2/2024'),  
    (2, '2024-02-01', 1, 10500000, N'Lương tháng 2/2024'),  
    (3, '2024-02-01', 1, 9000000, N'Lương tháng 2/2024'),  
    (4, '2024-02-01', 1, 14500000, N'Lương tháng 2/2024'),  
    (5, '2024-02-01', 1, 7800000, N'Lương tháng 2/2024'),  
    (6, '2024-02-01', 1, 9700000, N'Lương tháng 2/2024'),  
    (7, '2024-02-01', 1, 8400000, N'Lương tháng 2/2024'),  
    (8, '2024-02-01', 1, 13200000, N'Lương tháng 2/2024'),  
    (9, '2024-02-01', 1, 11100000, N'Lương tháng 2/2024'),  
    (10, '2024-02-01', 1, 10100000, N'Lương tháng 2/2024'),  
    (11, '2024-02-01', 1, 11600000, N'Lương tháng 2/2024'),  
    (12, '2024-02-01', 1, 8050000, N'Lương tháng 2/2024'),  
    (13, '2024-02-01', 1, 12200000, N'Lương tháng 2/2024'),  
    (14, '2024-02-01', 1, 10100000, N'Lương tháng 2/2024'),  
    (15, '2024-02-01', 1, 9200000, N'Lương tháng 2/2024'),  
    (16, '2024-02-01', 1, 15200000, N'Lương tháng 2/2024'),  
    (17, '2024-02-01', 1, 9800000, N'Lương tháng 2/2024'),  
    (18, '2024-02-01', 1, 13100000, N'Lương tháng 2/2024'),  
    (19, '2024-02-01', 1, 10700000, N'Lương tháng 2/2024'),  
    (20, '2024-02-01', 1, 11800000, N'Lương tháng 2/2024'),  
    (21, '2024-02-01', 1, 9900000, N'Lương tháng 2/2024'),  
    (22, '2024-02-01', 1, 8700000, N'Lương tháng 2/2024'),  
    (23, '2024-02-01', 1, 11100000, N'Lương tháng 2/2024'),  
    (24, '2024-02-01', 1, 12600000, N'Lương tháng 2/2024'),  
    (25, '2024-02-01', 1, 8250000, N'Lương tháng 2/2024'),  
    (26, '2024-02-01', 1, 13700000, N'Lương tháng 2/2024'),  
    (27, '2024-02-01', 1, 10900000, N'Lương tháng 2/2024'),  
    (28, '2024-02-01', 1, 14600000, N'Lương tháng 2/2024'),  
    (29, '2024-02-01', 1, 9650000, N'Lương tháng 2/2024'),  
    (30, '2024-02-01', 1, 11900000, N'Lương tháng 2/2024');



-- Nghỉ phép
CREATE TABLE NghiPhep (
    MaNghiPhep INT PRIMARY KEY IDENTITY(1,1),
    MaNhanVien INT NOT NULL,
    NgayNghi DATE NOT NULL,  -- Lưu trực tiếp ngày nghỉ
    LyDo NVARCHAR(255),
    TrangThai NVARCHAR(50) default 'Đã duyệt',
);
INSERT INTO NghiPhep (MaNhanVien, NgayNghi, LyDo, TrangThai)  
VALUES  
    (1, '2024-03-01', N'Ốm', N'Đã duyệt'),  
    (2, '2024-03-02', N'Công việc gia đình', N'Đã duyệt'),  
    (3, '2024-03-03', N'Đi du lịch', N'Chờ duyệt'),  
    (4, '2024-03-04', N'Bận việc cá nhân', N'Đã duyệt'),  
    (5, '2024-03-05', N'Bị tai nạn', N'Từ chối'),  
    (6, '2024-03-06', N'Ốm', N'Đã duyệt'),  
    (7, '2024-03-07', N'Công việc gia đình', N'Chờ duyệt'),  
    (8, '2024-03-08', N'Đi du lịch', N'Đã duyệt'),  
    (9, '2024-03-09', N'Bận việc cá nhân', N'Đã duyệt'),  
    (10, '2024-03-10', N'Bị tai nạn', N'Từ chối'),  
    (11, '2024-03-11', N'Ốm', N'Đã duyệt'),  
    (12, '2024-03-12', N'Công việc gia đình', N'Chờ duyệt'),  
    (13, '2024-03-13', N'Đi du lịch', N'Đã duyệt'),  
    (14, '2024-03-14', N'Bận việc cá nhân', N'Đã duyệt'),  
    (15, '2024-03-15', N'Bị tai nạn', N'Từ chối'),  
    (16, '2024-03-16', N'Ốm', N'Đã duyệt'),  
    (17, '2024-03-17', N'Công việc gia đình', N'Chờ duyệt'),  
    (18, '2024-03-18', N'Đi du lịch', N'Đã duyệt'),  
    (19, '2024-03-19', N'Bận việc cá nhân', N'Đã duyệt'),  
    (20, '2024-03-20', N'Bị tai nạn', N'Từ chối'),  
    (21, '2024-03-21', N'Ốm', N'Đã duyệt'),  
    (22, '2024-03-22', N'Công việc gia đình', N'Chờ duyệt'),  
    (23, '2024-03-23', N'Đi du lịch', N'Đã duyệt'),  
    (24, '2024-03-24', N'Bận việc cá nhân', N'Đã duyệt'),  
    (25, '2024-03-25', N'Bị tai nạn', N'Từ chối'),  
    (26, '2024-03-26', N'Ốm', N'Đã duyệt'),  
    (27, '2024-03-27', N'Công việc gia đình', N'Chờ duyệt'),  
    (28, '2024-03-28', N'Đi du lịch', N'Đã duyệt'),  
    (29, '2024-03-29', N'Bận việc cá nhân', N'Đã duyệt'),  
    (30, '2024-03-30', N'Bị tai nạn', N'Từ chối');


-- Bảng Đánh Giá Nhân Viên : OK
CREATE TABLE DanhGiaNhanVien (
    MaDanhGia INT PRIMARY KEY IDENTITY(1,1),
    MaNhanVien INT NOT NULL,
    NgayDanhGia DATE NOT NULL,
    DiemSo INT NOT NULL default 10,
    NhanXet NVARCHAR(255),
);
INSERT INTO DanhGiaNhanVien (MaNhanVien, NgayDanhGia, DiemSo, NhanXet)  
VALUES  
    (1, '2024-03-01', 9, N'Làm việc tốt, cần cải thiện thời gian hoàn thành nhiệm vụ'),  
    (2, '2024-03-02', 10, N'Xuất sắc, luôn hoàn thành công việc đúng hạn'),  
    (3, '2024-03-03', 8, N'Cần cải thiện kỹ năng giao tiếp'),  
    (4, '2024-03-04', 7, N'Chưa đạt yêu cầu, cần nâng cao hiệu suất làm việc'),  
    (5, '2024-03-05', 10, N'Hoàn thành công việc xuất sắc, đóng góp tích cực'),  
    (6, '2024-03-06', 9, N'Làm việc chăm chỉ, có tinh thần trách nhiệm cao'),  
    (7, '2024-03-07', 8, N'Có tiềm năng phát triển, cần cải thiện kỹ năng teamwork'),  
    (8, '2024-03-08', 6, N'Chưa đáp ứng yêu cầu công việc, cần cố gắng hơn'),  
    (9, '2024-03-09', 9, N'Hoàn thành tốt công việc, chủ động trong công việc'),  
    (10, '2024-03-10', 7, N'Cần tập trung hơn vào chất lượng công việc'),  
    (11, '2024-03-11', 10, N'Nhân viên xuất sắc, có nhiều sáng kiến cải tiến'),  
    (12, '2024-03-12', 8, N'Khả năng thích nghi tốt, cần cải thiện tốc độ làm việc'),  
    (13, '2024-03-13', 9, N'Luôn hỗ trợ đồng nghiệp, có tinh thần trách nhiệm'),  
    (14, '2024-03-14', 10, N'Rất xuất sắc, có tiềm năng thăng tiến'),  
    (15, '2024-03-15', 6, N'Chưa đạt yêu cầu, cần cải thiện kỹ năng chuyên môn'),  
    (16, '2024-03-16', 7, N'Cần nâng cao tinh thần trách nhiệm trong công việc'),  
    (17, '2024-03-17', 9, N'Có kỹ năng làm việc nhóm tốt, hỗ trợ đồng đội hiệu quả'),  
    (18, '2024-03-18', 8, N'Có cố gắng, nhưng cần cải thiện hiệu suất làm việc'),  
    (19, '2024-03-19', 10, N'Xuất sắc, có đóng góp lớn vào thành công của nhóm'),  
    (20, '2024-03-20', 7, N'Cần nâng cao kỹ năng giải quyết vấn đề'),  
    (21, '2024-03-21', 9, N'Hoàn thành tốt công việc, có tinh thần cầu tiến'),  
    (22, '2024-03-22', 6, N'Chưa đáp ứng mong đợi, cần cải thiện nhiều mặt'),  
    (23, '2024-03-23', 8, N'Có tinh thần trách nhiệm cao, cần tập trung hơn'),  
    (24, '2024-03-24', 10, N'Nhân viên mẫu mực, luôn làm tốt công việc'),  
    (25, '2024-03-25', 9, N'Có tiến bộ rõ rệt, làm việc ngày càng hiệu quả'),  
    (26, '2024-03-26', 8, N'Cần mạnh dạn đưa ra ý kiến đóng góp hơn'),  
    (27, '2024-03-27', 7, N'Khả năng quản lý thời gian chưa tốt, cần cải thiện'),  
    (28, '2024-03-28', 10, N'Rất xuất sắc, hoàn thành mọi nhiệm vụ một cách tuyệt vời'),  
    (29, '2024-03-29', 9, N'Làm việc có trách nhiệm, luôn chủ động trong công việc'),  
    (30, '2024-03-30', 6, N'Cần nâng cao ý thức tự giác trong công việc');  


-- bảng chấm công
CREATE TABLE ChamCong (
    MaChamCong INT PRIMARY KEY IDENTITY(1,1),
    MaNhanVien INT NOT NULL,
    NgayChamCong DATE NOT NULL,
    SoNgayLam INT DEFAULT 26,
    SoNgayNghi INT DEFAULT 0,
    GhiChu NVARCHAR(255)
);

INSERT INTO ChamCong (MaNhanVien, NgayChamCong, SoNgayLam, SoNgayNghi, GhiChu)  
VALUES  
    (1, '2024-03-01', 26, 0, N'Đủ công'),  
    (2, '2024-03-02', 25, 1, N'Nghỉ phép 1 ngày'),  
    (3, '2024-03-03', 24, 2, N'Nghỉ ốm 2 ngày'),  
    (4, '2024-03-04', 26, 0, N'Đủ công'),  
    (5, '2024-03-05', 22, 4, N'Nghỉ không phép 4 ngày'),  
    (6, '2024-03-06', 26, 0, N'Đủ công'),  
    (7, '2024-03-07', 25, 1, N'Nghỉ phép 1 ngày'),  
    (8, '2024-03-08', 24, 2, N'Nghỉ ốm 2 ngày'),  
    (9, '2024-03-09', 26, 0, N'Đủ công'),  
    (10, '2024-03-10', 22, 4, N'Nghỉ không phép 4 ngày'),  
    (11, '2024-03-11', 26, 0, N'Đủ công'),  
    (12, '2024-03-12', 25, 1, N'Nghỉ phép 1 ngày'),  
    (13, '2024-03-13', 24, 2, N'Nghỉ ốm 2 ngày'),  
    (14, '2024-03-14', 26, 0, N'Đủ công'),  
    (15, '2024-03-15', 22, 4, N'Nghỉ không phép 4 ngày'),  
    (16, '2024-03-16', 26, 0, N'Đủ công'),  
    (17, '2024-03-17', 25, 1, N'Nghỉ phép 1 ngày'),  
    (18, '2024-03-18', 24, 2, N'Nghỉ ốm 2 ngày'),  
    (19, '2024-03-19', 26, 0, N'Đủ công'),  
    (20, '2024-03-20', 22, 4, N'Nghỉ không phép 4 ngày'),  
    (21, '2024-03-21', 26, 0, N'Đủ công'),  
    (22, '2024-03-22', 25, 1, N'Nghỉ phép 1 ngày'),  
    (23, '2024-03-23', 24, 2, N'Nghỉ ốm 2 ngày'),  
    (24, '2024-03-24', 26, 0, N'Đủ công'),  
    (25, '2024-03-25', 22, 4, N'Nghỉ không phép 4 ngày'),  
    (26, '2024-03-26', 26, 0, N'Đủ công'),  
    (27, '2024-03-27', 25, 1, N'Nghỉ phép 1 ngày'),  
    (28, '2024-03-28', 24, 2, N'Nghỉ ốm 2 ngày'),  
    (29, '2024-03-29', 26, 0, N'Đủ công'),  
    (30, '2024-03-30', 22, 4, N'Nghỉ không phép 4 ngày');  

-- Khóa ngoại cho bảng nhân viên
alter table NhanVien
add constraint FK_NhanVien foreign key (MaPhongBan) references PhongBan (MaPhongBan)

alter table NhanVien
add constraint FK_NhanVien2 foreign key (MaViTriCongViec) references ViTriCongViec (MaViTri)

alter table NhanVien
add constraint FK_NhanVien3 foreign key (MaTrangThaiCongViec) references TrangThaiCongViec (MaTrangThai)

alter table NhanVien
drop column MaLuong

alter table NguoiDung
add constraint FK_NguoiDung foreign key (MaNhanVien) references NhanVien (MaNhanVien)

alter table Luong
add constraint FK_Luong foreign key (MaNhanVien) references NhanVien (MaNhanVien)

alter table NghiPhep
add constraint FK_NghiPhep foreign key (MaNhanVien) references NhanVien (MaNhanVien)

alter table DanhGiaNhanVien
add constraint FK_DanhGiaNhanVien foreign key (MaNhanVien) references NhanVien (MaNhanVien)

alter table ChamCong
add constraint FK_ChamCong foreign key (MaNhanVien) references NhanVien (MaNhanVien)

UPDATE ChamCong
SET SoNgayNghi = (
    SELECT COUNT(*)
    FROM NghiPhep np
    WHERE np.MaNhanVien = ChamCong.MaNhanVien
        AND MONTH(np.NgayNghi) = MONTH(ChamCong.NgayChamCong)
        AND YEAR(np.NgayNghi) = YEAR(ChamCong.NgayChamCong)
),
SoNgayLam = 26 - (
    SELECT COUNT(*)
    FROM NghiPhep np
    WHERE np.MaNhanVien = ChamCong.MaNhanVien
        AND MONTH(np.NgayNghi) = MONTH(ChamCong.NgayChamCong)
        AND YEAR(np.NgayNghi) = YEAR(ChamCong.NgayChamCong)
);

CREATE TRIGGER trg_CapNhatChamCong
ON NghiPhep
AFTER INSERT
AS
BEGIN
    -- Cập nhật số ngày nghỉ trong ChamCong khi có ngày nghỉ mới
    UPDATE c
    SET 
        c.SoNgayNghi = ISNULL((
            SELECT COUNT(*) 
            FROM NghiPhep np 
            WHERE np.MaNhanVien = c.MaNhanVien
                AND MONTH(np.NgayNghi) = MONTH(c.NgayChamCong)
                AND YEAR(np.NgayNghi) = YEAR(c.NgayChamCong)
        ), 0),
        c.SoNgayLam = 26 - ISNULL((
            SELECT COUNT(*) 
            FROM NghiPhep np 
            WHERE np.MaNhanVien = c.MaNhanVien
                AND MONTH(np.NgayNghi) = MONTH(c.NgayChamCong)
                AND YEAR(np.NgayNghi) = YEAR(c.NgayChamCong)
        ), 0)
    FROM ChamCong c
    INNER JOIN inserted i ON c.MaNhanVien = i.MaNhanVien
        AND MONTH(i.NgayNghi) = MONTH(c.NgayChamCong)
        AND YEAR(i.NgayNghi) = YEAR(c.NgayChamCong);
END;

CREATE TRIGGER trg_CapNhatHeSoLuong
ON DanhGiaNhanVien
AFTER INSERT, UPDATE
AS
BEGIN
    -- Cập nhật Hệ Số Lương dựa trên Điểm Số từ bảng Đánh Giá Nhân Viên
    UPDATE Luong
    SET HeSoLuong = 
        CASE 
            WHEN d.DiemSo = 10 THEN 1.5
            WHEN d.DiemSo = 9  THEN 1.2
            WHEN d.DiemSo = 8  THEN 1.1
            ELSE 1.0
        END
    FROM Luong l
    INNER JOIN inserted d ON l.MaNhanVien = d.MaNhanVien
        AND MONTH(d.NgayDanhGia) = MONTH(l.ThangNam)
        AND YEAR(d.NgayDanhGia) = YEAR(l.ThangNam);
END;

ALTER TABLE Luong  
ADD LuongCoBan DECIMAL(18,2) NOT NULL DEFAULT 15000000;

UPDATE Luong  
SET LuongCoBan = 15000000;

-- Luong = ((LuongCoBan * SoNgayLam)/26) * HeSoLuong

CREATE TRIGGER trg_CapNhatLuong
ON ChamCong
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE Luong
    SET Luong = (LuongCoBan / 26 * c.SoNgayLam) * HeSoLuong
    FROM Luong l
    INNER JOIN ChamCong c ON l.MaNhanVien = c.MaNhanVien
    WHERE MONTH(l.ThangNam) = MONTH(c.NgayChamCong)
      AND YEAR(l.ThangNam) = YEAR(c.NgayChamCong);
END;

--CREATE PROCEDURE sp_TinhLuong
--    @ThangNam DATE
--AS
--BEGIN
--    UPDATE Luong
--    SET Luong = (LuongCoBan / 26 * c.SoNgayLam) * HeSoLuong
--    FROM Luong l
--    INNER JOIN ChamCong c ON l.MaNhanVien = c.MaNhanVien
--    WHERE FORMAT(l.ThangNam, 'yyyy-MM') = FORMAT(@ThangNam, 'yyyy-MM')
--      AND FORMAT(c.NgayChamCong, 'yyyy-MM') = FORMAT(@ThangNam, 'yyyy-MM');
--END;

