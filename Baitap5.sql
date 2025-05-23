USE [master]
GO
/****** Object:  Database [bai tap 5 quan ly nhà hàng hai san bien dong]    Script Date: 23/04/2025 8:32:36 CH ******/
CREATE DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bai tap 5 quan ly nhà hàng hai san bien dong', FILENAME = N'D:\bai tap 5 quan ly nhà hàng hai san bien dong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bai tap 5 quan ly nhà hàng hai san bien dong_log', FILENAME = N'D:\bai tap 5 quan ly nhà hàng hai san bien dong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bai tap 5 quan ly nhà hàng hai san bien dong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ARITHABORT OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET RECOVERY FULL 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET  MULTI_USER 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bai tap 5 quan ly nhà hàng hai san bien dong', N'ON'
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET QUERY_STORE = ON
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [bai tap 5 quan ly nhà hàng hai san bien dong]
GO
/****** Object:  Table [dbo].[Banan]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banan](
	[Maban] [varchar](50) NOT NULL,
	[Sochonguoi] [int] NULL,
	[Trangthai] [varchar](50) NULL,
 CONSTRAINT [PK_Ban an] PRIMARY KEY CLUSTERED 
(
	[Maban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitiethd]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitiethd](
	[Mahd] [varchar](50) NOT NULL,
	[Mamon] [varchar](50) NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [int] NULL,
 CONSTRAINT [PK_Chi tiet hd] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC,
	[Mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congthucmon]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congthucmon](
	[Mamon] [varchar](50) NOT NULL,
	[Manl] [varchar](50) NOT NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Cong thuc mon] PRIMARY KEY CLUSTERED 
(
	[Mamon] ASC,
	[Manl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datban]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datban](
	[Madat] [varchar](50) NOT NULL,
	[Tenkhach] [varchar](50) NULL,
	[Sdt] [int] NULL,
	[Ngaydat] [date] NULL,
	[Giodat] [time](7) NULL,
	[Maban] [varchar](50) NULL,
 CONSTRAINT [PK_Dat ban] PRIMARY KEY CLUSTERED 
(
	[Madat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Mahd] [varchar](50) NOT NULL,
	[Ngaylap] [datetime] NULL,
	[Tongtien] [varchar](50) NULL,
	[Manv] [varchar](50) NULL,
	[Maban] [varchar](50) NULL,
 CONSTRAINT [PK_Hoa don] PRIMARY KEY CLUSTERED 
(
	[Mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[Manv] [varchar](50) NOT NULL,
	[NgayGhiNhan] [datetime] NOT NULL,
	[SoNgayNghi] [int] NULL,
	[NoiDung] [nvarchar](200) NULL,
 CONSTRAINT [PK__Log__5E5499A8B379EE08] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monan]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monan](
	[Mamon] [varchar](50) NOT NULL,
	[Tenmon] [varchar](50) NULL,
	[Giamon] [varchar](50) NULL,
	[Mota] [varchar](50) NULL,
	[Loaimon] [varchar](50) NULL,
 CONSTRAINT [PK_Monan] PRIMARY KEY CLUSTERED 
(
	[Mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguyenlieu]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguyenlieu](
	[Manl] [varchar](50) NOT NULL,
	[Tennl] [varchar](50) NULL,
	[Donvitinh] [varchar](50) NULL,
	[Soluongton] [int] NULL,
	[Mancc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nguyen lieu] PRIMARY KEY CLUSTERED 
(
	[Manl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[Ma ncc] [nvarchar](50) NOT NULL,
	[Ten ncc] [nvarchar](50) NULL,
	[Sdt] [nvarchar](50) NULL,
	[Dia chi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nha cung cap] PRIMARY KEY CLUSTERED 
(
	[Ma ncc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[Manv] [varchar](50) NOT NULL,
	[Hoten] [varchar](50) NULL,
	[Chucvu] [varchar](50) NULL,
	[Sdt] [int] NULL,
 CONSTRAINT [PK_Nhan vien] PRIMARY KEY CLUSTERED 
(
	[Manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Banan] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'B01', 6, N'chuaconguoi')
INSERT [dbo].[Banan] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'B02', 7, N'da dat')
INSERT [dbo].[Banan] ([Maban], [Sochonguoi], [Trangthai]) VALUES (N'B03', 8, N'chuadat')
GO
INSERT [dbo].[Chitiethd] ([Mahd], [Mamon], [Soluong], [Dongia]) VALUES (N'MHD01', N'M01', 200, 2000000)
INSERT [dbo].[Chitiethd] ([Mahd], [Mamon], [Soluong], [Dongia]) VALUES (N'MHD02', N'M02', 100, 3000000)
INSERT [dbo].[Chitiethd] ([Mahd], [Mamon], [Soluong], [Dongia]) VALUES (N'MHD03', N'M03', 400, 4000000)
GO
INSERT [dbo].[Congthucmon] ([Mamon], [Manl], [Soluong]) VALUES (N'M01', N'MNL01', 200)
INSERT [dbo].[Congthucmon] ([Mamon], [Manl], [Soluong]) VALUES (N'M02', N'MNL02', 300)
INSERT [dbo].[Congthucmon] ([Mamon], [Manl], [Soluong]) VALUES (N'M03', N'MNL03', 400)
GO
INSERT [dbo].[Datban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MD01', N'MA QUOC HIEU', 999887654, CAST(N'2024-04-01' AS Date), CAST(N'17:00:00' AS Time), N'B01')
INSERT [dbo].[Datban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MD02', N'NONG HO NHAT', 97688627, CAST(N'2024-03-03' AS Date), CAST(N'18:00:00' AS Time), N'B02')
INSERT [dbo].[Datban] ([Madat], [Tenkhach], [Sdt], [Ngaydat], [Giodat], [Maban]) VALUES (N'MD03', N'NGUYEN VAN HOAN', 99887832, CAST(N'2023-05-06' AS Date), CAST(N'19:30:00' AS Time), N'B03')
GO
INSERT [dbo].[Hoadon] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'MHD01', CAST(N'2025-04-13T00:00:00.000' AS DateTime), N'200000', N'MNV01', N'B01')
INSERT [dbo].[Hoadon] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'MHD02', CAST(N'2025-04-11T00:00:00.000' AS DateTime), N'500000', N'MNV02', N'B02')
INSERT [dbo].[Hoadon] ([Mahd], [Ngaylap], [Tongtien], [Manv], [Maban]) VALUES (N'MHD03', CAST(N'2025-04-11T00:00:00.000' AS DateTime), N'1000000', N'MNV03', N'B03')
GO
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([LogID], [Manv], [NgayGhiNhan], [SoNgayNghi], [NoiDung]) VALUES (1, N'MNV05', CAST(N'2025-04-23T20:26:35.743' AS DateTime), 4, N'Nhân viên MNV05 có số ngày nghỉ là 4, vượt quá giới hạn cho phép.')
SET IDENTITY_INSERT [dbo].[Log] OFF
GO
INSERT [dbo].[Monan] ([Mamon], [Tenmon], [Giamon], [Mota], [Loaimon]) VALUES (N'M01', N'hau sua', N'10000', N'bình thuong', N'hàu nu?ng')
INSERT [dbo].[Monan] ([Mamon], [Tenmon], [Giamon], [Mota], [Loaimon]) VALUES (N'M02', N'tom su', N'100000', N'ngon', N'tom chien')
INSERT [dbo].[Monan] ([Mamon], [Tenmon], [Giamon], [Mota], [Loaimon]) VALUES (N'M03', N'oc mong tay', N'50000', N'ok', N'oc luoc')
GO
INSERT [dbo].[Nguyenlieu] ([Manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL01', N'CÁ H?I', N'CON', 100, N'MCC01')
INSERT [dbo].[Nguyenlieu] ([Manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL02', N'TOM HUM', N'CON', 200, N'MCC02')
INSERT [dbo].[Nguyenlieu] ([Manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL03', N'BÀO NGU', N'CON', 300, N'MCC03')
INSERT [dbo].[Nguyenlieu] ([Manl], [Tennl], [Donvitinh], [Soluongton], [Mancc]) VALUES (N'MNL04', N'?C HUONG', N'CON', 400, N'MCC04')
GO
INSERT [dbo].[Nhacungcap] ([Ma ncc], [Ten ncc], [Sdt], [Dia chi]) VALUES (N'MCC01', N'NONG HO NHAT', N'09979298897', N'DAI TU THAI NGUYEN')
INSERT [dbo].[Nhacungcap] ([Ma ncc], [Ten ncc], [Sdt], [Dia chi]) VALUES (N'MCC02', N'TRIEU TRA MY', N'087988778', N'DAITU-THAI NGUYEN')
INSERT [dbo].[Nhacungcap] ([Ma ncc], [Ten ncc], [Sdt], [Dia chi]) VALUES (N'MCC03', N'NGUYEN THI VAN ANH', N'098978978', N'HIEPHOA-BACGIANG')
INSERT [dbo].[Nhacungcap] ([Ma ncc], [Ten ncc], [Sdt], [Dia chi]) VALUES (N'MCC04', N'NGUYEN THI XUAN PHUONG', N'099779893', N'HAULOC-THANHHOA')
GO
INSERT [dbo].[Nhanvien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV01', N'NGUYEN VAN HOAN', N'BAO VE', 902456685)
INSERT [dbo].[Nhanvien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV02', N'TRUONG VAN QUYEN', N'LAO CONG', 99899843)
INSERT [dbo].[Nhanvien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV03', N'NGUYEN THI LINH', N'CHU QUAN', 98933523)
INSERT [dbo].[Nhanvien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV04', N'HOANG THI XUAN TRANG ', N'QUAN LY', 98928423)
INSERT [dbo].[Nhanvien] ([Manv], [Hoten], [Chucvu], [Sdt]) VALUES (N'MNV05', N'Lê Van B', N'Nhân viên th? vi?c', 987654321)
GO
ALTER TABLE [dbo].[Log] ADD  CONSTRAINT [DF__Log__NgayGhiNhan__01142BA1]  DEFAULT (getdate()) FOR [NgayGhiNhan]
GO
ALTER TABLE [dbo].[Chitiethd]  WITH CHECK ADD  CONSTRAINT [FK_Chitiethd_Hoadon] FOREIGN KEY([Mahd])
REFERENCES [dbo].[Hoadon] ([Mahd])
GO
ALTER TABLE [dbo].[Chitiethd] CHECK CONSTRAINT [FK_Chitiethd_Hoadon]
GO
ALTER TABLE [dbo].[Chitiethd]  WITH CHECK ADD  CONSTRAINT [FK_Chitiethd_Monan] FOREIGN KEY([Mamon])
REFERENCES [dbo].[Monan] ([Mamon])
GO
ALTER TABLE [dbo].[Chitiethd] CHECK CONSTRAINT [FK_Chitiethd_Monan]
GO
ALTER TABLE [dbo].[Congthucmon]  WITH CHECK ADD  CONSTRAINT [FK_Congthucmon_Monan] FOREIGN KEY([Mamon])
REFERENCES [dbo].[Monan] ([Mamon])
GO
ALTER TABLE [dbo].[Congthucmon] CHECK CONSTRAINT [FK_Congthucmon_Monan]
GO
ALTER TABLE [dbo].[Congthucmon]  WITH CHECK ADD  CONSTRAINT [FK_Congthucmon_Nguyenlieu] FOREIGN KEY([Manl])
REFERENCES [dbo].[Nguyenlieu] ([Manl])
GO
ALTER TABLE [dbo].[Congthucmon] CHECK CONSTRAINT [FK_Congthucmon_Nguyenlieu]
GO
ALTER TABLE [dbo].[Datban]  WITH CHECK ADD  CONSTRAINT [FK_Datban_Banan1] FOREIGN KEY([Maban])
REFERENCES [dbo].[Banan] ([Maban])
GO
ALTER TABLE [dbo].[Datban] CHECK CONSTRAINT [FK_Datban_Banan1]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_Banan] FOREIGN KEY([Maban])
REFERENCES [dbo].[Banan] ([Maban])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_Banan]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_Nhanvien] FOREIGN KEY([Manv])
REFERENCES [dbo].[Nhanvien] ([Manv])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_Nhanvien]
GO
ALTER TABLE [dbo].[Nguyenlieu]  WITH CHECK ADD  CONSTRAINT [FK_Nguyenlieu_Nhacungcap] FOREIGN KEY([Mancc])
REFERENCES [dbo].[Nhacungcap] ([Ma ncc])
GO
ALTER TABLE [dbo].[Nguyenlieu] CHECK CONSTRAINT [FK_Nguyenlieu_Nhacungcap]
GO
/****** Object:  Trigger [dbo].[trg_CanhBaoNhanVienNghi]    Script Date: 23/04/2025 8:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		NONG HO NHAT
-- Create date: 2025-04-23
-- Description:	Canhbaonhanviennghi >3buoi
-- =============================================
CREATE   TRIGGER [dbo].[trg_CanhBaoNhanVienNghi]
ON [dbo].[Nhanvien]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Ví dụ giả lập số ngày nghỉ
    DECLARE @SoNgayNghi INT;
    SET @SoNgayNghi = 4;

    -- Chỉ ghi log nếu số ngày nghỉ > 3
    INSERT INTO Log (Manv, NgayGhiNhan, SoNgayNghi, NoiDung)
    SELECT 
        i.Manv,
        GETDATE(),
        @SoNgayNghi,
        N'Nhân viên ' + i.Manv + N' có số ngày nghỉ là ' 
        + CAST(@SoNgayNghi AS NVARCHAR) 
        + N', vượt quá giới hạn cho phép.'
    FROM inserted i
    WHERE @SoNgayNghi > 3;
END;
GO
ALTER TABLE [dbo].[Nhanvien] ENABLE TRIGGER [trg_CanhBaoNhanVienNghi]
GO
USE [master]
GO
ALTER DATABASE [bai tap 5 quan ly nhà hàng hai san bien dong] SET  READ_WRITE 
GO
