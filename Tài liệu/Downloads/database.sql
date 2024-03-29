create database [taphoa]
go

USE [taphoa]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 01/07/2014 7:26:18 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[iduser] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](500) NULL,
	[password] [nvarchar](500) NULL,
	[phone] [int] NULL,
	[ngaysinh] [date] NULL,
	[email] [nvarchar](500) NULL,
	[diachi] [nvarchar](500) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cthoadon]    Script Date: 01/07/2014 7:26:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cthoadon](
	[idct] [int] IDENTITY(1,1) NOT NULL,
	[idsp] [int] NULL,
	[soluong] [int] NULL,
	[thanhtien] [int] NULL,
	[gia] [int] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[idct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[danhmuc]    Script Date: 01/07/2014 7:26:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuc](
	[iddm] [int] IDENTITY(1,1) NOT NULL,
	[tendm] [nvarchar](500) NULL,
 CONSTRAINT [PK_danhmuc] PRIMARY KEY CLUSTERED 
(
	[iddm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 01/07/2014 7:26:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[idhd] [int] IDENTITY(1,1) NOT NULL,
	[idct] [int] NULL,
	[ngay] [date] NULL,
	[tongtien] [int] NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[idhd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 01/07/2014 7:26:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[idsp] [int] IDENTITY(1,1) NOT NULL,
	[tensp] [nvarchar](500) NULL,
	[hinhanh] [nvarchar](500) NULL,
	[gia] [int] NULL,
	[soluong] [int] NULL,
	[iddm] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[idsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([iduser], [username], [password], [phone], [ngaysinh], [email], [diachi]) VALUES (1016, N'vvvv', N'vvvv', 11111111, NULL, N'vvvvvvvv', N'vvvvvvvv')
INSERT [dbo].[admin] ([iduser], [username], [password], [phone], [ngaysinh], [email], [diachi]) VALUES (2017, N'asdf', N'asdf', 123456, CAST(0x5A350B00 AS Date), N'asdf@gmail.com', N'asdf')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[cthoadon] ON 

INSERT [dbo].[cthoadon] ([idct], [idsp], [soluong], [thanhtien], [gia]) VALUES (1, 1, 3, 34343, 23)
INSERT [dbo].[cthoadon] ([idct], [idsp], [soluong], [thanhtien], [gia]) VALUES (2, 1, 32, 2324324, 213)
INSERT [dbo].[cthoadon] ([idct], [idsp], [soluong], [thanhtien], [gia]) VALUES (13, 1, 34, 5000000, 666666)
INSERT [dbo].[cthoadon] ([idct], [idsp], [soluong], [thanhtien], [gia]) VALUES (1003, 1, 23, 234234, 234234)
INSERT [dbo].[cthoadon] ([idct], [idsp], [soluong], [thanhtien], [gia]) VALUES (2004, 1, 32, 900000, 5000)
INSERT [dbo].[cthoadon] ([idct], [idsp], [soluong], [thanhtien], [gia]) VALUES (2005, 1, 555, 2335, 5345)
SET IDENTITY_INSERT [dbo].[cthoadon] OFF
SET IDENTITY_INSERT [dbo].[danhmuc] ON 

INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (1, N'xa')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (2, N'aaaaaaaaaaa')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (6, N'ss aaa')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (7, N'do an')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (8, N'thuc uong')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (1011, N'ccccccc')
SET IDENTITY_INSERT [dbo].[danhmuc] OFF
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([idhd], [idct], [ngay], [tongtien]) VALUES (2, 2, CAST(0xA3330B00 AS Date), 56465)
INSERT [dbo].[hoadon] ([idhd], [idct], [ngay], [tongtien]) VALUES (3, 1, CAST(0x62390B00 AS Date), 4234)
INSERT [dbo].[hoadon] ([idhd], [idct], [ngay], [tongtien]) VALUES (13, 1, CAST(0x80360B00 AS Date), 3444444)
SET IDENTITY_INSERT [dbo].[hoadon] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([idsp], [tensp], [hinhanh], [gia], [soluong], [iddm]) VALUES (1, N'dau an', N'1.jpg', 20000, 20, 1)
INSERT [dbo].[sanpham] ([idsp], [tensp], [hinhanh], [gia], [soluong], [iddm]) VALUES (9, N'dau an', N'1.jpg', 20000, 20, 1)
INSERT [dbo].[sanpham] ([idsp], [tensp], [hinhanh], [gia], [soluong], [iddm]) VALUES (1003, N'kkkkk', N'4.jpg', 4444, 22, 1)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
ALTER TABLE [dbo].[cthoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_sanpham1] FOREIGN KEY([idsp])
REFERENCES [dbo].[sanpham] ([idsp])
GO
ALTER TABLE [dbo].[cthoadon] CHECK CONSTRAINT [FK_hoadon_sanpham1]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([idct])
REFERENCES [dbo].[cthoadon] ([idct])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_danhmuc1] FOREIGN KEY([iddm])
REFERENCES [dbo].[danhmuc] ([iddm])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_danhmuc1]
GO
