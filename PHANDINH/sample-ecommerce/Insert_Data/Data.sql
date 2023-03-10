USE [ecommDb]
GO
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'aa6f243a-5cbc-42d5-a432-08d83b5447b1', N'Member', N'User', N'USER', N'5c6c1f6b-8c65-4d53-99bb-15d7d51b5451')
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'92a170c6-118c-45c9-053a-08d83b9c9ecb', N'Content Writter', N'Blogger', N'BLOGGER', N'99aad336-4ee4-48fd-8b9e-87d1ce28d1d1')
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'939528cd-a6f3-450b-053b-08d83b9c9ecb', N'Sales Collatorabor', N'Seller', N'SELLER', N'be4425cb-68ee-4f17-b38f-8916d38fabfe')
INSERT [dbo].[AppRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8d04dce2-969a-435d-bba4-df3f325983dc', N'Administrator role', N'Admin', N'ADMIN', N'a972a81f-1051-4613-920b-24d0a370ecfc')
GO
INSERT [dbo].[AppUsers] ([Id], [FirstName], [LastName], [FullName], [DateOfBirth], [Address], [UrlAvatar], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'root', N'root', NULL, NULL, NULL, N'imart-avt.jpg', N'root@gmail.com', N'ROOT@GMAIL.COM', N'root@gmail.com', N'ROOT@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEE9D3bHJYjAsleGM8POhQUCGJccC+r35i7INCX//xHTzyas+xsvZxAGXwf9mEjUtvA==', N'', N'6272e0ee-7a59-4ecf-b872-acce4ec73e58', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'69bd714f-9576-45ba-b5b7-f00649be00de', N'8d04dce2-969a-435d-bba4-df3f325983dc')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Slug], [ParentId], [Status]) VALUES (1, N'Khuyến mãi sốc', N'khuyen-mai-soc', NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Slug], [ParentId], [Status]) VALUES (2, N'Nội Thất Gỗ', N'thoi-trang-nam', NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Slug], [ParentId], [Status]) VALUES (3, N'Phòng Khách', N'thoi-trang-nu', NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Slug], [ParentId], [Status]) VALUES (4, N'Phòng Ngủ', N'kinh-mat-thoi-trang', NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Slug], [ParentId], [Status]) VALUES (5, N'Phụ kiện hot', N'phu-kien-hot', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Slug], [UrlImage], [Description], [Price], [OriginalPrice], [Details], [Quantity], [Stock], [ViewCount], [CreatedBy], [DateCreated], [DateUpdated], [Status], [CategoryId]) VALUES (2, N'Combo Bếp mini 1m2 MOHO KITCHEN', N'combo-bep-mini-1m2-moho-kitchen', N'aca0f7c4-8e70-44f3-a562-47dddd495dc3.jpg', N' Miễn phí giao hàng & lắp đặt tại tất cả quận huyện thuộc TP.HCM, Hà Nội, Biên Hòa và một số quận thuộc Bình Dương (*)', CAST(200000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'OMBO BẾP MINI 1M2 MOHO KITCHEN có thiết kể nhỏ gọn. Dòng sản phẩm mang trong mình một vẻ đẹp tinh tế, với đường nét gọn gàng, tối giản diện tích nhưng vẫn đem lại đầy đủ các tiện nghi và chức năng tiêu chuẩn của một gian bếp gia đình.

Khi đặt hàng COMBO BẾP MINI 1M2 MOHO KITCHEN quý khách hàng sẽ được tặng thêm bếp điện từ và nồi cơm điện.', 10, 0, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [UrlImage], [Description], [Price], [OriginalPrice], [Details], [Quantity], [Stock], [ViewCount], [CreatedBy], [DateCreated], [DateUpdated], [Status], [CategoryId]) VALUES (3, N'HỆ TỦ BẾP MOHO KITCHEN DÒNG ECONOMY', N'he-tu-bep-moho-kitchen-dong-economy', N'8be60cd0-4c4b-40ca-83bb-bd3d64c4c975.jpg', N' Miễn phí giao hàng & lắp đặt tại tất cả quận huyện thuộc TP.HCM, Hà Nội, Biên Hòa và một số quận thuộc Bình Dương (*)', CAST(500000.00 AS Decimal(18, 2)), CAST(550000.00 AS Decimal(18, 2)), N'Hệ Tủ Bếp MOHO KITCHEN Dòng Economy giúp bạn tiết kiệm không gian phòng bếp gia đình. Dòng Economy mang trong mình một vẻ đẹp tinh tế, với đường nét thiết kế gọn gàng, tối giản nhưng vẫn đem lại đầy đủ các tiện nghi và chức năng tiêu chuẩn của một gian bếp gia đình.

Xem ngay Catalogue về MOHO KITCHEN: https://bit.ly/mohokitchencatalogue 

Bề mặt gỗ giả vân bê tông
Bề mặt gỗ nâu walnut kết hợp
Hệ tủ chức năng cho các thiết bị rời như nồi cơm, lò vi sóng, nồi chiên không dầu...
Các thiết bị thay đổi theo công năng', 10, 0, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Slug], [UrlImage], [Description], [Price], [OriginalPrice], [Details], [Quantity], [Stock], [ViewCount], [CreatedBy], [DateCreated], [DateUpdated], [Status], [CategoryId]) VALUES (4, N'Tủ Kệ Tivi Gỗ MOHO OSLO 201', N'tu-ke-tivi-go-moho-oslo-201', N'e5ef5195-77b5-4bfd-b9fb-ed079b054f27.jpg', N' Miễn phí giao hàng & lắp đặt tại tất cả quận huyện thuộc TP.HCM, Hà Nội, Biên Hòa và một số quận thuộc Bình Dương (*)

 Miễn phí 1 đổi 1 - Bảo hành 2 năm - Bảo trì trọn đời (**)

 Nhập mã ưu đãi MOHO50K, MOHO100K, MOHO200K, MOHO300K, MOHO500K. Chỉ áp dụng 01 lần/01 khách hàng và không áp dụng cùng với các chương trình khuyến mại khác. Hạn sử dụng: 31/01/2023 (*)

(*) Không áp dụng cho danh mục Đồ Trang Trí
(**) Không áp dụng cho các sản phẩm Clearance. Chỉ bảo hành 01 năm cho khung ghế, mâm và cần đối với Ghế Văn Phòng', CAST(200000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'Bộ sưu tập nội thất OSLO lấy cảm hứng từ những nhịp sống hiện đại, hối hả và nhộn nhịp của thành phố OSLO của Na Uy. Đặc trưng của các sản phẩm từ bộ sưu tập nội thất này là những đường nét bo tròn đến hoàn hảo, tăng thêm sự thanh lịch. Đặc biệt chi tiết hình tròn được tận dụng một cách độc đáo và sáng tạo trong từng thiết kế, mang đến làn gió hiện đại cho mọi không gian. 

Tủ tivi có kiểu dáng hiện đại, tối giản
Với các đường nét thiết kế tinh tế, tủ kệ tivi hiện đại phù hợp với nhiều phong cách nội thất, mang đến sự hài hoà cho không gian nội thất phòng khách gia đình bạn.

Bề mặt tủ có vân gỗ tự nhiên
Bề mặt tủ kệ được sử dụng công nghệ in UV vân gỗ tạo ra hình dáng đường vân gỗ sồi vô cùng tự nhiên khi phun trực tiếp lên bề mặt mang lại sự bền bỉ theo thời gian, phù hợp mọi không gian sống. Màu sắc tủ kệ hài hòa, hiện đại, hoàn toàn tự nhiên khó tìm thấy ở những sản phẩm nội thất gỗ khác trên thị trường.', 10, 0, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 1, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [ProductId], [Quantity], [Price], [UserId], [DateCreated], [AppUserId]) VALUES (3, 3, 2, CAST(500000.00 AS Decimal(18, 2)), N'69bd714f-9576-45ba-b5b7-f00649be00de', CAST(N'2023-01-09T22:36:00.1666701' AS DateTime2), NULL)
INSERT [dbo].[Carts] ([Id], [ProductId], [Quantity], [Price], [UserId], [DateCreated], [AppUserId]) VALUES (4, 2, 1, CAST(200000.00 AS Decimal(18, 2)), N'69bd714f-9576-45ba-b5b7-f00649be00de', CAST(N'2023-01-09T22:36:12.7062178' AS DateTime2), NULL)
INSERT [dbo].[Carts] ([Id], [ProductId], [Quantity], [Price], [UserId], [DateCreated], [AppUserId]) VALUES (5, 4, 2, CAST(200000.00 AS Decimal(18, 2)), N'69bd714f-9576-45ba-b5b7-f00649be00de', CAST(N'2023-01-09T22:36:15.1254811' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220314163507_InitialCreate', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220315074418_update-product-col', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220316035317_Update-cart-pk', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220317053125_update-order-col', N'6.0.3')
GO
