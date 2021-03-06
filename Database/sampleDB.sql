USE [master]
GO
/****** Object:  Database [SampleDemo]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE DATABASE [SampleDemo] 
GO
USE [SampleDemo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationGroups]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroups](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_ApplicationGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationRoleClaims]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationRoleId] [nvarchar](450) NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationRoleGroups]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationRoleGroups](
	[RoleId] [nvarchar](450) NOT NULL,
	[GroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_ApplicationRoleGroups] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationRoles]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_ApplicationRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUserClaims]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserClaims](
	[UserId] [nvarchar](450) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationUserClaims] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUserGroups]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserGroups](
	[UserId] [nvarchar](450) NOT NULL,
	[GroupId] [bigint] NOT NULL,
 CONSTRAINT [PK_ApplicationUserGroups] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUserLogins]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserLogins](
	[UserId] [nvarchar](450) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUserRoles]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ApplicationRoleId] [nvarchar](450) NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ApplicationUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUsers]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Address] [nvarchar](256) NULL,
	[BirthDay] [datetime2](7) NULL,
	[FullName] [nvarchar](256) NULL,
	[AccountExpires] [datetime2](7) NULL,
	[DataEventRecordsRole] [nvarchar](max) NULL,
	[IsAdmin] [bit] NULL,
	[SecuredFilesRole] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUserTokens]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[Content] [nvarchar](max) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ProductID] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[UserID] [nvarchar](450) NULL,
	[RatingStar] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [bigint] NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[CustomerAddress] [nvarchar](256) NULL,
	[CustomerEmail] [nvarchar](256) NOT NULL,
	[CustomerId] [nvarchar](450) NULL,
	[CustomerMessage] [nvarchar](256) NULL,
	[CustomerMobile] [nvarchar](50) NOT NULL,
	[CustomerName] [nvarchar](256) NOT NULL,
	[IPAddress] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[PaymentMethod] [nvarchar](256) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[Alias] [nvarchar](max) NOT NULL,
	[CategoryID] [bigint] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[IPAddress] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[MoreImages] [xml] NULL,
	[Name] [nvarchar](max) NOT NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NOT NULL,
	[Status] [bit] NULL,
	[Tags] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[Warranty] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AddedDate] [datetime2](7) NULL,
	[Alias] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[IPAddress] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ParentID] [bigint] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTag]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTag](
	[ProductID] [bigint] NOT NULL,
	[TagID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTag] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170213003332_InitDb', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170214023237_AddNewFieldApplicationUser', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170220150642_AddCommentTable', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170223005626_AddRatingTable', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170223013931_RemoveRatingTableAndAddMoreFiledInCommentTable', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170227024625_AddOrderAndOrderDetailTables', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170302081402_updateOrderTable', N'1.1.0-rtm-22752')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170316014734_RemoveTaskTable', N'1.1.0-rtm-22752')
SET IDENTITY_INSERT [dbo].[ApplicationGroups] ON 

INSERT [dbo].[ApplicationGroups] ([ID], [Description], [Name]) VALUES (4, N'Group with Admin Roles', N'Admin Group')
INSERT [dbo].[ApplicationGroups] ([ID], [Description], [Name]) VALUES (5, N'skfjklsdjflsdjlklksdf', N'Modifier')
SET IDENTITY_INSERT [dbo].[ApplicationGroups] OFF
INSERT [dbo].[ApplicationRoleGroups] ([RoleId], [GroupId]) VALUES (N'30b90e51-9a01-48e6-a208-25bbb6ab7047', 4)
INSERT [dbo].[ApplicationRoleGroups] ([RoleId], [GroupId]) VALUES (N'24869043-fc06-4718-9b25-32fe4c6442d1', 5)
INSERT [dbo].[ApplicationRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName], [Description]) VALUES (N'24869043-fc06-4718-9b25-32fe4c6442d1', N'1656697c-1e46-4c55-8443-18d6d8c7a7e7', N'ApplicationRole', N'Categories', N'CATEGORIES', N'Manage Product Categories')
INSERT [dbo].[ApplicationRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName], [Description]) VALUES (N'30b90e51-9a01-48e6-a208-25bbb6ab7047', N'df234cc4-7693-4757-9d93-e1c6a8b178ba', N'ApplicationRole', N'Admin', N'ADMIN', N'All Permissions')
INSERT [dbo].[ApplicationRoles] ([Id], [ConcurrencyStamp], [Discriminator], [Name], [NormalizedName], [Description]) VALUES (N'9ec8ec46-1472-4149-b845-a1113e4892a4', N'c0276d87-2261-4dda-a8f2-5e3ac173ec5e', N'ApplicationRole', N'Products', N'PRODUCTS', N'Manage all Products')
INSERT [dbo].[ApplicationUserGroups] ([UserId], [GroupId]) VALUES (N'627136ea-ca97-4997-9b41-e6621cce01e3', 4)
INSERT [dbo].[ApplicationUserGroups] ([UserId], [GroupId]) VALUES (N'fbb48e5e-f116-47c1-b2ce-bde43fb672dc', 5)
INSERT [dbo].[ApplicationUserRoles] ([UserId], [RoleId], [ApplicationRoleId], [ApplicationUserId]) VALUES (N'627136ea-ca97-4997-9b41-e6621cce01e3', N'30b90e51-9a01-48e6-a208-25bbb6ab7047', NULL, NULL)
INSERT [dbo].[ApplicationUserRoles] ([UserId], [RoleId], [ApplicationRoleId], [ApplicationUserId]) VALUES (N'fbb48e5e-f116-47c1-b2ce-bde43fb672dc', N'24869043-fc06-4718-9b25-32fe4c6442d1', NULL, NULL)
INSERT [dbo].[ApplicationUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Discriminator], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [BirthDay], [FullName], [AccountExpires], [DataEventRecordsRole], [IsAdmin], [SecuredFilesRole]) VALUES (N'33d41a2e-e985-4573-b511-aa066b73d5c3', 0, N'f7a50bd9-8f9e-4ef5-88f3-426dc2d342dd', N'ApplicationUser', N'guest@gmail.com', 1, 1, NULL, N'GUEST@GMAIL.COM', N'GUEST', N'AQAAAAEAACcQAAAAENJjXOdkJvgh57ACIqlc+CkoScgzuyR9MAdRfUgakrI/O593njfuLDBBc/lyS8SEAg==', N'09898098098', 0, N'2bb715d7-f297-4c1a-a64c-f9c388ff75de', 0, N'guest', NULL, CAST(N'1989-11-11 17:00:00.0000000' AS DateTime2), N'Guest', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[ApplicationUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Discriminator], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [BirthDay], [FullName], [AccountExpires], [DataEventRecordsRole], [IsAdmin], [SecuredFilesRole]) VALUES (N'627136ea-ca97-4997-9b41-e6621cce01e3', 0, N'72d07391-4c1f-40a2-82e3-49793f961f97', N'ApplicationUser', N'dung@gmail.com', 0, 1, NULL, N'DUNG@GMAIL.COM', N'DUNG2411', N'AQAAAAEAACcQAAAAEOKf4uNZahCgjXxuk06ODitAZx/kcgJoDaKb45dGjRNRB/a5IOJspFt8F7FGYfApXQ==', N'0976498589', 0, N'4697fd13-113b-46dc-a001-94821a2bbf8b', 0, N'dung2411', NULL, CAST(N'1989-11-11 17:00:00.0000000' AS DateTime2), N'Duong Tri Dung', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'dataEventRecords.admin', 1, N'securedFiles.admin')
INSERT [dbo].[ApplicationUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Discriminator], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [BirthDay], [FullName], [AccountExpires], [DataEventRecordsRole], [IsAdmin], [SecuredFilesRole]) VALUES (N'bd6623c4-a2bb-48fc-9fa3-886f5771ac97', 0, N'c9d2759a-372c-4aab-9978-c6111a55d94e', N'ApplicationUser', N'dmt.1211@gmail.com', 1, 1, NULL, N'DMT.1211@GMAIL.COM', N'TOAN1211', N'AQAAAAEAACcQAAAAEBS9ghaO8yLw3e04wnWKnDVMlk9ODjSUIh39//HlfolucP1Y543LQXbnYe8GsO7wYw==', N'09764857878', 0, N'6d5c9858-ed0f-41d2-9ba8-da149f8c1890', 0, N'toan1211', NULL, CAST(N'1989-11-11 17:00:00.0000000' AS DateTime2), N'Bach Ngoc Toan', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[ApplicationUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Discriminator], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [BirthDay], [FullName], [AccountExpires], [DataEventRecordsRole], [IsAdmin], [SecuredFilesRole]) VALUES (N'cadca0a0-83ac-4246-a798-8bd8783a4914', 0, N'099eb194-8543-4b23-b24a-7d3de39b54fb', N'ApplicationUser', N'duongtuan1211@gmail.com', 1, 1, NULL, N'DUONGTUAN1211@GMAIL.COM', N'DUONGTUAN1211@GMAIL.COM', N'AQAAAAEAACcQAAAAEKckkzvB7ia3Uq2aoTo9nV1F1PGIquI0D+DAM/qbdp/JfyxThOx8BWdmrCmcce+r3g==', N'0976498589', 0, N'cca5e300-626e-4de9-ad41-f32b4f577602', 0, N'duongtuan1211@gmail.com', N'Ha Noi', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'Duong Manh Tuan', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'dataEventRecords.admin', 1, N'securedFiles.admin')
INSERT [dbo].[ApplicationUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Discriminator], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [Address], [BirthDay], [FullName], [AccountExpires], [DataEventRecordsRole], [IsAdmin], [SecuredFilesRole]) VALUES (N'fbb48e5e-f116-47c1-b2ce-bde43fb672dc', 0, N'cd126ca6-ed0c-46a7-aba4-26b433a765a9', N'ApplicationUser', N'nga@gmail.com', 0, 1, NULL, N'NGA@GMAIL.COM', N'NGA2001', N'AQAAAAEAACcQAAAAELlDj3AZDVZQf9INaf/aZlOByNWPjFcENcl4yc+F+GjjswQKTRAulkW3A/B4ipyHdA==', N'0976498589', 0, N'60c87a8d-c6fd-4af1-8c61-5ae1fb6bb70e', 0, N'nga@gmail.com', NULL, CAST(N'1994-01-31 17:00:00.0000000' AS DateTime2), N'Duong Thu Nga', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'dataEventRecords.categories', 0, N'securedFiles.categories')
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [AddedDate], [Content], [IPAddress], [ModifiedDate], [ProductID], [Status], [UserID], [RatingStar]) VALUES (100, CAST(N'2017-03-30 08:41:06.3010231' AS DateTime2), N'TUan Tesst', NULL, NULL, 15, NULL, NULL, 3)
INSERT [dbo].[Comments] ([Id], [AddedDate], [Content], [IPAddress], [ModifiedDate], [ProductID], [Status], [UserID], [RatingStar]) VALUES (101, CAST(N'2017-03-30 08:42:06.1322471' AS DateTime2), N'Tádflsdfsdfsd', NULL, NULL, 16, NULL, NULL, 0)
INSERT [dbo].[Comments] ([Id], [AddedDate], [Content], [IPAddress], [ModifiedDate], [ProductID], [Status], [UserID], [RatingStar]) VALUES (102, CAST(N'2017-03-30 08:45:49.1620602' AS DateTime2), N'Tuan Test', NULL, NULL, 1, NULL, N'33d41a2e-e985-4573-b511-aa066b73d5c3', 3)
SET IDENTITY_INSERT [dbo].[Comments] OFF
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (42, 2, CAST(8000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (43, 2, CAST(8000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (44, 1, CAST(30000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Price], [Quantity]) VALUES (44, 2, CAST(8000.00 AS Decimal(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [AddedDate], [CustomerAddress], [CustomerEmail], [CustomerId], [CustomerMessage], [CustomerMobile], [CustomerName], [IPAddress], [ModifiedDate], [PaymentMethod], [PaymentStatus], [Status]) VALUES (42, CAST(N'2017-03-06 09:15:40.2041270' AS DateTime2), N'ha noi', N'tuan@gmail.com', NULL, N'8ksdjfsdfsdf', N'09868778', N'Tuan Test', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [AddedDate], [CustomerAddress], [CustomerEmail], [CustomerId], [CustomerMessage], [CustomerMobile], [CustomerName], [IPAddress], [ModifiedDate], [PaymentMethod], [PaymentStatus], [Status]) VALUES (43, CAST(N'2017-03-06 09:18:10.2939941' AS DateTime2), N'Ha Noi', N'duongtuan1211@gmail.com', N'cadca0a0-83ac-4246-a798-8bd8783a4914', N'dxdfsdsdf', N'0976498589', N'Duong Manh Tuan', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [AddedDate], [CustomerAddress], [CustomerEmail], [CustomerId], [CustomerMessage], [CustomerMobile], [CustomerName], [IPAddress], [ModifiedDate], [PaymentMethod], [PaymentStatus], [Status]) VALUES (44, CAST(N'2017-03-30 09:32:46.3004357' AS DateTime2), N'108 Ngo 639 Hoang Hoa Tham', N'duongtuan1211@gmail.com', NULL, N'sdjhfksdhfsdfsdf', N'0976498589', N'Duong Manh Tuan', NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([Id], [AddedDate], [IPAddress], [ModifiedDate], [Name], [Status]) VALUES (1, CAST(N'2017-02-18 11:18:03.4542632' AS DateTime2), NULL, CAST(N'2017-02-18 11:18:03.4552623' AS DateTime2), N'Tuan', NULL)
INSERT [dbo].[Persons] ([Id], [AddedDate], [IPAddress], [ModifiedDate], [Name], [Status]) VALUES (2, CAST(N'2017-02-18 11:18:03.4552623' AS DateTime2), NULL, CAST(N'2017-02-18 11:18:03.4552623' AS DateTime2), N'Dung', NULL)
SET IDENTITY_INSERT [dbo].[Persons] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [AddedDate], [Alias], [CategoryID], [Content], [Description], [HomeFlag], [HotFlag], [IPAddress], [Image], [ModifiedDate], [MoreImages], [Name], [OriginalPrice], [Price], [PromotionPrice], [Quantity], [Status], [Tags], [ViewCount], [Warranty]) VALUES (1, CAST(N'2017-02-13 03:44:36.2900000' AS DateTime2), N't-shirt-luffy', 1, N'<p>This is a good product I&#39;m looking for</p>
', N'The Silver Chain', NULL, NULL, NULL, N'http://localhost:5000/uploads/pi.jpg', NULL, N'[]', N'T-shirt Luffy', CAST(12000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), NULL, 12, 1, N'closthing, t-shirt', 1, 12)
INSERT [dbo].[Product] ([Id], [AddedDate], [Alias], [CategoryID], [Content], [Description], [HomeFlag], [HotFlag], [IPAddress], [Image], [ModifiedDate], [MoreImages], [Name], [OriginalPrice], [Price], [PromotionPrice], [Quantity], [Status], [Tags], [ViewCount], [Warranty]) VALUES (2, CAST(N'2017-02-13 03:45:34.0510000' AS DateTime2), N'channel', 2, N'<p>sdf</p>
', N'Perfume from French', NULL, NULL, NULL, N'http://localhost:5000/uploads/bo.jpg', NULL, N'[]', N'Channel', CAST(5000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), NULL, 12, 1, N'perfume, france', 3, 12)
INSERT [dbo].[Product] ([Id], [AddedDate], [Alias], [CategoryID], [Content], [Description], [HomeFlag], [HotFlag], [IPAddress], [Image], [ModifiedDate], [MoreImages], [Name], [OriginalPrice], [Price], [PromotionPrice], [Quantity], [Status], [Tags], [ViewCount], [Warranty]) VALUES (14, CAST(N'2017-02-19 03:07:54.1940000' AS DateTime2), N'tuan-test', 1, NULL, N'asdasdasd', NULL, NULL, NULL, N'http://localhost:5000/uploads/wat.jpg', NULL, NULL, N'Tuan Test', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, 12, 1, NULL, 2, 12)
INSERT [dbo].[Product] ([Id], [AddedDate], [Alias], [CategoryID], [Content], [Description], [HomeFlag], [HotFlag], [IPAddress], [Image], [ModifiedDate], [MoreImages], [Name], [OriginalPrice], [Price], [PromotionPrice], [Quantity], [Status], [Tags], [ViewCount], [Warranty]) VALUES (15, CAST(N'2017-02-19 14:48:10.2890000' AS DateTime2), N'dung-test', 1, N'<p>sdfsdf</p>
', N'sdkfjsdkljfskl', NULL, NULL, NULL, N'http://localhost:5000/uploads/pic.jpg', NULL, NULL, N'Dung Test', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, 12, 1, NULL, 4, 12)
INSERT [dbo].[Product] ([Id], [AddedDate], [Alias], [CategoryID], [Content], [Description], [HomeFlag], [HotFlag], [IPAddress], [Image], [ModifiedDate], [MoreImages], [Name], [OriginalPrice], [Price], [PromotionPrice], [Quantity], [Status], [Tags], [ViewCount], [Warranty]) VALUES (16, CAST(N'2017-02-20 07:02:15.5160000' AS DateTime2), N'dika-tesst', 2, NULL, N'sdklfjsdklfjsdkljfklsdjfkl', NULL, NULL, NULL, N'http://localhost:5000/uploads/wa.jpg', NULL, NULL, N'Dika Tesst', CAST(12000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), NULL, 12, 1, NULL, NULL, 12)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [AddedDate], [Alias], [Description], [DisplayOrder], [IPAddress], [Image], [ModifiedDate], [Name], [ParentID], [Status]) VALUES (1, CAST(N'2017-02-13 03:43:57.2950000' AS DateTime2), N'closthing', N'All about Closthing', NULL, NULL, NULL, CAST(N'2017-02-13 03:43:57.2950000' AS DateTime2), N'Closthing', NULL, 1)
INSERT [dbo].[ProductCategory] ([Id], [AddedDate], [Alias], [Description], [DisplayOrder], [IPAddress], [Image], [ModifiedDate], [Name], [ParentID], [Status]) VALUES (2, CAST(N'2017-02-13 03:44:18.6420000' AS DateTime2), N'perfume', N'Test', NULL, NULL, NULL, CAST(N'2017-02-13 03:44:18.6420000' AS DateTime2), N'Perfume', NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
INSERT [dbo].[ProductTag] ([ProductID], [TagID]) VALUES (1, N'closthing')
INSERT [dbo].[ProductTag] ([ProductID], [TagID]) VALUES (2, N'france')
INSERT [dbo].[ProductTag] ([ProductID], [TagID]) VALUES (2, N'perfume')
INSERT [dbo].[ProductTag] ([ProductID], [TagID]) VALUES (1, N't-shirt')
INSERT [dbo].[Tag] ([ID], [Name], [Type]) VALUES (N'closthing', N'closthing', N'product')
INSERT [dbo].[Tag] ([ID], [Name], [Type]) VALUES (N'france', N' france', N'product')
INSERT [dbo].[Tag] ([ID], [Name], [Type]) VALUES (N'perfume', N'perfume', N'product')
INSERT [dbo].[Tag] ([ID], [Name], [Type]) VALUES (N't-shirt', N' t-shirt', N'product')
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationRoleClaims_ApplicationRoleId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationRoleClaims_ApplicationRoleId] ON [dbo].[ApplicationRoleClaims]
(
	[ApplicationRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationRoleGroups_GroupId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationRoleGroups_GroupId] ON [dbo].[ApplicationRoleGroups]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationUserClaims_ApplicationUserId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUserClaims_ApplicationUserId] ON [dbo].[ApplicationUserClaims]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationUserGroups_GroupId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUserGroups_GroupId] ON [dbo].[ApplicationUserGroups]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationUserLogins_ApplicationUserId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUserLogins_ApplicationUserId] ON [dbo].[ApplicationUserLogins]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationUserRoles_ApplicationRoleId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUserRoles_ApplicationRoleId] ON [dbo].[ApplicationUserRoles]
(
	[ApplicationRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationUserRoles_ApplicationUserId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationUserRoles_ApplicationUserId] ON [dbo].[ApplicationUserRoles]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ProductID]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ProductID] ON [dbo].[Comments]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Comments_UserID]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserID] ON [dbo].[Comments]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductID]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductID] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Orders_CustomerId]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerId] ON [dbo].[Orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryID]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryID] ON [dbo].[Product]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProductTag_TagID]    Script Date: 3/30/2017 10:36:51 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTag_TagID] ON [dbo].[ProductTag]
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationRoleClaims_ApplicationRoles_ApplicationRoleId] FOREIGN KEY([ApplicationRoleId])
REFERENCES [dbo].[ApplicationRoles] ([Id])
GO
ALTER TABLE [dbo].[ApplicationRoleClaims] CHECK CONSTRAINT [FK_ApplicationRoleClaims_ApplicationRoles_ApplicationRoleId]
GO
ALTER TABLE [dbo].[ApplicationRoleGroups]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationRoleGroups_ApplicationGroups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[ApplicationGroups] ([ID])
GO
ALTER TABLE [dbo].[ApplicationRoleGroups] CHECK CONSTRAINT [FK_ApplicationRoleGroups_ApplicationGroups_GroupId]
GO
ALTER TABLE [dbo].[ApplicationRoleGroups]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationRoleGroups_ApplicationRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[ApplicationRoles] ([Id])
GO
ALTER TABLE [dbo].[ApplicationRoleGroups] CHECK CONSTRAINT [FK_ApplicationRoleGroups_ApplicationRoles_RoleId]
GO
ALTER TABLE [dbo].[ApplicationUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUserClaims_ApplicationUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[ApplicationUsers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUserClaims] CHECK CONSTRAINT [FK_ApplicationUserClaims_ApplicationUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ApplicationUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUserGroups_ApplicationGroups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[ApplicationGroups] ([ID])
GO
ALTER TABLE [dbo].[ApplicationUserGroups] CHECK CONSTRAINT [FK_ApplicationUserGroups_ApplicationGroups_GroupId]
GO
ALTER TABLE [dbo].[ApplicationUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUserGroups_ApplicationUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[ApplicationUsers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUserGroups] CHECK CONSTRAINT [FK_ApplicationUserGroups_ApplicationUsers_UserId]
GO
ALTER TABLE [dbo].[ApplicationUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUserLogins_ApplicationUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[ApplicationUsers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUserLogins] CHECK CONSTRAINT [FK_ApplicationUserLogins_ApplicationUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUserRoles_ApplicationRoles_ApplicationRoleId] FOREIGN KEY([ApplicationRoleId])
REFERENCES [dbo].[ApplicationRoles] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_ApplicationUserRoles_ApplicationRoles_ApplicationRoleId]
GO
ALTER TABLE [dbo].[ApplicationUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUserRoles_ApplicationUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[ApplicationUsers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUserRoles] CHECK CONSTRAINT [FK_ApplicationUserRoles_ApplicationUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_ApplicationUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[ApplicationUsers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_ApplicationUsers_UserID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Product_ProductID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ApplicationUsers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[ApplicationUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ApplicationUsers_CustomerId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory_CategoryID]
GO
ALTER TABLE [dbo].[ProductTag]  WITH CHECK ADD  CONSTRAINT [FK_ProductTag_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductTag] CHECK CONSTRAINT [FK_ProductTag_Product_ProductID]
GO
ALTER TABLE [dbo].[ProductTag]  WITH CHECK ADD  CONSTRAINT [FK_ProductTag_Tag_TagID] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[ProductTag] CHECK CONSTRAINT [FK_ProductTag_Tag_TagID]
GO
/****** Object:  StoredProcedure [dbo].[RevenuesStatisticSP]    Script Date: 3/30/2017 10:36:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[RevenuesStatisticSP]
@fromDate varchar(30),
@toDate varchar(30)
as 
Begin 
  select 
	o.AddedDate as Date ,
	sum(od.Quantity*od.Price) as Revenues,
	sum((od.Quantity*od.Price)-(od.Quantity*p.OriginalPrice)) as Benifit
	from Orders o 
	inner join OrderDetails od
	on o.Id=od.OrderID
	inner join Product p
	on od.ProductID=p.ID
	where o.AddedDate<=cast(@toDate as date) and o.AddedDate >=cast(@fromDate as date)
	group by o.AddedDate
end 

GO
USE [master]
GO
ALTER DATABASE [SampleDemo] SET  READ_WRITE 
GO
