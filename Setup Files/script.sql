USE [Asistencia]
GO
/****** Object:  StoredProcedure [dbo].[SpgetCodigoEmpleados]    Script Date: 08/12/2020 0:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpgetCodigoEmpleados] 
	
AS
BEGIN
	select CodigoEmpleado from tblEmpleados
END


GO
/****** Object:  StoredProcedure [dbo].[SpMostrarAsistencia]    Script Date: 08/12/2020 0:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpMostrarAsistencia] 
	
AS
BEGIN
	Select * from tblAsistencia
END


GO
/****** Object:  StoredProcedure [dbo].[SpMostrarEmpleados]    Script Date: 08/12/2020 0:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpMostrarEmpleados] 
	
AS
BEGIN
	select * from tblEmpleados
END


GO
/****** Object:  Table [dbo].[tblAdministrador]    Script Date: 08/12/2020 0:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdministrador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Access] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblAdministrador] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAsistencia]    Script Date: 08/12/2020 0:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAsistencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoEmpleado] [varchar](50) NOT NULL,
	[HoraDeEntrada] [datetime] NOT NULL,
 CONSTRAINT [PK_tblAsistencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmpleados]    Script Date: 08/12/2020 0:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmpleados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoEmpleado] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Cedula] [varchar](20) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Cargo] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblEmpleados] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
