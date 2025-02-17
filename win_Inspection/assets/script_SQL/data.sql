USE [Inspection]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (5, N'میثم', N'پورمحمد', N'999', N'meysam', N'123456', 1, N'1450978002', 1002, CAST(N'2023-02-14 20:29:37.347' AS DateTime), CAST(N'2023-02-14 20:29:37.347' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (6, N'4', N'42', N'423', N'423', N'2342', 1, N'234', 1002, CAST(N'2023-02-17 13:02:14.580' AS DateTime), CAST(N'2023-02-17 13:02:14.580' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (7, N'234', N'234', N'234', N'234', N'234234', 1, N'234', 1001, CAST(N'2023-02-17 13:04:03.240' AS DateTime), CAST(N'2023-02-17 13:04:03.240' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (8, N'میثم', N'پورمحمد', N'383', N'MeysamPour', N'123456', 1, N'14550999874', 1002, CAST(N'2023-03-16 17:14:05.497' AS DateTime), CAST(N'2023-03-16 17:14:05.497' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (9, N'علی', N'پورمحمد', N'5541', N'ali', N'123456', 1, N'1234567891', 1001, CAST(N'2023-03-28 18:42:25.900' AS DateTime), CAST(N'2023-03-28 18:42:25.900' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (10, N'342', N'4', N'34', N'234', N'234', 1, N'234', 1001, CAST(N'2023-03-30 03:59:49.243' AS DateTime), CAST(N'2023-03-30 03:59:49.243' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (11, N'Ali', N'Poour', N'1231241', N'edfskdjf', N'123123', 1, N'123444123', 1002, CAST(N'2023-04-07 01:51:25.330' AS DateTime), CAST(N'2023-04-07 01:51:25.330' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (12, N'سبحان', N'پورمحمد', N'112541', N'sobhan', N'123456', 1, N'55412454', 1001, CAST(N'2023-04-13 19:56:14.767' AS DateTime), CAST(N'2023-04-13 19:56:14.767' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[Zones] ([Code], [Name], [CreationDate], [LastModifyDate]) VALUES (1, N'مرکزی تهران', CAST(N'2023-02-17 00:45:03.980' AS DateTime), CAST(N'2023-02-17 00:45:03.980' AS DateTime))
INSERT [dbo].[Zones] ([Code], [Name], [CreationDate], [LastModifyDate]) VALUES (2, N'جنوب', CAST(N'2023-03-28 18:39:10.937' AS DateTime), CAST(N'2023-03-28 18:39:10.937' AS DateTime))
SET IDENTITY_INSERT [dbo].[Branchs] ON 

INSERT [dbo].[Branchs] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [ZoneCode], [CreationDate], [LastModifyDate]) VALUES (1, 1001, N'ستارخان', N'0216654115', N'تهران ستاریخان', N'تهران', 1, 1, CAST(N'2023-02-17 00:45:03.980' AS DateTime), CAST(N'2023-02-17 00:45:03.980' AS DateTime))
INSERT [dbo].[Branchs] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [ZoneCode], [CreationDate], [LastModifyDate]) VALUES (2, 1002, N'به آفرین', N'0212255418', N'تهران میدان ولیعصر', N'تهران', 1, 1, CAST(N'2023-02-17 00:45:03.980' AS DateTime), CAST(N'2023-02-17 00:45:03.980' AS DateTime))
INSERT [dbo].[Branchs] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [ZoneCode], [CreationDate], [LastModifyDate]) VALUES (3, NULL, N'اسلامشهر', N'235523', N'تهران', NULL, 1, 1, CAST(N'2023-04-13 19:58:40.520' AS DateTime), CAST(N'2023-04-13 19:58:40.520' AS DateTime))
SET IDENTITY_INSERT [dbo].[Branchs] OFF
