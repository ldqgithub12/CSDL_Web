USE [master]
GO

CREATE DATABASE [VnBookStore1]
GO

USE [VnBookStore1]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/24/2021 8:28:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[MaTG] [int] NOT NULL,
	[TieuDe] [nvarchar](60) NOT NULL,
	[Gia] [money] NOT NULL,
	[MoTa] [ntext] NULL,
	[AnhBia] [varchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/24/2021 8:28:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[TieuSu] [ntext] NOT NULL,
	[QueQuan] [nvarchar](40) NOT NULL,
	[Anh] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/24/2021 8:28:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[Quyen] [bit] NOT NULL,
	[HoTen] [nvarchar](34) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (1, 1, N'Lão hạc', 100000.0000, N'Lão Hạc là một truyện ngắn của nhà văn Nam Cao được viết năm 1943. Tác phẩm được đánh giá là một trong những truyện ngắn tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Tám', N'tplaohac.jpg', 10)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (2, 1, N'Chí phèo', 120000.0000, N'Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Chí Phèo cũng là tên nhân vật chính của', N'tpchipheo.jpg', 2)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (3, 1, N'Sống mòn', 70000.0000, N'Tác phấm Sống mòn được viết trước Cách Mạng Tháng Tám, ban đầu với tên gọi Chết mòn. Nội dung chính của tác phẩm thể hiện tấn bi kịch của người trí thức tiểu tư sản trong xã hội cũ, cái xã hội tàn nhẫn đã vùi dập mọi ước mơ, khát vọng, tước đi ý nghĩa sự sống chân chính của con người.', N'songmon.jpg', 0)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (4, 2, N'Dế mèn phiêu lưu ký', 130000.0000, N'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của nhà văn Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi.', N'tpdemen.jpg', 10)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (6, 2, N'Quê người', 65000.0000, N'"Quê người của Tô Hoài còn cho ta thấy biết bao cái giản dị và nên thơ của người dân quê Việt Nam – những người tuy phác thực mà rất mơ màng: họ vốn là tác giả những câu ca dao bất hủ. Hãy xem cái cách hẹn hò của cặp tình nhân Hời và Ngây, cách hẹn hò ý nhị của Tristan cùng Iseut. Đông Tây có lẽ gặp nhau ở chỗ này.”', N'tpquenguoi.jpg', 1)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (7, 3, N'Số đỏ', 100000.0000, N'Số đỏ là một tiểu thuyết văn học của nhà văn Vũ Trọng Phụng, đăng ở Hà Nội báo từ số 40 ngày 7 tháng 10 năm 1936 và được in thành sách lần đầu vào năm 1938. Nhiều nhân vật và câu nói trong tác phẩm đã đi vào cuộc sống đời thường và tác phẩm đã được dựng thành kịch, phim.', N'tpsodo.jpg', 13)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (8, 4, N'Từ ấy', 130000.0000, N'Từ ấy là tập thơ đầu của nhà thơ Việt Nam Tố Hữu, được sáng tác trong khoảng 10 năm kéo dài từ 1937 đến 1946', N'tuay.jpg', 7)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (9, 5, N'Tập thơ Xuân Diệu', 100000.0000, N'Tuyển tập nhiều bài thơ hay của nhà thơ Xuân Diệu', N'thoxuandieu.jpg', 9)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (10, 1, N'Đời thừa', 80000.0000, N'Đời thừa được xem như một đường may tinh tế trên dải lụa của nền văn học nước nhà trong những năm trước Cách mạng Tháng Tám, tác phẩm là một khúc bi ca đẫm lệ về số phận bất hạnh của người tri thức trong xã hội cũ.', N'tpdoithua.jpg', 7)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (11, 1, N'Tuyển tập truyện ngắn', 150000.0000, N'Trong những tâm hồn chất phác, bị nghèo khổ làm cho mụ mị cằn cỗi, ngay trong một con người u mê cục súc như Chí Phèo, Nam Cao tìm ra những rung động trong sáng của tình yêu, của niềm khát khao được sống cho ra người, những rung động ấy đột ngột hé lên từng lúc rồi lại bị đời sống vùi dập', N'tptuyentap.jpg', 9)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (12, 2, N'Chiều chiều', 55000.0000, N'Cuốn hồi ký  đã khắc họa rất sống động, không màu mè, hoa mỹ mảnh đời của những người bạn văn (đa số trong họ đã ra đi). Đó là những chân dung, tính cách văn học được người đời quan tâm và dệt nên những giai thoại về họ', N'tpchieuchieu.jpg', 0)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (14, 2, N'Khách nợ', 64000.0000, N'Khách Nợ là nét vẽ thực về những con người, những cảnh đời khốn cùng ở làng quê nghèo ngoại thành Hà Nội trước Cách mạng Tháng Tám. Với cách kể chuyện bình dị, nhẹ nhàng, không màu mè, hoa mỹ, từng câu chuyện, từng số phận cứ từ từ xuất hiện, họ sống, chết, đói khổ, đau thương… chân thật đến ngỡ ngàng nhưng cũng xót xa đến ngỡ ngàng.', N'tpkhachno.jpg', 9)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (15, 2, N'Miền tây', 96000.0000, N'Được viết năm 1965, Miền Tây là tác phẩm tiếp nối cho đề tài về vùng đất Tây Bắc “để thương để nhớ” cho Tô Hoài trong suốt cuộc đời cầm bút của mình. Tô Hoài đã dành cho cuốn tiểu thuyết những nét vẽ chân thật và sinh động nhất, với hình ảnh những người con đất Phiềng Sa tình nghĩa đã sống qua hết những vất vả, đau thương, đấu tranh và dựng xây. Khai thác nhiều tư liệu lịch sử, chính trị, quân sự, tác phẩm đã tạo nên những bức tranh đối lập xưa và nay trong cuộc sống, số phận con người Phiềng Sa', N'tpmientay.jpg', 4)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (16, 3, N'Giông tố', 80000.0000, N'Giông tố là tác phẩm mang nội dung châm biếm sâu sắc về một xã hội mục nát, sự hỗn loạn khi pha trộn hai nền văn hóa giữa Tây và ta, thể hiện rõ sự bần cùng của những người nghèo khổ và lên án thái độ sa đọa hống hách của kẻ giàu có.', N'tpgiongto.jpg', 7)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (17, 3, N'Vỡ đê', 70000.0000, N'Vỡ đê phản ánh hiện thực trên một phạm vi khá rộng, từ thành thị đến nông thôn, song tập trung lên án những chính sách, thủ đoạn thống trị của bọn thực dân, quan lại đã đẩy người nông dân vào tình cảnh đói rét cơ cực. Một tác phẩm hiện thực phê phán của Vũ Trọng Phụng đã cho người đọc thấy lại những ngày tăm tối của dân tộc ta dưới ách thống trị của thực dân phong kiến trong giai đoạn trước 1945.', N'tpvode.jpg', 9)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (18, 3, N'Tuyển tập Vũ Trọng Phụng', 120000.0000, N'Ngòi bút sắc sảo của Vũ Trọng Phụng tung hoành trên nhiều thể loại nhưng tư tưởng, tài năng và đóng góp to lớn của ông được thể hiện chủ yếu ở phóng sự và tiểu thuyết, nhất là tiểu thuyết hiện thực. Ông có những đóng góp nổi bật cho thành tựu của văn học hiện thực Việt Nam giai đoạn 1930 - 1945', N'tptuyentapvtp.jpg', 15)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (19, 4, N'Việt Bắc', 65000.0000, N'Việt Bắc là tập thơ của nhà thơ Tố Hữu, hầu hết trong đó là các bài thơ sáng tác trong những năm kháng chiến chống Pháp và đã được xuất bản trên báo chí trước khi in thành tập lần đầu tiên vào năm 1954.', N'tpvietbac.jpg', 5)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (20, 4, N'Máu và hoa', 30000.0000, N'Tố Hữu là một nhà thơ lớn. nói đúng hơn, ông là nhà thơ lãng mạn cách mạng. Cả cuộc đời ông gắn bó với cách mạng. Thơ với đời là một. Trước sau đều nhất quán. Tố Hữu nhìn cách mạng bằng con mắt lãng mạn của một thi sĩ. Thơ ông dường như chỉ có một giọng. Đó là gióng hát từng bừng ca ngợi cách mạng.', N'tpmauvahoa.jpg', 0)
INSERT [dbo].[Sach] ([MaSach], [MaTG], [TieuDe], [Gia], [MoTa], [AnhBia], [SoLuong]) VALUES (21, 5, N'Thơ thơ', 55000.0000, N'Xuân Diệu trở thành một trong những nhà thơ hàng đầu ca ngợi Cách mạng, một “dòng thơ công dân”. Bút pháp của ông chuyển biến phong phú về giọng vẻ: có giọng trầm hùng, tráng ca, có giọng chính luận, giọng thơ tự sự trữ tình. Tiêu biểu là: Ngọn quốc kỳ (1945), Một khối hồng (1964), Thanh ca (1982), Tuyển tập Xuân Diệu (1983).', N'tpthotho.jpg', 6)
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTG], [HoTen], [NgaySinh], [TieuSu], [QueQuan], [Anh]) VALUES (1, N'Nam Cao', CAST(N'1917-10-29' AS Date), N'Là một nhà văn, cũng là 1 chiến sĩ, liệt sĩ người Việt Nam', N'Hà Nam', N'Namcao.jpg')
INSERT [dbo].[TacGia] ([MaTG], [HoTen], [NgaySinh], [TieuSu], [QueQuan], [Anh]) VALUES (2, N'Tô Hoài', CAST(N'1920-09-27' AS Date), N'Là một trong những cây bút xuất sắc nhất trong nền văn xuôi hiện đại của Việt Nam', N'Hà Nội', N'ToHoai.jpg')
INSERT [dbo].[TacGia] ([MaTG], [HoTen], [NgaySinh], [TieuSu], [QueQuan], [Anh]) VALUES (3, N'Vũ Trọng Phụng', CAST(N'1912-10-20' AS Date), N'Vũ Trọng Phụng là một nhà văn, nhà báo nổi tiếng của Việt Nam vào đầu thế kỷ 20', N'Hà Nội', N'vutrongphung.jpg')
INSERT [dbo].[TacGia] ([MaTG], [HoTen], [NgaySinh], [TieuSu], [QueQuan], [Anh]) VALUES (4, N'Tố Hữu', CAST(N'1920-10-04' AS Date), N'là một nhà thơ tiêu biểu của thơ cách mạng Việt Nam, đồng thời ông còn là một chính khách, một cán bộ cách mạng lão thành', N'Hà Nội', N'ToHuu.jpg')
INSERT [dbo].[TacGia] ([MaTG], [HoTen], [NgaySinh], [TieuSu], [QueQuan], [Anh]) VALUES (5, N'Xuân Diệu', CAST(N'1916-02-02' AS Date), N' là một trong những nhà thơ lớn của Việt Nam. Ông nổi tiếng từ phong trào Thơ mới với tập Thơ thơ và Gửi hương cho gió', N'Bình Định', N'XuanDieu.jpg')
INSERT [dbo].[TacGia] ([MaTG], [HoTen], [NgaySinh], [TieuSu], [QueQuan], [Anh]) VALUES (8, N'Lê Đăng Quang', CAST(N'2000-03-30' AS Date), N'Là tác giả mới nổi gần đây', N'Thanh Hóa', N'anh.jpg')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [Quyen], [HoTen]) VALUES (1, N'admin', N'admin', 1, N'Lê Đăng Quang')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [Quyen], [HoTen]) VALUES (2, N'khach1', N'123456', 0, N'Nguyễn Văn A')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
