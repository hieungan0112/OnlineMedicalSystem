USE [Medical]
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 30/06/2022 1:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointment](
	[Name] [varchar](200) NOT NULL,
	[DOB] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Address] [varchar](200) NULL,
	[Contact] [int] NULL,
	[DoctorId] [int] NULL,
	[Doctorname] [varchar](200) NULL,
	[Timing] [varchar](200) NULL,
	[Specialization] [varchar](200) NULL,
 CONSTRAINT [PK_appointment] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[doctor_login]    Script Date: 30/06/2022 1:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctor_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](200) NULL,
	[passWord] [varchar](200) NULL,
 CONSTRAINT [PK_doctor_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[doctor_record]    Script Date: 30/06/2022 1:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctor_record](
	[id] [int] NOT NULL,
	[DoctorName] [varchar](200) NULL,
	[Specialization] [varchar](200) NULL,
 CONSTRAINT [PK_doctor_record] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_login]    Script Date: 30/06/2022 1:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](200) NULL,
	[Password] [varchar](200) NULL,
 CONSTRAINT [PK_patient_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_record]    Script Date: 30/06/2022 1:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_record](
	[id] [int] NOT NULL,
	[PatientName] [varchar](200) NULL,
	[PatientDisease] [text] NULL,
	[date] [varchar](200) NULL,
	[time] [varchar](200) NULL,
 CONSTRAINT [PK_patient_record] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_login]    Script Date: 30/06/2022 1:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_login](
	[id] [int] IDENTITY(1,2) NOT NULL,
	[username] [varchar](200) NOT NULL,
	[password] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[appointment] ([Name], [DOB], [Gender], [Address], [Contact], [DoctorId], [Doctorname], [Timing], [Specialization]) VALUES (N'Hanh Duyen', CAST(N'2002-05-03' AS Date), N'Female', N'Nguyen Gia Tri ', 198678454, 1, N'Hieu Ngan', N'2:00 P.M. to 4:00 P.M.', N'Bone')
INSERT [dbo].[appointment] ([Name], [DOB], [Gender], [Address], [Contact], [DoctorId], [Doctorname], [Timing], [Specialization]) VALUES (N'Hieu Minh', CAST(N'2000-08-15' AS Date), N'Male', N'Nguyen Chi Thanh, Q11', 987654321, 2, N'Man Nghi', N'2022-09-15', N'Heart')
INSERT [dbo].[appointment] ([Name], [DOB], [Gender], [Address], [Contact], [DoctorId], [Doctorname], [Timing], [Specialization]) VALUES (N'Ngoc Nhu', CAST(N'2001-06-21' AS Date), N'Female', N'Dien Bien Phu, Binh thanh', 123456789, 1, N'Hieu Ngan', N'2022-07-03', N'Bone')
GO
SET IDENTITY_INSERT [dbo].[doctor_login] ON 

INSERT [dbo].[doctor_login] ([id], [userName], [passWord]) VALUES (1, N'hieungan', N'0112')
INSERT [dbo].[doctor_login] ([id], [userName], [passWord]) VALUES (2, N'mannghi', N'1103')
SET IDENTITY_INSERT [dbo].[doctor_login] OFF
GO
INSERT [dbo].[doctor_record] ([id], [DoctorName], [Specialization]) VALUES (1, N'Hieu Ngan', N'Bone')
INSERT [dbo].[doctor_record] ([id], [DoctorName], [Specialization]) VALUES (2, N'Man Nghi', N'Heart')
INSERT [dbo].[doctor_record] ([id], [DoctorName], [Specialization]) VALUES (3, N'Nhat Thanh', N'eye')
GO
SET IDENTITY_INSERT [dbo].[patient_login] ON 

INSERT [dbo].[patient_login] ([id], [Username], [Password]) VALUES (1, N'ductrung', N'1234')
INSERT [dbo].[patient_login] ([id], [Username], [Password]) VALUES (2, N'tuankhai', N'1234')
SET IDENTITY_INSERT [dbo].[patient_login] OFF
GO
INSERT [dbo].[patient_record] ([id], [PatientName], [PatientDisease], [date], [time]) VALUES (1, N'Duc Trung', N'allergy', N'20-06-2022', N'14:20:19 PM')
INSERT [dbo].[patient_record] ([id], [PatientName], [PatientDisease], [date], [time]) VALUES (2, N'Tuan Khai', N'stuffy', N'22-06-2022', N'04:40:10 AM')
GO
SET IDENTITY_INSERT [dbo].[user_login] ON 

INSERT [dbo].[user_login] ([id], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[user_login] OFF
GO
