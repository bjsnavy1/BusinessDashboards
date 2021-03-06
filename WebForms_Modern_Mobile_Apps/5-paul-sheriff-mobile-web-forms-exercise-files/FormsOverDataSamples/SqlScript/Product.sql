/****** Object:  Table [dbo].[Product]    Script Date: 01/25/2013 10:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[IntroductionDate] [datetime] NULL,
	[Cost] [money] NULL,
	[Price] [money] NULL,
	[IsDiscontinued] [bit] NULL,
 CONSTRAINT [PK__Product] PRIMARY KEY NONCLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (1, N'PDSA Productivity Framework', null, 22.0000, 5000.0000, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (2, N'Architecting ASP.NET eBook', CAST(0x00009BE200000000 AS DateTime), null, 12.0000, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (3, N'Introduction to N-Tier Book', CAST(0x000097D600000000 AS DateTime), 10.0000, null, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (4, N'Security for ASP.NET Developers eBook', CAST(0x0000927300000000 AS DateTime), 10.0000, 19.9500, null)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (5, N'PDSA IT Manager''s Toolkit', CAST(0x000091C400000000 AS DateTime), 2000.0000, 4000.0000, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (6, N'VB.NET Fundamentals eBook', CAST(0x000094F400000000 AS DateTime), 12.0000, 19.9500, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (7, N'Introduction to SQL Server 2000', CAST(0x000095D900000000 AS DateTime), 10.0000, 19.9500, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (8, N'Using SharePoint 2003', CAST(0x0000964800000000 AS DateTime), 10.0000, 14.9500, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (9, N'Developing SharePoint Web Parts22', CAST(0x0000966800000000 AS DateTime), 10.0000, 19.9500, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (10, N'PDSA Web Authoring System', CAST(0x0000935900000000 AS DateTime), 2500.0000, 5000.0000, 0)
INSERT [dbo].[Product] ([ProductId], [ProductName], [IntroductionDate], [Cost], [Price], [IsDiscontinued]) VALUES (46, N'Gretsch Catalina Drums', CAST(0x00009B8400000000 AS DateTime), 300.0000, 600.0000, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
