USE [DoAn]
GO
/****** Object:  Table [dbo].[ChuNhiem]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuNhiem](
	[id] [varchar](12) NOT NULL,
	[id_giaovien] [varchar](12) NULL,
	[id_hocsinh] [varchar](12) NULL,
 CONSTRAINT [PK_ChuNhiem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemDanh]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDanh](
	[iddiemdanh] [varchar](12) NOT NULL,
	[id_hocsinh] [varchar](12) NOT NULL,
	[ngay] [date] NOT NULL,
	[trangthai] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_DiemDanh] PRIMARY KEY CLUSTERED 
(
	[iddiemdanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[idhocsinh] [varchar](12) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[ngaysinh] [date] NULL,
	[lop] [varchar](12) NULL,
	[gioitinh] [bit] NULL,
	[idphuhuynh] [varchar](12) NOT NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[idhocsinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQuaHocTap]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQuaHocTap](
	[idketqua] [varchar](12) NOT NULL,
	[id_hocsinh] [varchar](12) NOT NULL,
	[monhoc] [nvarchar](50) NULL,
	[diemhso1] [float] NULL,
	[diemhso2] [float] NULL,
	[diemhso3] [float] NULL,
	[diemtb] [float] NULL,
	[hocky] [int] NULL,
	[nhanxet] [text] NULL,
 CONSTRAINT [PK_KetQuaHocTap] PRIMARY KEY CLUSTERED 
(
	[idketqua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[iduser] [varchar](12) NOT NULL,
	[login_name] [varchar](12) NOT NULL,
	[password] [varchar](12) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[fullname] [varchar](50) NOT NULL,
	[vai_tro] [nvarchar](20) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[idphanhoi] [varchar](12) NOT NULL,
	[id_thongbao] [varchar](12) NULL,
	[id_nguoigui] [varchar](12) NULL,
	[noidung] [text] NULL,
	[ngaygui] [date] NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[idphanhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 23/04/2025 9:55:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[idthongbao] [varchar](12) NOT NULL,
	[tieude] [nvarchar](50) NULL,
	[noidung] [text] NULL,
	[ngaygui] [date] NULL,
	[id_nguoigui] [varchar](12) NULL,
	[id_nguoinhan] [varchar](12) NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[idthongbao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChuNhiem]  WITH CHECK ADD  CONSTRAINT [FK_ChuNhiem_HocSinh] FOREIGN KEY([id_hocsinh])
REFERENCES [dbo].[HocSinh] ([idhocsinh])
GO
ALTER TABLE [dbo].[ChuNhiem] CHECK CONSTRAINT [FK_ChuNhiem_HocSinh]
GO
ALTER TABLE [dbo].[ChuNhiem]  WITH CHECK ADD  CONSTRAINT [FK_ChuNhiem_NguoiDung] FOREIGN KEY([id_giaovien])
REFERENCES [dbo].[NguoiDung] ([iduser])
GO
ALTER TABLE [dbo].[ChuNhiem] CHECK CONSTRAINT [FK_ChuNhiem_NguoiDung]
GO
ALTER TABLE [dbo].[DiemDanh]  WITH CHECK ADD  CONSTRAINT [FK_DiemDanh_HocSinh] FOREIGN KEY([id_hocsinh])
REFERENCES [dbo].[HocSinh] ([idhocsinh])
GO
ALTER TABLE [dbo].[DiemDanh] CHECK CONSTRAINT [FK_DiemDanh_HocSinh]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_NguoiDung] FOREIGN KEY([idphuhuynh])
REFERENCES [dbo].[NguoiDung] ([iduser])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_NguoiDung]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaHocTap_HocSinh] FOREIGN KEY([id_hocsinh])
REFERENCES [dbo].[HocSinh] ([idhocsinh])
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [FK_KetQuaHocTap_HocSinh]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoi_NguoiDung] FOREIGN KEY([id_nguoigui])
REFERENCES [dbo].[NguoiDung] ([iduser])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK_PhanHoi_NguoiDung]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoi_ThongBao] FOREIGN KEY([id_thongbao])
REFERENCES [dbo].[ThongBao] ([idthongbao])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK_PhanHoi_ThongBao]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_HocSinh] FOREIGN KEY([id_nguoinhan])
REFERENCES [dbo].[HocSinh] ([idhocsinh])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_HocSinh]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_NguoiDung] FOREIGN KEY([id_nguoigui])
REFERENCES [dbo].[NguoiDung] ([iduser])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_NguoiDung]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [CK_diemhso1] CHECK  (([diemhso1]>=(0) AND [diemhso1]<=(10)))
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [CK_diemhso1]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [CK_diemhso2] CHECK  (([diemhso2]<=(10) AND [diemhso2]>=(0)))
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [CK_diemhso2]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [CK_diemhso3] CHECK  (([diemhso3]>=(0) AND [diemhso3]<=(10)))
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [CK_diemhso3]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [CK_diemtb] CHECK  (([diemtb]>=(0) AND [diemtb]<=(10)))
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [CK_diemtb]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [CK_hocky] CHECK  (([hocky]>=(1)))
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [CK_hocky]
GO
