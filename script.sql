USE [MIPRES]
GO
/****** Object:  Table [dbo].[CIS]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CIS](
	[CodHabIPS] [varchar](20) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EPS]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EPS](
	[Codigo] [varchar](12) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [char](10) NOT NULL,
 CONSTRAINT [PK_EPS] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormaFarmaceutica]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormaFarmaceutica](
	[Codigo] [varchar](12) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FormasFarmaceutica] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[CodDANEMunIPS] [varchar](10) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED 
(
	[CodDANEMunIPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesional]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesional](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoRegistro] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[NumeroDocumento] [varchar](30) NOT NULL,
	[CodigoEspecialidad] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Profesional] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServicioComplementario]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServicioComplementario](
	[Codigo] [varchar](5) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ServicioComplementario] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Codigo] [char](2) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnidadeMedida]    Script Date: 15/06/2017 17:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnidadeMedida](
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_UnidadMedida] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'050010556805', N'ARANJUEZ')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'050010556806', N'SAN IGNACIO')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'050010556813', N'MANRIQUE')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'050010556827', N'CIS LA 80')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'050880556807', N'BELLO')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'051290556809', N'CALDAS')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'052120556828', N'COPACABANA')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'052660556810', N'ENVIGADO')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'053080556814', N'GIRARDOTA')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'053600556817', N'ITAGUI')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'053760556811', N'LA CEJA')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'056150556812', N'RIONEGRO')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'056310556815', N'SABANETA')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'050450556820', N'APARTADO')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'058370556832', N'TURBO')
INSERT [dbo].[CIS] ([CodHabIPS], [Descripcion]) VALUES (N'051720556833', N'CHIGORODO')
INSERT [dbo].[EPS] ([Codigo], [Nombre], [Estado]) VALUES (N'EPS010', N'EPS SURA', N'ACTIVO    ')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C28944', N'CREMA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C29167', N'LOCION')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C29269', N'ENJUAGUE')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42887', N'AEROSOL')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42909', N'GRANULOS EFERVESCENTES')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42912', N'ELIXIR')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42932', N'CINTA ADHESIVA / PELICULA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42933', N'GAS')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42938', N'GRANULOS CONVENCIONALES')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42941', N'GOMA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42942', N'IMPLANTE')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42948', N'GELES y JALEAS')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42953', N'LIQUIDO (Diferentes a soluciones)')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42966', N'UNGUENTO')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42967', N'PASTA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42968', N'SISTEMAS TRASNDERMICOS')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42969', N'PELLETS')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42983', N'JABONES Y CHAMPU')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42989', N'ESPRAY')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42993', N'SUPOSITORIO / OVULO')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42994', N'SUSPENSION')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C42996', N'JARABE')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C43000', N'TINTURA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C47913', N'EMPLASTO')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C47914', N'TIRA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C47915', N'SISTEMAS INTRAUTERINOS')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C64898', N'ESPUMA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C69031', N'SISTEMAS OCULARES')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'C91199', N'SISTEMAS DE ANILLOS VAGINALES')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF001', N'TABLETAS DE LIBERACION NO MODIFICADA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF002', N'POLVOS PARA NO RECONSTITUIR')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF003', N'POLVOS PARA RECONSTITUIR')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF004', N'OTRAS SOLUCIONES')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF005', N'OTRAS EMULSIONES')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF006', N'CAPSULAS DE LIBERACION NO MODIFICADA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF007', N'CAPSULAS DE LIBERACION MODIFICADA')
INSERT [dbo].[FormaFarmaceutica] ([Codigo], [Descripcion]) VALUES (N'COLFF008', N'TABLETAS DE LIBERACION MODIFICADA')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05001', N'MEDELLIN')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05045', N'APARTADO')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05088', N'BELLO')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05129', N'CALDAS')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05172', N'CHIGORODO')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05212', N'COPACABANA')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05266', N'ENVIGADO')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05308', N'GIRARDOTA')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05360', N'ITAGUI')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05376', N'LA CEJA')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05615', N'RIONEGRO')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05631', N'SABANETA')
INSERT [dbo].[Municipio] ([CodDANEMunIPS], [Descripcion]) VALUES (N'05837', N'TURBO')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'CC', N'Cédula de ciudadanía')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'CD', N'Carné Diplomático')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'CE', N'Cedula de extranjería')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'NI', N'NIT')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'NV', N'Nacido Vivo')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'PA', N'Pasaporte')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'PR', N'Pasaporte de la ONU')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'RC', N'Registro Civil')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'SC', N'Salvoconducto de permanencia')
INSERT [dbo].[TipoDocumento] ([Codigo], [Descripcion]) VALUES (N'TI', N'Tarjeta de Identidad')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0001', N'EID50', N'dosis infecciosa de embrión 50')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0002', N'EID50/dosis', N'dosis infecciosa de embrión 50/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0003', N'AU/ml', N'unidades de alergia/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0004', N'A', N'amperio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0005', N'AgU', N'unidad(es) de antígeno')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0006', N'AgU/ml', N'unidad(es) de antígeno/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0007', N'ATU', N'unidades de antitrombina')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0008', N'anti-Xa IU', N'unidades internacionales de actividad anti-Xa')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0009', N'anti-Xa IU/ml', N'unidades internacionales de actividad anti-Xa/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0010', N'Bq', N'bequerel(ios)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0011', N'Bq/g', N'bequerel(ios)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0012', N'Bq/kg', N'bequerel(ios)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0013', N'Bq/l', N'bequerel(ios)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0014', N'Bq/µg', N'bequerel(ios)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0015', N'Bq/µl', N'bequerel(ios)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0016', N'Bq/mg', N'bequerel(ios)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0017', N'Bq/ml', N'bequerel(ios)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0018', N'billon CFU', N'billon de unidades formadoras de colonia')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0019', N'billon CFU/g', N'billon de unidades formadoras de colonia/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0020', N'billon CFU/ml', N'billon de unidades formadoras de colonia/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0021', N'billon de organismos', N'billon de organismos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0022', N'billon de organismos/g', N'billon de organismos/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0023', N'billon de organismos/mg', N'billon de organismos/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0024', N'billon de organismos/ml', N'billon de organismos/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0025', N'cd', N'candela')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0026', N'CCID50', N'dosis infecciosa cultivo celular 50')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0027', N'CCID50/dosis', N'dosis infecciosa cultivo celular 50/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0028', N'°C', N'temperatura en Celsius')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0029', N'CFU/g', N'unidades formadoras de colonias/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0030', N'CFU/ml', N'nidades formadoras de colonias/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0031', N'Co', N'culombio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0032', N'm3', N'metro cúbico')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0033', N'Ci', N'curio(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0034', N'Ci/g', N'curie(s)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0035', N'Ci/kg', N'curie(s)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0036', N'Ci/litro', N'curie(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0037', N'Ci/µg', N'curie(s)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0038', N'Ci/µl', N'curie(s)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0039', N'Ci/mg', N'curie(s)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0040', N'Ci/ml', N'curie(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0041', N'DAgU', N'unidad(es) de Antigeno D')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0042', N'DAgU/ml', N'unidad(es) de Antigeno D/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0043', N'd', N'dia')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0044', N'°', N'grado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0045', N'DF', N'forma de dosificación')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0046', N'Gtt', N'gota(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0047', N'unidades ELISA', N'unidad de ensayo inmunoenzimático')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0048', N'unidades ELISA/dosis', N'unidad de ensayo inmunoenzimático/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0049', N'unidades ELISA/ml', N'unidad de ensayo inmunoenzimático/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0050', N'F', N'faradio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0051', N'FAI50', N'ensayo fluorescente dosis infecciosa 50')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0052', N'FAI50/dosis', N'ensayo fluorescente dosis infecciosa 50/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0053', N'GBq', N'gigabecquerel(ios)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0054', N'GBq/g', N'gigabecquerel/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0055', N'GBq/kg', N'gigabecquerel/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0056', N'GBq/l', N'gigabecquerel/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0057', N'GBq/µg', N'gigabecquerel/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0058', N'GBq/µl', N'gigabecquerel/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0059', N'GBq/mg', N'gigabecquerel/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0060', N'GBq/ml', N'gigabecquerel/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0061', N'g (titre)', N'gramo (titre)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0062', N'g', N'gramo(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0063', N'g/m3', N'gramo/metro cúbico')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0064', N'g/l', N'gramo/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0065', N'g/ml', N'gramo/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0066', N'g/m2', N'gramo/metro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0067', N'Gy', N'gray')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0068', N'H', N'henrio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0069', N'Hz', N'hertz')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0070', N'h', N'hora')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0071', N'IOU', N'unidad(es) internacional(es) de opacidad')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0072', N'UI', N'unidad(es) internacional(es)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0073', N'UI/g', N'unidad(es) internacional(es)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0074', N'UI/kg', N'unidad(es) internacional(es)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0075', N'UI/l', N'unidad(es) internacional(es)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0076', N'UI/mg', N'unidad(es) internacional(es)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0077', N'UI/ml', N'unidad(es) internacional(es)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0078', N'J', N'julio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0079', N'KIU/ml', N'unidad calicreína inactivador/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0080', N'kat', N'katal')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0081', N'K', N'kelvin')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0082', N'kUI', N'unidad internacional de kilo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0083', N'unidades Kusp', N'unidad de la Farmacopea de los Estados Unidos de kilo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0084', N'unidades k', N'unidades kilo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0085', N'kBq', N'kilobecquerel(ios)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0086', N'kBq/g', N'kilobecquerel(ios)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0087', N'kBq/kg', N'kilobecquerel(ios)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0088', N'kBq/l', N'kilobecquerel(ios)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0089', N'kBq/µg', N'kilobecquerel(ios)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0090', N'kBq/µl', N'kilobecquerel(ios)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0091', N'kBq/mg', N'kilobecquerel(ios)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0092', N'kBq/ml', N'kilobecquerel(ios)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0093', N'kg', N'kilogramo(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0094', N'kg/m3', N'kilogramo(s)/metro cúbico')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0095', N'kg/l', N'kilogramo(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0096', N'kg/m2', N'kilogramo(s)/metro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0097', N'LacU', N'unidades de lactasa')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0098', N'LfU', N'unidades de floculación (lime flocculation unit(s))')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0099', N'LfU/ml', N'unidades de floculación (lime flocculation unit(s))/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0100', N'l', N'litro(s)')
GO
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0101', N'log10 EID50', N'log 10 50% dosis infecciosa de embrión')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0102', N'log10 EID51/dosis', N'log 10 50% dosis infecciosa de embrión/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0103', N'log10 CCID50', N'log10 dosis infecciosa cultivo celular 50')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0104', N'log10 CCID50/dosis', N'log10 dosis infecciosa de cultivo celular 50/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0105', N'log10 unidades ELISA', N'log10 unidad de ensayo inmunoenzimático')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0106', N'log10 unidades ELISA/dosis', N'log10 unidad de ensayo inmunoenzimático/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0107', N'log10 FAI50', N'log10 ensayo fluorescente dosis infecciosa del 50%')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0108', N'log10 FAI50/dosis', N'log10 ensayo fluorescente dosis infecciosa del 50%/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0109', N'log10 PFU', N'log10 unidad(es) formadoras de placa')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0110', N'log10 PFU/dosis', N'log10 unidad(es) formadoras de placa/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0111', N'log10 TCID50', N'log10 dosis infecciosa de cultivo tisular 50% ')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0112', N'log10 TCID50/dosis', N'log10 dosis infecciosa de cultivo tisular 50%/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0113', N'log10/ml', N'log10/ml')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0114', N'LU', N'unidades de loomis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0115', N'LU/g', N'unidades de loomis/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0116', N'LU/ml', N'unidades de loomis/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0117', N'lm', N'lumen')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0118', N'lx', N'lux')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0119', N'unidades MUSP', N'mega; unidad de la Farmacopea de los Estados Unidos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0120', N'MBq', N'megabecquerel(ios)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0121', N'MBq/g', N'megabecquerel(ios)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0122', N'MBq/kg', N'megabecquerel(ios)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0123', N'MBq/l', N'megabecquerel(ios)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0124', N'MBq/µg', N'megabecquerel(ios)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0125', N'MBq/µl', N'megabecquerel(ios)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0126', N'MBq/mg', N'megabecquerel(ios)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0127', N'MBq/ml', N'megabecquerel(ios)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0128', N'm', N'metro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0129', N'µCi', N'microcurio(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0130', N'µCi/g', N'microcurio(s)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0131', N'µCi/kg', N'microcurio(s)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0132', N'µCi/l', N'microcurio(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0133', N'µCi/µg', N'microcurio(s)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0134', N'µCi/µl', N'microcurio(s)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0135', N'µCi/mg', N'microcurio(s)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0136', N'µCi/ml', N'microcurio(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0137', N'µg', N'microgramo(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0138', N'µg/m3', N'microgramo(s)/metro cúbico')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0139', N'µg/kg', N'microgramo(s)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0140', N'µg/l', N'microgramo(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0141', N'µg/µl', N'microgramo(s)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0142', N'µg/ml', N'microgramo(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0143', N'µg/m2', N'microgramo(s)/metro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0144', N'µkat', N'microkatal')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0145', N'µkat', N'microkatales')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0146', N'µl', N'microlitro(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0147', N'µl/ml', N'microlitro(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0148', N'µmol', N'micromol(es)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0149', N'µmol/l', N'micromol(es)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0150', N'µmol/ml', N'micromol(es)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0151', N'mCi', N'milicurio(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0152', N'mCi/g', N'milicurio(s)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0153', N'mCi/kg', N'milicurio(s)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0154', N'mCi/l', N'milicurio(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0155', N'mCi/µg', N'milicurio(s)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0156', N'mCi/µl', N'milicurio(s)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0157', N'mCi/mg', N'milicurio(s)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0158', N'mCi/ml', N'milicurio(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0159', N'mEq', N'miliequivalente(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0160', N'mEq/g', N'miliequivalente(s)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0161', N'mEq/kg', N'miliequivalente(s)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0162', N'mEq/l', N'miliequivalente(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0163', N'mEq/µg', N'miliequivalente(s)/microgramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0164', N'mEq/µl', N'miliequivalente(s)/microlitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0165', N'mEq/mg', N'miliequivalente(s)/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0166', N'mEq/ml', N'miliequivalente(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0167', N'mg (titer)', N'miligramo (titer)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0168', N'mg', N'miligramo(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0169', N'mg/m3', N'miligramo(s)/metro cúbico')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0170', N'mg/g', N'miligramo(s)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0171', N'mg/kg', N'miligramo(s)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0172', N'mg/l', N'miligramo(s)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0173', N'mg/ml', N'miligramo(s)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0174', N'mg/m2', N'miligramo(s)/metro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0175', N'mkatal', N'milikatal')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0176', N'ml', N'mililitro(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0177', N'ml/cm2', N'mililitro(s)/centímetro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0178', N'mm', N'milimetro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0179', N'mmol', N'milimol(es)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0180', N'mmol/g', N'milimol(es)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0181', N'mmol/kg', N'milimol(es)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0182', N'mmol/l', N'milimol(es)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0183', N'mmol/ml', N'milimol(es)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0184', N'millon UFC', N'millones de unidades formadoras de colonias')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0185', N'millon UFC/g', N'millones de unidades formadoras de colonias/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0186', N'millon UFC/ml', N'millones de unidades formadoras de colonias/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0187', N'millon UI', N'millones de unidadades internacionales')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0188', N'millon de organismos', N'millon de organismos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0189', N'millon de organismos/g', N'millon de organismos/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0190', N'millon de organismos/mg', N'millon de organismos/miligramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0191', N'millon de organismos/ml', N'millon de organismos/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0192', N'millon de unidades USP', N'millon de unidades de la Farmacopea de los Estados Unidos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0193', N'millon de unidades', N'millon de unidades')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0194', N'mOsm/kg', N'miliosmol(es)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0195', N'min', N'minuto')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0196', N'mol', N'mol(es)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0197', N'mol/g', N'mol(es)/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0198', N'mol/kg', N'mol(es)/kilogramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0199', N'mol/l', N'mol(es)/litro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0200', N'mol/mg', N'mol(es)/miligramo')
GO
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0201', N'mol/ml', N'mol(es)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0202', N'nCi', N'nanocurio(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0203', N'ng', N'nanogramo(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0204', N'nkat', N'nanokatal')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0205', N'nl', N'nanolitro(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0206', N'nmol', N'nanomol(es)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0207', N'nmol/ml', N'nanomol(es)/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0208', N'N', N'newton')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0209', N'unidades NIH/cm2', N'NIH unidades de trombina inactivada/centímetro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0210', N'?', N'ohmio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0211', N'OZ', N'onza')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0212', N'PPM', N'parte por millon')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0213', N'PPM', N'pascal')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0214', N'%', N'porcentaje')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0215', N'% (v/v)', N'porcentaje volumen/volumen')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0216', N'% (p/v)', N'porcentaje peso/volumen')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0217', N'% (p/p)', N'porcentaje peso/peso')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0218', N'pg', N'picogramo(s)')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0219', N'pkat', N'picokatal')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0220', N'PFU', N'unidades formadoras de placa')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0221', N'PFU e. 1000 LD50 en ratón', N'unidad formadora de placa equivalente a  1000 DL50 en ratón')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0222', N'PFU/dosis', N'unidades formadoras de placa/dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0223', N'PFU/ml', N'unidades formadoras de placa/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0224', N'unidad formadora de viruela', N'unidad(es) formadoras de viruela')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0225', N'LB', N'libra')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0226', N'unidades de presión/ml', N'unidades de presión/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0227', N'PNU/ml', N'unidades de nitrogeno proteico/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0228', N'QS', N'cantidad suficiente')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0229', N'r/min', N'revoluciones/minuto')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0230', N's', N'segundos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0231', N'S', N'siemens')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0232', N'Sv', N'sievert')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0233', N'cm2', N'centímetro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0234', N'm2', N'metro cuadrado')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0235', N'T', N'tesla')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0236', N'miles CFU', N'miles de unidades formadoras de colonia')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0237', N'miles CFU/g', N'miles de unidades formadoras de colonia/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0238', N'miles CFU/ml', N'miles de unidades formadoras de colonia/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0239', N'miles de organismos', N'miles de organismos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0240', N'miles de organismos/g', N'miles de organismos/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0241', N'miles de organismos/ml', N'miles de organismos/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0242', N'TCID50/dosis', N'dosis infecciosa de cultivo tisular 50/ dosis')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0243', N'titre', N'titre')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0244', N't', N'tonelada')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0245', N'unidad de tuberculina', N'unidad(es) de tuberculina')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0246', N'unidad de tuberculina/ml', N'unidad(es) de tuberculina/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0247', N'U', N'unidades')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0248', N'U/g', N'unidades/gramo')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0249', N'U/ml', N'unidades/mililitro')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0250', N'unidades USP', N'unidades de la Farmacopea de los Estados Unidos')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0251', N'V', N'voltio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0252', N'W', N'vatio')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'0253', N'Wb', N'weber')
INSERT [dbo].[UnidadeMedida] ([Codigo], [Nombre], [Descripcion]) VALUES (N'9000', N'Dosis', N'Dosis')
