USE [GroupCompanies]
GO
/****** Object:  Table [dbo].[Balance]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Balance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_company] [int] NOT NULL,
	[Year] [smallint] NOT NULL,
	[c1110] [numeric](18, 2) NULL,
	[c1120] [numeric](18, 2) NULL,
	[c1150] [numeric](18, 2) NULL,
	[c1160] [numeric](18, 2) NULL,
	[c1170] [numeric](18, 2) NULL,
	[c1180] [numeric](18, 2) NULL,
	[c1190] [numeric](18, 2) NULL,
	[c1210] [numeric](18, 2) NULL,
	[c1220] [numeric](18, 2) NULL,
	[c1230] [numeric](18, 2) NULL,
	[c1240] [numeric](18, 2) NULL,
	[c1250] [numeric](18, 2) NULL,
	[c1260] [numeric](18, 2) NULL,
	[c1310] [numeric](18, 2) NULL,
	[c1320] [numeric](18, 2) NULL,
	[c1340] [numeric](18, 2) NULL,
	[c1350] [numeric](18, 2) NULL,
	[c1360] [numeric](18, 2) NULL,
	[c1370] [numeric](18, 2) NULL,
	[c1410] [numeric](18, 2) NULL,
	[c1420] [numeric](18, 2) NULL,
	[c1450] [numeric](18, 2) NULL,
	[c1510] [numeric](18, 2) NULL,
	[c1520] [numeric](18, 2) NULL,
	[c1530] [numeric](18, 2) NULL,
	[c1540] [numeric](18, 2) NULL,
	[c1550] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[region_id] [int] NOT NULL,
	[title] [nvarchar](250) NOT NULL,
	[INN] [bigint] NULL,
	[incorp_id] [int] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [nvarchar](50) NOT NULL,
	[begin_date] [date] NULL,
	[end_date] [date] NULL,
	[client_id] [int] NOT NULL,
	[comission] [float] NULL,
	[transfer_date] [date] NULL,
	[product_id] [int] NOT NULL,
	[quantity] [tinyint] NOT NULL,
	[manager] [nvarchar](50) NULL,
	[total] [int] NULL,
	[lastpay_date] [date] NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceResults]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceResults](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_company] [int] NOT NULL,
	[Year] [smallint] NOT NULL,
	[c2110] [numeric](18, 2) NULL,
	[c2120] [numeric](18, 2) NULL,
	[c2210] [numeric](18, 2) NULL,
	[c2220] [numeric](18, 2) NULL,
	[c2310] [numeric](18, 2) NULL,
	[c2320] [numeric](18, 2) NULL,
	[c2330] [numeric](18, 2) NULL,
	[c2340] [numeric](18, 2) NULL,
	[c2350] [numeric](18, 2) NULL,
	[c2410] [numeric](18, 2) NULL,
	[c2421] [numeric](18, 2) NULL,
	[c2430] [numeric](18, 2) NULL,
	[c2450] [numeric](18, 2) NULL,
	[c2460] [numeric](18, 2) NULL,
 CONSTRAINT [PK_FinanceResults] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_of_companies]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_of_companies](
	[id] [int] NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Group_of_companies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incorporation]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incorporation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kind] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Incorporation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MutualTurnovers]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MutualTurnovers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_company] [int] NOT NULL,
	[Year] [smallint] NOT NULL,
	[c1170] [numeric](18, 2) NULL,
	[c1230] [numeric](18, 2) NULL,
	[c1240] [numeric](18, 2) NULL,
	[c1310] [numeric](18, 2) NULL,
	[c1350] [numeric](18, 2) NULL,
	[c1370] [numeric](18, 2) NULL,
	[c1410] [numeric](18, 2) NULL,
	[c1450] [numeric](18, 2) NULL,
	[c1510] [numeric](18, 2) NULL,
	[c1520] [numeric](18, 2) NULL,
	[c1550] [numeric](18, 2) NULL,
	[c2110] [numeric](18, 2) NULL,
	[c2120] [numeric](18, 2) NULL,
	[c2210] [numeric](18, 2) NULL,
	[c2220] [numeric](18, 2) NULL,
	[c2310] [numeric](18, 2) NULL,
	[c2320] [numeric](18, 2) NULL,
	[c2330] [numeric](18, 2) NULL,
	[c2340] [numeric](18, 2) NULL,
	[c2350] [numeric](18, 2) NULL,
	[c2410] [numeric](18, 2) NULL,
	[c2430] [numeric](18, 2) NULL,
	[c2450] [numeric](18, 2) NULL,
	[c2460] [numeric](18, 2) NULL,
 CONSTRAINT [PK_MutualTurnovers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentCovenants]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentCovenants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[position] [smallint] NOT NULL,
	[title] [nvarchar](250) NOT NULL,
	[2018] [numeric](18, 2) NOT NULL,
	[2019] [numeric](18, 2) NOT NULL,
	[2020] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_ParentCovenants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[payment_date] [date] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[prefix] [nvarchar](250) NULL,
	[manufacturer] [nvarchar](50) NULL,
	[model] [nvarchar](250) NOT NULL,
	[VIN] [nvarchar](20) NULL,
	[description] [nvarchar](250) NULL,
	[year] [smallint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[category] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[region] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportsTitle]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsTitle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [smallint] NOT NULL,
	[title] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ReportsTitle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[qty] [int] NOT NULL,
	[total] [numeric](18, 2) NOT NULL,
	[receipt_date] [date] NOT NULL,
	[expense_date] [date] NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubsidiaryCovenants]    Script Date: 06.07.2021 18:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubsidiaryCovenants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[position] [smallint] NOT NULL,
	[title] [nvarchar](250) NOT NULL,
	[2018] [numeric](18, 2) NOT NULL,
	[2019] [numeric](18, 2) NOT NULL,
	[2020] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_SubsidiaryCovenants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Balance] ON 

INSERT [dbo].[Balance] ([id], [id_company], [Year], [c1110], [c1120], [c1150], [c1160], [c1170], [c1180], [c1190], [c1210], [c1220], [c1230], [c1240], [c1250], [c1260], [c1310], [c1320], [c1340], [c1350], [c1360], [c1370], [c1410], [c1420], [c1450], [c1510], [c1520], [c1530], [c1540], [c1550]) VALUES (1, 1, 2018, CAST(90.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(21839.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(222738.00 AS Numeric(18, 2)), CAST(596.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(338964.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(505956.00 AS Numeric(18, 2)), CAST(52342.00 AS Numeric(18, 2)), CAST(22054.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(537384.00 AS Numeric(18, 2)), CAST(250000.00 AS Numeric(18, 2)), CAST(62.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(243265.00 AS Numeric(18, 2)), CAST(130045.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(2821.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Balance] ([id], [id_company], [Year], [c1110], [c1120], [c1150], [c1160], [c1170], [c1180], [c1190], [c1210], [c1220], [c1230], [c1240], [c1250], [c1260], [c1310], [c1320], [c1340], [c1350], [c1360], [c1370], [c1410], [c1420], [c1450], [c1510], [c1520], [c1530], [c1540], [c1550]) VALUES (2, 1, 2019, CAST(67.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(27621.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(278897.00 AS Numeric(18, 2)), CAST(632.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(409503.00 AS Numeric(18, 2)), CAST(12.00 AS Numeric(18, 2)), CAST(575750.00 AS Numeric(18, 2)), CAST(27141.00 AS Numeric(18, 2)), CAST(2189.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(544300.00 AS Numeric(18, 2)), CAST(250000.00 AS Numeric(18, 2)), CAST(81.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(5687.00 AS Numeric(18, 2)), CAST(517724.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(3018.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Balance] ([id], [id_company], [Year], [c1110], [c1120], [c1150], [c1160], [c1170], [c1180], [c1190], [c1210], [c1220], [c1230], [c1240], [c1250], [c1260], [c1310], [c1320], [c1340], [c1350], [c1360], [c1370], [c1410], [c1420], [c1450], [c1510], [c1520], [c1530], [c1540], [c1550]) VALUES (3, 1, 2020, CAST(44.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(33686.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(299215.00 AS Numeric(18, 2)), CAST(591.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(503388.00 AS Numeric(18, 2)), CAST(26.00 AS Numeric(18, 2)), CAST(638193.00 AS Numeric(18, 2)), CAST(8228.00 AS Numeric(18, 2)), CAST(363.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(628329.00 AS Numeric(18, 2)), CAST(250000.00 AS Numeric(18, 2)), CAST(68.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(40170.00 AS Numeric(18, 2)), CAST(561353.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(2812.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Balance] ([id], [id_company], [Year], [c1110], [c1120], [c1150], [c1160], [c1170], [c1180], [c1190], [c1210], [c1220], [c1230], [c1240], [c1250], [c1260], [c1310], [c1320], [c1340], [c1350], [c1360], [c1370], [c1410], [c1420], [c1450], [c1510], [c1520], [c1530], [c1540], [c1550]) VALUES (4, 2, 2018, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(326854.00 AS Numeric(18, 2)), CAST(284306.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(23663.00 AS Numeric(18, 2)), CAST(765.00 AS Numeric(18, 2)), CAST(632.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(268228.00 AS Numeric(18, 2)), CAST(25393.00 AS Numeric(18, 2)), CAST(3747.00 AS Numeric(18, 2)), CAST(1429524.00 AS Numeric(18, 2)), CAST(174050.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(335022.00 AS Numeric(18, 2)), CAST(1643811.00 AS Numeric(18, 2)), CAST(10835.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(10456.00 AS Numeric(18, 2)), CAST(161884.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(17001.00 AS Numeric(18, 2)), CAST(10053.00 AS Numeric(18, 2)))
INSERT [dbo].[Balance] ([id], [id_company], [Year], [c1110], [c1120], [c1150], [c1160], [c1170], [c1180], [c1190], [c1210], [c1220], [c1230], [c1240], [c1250], [c1260], [c1310], [c1320], [c1340], [c1350], [c1360], [c1370], [c1410], [c1420], [c1450], [c1510], [c1520], [c1530], [c1540], [c1550]) VALUES (5, 2, 2019, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(310274.00 AS Numeric(18, 2)), CAST(500101.00 AS Numeric(18, 2)), CAST(3207.00 AS Numeric(18, 2)), CAST(30940.00 AS Numeric(18, 2)), CAST(764.50 AS Numeric(18, 2)), CAST(743.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(259921.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(2707.00 AS Numeric(18, 2)), CAST(1968065.00 AS Numeric(18, 2)), CAST(174050.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(367222.00 AS Numeric(18, 2)), CAST(2217218.00 AS Numeric(18, 2)), CAST(24857.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(25161.00 AS Numeric(18, 2)), CAST(249594.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(18620.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Balance] ([id], [id_company], [Year], [c1110], [c1120], [c1150], [c1160], [c1170], [c1180], [c1190], [c1210], [c1220], [c1230], [c1240], [c1250], [c1260], [c1310], [c1320], [c1340], [c1350], [c1360], [c1370], [c1410], [c1420], [c1450], [c1510], [c1520], [c1530], [c1540], [c1550]) VALUES (6, 2, 2020, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(285333.00 AS Numeric(18, 2)), CAST(348335.00 AS Numeric(18, 2)), CAST(3025.00 AS Numeric(18, 2)), CAST(29249.00 AS Numeric(18, 2)), CAST(955.00 AS Numeric(18, 2)), CAST(8928.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(289080.00 AS Numeric(18, 2)), CAST(9690.00 AS Numeric(18, 2)), CAST(932.00 AS Numeric(18, 2)), CAST(2001678.00 AS Numeric(18, 2)), CAST(174050.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(348234.50 AS Numeric(18, 2)), CAST(2056157.00 AS Numeric(18, 2)), CAST(32364.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(10989.00 AS Numeric(18, 2)), CAST(330383.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(25026.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[Balance] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (0, 0, N'не выбрано', NULL, 0)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (1, 13, N'ПАЛЬМИРА', 7806345155, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (2, 11, N'БАХЧИСАРАЙСКОЕ АТП № 14340', 9104001710, 2)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (3, 14, N'АТП № 3', 5310013471, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (4, 3, N'АРТЭ ЦУБ', 3328474423, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (5, 3, N'СПЕЦТРАНС', 3324124192, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (6, 9, N'Миронов Владимир Владимирович', 370255103333, 3)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (8, 5, N'ЛТК', 5027194715, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (9, 15, N'Суранов Михаил Владимирович', 110209223086, 3)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (10, 16, N'КАМЕЛ-АВТО', 4329011451, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (11, 18, N'АВТОВЕК-ПЕРЕВОЗКИ', 1650314670, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (12, 1, N'АВТОЛАЙН', 2901241326, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (13, 1, N'СЕВЕРНЫЙ ЭКСПРЕСС', 2901191812, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (14, 7, N'Белик Геннадий Владимирович', 312300982170, 3)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (15, 4, N'ВИПЛАЙН', 4704060204, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (16, 5, N'ПАССАЖИРТРАНС', 5027272794, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (17, 3, N'Полтавцев Андрей Николаевич', 330403562553, 3)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (18, 10, N'Профилактическо-регламентная станция', 7621004160, 5)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (19, 5, N'РАТА-ЭКСПРЕСС', 5010021400, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (20, 9, N'ЭКСПРЕСС-ЛИДЕР', 3711028400, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (22, 10, N'Беспалов Андрей Леонидович', 761300193507, 3)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (23, 5, N'ВЕЛЕС ТК', 5028033774, 1)
INSERT [dbo].[Clients] ([id], [region_id], [title], [INN], [incorp_id]) VALUES (24, 9, N'Миронова Наталья Владимировна', 370253471331, 3)
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (3, N'1164/Кл', CAST(N'2020-01-23' AS Date), CAST(N'2021-01-27' AS Date), 13, 0.1, CAST(N'2020-01-24' AS Date), 35, 1, N'Козлов', 3400000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (8, N'1165/Д', CAST(N'2020-02-03' AS Date), CAST(N'2022-02-14' AS Date), 15, 1, CAST(N'2020-02-18' AS Date), 39, 1, N'Давыдова', 3500000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (9, N'1173/Д', CAST(N'2020-02-20' AS Date), CAST(N'2022-03-10' AS Date), 16, 1, CAST(N'2020-03-05' AS Date), 44, 1, N'Давыдова', 1360000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (10, N'1174/КАВ', CAST(N'2020-03-16' AS Date), CAST(N'2023-02-24' AS Date), 17, 2.47, CAST(N'2020-03-19' AS Date), 45, 1, N'Косоурова', 950000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (11, N'1170/Д', CAST(N'2020-03-03' AS Date), CAST(N'2022-03-25' AS Date), 14, 1.5, CAST(N'2020-03-20' AS Date), 46, 1, N'Давыдова', 1900000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (12, N'1178/С', CAST(N'2020-06-08' AS Date), CAST(N'2025-05-10' AS Date), 6, 0.9, CAST(N'2020-06-10' AS Date), 49, 1, N'Савина', 4000000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (13, N'1178/Кл', CAST(N'2020-04-27' AS Date), CAST(N'2024-06-25' AS Date), 2, 3.18, CAST(N'2020-06-22' AS Date), 51, 3, N'Козлов', 11550000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (14, N'1182/См', CAST(N'2020-07-10' AS Date), CAST(N'2021-07-20' AS Date), 12, 1, CAST(N'2020-07-16' AS Date), 51, 8, N'Смирнов', 2240000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (15, N'1183/См', CAST(N'2020-07-10' AS Date), CAST(N'2021-07-20' AS Date), 12, 1, CAST(N'2020-07-16' AS Date), 53, 1, N'Смирнов', 280000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (16, N'1184/ПАЕ', CAST(N'2020-07-14' AS Date), CAST(N'2023-06-20' AS Date), 5, 1, CAST(N'2020-07-15' AS Date), 63, 1, N'Петрова', 3350000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (17, N'1185/ПАЕ', CAST(N'2020-07-14' AS Date), CAST(N'2023-06-20' AS Date), 5, 1, CAST(N'2020-07-15' AS Date), 64, 1, N'Петрова', 3350000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (18, N'1186/ПАЕ', CAST(N'2020-07-14' AS Date), CAST(N'2023-06-20' AS Date), 5, 1, CAST(N'2020-07-15' AS Date), 65, 1, N'Петрова', 3350000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (19, N'1188/КАВ', CAST(N'2020-08-03' AS Date), CAST(N'2023-04-08' AS Date), 11, 0.7, CAST(N'2020-08-10' AS Date), 67, 1, N'Косоурова', 1950000, CAST(N'2021-05-05' AS Date))
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (20, N'1190/С', CAST(N'2020-08-28' AS Date), CAST(N'2023-08-25' AS Date), 18, 1.5, CAST(N'2020-08-28' AS Date), 68, 1, N'Савина', 1400000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (21, N'1192/ДЗ', CAST(N'2020-09-09' AS Date), CAST(N'2024-08-25' AS Date), 9, 1, CAST(N'2020-09-11' AS Date), 69, 1, N'Зимин', 3300000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (22, N'1187/См', CAST(N'2020-07-27' AS Date), CAST(N'2022-07-28' AS Date), 20, 1, CAST(N'2020-07-29' AS Date), 70, 1, N'Смирнов', 1380000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (23, N'1193/С', CAST(N'2020-10-30' AS Date), CAST(N'2023-11-05' AS Date), 1, 1.2, CAST(N'2020-11-03' AS Date), 71, 1, N'Савина', 2844000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (24, N'1194/С', CAST(N'2020-10-20' AS Date), CAST(N'2023-11-05' AS Date), 1, 1.2, CAST(N'2020-11-03' AS Date), 72, 4, N'Савина', 11376000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (25, N'1195/См', CAST(N'2020-11-03' AS Date), CAST(N'2023-10-23' AS Date), 19, 0.5, CAST(N'2020-11-09' AS Date), 76, 1, N'Смирнов', 1850000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (26, N'1196/Д', CAST(N'2020-11-18' AS Date), CAST(N'2021-11-25' AS Date), 13, 0.1, CAST(N'2020-11-09' AS Date), 77, 1, N'Данилова', 3400000, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (32, N'985/Д', CAST(N'2015-09-15' AS Date), CAST(N'2019-10-20' AS Date), 14, 0.8, NULL, 17, 8, N'Давыдова', 18136292, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (33, N'1153/С', CAST(N'2019-02-12' AS Date), CAST(N'2024-01-14' AS Date), 3, 1, CAST(N'2019-02-14' AS Date), 10, 2, N'Савина', 6686446, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (34, N'1154/С', CAST(N'2019-03-20' AS Date), CAST(N'2024-03-25' AS Date), 3, 1, CAST(N'2019-03-25' AS Date), 9, 2, N'Савина', 6572571, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (35, N'1155/С', CAST(N'2019-03-20' AS Date), CAST(N'2024-03-25' AS Date), 3, 1, CAST(N'2019-03-25' AS Date), 9, 2, N'Савина', 6572571, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (37, N'1205/Д', CAST(N'2021-05-05' AS Date), CAST(N'2024-04-28' AS Date), 22, 0.5, CAST(N'2021-05-10' AS Date), 14, 1, N'Давыдова', 1697359, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (38, N'1206/Д', CAST(N'2021-05-05' AS Date), CAST(N'2024-04-28' AS Date), 22, 0.6, CAST(N'2021-05-10' AS Date), 20, 1, N'Давыдова', 1558542, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (39, N'1202/Ф', CAST(N'2021-03-10' AS Date), CAST(N'2024-03-20' AS Date), 23, 0.8, CAST(N'2021-03-10' AS Date), 21, 1, N'Фомина', 2197476, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (40, N'1203/Кл', CAST(N'2021-03-23' AS Date), CAST(N'2024-03-15' AS Date), 10, 0.8, CAST(N'2021-03-25' AS Date), 46, 1, N'Козлов', 1889817, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (41, N'1189/Кл', CAST(N'2021-03-23' AS Date), CAST(N'2024-03-15' AS Date), 10, 0.8, CAST(N'2021-03-25' AS Date), 46, 1, N'Козлов', 1889817, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (42, N'1200/Ф', CAST(N'2021-03-03' AS Date), CAST(N'2023-03-15' AS Date), 8, 1, CAST(N'2021-03-05' AS Date), 4, 1, N'Фомина', 2926724, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (43, N'1201/Ф', CAST(N'2021-03-03' AS Date), CAST(N'2023-03-15' AS Date), 8, 1, CAST(N'2021-03-05' AS Date), 1, 1, N'Фомина', 2926724, NULL)
INSERT [dbo].[Contract] ([id], [number], [begin_date], [end_date], [client_id], [comission], [transfer_date], [product_id], [quantity], [manager], [total], [lastpay_date]) VALUES (44, N'1152/П', CAST(N'2018-11-09' AS Date), CAST(N'2022-12-15' AS Date), 24, 0.6, CAST(N'2018-11-10' AS Date), 24, 1, N'Попов', 3636504, NULL)
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
SET IDENTITY_INSERT [dbo].[FinanceResults] ON 

INSERT [dbo].[FinanceResults] ([id], [id_company], [Year], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2421], [c2430], [c2450], [c2460]) VALUES (1, 1, 2018, CAST(3300962.00 AS Numeric(18, 2)), CAST(-3087278.00 AS Numeric(18, 2)), CAST(-169646.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), CAST(9985.00 AS Numeric(18, 2)), CAST(-58247.00 AS Numeric(18, 2)), CAST(176931.00 AS Numeric(18, 2)), CAST(-168685.00 AS Numeric(18, 2)), CAST(-1180.00 AS Numeric(18, 2)), CAST(-1938.00 AS Numeric(18, 2)), CAST(-25.00 AS Numeric(18, 2)), CAST(-61.00 AS Numeric(18, 2)), CAST(-31.00 AS Numeric(18, 2)))
INSERT [dbo].[FinanceResults] ([id], [id_company], [Year], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2421], [c2430], [c2450], [c2460]) VALUES (2, 1, 2019, CAST(5416365.00 AS Numeric(18, 2)), CAST(-5097118.00 AS Numeric(18, 2)), CAST(-294525.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(6728.00 AS Numeric(18, 2)), CAST(7504.00 AS Numeric(18, 2)), CAST(-63916.00 AS Numeric(18, 2)), CAST(63051.00 AS Numeric(18, 2)), CAST(-26810.00 AS Numeric(18, 2)), CAST(-4357.00 AS Numeric(18, 2)), CAST(2084.00 AS Numeric(18, 2)), CAST(-19.00 AS Numeric(18, 2)), CAST(36.00 AS Numeric(18, 2)), CAST(-23.00 AS Numeric(18, 2)))
INSERT [dbo].[FinanceResults] ([id], [id_company], [Year], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2421], [c2430], [c2450], [c2460]) VALUES (3, 1, 2020, CAST(5662472.00 AS Numeric(18, 2)), CAST(-5389098.00 AS Numeric(18, 2)), CAST(-250161.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(40000.00 AS Numeric(18, 2)), CAST(8031.00 AS Numeric(18, 2)), CAST(-56152.00 AS Numeric(18, 2)), CAST(183765.00 AS Numeric(18, 2)), CAST(-112646.00 AS Numeric(18, 2)), CAST(-1211.00 AS Numeric(18, 2)), CAST(-971.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[FinanceResults] ([id], [id_company], [Year], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2421], [c2430], [c2450], [c2460]) VALUES (4, 2, 2018, CAST(1486862.00 AS Numeric(18, 2)), CAST(-1282386.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1648.00 AS Numeric(18, 2)), CAST(-184054.00 AS Numeric(18, 2)), CAST(176695.00 AS Numeric(18, 2)), CAST(-179812.00 AS Numeric(18, 2)), CAST(-12601.00 AS Numeric(18, 2)), CAST(-9708.00 AS Numeric(18, 2)), CAST(-8742.00 AS Numeric(18, 2)), CAST(7891.00 AS Numeric(18, 2)), CAST(-103.00 AS Numeric(18, 2)))
INSERT [dbo].[FinanceResults] ([id], [id_company], [Year], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2421], [c2430], [c2450], [c2460]) VALUES (5, 2, 2019, CAST(1940879.00 AS Numeric(18, 2)), CAST(-1681629.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(-1608.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(3057.00 AS Numeric(18, 2)), CAST(-218568.00 AS Numeric(18, 2)), CAST(175732.00 AS Numeric(18, 2)), CAST(-174153.00 AS Numeric(18, 2)), CAST(-6746.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(-4765.00 AS Numeric(18, 2)))
INSERT [dbo].[FinanceResults] ([id], [id_company], [Year], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2421], [c2430], [c2450], [c2460]) VALUES (6, 2, 2020, CAST(1846375.00 AS Numeric(18, 2)), CAST(-1624131.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(-1155.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(910.00 AS Numeric(18, 2)), CAST(-236435.00 AS Numeric(18, 2)), CAST(379993.00 AS Numeric(18, 2)), CAST(-335777.00 AS Numeric(18, 2)), CAST(-9197.00 AS Numeric(18, 2)), CAST(433.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[FinanceResults] OFF
GO
INSERT [dbo].[Group_of_companies] ([id], [Company]) VALUES (1, N'Parent Company')
INSERT [dbo].[Group_of_companies] ([id], [Company]) VALUES (2, N'Subsidiary Company')
GO
SET IDENTITY_INSERT [dbo].[Incorporation] ON 

INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (0, N'(нет)')
INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (1, N'ООО')
INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (2, N'АО')
INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (3, N'ИП')
INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (4, N'ООО (реорганизация)')
INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (5, N'ОАО')
INSERT [dbo].[Incorporation] ([id], [kind]) VALUES (6, N'МУП')
SET IDENTITY_INSERT [dbo].[Incorporation] OFF
GO
SET IDENTITY_INSERT [dbo].[MutualTurnovers] ON 

INSERT [dbo].[MutualTurnovers] ([id], [id_company], [Year], [c1170], [c1230], [c1240], [c1310], [c1350], [c1370], [c1410], [c1450], [c1510], [c1520], [c1550], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2430], [c2450], [c2460]) VALUES (1, 1, 2018, CAST(174036.50 AS Numeric(18, 2)), CAST(39764.54 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(73832.66 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(888771.36 AS Numeric(18, 2)), CAST(-883896.38 AS Numeric(18, 2)), CAST(-15531.93 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(160288.45 AS Numeric(18, 2)), CAST(-160288.45 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[MutualTurnovers] ([id], [id_company], [Year], [c1170], [c1230], [c1240], [c1310], [c1350], [c1370], [c1410], [c1450], [c1510], [c1520], [c1550], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2430], [c2450], [c2460]) VALUES (2, 1, 2019, CAST(174036.50 AS Numeric(18, 2)), CAST(76894.72 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(3392.02 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1516612.31 AS Numeric(18, 2)), CAST(-1510385.86 AS Numeric(18, 2)), CAST(-21201.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(24.14 AS Numeric(18, 2)), CAST(-24.14 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[MutualTurnovers] ([id], [id_company], [Year], [c1170], [c1230], [c1240], [c1310], [c1350], [c1370], [c1410], [c1450], [c1510], [c1520], [c1550], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2430], [c2450], [c2460]) VALUES (3, 1, 2020, CAST(174036.50 AS Numeric(18, 2)), CAST(93530.76 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(30348.31 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(914502.27 AS Numeric(18, 2)), CAST(-907242.17 AS Numeric(18, 2)), CAST(-31900.38 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(40000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1266.96 AS Numeric(18, 2)), CAST(-1273.47 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[MutualTurnovers] ([id], [id_company], [Year], [c1170], [c1230], [c1240], [c1310], [c1350], [c1370], [c1410], [c1450], [c1510], [c1520], [c1550], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2430], [c2450], [c2460]) VALUES (4, 2, 2018, CAST(0.00 AS Numeric(18, 2)), CAST(73832.66 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(174036.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(39764.54 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(15531.93 AS Numeric(18, 2)), CAST(-4874.98 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(24722.65 AS Numeric(18, 2)), CAST(-24722.65 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[MutualTurnovers] ([id], [id_company], [Year], [c1170], [c1230], [c1240], [c1310], [c1350], [c1370], [c1410], [c1450], [c1510], [c1520], [c1550], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2430], [c2450], [c2460]) VALUES (5, 2, 2019, CAST(0.00 AS Numeric(18, 2)), CAST(3392.02 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(174036.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(76894.72 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(27096.64 AS Numeric(18, 2)), CAST(-12122.10 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(19005.53 AS Numeric(18, 2)), CAST(-19005.53 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[MutualTurnovers] ([id], [id_company], [Year], [c1170], [c1230], [c1240], [c1310], [c1350], [c1370], [c1410], [c1450], [c1510], [c1520], [c1550], [c2110], [c2120], [c2210], [c2220], [c2310], [c2320], [c2330], [c2340], [c2350], [c2410], [c2430], [c2450], [c2460]) VALUES (6, 2, 2020, CAST(0.00 AS Numeric(18, 2)), CAST(30348.31 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(174036.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(93530.76 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(31900.38 AS Numeric(18, 2)), CAST(-7260.10 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(35450.26 AS Numeric(18, 2)), CAST(-35443.75 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[MutualTurnovers] OFF
GO
SET IDENTITY_INSERT [dbo].[ParentCovenants] ON 

INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (1, 1, N'Кредитный портфель', CAST(478916.00 AS Numeric(18, 2)), CAST(255687.00 AS Numeric(18, 2)), CAST(290170.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (2, 2, N'Гарантии полученные', CAST(0.00 AS Numeric(18, 2)), CAST(62467.83 AS Numeric(18, 2)), CAST(5841.06 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (3, 3, N'Выручка за последние 12 мес., тыс. руб.
', CAST(0.00 AS Numeric(18, 2)), CAST(5416365.00 AS Numeric(18, 2)), CAST(5662472.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (4, 4, N'Задолженность компании по внутренним лизинговым договорам
', CAST(38293.53 AS Numeric(18, 2)), CAST(43316.65 AS Numeric(18, 2)), CAST(34194.78 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (5, 5, N'Сумма обязательств по выданным гарантиям
', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (6, 6, N'Сумма обязательств по выданным поручительствам
', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (7, 7, N'Амортизация', CAST(3549.00 AS Numeric(18, 2)), CAST(3371.00 AS Numeric(18, 2)), CAST(3302.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (8, 8, N'Прочие доходы за последние 4 квартала
', CAST(12831.80 AS Numeric(18, 2)), CAST(55214.24 AS Numeric(18, 2)), CAST(67341.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (9, 9, N'Прочие расходы за последние 4 квартала
', CAST(2927.67 AS Numeric(18, 2)), CAST(4679.32 AS Numeric(18, 2)), CAST(4281.09 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (10, 10, N'Прибыль от продаж за последние 4 квартала
', CAST(44199.00 AS Numeric(18, 2)), CAST(24722.00 AS Numeric(18, 2)), CAST(23213.00 AS Numeric(18, 2)))
INSERT [dbo].[ParentCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (11, 11, N'Лизинг в составе себестоимости за последние 4 квартала
', CAST(12965.72 AS Numeric(18, 2)), CAST(13659.89 AS Numeric(18, 2)), CAST(12668.33 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[ParentCovenants] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (1, 19, CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (2, 19, CAST(N'2020-10-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (3, 19, CAST(N'2020-11-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (4, 19, CAST(N'2020-12-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (5, 19, CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (6, 19, CAST(N'2021-02-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (7, 19, CAST(N'2021-03-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (8, 19, CAST(N'2021-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (9, 19, CAST(N'2021-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (10, 19, CAST(N'2021-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (11, 15, CAST(N'2020-08-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (12, 15, CAST(N'2020-09-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (13, 15, CAST(N'2020-10-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (14, 15, CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (15, 15, CAST(N'2020-12-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (16, 15, CAST(N'2021-01-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (17, 15, CAST(N'2021-02-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (18, 15, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (19, 15, CAST(N'2021-04-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (20, 15, CAST(N'2021-05-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (21, 15, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (28, 8, CAST(N'2020-03-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (29, 8, CAST(N'2020-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (34, 8, CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (35, 8, CAST(N'2021-02-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (36, 3, CAST(N'2020-02-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (37, 3, CAST(N'2020-03-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (38, 3, CAST(N'2020-04-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (39, 3, CAST(N'2020-05-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (40, 3, CAST(N'2020-06-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (41, 3, CAST(N'2020-07-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (42, 3, CAST(N'2020-08-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (43, 3, CAST(N'2020-09-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (44, 3, CAST(N'2020-10-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (45, 3, CAST(N'2020-11-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (46, 3, CAST(N'2020-12-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (47, 3, CAST(N'2021-01-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (48, 8, CAST(N'2020-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (49, 8, CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (50, 8, CAST(N'2020-07-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (51, 8, CAST(N'2020-08-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (52, 8, CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (53, 8, CAST(N'2020-10-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (54, 8, CAST(N'2020-11-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (55, 8, CAST(N'2020-12-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (56, 8, CAST(N'2021-03-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (57, 8, CAST(N'2021-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (58, 8, CAST(N'2021-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (59, 8, CAST(N'2021-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (60, 11, CAST(N'2020-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (61, 11, CAST(N'2020-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (62, 11, CAST(N'2020-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (63, 11, CAST(N'2020-07-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (64, 11, CAST(N'2020-08-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (65, 11, CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (66, 11, CAST(N'2020-10-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (67, 11, CAST(N'2020-11-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (68, 11, CAST(N'2020-12-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (69, 11, CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (70, 11, CAST(N'2021-02-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (71, 11, CAST(N'2021-03-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (72, 11, CAST(N'2021-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (73, 11, CAST(N'2021-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (74, 11, CAST(N'2021-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (75, 9, CAST(N'2020-03-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (76, 9, CAST(N'2020-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (77, 9, CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (78, 9, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (79, 9, CAST(N'2020-07-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (80, 9, CAST(N'2020-08-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (81, 9, CAST(N'2020-09-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (82, 9, CAST(N'2020-10-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (83, 9, CAST(N'2021-01-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (84, 9, CAST(N'2021-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (85, 10, CAST(N'2020-04-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (86, 10, CAST(N'2020-05-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (87, 10, CAST(N'2020-06-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (88, 10, CAST(N'2020-07-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (89, 10, CAST(N'2020-08-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (93, 10, CAST(N'2021-03-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (94, 10, CAST(N'2021-05-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (95, 13, CAST(N'2020-05-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (96, 13, CAST(N'2020-06-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (97, 13, CAST(N'2020-07-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (98, 13, CAST(N'2020-08-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (99, 13, CAST(N'2020-09-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (100, 13, CAST(N'2020-10-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (101, 13, CAST(N'2020-11-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (102, 13, CAST(N'2021-01-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (103, 13, CAST(N'2021-02-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (104, 12, CAST(N'2020-07-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (105, 12, CAST(N'2020-08-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (106, 12, CAST(N'2020-09-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (107, 12, CAST(N'2020-10-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (108, 12, CAST(N'2020-11-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (109, 12, CAST(N'2020-12-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (110, 12, CAST(N'2021-01-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (111, 12, CAST(N'2021-02-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (112, 12, CAST(N'2021-03-08' AS Date))
GO
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (113, 12, CAST(N'2021-04-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (114, 12, CAST(N'2021-05-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (115, 12, CAST(N'2021-06-08' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (116, 14, CAST(N'2020-08-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (117, 14, CAST(N'2020-09-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (118, 14, CAST(N'2020-10-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (119, 14, CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (120, 14, CAST(N'2020-12-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (121, 14, CAST(N'2021-01-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (122, 14, CAST(N'2021-02-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (123, 14, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (124, 14, CAST(N'2021-04-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (125, 14, CAST(N'2021-05-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (126, 14, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (127, 16, CAST(N'2020-08-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (128, 16, CAST(N'2020-09-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (129, 16, CAST(N'2020-10-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (130, 16, CAST(N'2020-11-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (131, 16, CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (132, 16, CAST(N'2021-01-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (133, 16, CAST(N'2021-02-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (134, 16, CAST(N'2021-04-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (135, 17, CAST(N'2020-08-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (136, 17, CAST(N'2020-09-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (137, 17, CAST(N'2020-10-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (138, 17, CAST(N'2020-11-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (139, 17, CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (140, 17, CAST(N'2021-01-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (141, 17, CAST(N'2021-02-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (142, 17, CAST(N'2021-04-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (143, 17, CAST(N'2021-06-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (144, 18, CAST(N'2020-08-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (145, 18, CAST(N'2020-09-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (146, 18, CAST(N'2020-10-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (147, 18, CAST(N'2020-11-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (148, 18, CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (149, 18, CAST(N'2021-01-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (150, 18, CAST(N'2021-02-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (151, 18, CAST(N'2021-04-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (152, 18, CAST(N'2021-06-14' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (153, 22, CAST(N'2020-08-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (154, 22, CAST(N'2020-09-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (155, 22, CAST(N'2020-10-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (156, 22, CAST(N'2020-11-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (157, 22, CAST(N'2020-12-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (158, 22, CAST(N'2021-01-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (159, 22, CAST(N'2021-02-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (160, 22, CAST(N'2021-03-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (161, 22, CAST(N'2021-04-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (162, 22, CAST(N'2021-05-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (163, 22, CAST(N'2021-06-27' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (164, 20, CAST(N'2020-09-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (165, 20, CAST(N'2020-10-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (166, 20, CAST(N'2020-11-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (167, 20, CAST(N'2020-12-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (168, 20, CAST(N'2021-01-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (169, 20, CAST(N'2021-02-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (170, 20, CAST(N'2021-03-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (171, 20, CAST(N'2021-04-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (172, 20, CAST(N'2021-05-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (173, 20, CAST(N'2021-06-28' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (174, 21, CAST(N'2020-10-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (175, 21, CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (176, 21, CAST(N'2020-12-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (177, 21, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (178, 21, CAST(N'2021-02-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (179, 21, CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (180, 21, CAST(N'2021-04-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (181, 21, CAST(N'2021-05-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (182, 21, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (183, 23, CAST(N'2020-11-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (184, 23, CAST(N'2020-12-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (185, 23, CAST(N'2021-01-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (186, 23, CAST(N'2021-03-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (187, 23, CAST(N'2021-04-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (188, 23, CAST(N'2021-05-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (189, 23, CAST(N'2021-06-30' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (190, 24, CAST(N'2020-11-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (191, 24, CAST(N'2020-12-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (192, 24, CAST(N'2021-01-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (193, 24, CAST(N'2021-02-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (194, 24, CAST(N'2021-03-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (195, 24, CAST(N'2021-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (196, 24, CAST(N'2021-05-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (197, 24, CAST(N'2021-06-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (198, 25, CAST(N'2020-12-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (199, 25, CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (200, 25, CAST(N'2021-02-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (201, 25, CAST(N'2021-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (202, 25, CAST(N'2021-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (203, 25, CAST(N'2021-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (204, 26, CAST(N'2020-12-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (205, 26, CAST(N'2021-01-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (206, 26, CAST(N'2021-02-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (207, 26, CAST(N'2021-03-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (208, 26, CAST(N'2021-04-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (209, 26, CAST(N'2021-05-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (210, 26, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (211, 10, CAST(N'2020-09-16' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (212, 10, CAST(N'2020-10-16' AS Date))
GO
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (213, 44, CAST(N'2018-12-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (214, 44, CAST(N'2019-01-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (215, 44, CAST(N'2019-02-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (216, 44, CAST(N'2019-03-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (217, 44, CAST(N'2019-04-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (218, 44, CAST(N'2019-05-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (219, 44, CAST(N'2019-06-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (220, 44, CAST(N'2019-07-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (221, 44, CAST(N'2019-08-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (222, 44, CAST(N'2019-09-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (223, 44, CAST(N'2019-10-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (224, 44, CAST(N'2019-11-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (225, 44, CAST(N'2019-12-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (226, 44, CAST(N'2020-01-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (227, 44, CAST(N'2020-02-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (228, 44, CAST(N'2020-03-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (229, 44, CAST(N'2020-04-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (230, 44, CAST(N'2020-05-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (231, 44, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (232, 44, CAST(N'2020-07-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (233, 44, CAST(N'2020-08-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (234, 44, CAST(N'2020-09-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (235, 44, CAST(N'2020-10-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (236, 44, CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (237, 44, CAST(N'2020-12-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (238, 44, CAST(N'2021-01-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (239, 44, CAST(N'2021-02-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (240, 44, CAST(N'2021-03-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (241, 44, CAST(N'2021-04-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (242, 44, CAST(N'2021-05-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (243, 44, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (244, 33, CAST(N'2019-03-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (245, 33, CAST(N'2019-04-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (246, 33, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (247, 33, CAST(N'2019-06-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (248, 33, CAST(N'2019-07-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (249, 33, CAST(N'2019-08-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (250, 33, CAST(N'2019-09-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (251, 33, CAST(N'2019-10-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (252, 33, CAST(N'2019-11-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (253, 33, CAST(N'2019-12-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (254, 33, CAST(N'2020-01-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (255, 33, CAST(N'2020-02-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (256, 33, CAST(N'2020-04-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (257, 33, CAST(N'2020-05-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (258, 33, CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (259, 33, CAST(N'2020-08-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (260, 33, CAST(N'2020-09-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (261, 33, CAST(N'2020-10-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (262, 33, CAST(N'2021-01-12' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (263, 34, CAST(N'2019-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (264, 34, CAST(N'2019-05-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (265, 34, CAST(N'2019-06-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (266, 34, CAST(N'2019-07-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (267, 34, CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (268, 34, CAST(N'2019-09-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (269, 34, CAST(N'2019-10-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (270, 34, CAST(N'2019-11-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (271, 34, CAST(N'2019-12-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (272, 34, CAST(N'2020-01-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (273, 34, CAST(N'2020-02-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (274, 34, CAST(N'2020-03-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (275, 34, CAST(N'2020-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (276, 34, CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (277, 34, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (278, 34, CAST(N'2020-07-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (279, 34, CAST(N'2020-08-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (280, 34, CAST(N'2020-09-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (281, 34, CAST(N'2020-10-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (282, 35, CAST(N'2019-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (283, 35, CAST(N'2019-05-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (284, 35, CAST(N'2019-06-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (285, 35, CAST(N'2019-07-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (286, 35, CAST(N'2019-08-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (287, 35, CAST(N'2019-09-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (288, 35, CAST(N'2019-10-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (289, 35, CAST(N'2019-11-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (290, 35, CAST(N'2019-12-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (291, 35, CAST(N'2020-01-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (292, 35, CAST(N'2020-02-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (293, 35, CAST(N'2020-03-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (294, 35, CAST(N'2020-04-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (295, 35, CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (296, 35, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (297, 35, CAST(N'2020-07-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (298, 35, CAST(N'2020-08-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (299, 35, CAST(N'2020-09-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (300, 35, CAST(N'2020-10-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (301, 35, CAST(N'2021-01-20' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (302, 37, CAST(N'2021-06-05' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (303, 38, CAST(N'2021-06-05' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (304, 39, CAST(N'2021-04-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (305, 39, CAST(N'2021-05-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (306, 39, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (307, 42, CAST(N'2021-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (308, 42, CAST(N'2021-05-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (309, 42, CAST(N'2021-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (310, 42, CAST(N'2021-07-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (311, 43, CAST(N'2021-04-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (312, 43, CAST(N'2021-05-03' AS Date))
GO
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (313, 43, CAST(N'2021-06-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (314, 43, CAST(N'2021-07-03' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (315, 40, CAST(N'2021-04-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (316, 40, CAST(N'2021-05-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (317, 40, CAST(N'2021-06-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (318, 41, CAST(N'2021-04-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (319, 41, CAST(N'2021-05-23' AS Date))
INSERT [dbo].[Payments] ([id], [contract_id], [payment_date]) VALUES (320, 41, CAST(N'2021-06-23' AS Date))
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (0, 0, NULL, NULL, N'не выбрано', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (1, 4, N'АВТОБУС', N'КАВЗ', N'4270-80', N'Z7N427080L0000616', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (3, 4, N'АВТОБУС', N'КАВЗ', N'4270-80', N'Z7N427080L0000615', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (4, 4, N'АВТОБУС', N'КАВЗ', N'4270-80', N'Z7N427080L0000614', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (5, 4, N'АВТОБУС', N'КАВЗ', N'4270-80', N'Z7N427080L0000613', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (6, 1, N'АВТОБУС', N'ЛИАЗ', N'429260', N'ХТY429260К0001588', N'с двиг.ЯМЗ 154 Е5, ZF авт.,1-3дв.', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (8, 1, N'АВТОБУС', N'ЛИАЗ', N'429260', N'ХТY429260К0001569', N'с двиг.ЯМЗ 154 Е5, ZF авт.,1-3дв.', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (9, 1, N'АВТОБУС', N'ЛИАЗ', N'429260', N'ХТY429260К0001580', N'с двиг.ЯМЗ 154 Е5, ZF авт.,1-3дв.', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (10, 1, N'Автобус большого класса', N'ЛИАЗ', N'529267', N'XTY529267L0009849', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (11, 1, N'Автобус большого класса', N'ЛИАЗ', N'529267', N'XTY529267L0009846', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (12, 1, N'Автобус большого класса', N'ЛИАЗ', N'529267', N'XTY529267L0009845', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (13, 1, N'Автобус большого класса', N'ЛИАЗ', N'529267', N'XTY529267L0009842', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (14, 2, N'АВТОБУС', N'ПАЗ', N'320425-04', N'Х1М3204HSL0000822', N'мост ГАЗ; дв.ЯМЗ 124,2кВт (дизель); Евро 5 с OBD-2; КПП FAST GEAR 5 ступ.;', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (15, 2, N'АВТОБУС', N'ПАЗ', N'320425-04', N'Х1М3204HSL0000607', N'мост ГАЗ; дв.ЯМЗ 124,2кВт (дизель); Евро 5 с OBD-2; КПП FAST GEAR 5 ступ.;', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (16, 2, N'АВТОБУС', N'ПАЗ', N'320425-04', N'Х1М3204HSL0000468', N'мост ГАЗ; дв.ЯМЗ 124,2кВт (дизель); Евро 5 с OBD-2; КПП FAST GEAR 5 ступ.;', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (17, 2, N'АВТОБУС', N'ПАЗ', N'320405-04', N'Х1М32045SL0001297', N'с мостами ГАЗ; дв.ЯМЗ 124,2кВт (дизель); Евро 5 с OBD-2; КПП ГАЗ мех. 5 ступ.; сид.Комфорт ', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (18, 2, N'АВТОБУС', N'ПАЗ', N'320405-04', N'Х1М32045SL0001091', N'с мостами ГАЗ; дв.ЯМЗ 124,2кВт (дизель); Евро 5 с OBD-2; КПП ГАЗ мех. 5 ступ.; сиденья "Стандарт";', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (20, 2, N'Автобус', N'ПАЗ', N'320302-08', N'Х1М32032UL0000231', N'мост КААЗ; дв.ЗМЗ 90 кВт; Евро-4; КПП ГАЗ мех.5 ступ.; сид.Стандарт; класс1; 2 дв.', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (21, 5, N'Автомобиль GAZelle NEXT', N'ГАЗ', N'A65R52', N'X96A65R52L0894746', N'дв.ISF2.8s5F148 76595539; куз.A65R52L0037433; ЭПТС №164301004203919;', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (22, 5, N'Автомобиль GAZelle NEXT', N'ГАЗ', N'A62R32', N'X96A62R32L0903434', N'дв.ISF2.8s5F148 76751190; куз.A62R33L0042419; ', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (23, 5, N'Автомобиль GAZelle NEXT', N'ГАЗ', N'A32R22', N'X96А32R22L0893236', N'дв.ISF2.8s5161P 76601480; куз.A32R23L0036576; ЭПТС № 164301003410379', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (24, 8, N'Автомобиль-шасси', N'КАМАЗ', N'43118-23027-50', N'XTC431185L1425271', N'дв.L2944556; каб.431140L2557495;', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (25, 8, N'Автомобиль-шасси', N'КАМАЗ', N'43118-23027-50', N'XTC431185L1425270', N'дв.L2944562; каб.431140L2557494;', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (26, 8, N'Автомобиль-шасси', N'КАМАЗ', N'43118-3017-50', N'XTC431185L1436539', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (27, 8, N'Автомобиль-шасси', N'КАМАЗ', N'43118-3011-50', N'XTC431185L1419616', N'дв.L2937148; каб.431140L2549650', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (28, 5, N'Автомобиль', N'HYUNDAI', N'HD78 A738', N'XWEGA17HPL1C01908', N'фургон ППС 5.2х2.2х2.2 средняя изот.50', NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (29, 7, N'Автомобиль Борт 5,2', N'HYUNDAI', N'EX9EL QT EX6 EX8 A760', N'XWEHA17HPL1000073', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (30, 7, N'Автомобиль Борт Сталь', N'HYUNDAI', N'HD65/78 A745', N'XWEGA17HPK1C01071', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (31, 9, N'Автомобиль ПОЛУПРИЦЕП ОБЩЕГО НАЗНАЧЕНИЯ', N'ТОНАР', N'98881', N'Х0Т988810L0000208', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (32, 9, N'Автомобиль ПОЛУПРИЦЕП ОБЩЕГО НАЗНАЧЕНИЯ', N'ТОНАР', N'98881', N'X0T988810L0000225', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (33, 9, N'ПОЛУПРИЦЕП', N'KOLUMAN', N'S', N'NLFS3010000051446', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (34, 9, N'ПОЛУПРИЦЕП', N'KOLUMAN', N'S', N'NLFS3010000051447', NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (35, 4, NULL, N'НЕФАЗ', N'5299-0000017-42', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (36, 4, N'Автобус', N'NEOPLAN', N'TOURLINER P21', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (37, 1, N'Автобус', N'ЛИАЗ', N'525634', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (38, 4, N'Автобус', N'HYUNDAI', N'UNIVERSE SPACE LUXURY', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (39, 4, N'Автобус междугородний', N'НЕФАЗ', N'5299-0000017-42', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (40, 4, N'Автобус', N'HYUNDAI', N'UNIVERSE SPACE LUXURY', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (41, 4, N'Автобус', N'HYUNDAI', N'UNIVERSE SPACE LUXURY', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (42, 4, N'Автобус', N'HYUNDAI', N'UNIVERSE SPACE LUXURY', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (43, 4, N'Автобус', N'HYUNDAI', N'UNIVERSE SPACE LUXURY', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (44, 4, N'Автобус', N'ЛУИДОР', N'225019', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (45, 4, N'Автобус, класс А', N'ГАЗ', N'A65R32', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (46, 2, NULL, N'ПАЗ', N'320414-05', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (47, 5, N'Автомобиль-фургон рефрижератор 3008EC', N'ГАЗ', N'A21R23', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (48, 2, NULL, N'ПАЗ', N'320540-22', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (49, 6, NULL, N'TOYOTA', N'Land Cruiser 200', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (50, 6, NULL, N'TOYOTA', N'Camry', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (51, 2, NULL, N'ПАЗ', N'320412-14', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (52, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (53, 4, NULL, N'ВСА', N'3033-020-97', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (54, 2, NULL, N'ПАЗ', N'320412-14', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (55, 2, NULL, N'ПАЗ', N'320412-14', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (56, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (57, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (58, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (59, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (60, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (61, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (62, 2, NULL, N'ПАЗ', N'32054', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (63, 4, NULL, N'КАВЗ', N'4238-62', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (64, 4, NULL, N'КАВЗ', N'4238-62', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (65, 4, NULL, N'КАВЗ', N'4238-62', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (66, 7, N'Бортовая платформа с воротами', N'ГАЗ', N'2824DE', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (67, 2, NULL, N'ПАЗ', N'320412-04', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (68, 4, NULL, N'ЛУИДОР', N'225019', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (69, 4, NULL, N'КАВЗ', N'4238-62', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (70, 2, NULL, N'ПАЗ', N'320412-04', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (71, 3, NULL, N'КАВЗ', N'4238-62 2018', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (72, 3, NULL, N'КАВЗ', N'4238-62 2018', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (73, 3, NULL, N'КАВЗ', N'4238-62 2018', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (74, 3, NULL, N'КАВЗ', N'4238-62 2018', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (75, 3, NULL, N'КАВЗ', N'4238-62 2018', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (76, 4, NULL, N'ЛУИДОР', N'225050', NULL, NULL, 2019)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (77, 4, NULL, N'НЕФАЗ', N'5299-0000017-42', NULL, NULL, NULL)
INSERT [dbo].[Product] ([id], [category_id], [prefix], [manufacturer], [model], [VIN], [description], [year]) VALUES (82, 2, N'АВТОБУС', N'ПАЗ', N'320405-04', N'Х1М32045SL0001065', N'мост ГАЗ; дв.ЯМЗ 124,2кВт (дизель); Евро 5 с OBD-2; КПП ГАЗ мех. 5 ступ.', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (0, N'Без категории')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (1, N'ЛиАЗ, ГолАЗ')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (2, N'ПАЗ')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (3, N'"Аврора" (ПАЗ 4230, КАВЗ 4238)')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (4, N'Прочие автобусы')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (5, N'Фургоны')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (6, N'Легковые')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (7, N'Бортовые')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (8, N'Шасси')
INSERT [dbo].[ProductCategory] ([id], [category]) VALUES (9, N'Прицепы')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([id], [region]) VALUES (0, N'не задан')
INSERT [dbo].[Regions] ([id], [region]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (2, N'Омская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (3, N'Владимирская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (5, N'Московская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (7, N'Белгородская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (8, N'Тверская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (9, N'Ивановская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (10, N'Ярославская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (11, N'Крым республика')
INSERT [dbo].[Regions] ([id], [region]) VALUES (12, N'Коми республика')
INSERT [dbo].[Regions] ([id], [region]) VALUES (13, N'Санкт-Петербург')
INSERT [dbo].[Regions] ([id], [region]) VALUES (14, N'Новгородская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (15, N'Карелия республика')
INSERT [dbo].[Regions] ([id], [region]) VALUES (16, N'Кировская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (17, N'Калужская область')
INSERT [dbo].[Regions] ([id], [region]) VALUES (18, N'Татарстан республика')
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportsTitle] ON 

INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (1, 1, N'I. Внеоборотные активы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (2, 1110, N'Нематериальные активы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (3, 1120, N'Результаты исследований и разработок')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (4, 1150, N'Основные средства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (5, 1160, N'Доходные вложения в материальные ценности')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (6, 1170, N'Финансовые вложения')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (7, 1180, N'Отложенные налоговые активы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (8, 1190, N'Прочие внеоборотные активы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (9, 1100, N'Итого по разделу I')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (10, 2, N'II. Оборотные активы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (11, 1210, N'Запасы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (13, 1220, N'Налог на добавленную стоимость по приобретенным ценностям')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (14, 1230, N'Дебиторская задолженность')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (15, 1240, N'Финансовые вложения')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (16, 1250, N'Денежные средства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (17, 1260, N'Прочие оборотные активы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (18, 1200, N'Итого по разделу II')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (19, 1600, N'Баланс')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (20, 3, N'III. Капитал и резервы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (21, 1310, N'Уставный капитал')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (22, 1320, N'Собственные акции, выкупленные у акционеров')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (23, 1340, N'Переоценка внеоборотных активов')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (24, 1350, N'Добавочный капитал')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (25, 1360, N'Резервный капитал')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (26, 1370, N'Нераспределенная прибыль (непокрытый убыток)')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (27, 1300, N'Итого по разделу III')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (28, 4, N'IV. Долгосрочные обязательства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (29, 1410, N'Займы и кредиты')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (30, 1420, N'Отложенные налоговые обязательства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (31, 1450, N'Прочие долгосрочные обязательства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (32, 1400, N'Итого по разделу IV')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (33, 5, N'V. Краткосрочные обязательства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (34, 1510, N'Займы и кредиты')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (35, 1520, N'Кредиторская задолженность')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (36, 1530, N'Доходы будущих периодов')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (37, 1540, N'Резервы предстоящих периодов')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (38, 1550, N'Прочие краткосрочные обязательства')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (39, 1500, N'Итого по разделу V')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (40, 1700, N'Баланс')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (41, 2110, N'Выручка (нетто) от продажи товаров, продукции, работ, услуг (за минусом налога на добавленную стоимость, акцизов и аналогичных обязательных платежей)')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (42, 2120, N'Себестоимость проданных товаров, продукции, работ, услуг')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (43, 2100, N'Валовая прибыль')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (44, 2210, N'Коммерческие расходы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (45, 2220, N'Управленческие расходы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (46, 2200, N'Прибыль (убыток) от продаж')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (47, 2310, N'Доходы от участия в других организациях')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (48, 2320, N'Проценты к получению')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (49, 2330, N'Проценты к уплате')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (50, 2340, N'Прочие доходы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (51, 2350, N'Прочие расходы')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (52, 2300, N'Прибыль (убыток) до налогообложения')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (53, 2410, N'Текущий налог на прибыль')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (54, 2421, N'в том числе постоянные налоговые обязательства (активы)')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (55, 2430, N'Изменение отложенных налоговых обязательств')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (56, 2450, N'Изменение отложенных налоговых активов')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (57, 2460, N'Прочее')
INSERT [dbo].[ReportsTitle] ([id], [code], [title]) VALUES (58, 2400, N'Чистая прибыль (убыток)')
SET IDENTITY_INSERT [dbo].[ReportsTitle] OFF
GO
SET IDENTITY_INSERT [dbo].[Storage] ON 

INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (1, 1, 1, CAST(8457400.00 AS Numeric(18, 2)), CAST(N'2020-07-15' AS Date), CAST(N'2020-07-25' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (2, 3, 1, CAST(8457400.00 AS Numeric(18, 2)), CAST(N'2020-01-01' AS Date), CAST(N'2020-03-03' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (3, 4, 1, CAST(8457400.00 AS Numeric(18, 2)), CAST(N'2020-06-03' AS Date), CAST(N'2020-06-05' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (4, 5, 1, CAST(8457400.00 AS Numeric(18, 2)), CAST(N'2020-08-07' AS Date), CAST(N'2020-12-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (5, 6, 1, CAST(6598220.00 AS Numeric(18, 2)), CAST(N'2019-12-15' AS Date), CAST(N'2020-08-01' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (6, 8, 1, CAST(6598220.00 AS Numeric(18, 2)), CAST(N'2019-12-15' AS Date), CAST(N'2020-03-17' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (8, 9, 1, CAST(6598220.00 AS Numeric(18, 2)), CAST(N'2019-12-15' AS Date), CAST(N'2020-02-15' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (9, 10, 1, CAST(11472000.00 AS Numeric(18, 2)), CAST(N'2020-03-01' AS Date), CAST(N'2020-04-15' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (10, 11, 1, CAST(11472000.00 AS Numeric(18, 2)), CAST(N'2020-03-01' AS Date), CAST(N'2020-04-20' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (11, 12, 1, CAST(11472000.00 AS Numeric(18, 2)), CAST(N'2020-03-01' AS Date), CAST(N'2020-04-01' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (12, 13, 1, CAST(11472000.00 AS Numeric(18, 2)), CAST(N'2020-03-01' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (13, 14, 2, CAST(7860720.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), CAST(N'2020-04-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (14, 15, 2, CAST(7860720.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), CAST(N'2020-04-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (15, 16, 1, CAST(3816720.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), CAST(N'2020-04-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (16, 17, 1, CAST(3689310.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), NULL)
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (17, 18, 1, CAST(3243000.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), CAST(N'2020-04-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (18, 82, 1, CAST(3689310.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), CAST(N'2020-04-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (19, 20, 1, CAST(2150160.00 AS Numeric(18, 2)), CAST(N'2020-04-16' AS Date), CAST(N'2020-04-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (20, 21, 1, CAST(1705253.00 AS Numeric(18, 2)), CAST(N'2020-05-01' AS Date), CAST(N'2020-05-31' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (21, 22, 1, CAST(1784153.00 AS Numeric(18, 2)), CAST(N'2020-06-05' AS Date), CAST(N'2020-06-06' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (22, 23, 1, CAST(1445378.00 AS Numeric(18, 2)), CAST(N'2020-08-07' AS Date), CAST(N'2020-09-14' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (23, 24, 1, CAST(3582000.00 AS Numeric(18, 2)), CAST(N'2020-04-01' AS Date), CAST(N'2020-04-04' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (24, 25, 1, CAST(3582000.00 AS Numeric(18, 2)), CAST(N'2020-06-15' AS Date), CAST(N'2020-08-20' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (25, 26, 1, CAST(3927600.00 AS Numeric(18, 2)), CAST(N'2020-04-17' AS Date), CAST(N'2020-04-18' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (26, 27, 1, CAST(3522816.00 AS Numeric(18, 2)), CAST(N'2020-08-25' AS Date), CAST(N'2020-08-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (27, 28, 1, CAST(3060840.00 AS Numeric(18, 2)), CAST(N'2020-09-01' AS Date), NULL)
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (28, 29, 1, CAST(3542920.00 AS Numeric(18, 2)), CAST(N'2020-10-15' AS Date), CAST(N'2020-10-20' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (29, 30, 1, CAST(2760000.00 AS Numeric(18, 2)), CAST(N'2020-11-25' AS Date), CAST(N'2020-11-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (30, 31, 1, CAST(2280000.00 AS Numeric(18, 2)), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-28' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (31, 32, 1, CAST(2275250.00 AS Numeric(18, 2)), CAST(N'2020-06-15' AS Date), CAST(N'2020-06-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (33, 33, 1, CAST(2047628.57 AS Numeric(18, 2)), CAST(N'2020-07-04' AS Date), CAST(N'2020-07-30' AS Date))
INSERT [dbo].[Storage] ([id], [product_id], [qty], [total], [receipt_date], [expense_date]) VALUES (34, 34, 1, CAST(2047628.57 AS Numeric(18, 2)), CAST(N'2020-08-20' AS Date), CAST(N'2020-09-30' AS Date))
SET IDENTITY_INSERT [dbo].[Storage] OFF
GO
SET IDENTITY_INSERT [dbo].[SubsidiaryCovenants] ON 

INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (1, 1, N'Собственный капитал', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (2, 2, N'Финансовые вложения', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (3, 3, N'Валюта баланса', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (4, 4, N'Нераспределенная прибыль', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (6, 5, N'Просроченная ДЗ свыше 60 дней, тыс.руб.', CAST(0.00 AS Numeric(18, 2)), CAST(2636.29 AS Numeric(18, 2)), CAST(51013.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (7, 6, N'Лизинговый портфель', CAST(2949417.76 AS Numeric(18, 2)), CAST(3826991.16 AS Numeric(18, 2)), CAST(3747012.14 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (8, 7, N'Остаток лизинговых платежей по договорам лизинга, по которым имеется просроченная задолженность сроком свыше 90 дней', CAST(1374.51 AS Numeric(18, 2)), CAST(4711.51 AS Numeric(18, 2)), CAST(73771.92 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (9, 8, N' - из них портфель предстоящих лизинговых платежей по проблемным договорам лизинга', CAST(950.03 AS Numeric(18, 2)), CAST(3601.04 AS Numeric(18, 2)), CAST(59419.79 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (10, 9, N' - сумма просроченной задолженности по проблемным договорам всего', CAST(424.48 AS Numeric(18, 2)), CAST(1110.47 AS Numeric(18, 2)), CAST(14352.14 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (11, 10, N'Сумма изъятой техники', CAST(39017.65 AS Numeric(18, 2)), CAST(47354.87 AS Numeric(18, 2)), CAST(26592.90 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (12, 11, N'Кредитный портфель', CAST(1654267.00 AS Numeric(18, 2)), CAST(2234426.00 AS Numeric(18, 2)), CAST(2158551.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (13, 12, N'Задолженность компании по внутренним лизинговым договорам
', CAST(2095.97 AS Numeric(18, 2)), CAST(493.06 AS Numeric(18, 2)), CAST(82.55 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (14, 13, N'Сумма обязательств по выданным гарантиям
', CAST(0.00 AS Numeric(18, 2)), CAST(43549.40 AS Numeric(18, 2)), CAST(28412.41 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (15, 14, N'Сумма обязательств по выданным поручительствам
', CAST(0.00 AS Numeric(18, 2)), CAST(350000.00 AS Numeric(18, 2)), CAST(350000.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (16, 15, N'Средневзвешенный срок по лизинговому портфелю в годах
', CAST(3.67 AS Numeric(18, 2)), CAST(2.75 AS Numeric(18, 2)), CAST(2.75 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (17, 16, N'Средневзвешенная % ставка по кредитным договорам + 3%
', CAST(15.32 AS Numeric(18, 2)), CAST(14.90 AS Numeric(18, 2)), CAST(14.42 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (18, 17, N'Совокупный лизинговый портфель для расчета ковенант Сбербанка
', CAST(3029267.45 AS Numeric(18, 2)), CAST(3835266.97 AS Numeric(18, 2)), CAST(3891175.71 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (19, 18, N'Лизинговый портфель по проблемным лизингополучателям
', CAST(66855.58 AS Numeric(18, 2)), CAST(80719.64 AS Numeric(18, 2)), CAST(179028.09 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (20, 19, N'Амортизация за 2017 год
', CAST(81364.00 AS Numeric(18, 2)), CAST(81372.11 AS Numeric(18, 2)), CAST(248267.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (21, 20, N'Прочие доходы за последние 4 квартала
', CAST(152333.20 AS Numeric(18, 2)), CAST(139377.74 AS Numeric(18, 2)), CAST(282663.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (22, 21, N'Прочие расходы за последние 4 квартала
', CAST(153092.37 AS Numeric(18, 2)), CAST(147483.60 AS Numeric(18, 2)), CAST(275682.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (23, 22, N'Прибыль от продаж за последние 4 квартала
', CAST(206039.00 AS Numeric(18, 2)), CAST(257642.00 AS Numeric(18, 2)), CAST(230418.00 AS Numeric(18, 2)))
INSERT [dbo].[SubsidiaryCovenants] ([id], [position], [title], [2018], [2019], [2020]) VALUES (24, 23, N'Лизинг в составе себестоимости за последние 4 квартала
', CAST(872.24 AS Numeric(18, 2)), CAST(847.44 AS Numeric(18, 2)), CAST(834.66 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[SubsidiaryCovenants] OFF
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1110]  DEFAULT ((0)) FOR [c1110]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1120]  DEFAULT ((0)) FOR [c1120]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1150]  DEFAULT ((0)) FOR [c1150]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1160]  DEFAULT ((0)) FOR [c1160]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1170]  DEFAULT ((0)) FOR [c1170]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1180]  DEFAULT ((0)) FOR [c1180]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1190]  DEFAULT ((0)) FOR [c1190]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1210]  DEFAULT ((0)) FOR [c1210]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1220]  DEFAULT ((0)) FOR [c1220]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1230]  DEFAULT ((0)) FOR [c1230]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1240]  DEFAULT ((0)) FOR [c1240]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1250]  DEFAULT ((0)) FOR [c1250]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1260]  DEFAULT ((0)) FOR [c1260]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1310]  DEFAULT ((0)) FOR [c1310]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1320]  DEFAULT ((0)) FOR [c1320]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1340]  DEFAULT ((0)) FOR [c1340]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1350]  DEFAULT ((0)) FOR [c1350]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1360]  DEFAULT ((0)) FOR [c1360]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1370]  DEFAULT ((0)) FOR [c1370]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1410]  DEFAULT ((0)) FOR [c1410]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1420]  DEFAULT ((0)) FOR [c1420]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1450]  DEFAULT ((0)) FOR [c1450]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1510]  DEFAULT ((0)) FOR [c1510]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1520]  DEFAULT ((0)) FOR [c1520]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1530]  DEFAULT ((0)) FOR [c1530]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1540]  DEFAULT ((0)) FOR [c1540]
GO
ALTER TABLE [dbo].[Balance] ADD  CONSTRAINT [DF_Balance_c1550]  DEFAULT ((0)) FOR [c1550]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2110]  DEFAULT ((0)) FOR [c2110]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2120]  DEFAULT ((0)) FOR [c2120]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2210]  DEFAULT ((0)) FOR [c2210]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2220]  DEFAULT ((0)) FOR [c2220]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2310]  DEFAULT ((0)) FOR [c2310]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2320]  DEFAULT ((0)) FOR [c2320]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2330]  DEFAULT ((0)) FOR [c2330]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2340]  DEFAULT ((0)) FOR [c2340]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2350]  DEFAULT ((0)) FOR [c2350]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2410]  DEFAULT ((0)) FOR [c2410]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2421]  DEFAULT ((0)) FOR [c2421]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2430]  DEFAULT ((0)) FOR [c2430]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2450]  DEFAULT ((0)) FOR [c2450]
GO
ALTER TABLE [dbo].[FinanceResults] ADD  CONSTRAINT [DF_FinanceResults_c2460]  DEFAULT ((0)) FOR [c2460]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1170]  DEFAULT ((0)) FOR [c1170]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1230]  DEFAULT ((0)) FOR [c1230]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1240]  DEFAULT ((0)) FOR [c1240]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1310]  DEFAULT ((0)) FOR [c1310]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1350]  DEFAULT ((0)) FOR [c1350]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1370]  DEFAULT ((0)) FOR [c1370]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1410]  DEFAULT ((0)) FOR [c1410]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1450]  DEFAULT ((0)) FOR [c1450]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1510]  DEFAULT ((0)) FOR [c1510]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1520]  DEFAULT ((0)) FOR [c1520]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c1550]  DEFAULT ((0)) FOR [c1550]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2110]  DEFAULT ((0)) FOR [c2110]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2120]  DEFAULT ((0)) FOR [c2120]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2210]  DEFAULT ((0)) FOR [c2210]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2220]  DEFAULT ((0)) FOR [c2220]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2310]  DEFAULT ((0)) FOR [c2310]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2320]  DEFAULT ((0)) FOR [c2320]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2330]  DEFAULT ((0)) FOR [c2330]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2340]  DEFAULT ((0)) FOR [c2340]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2350]  DEFAULT ((0)) FOR [c2350]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2410]  DEFAULT ((0)) FOR [c2410]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2430]  DEFAULT ((0)) FOR [c2430]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2450]  DEFAULT ((0)) FOR [c2450]
GO
ALTER TABLE [dbo].[MutualTurnovers] ADD  CONSTRAINT [DF_MutualTurnovers_c2460]  DEFAULT ((0)) FOR [c2460]
GO
ALTER TABLE [dbo].[ParentCovenants] ADD  CONSTRAINT [DF_ParentCovenants_2018]  DEFAULT ((0)) FOR [2018]
GO
ALTER TABLE [dbo].[ParentCovenants] ADD  CONSTRAINT [DF_ParentCovenants_2019]  DEFAULT ((0)) FOR [2019]
GO
ALTER TABLE [dbo].[ParentCovenants] ADD  CONSTRAINT [DF_ParentCovenants_2020]  DEFAULT ((0)) FOR [2020]
GO
ALTER TABLE [dbo].[Storage] ADD  CONSTRAINT [DF_Storage_total]  DEFAULT ((0)) FOR [total]
GO
ALTER TABLE [dbo].[SubsidiaryCovenants] ADD  CONSTRAINT [DF_SubsidiaryCovenants_total]  DEFAULT ((0)) FOR [2018]
GO
ALTER TABLE [dbo].[SubsidiaryCovenants] ADD  CONSTRAINT [DF_SubsidiaryCovenants_y2020]  DEFAULT ((0)) FOR [2019]
GO
ALTER TABLE [dbo].[SubsidiaryCovenants] ADD  CONSTRAINT [DF_SubsidiaryCovenants_y2021]  DEFAULT ((0)) FOR [2020]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Incorporation] FOREIGN KEY([incorp_id])
REFERENCES [dbo].[Incorporation] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Incorporation]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Regions] FOREIGN KEY([region_id])
REFERENCES [dbo].[Regions] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Regions]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Clients] FOREIGN KEY([client_id])
REFERENCES [dbo].[Clients] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Clients]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Product]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Contract] FOREIGN KEY([contract_id])
REFERENCES [dbo].[Contract] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Contract]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([category_id])
REFERENCES [dbo].[ProductCategory] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
