USE [master]
GO
/****** Object:  Database [TheBigBarkDATABASE]    Script Date: 20/10/2019 02:41:31 ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[Appointments]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/10/2019 02:41:32 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 20/10/2019 02:41:32 ******/
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

GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (11, N'b5add259-60e3-4aca-8dc7-325a7f8132d4', CAST(N'2019-10-10 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (12, N'b5add259-60e3-4aca-8dc7-325a7f8132d4', CAST(N'2019-10-10 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (16, N'd9102188-1223-4990-a3a6-6ef6b44a232e', CAST(N'2019-10-28 23:22:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (17, N'd9102188-1223-4990-a3a6-6ef6b44a232e', CAST(N'2019-12-29 22:00:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (18, N'b047ee8d-a621-47f2-b868-ac5b381f4dc2', CAST(N'2020-10-22 00:01:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (19, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (20, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (21, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (22, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (23, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
GO
INSERT [dbo].[Appointments] ([Id], [UserId], [Date]) VALUES (24, N'36d9f696-3c31-4e7b-9eba-5d252084e187', CAST(N'2019-10-10 00:22:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3b1fa836-5fe0-4f8e-beb2-f542b96a1245', N'Administrators')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'b8b7c460-7b30-4020-86d0-880152b8eb32', N'Users')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'36d9f696-3c31-4e7b-9eba-5d252084e187', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'3a339841-4963-44f2-8e99-568414d61bad', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'71644ced-cc1f-49f4-b0a8-8f6a1602ddeb', N'3b1fa836-5fe0-4f8e-beb2-f542b96a1245', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'a9d260bd-be2e-4ab9-b0c5-e6273b0f8790', N'3b1fa836-5fe0-4f8e-beb2-f542b96a1245', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'a9d260bd-be2e-4ab9-b0c5-e6273b0f8790', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'b047ee8d-a621-47f2-b868-ac5b381f4dc2', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'b5add259-60e3-4aca-8dc7-325a7f8132d4', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'd9102188-1223-4990-a3a6-6ef6b44a232e', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [RoleName]) VALUES (N'e70f9fb5-8318-4b91-81e4-594405b28528', N'b8b7c460-7b30-4020-86d0-880152b8eb32', NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'36d9f696-3c31-4e7b-9eba-5d252084e187', N'israel123@gmail.com', 0, N'AH0oRUgl1lFOQ1hjRLm9iqQ2sCWNC8Lqlvzuy9Z3mIe8SAJ2aP4lqz4nVmfRdI/WAg==', N'b88c202b-ebd0-4ca0-a5bd-996650e76b31', NULL, 0, 0, NULL, 1, 0, N'israel123@gmail.com', N'israel', N'israeli')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'3a339841-4963-44f2-8e99-568414d61bad', N'ori2@gmail.com', 0, N'AB63cLcy4M2cHFKTJCibX59uNSoy8uQnVJH7oIcUsj96hbOeJlRIj0hRUC2htS+p/g==', N'feae1602-9c06-4ff4-8707-2738d6ef4e01', NULL, 0, 0, NULL, 1, 0, N'ori2@gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'71644ced-cc1f-49f4-b0a8-8f6a1602ddeb', N'yohay770@gmail.com', 0, N'AKjBuwyoya8yW0ryhy32znsAcZJ/S+hQK0p93b3sedVnl+3me96nEm+BFxBw11WJIw==', N'501db219-327c-4669-9e4f-0aded106c152', NULL, 0, 1, NULL, 1, 0, N'yohay770@gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'a9d260bd-be2e-4ab9-b0c5-e6273b0f8790', N'avi123@Gmail.com', 0, N'ADo+MjQJRpGP/t+wYiwWg4WVjyy4N1/zOGE9OOdnz5AIR/u2hehy2x17FLQOoLF8cA==', N'6d0c9881-ff01-4f86-959c-7fee3ec14424', NULL, 0, 0, NULL, 1, 0, N'avi123@Gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'b047ee8d-a621-47f2-b868-ac5b381f4dc2', N'refael@gmail.com', 0, N'AE+sSizhIY/8mz6+tGWnB+NfmCqETCG0s0HSp9xIoSN6wLiYz2i+WeoIvD0p44z9ow==', N'288cdb95-5336-4e07-bf30-e5b8903be049', NULL, 0, 0, NULL, 1, 0, N'refael@gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'b5add259-60e3-4aca-8dc7-325a7f8132d4', N'israel@gmail.com', 0, N'ACaQSZTmtuD5eNF3rGEKtj1s72WCK0QaPfU/Uo/oXbYw1yDbmybj71bEZnrYWIt4Lw==', N'640fc6d2-0b42-45b8-831c-5e4bf6041fa5', NULL, 0, 0, NULL, 1, 0, N'israel@gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'd5587d21-891d-4a6d-b633-b70213bea76c', N'ori@gmail.com', 0, N'ALdArULEiH7a/awwKsOL29b6qnuOCLSBFca/g7bAZJNTP6hBXkuee/G6egav5uAyaw==', N'57aebe74-ff33-4d0e-b733-d82a397cc115', NULL, 0, 0, NULL, 1, 0, N'ori@gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'd9102188-1223-4990-a3a6-6ef6b44a232e', N'yossi@gmail.com', 0, N'AHlteQ2ZpHhHcuJN0mAq8Gwqfu4453iAVAxRBGdhba7JEVC2psFfNPLcUCOup0gkTQ==', N'0802ca79-7bdb-4caf-a08b-e6a94a1b93e3', NULL, 0, 0, NULL, 1, 0, N'yossi@gmail.com', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'e70f9fb5-8318-4b91-81e4-594405b28528', N'didi@gmail.com', 0, N'AHz5UkqraNDfsMQ5/YhvZqPGgOm+5Mgl0mjIWkHhNNSbZI5+BuSf50G3rUEdrXLEBQ==', N'ee9673ef-e97b-4e3f-8f80-2f81a6bed23c', NULL, 0, 0, NULL, 1, 0, N'didi@gmail.com', NULL, NULL)
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Customer')
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Manager')
GO
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
/****** Object:  StoredProcedure [dbo].[SelectAllAppointments]    Script Date: 20/10/2019 02:41:32 ******/
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
