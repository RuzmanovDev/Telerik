USE [master]
GO
/****** Object:  Database [Computers]    Script Date: 8.11.2016 г. 18:13:34 ******/
CREATE DATABASE [Computers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Computers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Computers.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Computers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Computers_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Computers] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Computers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Computers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Computers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Computers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Computers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Computers] SET ARITHABORT OFF 
GO
ALTER DATABASE [Computers] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Computers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Computers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Computers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Computers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Computers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Computers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Computers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Computers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Computers] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Computers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Computers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Computers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Computers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Computers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Computers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Computers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Computers] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Computers] SET  MULTI_USER 
GO
ALTER DATABASE [Computers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Computers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Computers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Computers] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Computers] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Computers]
GO
/****** Object:  Table [dbo].[Computers]    Script Date: 8.11.2016 г. 18:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[Vendor] [nvarchar](30) NULL,
	[Model] [nvarchar](30) NULL,
	[CPUId] [int] NULL,
	[RAM] [int] NULL,
 CONSTRAINT [PK_Computers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComputersGPUs]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputersGPUs](
	[ComputerId] [int] NOT NULL,
	[GPUId] [int] NOT NULL,
 CONSTRAINT [PK_ComputersGPUs] PRIMARY KEY CLUSTERED 
(
	[ComputerId] ASC,
	[GPUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComputersStorageDevices]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputersStorageDevices](
	[ComputerId] [int] NOT NULL,
	[StorageDeviceId] [int] NOT NULL,
 CONSTRAINT [PK_ComputersStorageDevices] PRIMARY KEY CLUSTERED 
(
	[ComputerId] ASC,
	[StorageDeviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComputerTypes]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ComputerTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CPUs]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[NumberOfCores] [int] NULL,
	[ClockCycles] [nvarchar](50) NULL,
 CONSTRAINT [PK_CPUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPUs]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[Vendor] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[Memory] [int] NULL,
 CONSTRAINT [PK_GPUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GPUTypes]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPUTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_GPUTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StorageDevices]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageDevices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[TypeId] [int] NULL,
	[Size] [int] NULL,
 CONSTRAINT [PK_StorageDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StorageDevicesTypes]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageDevicesTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_StorageDevicesTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Computers]  WITH CHECK ADD  CONSTRAINT [FK_Computers_ComputerTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ComputerTypes] ([Id])
GO
ALTER TABLE [dbo].[Computers] CHECK CONSTRAINT [FK_Computers_ComputerTypes]
GO
ALTER TABLE [dbo].[Computers]  WITH CHECK ADD  CONSTRAINT [FK_Computers_CPUs] FOREIGN KEY([CPUId])
REFERENCES [dbo].[CPUs] ([Id])
GO
ALTER TABLE [dbo].[Computers] CHECK CONSTRAINT [FK_Computers_CPUs]
GO
ALTER TABLE [dbo].[ComputersGPUs]  WITH CHECK ADD  CONSTRAINT [FK_ComputersGPUs_Computers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[Computers] ([Id])
GO
ALTER TABLE [dbo].[ComputersGPUs] CHECK CONSTRAINT [FK_ComputersGPUs_Computers]
GO
ALTER TABLE [dbo].[ComputersGPUs]  WITH CHECK ADD  CONSTRAINT [FK_ComputersGPUs_GPUs] FOREIGN KEY([GPUId])
REFERENCES [dbo].[GPUs] ([Id])
GO
ALTER TABLE [dbo].[ComputersGPUs] CHECK CONSTRAINT [FK_ComputersGPUs_GPUs]
GO
ALTER TABLE [dbo].[ComputersStorageDevices]  WITH CHECK ADD  CONSTRAINT [FK_ComputersStorageDevices_Computers] FOREIGN KEY([ComputerId])
REFERENCES [dbo].[Computers] ([Id])
GO
ALTER TABLE [dbo].[ComputersStorageDevices] CHECK CONSTRAINT [FK_ComputersStorageDevices_Computers]
GO
ALTER TABLE [dbo].[ComputersStorageDevices]  WITH CHECK ADD  CONSTRAINT [FK_ComputersStorageDevices_StorageDevices] FOREIGN KEY([StorageDeviceId])
REFERENCES [dbo].[StorageDevices] ([Id])
GO
ALTER TABLE [dbo].[ComputersStorageDevices] CHECK CONSTRAINT [FK_ComputersStorageDevices_StorageDevices]
GO
ALTER TABLE [dbo].[GPUs]  WITH CHECK ADD  CONSTRAINT [FK_GPUs_GPUTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[GPUTypes] ([Id])
GO
ALTER TABLE [dbo].[GPUs] CHECK CONSTRAINT [FK_GPUs_GPUTypes]
GO
ALTER TABLE [dbo].[StorageDevices]  WITH CHECK ADD  CONSTRAINT [FK_StorageDevices_StorageDevicesTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[StorageDevicesTypes] ([Id])
GO
ALTER TABLE [dbo].[StorageDevices] CHECK CONSTRAINT [FK_StorageDevices_StorageDevicesTypes]
GO
/****** Object:  StoredProcedure [dbo].[usp_GetComputersWithGpuAndRamBetween]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetComputersWithGpuAndRamBetween] @GpuId int, @MinRam int, @MaxRam int
AS

SELECT c.Id as ComputerID, c.Vendor as ComputerVendor, c.RAM as ComputerRam, g.Model as GPUModel ,g.Vendor as GPUVendor
FROM Computers c
JOIN ComputersGPUs cgp
	on c.id = cgp.ComputerId
JOIN GPUs g
	on g.Id = cgp.GPUId
WHERE GPUId = @GpuId AND RAM between @MinRam and @MaxRam
GO
/****** Object:  StoredProcedure [dbo].[usp_GetComputersWithRamBetween]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetComputersWithRamBetween] @MinRam int, @MaxRam int
AS

	Select Vendor, Model, Id
	FROM Computers
	WHERE RAM between @MinRam and @MaxRam


GO
/****** Object:  StoredProcedure [dbo].[usp_GetGpusForComputerType]    Script Date: 8.11.2016 г. 18:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE 
[dbo].[usp_GetGpusForComputerType] @ComputerType nvarchar(50)
AS
SELECT g.Vendor as GPUVendor, g.Model as GPUModel
FROM Computers c
JOIN ComputersGpus cg
	ON c.id = cg.ComputerId
JOIN GPUs g
	On g.Id = cg.GPUId
JOIN ComputerTypes ct
	on ct.Id = c.Id
WHERE ct.TypeName = @ComputerType
GO
USE [master]
GO
ALTER DATABASE [Computers] SET  READ_WRITE 
GO
