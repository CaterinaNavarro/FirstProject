USE [LagashBackOffice]
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 12/12/2018 10:39:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase](
	[IdClase] [int] IDENTITY(1,1) NOT NULL,
	[NumeroClase] [int] NOT NULL,
	[IdEdicion] [int] NOT NULL,
	[IdResponsable1] [int] NOT NULL,
	[IdResponsable2] [int] NULL,
	[Fecha] [date] NOT NULL,
	[TituloClase] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Clase__003FCC6F9781A3DE] PRIMARY KEY CLUSTERED 
(
	[IdClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domicilio](
	[IdDomicilio] [int] IDENTITY(1,1) NOT NULL,
	[IdPais] [int] NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[NumeroCalle] [varchar](10) NOT NULL,
	[Piso] [varchar](10) NULL,
	[Departamento] [varchar](10) NULL,
	[Localidad] [varchar](100) NOT NULL,
	[Provincia] [varchar](100) NOT NULL,
	[CodigoPostal] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Domicili__1648AD8A16A61A95] PRIMARY KEY CLUSTERED 
(
	[IdDomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Edicion]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edicion](
	[IdEdicion] [int] IDENTITY(5,1) NOT NULL,
	[NumeroEdicion] [int] NOT NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[CantidadPostulantes] [int] NOT NULL,
	[IdLocacion] [int] NOT NULL,
 CONSTRAINT [PK__Edicion__3769F5F41A058AFC] PRIMARY KEY CLUSTERED 
(
	[IdEdicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locacion]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locacion](
	[IdLocacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Locacion] PRIMARY KEY CLUSTERED 
(
	[IdLocacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulante]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante](
	[IdPostulante] [int] IDENTITY(1,1) NOT NULL,
	[IdDomicilio] [int] NOT NULL,
	[Rol] [varchar](50) NOT NULL,
	[IdEdicion] [int] NOT NULL,
	[DNI] [varchar](50) NOT NULL,
	[NombreyApellido] [varchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[GitHub] [varchar](255) NULL,
	[LinkedIn] [varchar](255) NULL,
	[Equipo] [varchar](50) NULL,
 CONSTRAINT [PK__Postulan__D8831F4D7A4CAB03] PRIMARY KEY CLUSTERED 
(
	[IdPostulante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responsable]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responsable](
	[IdResponsable] [int] IDENTITY(1,1) NOT NULL,
	[NombreyApellido] [varchar](100) NOT NULL,
	[IdEdicion] [int] NULL,
 CONSTRAINT [PK__Responsa__CCF9B550E3D687C9] PRIMARY KEY CLUSTERED 
(
	[IdResponsable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tema]    Script Date: 12/12/2018 10:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tema](
	[IdTema] [int] IDENTITY(1,1) NOT NULL,
	[TituloTema] [varchar](100) NOT NULL,
	[IdClase] [int] NOT NULL,
 CONSTRAINT [PK__Subtema__4B8B3528BC50E6E2] PRIMARY KEY CLUSTERED 
(
	[IdTema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clase]  WITH CHECK ADD  CONSTRAINT [FK_Clase_Edicion] FOREIGN KEY([IdEdicion])
REFERENCES [dbo].[Edicion] ([IdEdicion])
GO
ALTER TABLE [dbo].[Clase] CHECK CONSTRAINT [FK_Clase_Edicion]
GO
ALTER TABLE [dbo].[Domicilio]  WITH CHECK ADD  CONSTRAINT [FK_Domicilio_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Domicilio] CHECK CONSTRAINT [FK_Domicilio_Pais]
GO
ALTER TABLE [dbo].[Edicion]  WITH CHECK ADD  CONSTRAINT [FK_Edicion_Locacion] FOREIGN KEY([IdLocacion])
REFERENCES [dbo].[Locacion] ([IdLocacion])
GO
ALTER TABLE [dbo].[Edicion] CHECK CONSTRAINT [FK_Edicion_Locacion]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK__Postulant__IdDom__3B75D760] FOREIGN KEY([IdDomicilio])
REFERENCES [dbo].[Domicilio] ([IdDomicilio])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK__Postulant__IdDom__3B75D760]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK__Postulant__IdEdi__3C69FB99] FOREIGN KEY([IdEdicion])
REFERENCES [dbo].[Edicion] ([IdEdicion])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK__Postulant__IdEdi__3C69FB99]
GO
ALTER TABLE [dbo].[Responsable]  WITH CHECK ADD  CONSTRAINT [FK__Responsab__IdEdi__4222D4EF] FOREIGN KEY([IdEdicion])
REFERENCES [dbo].[Edicion] ([IdEdicion])
GO
ALTER TABLE [dbo].[Responsable] CHECK CONSTRAINT [FK__Responsab__IdEdi__4222D4EF]
GO
ALTER TABLE [dbo].[Tema]  WITH CHECK ADD  CONSTRAINT [FK__Subtema__IdClase__3C69FB99] FOREIGN KEY([IdClase])
REFERENCES [dbo].[Clase] ([IdClase])
GO
ALTER TABLE [dbo].[Tema] CHECK CONSTRAINT [FK__Subtema__IdClase__3C69FB99]
GO
