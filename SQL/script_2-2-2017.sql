USE [FruitShop]
GO
/****** Object:  Table [dbo].[Anbar]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anbar](
	[MahsolatID] [int] NOT NULL,
	[MivehID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Count] [int] NULL,
	[Weight] [float] NULL,
 CONSTRAINT [PK_Anbar] PRIMARY KEY CLUSTERED 
(
	[MahsolatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ashkhas]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ashkhas](
	[AshkhasID] [int] IDENTITY(1,1) NOT NULL,
	[CodeMeli] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Family] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Tel] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ashkhas] PRIMARY KEY CLUSTERED 
(
	[AshkhasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarNameh]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarNameh](
	[BarNamehID] [int] IDENTITY(1,1) NOT NULL,
	[FK_BarNamehItemID] [int] NULL,
	[FK_AshkhasID] [int] NULL,
	[No_Bar] [int] NULL,
	[JamKharid] [int] NULL,
	[Takhfif] [int] NULL,
	[GhimatKol] [int] NULL,
	[Sh_Chek] [nvarchar](50) NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_BarNameh] PRIMARY KEY CLUSTERED 
(
	[BarNamehID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarNamehItem]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarNamehItem](
	[BarNamehItemID] [int] IDENTITY(1,1) NOT NULL,
	[Time] [datetime] NULL,
	[FK_AshkhasID] [int] NULL,
	[MivehID] [int] NULL,
	[Count] [int] NULL,
	[Vazn_Nakhales] [float] NULL,
	[Vazn_Khales] [float] NULL,
	[Vazn_Zarf] [float] NULL,
	[Ghimat] [int] NULL,
	[Kerayeh] [int] NULL,
	[JamKharid] [int] NULL,
	[GheymatForosh] [int] NULL,
 CONSTRAINT [PK_BarNamehItem] PRIMARY KEY CLUSTERED 
(
	[BarNamehItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[FK_UserID] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mahsolat]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahsolat](
	[MahsolatID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[OldPrice] [money] NULL,
	[NewPrice] [money] NULL,
	[Description] [nvarchar](500) NULL,
	[IsDiscount] [bit] NULL,
	[Type] [tinyint] NULL,
	[ImageUrl] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Mahsolat] PRIMARY KEY CLUSTERED 
(
	[MahsolatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manage]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manage](
	[ManageID] [int] NOT NULL,
	[FK_UserID] [int] NULL,
 CONSTRAINT [PK_Manage] PRIMARY KEY CLUSTERED 
(
	[ManageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Miveh]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Miveh](
	[MivehID] [int] IDENTITY(1,1) NOT NULL,
	[MahsolatID] [int] NULL,
	[Unit] [tinyint] NULL,
	[Amount] [nvarchar](100) NULL,
	[Type] [tinyint] NULL,
 CONSTRAINT [PK_Miveh] PRIMARY KEY CLUSTERED 
(
	[MivehID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SabtDaryafti]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SabtDaryafti](
	[SabtDaryaftiID] [int] IDENTITY(1,1) NOT NULL,
	[FK_SoratHesabID] [int] NULL,
	[Time] [datetime] NULL,
	[FK_UserID] [int] NULL,
	[Tozihat] [nvarchar](max) NULL,
	[MablaghKol] [int] NULL,
 CONSTRAINT [PK_SabtDaryafti] PRIMARY KEY CLUSTERED 
(
	[SabtDaryaftiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SabtPardakhti]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SabtPardakhti](
	[SabtPardakhtiID] [int] IDENTITY(1,1) NOT NULL,
	[FK_BarNamehID] [int] NULL,
	[Time] [datetime] NULL,
	[FK_AshkhasID] [int] NULL,
	[Tozihat] [nvarchar](50) NULL,
	[Mablagh] [int] NULL,
	[NumberCheck] [nvarchar](50) NULL,
	[TimeCheck] [date] NULL,
	[TimeTasviyeh] [date] NULL,
 CONSTRAINT [PK_SabtPardakhti] PRIMARY KEY CLUSTERED 
(
	[SabtPardakhtiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sabzijat]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sabzijat](
	[SabzijatID] [int] IDENTITY(1,1) NOT NULL,
	[MahsolatID] [int] NULL,
	[Unit] [tinyint] NULL,
	[Amount] [nvarchar](100) NULL,
	[Type] [tinyint] NULL,
 CONSTRAINT [PK_Sabzijat] PRIMARY KEY CLUSTERED 
(
	[SabzijatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoratHesab]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoratHesab](
	[SoratHesabID] [int] IDENTITY(1,1) NOT NULL,
	[FK_SoratHesabItemID] [int] NULL,
	[CodePeygiri] [int] NULL,
	[FK_UserID] [int] NULL,
	[Time] [datetime] NULL,
	[JamKol] [int] NULL,
	[Takhfif] [int] NULL,
	[GheymatKol] [int] NULL,
 CONSTRAINT [PK_SoratHesab] PRIMARY KEY CLUSTERED 
(
	[SoratHesabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoratHesabItem]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoratHesabItem](
	[SoratHesabItemID] [int] IDENTITY(1,1) NOT NULL,
	[FK_UserID] [int] NULL,
	[Time] [datetime] NULL,
	[MahsolatID] [int] NULL,
	[MivehID] [int] NULL,
	[Count] [int] NULL,
	[Wieght] [float] NULL,
	[Gheymat] [int] NULL,
	[JamKol] [int] NULL,
 CONSTRAINT [PK_SoratHesabItem] PRIMARY KEY CLUSTERED 
(
	[SoratHesabItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/2/2017 17:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[CodeMeli] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Family] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CodePosti] [int] NULL,
	[Type] [tinyint] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Anbar]  WITH CHECK ADD  CONSTRAINT [FK_Anbar_Mahsolat] FOREIGN KEY([MahsolatID])
REFERENCES [dbo].[Mahsolat] ([MahsolatID])
GO
ALTER TABLE [dbo].[Anbar] CHECK CONSTRAINT [FK_Anbar_Mahsolat]
GO
ALTER TABLE [dbo].[Anbar]  WITH CHECK ADD  CONSTRAINT [FK_Anbar_Miveh] FOREIGN KEY([MivehID])
REFERENCES [dbo].[Miveh] ([MivehID])
GO
ALTER TABLE [dbo].[Anbar] CHECK CONSTRAINT [FK_Anbar_Miveh]
GO
ALTER TABLE [dbo].[BarNameh]  WITH CHECK ADD  CONSTRAINT [FK_BarNameh_Ashkhas] FOREIGN KEY([FK_AshkhasID])
REFERENCES [dbo].[Ashkhas] ([AshkhasID])
GO
ALTER TABLE [dbo].[BarNameh] CHECK CONSTRAINT [FK_BarNameh_Ashkhas]
GO
ALTER TABLE [dbo].[BarNamehItem]  WITH CHECK ADD  CONSTRAINT [FK_BarNamehItem_Ashkhas] FOREIGN KEY([FK_AshkhasID])
REFERENCES [dbo].[Ashkhas] ([AshkhasID])
GO
ALTER TABLE [dbo].[BarNamehItem] CHECK CONSTRAINT [FK_BarNamehItem_Ashkhas]
GO
ALTER TABLE [dbo].[BarNamehItem]  WITH CHECK ADD  CONSTRAINT [FK_BarNamehItem_Miveh] FOREIGN KEY([MivehID])
REFERENCES [dbo].[Miveh] ([MivehID])
GO
ALTER TABLE [dbo].[BarNamehItem] CHECK CONSTRAINT [FK_BarNamehItem_Miveh]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Users] FOREIGN KEY([FK_UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Users]
GO
ALTER TABLE [dbo].[Manage]  WITH CHECK ADD  CONSTRAINT [FK_Manage_Users] FOREIGN KEY([FK_UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Manage] CHECK CONSTRAINT [FK_Manage_Users]
GO
ALTER TABLE [dbo].[Miveh]  WITH CHECK ADD  CONSTRAINT [FK_Miveh_Mahsolat] FOREIGN KEY([MahsolatID])
REFERENCES [dbo].[Mahsolat] ([MahsolatID])
GO
ALTER TABLE [dbo].[Miveh] CHECK CONSTRAINT [FK_Miveh_Mahsolat]
GO
ALTER TABLE [dbo].[SabtDaryafti]  WITH CHECK ADD  CONSTRAINT [FK_SabtDaryafti_SoratHesab] FOREIGN KEY([FK_SoratHesabID])
REFERENCES [dbo].[SoratHesab] ([SoratHesabID])
GO
ALTER TABLE [dbo].[SabtDaryafti] CHECK CONSTRAINT [FK_SabtDaryafti_SoratHesab]
GO
ALTER TABLE [dbo].[SabtDaryafti]  WITH CHECK ADD  CONSTRAINT [FK_SabtDaryafti_Users] FOREIGN KEY([FK_UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[SabtDaryafti] CHECK CONSTRAINT [FK_SabtDaryafti_Users]
GO
ALTER TABLE [dbo].[SabtPardakhti]  WITH CHECK ADD  CONSTRAINT [FK_SabtPardakhti_Ashkhas] FOREIGN KEY([FK_AshkhasID])
REFERENCES [dbo].[Ashkhas] ([AshkhasID])
GO
ALTER TABLE [dbo].[SabtPardakhti] CHECK CONSTRAINT [FK_SabtPardakhti_Ashkhas]
GO
ALTER TABLE [dbo].[SabtPardakhti]  WITH CHECK ADD  CONSTRAINT [FK_SabtPardakhti_BarNameh] FOREIGN KEY([FK_BarNamehID])
REFERENCES [dbo].[BarNameh] ([BarNamehID])
GO
ALTER TABLE [dbo].[SabtPardakhti] CHECK CONSTRAINT [FK_SabtPardakhti_BarNameh]
GO
ALTER TABLE [dbo].[Sabzijat]  WITH CHECK ADD  CONSTRAINT [FK_Sabzijat_Mahsolat] FOREIGN KEY([MahsolatID])
REFERENCES [dbo].[Mahsolat] ([MahsolatID])
GO
ALTER TABLE [dbo].[Sabzijat] CHECK CONSTRAINT [FK_Sabzijat_Mahsolat]
GO
ALTER TABLE [dbo].[SoratHesab]  WITH CHECK ADD  CONSTRAINT [FK_SoratHesab_SoratHesabItem] FOREIGN KEY([FK_SoratHesabItemID])
REFERENCES [dbo].[SoratHesabItem] ([SoratHesabItemID])
GO
ALTER TABLE [dbo].[SoratHesab] CHECK CONSTRAINT [FK_SoratHesab_SoratHesabItem]
GO
ALTER TABLE [dbo].[SoratHesab]  WITH CHECK ADD  CONSTRAINT [FK_SoratHesab_Users] FOREIGN KEY([FK_UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[SoratHesab] CHECK CONSTRAINT [FK_SoratHesab_Users]
GO
ALTER TABLE [dbo].[SoratHesabItem]  WITH CHECK ADD  CONSTRAINT [FK_SoratHesabItem_Mahsolat] FOREIGN KEY([MahsolatID])
REFERENCES [dbo].[Mahsolat] ([MahsolatID])
GO
ALTER TABLE [dbo].[SoratHesabItem] CHECK CONSTRAINT [FK_SoratHesabItem_Mahsolat]
GO
ALTER TABLE [dbo].[SoratHesabItem]  WITH CHECK ADD  CONSTRAINT [FK_SoratHesabItem_Miveh] FOREIGN KEY([MivehID])
REFERENCES [dbo].[Miveh] ([MivehID])
GO
ALTER TABLE [dbo].[SoratHesabItem] CHECK CONSTRAINT [FK_SoratHesabItem_Miveh]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'شامل تخفی شده است' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mahsolat', @level2type=N'COLUMN',@level2name=N'IsDiscount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'واحد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Miveh', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مقدار' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Miveh', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'واحد' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sabzijat', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'مقدار' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sabzijat', @level2type=N'COLUMN',@level2name=N'Amount'
GO
