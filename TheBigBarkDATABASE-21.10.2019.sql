USE [master]
GO
/****** Object:  Database [TheBigBarkDATABASE]    Script Date: 21/10/2019 21:25:33 ******/
CREATE DATABASE [TheBigBarkDATABASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TheBigBarkDATABASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TheBigBarkDATABASE.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TheBigBarkDATABASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TheBigBarkDATABASE_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TheBigBarkDATABASE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheBigBarkDATABASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheBigBarkDATABASE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET ARITHABORT OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET  MULTI_USER 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TheBigBarkDATABASE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TheBigBarkDATABASE] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TheBigBarkDATABASE]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[RoleName] [nchar](10) NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[RoleName] [varchar](20) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (19, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (20, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (21, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (22, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (23, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (24, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (25, N'51b1942d-c969-4e7b-8cea-104af4effadf', CAST(N'2019-10-10 00:25:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (26, N'51b1942d-c969-4e7b-8cea-104af4effadf', CAST(N'2019-11-10 00:25:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (27, N'51b1942d-c969-4e7b-8cea-104af4effadf', CAST(N'2019-12-10 00:25:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (28, N'51b1942d-c969-4e7b-8cea-104af4effadf', CAST(N'2019-09-10 00:25:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (29, N'9716a410-ca10-43ff-956a-fb19e012021f', CAST(N'2019-08-10 00:25:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (30, N'9716a410-ca10-43ff-956a-fb19e012021f', CAST(N'2019-07-10 00:22:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (31, N'9716a410-ca10-43ff-956a-fb19e012021f', CAST(N'2020-05-10 00:25:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (32, N'824bc7bb-6807-488c-9826-e209968f5282', CAST(N'2020-06-25 12:30:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (33, N'824bc7bb-6807-488c-9826-e209968f5282', CAST(N'2020-06-25 13:30:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (34, N'824bc7bb-6807-488c-9826-e209968f5282', CAST(N'2020-06-25 14:30:00.000' AS DateTime))
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (35, N'26aa5558-ccc4-4f77-8c91-9453c8592975', CAST(N'2020-06-26 12:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Appointments] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3b1fa836-5fe0-4f8e-beb2-f542b96a1245', N'Administrators')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b8b7c460-7b30-4020-86d0-880152b8eb32', N'Users')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'26aa5558-ccc4-4f77-8c91-9453c8592975', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'36d9f696-3c31-4e7b-9eba-5d252084e187', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'51b1942d-c969-4e7b-8cea-104af4effadf', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'73fe41ce-e27a-4833-87d5-1385d455540f', N'3b1fa836-5fe0-4f8e-beb2-f542b96a1245', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'73fe41ce-e27a-4833-87d5-1385d455540f', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'824bc7bb-6807-488c-9826-e209968f5282', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'9716a410-ca10-43ff-956a-fb19e012021f', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'26aa5558-ccc4-4f77-8c91-9453c8592975', N'Mavrahami@gmail.com', 0, N'AIYTtU+6Em92DWPJAadPjGJj2kfUHwTHArRq0r1gCusle65wSqUfCLhfWHwnc5ezyQ==', N'6bb4790c-29a8-4f30-ab2a-7e5c6dda24f8', NULL, 0, 0, NULL, 1, 0, N'Mavrahami@gmail.com', N'Mordechai', N'Avrahami')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'36d9f696-3c31-4e7b-9eba-5d252084e187', N'israel123@gmail.com', 0, N'AH0oRUgl1lFOQ1hjRLm9iqQ2sCWNC8Lqlvzuy9Z3mIe8SAJ2aP4lqz4nVmfRdI/WAg==', N'b88c202b-ebd0-4ca0-a5bd-996650e76b31', NULL, 0, 0, NULL, 1, 0, N'israel123@gmail.com', N'israel', N'israeli')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'51b1942d-c969-4e7b-8cea-104af4effadf', N'dp@gmail.com', 0, N'AFtOrxu8Y1o16pik8sWuSZhKT2d69GsdOJAbLEdvK2fuZeJaUfvPuLVmkWCft+JvyA==', N'7d998da6-5136-407c-8967-db9e8b7b74cf', NULL, 0, 0, NULL, 1, 0, N'dp@gmail.com', N'David', N'Paz')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'73fe41ce-e27a-4833-87d5-1385d455540f', N'yohay770@gmail.com', 0, N'APWNFkY1Bm+u4QTqlMuXRqkWetRGIPJ0diRU7m5HKDZNrQnn5nivj/HxcgvTXnhlcA==', N'1752f09d-7b16-4d8e-addb-78c21af65513', NULL, 0, 0, NULL, 1, 0, N'yohay770@gmail.com', N'Yochai', N'Elbaz')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'824bc7bb-6807-488c-9826-e209968f5282', N'YaakovS@gmail.com', 0, N'AK8Pya0Zfz6MmbuRrm/Uo2SNuRNS49dtqJAdJxnjLM7HW7jvn/xeLvQCR/a9h/ft+Q==', N'f1571e62-c2fb-4d72-81a9-9312d3fdaae9', NULL, 0, 0, NULL, 1, 0, N'YaakovS@gmail.com', N'Yaakov', N'Shwekey')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'9716a410-ca10-43ff-956a-fb19e012021f', N'MosheCohen@gmail.com', 0, N'AKxtKL33qWQ0FeUglSMxnx5UieX3ejaVpSqqkNMaXOTGG5inh3SqKSOWYpCcNLLK8w==', N'1b7dd0e6-28df-4bef-b95a-3a9633cdeb76', NULL, 0, 0, NULL, 1, 0, N'MosheCohen@gmail.com', N'Moshe', N'Cohen')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Customer')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Manager')
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointment_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[SelectAllAppointments]    Script Date: 21/10/2019 21:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectAllAppointments]
AS
SELECT a.Id,a.Date,a.UserId,u.UserName ,u.FirstName,u.LastName
FROM Appointments a JOIN ASPNETUsers u 
                    On a.UserId=u.Id


GO
USE [master]
GO
ALTER DATABASE [TheBigBarkDATABASE] SET  READ_WRITE 
GO
