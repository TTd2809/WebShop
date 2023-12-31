USE master
GO
CREATE DATABASE [AATROXx]
GO
USE [AATROXx]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Token] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Quality] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'KHUE', N'KHUE', N'Nguyễn Văn Tèo', N'duyplus0909@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'LINH', N'LINH', N'Phạm Thị Nở', N'duyplus1999@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'LONG', N'LONG', N'Nguyễn Hoàng Duy', N'duyplusdz@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'DAT', N'DAT', N'Maria Anders', N'alfki@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'AN', N'AN', N'Ana Trujillo', N'anatr@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'DANG', N'DANG', N'Antonio Moreno', N'anton@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'PHUC', N'PHUC', N'Thomas Hardy', N'arout@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'TUYEN', N'TUYEN', N'Christina Berglund', N'bergs@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'NA', N'NA', N'Hanna Moos', N'blaus@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'BAO', N'BAO', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'DUONG', N'DUONG', N'Martín Sommer', N'bolid@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'KIET', N'KIET', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'ANH', N'ANH', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'DONG', N'DONG', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'THINH', N'THINH', N'Patricio Simpson', N'cactu@gmail.com', N'user.png', N'token')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Token]) VALUES (N'HUNG', N'HUNG', N'Francisco Chang', N'centc@gmail.com', N'user.png', N'token')
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (1, N'LONG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (233, N'DAT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (343, N'AN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (454, N'DANG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (542, N'PHUC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (154, N'TUYEN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (231, N'NA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (238, N'BAO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (111, N'DUONG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (112, N'KIET', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (113, N'ANH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (115, N'DONG', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (116, N'THINH', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (117, N'KHUE', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
select * from [Products]
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'1', N'Tiểu Thuyết, Thơ', N'Tiểu Thuyết, Thơ',N'Tiểu Thuyết, Thơ')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'2', N'Sách Kinh Tế, Khởi Nghiệp', N'Sách Kinh Tế, Khởi Nghiệp', N'Sách Kinh Tế, Khởi Nghiệp')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'3', N'Sách Kỹ năng sống', N'Sách Kỹ năng sống', N'Sách Kỹ năng sống')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'4', N'Sách Ngoại Ngữ', N'Sách Ngoại Ngữ', N'Sách Ngoại Ngữ')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'5', N'Sách nuôi dạy con', N'Sách nuôi dạy con', N'Sách nuôi dạy con')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'6', N'Nữ trang', N'Nữ trang', N'Nữ trang sang trọng')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'7', N'Sách Thiếu Nhi', N'Sách Thiếu Nhi', N'Sách Thiếu Nhi')
INSERT [dbo].[Categories] ([Id], [Name], [Note], [Description]) VALUES (N'8', N'Sách cho teen', N'Sách cho teen', N'Sách cho teen')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
/*
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100005, 10249, 1, 42.4, 40)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100006, 10250, 2, 7.7, 10)
*/
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 
/*
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10249, N'TOMSP', CAST(0x000089B100000000 AS DateTime), N'Luisenstr. 48')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (10250, N'HANAR', CAST(0x000089B400000000 AS DateTime), N'Rua do Paço, 67')
*/
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1001, N'Thần Tượng Của Tôi Dính Phốt Rồi', N'1.jpg', 98,1, CAST(0xD6070B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1002, N'Nhà Văn Sơn Nam - Những Góc Đời Riêng Lạ', N'2.jpg', 63,2, CAST(0xB80B0B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1003, N'Tình Yêu Biến Mất Rồi', N'3.jpg', 25,3, CAST(0x26FE0A00 AS Date), 1, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1004, N'Báo Động Tại Bắc Cực', N'4.jpg', 40,5, CAST(0x0E020B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1005, N' Giải Cứu Động Vật Rừng Amazon', N'5.jpg', 40,5, CAST(0xF7050B00 AS Date), 1, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1006, N'Mong Kẻ Phiêu Bạt Có Rượu Uống ', N'6.jpg', 94,5, CAST(0xE1090B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1007, N'A Box Of Siin', N'7.jpg', 312,5, CAST(0x0D0C0B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1008, N'Bộ Đêm Nay Có Rượu (2 cuốn)', N'8.jpg', 118,5, CAST(0x4CFC0A00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1009, N'Xuyên Thành Phản Diện ', N'9.jpg', 109,5, CAST(0xF80F0B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1010, N'Xuyên Thành Phản Diện Biết Sống Sao Đây?', N'10.jpg', 118,5, CAST(0xC91B0B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1011, N'Xuyên Thành Phản Diện Biết Sống Sao Đây?', N'11.jpg.jpg', 109,5, CAST(0xEC0F0B00 AS Date), 0, N'1')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1012, N'Xuyên Thành Phản Diện Biết Sống Sao Đây?', N'12.jpg', 118,5, CAST(0xD7130B00 AS Date), 1, N'1')



INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1013, N'How Brands Grow -  Tăng Trưởng Thương Hiệu - Ứng Dụng', N'13.jpg', 211,5, CAST(0xD6070B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1014, N'Những Câu Chuyện Tình Bạn - Cá Heo TiTi Và Cua', N'14.jpg', 21,5, CAST(0xB80B0B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1015, N'Những Câu Chuyện Tình Bạn - Cún Con Và Mèo Con', N'15.jpg', 21,5, CAST(0x26FE0A00 AS Date), 1, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1016, N'Những Câu Chuyện Tình Bạn - Gà Chíp Và Cừu Con', N'16.jpg', 21,4, CAST(0x0E020B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1017, N'Những Câu Chuyện Tình Bạn - Khủng Long Gầm Gừ ', N'17.jpg', 21,4, CAST(0xF7050B00 AS Date), 1, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1018, N'Những Câu Chuyện Tình Bạn - Khủng Long Lưng Gai', N'18.jpg', 24,4, CAST(0xE1090B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1019, N'Những Câu Chuyện Tình Bạn - Ngựa Con Và Bê Con', N'19.jpg', 32,4, CAST(0x0D0C0B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1020, N'Những Câu Chuyện Tình Bạn - Rùa Con Và Cá Hề CoCo', N'20.jpg', 22,4, CAST(0x4CFC0A00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1021, N'Nói Thế Nào Để Được Chào Đón Làm Thế Nào Để Được Ghi Nhận', N'21.jpg', 76,4, CAST(0xF80F0B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1022, N'101 Điều Nên Biết Để Trở Thành Youtuber Triệu Views', N'22.jpg', 134,4, CAST(0xC91B0B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1023, N'Xóa Mù Quảng Cáo Sáng Tạo - Video Reels Khám Phá', N'23.jpg.jpg', 211,4, CAST(0xEC0F0B00 AS Date), 0, N'2')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1024, N'Tạo Fan Thương Hiệu - Chốt Triệu Đơn Hàng', N'24.jpg', 165,6, CAST(0xD7130B00 AS Date), 1, N'2')


INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1025, N'Khi Khủng Hoảng Ập Đến - 5 Bước Đối Phó Với Căng Thẳng Mạn Tính', N'25.jpg', 127,4, CAST(0xD6070B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1026, N'Kỷ Luật Tự Thân - 5 Hệ Thống Phá Bỏ Sự Vô Tổ Chức, Làm Chủ Cuộc Sống', N'26.jpg', 159,5, CAST(0xB80B0B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1027, N'7 Chiến Lược Để Sống Sung Túc Và Hạnh Phúc', N'27.jpg', 82,6, CAST(0x26FE0A00 AS Date), 1, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1028, N'Hùng Biện Như Một Chuyên Gia', N'28.jpg', 142,5, CAST(0x0E020B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1029, N'Bí Kíp Chống Tụt MOOD', N'29.jpg', 93,6, CAST(0xF7050B00 AS Date), 1, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1030, N'Mở Cửa Tương Lai - Tái bản', N'30.jpg', 170,4, CAST(0xE1090B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1031, N'Tôi Đi Bảo Hộ Nhãn Hiệu', N'31.jpg', 254,4, CAST(0x0D0C0B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1032, N'Teamwork  Kỹ Năng Làm Việc Nhóm Chuyên Nghiệp', N'32.jpg', 118,5, CAST(0x4CFC0A00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1033, N'Mạnh Mẽ Từ Suy Nghĩ - 50 Bí Kíp Trưởng Thành', N'33.jpg', 55,6, CAST(0xF80F0B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1034, N'12 Cách Biến Người Bạn Ghét Thành Đồng Minh', N'34.jpg', 84,7, CAST(0xC91B0B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1035, N'Gợi Cảm Lên Và Đừng Bị Sát Hại', N'35.jpg.jpg', 109,3, CAST(0xEC0F0B00 AS Date), 0, N'3')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Quality], [CreateDate], [Available], [CategoryId]) VALUES (1036, N'Từ Bỏ Thói Quen Xấu', N'36.jpg', 40,5, CAST(0xD7130B00 AS Date), 1, N'3')


SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')

ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_gender]  DEFAULT ((1)) FOR [gender]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
USE master
GO
ALTER DATABASE [AATROX] SET  READ_WRITE 
GO