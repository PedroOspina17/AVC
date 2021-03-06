USE [master]
GO

CREATE DATABASE [Pos]
GO
USE [Pos]
GO 
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Active] [int] NOT NULL,
 CONSTRAINT [PK__City__3214EC07FA5481D6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CountCash]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountCash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Base] [money] NOT NULL,
	[Sales] [money] NOT NULL,
	[Refunds] [money] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK__CountCas__3214EC07B2155539] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Customer__3214EC07D144BECB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deparment]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deparment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Deparmen__3214EC07056E68BA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Document__3214EC078AB72186] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Employee__3214EC07C00014B8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Module]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModTypeId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Path] [varchar](500) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Module__3214EC075FD16E1B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModulesByProfiles]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModulesByProfiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NOT NULL,
	[ProfileId] [int] NOT NULL,
	[CanRead] [bit] NOT NULL,
	[CanWrite] [bit] NOT NULL,
 CONSTRAINT [PK__ModulesB__3214EC075791EDCE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleType]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModuleType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__ModuleTy__3214EC07236CF55C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__PaymentT__3214EC07450C4347] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocTypeId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[DocumentNumber] [varchar](15) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateBird] [date] NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[CellphoneNumber] [varchar](12) NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK__Person__3214EC07DD79E768] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
	[Price] [money] NOT NULL,
	[Active] [bit] NOT NULL,
	[TaxPercent] [float] NOT NULL,
 CONSTRAINT [PK__Product__3214EC07A1718AEE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Profile__3214EC07A9E71C84] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Total] [money] NOT NULL,
	[Discount] [money] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Tax] [money] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Sale__3214EC079D76A9C4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleDetails]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Discount] [money] NOT NULL,
	[Amount] [money] NOT NULL,
 CONSTRAINT [PK__SaleDeta__3214EC07750A5572] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalePayment]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePayment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleId] [int] NOT NULL,
	[PaymentTypeId] [int] NOT NULL,
	[Amount] [money] NOT NULL,
 CONSTRAINT [PK__SalePaym__3214EC0739DA1A33] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 16/06/2017 07:10:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ProfileId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](300) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK__UserAcco__3214EC070B057BF2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DocumentType] ON 

INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (1, N'Cedula', N'Cedula de ciudadania', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (2, N'Tarjeta de identidad', N'Tarjeta de identidad', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (3, N'Pasaporte', N'Pasaporte', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (4, N'NIT', N'Numero de identificacion tributario', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (5, N'Registro civil', N'Registro civil', 1)
SET IDENTITY_INSERT [dbo].[DocumentType] OFF
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__ParentId__173876EA]  DEFAULT (NULL) FOR [ParentId]
GO
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF__Person__Creation__286302EC]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK__City__Department__239E4DCF] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Deparment] ([Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK__City__Department__239E4DCF]
GO
ALTER TABLE [dbo].[CountCash]  WITH CHECK ADD  CONSTRAINT [FK__CountCash__Emplo__4316F928] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[CountCash] CHECK CONSTRAINT [FK__CountCash__Emplo__4316F928]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Person__30F848ED] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Person__30F848ED]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK__Employee__Person__2B3F6F97] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK__Employee__Person__2B3F6F97]
GO
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [FK__Module__ModTypeI__15502E78] FOREIGN KEY([ModTypeId])
REFERENCES [dbo].[ModuleType] ([Id])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [FK__Module__ModTypeI__15502E78]
GO
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [FK__Module__ParentId__164452B1] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [FK__Module__ParentId__164452B1]
GO
ALTER TABLE [dbo].[ModulesByProfiles]  WITH CHECK ADD  CONSTRAINT [FK__ModulesBy__Modul__1BFD2C07] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[ModulesByProfiles] CHECK CONSTRAINT [FK__ModulesBy__Modul__1BFD2C07]
GO
ALTER TABLE [dbo].[ModulesByProfiles]  WITH CHECK ADD  CONSTRAINT [FK__ModulesBy__Profi__1CF15040] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO
ALTER TABLE [dbo].[ModulesByProfiles] CHECK CONSTRAINT [FK__ModulesBy__Profi__1CF15040]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK__Person__CityId__276EDEB3] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK__Person__CityId__276EDEB3]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK__Person__DocTypeI__267ABA7A] FOREIGN KEY([DocTypeId])
REFERENCES [dbo].[DocumentType] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK__Person__DocTypeI__267ABA7A]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK__Sale__CustomerId__35BCFE0A] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK__Sale__CustomerId__35BCFE0A]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK__Sale__EmployeeId__36B12243] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK__Sale__EmployeeId__36B12243]
GO
ALTER TABLE [dbo].[SaleDetails]  WITH CHECK ADD  CONSTRAINT [FK__SaleDetai__Produ__3A81B327] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[SaleDetails] CHECK CONSTRAINT [FK__SaleDetai__Produ__3A81B327]
GO
ALTER TABLE [dbo].[SaleDetails]  WITH CHECK ADD  CONSTRAINT [FK__SaleDetai__SaleI__398D8EEE] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SaleDetails] CHECK CONSTRAINT [FK__SaleDetai__SaleI__398D8EEE]
GO
ALTER TABLE [dbo].[SalePayment]  WITH CHECK ADD  CONSTRAINT [FK__SalePayme__Payme__403A8C7D] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentType] ([Id])
GO
ALTER TABLE [dbo].[SalePayment] CHECK CONSTRAINT [FK__SalePayme__Payme__403A8C7D]
GO
ALTER TABLE [dbo].[SalePayment]  WITH CHECK ADD  CONSTRAINT [FK__SalePayme__SaleI__3F466844] FOREIGN KEY([SaleId])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SalePayment] CHECK CONSTRAINT [FK__SalePayme__SaleI__3F466844]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK__UserAccou__Emplo__5070F446] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK__UserAccou__Emplo__5070F446]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK__UserAccou__Profi__5165187F] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK__UserAccou__Profi__5165187F]
GO
USE [master]
GO
ALTER DATABASE [Pos] SET  READ_WRITE 
GO
