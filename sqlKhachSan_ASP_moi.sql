USE [master]
GO
/****** Object:  Database [QLKhachSanASP]    Script Date: 17/04/2023 8:59:33 SA ******/
CREATE DATABASE [QLKhachSanASP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKhachSanASP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLKhachSanASP.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLKhachSanASP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLKhachSanASP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLKhachSanASP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKhachSanASP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKhachSanASP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKhachSanASP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKhachSanASP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLKhachSanASP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKhachSanASP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKhachSanASP] SET  MULTI_USER 
GO
ALTER DATABASE [QLKhachSanASP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKhachSanASP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKhachSanASP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKhachSanASP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLKhachSanASP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLKhachSanASP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLKhachSanASP] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLKhachSanASP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLKhachSanASP]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[IDblog] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[Anh] [nvarchar](50) NULL,
	[TieuDe] [nvarchar](100) NULL,
	[ThongTin] [text] NULL,
	[NgayDang] [date] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[IDblog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSVC]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSVC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nam] [int] NULL,
	[Thang] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_CSVC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTAnh]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTAnh](
	[TenAnh] [nvarchar](50) NOT NULL,
	[MaLP] [nvarchar](10) NULL,
 CONSTRAINT [PK_CTAnh] PRIMARY KEY CLUSTERED 
(
	[TenAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPhong](
	[MaPhong] [nvarchar](10) NOT NULL,
	[SoHoaDon] [nvarchar](10) NOT NULL,
	[NgayDen] [date] NULL,
	[NgayDi] [date] NULL,
	[SoNguoi] [int] NULL,
 CONSTRAINT [PK_DatPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC,
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [nvarchar](10) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[Anh] [nvarchar](50) NULL,
	[GioiThieu] [text] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHoaDon] [nvarchar](10) NOT NULL,
	[NgayThanhToan] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[LoaiKhachHang] [nvarchar](50) NULL,
	[vote] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLP] [nvarchar](10) NOT NULL,
	[LoaiPhong] [nvarchar](50) NULL,
	[SoNguoiToiDa] [int] NULL,
	[Gia] [float] NULL,
	[Anh] [nvarchar](50) NULL,
	[ThongTin] [nvarchar](100) NULL,
	[KichThuoc] [nvarchar](20) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginKH]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginKH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [nvarchar](10) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoginKH] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[CCCD] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nvarchar](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaLP] [nvarchar](10) NULL,
	[Anh] [nvarchar](50) NULL,
	[SLVote] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuDungDichVu]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuDungDichVu](
	[MaDV] [nvarchar](10) NOT NULL,
	[SoHoaDon] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[NgayMua] [date] NULL,
 CONSTRAINT [PK_SuDungDichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC,
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuDungThietBi]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuDungThietBi](
	[MaTB] [nvarchar](10) NOT NULL,
	[MaPhong] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[NgaySD] [date] NULL,
 CONSTRAINT [PK_SuDungThietBi] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDoanhThu]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDoanhThu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nam] [int] NULL,
	[Thang] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_tDoanhThu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThietBi]    Script Date: 17/04/2023 8:59:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBi](
	[MaTB] [nvarchar](10) NOT NULL,
	[TenTB] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThietBi] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Blog] ([IDblog], [MaNV], [Anh], [TieuDe], [ThongTin], [NgayDang]) VALUES (N'Bl0001', N'NV0001', N'Blog01.jpg', N'Khách sạn Equatorial Hồ Chí Minh', N'Khách s?n Equatorial H? Chí Minh t?a l?c trên du?ng Tr?n Bình Tr?ng, qu?n 5, thành ph? H? Chí Minh, cách ch? B?n Thành kho?ng 3.2 km, cách sân bay Tân Son Nh?t kho?ng 9.2 km và nhà ga Sài Gòn kho?ng 3.6 km.', CAST(N'2023-04-14' AS Date))
INSERT [dbo].[Blog] ([IDblog], [MaNV], [Anh], [TieuDe], [ThongTin], [NgayDang]) VALUES (N'Bl0002', N'NV0001', N'Blog02.jpg', N'Khách sạn Equatorial Hồ Chí Minh', N'Khách s?n Equatorial H? Chí Minh t?a l?c trên du?ng Tr?n Bình Tr?ng, qu?n 5, thành ph? H? Chí Minh, cách ch? B?n Thành kho?ng 3.2 km, cách sân bay Tân Son Nh?t kho?ng 9.2 km và nhà ga Sài Gòn kho?ng 3.6 km.', CAST(N'2023-04-14' AS Date))
INSERT [dbo].[Blog] ([IDblog], [MaNV], [Anh], [TieuDe], [ThongTin], [NgayDang]) VALUES (N'Bl0003', N'NV0001', N'Blog03.jpg', N'Khách sạn Equatorial Hồ Chí Minh', N'Khách s?n Equatorial H? Chí Minh t?a l?c trên du?ng Tr?n Bình Tr?ng, qu?n 5, thành ph? H? Chí Minh, cách ch? B?n Thành kho?ng 3.2 km, cách sân bay Tân Son Nh?t kho?ng 9.2 km và nhà ga Sài Gòn kho?ng 3.6 km.', CAST(N'2023-04-14' AS Date))
GO
SET IDENTITY_INSERT [dbo].[CSVC] ON 

INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (1, 2023, 4, 21200000)
INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (2, 2023, 5, 10000000)
INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (3, 2023, 3, 3000000)
INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (4, 2022, 1, 10000000)
INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (5, 2023, 1, 7000000)
INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (6, 2023, 2, 7500000)
INSERT [dbo].[CSVC] ([id], [Nam], [Thang], [TongTien]) VALUES (7, 2022, 6, 5000000)
SET IDENTITY_INSERT [dbo].[CSVC] OFF
GO
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LE1.jpg', N'DLX')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LE2.jpg', N'DLX')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LE3.jpg', N'DLX')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LE4.jpg', N'DLX')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LH1.jpg', N'STD')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LH2.jpg', N'STD')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LH3.jpg', N'STD')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LH4.jpg', N'STD')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LO1.jpg', N'SUP')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LO2.jpg', N'SUP')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LO3.jpg', N'SUP')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LO4.jpg', N'SUP')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LP1.jpg', N'SUT')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LP2.jpg', N'SUT')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LP3.jpg', N'SUT')
INSERT [dbo].[CTAnh] ([TenAnh], [MaLP]) VALUES (N'LP4.jpg', N'SUT')
GO
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0001', N'HD0001', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-16' AS Date), 1)
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0001', N'HD0002', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-23' AS Date), 2)
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0001', N'HD0006', CAST(N'2023-04-22' AS Date), CAST(N'2023-04-30' AS Date), 1)
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0001', N'HD0008', CAST(N'2023-04-23' AS Date), CAST(N'2023-04-30' AS Date), 1)
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0001', N'HD0009', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-23' AS Date), 2)
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0020', N'HD0010', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-28' AS Date), 4)
INSERT [dbo].[DatPhong] ([MaPhong], [SoHoaDon], [NgayDen], [NgayDi], [SoNguoi]) VALUES (N'MP0020', N'HD0011', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-22' AS Date), 2)
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [Anh], [GioiThieu]) VALUES (N'DV0001', N'Be Boi', 150000, N'DichVu01.jpg', NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [Anh], [GioiThieu]) VALUES (N'DV0002', N'Van chuyen', 150000, N'DichVu02.jpg', NULL)
GO
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0001', NULL, N'NV0001', N'KH0001')
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0002', CAST(N'2023-04-17' AS Date), NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0003', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0004', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0005', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0006', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0007', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0008', CAST(N'2023-04-14' AS Date), NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0009', CAST(N'2023-04-14' AS Date), NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0010', CAST(N'2023-04-14' AS Date), NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0011', CAST(N'2023-04-14' AS Date), NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0012', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0013', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0014', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0015', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0016', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([SoHoaDon], [NgayThanhToan], [MaNV], [MaKH]) VALUES (N'HD0017', NULL, NULL, NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0001', N'Mai', NULL, N'1234567899', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0002', N'Hieu', NULL, N'1234567898', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0003', N'Hoang', NULL, N'1234567897', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0004', N'Lam', NULL, N'1234567896', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0005', N'Dai', NULL, N'1234567895', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0006', N'Thai', NULL, N'1234567894', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0007', N'Quoc', NULL, N'1234567893', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0008', N'Thanh', NULL, N'1234567892', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0009', N'Hoa', NULL, N'1234567891', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0010', N'Hien', NULL, N'1234567890', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0011', N'Vũ Doanh Thái', N'Nam', N'1234567846', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [LoaiKhachHang], [vote]) VALUES (N'KH0012', N'Viet An Cut', N'Nam', N'1234567846', CAST(N'2023-04-04' AS Date), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LoaiPhong] ([MaLP], [LoaiPhong], [SoNguoiToiDa], [Gia], [Anh], [ThongTin], [KichThuoc]) VALUES (N'DLX', N'Phòng Deluxe', 4, 350000, N'1002.jpg', NULL, NULL)
INSERT [dbo].[LoaiPhong] ([MaLP], [LoaiPhong], [SoNguoiToiDa], [Gia], [Anh], [ThongTin], [KichThuoc]) VALUES (N'STD', N'Phòng Standard', 2, 150000, N'1001.jpg', NULL, NULL)
INSERT [dbo].[LoaiPhong] ([MaLP], [LoaiPhong], [SoNguoiToiDa], [Gia], [Anh], [ThongTin], [KichThuoc]) VALUES (N'SUP', N'Phòng Superior', 3, 250000, N'1003.jpg', NULL, NULL)
INSERT [dbo].[LoaiPhong] ([MaLP], [LoaiPhong], [SoNguoiToiDa], [Gia], [Anh], [ThongTin], [KichThuoc]) VALUES (N'SUT', N'Phòng Suite', 6, 1200000, N'1004.jpg', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([ID], [MaNV], [Username], [Password]) VALUES (1, NULL, N'a', N'0cc175b9c0f1b6a831c399e269772661')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginKH] ON 

INSERT [dbo].[LoginKH] ([ID], [MaKH], [Username], [Password]) VALUES (1, NULL, N'vdt', N'1aafcfcd9efdd2e7ac43e80ce77bba79')
INSERT [dbo].[LoginKH] ([ID], [MaKH], [Username], [Password]) VALUES (6, N'KH0011', N'thai', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[LoginKH] ([ID], [MaKH], [Username], [Password]) VALUES (7, N'KH0012', N'vietancut', N'e10adc3949ba59abbe56e057f20f883e')
SET IDENTITY_INSERT [dbo].[LoginKH] OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Anh]) VALUES (N'NV0001', N'Dai', NULL, N'123456789', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Anh]) VALUES (N'NV0002', N'Hung', NULL, N'123456788', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [CCCD], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Anh]) VALUES (N'NV0003', N'Hoang', NULL, N'123456799', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0001', N'P101', N'Trống', N'STD', N'1001.jpg                 ', 2)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0002', N'P102', N'Trống', N'STD', N'1001.jpg                 ', 3)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0003', N'P103', N'Đang sử dụng', N'STD', N'1001.jpg                 ', 4)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0004', N'P104', N'Đang sử dụng', N'STD', N'1001.jpg                 ', 3)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0005', N'P105', N'Trống', N'STD', N'1001.jpg                 ', 4)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0006', N'P201', N'Đang sử dụng', N'DLX', N'1002.jpg                 ', 2)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0007', N'P202', N'Đang sử dụng', N'DLX', N'1002.jpg                 ', 2)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0008', N'P203', N'Đang sử dụng', N'DLX', N'1002.jpg                 ', 3)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0009', N'P204', N'Trống', N'DLX', N'1002.jpg                 ', 4)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0010', N'P205', N'Trống', N'DLX', N'1002.jpg                 ', NULL)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0011', N'P301', N'Đang sử dụng', N'SUP', N'1003.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0012', N'P302', N'Trống', N'SUP', N'1003.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0013', N'P303', N'Trống', N'SUP', N'1003.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0014', N'P304', N'Trống', N'SUP', N'1003.jpg                 ', NULL)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0015', N'P305', N'Đang sử dụng', N'SUP', N'1003.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0016', N'P401', N'Đang sử dụng', N'SUT', N'1004.jpg                 ', 2)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0017', N'P402', N'Trống', N'SUT', N'1004.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0018', N'P403', N'Trống', N'SUT', N'1004.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0019', N'P404', N'Đang sử dụng', N'SUT', N'1004.jpg                 ', 5)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP0020', N'P405', N'Đang sử dụng', N'SUT', N'1004.jpg                 ', NULL)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLP], [Anh], [SLVote]) VALUES (N'MP1000', N'P1000', N'Trống', N'DLX', NULL, NULL)
GO
INSERT [dbo].[SuDungThietBi] ([MaTB], [MaPhong], [SoLuong], [TinhTrang], [NgaySD]) VALUES (N'TB0002', N'MP0020', 2, N'Tốt', CAST(N'2023-04-14' AS Date))
GO
SET IDENTITY_INSERT [dbo].[tDoanhThu] ON 

INSERT [dbo].[tDoanhThu] ([id], [Nam], [Thang], [TongTien]) VALUES (1, 2023, 4, 28950000)
INSERT [dbo].[tDoanhThu] ([id], [Nam], [Thang], [TongTien]) VALUES (2, 2023, 5, 1000000)
INSERT [dbo].[tDoanhThu] ([id], [Nam], [Thang], [TongTien]) VALUES (3, 2022, 1, 1200000)
INSERT [dbo].[tDoanhThu] ([id], [Nam], [Thang], [TongTien]) VALUES (4, 2022, 2, 5000000)
INSERT [dbo].[tDoanhThu] ([id], [Nam], [Thang], [TongTien]) VALUES (5, 2021, 1, 15000000)
SET IDENTITY_INSERT [dbo].[tDoanhThu] OFF
GO
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [Gia], [Anh]) VALUES (N'TB0001', N'Giường đơn', 3000000, NULL)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [Gia], [Anh]) VALUES (N'TB0002', N'Giường đôi', 4000000, NULL)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [Gia], [Anh]) VALUES (N'TB0004', N'Máy xấy tóc', 200000, NULL)
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_NhanVien]
GO
ALTER TABLE [dbo].[CTAnh]  WITH CHECK ADD  CONSTRAINT [FK_CTAnh_LoaiPhong] FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
GO
ALTER TABLE [dbo].[CTAnh] CHECK CONSTRAINT [FK_CTAnh_LoaiPhong]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_HoaDon] FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[HoaDon] ([SoHoaDon])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_HoaDon]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_NhanVien]
GO
ALTER TABLE [dbo].[LoginKH]  WITH CHECK ADD  CONSTRAINT [FK_LoginKH_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[LoginKH] CHECK CONSTRAINT [FK_LoginKH_KhachHang]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLP])
REFERENCES [dbo].[LoaiPhong] ([MaLP])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD  CONSTRAINT [FK_SuDungDichVu_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[SuDungDichVu] CHECK CONSTRAINT [FK_SuDungDichVu_DichVu]
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD  CONSTRAINT [FK_SuDungDichVu_HoaDon] FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[HoaDon] ([SoHoaDon])
GO
ALTER TABLE [dbo].[SuDungDichVu] CHECK CONSTRAINT [FK_SuDungDichVu_HoaDon]
GO
ALTER TABLE [dbo].[SuDungThietBi]  WITH CHECK ADD  CONSTRAINT [FK_SuDungThietBi_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[SuDungThietBi] CHECK CONSTRAINT [FK_SuDungThietBi_Phong]
GO
ALTER TABLE [dbo].[SuDungThietBi]  WITH CHECK ADD  CONSTRAINT [FK_SuDungThietBi_ThietBi] FOREIGN KEY([MaTB])
REFERENCES [dbo].[ThietBi] ([MaTB])
GO
ALTER TABLE [dbo].[SuDungThietBi] CHECK CONSTRAINT [FK_SuDungThietBi_ThietBi]
GO
USE [master]
GO
ALTER DATABASE [QLKhachSanASP] SET  READ_WRITE 
GO
