USE [DoAn]
GO
INSERT [dbo].[NguoiDung] ([iduser], [login_name], [password], [email], [fullname], [vai_tro]) VALUES (N'AD1', N'admin1', N'9999', N'admin@gmail.com', N'Pham Quoc Truong', N'Admin')
INSERT [dbo].[NguoiDung] ([iduser], [login_name], [password], [email], [fullname], [vai_tro]) VALUES (N'GV1', N'giaovien1', N'1234', N'gvien1@gmail.com', N'Tran Thi Thu Dung', N'Giao vien')
INSERT [dbo].[NguoiDung] ([iduser], [login_name], [password], [email], [fullname], [vai_tro]) VALUES (N'PH1', N'phuhuynh1', N'123', N'ph1@gmail.com', N'Nguyen Van Anh', N'Phu huynh')
INSERT [dbo].[NguoiDung] ([iduser], [login_name], [password], [email], [fullname], [vai_tro]) VALUES (N'PH2', N'phuhuynh2', N'12345', N'ph2@gmail.com', N'Nguyen Bach Viet', N'Phu huynh')
INSERT [dbo].[NguoiDung] ([iduser], [login_name], [password], [email], [fullname], [vai_tro]) VALUES (N'PH3', N'phuhuynh3', N'7685', N'ph3@gmail.com', N'Le Tan Dung', N'Phu huynh')
GO
INSERT [dbo].[HocSinh] ([idhocsinh], [hoten], [ngaysinh], [lop], [gioitinh], [idphuhuynh]) VALUES (N'HS1', N'Tran Thi Truc', CAST(N'2008-01-19' AS Date), N'11D1', 0, N'PH1')
INSERT [dbo].[HocSinh] ([idhocsinh], [hoten], [ngaysinh], [lop], [gioitinh], [idphuhuynh]) VALUES (N'HS2', N'Nguyen Khac Tuan', CAST(N'2008-05-07' AS Date), N'11D1', 1, N'PH2')
INSERT [dbo].[HocSinh] ([idhocsinh], [hoten], [ngaysinh], [lop], [gioitinh], [idphuhuynh]) VALUES (N'HS3', N'Le Minh Anh', CAST(N'2008-08-28' AS Date), N'11D1', 0, N'PH3')
GO
INSERT [dbo].[ChuNhiem] ([id], [id_giaovien], [id_hocsinh]) VALUES (N'1', N'GV1', N'HS1')
INSERT [dbo].[ChuNhiem] ([id], [id_giaovien], [id_hocsinh]) VALUES (N'2', N'GV1', N'HS2')
INSERT [dbo].[ChuNhiem] ([id], [id_giaovien], [id_hocsinh]) VALUES (N'3', N'GV1', N'HS3')
GO
INSERT [dbo].[KetQuaHocTap] ([idketqua], [id_hocsinh], [monhoc], [diemhso1], [diemhso2], [diemhso3], [diemtb], [hocky], [nhanxet]) VALUES (N'KQ1', N'HS1', N'Toán', 3, 1.5, 2, 2, 2, NULL)
INSERT [dbo].[KetQuaHocTap] ([idketqua], [id_hocsinh], [monhoc], [diemhso1], [diemhso2], [diemhso3], [diemtb], [hocky], [nhanxet]) VALUES (N'KQ2', N'HS2', N'Vật Lí', 9, 9.5, 9, 9.17, 2, NULL)
INSERT [dbo].[KetQuaHocTap] ([idketqua], [id_hocsinh], [monhoc], [diemhso1], [diemhso2], [diemhso3], [diemtb], [hocky], [nhanxet]) VALUES (N'KQ3', N'HS3', N'Ngữ Văn', 2, 1.5, 1.5, 1.58, 2, NULL)
INSERT [dbo].[KetQuaHocTap] ([idketqua], [id_hocsinh], [monhoc], [diemhso1], [diemhso2], [diemhso3], [diemtb], [hocky], [nhanxet]) VALUES (N'KQ4', N'HS1', N'Toán', 3, 2, 3, 2.67, NULL, NULL)
GO
