CREATE DATABASE NongPhamVN
GO
USE [NongPhamVN]
GO
/****** Object:  Table [dbo].[LoaiNS]    Script Date: 12/27/2017 11:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNS](
	[IDLoaiNS] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[HinhAnh] [nvarchar](350) NULL,
	[MotaNgan] [nvarchar](1024) NULL,
	[NguoiTao] [nvarchar](50) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[NguoiCapNhat] [nvarchar](50) NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_LoaiNS] PRIMARY KEY CLUSTERED 
(
	[IDLoaiNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/27/2017 11:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TenDayDu] [nvarchar](50) NULL,
	[GioiTinh] [int] NULL,
	[Phone] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](550) NULL,
	[NguoiTao] [nvarchar](50) NOT NULL,
	[NgayTao] [date] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NongSan]    Script Date: 12/27/2017 11:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NongSan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNS] [nvarchar](50) NOT NULL,
	[IDLoaiNS] [int] NOT NULL,
	[MoTaNgan] [nvarchar](550) NULL,
	[MotaChiTiet] [ntext] NULL,
	[NgayTao] [date] NOT NULL,
	[NguoiTao] [nvarchar](50) NOT NULL,
	[NgayCapNhat] [date] NULL,
	[NguoiCapNhat] [nvarchar](50) NULL,
	[HinhAnhDaiDien] [nvarchar](350) NULL,
 CONSTRAINT [PK_NongSan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 12/27/2017 11:05:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[IDTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NOT NULL,
	[MotaNgan] [nvarchar](550) NULL,
	[BaiVietChiTiet] [ntext] NULL,
	[UserID] [int] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[NgayCapNhat] [date] NULL,
	[HinhAnhDaiDien] [nvarchar](350) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[IDTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LoaiNS] ON 

INSERT [dbo].[LoaiNS] ([IDLoaiNS], [TenLoai], [HinhAnh], [MotaNgan], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (2, N'Trái cây nhập Mỹ', N'/Mediasfiles/bdm1484638024.jpg', NULL, N'admin', CAST(N'2017-12-10' AS Date), N'admin', CAST(N'2017-12-17' AS Date))
INSERT [dbo].[LoaiNS] ([IDLoaiNS], [TenLoai], [HinhAnh], [MotaNgan], [NguoiTao], [NgayTao], [NguoiCapNhat], [NgayCapNhat]) VALUES (3, N'Trái cây trong nước', N'/Mediasfiles/img-0660.jpg', NULL, N'admin', CAST(N'2017-12-10' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiNS] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([UserID], [TaiKhoan], [MatKhau], [TenDayDu], [GioiTinh], [Phone], [DiaChi], [NguoiTao], [NgayTao]) VALUES (1, N'admin', N'admin123', N'Quản trị viên', 0, NULL, NULL, N'admin', CAST(N'2017-12-02' AS Date))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NongSan] ON 

INSERT [dbo].[NongSan] ([ID], [TenNS], [IDLoaiNS], [MoTaNgan], [MotaChiTiet], [NgayTao], [NguoiTao], [NgayCapNhat], [NguoiCapNhat], [HinhAnhDaiDien]) VALUES (1, N'Nho Xanh Ninh Thuận', 3, N'<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Tahoma,Geneva,sans-serif">Ninh Thuận l&agrave; v&ugrave;ng đất c&oacute; thời tiết rất khắc nghiệt, quanh năm hầu như l&agrave; nắng n&oacute;ng, đất đai kh&ocirc; cằn. Tuy nhi&ecirc;n như một điều kỳ diệu, v&ugrave;ng đất n&agrave;y lại l&agrave; nơi duy nhất m&agrave; c&acirc;y Nho c&oacute; thể sinh sống v&agrave; ph&aacute;t triển ở Việt Nam....</span></span></p>
', N'<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp;Ninh Thuận l&agrave; v&ugrave;ng đất c&oacute; thời tiết rất khắc nghiệt, quanh năm hầu như l&agrave; nắng n&oacute;ng, đất đai kh&ocirc; cằn. Tuy nhi&ecirc;n như một điều kỳ diệu, v&ugrave;ng đất n&agrave;y lại l&agrave; nơi duy nhất m&agrave; c&acirc;y Nho c&oacute; thể sinh sống v&agrave; ph&aacute;t triển ở Việt Nam. Thời tiết c&agrave;ng kh&ocirc; hạn, c&acirc;y Nho Ninh Thuận cho tr&aacute;i c&agrave;ng nhiều v&agrave; c&agrave;ng ngọt hơn.</p>

<p style="text-align:justify">&nbsp; &nbsp; &nbsp; &nbsp;Nho xanh l&agrave; đặc sản của v&ugrave;ng đất Ninh Thu&acirc;̣n, tr&aacute;i nho từ l&acirc;u đ&atilde; được biết đến l&agrave; một trong những loại tr&aacute;i c&acirc;y c&oacute; chứa rất nhiều chất dinh dưỡng, do đ&oacute; rất tốt cho sức khỏe.</p>

<p style="text-align:justify"><strong>Đặc điểm sản phẩm:</strong></p>

<p style="text-align:justify">&nbsp; - &nbsp;Quả nho c&oacute; m&agrave;u xanh, k&iacute;ch thước vừa phải</p>

<p style="text-align:justify">&nbsp; - &nbsp;Ch&ugrave;m nho xanh Ninh Thuận lớn</p>

<p style="text-align:justify">&nbsp; - &nbsp;Nho c&oacute; vị ngọt.</p>

<p style="text-align:justify"><strong>Một v&agrave;i h&igrave;nh ảnh:</strong></p>

<p style="text-align:justify"><img alt="" src="/Mediasfiles/Nho-xanh-Ninh-Thuan-dong-thung(1).jpg" style="height:449px; width:800px" /></p>

<p style="text-align:justify"><img alt="" src="/Mediasfiles/vuon-nho-ninh-thuan-1.JPG" style="height:450px; width:800px" /></p>

<p style="text-align:justify"><img alt="" src="/Mediasfiles/vuon-nho-ninh-thuan-2.jpg" style="height:450px; width:800px" /></p>
', CAST(N'0001-01-01' AS Date), N'admin', CAST(N'2017-12-21' AS Date), N'admin', N'/Mediasfiles/Nho_xanh_Ninh_Thun.jpg')
INSERT [dbo].[NongSan] ([ID], [TenNS], [IDLoaiNS], [MoTaNgan], [MotaChiTiet], [NgayTao], [NguoiTao], [NgayCapNhat], [NguoiCapNhat], [HinhAnhDaiDien]) VALUES (3, N'Dâu Tây Đà Lạt', 3, N'<p>&nbsp;</p>

<p>D&acirc;u t&acirc;y Đà Lạt n&ocirc;̉i ti&ecirc;́ng với đ&ocirc;̣ ngon, ngọt, đẹp hòa mình với ti&ecirc;́t trời se lạnh của nơi đ&acirc;y. Kh&ocirc;ng gì có th&ecirc;̉ sánh bằng vi&ecirc;̣c thưởng thức quả d&acirc;u t&acirc;y trong khung cảnh mờ sương...</p>
', NULL, CAST(N'2017-12-20' AS Date), N'admin', NULL, NULL, N'/Mediasfiles/DauTayDaLat1.jpg')
SET IDENTITY_INSERT [dbo].[NongSan] OFF
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([IDTinTuc], [TieuDe], [MotaNgan], [BaiVietChiTiet], [UserID], [NgayTao], [NgayCapNhat], [HinhAnhDaiDien]) VALUES (1, N'Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh', N'<p>&nbsp;</p>

<p>Bệnh đau dạ d&agrave;y ng&agrave;y c&agrave;ng xuất hiện nhiều trong cuộc sống hiện đại của ch&uacute;ng ta, nguy&ecirc;n nh&acirc;n của căn bệnh n&agrave;y do đ&acirc;u, phương ph&aacute;p chữa bệnh đơn giản như thế n&agrave;o. H&atilde;y c&ugrave;ng tham khảo b&agrave;i viết sau đ&acirc;y để c&oacute; th&ecirc;m th&ocirc;ng tin về căn...</p>
', N'<div class="noidung_tin">
<p style="text-align:justify"><span style="font-size:14px"><strong>Bệnh đau dạ d&agrave;y </strong>l&agrave; căn bệnh kh&aacute; phổ biến hiện nay, bệnh n&agrave;y xuất hiện do một số<strong> nguy&ecirc;n nh&acirc;n</strong> sau:</span></p>

<p style="margin-left:27pt; text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Th&oacute;i quen ăn uống: </strong>Th&oacute;i quen ăn uống kh&ocirc;ng tốt sẽ dẫn đến đau dạ d&agrave;y như ăn qu&aacute; nhanh, ăn vặt, ăn kh&ocirc;ng đ&uacute;ng bữa, ăn thức ăn kh&ocirc;ng hợp vệ sinh&hellip;</span></p>

<p style="margin-left:27pt; text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Stress căng thẳng: </strong>Nguy&ecirc;n nh&acirc;n n&agrave;y l&agrave; một trong c&aacute;c nguy&ecirc;n nh&acirc;n ch&iacute;nh hiện nay, do &aacute;p lực c&ocirc;ng việc, &aacute;p lực của cuộc sống khiến bạn trở n&ecirc;n căng thẳng. Khi cơ thể căng thẳng sẽ tiết ra nhiều acid HCl trong dạ d&agrave;y hơn b&igrave;nh thường, c&aacute;c acid n&agrave;y dễ l&agrave;m tổn thương ni&ecirc;m mạc dạ d&agrave;y dẫn đến đau dạ d&agrave;y.</span></p>

<p style="margin-left:27pt; text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>H&uacute;t thuốc l&aacute;: </strong>Khi h&uacute;t thuốc l&aacute; th&igrave; c&aacute;c chất độc c&oacute; trong thuốc, chủ yếu l&agrave; nicotine sẽ th&uacute;c đẩy cơ thể b&agrave;i tiết acid HCl, l&agrave; chất trực tiếp ăn m&ograve;n ni&ecirc;m mạc dạ d&agrave;y, ức chế sự tổng hợp Prostaglandin, chất c&oacute; vai tr&ograve; bảo vệ v&agrave; phục hồi ni&ecirc;m mạc,thu hẹp c&aacute;c mạch m&aacute;u dạ d&agrave;y, từ đ&oacute; dẫn tới tổn thương lớp bảo vệ n&agrave;y. Ngo&agrave;i ra hoạt chất Nicotine cũng khiến Clorat c&oacute; trong t&uacute;i mật bị chảy ra ngo&agrave;i đẫn tới dạ d&agrave;y bị tổn thương nghi&ecirc;m trọng.</span></p>

<p style="margin-left:27pt; text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Bia rượu: </strong>Chất cồn c&oacute; trong bia rượu cực k&igrave; c&oacute; hại cho dạ d&agrave;y. N&oacute; sẽ ph&aacute; hoại lớp nhầy bảo vệ ni&ecirc;m mạc dạ d&agrave;y. Ngo&agrave;i ra, rượu bia l&agrave; C<sub>2</sub>H<sub>5</sub>OH sau khi v&agrave;o dạ d&agrave;y sẽ chuyển h&oacute;a th&agrave;nh CH<sub>3</sub>CHO, khi chất n&agrave;y c&oacute; qu&aacute; nhiều trong cơ thể n&oacute; sẽ kh&ocirc;ng thể bị chuyển h&oacute;a hết th&agrave;nh CH<sub>3</sub>COOH, từ đ&oacute; g&acirc;y tổn thương gan. Như vậy khi gan bị tổn thương, hệ ti&ecirc;u h&oacute;a k&eacute;m đi, dạ d&agrave;y cũng v&igrave; thế m&agrave; giảm đi h&agrave;ng ng&agrave;y.</span></p>

<p style="margin-left:27pt; text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Vi khuẩn HP:</strong> Vi khuẩn sống trong ni&ecirc;m mạc dạ d&agrave;y, khi bị vi&ecirc;m dạ d&agrave;y m&atilde;n t&iacute;nh&nbsp;do loại vi khuẩn n&agrave;y c&oacute; thể khiến ni&ecirc;m mạc dạ d&agrave;y bị teo, từ đ&oacute; khiến khả năng tiết acid bị suy giảm, g&acirc;y n&ecirc;n hiện tượng chuyển sang ni&ecirc;m mạc ruột đẫn tới nguy cơ ung thư m&ocirc; tuyến ở bao tử.</span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>Bệnh đau dạ d&agrave;y</strong>&nbsp;l&agrave;m cho người bệnh gặp rất nhiều kh&oacute; khăn trong ăn uống cũng như sinh hoạt hằng ng&agrave;y. Khi mắc phải bệnh n&agrave;y, những cơn đau dạ d&agrave;y sẽ h&agrave;nh hạ bạn, cơ thể bạn gầy đi, ch&aacute;n ăn, v&agrave; đặc biệt bạn lu&ocirc;n trong t&igrave;nh trạng mệt mỏi chẳng muốn l&agrave;m g&igrave;. B&agrave;i viết sau sẽ chỉ cho bạn một số c&aacute;ch&nbsp;<strong>chữa bệnh đau dạ d&agrave;y </strong>đơn giản m&agrave; hiệu quả.</span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>1. BỘT NGHỆ V&Agrave; MẬT ONG</strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">Nghệ v&agrave;ng c&oacute; t&aacute;c dụng chống lo&eacute;t dạ d&agrave;y, giảm tiết dịch vị v&agrave; nhờ tinh dầu nghệ c&oacute; t&iacute;nh kiềm n&ecirc;n gi&uacute;p l&agrave;m giảm độ acid của dịch vị. Ngo&agrave;i ra nghệ v&agrave;ng c&ograve;n c&oacute; t&aacute;c dụng chống vi&ecirc;m v&agrave; l&agrave;m l&agrave;nh vết lo&eacute;t.</span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" src="http://www.nongsansachvietnam.vn/Images_upload/images/nghe-tuoi-mat-ong-chua-dau-da-day.jpg" style="height:439px; width:679px" title="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" /></span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>C&aacute;ch d&ugrave;ng:</strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">- Nghệ v&agrave;ng, d&ugrave;ng 50g củ nghệ tươi, rửa sạch bỏ vỏ, đ&acirc;m lấy nước pha với mật ong uống trong ng&agrave;y (bạn ch&uacute; &yacute; kh&ocirc;ng n&ecirc;n sử dụng nghệ đỏ, v&igrave; hiệu quả của n&oacute; kh&ocirc;ng cao, bạn n&ecirc;n t&igrave;m mua loại nghệ v&agrave;ng để sử dụng).</span></p>

<p style="text-align:justify"><span style="font-size:14px">- Hiện nay ngo&agrave;i thị trường c&oacute; sẵn c&aacute;c loại tinh bột nghệ hay bột nghệ sạch đ&atilde; được t&aacute;ch tinh dầu v&agrave; c&aacute;c chất cặn b&atilde;. Bạn c&oacute; thể mua về để sử dụng thay cho nghệ tươi nếu kh&ocirc;ng c&oacute; thời gian.</span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>2.&nbsp;ĐU ĐỦ TƯƠI</strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">Đu đủ cũng l&agrave; một trong c&aacute;c loại tr&aacute;i c&acirc;y c&oacute; t&aacute;c dụng hạn chế bệnh đau dạ d&agrave;y m&agrave; kh&ocirc;ng phải ai cũng biết, tuy nhi&ecirc;n đu đủ kh&ocirc;ng c&oacute; t&aacute;c dụng chữa bệnh đau dạ d&agrave;y, do đ&oacute; bạn kh&ocirc;ng n&ecirc;n lạm dụng.</span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" src="http://www.nongsansachvietnam.vn/Images_upload/images/qua-du-du(1).jpg" style="height:335px; width:493px" title="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" /></span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>C&aacute;ch d&ugrave;ng:</strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">- Sử dụng đu đủ ch&iacute;n, th&aacute;i nhỏ, &eacute;p lấy nước cốt;</span></p>

<p style="text-align:justify"><span style="font-size:14px">- Uống 2 &ndash; 3 lần/ng&agrave;y.</span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>3.&nbsp;CHUỐI HỘT</strong></span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" src="http://www.nongsansachvietnam.vn/Images_upload/images/chuoi-hot(1).jpg" style="height:497px; width:755px" title="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" /></span></p>

<p style="text-align:justify"><span style="font-size:14px">C&aacute;ch d&ugrave;ng:</span></p>

<p style="text-align:justify"><span style="font-size:14px">- Chuối hột chọn loại gi&agrave;, th&aacute;i l&aacute;t nhỏ, phơi kh&ocirc;;</span></p>

<p style="text-align:justify"><span style="font-size:14px">- Nghiền th&agrave;nh bột rồi h&ograve;a với nước ấm để d&ugrave;ng;</span></p>

<p><span style="font-size:14px">- Uống 2-3 lần/ng&agrave;y trước bữa ăn</span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>4.&nbsp;GỪNG</strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">Gừng chứa các thành ph&acirc;̀n kháng vi&ecirc;m cũng như có tác dụng ch&ocirc;́ng oxy hóa, Sử dụng m&ocirc;̣t lát gừng tươi sẽ giúp người bị bệnh đau dạ d&agrave;y cảm thấy dễ chịu hơn khi bị đau hay co thắt dạ dày</span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" src="http://www.nongsansachvietnam.vn/Images_upload/images/cu-gung-tuoi.jpg" style="height:346px; width:500px" title="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" /></span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>C&aacute;ch d&ugrave;ng: </strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gừng tươi th&aacute;t l&aacute;t mỏng;</span></p>

<p style="text-align:justify"><span style="font-size:14px">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bỏ 1 đến 2 l&aacute;t gừng tươi v&agrave;o t&aacute;ch tr&agrave; xanh rồi uống.</span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>5. CHANH TƯƠI</strong></span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" src="http://www.nongsansachvietnam.vn/Images_upload/images/qua-chanh-tuoi.jpg" style="height:415px; width:669px" title="Đau dạ dày - Nguyên nhân và Phương pháp chữa bệnh" /></span></p>

<p style="text-align:justify"><span style="font-size:14px"><strong>C&aacute;ch d&ugrave;ng:</strong></span></p>

<p style="text-align:justify"><span style="font-size:14px">- Chọn quả chanh nhiều nước, vắt lấy cốt chanh;</span></p>

<p style="text-align:justify"><span style="font-size:14px">- Pha 2 &ndash; 3 th&igrave;a c&agrave; ph&ecirc; nước cốt chanh với nước ấm;</span></p>

<p style="text-align:justify"><span style="font-size:14px">- Uống 2 &ndash; 3 ly nước chanh mỗi ng&agrave;y.ổng </span></p>
</div>
', 1, CAST(N'2017-12-20' AS Date), CAST(N'2017-12-20' AS Date), N'/Mediasfiles/benh_dau_da_day.jpg')
INSERT [dbo].[TinTuc] ([IDTinTuc], [TieuDe], [MotaNgan], [BaiVietChiTiet], [UserID], [NgayTao], [NgayCapNhat], [HinhAnhDaiDien]) VALUES (3, N'Cách bảo quản nho đúng cách', N'<p>Nho l&agrave; loại tr&aacute;i c&acirc;y kh&ocirc;ng c&oacute; thuốc bảo quản, kh&ocirc;ng c&oacute; thuốc k&iacute;ch th&iacute;ch, v&igrave; thế việc bảo quản Nho l&agrave; một vấn đề đặt l&ecirc;n h&agrave;ng đầu, để l&agrave;m sao loại tr&aacute;i c&acirc;y sạch n&agrave;y để được l&acirc;u m&agrave; kh&ocirc;ng bị h&eacute;o.&nbsp;</p>
', N'<div class="noidung_tin">
<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">Nho l&agrave; loại tr&aacute;i c&acirc;y kh&ocirc;ng c&oacute; thuốc bảo quản, kh&ocirc;ng c&oacute; thuốc k&iacute;ch th&iacute;ch, v&igrave; thế việc bảo quản Nho l&agrave; một vấn đề đặt l&ecirc;n h&agrave;ng đầu, để l&agrave;m sao loại tr&aacute;i c&acirc;y sạch n&agrave;y để được l&acirc;u m&agrave; kh&ocirc;ng bị h&eacute;o.&nbsp;</span></span></p>

<p style="text-align:center"><span style="font-size:14px"><img alt="Cách Bảo Quản Nho" src="http://www.nongsansachvietnam.vn/Images_upload/images/nho-xanh-ninh-thuan-tac-dung.jpg" style="height:375px; width:500px" title="Cách Bảo Quản Nho" /></span></p>

<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">- Để bảo quản nho được l&acirc;u d&agrave;i, bạn n&ecirc;n chọn những ch&ugrave;m nho tươi ngon nhất, n&ecirc;n chọn nho c&ograve;n c&oacute; lớp phấn ở b&ecirc;n ngo&agrave;i, nho c&ograve;n nguy&ecirc;n trong ch&ugrave;m, kh&ocirc;ng bị dập n&aacute;t.</span></span></p>

<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">- Kh&ocirc;ng rửa nho trước khi bảo quản, việc rửa nho sẽ l&agrave;m nho mất đi lớp phấn bảo vệ, khiến cho quả nho nhanh hỏng.</span></span></p>

<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">- Bỏ nho v&agrave;o t&uacute;i nilong, buộc k&iacute;n v&agrave; cho v&agrave;o ngăn m&aacute;t của tủ lạnh (bạn c&oacute; thể d&ugrave;ng t&uacute;i h&uacute;t ch&acirc;n kh&ocirc;ng để tăng thời gian bảo quản nho).</span></span></p>

<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">- Kh&ocirc;ng xếp chồng nho l&ecirc;n nhau qu&aacute; nhiều, việc xếp chồng sẽ khiến nho bị dập v&agrave; nhanh hỏng.</span></span></p>

<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">- Kh&ocirc;ng bỏ nho c&ugrave;ng với c&aacute;c loại rau củ quả c&oacute; m&uacute;i như h&agrave;nh t&acirc;y, tỏi v&igrave; nho c&oacute; khả năng hấp thụ m&ugrave;i.</span></span></p>

<p style="margin-left:0in; margin-right:0in; text-align:justify"><span style="font-size:14px"><span style="color:black">- Khi ăn n&ecirc;n lấy nho với lượng vừa đủ ăn, rửa sạch để loại bỏ lớp phấn bảo vệ.</span></span></p>

<p>&nbsp;</p>
</div>
', 1, CAST(N'2017-12-20' AS Date), NULL, N'/Mediasfiles/Bao_quan_nho.jpg')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
ALTER TABLE [dbo].[NongSan]  WITH CHECK ADD  CONSTRAINT [FK_NongSan_LoaiNS] FOREIGN KEY([IDLoaiNS])
REFERENCES [dbo].[LoaiNS] ([IDLoaiNS])
GO
ALTER TABLE [dbo].[NongSan] CHECK CONSTRAINT [FK_NongSan_LoaiNS]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_NguoiDung] FOREIGN KEY([UserID])
REFERENCES [dbo].[NguoiDung] ([UserID])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_NguoiDung]
GO
