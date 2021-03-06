USE [test_mvc]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](55) NOT NULL,
	[lastname] [varchar](55) NOT NULL,
	[email] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_reg]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_reg](
	[id] [int] NOT NULL,
	[emailid] [varchar](50) NULL,
	[password] [varchar](10) NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReg](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[UserPassword] [varchar](30) NOT NULL,
	[UerRePassword] [varchar](30) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usr]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usr](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](55) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[ConfirmPassword] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON 

INSERT [dbo].[tbl_login] ([Id], [Username], [Password]) VALUES (1, N'monir', N'monir123')
INSERT [dbo].[tbl_login] ([Id], [Username], [Password]) VALUES (2, N'admin', N'admin')
INSERT [dbo].[tbl_login] ([Id], [Username], [Password]) VALUES (3, N'ripon', N'ripon')
INSERT [dbo].[tbl_login] ([Id], [Username], [Password]) VALUES (4, N'mamun', N'1')
SET IDENTITY_INSERT [dbo].[tbl_login] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCustomer] ON 

INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (1, N'Moniruzzaman', N'Monir', N'monir@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (2, N'Moniruzzaman', N'Monir', N'monir@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (3, N'Moniruzzaman', N'Monir', N'monir@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (4, N'Fazle', N'Fahad', N'fazle@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (5, N'Mamun', N'Khan', N'mamun@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (6, N'Amin', N'Khan', N'amin@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (8, N'Istiak', N'Alam', N'istiak@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (9, N'Ripon', N'Samaddar', N'ripon@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (10, N'Mahbub', N'Nur', N'nur@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (11, N'Sushanto', N'Halder', N'nur@gmail.com')
INSERT [dbo].[tblCustomer] ([id], [firstname], [lastname], [email]) VALUES (12, N'Sushanto', N'Halder', N'sushanto@gmail.com')
SET IDENTITY_INSERT [dbo].[tblCustomer] OFF
GO
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (1, N'ripon@gmail.com', N'monir1234', N'Ripon ')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (3, N'asad@gmail.com', N'asad@123', N'Asad')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (4, N'fazle@gmail.com', N'fazle1234', N'Fazle')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (5, N'mamun@gmail.com', N'mamun1234', N'Mamun')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (7, N'sushanto@gmail.com', N'sushanto12', N'Sushanto')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (8, N'roy@gmail.com', N'roy1234', N'Roy')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (9, N'mithun@gmail.com', N'mithun1234', N'Mithun')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (10, N'tushar@gmail.com', N'tushar1234', N'Tushar')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (11, N'malek@gmail.com', N'malek1234', N'Malek')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (12, N'mortuza@gmail.com', N'mortuza123', N'Mortuza')
INSERT [dbo].[user_reg] ([id], [emailid], [password], [name]) VALUES (13, N'a@gmail.com', N'12', N'tttst')
GO
SET IDENTITY_INSERT [dbo].[Usr] ON 

INSERT [dbo].[Usr] ([Id], [UserName], [Password], [ConfirmPassword]) VALUES (1, N'monir', N'123', N'123')
INSERT [dbo].[Usr] ([Id], [UserName], [Password], [ConfirmPassword]) VALUES (2, N'ripon', N'1234', N'1234')
SET IDENTITY_INSERT [dbo].[Usr] OFF
GO
/****** Object:  StoredProcedure [dbo].[SearchRecord]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SearchRecord]
@searchoption varchar(255),
@searchtext varchar(255)
AS
BEGIN
	IF (@searchoption = 'id')
		BEGIN
				-- code block run when condition is TRUE
			Select * from dbo.user_reg where id like '%@searchtext%';
		END
	ELSE IF (@searchoption = 'emailid')
		BEGIN
		-- code block run when condition is TRUE
			Select * from dbo.user_reg where emailid like '%@searchtext%';
		END
	ELSE IF (@searchoption = 'password')
		BEGIN
		-- code block run when condition is TRUE
		Select * from dbo.user_reg where password like '%@searchtext%';
		END
	ELSE IF (@searchoption = 'name')
		BEGIN
		-- code block run when condition is TRUE
		Select * from dbo.user_reg where name like '%@searchtext%';
		END
END
GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UserLogin]
@Username varchar(50),
@Password varchar(30),
@Isvalid BIT OUT

As
Begin
	SET @Isvalid=(SELECT COUNT(1) from tbl_login tl WHERE tl.Username=@Username AND tl.Password=@Password)
END
GO
/****** Object:  StoredProcedure [dbo].[uSP_delete]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[uSP_delete]
@id int
As
Begin
	Delete user_reg Where id = @id;
End
GO
/****** Object:  StoredProcedure [dbo].[uSP_insert]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[uSP_insert]
@id int,
@email varchar(50),
@pwd varchar(10),
@name varchar(50)

As
Begin
	Insert into user_reg values (@id, @email, @pwd, @name)
End
GO
/****** Object:  StoredProcedure [dbo].[uSP_select]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[uSP_select]
As
Begin
	select * from user_reg
End
GO
/****** Object:  StoredProcedure [dbo].[uSP_update]    Script Date: 11/18/2021 10:57:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[uSP_update]
@id int,
@email varchar(50),
@pwd varchar(50),
@name varchar(50)

As
Begin
	Update user_reg set emailid = @email, password = @pwd, name = @name Where id = @id;
End
GO
