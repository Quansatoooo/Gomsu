USE [QUANLYGOMSUN]
GO
/****** Object:  Table [dbo].[ChitietHDB]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDB](
	[SoHDB] [int] NOT NULL,
	[Mahang] [nvarchar](10) NOT NULL,
	[Soluong] [int] NULL,
	[Giamgia] [float] NULL,
	[Thanhtien] [float] NULL,
 CONSTRAINT [PK_ChitietHDB] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC,
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChitietHDN]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDN](
	[SoHDN] [int] NOT NULL,
	[Mahang] [nvarchar](10) NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [float] NULL,
	[Giamgia] [float] NULL,
	[Thanhtien] [float] NULL,
 CONSTRAINT [PK_ChitietHDN] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC,
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongDung]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongDung](
	[Macongdung] [nvarchar](10) NOT NULL,
	[Tencongdung] [nvarchar](20) NULL,
 CONSTRAINT [PK_Công dụng] PRIMARY KEY CLUSTERED 
(
	[Macongdung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Congviec]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congviec](
	[MaCV] [nvarchar](10) NOT NULL,
	[TenCV] [nvarchar](30) NULL,
	[Mucluong] [float] NULL,
 CONSTRAINT [PK_Congviec] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMhanghoa]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMhanghoa](
	[Mahang] [nvarchar](10) NOT NULL,
	[Tenhanghoa] [nvarchar](30) NULL,
	[Maloai] [nvarchar](10) NULL,
	[Makichthuoc] [nvarchar](10) NULL,
	[Macongdung] [nvarchar](10) NULL,
	[Maloaimen] [nvarchar](10) NULL,
	[Mahinhkhoi] [nvarchar](10) NULL,
	[Mahoavan] [nvarchar](10) NULL,
	[Mamau] [nvarchar](10) NULL,
	[ManuocSX] [nvarchar](10) NULL,
	[Soluong] [int] NULL CONSTRAINT [sl0]  DEFAULT ((0)),
	[Dongianhap] [float] NULL,
	[Dongiaban] [float] NULL,
	[Thoigianbaohanhanh] [float] NULL,
	[Ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DMhanghoa] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinhkhoi]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinhkhoi](
	[Mahinhkhoi] [nvarchar](10) NOT NULL,
	[Tenhinhkhoi] [nvarchar](15) NULL,
 CONSTRAINT [PK_Hinhkhoi] PRIMARY KEY CLUSTERED 
(
	[Mahinhkhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hoadonban]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadonban](
	[SoHDB] [int] NOT NULL,
	[Manhanvien] [nvarchar](10) NULL,
	[Ngayban] [date] NULL,
	[Makhach] [nvarchar](10) NULL,
	[Tongtien] [float] NULL,
 CONSTRAINT [PK_Hoadonban] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hoadonnhap]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadonnhap](
	[SoHDN] [int] NOT NULL,
	[Manhanvien] [nvarchar](10) NULL,
	[Ngaynhap] [date] NULL,
	[MaNCC] [nvarchar](15) NULL,
	[Tongtien] [float] NULL,
 CONSTRAINT [PK_Hoadonnhap] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hoavan]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoavan](
	[Mahoavan] [nvarchar](10) NOT NULL,
	[Tenhoavan] [nvarchar](30) NULL,
 CONSTRAINT [PK_Hoavan] PRIMARY KEY CLUSTERED 
(
	[Mahoavan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[Makhach] [nvarchar](10) NOT NULL,
	[Tenkhach] [nvarchar](15) NULL,
	[Diachi] [nvarchar](30) NULL,
	[Dienthoai] [int] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[Makhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KichThuoc]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichThuoc](
	[Makichthuoc] [nvarchar](10) NOT NULL,
	[Tenkichthuoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_Kích thước] PRIMARY KEY CLUSTERED 
(
	[Makichthuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[Maloai] [nvarchar](10) NOT NULL,
	[Tenloai] [nvarchar](15) NULL,
 CONSTRAINT [PK_Loại] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mau]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mau](
	[Mamau] [nvarchar](10) NOT NULL,
	[Tenmau] [nvarchar](15) NULL,
 CONSTRAINT [PK_Mau] PRIMARY KEY CLUSTERED 
(
	[Mamau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Men]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Men](
	[Maloaimen] [nvarchar](10) NOT NULL,
	[Tenloaimen] [nvarchar](20) NULL,
 CONSTRAINT [PK_Men] PRIMARY KEY CLUSTERED 
(
	[Maloaimen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[MaNCC] [nvarchar](15) NOT NULL,
	[TenNCC] [nvarchar](30) NULL,
	[Diachi] [nvarchar](30) NULL,
	[Dienthoai] [nvarchar](30) NULL,
 CONSTRAINT [PK_Nhacungcap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Manhanvien] [nvarchar](10) NOT NULL,
	[Tennhanvien] [nvarchar](30) NULL,
	[Gioitinh] [bit] NULL,
	[Ngaysinh] [date] NULL,
	[Dienthoai] [int] NULL,
	[Diachi] [nvarchar](50) NULL,
	[MaCV] [nvarchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nuocSX]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nuocSX](
	[ManuocSX] [nvarchar](10) NOT NULL,
	[TennuocSX] [nvarchar](10) NULL,
 CONSTRAINT [PK_Nước SX] PRIMARY KEY CLUSTERED 
(
	[ManuocSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[BaoCao]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[BaoCao] (@mahang NVARCHAR(20) )
RETURNS TABLE
AS
RETURN
(
SELECT Mahang,SoHDB,Thanhtien FROM dbo.ChitietHDB WHERE @mahang = Mahang 
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheo3loai]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[TimTheo3loai](@mahang NVARCHAR(20),@ngayban DATE,@tongtien FLOAT )
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE  dbo.Hoadonban.Ngayban = @ngayban AND dbo.Hoadonban.Tongtien = @tongtien AND dbo.ChitietHDB.Mahang = @mahang

)

GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoMaHangBan]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoMaHangBan] (@mahang NVARCHAR(20))
RETURNS TABLE 
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.ChitietHDB.Soluong,dbo.ChitietHDB.Giamgia,dbo.ChitietHDB.Thanhtien
FROM dbo.ChitietHDB
WHERE Mahang = @mahang
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoMaHangNhap]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoMaHangNhap](@mahang NVARCHAR(20))
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDN.SoHDN,dbo.ChitietHDN.Mahang,dbo.ChitietHDN.Soluong,dbo.ChitietHDN.Dongia,dbo.ChitietHDN.Giamgia,dbo.ChitietHDN.Thanhtien
FROM dbo.ChitietHDN
WHERE Mahang = @mahang
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoMH]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoMH](@mahang NVARCHAR(20))
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE dbo.ChitietHDB.Mahang = @mahang
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoMHNB]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoMHNB](@mahang NVARCHAR(20),@ngayban DATE )
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE  dbo.Hoadonban.Ngayban = @ngayban  AND dbo.ChitietHDB.Mahang = @mahang

)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoMHTT]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[TimTheoMHTT](@mahang NVARCHAR(20),@tongtien FLOAT )
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE    dbo.Hoadonban.Tongtien = @tongtien AND dbo.ChitietHDB.Mahang = @mahang

)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoNB]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[TimTheoNB](@ngayban date )
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE  dbo.Hoadonban.Ngayban = @ngayban
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoNBTT]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[TimTheoNBTT](@ngayban DATE,@tongtien FLOAT )
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE  dbo.Hoadonban.Ngayban = @ngayban AND dbo.Hoadonban.Tongtien = @tongtien 

)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoSoHDB]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- tao function tim kiem san pham trong ChitietHDB
CREATE FUNCTION [dbo].[TimTheoSoHDB] (@SHDB INT )
RETURNS TABLE 
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.ChitietHDB.Soluong,dbo.ChitietHDB.Giamgia,dbo.ChitietHDB.Thanhtien
FROM dbo.ChitietHDB
WHERE SoHDB = @SHDB
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoSoHDBMahang]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoSoHDBMahang] (@shdb INT ,@mahang NVARCHAR(20))
RETURNS TABLE 
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.ChitietHDB.Soluong,dbo.ChitietHDB.Giamgia,dbo.ChitietHDB.Thanhtien
FROM dbo.ChitietHDB
WHERE Mahang = @mahang AND SoHDB = @shdb
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoSoHDN]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoSoHDN](@SoHDN INT)
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDN.SoHDN,dbo.ChitietHDN.Mahang,dbo.ChitietHDN.Soluong,dbo.ChitietHDN.Dongia,dbo.ChitietHDN.Giamgia,dbo.ChitietHDN.Thanhtien
FROM dbo.ChitietHDN
WHERE SoHDN = @SoHDN
)


GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoSoHDNMaHang]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TimTheoSoHDNMaHang](@sohdn INT ,@mahang NVARCHAR(20))
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDN.SoHDN,dbo.ChitietHDN.Mahang,dbo.ChitietHDN.Soluong,dbo.ChitietHDN.Dongia,dbo.ChitietHDN.Giamgia,dbo.ChitietHDN.Thanhtien
FROM dbo.ChitietHDN
WHERE Mahang = @mahang AND SoHDN = @sohdn
)



GO
/****** Object:  UserDefinedFunction [dbo].[TimTheoTT]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[TimTheoTT](@TongTien float )
RETURNS TABLE
AS
RETURN
(
SELECT dbo.ChitietHDB.SoHDB,dbo.ChitietHDB.Mahang,dbo.Hoadonban.Ngayban,dbo.Hoadonban.Tongtien
FROM dbo.ChitietHDB RIGHT JOIN dbo.Hoadonban ON Hoadonban.SoHDB = ChitietHDB.SoHDB
WHERE  dbo.Hoadonban.Tongtien = @TongTien
)


GO
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69001, N'MH002', 200, 10, 59400000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69002, N'MH002', 100, 5, 31350000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69003, N'MH001', 200, 5, 62700000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69003, N'MH002', 50, 5, 15675000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69004, N'MH003', 100, 10, 4950000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69005, N'MH003', 100, 5, 5225000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69006, N'MH001', 200, 10, 59400000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69007, N'MH004', 10, 10, 2970000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69008, N'MH005', 10, 5, 1045000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69009, N'MH005', 10, 10, 990000)
INSERT [dbo].[ChitietHDB] ([SoHDB], [Mahang], [Soluong], [Giamgia], [Thanhtien]) VALUES (69009, N'MH006', 10, 10, 1980000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99001, N'MH005', 200, 100000, 5, 19000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99002, N'MH002', 500, 400000, 5, 190000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99003, N'MH001', 100, 300000, 10, 27000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99003, N'MH002', 10, 300000, 10, 2700000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99004, N'MH002', 200, 400000, 5, 76000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99004, N'MH004', 200, 600000, 10, 108000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99005, N'MH004', 800, 600000, 5, 456000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99006, N'MH004', 700, 600000, 5, 399000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99006, N'MH005', 100, 500000, 10, 45000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99006, N'MH006', 5000, 200000, 5, 950000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99007, N'MH006', 800, 200000, 5, 152000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99008, N'MH005', 200, 100000, 5, 19000000)
INSERT [dbo].[ChitietHDN] ([SoHDN], [Mahang], [Soluong], [Dongia], [Giamgia], [Thanhtien]) VALUES (99009, N'MH001', 0, 300000, 10, 0)
INSERT [dbo].[CongDung] ([Macongdung], [Tencongdung]) VALUES (N'MCD001', N'Đựng đồ ăn')
INSERT [dbo].[CongDung] ([Macongdung], [Tencongdung]) VALUES (N'MCD002', N'Trang Sức Cổ Điển')
INSERT [dbo].[CongDung] ([Macongdung], [Tencongdung]) VALUES (N'MCD003', N'Làm bình hoa quả')
INSERT [dbo].[CongDung] ([Macongdung], [Tencongdung]) VALUES (N'MCD004', N'Làm đồ vật trang trí')
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV001', N'Nhân Viên Bán Hàng', 8.5)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV002', N'Chọn xử lý và pha chế đất', 8.5)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV003', N'Tạo dáng sản phẩm', 9)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV004', N'Nhân Viên Nhập Hàng', 6.5)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV005', N'Nung sản phẩm', 9)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV006', N'Nhân viên bán hàng', 10)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV007', N'Nhập hàng ,Quản lý kho', 12.5)
INSERT [dbo].[Congviec] ([MaCV], [TenCV], [Mucluong]) VALUES (N'MCV008', N'Nhân Viên Nhập Hàng 2', 10)
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH001', N'Bát Đĩa Gốm sứ', N'ML001', N'MKT001', N'MCD002', N'MLM001', N'MHK001', N'MHV001', N'MMS001', N'MNSX001', 9200, 300000, 330000, 60, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH002', N'Bình Hoa Ngũ Sắc', N'ML001', N'MKT002', N'MCD003', N'MLM002', N'MHK001', N'MHV002', N'MMS003', N'MNSX003', 27990, 400000, 440000, 30, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH003', N'Đĩa Sứ Tráng Men Bóng', N'ML003', N'MKT002', N'MCD002', N'MLM005', N'MHK003', N'MHV002', N'MMS004', N'MNSX005', 6150, 50000, 55000, 60, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH004', N'Bát Đĩa In Hình Sen', N'ML005', N'MKT001', N'MCD003', N'MLM004', N'MHK001', N'MHV003', N'MMS002', N'MNSX005', 100, 300000, 330000, 30, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH005', N'Bát Đĩa Bát Tràng', N'ML002', N'MKT001', N'MCD001', N'MLM004', N'MHK003', N'MHV002', N'MMS008', N'MNSX002', 3652, 100000, 110000, 90, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH006', N'Bát Đĩa  Sắc Màu', N'ML004', N'MKT002', N'MCD004', N'MLM003', N'MHK002', N'MHV004', N'MMS009', N'MNSX004', 25006, 200000, 220000, 30, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[DMhanghoa] ([Mahang], [Tenhanghoa], [Maloai], [Makichthuoc], [Macongdung], [Maloaimen], [Mahinhkhoi], [Mahoavan], [Mamau], [ManuocSX], [Soluong], [Dongianhap], [Dongiaban], [Thoigianbaohanhanh], [Ghichu]) VALUES (N'MH007', N'Bát Đĩa In Hình Vàng 999', N'ML007', N'MKT001', N'MCD003', N'MLM004', N'MHK001', N'MHV003', N'MMS002', N'MNSX002', 0, NULL, NULL, 60, N'Hàng dễ vỡ bảo quản cho cẩn thận')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK001', N'HÌnh Vuông')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK002', N'HÌnh Tròn')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK003', N'HÌnh Trụ')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK004', N'HÌnh Ngũ giác')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK005', N'HÌnh lục giác')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK006', N'HÌnh Cầu')
INSERT [dbo].[Hinhkhoi] ([Mahinhkhoi], [Tenhinhkhoi]) VALUES (N'MHK007', N'HÌnh Elip')
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69001, N'MNV002', CAST(N'2019-10-04' AS Date), N'MKH001', 79252250)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69002, N'MNV002', CAST(N'2019-04-06' AS Date), N'MKH002', 41800000)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69003, N'MNV003', CAST(N'2019-09-06' AS Date), N'MKH003', 83600000)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69004, N'MNV011', CAST(N'2019-03-04' AS Date), N'MKH004', 49500)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69005, N'MNV012', CAST(N'2019-12-10' AS Date), N'MKH007', 5225000)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69006, N'MNV005', CAST(N'2019-02-06' AS Date), N'MKH003', 59400000)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69007, N'MNV002', CAST(N'2019-09-06' AS Date), N'MKH008', 5940000)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69008, N'MNV005', CAST(N'2019-01-06' AS Date), N'MKH007', 1045000)
INSERT [dbo].[Hoadonban] ([SoHDB], [Manhanvien], [Ngayban], [Makhach], [Tongtien]) VALUES (69009, N'MNV012', CAST(N'2019-07-06' AS Date), N'MKH003', 1980000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99001, N'MNV002', CAST(N'2019-04-06' AS Date), N'MNCC001', 437500000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99002, N'MNV004', CAST(N'2019-10-06' AS Date), N'MNCC002', 76000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99003, N'MNV003', CAST(N'2019-05-04' AS Date), N'MNCC002', 27000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99004, N'MNV003', CAST(N'2019-04-06' AS Date), N'MNCC001', 315000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99005, N'MNV002', CAST(N'2019-12-06' AS Date), N'MNCC003', 456000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99006, N'MNV005', CAST(N'2019-01-06' AS Date), N'MNCC004', 1394000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99007, N'MNV006', CAST(N'2019-06-06' AS Date), N'MNCC005', 152000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99008, N'MNV010', CAST(N'2019-04-06' AS Date), N'MNCC005', 18000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99009, N'MNV008', CAST(N'2019-10-16' AS Date), N'MNCC004', 27000000)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99010, N'MNV012', CAST(N'2019-04-06' AS Date), N'MNCC003', NULL)
INSERT [dbo].[Hoadonnhap] ([SoHDN], [Manhanvien], [Ngaynhap], [MaNCC], [Tongtien]) VALUES (99011, N'MNV005', CAST(N'2019-05-04' AS Date), N'MNCC003', NULL)
INSERT [dbo].[Hoavan] ([Mahoavan], [Tenhoavan]) VALUES (N'MHV001', N'Hoa văn Ngũ Sắc')
INSERT [dbo].[Hoavan] ([Mahoavan], [Tenhoavan]) VALUES (N'MHV002', N'Hoa văn Cầu Vồng')
INSERT [dbo].[Hoavan] ([Mahoavan], [Tenhoavan]) VALUES (N'MHV003', N'Hoa văn Hoa Sen Đỏ')
INSERT [dbo].[Hoavan] ([Mahoavan], [Tenhoavan]) VALUES (N'MHV004', N'Hoa văn Hoa Hồng Trắng')
INSERT [dbo].[Hoavan] ([Mahoavan], [Tenhoavan]) VALUES (N'MHV005', N'Hoa văn Nhiều Màu')
INSERT [dbo].[Hoavan] ([Mahoavan], [Tenhoavan]) VALUES (N'MHV006', N'Hoa văn Hoa Cúc')
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH001', N'Nguyễn Văn A', N'Hà Nội', 36985585)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH002', N'Nguyễn Văn Ba', N'Hà Tây', 87885585)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH003', N'Nguyễn Thị C', N'Hà Nam', 66256585)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH004', N'Nguyễn Văn Thật', N'Hà Đông', 58678585)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH005', N'Kiều Văn Huy', N'Nam Định', 78985585)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH006', N'Lê Thị Bưởi', N'Nghệ An', 78985585)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH007', N'Trần Nguyễn Anh', N'Hà Nội', 36999985)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH008', N'Lê Văn Luyện', N'Tây Ninh', 37998785)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH009', N'Ngô Bá Khá', N'Hà Đông', 78986685)
INSERT [dbo].[Khachhang] ([Makhach], [Tenkhach], [Diachi], [Dienthoai]) VALUES (N'MKH010', N'Ngô Bá Thật', N'Hưng Yến', 46987785)
INSERT [dbo].[KichThuoc] ([Makichthuoc], [Tenkichthuoc]) VALUES (N'MKT001', N'To')
INSERT [dbo].[KichThuoc] ([Makichthuoc], [Tenkichthuoc]) VALUES (N'MKT002', N'Vừa')
INSERT [dbo].[KichThuoc] ([Makichthuoc], [Tenkichthuoc]) VALUES (N'MKT003', N'Nhỏ')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'ML001', N'loai 1')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'ML002', N'loai 2')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'ML003', N'loai 2')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'ML004', N'loai 4')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'ML005', N'loai 1')
INSERT [dbo].[Loai] ([Maloai], [Tenloai]) VALUES (N'ML007', N'loai 2')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS001', N'ĐỎ')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS002', N'Đen')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS003', N'Cam')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS004', N'Xanh')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS005', N'Nâu')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS006', N'Tím Đậm')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS007', N'Tím')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS008', N'Tràm')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS009', N'Xám')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS010', N'Hồng')
INSERT [dbo].[Mau] ([Mamau], [Tenmau]) VALUES (N'MMS011', N'Vàng Mứt')
INSERT [dbo].[Men] ([Maloaimen], [Tenloaimen]) VALUES (N'MLM001', N'Men tàu')
INSERT [dbo].[Men] ([Maloaimen], [Tenloaimen]) VALUES (N'MLM002', N'Men pháp')
INSERT [dbo].[Men] ([Maloaimen], [Tenloaimen]) VALUES (N'MLM003', N'Men Italy')
INSERT [dbo].[Men] ([Maloaimen], [Tenloaimen]) VALUES (N'MLM004', N'Men Việt')
INSERT [dbo].[Men] ([Maloaimen], [Tenloaimen]) VALUES (N'MLM005', N'Men Ấn Độ')
INSERT [dbo].[Men] ([Maloaimen], [Tenloaimen]) VALUES (N'MLM006', N'Men Úc')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [Diachi], [Dienthoai]) VALUES (N'MNCC001', N'Công ty Sông Đà', N'Hà Nội', N'037896987')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [Diachi], [Dienthoai]) VALUES (N'MNCC002', N'Công ty Gốm Bát Tràng', N'Nghệ An', N'033416987')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [Diachi], [Dienthoai]) VALUES (N'MNCC003', N'Công ty Nam Hồng', N'Thanh Hóa', N'037885887')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [Diachi], [Dienthoai]) VALUES (N'MNCC004', N'Công ty SamSung', N'Hà Nội', N'037896777')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [Diachi], [Dienthoai]) VALUES (N'MNCC005', N'Công ty Cấp Nước Vũng Tàu 1', N'Vũng Tàu', N'038586987')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [Diachi], [Dienthoai]) VALUES (N'MNCC006', N'Công ty Nam Hồng SBC', N'Hà Nội', N'0934456858')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV001', N'Nguyễn Tiến Thật', 1, CAST(N'1999-04-06' AS Date), 36698525, N'Hà Nội', N'MCV001')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV002', N'Nguyễn Duy Quang', 1, CAST(N'1999-03-03' AS Date), 987874512, N'Hà Nội', N'MCV001')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV003', N'Nguyễn Thúc Quân', 1, CAST(N'1999-01-01' AS Date), 87585965, N'Nghệ An', N'MCV002')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV004', N'Kiều Văn Huy', 1, CAST(N'1999-09-09' AS Date), 36698999, N'Hà Nội', N'MCV002')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV005', N'Ngô Văn Phú', 1, CAST(N'1999-04-04' AS Date), 36698525, N'Hà Nội', N'MCV002')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV006', N'Nguyễn Thị Linh', 0, CAST(N'1999-02-06' AS Date), 84857965, N'Hà Nam', N'MCV003')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV007', N'Lê Thị Lan', 0, CAST(N'2000-04-06' AS Date), 66698525, N'KonTum', N'MCV004')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV008', N'Nguyễn Thị Hồng', 0, CAST(N'1999-12-06' AS Date), 77798525, N'Thanh Hóa', N'MCV005')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV009', N'Nguyễn Thị Trang', 0, CAST(N'1999-02-16' AS Date), 78998525, N'Hải Phòng', N'MCV001')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV010', N'Nguyễn Thị Lan', 0, CAST(N'2001-09-06' AS Date), 36698525, N'Hà Đông', N'MCV005')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV012', N'', 0, CAST(N'1999-01-03' AS Date), 88787466, N'Hà Tây', N'MCV007')
INSERT [dbo].[NhanVien] ([Manhanvien], [Tennhanvien], [Gioitinh], [Ngaysinh], [Dienthoai], [Diachi], [MaCV]) VALUES (N'MNV013', N'Nguyễn Thị Lan', 0, CAST(N'1999-03-02' AS Date), 23454987, N'Hà Nội', N'MCV004')
INSERT [dbo].[nuocSX] ([ManuocSX], [TennuocSX]) VALUES (N'MNSX001', N'China')
INSERT [dbo].[nuocSX] ([ManuocSX], [TennuocSX]) VALUES (N'MNSX002', N'Germany')
INSERT [dbo].[nuocSX] ([ManuocSX], [TennuocSX]) VALUES (N'MNSX003', N'India')
INSERT [dbo].[nuocSX] ([ManuocSX], [TennuocSX]) VALUES (N'MNSX004', N'Italy')
INSERT [dbo].[nuocSX] ([ManuocSX], [TennuocSX]) VALUES (N'MNSX005', N'VietNam')
INSERT [dbo].[nuocSX] ([ManuocSX], [TennuocSX]) VALUES (N'MNSX006', N'Cuba')
ALTER TABLE [dbo].[ChitietHDN]  WITH CHECK ADD  CONSTRAINT [FK_ChitietHDN_DMhanghoa] FOREIGN KEY([Mahang])
REFERENCES [dbo].[DMhanghoa] ([Mahang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChitietHDN] CHECK CONSTRAINT [FK_ChitietHDN_DMhanghoa]
GO
ALTER TABLE [dbo].[ChitietHDN]  WITH CHECK ADD  CONSTRAINT [FK_ChitietHDN_Hoadonnhap] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[Hoadonnhap] ([SoHDN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChitietHDN] CHECK CONSTRAINT [FK_ChitietHDN_Hoadonnhap]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_CongDung] FOREIGN KEY([Macongdung])
REFERENCES [dbo].[CongDung] ([Macongdung])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_CongDung]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_Hinhkhoi] FOREIGN KEY([Mahinhkhoi])
REFERENCES [dbo].[Hinhkhoi] ([Mahinhkhoi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_Hinhkhoi]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_Hoavan] FOREIGN KEY([Mahoavan])
REFERENCES [dbo].[Hoavan] ([Mahoavan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_Hoavan]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_KichThuoc] FOREIGN KEY([Makichthuoc])
REFERENCES [dbo].[KichThuoc] ([Makichthuoc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_KichThuoc]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_Loai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[Loai] ([Maloai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_Loai]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_Mau] FOREIGN KEY([Mamau])
REFERENCES [dbo].[Mau] ([Mamau])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_Mau]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_Men] FOREIGN KEY([Maloaimen])
REFERENCES [dbo].[Men] ([Maloaimen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_Men]
GO
ALTER TABLE [dbo].[DMhanghoa]  WITH CHECK ADD  CONSTRAINT [FK_DMhanghoa_nuocSX] FOREIGN KEY([ManuocSX])
REFERENCES [dbo].[nuocSX] ([ManuocSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DMhanghoa] CHECK CONSTRAINT [FK_DMhanghoa_nuocSX]
GO
ALTER TABLE [dbo].[Hoadonban]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonban_Khachhang] FOREIGN KEY([Makhach])
REFERENCES [dbo].[Khachhang] ([Makhach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoadonban] CHECK CONSTRAINT [FK_Hoadonban_Khachhang]
GO
ALTER TABLE [dbo].[Hoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonnhap_Nhacungcap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[Nhacungcap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoadonnhap] CHECK CONSTRAINT [FK_Hoadonnhap_Nhacungcap]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Congviec] FOREIGN KEY([MaCV])
REFERENCES [dbo].[Congviec] ([MaCV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Congviec]
GO
/****** Object:  StoredProcedure [dbo].[tinhtong]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[tinhtong] @mahang NVARCHAR(20),@tongtien   FLOAT = 0 OUTPUT 
AS
SELECT @tongtien = SUM(dbo.ChitietHDN.Thanhtien)
FROM dbo.ChitietHDN
WHERE mahang = @mahang
GROUP BY Mahang


GO
/****** Object:  StoredProcedure [dbo].[uf_bcquy]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uf_bcquy] 	@quy INT 	as 	begin 	SELECT Mahang,Tenhanghoa,Maloai FROM dbo.DMhanghoa WHERE Mahang NOT IN( SELECT DISTINCT Mahang FROM dbo.ChitietHDB c INNER JOIN dbo.Hoadonban s ON c.SoHDB=s.SoHDB WHERE ROUND( (MONTH(s.Ngayban)-1) /3 , 1 ) = @quy -1)  	end
GO
/****** Object:  StoredProcedure [dbo].[usp_Dshd]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_Dshd] @mahang NVARCHAR(15) AS BEGIN SELECT SoHDB,Mahang,Soluong,Thanhtien FROM dbo.ChitietHDB WHERE @mahang =Mahang END
GO
/****** Object:  StoredProcedure [dbo].[usp_Nhanvien]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_Nhanvien] @thang int AS BEGIN SELECT DISTINCT n.Tennhanvien, b.Manhanvien,n.Gioitinh,n.Ngaysinh FROM dbo.NhanVien n INNER JOIN dbo.Hoadonban b ON n.Manhanvien=b.Manhanvien WHERE @thang=MONTH(b.Ngayban) END
GO
/****** Object:  StoredProcedure [dbo].[usp_top5]    Script Date: 11/15/2019 8:40:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[usp_top5]  @nam int AS BEGIN SELECT TOP 5 SoHDN,Manhanvien,Ngaynhap,MaNCC,Tongtien FROM dbo.Hoadonnhap where @nam =YEAR(Ngaynhap) ORDER BY Tongtien DESC  END
GO
