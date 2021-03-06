Create database demoQuanLyBanHang
go
USE demoQuanLyBanHang
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](12) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai]) VALUES (N'KH01', N'Trần Thanh Hùng', N'20 Nguyễn Công Trứ', N'0633213546')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai]) VALUES (N'KH02', N'Quán Cafe Billy', N'14 Paster', N'0633567845')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai]) VALUES (N'KH03', N'Chị Hương', N'40 Trần Phú', N'098734554')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai]) VALUES (N'KH04', N'Tạp hóa Xuân Mai', N'15 Lê Hồng Phong', N'0988567456')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai]) VALUES (N'KH05', N'Anh Sáu', N'47/1 Bùi Thị Xuân', N'0988546897')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai]) VALUES (N'KH06', N'Lê Thị Hoa', N'20 Bùi Thị Xuân', N'0987543456')
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[MaLoai] [nvarchar](5) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIHANG] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAIHANG] ([MaLoai], [TenLoai]) VALUES (N'BI', N'Bia')
INSERT [dbo].[LOAIHANG] ([MaLoai], [TenLoai]) VALUES (N'BK', N'Bánh kẹo')
INSERT [dbo].[LOAIHANG] ([MaLoai], [TenLoai]) VALUES (N'GK', N'Giải khát')
INSERT [dbo].[LOAIHANG] ([MaLoai], [TenLoai]) VALUES (N'RU', N'Rượu')
/****** Object:  Table [dbo].[NHAPKHO]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPKHO](
	[SoPhieuN] [nvarchar](10) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[NguoiNhap] [nvarchar](50) NULL,
	[LyDoNhap] [nvarchar](200) NULL,
 CONSTRAINT [PK_NHAPKHO] PRIMARY KEY CLUSTERED 
(
	[SoPhieuN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NHAPKHO] ([SoPhieuN], [NgayNhap], [NguoiNhap], [LyDoNhap]) VALUES (N'NK01', CAST(0x0000A95700000000 AS DateTime), N'Nam', N'mua hàng bán')
INSERT [dbo].[NHAPKHO] ([SoPhieuN], [NgayNhap], [NguoiNhap], [LyDoNhap]) VALUES (N'NK02', CAST(0x0000A95800000000 AS DateTime), N'Duy', N'nhập hàng từ TP HCM')
INSERT [dbo].[NHAPKHO] ([SoPhieuN], [NgayNhap], [NguoiNhap], [LyDoNhap]) VALUES (N'NK03', CAST(0x0000A98300E4E733 AS DateTime), N'Trí', N'mua hàng nhập kho')
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [int] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ThanhVien] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'admin', N'123456', 2)
INSERT [dbo].[ThanhVien] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'tuan', N'123', 1)
INSERT [dbo].[ThanhVien] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'tri', N'123', 1)
/****** Object:  StoredProcedure [dbo].[NHAPKHOUpdate]    Script Date: 12/08/2019 14:36:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHOUpdate]
	@SoPhieuN NVarChar(10), 
	@NgayNhap DateTime, 
	@NguoiNhap NVarChar(50), 
	@LyDoNhap NVarChar(200) 
AS

UPDATE [NHAPKHO] SET
	[NgayNhap] = @NgayNhap,
	[NguoiNhap] = @NguoiNhap,
	[LyDoNhap] = @LyDoNhap
WHERE
	[SoPhieuN] = @SoPhieuN
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHOList]    Script Date: 12/08/2019 14:36:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHOList]
	
AS

SELECT
	[SoPhieuN] ,
	[NgayNhap] ,
	[NguoiNhap] ,
	[LyDoNhap] 
FROM [NHAPKHO]
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHOGet]    Script Date: 12/08/2019 14:36:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[NHAPKHOGet]
	@SoPhieuN NVarChar(10)
	
AS

SELECT
	[SoPhieuN] ,
	[NgayNhap] ,
	[NguoiNhap] ,
	[LyDoNhap] 
FROM [NHAPKHO]
WHERE
	([SoPhieuN] = @SoPhieuN OR @SoPhieuN IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHODelete]    Script Date: 12/08/2019 14:36:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHODelete]
	@SoPhieuN NVarChar(10)
AS

DELETE FROM [NHAPKHO]
WHERE
	[SoPhieuN] = @SoPhieuN
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHOAdd]    Script Date: 12/08/2019 14:36:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHOAdd]
	@SoPhieuN NVarChar(10),
	@NgayNhap DateTime,
	@NguoiNhap NVarChar(50),
	@LyDoNhap NVarChar(200)
AS

-- THIS STORED PROCEDURE NEEDS TO BE MANUALLY COMPLETED
-- MULITPLE PRIMARY KEY MEMBERS OR NON-GUID/INT PRIMARY KEY

INSERT INTO [NHAPKHO] (
	[SoPhieuN],
	[NgayNhap],
	[NguoiNhap],
	[LyDoNhap]
) VALUES (
	@SoPhieuN,
	@NgayNhap,
	@NguoiNhap,
	@LyDoNhap
)
GO
/****** Object:  Table [dbo].[XUATKHO]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUATKHO](
	[SoPhieuX] [nvarchar](10) NOT NULL,
	[NgayXuat] [datetime] NULL,
	[MaKH] [nvarchar](10) NULL,
	[LyDoXuat] [nvarchar](200) NULL,
 CONSTRAINT [PK_XUATKHO] PRIMARY KEY CLUSTERED 
(
	[SoPhieuX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[XUATKHO] ([SoPhieuX], [NgayXuat], [MaKH], [LyDoXuat]) VALUES (N'XK01', CAST(0x0000A97700000000 AS DateTime), N'KH01', N'bán lẻ')
INSERT [dbo].[XUATKHO] ([SoPhieuX], [NgayXuat], [MaKH], [LyDoXuat]) VALUES (N'XK02', CAST(0x0000A97800000000 AS DateTime), N'KH02', N'bán sĩ')
INSERT [dbo].[XUATKHO] ([SoPhieuX], [NgayXuat], [MaKH], [LyDoXuat]) VALUES (N'XK03', CAST(0x0000A99700000000 AS DateTime), N'KH03', N'bán sĩ')
INSERT [dbo].[XUATKHO] ([SoPhieuX], [NgayXuat], [MaKH], [LyDoXuat]) VALUES (N'XK04', CAST(0x0000A99E00000000 AS DateTime), N'KH03', N'bán khách quen')
/****** Object:  StoredProcedure [dbo].[LOAIHANGUpdate]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Update
create procedure [dbo].[LOAIHANGUpdate] (
@MaLoai nvarchar(5), 
@TenLoai nvarchar(50))
as
	update LOAIHANG set 
	TenLoai=@TenLoai
	where MaLoai=@MaLoai
GO
/****** Object:  StoredProcedure [dbo].[LOAIHANGList]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--List
create procedure [dbo].[LOAIHANGList]
as
	select * from LOAIHANG
GO
/****** Object:  StoredProcedure [dbo].[LOAIHANGGet]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get 
create procedure [dbo].[LOAIHANGGet] (@MaLoai nvarchar(5))
as
	select * from LOAIHANG where MaLoai=@MaLoai
GO
/****** Object:  StoredProcedure [dbo].[LOAIHANGDel]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Delete
create procedure [dbo].[LOAIHANGDel] (@MaLoai nvarchar(5))
as 
	delete from LOAIHANG where MaLoai=@MaLoai
GO
/****** Object:  StoredProcedure [dbo].[LOAIHANGAdd]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Add
create procedure [dbo].[LOAIHANGAdd] (
@MaLoai nvarchar(5), 
@TenLoai nvarchar(50))

as
	insert into LOAIHANG(MaLoai,TenLoai)
	values (@MaLoai,@TenLoai)
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANGUpdate]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANGUpdate]
	@MaKH NVarChar(10), 
	@TenKH NVarChar(50), 
	@DiaChi NVarChar(100), 
	@DienThoai NVarChar(12) 
AS

UPDATE [KHACHHANG] SET
	[TenKH] = @TenKH,
	[DiaChi] = @DiaChi,
	[DienThoai] = @DienThoai
WHERE
	[MaKH] = @MaKH
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANGList]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANGList]
	
AS

SELECT
	[MaKH] ,
	[TenKH] ,
	[DiaChi] ,
	[DienThoai] 
FROM [KHACHHANG]
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANGGet]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[KHACHHANGGet]
	@MaKH NVarChar(10)
	
AS

SELECT
	[MaKH] ,
	[TenKH] ,
	[DiaChi] ,
	[DienThoai] 
FROM [KHACHHANG]
WHERE
	([MaKH] = @MaKH OR @MaKH IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANGDelete]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANGDelete]
	@MaKH NVarChar(10)
AS

DELETE FROM [KHACHHANG]
WHERE
	[MaKH] = @MaKH
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANGAdd]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANGAdd]
	@MaKH NVarChar(10),
	@TenKH NVarChar(50),
	@DiaChi NVarChar(100),
	@DienThoai NVarChar(12)
AS

-- THIS STORED PROCEDURE NEEDS TO BE MANUALLY COMPLETED
-- MULITPLE PRIMARY KEY MEMBERS OR NON-GUID/INT PRIMARY KEY

INSERT INTO [KHACHHANG] (
	[MaKH],
	[TenKH],
	[DiaChi],
	[DienThoai]
) VALUES (
	@MaKH,
	@TenKH,
	@DiaChi,
	@DienThoai
)
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHang] [nvarchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[NhaCC] [nvarchar](50) NULL,
	[DVT] [nvarchar](10) NULL,
	[MaLoai] [nvarchar](5) NULL,
	[HinhAnh] [nvarchar](100) NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'BI03', N'Bia Sài Gòn xanh', N'SABECO', N'Lon', N'BI', N'HinhAnh/biaSaiGon.jpg')
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'BK01', N'Bánh COSY', N'COSY', N'Bao', N'BK', N'HinhAnh/banhCOSY.jpg')
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH01', N'Bia 333', N'SG', N'lon', N'BI', N'HinhAnh/bia333.jpg')
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH02', N'Bia Heniken', N'Heniken', N'lon', N'BI', N'HinhAnh/biaheiniken.jpg')
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH03', N'Rượu vang đỏ', N'LDFood', N'chai', N'RU', NULL)
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH04', N'Rượu vang trắng', N'LDFood', N'chai', N'RU', NULL)
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH05', N'Rượu Voka', N'Voka Hà Nội', N'chai', N'RU', NULL)
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH06', N'Cocacola', N'Cocacola', N'chai', N'GK', NULL)
INSERT [dbo].[HANGHOA] ([MaHang], [TenHang], [NhaCC], [DVT], [MaLoai], [HinhAnh]) VALUES (N'HH07', N'Trà xanh C2', N'Chưa biết', N'chai', N'GK', NULL)
/****** Object:  StoredProcedure [dbo].[HANGHOAUpdate]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HANGHOAUpdate]
	@MaHang nvarchar(10), 
	@TenHang nvarchar(50), 
	@NhaCC nvarchar(50), 
	@DVT nvarchar(10), 
	@MaLoai nvarchar(5) 
AS

UPDATE HANGHOA SET
	[TenHang] = @TenHang,
	[NhaCC] = @NhaCC,
	[DVT] = @DVT,
	[MaLoai] = @MaLoai
WHERE
	[MaHang] = @MaHang
GO
/****** Object:  Table [dbo].[XUATKHO_CT]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUATKHO_CT](
	[SoPhieuX] [nvarchar](10) NOT NULL,
	[STT] [int] NOT NULL,
	[MaHang] [nvarchar](10) NULL,
	[SLXuat] [float] NULL,
	[DGXuat] [money] NULL,
 CONSTRAINT [PK_XUATKHO_CT] PRIMARY KEY CLUSTERED 
(
	[SoPhieuX] ASC,
	[STT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK01', 1, N'HH01', 2, 10000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK01', 2, N'HH06', 1, 8000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK01', 3, N'HH07', 5, 10000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK02', 1, N'HH01', 10, 9000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK02', 2, N'HH02', 15, 15000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK02', 3, N'HH07', 10, 7000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK03', 1, N'HH03', 2, 2000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK04', 1, N'HH05', 2, 20000.0000)
INSERT [dbo].[XUATKHO_CT] ([SoPhieuX], [STT], [MaHang], [SLXuat], [DGXuat]) VALUES (N'XK04', 2, N'HH03', 3, 100000.0000)
/****** Object:  StoredProcedure [dbo].[HANGHOAList]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HANGHOAList]
AS

SELECT
	[MaHang],
	[TenHang],
	[NhaCC],
	[DVT],
	[MaLoai]
FROM HANGHOA
GO
/****** Object:  StoredProcedure [dbo].[HANGHOAGetByLOAIHANG]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HANGHOAGetByLOAIHANG]
	@MaLoai nvarchar(5)
AS

SELECT
	[MaHang],
	[TenHang],
	[NhaCC],
	[DVT],
	[MaLoai]
FROM HANGHOA
WHERE
	[MaLoai]=@MaLoai
GO
/****** Object:  StoredProcedure [dbo].[HANGHOAGet]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[HANGHOAGet]
	@MaHang nvarchar(10)
	
AS

SELECT
	[MaHang],
	[TenHang],
	[NhaCC],
	[DVT],
	[MaLoai]
FROM HANGHOA
WHERE
	[MaHang] = @MaHang
GO
/****** Object:  StoredProcedure [dbo].[HANGHOADelete]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HANGHOADelete]
	@MaHang nvarchar(10)
AS

DELETE FROM HANGHOA
WHERE
	[MaHang] = @MaHang
GO
/****** Object:  StoredProcedure [dbo].[HANGHOADel]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Delete
create procedure [dbo].[HANGHOADel] (@MaHang nvarchar(10))
as 
	delete from HANGHOA where MaHang=@MaHang
GO
/****** Object:  StoredProcedure [dbo].[HANGHOAAdd]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HANGHOAAdd]
	@MaHang nvarchar(10),
	@TenHang nvarchar(50),
	@NhaCC nvarchar(50),
	@DVT nvarchar(10),
	@MaLoai nvarchar(5)
AS

-- THIS STORED PROCEDURE NEEDS TO BE MANUALLY COMPLETED
-- MULITPLE PRIMARY KEY MEMBERS OR NON-GUID/INT PRIMARY KEY

INSERT INTO HANGHOA (
	[MaHang],
	[TenHang],
	[NhaCC],
	[DVT],
	[MaLoai]
) VALUES (
	@MaHang,
	@TenHang,
	@NhaCC,
	@DVT,
	@MaLoai
)

select SCOPE_IDENTITY()
GO
/****** Object:  Table [dbo].[NHAPKHO_CT]    Script Date: 12/08/2019 14:36:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPKHO_CT](
	[SoPhieuN] [nvarchar](10) NOT NULL,
	[STT] [int] NOT NULL,
	[MaHang] [nvarchar](10) NULL,
	[SLNhap] [float] NULL,
	[DGNhap] [money] NULL,
 CONSTRAINT [PK_NHAPKHO_CT] PRIMARY KEY CLUSTERED 
(
	[SoPhieuN] ASC,
	[STT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK01', 1, N'HH01', 50, 8000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK01', 2, N'HH02', 100, 14000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK01', 3, N'HH05', 20, 32000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK01', 4, N'BI03', 10, 12000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK01', 5, N'HH07', 30, 11000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK02', 1, N'HH02', 40, 14500.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK02', 2, N'HH03', 50, 35000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK02', 3, N'HH04', 200, 30000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK02', 4, N'HH06', 30, 6000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK02', 5, N'HH07', 50, 6000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK03', 1, N'HH05', 2, 50000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK03', 2, N'HH01', 2, 13000.0000)
INSERT [dbo].[NHAPKHO_CT] ([SoPhieuN], [STT], [MaHang], [SLNhap], [DGNhap]) VALUES (N'NK03', 3, N'HH02', 6, 15000.0000)
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTUpdate]    Script Date: 12/08/2019 14:36:42 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTUpdate]
	@SoPhieuN NVarChar(10), 
	@STT Int, 
	@MaHang NVarChar(10), 
	@SLNhap Float, 
	@DGNhap Money 
AS

UPDATE [NHAPKHO_CT] SET
	[MaHang] = @MaHang,
	[SLNhap] = @SLNhap,
	[DGNhap] = @DGNhap
WHERE
	[SoPhieuN] = @SoPhieuN
	AND [STT] = @STT
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTList]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTList]
	
AS

SELECT
	[SoPhieuN] ,
	[STT] ,
	[MaHang] ,
	[SLNhap] ,
	[DGNhap] 
FROM [NHAPKHO_CT]
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTGetByNHAPKHO]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTGetByNHAPKHO]
	@SoPhieuN NVarChar(10)
	
    
AS

SELECT
	[SoPhieuN] ,
	[STT] ,
	[MaHang] ,
	[SLNhap] ,
	[DGNhap],
	SLNhap*DGNhap as TTNhap 
FROM [NHAPKHO_CT]
WHERE  SoPhieuN=@SoPhieuN
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTGetByHANGHOA]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTGetByHANGHOA]
	@MaHang NVarChar(10)
	
    
AS

SELECT
	[SoPhieuN] ,
	[STT] ,
	[MaHang] ,
	[SLNhap] ,
	[DGNhap] 
FROM [NHAPKHO_CT]
WHERE  MaHang=@MaHang
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTGet]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTGet]
	@SoPhieuN NVarChar(10),
	@STT Int
	
AS

SELECT
	[SoPhieuN] ,
	[STT] ,
	[MaHang] ,
	[SLNhap] ,
	[DGNhap] 
FROM [NHAPKHO_CT]
WHERE
	([SoPhieuN] = @SoPhieuN OR @SoPhieuN IS NULL)
	AND ([STT] = @STT OR @STT IS NULL)
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTDelete]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTDelete]
	@SoPhieuN NVarChar(10),
	@STT Int
AS

DELETE FROM [NHAPKHO_CT]
WHERE
	[SoPhieuN] = @SoPhieuN
	AND [STT] = @STT
GO
/****** Object:  StoredProcedure [dbo].[NHAPKHO_CTAdd]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NHAPKHO_CTAdd]
	@SoPhieuN NVarChar(10),
	@STT Int,
	@MaHang NVarChar(10),
	@SLNhap Float,
	@DGNhap Money
AS

-- THIS STORED PROCEDURE NEEDS TO BE MANUALLY COMPLETED
-- MULITPLE PRIMARY KEY MEMBERS OR NON-GUID/INT PRIMARY KEY

INSERT INTO [NHAPKHO_CT] (
	[SoPhieuN],
	[STT],
	[MaHang],
	[SLNhap],
	[DGNhap]
) VALUES (
	@SoPhieuN,
	@STT,
	@MaHang,
	@SLNhap,
	@DGNhap
)
GO
/****** Object:  StoredProcedure [dbo].[HANGHOAList2]    Script Date: 12/08/2019 14:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[HANGHOAList2]
AS

SELECT Distinct
	HANGHOA.[MaHang],
	[TenHang],
	[NhaCC],
	[DVT],
	DGNhap+200 as DGBan
FROM HANGHOA Inner Join NHAPKHO_CT 
On HANGHOA.MaHang=NHAPKHO_CT.MaHang
GO
/****** Object:  ForeignKey [FK_HANGHOA_LOAIHANG]    Script Date: 12/08/2019 14:36:43 ******/
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_LOAIHANG] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAIHANG] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_LOAIHANG]
GO
/****** Object:  ForeignKey [FK_NHAPKHO_CT_HANGHOA]    Script Date: 12/08/2019 14:36:43 ******/
ALTER TABLE [dbo].[NHAPKHO_CT]  WITH CHECK ADD  CONSTRAINT [FK_NHAPKHO_CT_HANGHOA] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HANGHOA] ([MaHang])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NHAPKHO_CT] CHECK CONSTRAINT [FK_NHAPKHO_CT_HANGHOA]
GO
/****** Object:  ForeignKey [FK_NHAPKHO_CT_NHAPKHO]    Script Date: 12/08/2019 14:36:43 ******/
ALTER TABLE [dbo].[NHAPKHO_CT]  WITH CHECK ADD  CONSTRAINT [FK_NHAPKHO_CT_NHAPKHO] FOREIGN KEY([SoPhieuN])
REFERENCES [dbo].[NHAPKHO] ([SoPhieuN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NHAPKHO_CT] CHECK CONSTRAINT [FK_NHAPKHO_CT_NHAPKHO]
GO
/****** Object:  ForeignKey [FK_XUATKHO_KHACHHANG]    Script Date: 12/08/2019 14:36:43 ******/
ALTER TABLE [dbo].[XUATKHO]  WITH CHECK ADD  CONSTRAINT [FK_XUATKHO_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[XUATKHO] CHECK CONSTRAINT [FK_XUATKHO_KHACHHANG]
GO
/****** Object:  ForeignKey [FK_XUATKHO_CT_HANGHOA]    Script Date: 12/08/2019 14:36:43 ******/
ALTER TABLE [dbo].[XUATKHO_CT]  WITH CHECK ADD  CONSTRAINT [FK_XUATKHO_CT_HANGHOA] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HANGHOA] ([MaHang])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[XUATKHO_CT] CHECK CONSTRAINT [FK_XUATKHO_CT_HANGHOA]
GO
/****** Object:  ForeignKey [FK_XUATKHO_CT_XUATKHO]    Script Date: 12/08/2019 14:36:43 ******/
ALTER TABLE [dbo].[XUATKHO_CT]  WITH CHECK ADD  CONSTRAINT [FK_XUATKHO_CT_XUATKHO] FOREIGN KEY([SoPhieuX])
REFERENCES [dbo].[XUATKHO] ([SoPhieuX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XUATKHO_CT] CHECK CONSTRAINT [FK_XUATKHO_CT_XUATKHO]
GO
