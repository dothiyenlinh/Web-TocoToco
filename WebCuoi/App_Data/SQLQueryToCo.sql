Create database ToCoToCoWeb
go
Use ToCoToCoWeb
go

Create table Loai(
	idLoai int primary key identity(1,1),
	TenLoai nvarchar(100) not null
)

Create table SanPham(
	MSP int primary key identity(1,1),
	TenSP nvarchar(100) not null,
	Gia float,
	Thongtinchitiet nvarchar(MAX),
	AnhSP nvarchar(150),
	SPhot bit,
	NgayDang date,
	idLoai int FOREIGN KEY REFERENCES Loai(idLoai)
)

Create table ThemSizeTopping(
	MST int primary key identity(1,1),
	TenSize nvarchar(100) not null,
	TenTopping nvarchar(100) not null,
	DuongDa nvarchar(100) not null,
	MSP int FOREIGN KEY REFERENCES SanPham(MSP)
)

Create table GioHang(
	idGioHang int identity(1,1) not null,
	MSP int FOREIGN KEY REFERENCES SanPham(MSP),
	TenSP nvarchar(100),
	Gia float,
	SL tinyint,
	ThanhTien float,
	CONSTRAINT ck_giohang PRIMARY KEY (MSP, idGioHang)
)
drop table GioHang



Create table DonHang(
	idDonHang int primary key identity not null,
	TenKH nvarchar(50),
	DiaChi nvarchar(250),
	Email varchar(50),
	GhiChu nvarchar(250),
	TongTien float,
	TrangThai bit
)

Create table LienHe(
	idLienHe int primary key not null,
	HoTen nvarchar(50),
	Email varchar(50),
	Phone varchar(20),
	NoiDung nvarchar(MAX)
)

Create table SuKien(
	idSuKien int primary key not null,
	TieuDe nvarchar(50),
	AnhDD varchar(150),
	ChiTiet nvarchar(MAX),
	NgayDang date
)

Create table KhachHang(
	MaKH int primary key identity(1,1),
	HoTenKH nvarchar(50),
	DiachiKH nvarchar(250),
	PhoneKH varchar(50),
	TenUserKH varchar(50),
	MatKhauKH varchar(50),
	NgaySinhKH date,
	EmailKH varchar(50),
	DaDuyet bit default 0
)

Create table Admin(
	MaAdmin int primary key identity(1,1),
	HoTenAdmin nvarchar(50),
	DiachiAdmin nvarchar(250),
	PhoneAdmin varchar(50),
	TenUserAdmin varchar(50),
	MatKhauAdmin varchar(50),
	NgaySinhAdmin date,
	EmailAdmin varchar(50),
	QuyenAdmin bit default 1
)

Create table DonDatHang(
	SoDH int primary key identity(1,1),
	MaKH int,
	NgayDH Date,
	TriGia float,
	DaGiao bit default 0,
	NgayGiaoHang Date,
	TenNguoiNhan nvarchar(50),
	DiaChiNhan nvarchar(50),
	DienThoaiNhan varchar(15),
	HTThanhToan bit default 0,
	HTGiaoHang bit default 0
)

create table CTDatHang(
	SoDH int,
	MSP int,
	SoLuong int check (SoLuong>0),
	DonGia float,
	CONSTRAINT ck_dathang PRIMARY KEY (SoDH, MSP)
)

