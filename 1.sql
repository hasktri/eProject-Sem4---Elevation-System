create database [ElevationSystem]
go

USE [ElevationSystem]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID_Admin] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[PassWord] [nvarchar](100) NULL,
	[FullName] [nvarchar](200) NULL,
	[Phone] [nvarchar](30) NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](200) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID_Admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Complaint]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaint](
	[ID_Complaint] [int] IDENTITY(1,1) NOT NULL,
	[ID_User] [int] NULL,
	[Contents] [nvarchar](3000) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Complaint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactInfor]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactInfor](
	[ID_ContactInfor] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[MobilePhone] [nvarchar](30) NULL,
	[TelePhone] [nvarchar](30) NULL,
	[FAX] [nvarchar](30) NULL,
	[Email] [nvarchar](150) NULL,
	[Skype] [nvarchar](150) NULL,
	[Yahoo] [nvarchar](150) NULL,
 CONSTRAINT [PK_ContactInfo] PRIMARY KEY CLUSTERED 
(
	[ID_ContactInfor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[ID_ContactUs] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Telephone] [nvarchar](30) NULL,
	[CompanyName] [nvarchar](150) NULL,
	[Contents] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[ID_ContactUs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID_Feebback] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Description] [nvarchar](200) NULL,
	[Satisfying] [nvarchar](30) NULL,
	[Contents] [nvarchar](2000) NULL,
	[Problem] [nvarchar](300) NULL,
	[Improvement] [nvarchar](300) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID_Feebback] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Images] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
	[Contents] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ID_Project] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Contents] [nvarchar](3000) NULL,
	[Images] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Project_1] PRIMARY KEY CLUSTERED 
(
	[ID_Project] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quotes]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotes](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NULL,
	[ProductName] [nvarchar](200) NULL,
	[Weight] [nvarchar](15) NULL,
	[FloorNumber] [nvarchar](25) NULL,
	[Speed] [nvarchar](15) NULL,
	[HoleSize] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NULL,
	[TelePhone] [nvarchar](30) NULL,
	[DateOrder] [date] NULL,
	[Status] [bit] NULL,
	[Cost] [int] NULL,
	[Payment] [nvarchar](100) NULL,
 CONSTRAINT [PK_Order_1] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReplyComplaint]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyComplaint](
	[ID_ReplyComplaint] [int] IDENTITY(1,1) NOT NULL,
	[ID_Complaint] [int] NULL,
	[Contents] [nvarchar](3000) NULL,
 CONSTRAINT [PK_ReplyComplaint] PRIMARY KEY CLUSTERED 
(
	[ID_ReplyComplaint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 10/14/2014 1:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID_User] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[PassWord] [nvarchar](500) NULL,
	[FullName] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
	[Company] [nvarchar](200) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID_Admin], [UserName], [PassWord], [FullName], [Phone], [Address], [Email]) VALUES (1, N'asasa', N'1234567', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[ContactInfor] ON 

INSERT [dbo].[ContactInfor] ([ID_ContactInfor], [Address], [MobilePhone], [TelePhone], [FAX], [Email], [Skype], [Yahoo]) VALUES (1, N'Binh Thanh', N'01688397099', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ContactInfor] OFF
SET IDENTITY_INSERT [dbo].[ContactUs] ON 

INSERT [dbo].[ContactUs] ([ID_ContactUs], [Name], [Telephone], [CompanyName], [Contents]) VALUES (1, N'sasa      ', N'sas', N'sas', N'sasas')
INSERT [dbo].[ContactUs] ([ID_ContactUs], [Name], [Telephone], [CompanyName], [Contents]) VALUES (2, N'viphuong', N'01688397099', N'Aptech', N'hehehejshdnalkd.,ma dqklehqrejqwgrbac rquiwjekmlqeg iuqJKWXB')
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID_Feebback], [Name], [Email], [Description], [Satisfying], [Contents], [Problem], [Improvement]) VALUES (1, N'ddfdf', N'fdfdf', N'fdfdf', NULL, NULL, NULL, NULL)
INSERT [dbo].[Feedback] ([ID_Feebback], [Name], [Email], [Description], [Satisfying], [Contents], [Problem], [Improvement]) VALUES (2, N'rer', N'erer', N'ere', N'rer', N'rer', N'erer', N'erer')
INSERT [dbo].[Feedback] ([ID_Feebback], [Name], [Email], [Description], [Satisfying], [Contents], [Problem], [Improvement]) VALUES (3, N'', N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (1, N'Banh kem', N'1.jpg', N'ngon lam', NULL, NULL)
INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (2, N'Banh cupcakes', N'2.jpg', N'Quá ngon', NULL, NULL)
INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (3, N'Bánh mì ngọt', N'3.jpg', N'ngon cực', NULL, NULL)
INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (4, N'Bánh mì mặn', N'4.jpg', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (5, N'Kẹo chôcla', N'5.jpg', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (6, N'Kẹo sữa', N'6.jpg', NULL, NULL, NULL)
INSERT [dbo].[Product] ([ID_Product], [Name], [Images], [Description], [Status], [Contents]) VALUES (7, N'Kẹo hương dâu', N'7.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Quotes] ON 

INSERT [dbo].[Quotes] ([ID_Order], [ID_Product], [ProductName], [Weight], [FloorNumber], [Speed], [HoleSize], [FullName], [Address], [Email], [TelePhone], [DateOrder], [Status], [Cost], [Payment]) VALUES (1, NULL, N'Bánh kem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quotes] ([ID_Order], [ID_Product], [ProductName], [Weight], [FloorNumber], [Speed], [HoleSize], [FullName], [Address], [Email], [TelePhone], [DateOrder], [Status], [Cost], [Payment]) VALUES (2, NULL, N'Bánh mì ngọt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quotes] ([ID_Order], [ID_Product], [ProductName], [Weight], [FloorNumber], [Speed], [HoleSize], [FullName], [Address], [Email], [TelePhone], [DateOrder], [Status], [Cost], [Payment]) VALUES (3, NULL, N'Bánh mì mặn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Quotes] ([ID_Order], [ID_Product], [ProductName], [Weight], [FloorNumber], [Speed], [HoleSize], [FullName], [Address], [Email], [TelePhone], [DateOrder], [Status], [Cost], [Payment]) VALUES (4, NULL, N'Bánh mì lạc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Quotes] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID_User], [UserName], [PassWord], [FullName], [Email], [Address], [Company]) VALUES (1, N'minh', N'efee                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID_User], [UserName], [PassWord], [FullName], [Email], [Address], [Company]) VALUES (2, N'minh414', N'13141                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID_User], [UserName], [PassWord], [FullName], [Email], [Address], [Company]) VALUES (3, N'minh414fef', N'11313                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Complaint]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[Complaint] CHECK CONSTRAINT [FK_Complaint_User]
GO
ALTER TABLE [dbo].[Quotes]  WITH CHECK ADD  CONSTRAINT [FK_Quotes_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[Quotes] CHECK CONSTRAINT [FK_Quotes_Product]
GO
ALTER TABLE [dbo].[ReplyComplaint]  WITH CHECK ADD  CONSTRAINT [FK_ReplyComplaint_Complaint] FOREIGN KEY([ID_Complaint])
REFERENCES [dbo].[Complaint] ([ID_Complaint])
GO
ALTER TABLE [dbo].[ReplyComplaint] CHECK CONSTRAINT [FK_ReplyComplaint_Complaint]
GO
