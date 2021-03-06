CREATE DATABASE ABase
GO

USE [ABase]
GO
/****** Object:  Table [dbo].[City]    Script Date: 27/06/2017 08:19:12 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
/****** Object:  Table [dbo].[Customer]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[Deparment]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[DocumentType]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[Gender]    Script Date: 27/06/2017 08:19:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[ModulesByProfiles]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[ModuleType]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[PaymentType]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[Person]    Script Date: 27/06/2017 08:19:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[DocumentNumber] [varchar](15) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateBird] [date] NOT NULL,
	[GenderId] [tinyint] NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](12) NOT NULL,
	[CellphoneNumber] [varchar](12) NULL,
	[CreationDate] [datetime] NOT NULL CONSTRAINT [DF__Person__Creation__286302EC]  DEFAULT (getdate()),
 CONSTRAINT [PK__Person__3214EC07DD79E768] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[Profile]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
/****** Object:  Table [dbo].[UserAccount]    Script Date: 27/06/2017 08:19:14 a.m. ******/
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
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [DepartmentId], [Name], [Description], [Active]) VALUES (1, 1, N'Medellín', N'Medellin', 1)
INSERT [dbo].[City] ([Id], [DepartmentId], [Name], [Description], [Active]) VALUES (2, 1, N'Bello', N'Bello', 1)
INSERT [dbo].[City] ([Id], [DepartmentId], [Name], [Description], [Active]) VALUES (3, 1, N'Caldas', N'Caldas', 1)
INSERT [dbo].[City] ([Id], [DepartmentId], [Name], [Description], [Active]) VALUES (4, 1, N'Itagui', N'Itagui', 1)
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (1, 1, 0)
INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (3, 3, 1)
INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (36, 36, 1)
INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (42, 42, 1)
INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (43, 43, 1)
INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (46, 46, 1)
INSERT [dbo].[Customer] ([Id], [PersonId], [Active]) VALUES (47, 47, 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Deparment] ON 

INSERT [dbo].[Deparment] ([Id], [Name], [Description], [Active]) VALUES (1, N'Antioquia', N'Antioquia', 1)
INSERT [dbo].[Deparment] ([Id], [Name], [Description], [Active]) VALUES (2, N'Santa marta', N'Santa marta', 1)
INSERT [dbo].[Deparment] ([Id], [Name], [Description], [Active]) VALUES (3, N'Cartagena', N'Cartagena', 1)
SET IDENTITY_INSERT [dbo].[Deparment] OFF
SET IDENTITY_INSERT [dbo].[DocumentType] ON 

INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (1, N'Cedula', N'Cedula de ciudadania', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (2, N'Tarjeta de identidad', N'Tarjeta de identidad', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (3, N'Pasaporte', N'Pasaporte', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (4, N'NIT', N'Numero de identificacion tributario', 1)
INSERT [dbo].[DocumentType] ([Id], [Name], [Description], [Active]) VALUES (5, N'Registro civil', N'Registro civil', 1)
SET IDENTITY_INSERT [dbo].[DocumentType] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Name]) VALUES (1, N'Masculino')
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (2, N'Femenino')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (1, 1, 1, N'1152212727', N'Pedro Nel mod', N'Ospina Graciano Mod', CAST(N'1996-04-17' AS Date), 1, N'cra 72 B # 84 - 35', N'2572492', N'3002429195', CAST(N'2017-06-23 08:40:16.813' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (3, 1, 1, N'42821063', N'Diocelina', N'Graciano', CAST(N'1976-07-17' AS Date), 1, N'Cra 72 B #', N'2572492', NULL, CAST(N'2017-06-23 09:45:06.070' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (36, 1, 1, N'147531', N'Prueba', N'formulario CRUD', CAST(N'1998-07-08' AS Date), 1, N'cra 78 a 65 55', N'6546546', N'3002429598', CAST(N'2017-06-23 15:12:25.717' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (42, 1, 1, N'1017238424', N'Maria Isabel', N'Gómez Aristizabal', CAST(N'1996-08-15' AS Date), 2, N'Cra 55', N'2548532', NULL, CAST(N'2017-06-25 12:00:47.620' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (43, 1, 1, N'111111', N'Testing name create', N'Testing last name create', CAST(N'2017-06-26' AS Date), 1, N'Testing address create ', N'2222222', N'3333333333', CAST(N'2017-06-26 10:06:54.553' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (45, 1, 1, N'333333', N'Testing name delete', N'Testing last name delete', CAST(N'2017-06-26' AS Date), 1, N'Testing address delete ', N'2222222', N'3333333333', CAST(N'2017-06-26 10:06:57.060' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (46, 1, 1, N'444444', N'Testing name listed', N'Testing last name listed', CAST(N'2017-06-26' AS Date), 1, N'Testing address listed', N'2222222', N'3333333333', CAST(N'2017-06-26 10:06:57.867' AS DateTime))
INSERT [dbo].[Person] ([Id], [DocumentTypeId], [CityId], [DocumentNumber], [FirstName], [LastName], [DateBird], [GenderId], [Address], [PhoneNumber], [CellphoneNumber], [CreationDate]) VALUES (47, 1, 1, N'222222', N'Testing updated first name', N'Testing last name update', CAST(N'2017-06-27' AS Date), 1, N'Testing address update ', N'2222222', N'3333333333', CAST(N'2017-06-27 08:11:57.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[Person] OFF
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF__Module__ParentId__173876EA]  DEFAULT (NULL) FOR [ParentId]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK__City__Department__239E4DCF] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Deparment] ([Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK__City__Department__239E4DCF]
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
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK__Person__DocTypeI__267ABA7A] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentType] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK__Person__DocTypeI__267ABA7A]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Gender]
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
