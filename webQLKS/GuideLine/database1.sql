SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Cơ sở dữ liệu: `webqlks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Standard'),
(2, 'Longbeach'),
(13, 'Suite');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `subject_name`, `note`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Maximin', 'Saint', 'lomd@gmail.com', '0933225113', 'Lncjsnjdoeoiewe', 'dkjhuhcinewicew', '2022-02-25 03:24:27', '2022-02-25 03:37:44', 1),
(6, 'Buendia', 'Sam', 'Lamod@gmail.com', '9003037141', 'ljknkjhiuhnkfs', 'kjhkjhcknkewvs', '2022-02-25 03:24:59', '2022-02-25 03:37:43', 1),
(7, 'Maximin', 'sada', 'dsad@gmail.com', '0933225113', 'dsasda', 'sẵqfqfq', '2022-02-25 10:07:48', '2022-02-25 10:08:14', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 3, 'Manuel', 'anie@gmail.com', '0123456789', 'Ha Noi', 'ABC', '2021-10-22 16:43:54', 1, 3),
(2, 2, 'Jormed', 'lomsdew@gmail.com', '123123123', 'Ha Noi', 'ABC', '2021-10-21 16:43:54', 2, 2),
(3, 1, 'Lomse', 'koad@gmail.com', '092198742', 'Ha Noi', '', '2021-10-27 12:42:16', 1, 4800000),
(4, 2, 'safd', 'nguyenbatienanhtb1998@gmail.com', '21211', 'hkh', '', '2022-02-25 04:33:04', 2, 1400000),
(5, 7, 'safd', 'jkhk@gmail.com', '213124', 'đaasd', '', '2022-02-25 10:09:30', 0, 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `room_id`, `price`, `num`, `total_money`) VALUES
(1, 2, 2, 1, 1, 1),
(2, 2, 3, 1, 1, 1),
(3, 1, 2, 1, 2, 2),
(4, 1, 3, 1, 1, 1),
(5, 3, 1, 600000, 5, 3000000),
(6, 3, 5, 600000, 3, 1800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`, `statuss`) VALUES
(1, 2, 'Còn Phòng', 650000, 600000, 'https://datthu.vn/wp-content/uploads/2021/02/khong-gian-dep-1.jpg', 'Chỗ nghỉ này cách bãi biển 3 phút đi bộ. Căn hộ Melody Vũng Tàu cung cấp chỗ nghỉ tại một vị trí thuận tiện ở thành phố Vũng Tàu, cách Bãi Sau, Bãi Dứa và Bãi Trước một quãng ngắn. Chỗ nghỉ này có tầm nhìn ra hồ nước, sảnh khách chung và WiFi miễn phí.\r\n\r\nTất cả các căn tại đây đều có máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, dép đi trong phòng cùng máy sấy tóc. Các căn đều được trang bị tủ lạnh, lò nướng, bếp nấu ăn và ấm đun nước.\r\n\r\nCăn hộ này nằm cách Tượng Chúa Ki-tô Vua 1,7 km và Mũi Nghinh Phong 2,2 km. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 108 km từ Căn hộ Melody Vũng Tàu, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.', '2021-10-22 14:03:21', '2022-02-25 10:12:07', 0, 'Còn Phòng'),
(2, 1, 'Luxury Lomer', 500000, 450000, 'https://noithat4mua.com/wp-content/uploads/2018/10/ph%C3%B2ng-kh%C3%A1ch-nh%C3%A0-%E1%BB%91ng-%C4%91%E1%BA%B9p.jpg', 'Tọa lạc tại thành phố Vũng Tàu, Hai Duong Intourco Resort có khu vực bãi biển riêng và các tiện nghi thể thao dưới nước. Khách sạn cũng có nhà hàng phục vụ khách. Chỗ nghỉ còn có Wi-Fi miễn phí trong toàn bộ tòa nhà và bãi đỗ xe riêng miễn phí ngay tại khuôn viên.\n\nMột số phòng nhìn ra quang cảnh biển hoặc khu vườn. Các phòng có phòng tắm riêng. Dép, đồ vệ sinh cá nhân miễn phí và máy sấy tóc cũng nằm trong số các tiện nghi trong phòng nghỉ. Trong phòng còn được trang bị TV màn hình phẳng.\n\nResort có lễ tân 24 giờ, dịch vụ trợ giúp đặc biệt và cửa hàng quà tặng.\nTọa lạc tại thành phố Vũng Tàu, Hai Duong Intourco Resort có khu vực bãi biển riêng và các tiện nghi thể thao dưới nước. Khách sạn cũng có nhà hàng phục vụ khách. Chỗ nghỉ còn có Wi-Fi miễn phí trong toàn bộ tòa nhà và bãi đỗ xe riêng miễn phí ngay tại khuôn viên.\n\nMột số phòng nhìn ra quang cảnh biển hoặc khu vườn. Các phòng có phòng tắm riêng. Dép, đồ vệ sinh cá nhân miễn phí và máy sấy tóc cũng nằm trong số các tiện nghi trong phòng nghỉ. Trong phòng còn được trang bị TV màn hình phẳng.\n\nResort có lễ tân 24 giờ, dịch vụ trợ giúp đặc biệt và cửa hàng quà tặng.\n\nResort cho thuê xe đạp và khu vực này nổi tiếng với các hoạt động chơi gôn cũng như bơi xuồng. Resort còn cung cấp dịch vụ cho thuê xe hơi. Hai Duong Intourco Resort cách Bãi Sau 900 m và cách Bãi Trước 3,3 km. Sân bay Quốc tế Tân Sơn Nhất cách đó 72 km.\n', '2021-10-22 09:53:21', '2021-10-22 09:27:06', 0, 'Hết Phòng'),
(3, 1, 'Barcly Room', 900000, 730000, 'https://danviet.mediacdn.vn/upload/1-2018/images/2018-01-26/Bi-quyet-trang-tri-khong-gian-nha-cap-4-dep-nha2-1516939621-width500height375.jpg', 'Chỗ nghỉ này cách bãi biển 3 phút đi bộ. Nằm trong một tòa nhà thuộc địa kiểu Pháp bên sườn đồi tại thành phố cảng Vũng Tàu, Léman Cap Resort & Spa cung cấp chỗ nghỉ được bài trí trang nhã với hồ bơi vô cực thú vị giữa không gian đại dương bao quanh. Khách nghỉ tại resort được bao quanh bởi khu vườn này có thể thưởng thức đồ uống tự chọn tại quầy bar trong khuôn viên. Wi-Fi được cung cấp miễn phí trong toàn bộ resort.\n\nMỗi phòng nghỉ tại đây đều có lối trang trí hiện đại bằng tông màu trung tính. Các phòng cũng có hiên/sân hiên, truyền hình cáp màn hình phẳng với đầu đĩa DVD, minibar và két an toàn. Các phòng tắm riêng đi kèm bồn tắm và tiện nghi vòi sen. Bồn tắm spa được bố trí trong một số loại phòng. Đồ vệ sinh cá nhân miễn phí, máy sấy tóc, áo choàng tắm và dép cũng được cung cấp để tạo thuận tiện cho khách.\n\nLéman Cap Resort & Spa có trung tâm thể dục ngay trong khuôn viên và phòng trò chơi dành cho trẻ em. Nhân viên giao tiếp được bằng nhiều thứ tiếng tại đây luôn túc trực tại quầy lễ tân 24 giờ để trợ giúp du khách với các dịch vụ như đặt tour, đặt vé, trợ giúp đặc biệt, cho thuê xe hơi cũng như giữ hành lý.\n', '2021-10-22 09:14:29', '2021-10-22 11:55:44', 0, 'Còn Phòng'),
(4, 1, 'Lesman Cap & K', 1200000, 1000000, 'http://ktshanoi.net/Pictures/thiet-ke-nha-dep-voi-khong-gian-mo-2.jpg', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Tọa lạc tại thành phố Vũng Tàu, cách Bãi Sau 350 m, BELLA VT HOTEL cung cấp chỗ nghỉ với sảnh khách chung, chỗ đỗ xe riêng miễn phí, vườn và sân hiên. Khách sạn 2 sao này có dịch vụ tiền sảnh và phòng giữ hành lý. Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ, dịch vụ đưa đón, dịch vụ phòng và WiFi miễn phí trong toàn bộ khuôn viên.\n\nTất cả phòng nghỉ tại khách sạn đều có bàn làm việc, TV, phòng tắm riêng, ga trải giường và khăn tắm. Các căn được trang bị tủ để quần áo.\n\nĐi xe đạp là hoạt động phổ biến trong khu vực và BELLA VT HOTEL cũng cung cấp dịch vụ cho thuê xe hơi.\n\nKhách sạn nằm cách Bãi Dứa 1,5 km và Bãi Trước 1,6 km. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 108 km từ BELLA VT HOTEL.\n', '2021-10-22 09:19:49', '2021-10-22 11:06:45', 0, 'Còn Phòng'),
(5, 2, 'Diamond Sea', 1000000, 800000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKxWl4uhhHNQTEPlv-EIFZy4YVZD0AKlx85A&usqp=CAU', 'Chỗ nghỉ này cách bãi biển 4 phút đi bộ. Nằm cách Bãi Sau 550 m, Diamond Sea cung cấp chỗ nghỉ với sảnh khách chung, sân hiên và bếp chung để tạo sự thuận tiện cho du khách. Căn hộ cung cấp miễn phí cả WiFi lẫn chỗ đỗ xe riêng.\n\nTất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, dép đi trong phòng cùng máy sấy tóc. Các chỗ nghỉ còn có lò vi sóng, tủ lạnh, bếp và ấm đun nước.\n\nDiamond Sea cung cấp dịch vụ cho thuê xe hơi trong khi du khách có thể đi bộ đường dài gần đó.\n\nCác điểm tham quan nổi tiếng gần chỗ nghỉ bao gồm Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 108 km từ Diamond Sea.\n\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,7 cho kỳ nghỉ dành cho 2 người.\nCác tiện nghi được ưa chuộng nhất: \n - Wi-Fi miễn phí.\n - Phòng gia đình.\n - Phòng không hút thuốc.\n', '2021-10-22 14:03:21', '2021-10-22 14:03:21', 0, 'Còn Phòng'),
(6, 1, 'Long Side Premium', 1500000, 1350000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwnLeloXv5oMDmUM60Y9vbRglTRAXuifEICw&usqp=CAU', 'Tọa lạc tại thành phố Vũng Tàu, cách Bãi Sau 600 m, VungTau Near Beach Premium Villa 4BR cung cấp chỗ nghỉ với sảnh khách chung, WiFi miễn phí, bếp chung và dịch vụ phòng. Chỗ nghỉ bên bờ biển này có ban công và chỗ đỗ xe riêng miễn phí.\n\nBiệt thự được bố trí 4 phòng ngủ, 2 phòng tắm, ga trải giường, khăn tắm, TV truyền hình vệ tinh màn hình phẳng, khu vực ăn uống, bếp đầy đủ tiện nghi và sân trong nhìn ra quang cảnh núi non.\n\nDu khách có thể thư giãn trong vườn của chỗ nghỉ.\n\nCác điểm tham quan nổi tiếng gần biệt thự bao gồm Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay Tân Sơn Nhất, nằm trong bán kính 108 km từ VungTau Near Beach Premium Villa 4B, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.\nCác tiện nghi được ưa chuộng nhất: Wi-Fi miễn phí, Phòng gia đình\n', '2021-10-22 09:53:21', '2021-10-22 09:27:06', 0, 'Còn Phòng'),
(7, 1, 'Aquatel PLM', 1500000, 1300000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFiM2doiULsL97OMnLfK4HHgJDA53_qsvaFg&usqp=CAU', 'Chỗ nghỉ này cách bãi biển 3 phút đi bộ. Tọa lạc tại thành phố Vũng Tàu, cách Bãi Sau 400 m, Aquatel Vũng Tàu cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí, quán bar và sảnh khách chung. Khách sạn 3 sao này cung cấp dịch vụ phòng, dịch vụ tiền sảnh và WiFi miễn phí. Chỗ nghỉ có lễ tân 24 giờ, bếp chung và dịch vụ thu đổi ngoại tệ cho khách.\n\nPhòng nghỉ tại Aquatel Vũng Tàu có máy điều hòa, khu vực ghế ngồi, TV truyền hình cáp màn hình phẳng, két an toàn và phòng tắm riêng đi kèm vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép. Tất cả các phòng đều được trang bị ấm đun nước, ga trải giường và khăn tắm. Một số phòng được bố trí bếp nhỏ với lò vi sóng, lò nướng và bếp nấu ăn.\n\nChỗ nghỉ có tiện nghi BBQ. Đi bộ đường dài và câu cá là các hoạt động được ưa chuộng trong khu vực trong khi du khách có thể thuê xe hơi tại Aquatel Vũng Tàu.\n\nTrong số các điểm tham quan nổi tiếng gần khách sạn có Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 72 km từ Aquatel Vũng Tàu, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.\n\nPhòng nghỉ tại Aquatel Vũng Tàu có máy điều hòa, khu vực ghế ngồi, TV truyền hình cáp màn hình phẳng, két an toàn và phòng tắm riêng đi kèm vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép. Tất cả các phòng đều được trang bị ấm đun nước, ga trải giường và khăn tắm. Một số phòng được bố trí bếp nhỏ với lò vi sóng, lò nướng và bếp nấu ăn.\n\nChỗ nghỉ có tiện nghi BBQ. Đi bộ đường dài và câu cá là các hoạt động được ưa chuộng trong khu vực trong khi du khách có thể thuê xe hơi tại Aquatel Vũng Tàu.\n\nTrong số các điểm tham quan nổi tiếng gần khách sạn có Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 72 km từ Aquatel Vũng Tàu, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.\n', '2021-10-22 09:14:29', '2021-10-22 11:55:44', 0, 'Còn Phòng'),
(8, 1, 'Ibis Styles', 1000000, 8400000, 'https://datthu.vn/wp-content/uploads/2021/02/khong-gian-dep-2.jpg', 'Nằm ở thành phố Vũng Tàu, ibis Styles Vung Tau có nhà hàng, hồ bơi ngoài trời, trung tâm thể dục và quán bar. Trong số các tiện nghi của chỗ nghỉ này có sảnh khách chung, dịch vụ giữ hành lý và WiFi miễn phí trong toàn bộ khuôn viên. Chỗ nghỉ có lễ tân 24 giờ, CLB trẻ em và dịch vụ thu đổi ngoại tệ cho khách.\n\nKhách sạn cung cấp phòng nghỉ lắp máy điều hòa có tủ để quần áo, két an toàn, TV và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh. Tất cả các phòng đều được trang bị minibar.\n\nibis Styles Vung Tau phục vụ bữa sáng kiểu lục địa và bữa sáng buffet hàng ngày.\n\nChỗ nghỉ có sân chơi cho trẻ em.\n\nTrong số các điểm tham quan nổi tiếng gần Ibis Styles Vung Tau có Bãi Sau, Bãi Dứa và Bãi Trước. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách khách sạn 108 km, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.\n\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,3 cho kỳ nghỉ dành cho 2 người.\n', '2021-10-22 09:19:49', '2021-10-22 11:06:45', 0, 'Còn Phòng'),
(9, 2, 'Vodka', 2000000, 1800000, 'https://nhahangdep.vn/wp-content/uploads/2019/07/thiet-ke-nha-hang-chay-voi-khong-gian-xanh-dep-bi-quyet-la-4.jpg', 'Áo PoPo Nam mang phong cách trẻ trung , phù hợp với nhiều lứa tuổi . Chất liệt mát mẻ . Chỗ nghỉ này cách bãi biển 1 phút đi bộ. Tọa lạc tại thành phố Vũng Tàu, cách Bãi Sau vài bước chân, VOLGA HOTEL cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí và quầy bar. Chỗ nghỉ này nằm trong bán kính 1,2 km từ Mũi Nghinh Phong, 1,2 km từ Ngọn hải đăng Vũng Tàu và 3,2 km từ Bạch Dinh. Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ, dịch vụ phòng và phòng giữ hành lý cho khách.\n\nKhách sạn cung cấp phòng nghỉ có máy điều hòa, tủ để quần áo, ấm đun nước, tủ lạnh, minibar, két an toàn, TV màn hình phẳng và phòng tắm riêng với vòi sen. Tại VOLGA HOTEL, mỗi phòng đều được trang bị ga trải giường và khăn tắm.\n\nCác điểm tham quan nổi tiếng gần chỗ nghỉ bao gồm Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách VOLGA HOTEL 72 km.\n\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,2 cho kỳ nghỉ dành cho 2 người.\n', '2021-10-22 14:03:21', '2021-10-22 14:03:21', 0, 'Còn Phòng'),
(11, 1, 'Mailutis', 1500000, 1000000, 'https://wedo.vn/wp-content/uploads/2021/08/thiet-ke-nha-cap-4-khong-gian-mo-1.jpg', 'Chỗ nghỉ này cách bãi biển 4 phút đi bộ. Tọa lạc trong một tòa nhà chọc trời màu xám, hiện đại và nổi bật, Malibu Hotel cung cấp chỗ nghỉ đẹp mắt tại thành phố Vũng Tàu. Khách sạn có hồ bơi vô cực thú vị nhìn ra khu vực Vũng Tàu. Khách nghỉ tại đây có thể lựa chọn thư giãn đôi chút tại spa hoặc thậm chí rèn luyện sức khỏe ở trung tâm thể dục. Bạn đồng hành tuyệt vời và cocktail hảo hạng đang chờ đón du khách tại sảnh khách cũng như các quầy bar ngay trong khuôn viên. Wi-Fi miễn phí có trong tất cả các khu vực của chỗ nghỉ.Chỗ nghỉ này cách bãi biển 4 phút đi bộ. Tọa lạc trong một tòa nhà chọc trời màu xám, hiện đại và nổi bật, Malibu Hotel cung cấp chỗ nghỉ đẹp mắt tại thành phố Vũng Tàu. Khách sạn có hồ bơi vô cực thú vị nhìn ra khu vực Vũng Tàu. Khách nghỉ tại đây có thể lựa chọn thư giãn đôi chút tại spa hoặc thậm chí rèn luyện sức khỏe ở trung tâm thể dục. Bạn đồng hành tuyệt vời và cocktail hảo hạng đang chờ đón du khách tại sảnh khách cũng như các quầy bar ngay trong khuôn viên. Wi-Fi miễn phí có trong tất cả các khu vực của chỗ nghỉ.\n\nCác phòng nghỉ đầy đủ tiện nghi tại Malibu Hotel có kiểu trang trí sang trọng bằng tông màu trung tính và gỗ. Mỗi phòng đều được trang bị TV truyền hình vệ tinh màn hình phẳng và két an toàn. Các phòng có ban công riêng nhìn ra quang cảnh khu vực xung quanh. Các phòng tắm riêng được bài trí đầy phong cách và có buồng tắm vòi sen cũng như bồn tắm sâu nằm riêng biệt. Du khách cũng được cung cấp đồ vệ sinh cá nhân miễn phí, áo choàng tắm và dép đi trong phòng. Du khách có thể thưởng thức đồ uống miễn phí trong tủ lạnh mini của phòng.\n', '2021-10-22 09:14:29', '2021-10-22 11:55:44', 0, 'Còn Phòng'),
(12, 1, 'Marvelous', 2000000, 1850000, 'https://thiconggonoithat.com/wp-content/uploads/2017/02/khong-gian-nha-dep-voi-noi-that-go-sang-trong-anh-01.jpg', 'Chỗ nghỉ này cách bãi biển 1 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 100 m và Bãi Trước 2,4 km, Marvelous Sea View cung cấp chỗ nghỉ với WiFi miễn phí, máy điều hòa và nhà hàng. Tọa lạc trong tòa nhà có từ năm 2014, căn hộ này nằm trong bán kính 2,6 km từ Bãi Dứa và 3 km từ Mũi Nghinh Phong.\n\nCăn hộ được bố trí 3 phòng ngủ, 2 phòng tắm, ga trải giường, khăn tắm, TV truyền hình cáp màn hình phẳng, khu vực ăn uống, bếp đầy đủ tiện nghi và ban công nhìn ra biển.\n\nCăn hộ cung cấp cả dịch vụ cho thuê xe đạp lẫn xe hơi trong khi du khách có thể đi bộ đường dài và đi xe đạp ở khu vực gần đó.\n\nTượng Chúa Ki-tô Vua nằm cách Marvelous Sea View 3,4 km trong khi Bạch Dinh cách đó 5 km. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 107 km từ chỗ nghỉ.\n', '2021-10-22 09:19:49', '2021-10-22 11:06:45', 0, 'Còn Phòng'),
(17, 13, 'Pomeni', 1500000, 1400000, 'https://news.meeycdn.com/uploads/2020/06/ngam-cac-mau-khong-gian-nha-dep-nhat.jpg', 'Chỗ nghỉ này cách bãi biển 1 phút đi bộ. Tọa lạc tại thành phố Vũng Tàu, Blue Sapphire Resort-Sea by 50m, free swimming pool cung cấp chỗ nghỉ với WiFi miễn phí, hồ bơi, vườn, khu vực bãi biển riêng và tầm nhìn ra hồ nước. Chỗ nghỉ này có chỗ đỗ xe riêng ngay trong khuôn viên.\r\n\r\nTất cả các căn tại đây đều có máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, dép đi trong phòng cùng máy sấy tóc. Các căn còn được trang bị lò vi sóng, tủ lạnh, lò nướng và ấm đun nước.\r\n\r\nCăn hộ nằm cách Bạch Dinh 2,6 km và Khu du lịch sinh thái Hồ Mây 7 km. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 72 km từ Blue Sapphire Resort-Sea by.', '2022-02-25 04:15:18', '2022-02-25 04:15:18', 0, 'Còn Phòng'),
(18, 1, 'Mongole', 2000000, 1500000, 'https://phaochitrannha.com/upload/images/Kh%C3%B4ng-gian-nh%C3%A0-%C4%91%E1%BA%B9p(1).jpg', 'Chỗ nghỉ này cách bãi biển 4 phút đi bộ. Nằm cách Bãi Sau 550 m, Diamond Sea cung cấp chỗ nghỉ với sảnh khách chung, sân hiên và bếp chung để tạo sự thuận tiện cho du khách. Căn hộ cung cấp miễn phí cả WiFi lẫn chỗ đỗ xe riêng.\r\n\r\nTất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, dép đi trong phòng cùng máy sấy tóc. Các chỗ nghỉ còn có lò vi sóng, tủ lạnh, bếp và ấm đun nước.\r\n\r\nDiamond Sea cung cấp dịch vụ cho thuê xe hơi trong khi du khách có thể đi bộ đường dài gần đó.\r\n\r\nCác điểm tham quan nổi tiếng gần chỗ nghỉ bao gồm Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 108 km từ Diamond Sea.', '2022-02-25 04:17:13', '2022-02-25 04:17:13', 0, 'Còn Phòng'),
(19, 2, 'Putin', 1500000, 800000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQUEo4YYB6lzNWFh8vOZ_A-pdBDgV3vJ9FwA&usqp=CAU', 'Tọa lạc tại thành phố Vũng Tàu, Hai Duong Intourco Resort có khu vực bãi biển riêng và các tiện nghi thể thao dưới nước. Khách sạn cũng có nhà hàng phục vụ khách. Chỗ nghỉ còn có Wi-Fi miễn phí trong toàn bộ tòa nhà và bãi đỗ xe riêng miễn phí ngay tại khuôn viên.\r\n\r\nMột số phòng nhìn ra quang cảnh biển hoặc khu vườn. Các phòng có phòng tắm riêng. Dép, đồ vệ sinh cá nhân miễn phí và máy sấy tóc cũng nằm trong số các tiện nghi trong phòng nghỉ. Trong phòng còn được trang bị TV màn hình phẳng.\r\n\r\nResort có lễ tân 24 giờ, dịch vụ trợ giúp đặc biệt và cửa hàng quà tặng.\r\n\r\nResort cho thuê xe đạp và khu vực này nổi tiếng với các hoạt động chơi gôn cũng như bơi xuồng. Resort còn cung cấp dịch vụ cho thuê xe hơi. Hai Duong Intourco Resort cách Bãi Sau 900 m và cách Bãi Trước 3,3 km. Sân bay Quốc tế Tân Sơn Nhất cách đó 72 km.', '2022-02-25 04:18:33', '2022-02-25 04:18:33', 0, 'Còn Phòng'),
(20, 13, 'Intocour', 1000000, 800000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi_U3xpGgwT5OTfq7tRaUJACOcWLZccHNzUA&usqp=CAU', 'Chỗ nghỉ này cách bãi biển 8 phút đi bộ. Kim Minh Apartment & Hotel nằm ở thành phố Vũng Tàu, cách Bãi Trước khoảng 100 m, cách Bạch Dinh 1 km. Chỗ nghỉ này cung cấp Wi-Fi miễn phí trong toàn bộ khuôn viên.\r\n\r\nCác phòng đều có máy lạnh, TV truyền hình cáp màn hình phẳng và phòng tắm riêng kèm dép. Khách được cung cấp bộ khăn trải giường.\r\n\r\nKim Minh Apartment & Hotel cũng có hồ bơi ngoài trời.\r\n\r\nTượng Chúa Giê-su Vũng Tàu cũng như Bãi Sau đều nằm cách Kim Minh Apartment & Hotel 2,4 km', '2022-02-25 04:20:22', '2022-02-25 04:20:22', 0, 'Còn Phòng'),
(21, 13, 'River Land', 2000000, 1350000, 'http://ktshanoi.net/Pictures/thiet-ke-nha-dep-khong-gian-xanh-mat-1.jpg', 'Tọa lạc tại thành phố Vũng Tàu, cách Bãi Sau 600 m, VungTau Near Beach Premium Villa 4BR cung cấp chỗ nghỉ với sảnh khách chung, WiFi miễn phí, bếp chung và dịch vụ phòng. Chỗ nghỉ bên bờ biển này có ban công và chỗ đỗ xe riêng miễn phí.\r\n\r\nBiệt thự được bố trí 4 phòng ngủ, 2 phòng tắm, ga trải giường, khăn tắm, TV truyền hình vệ tinh màn hình phẳng, khu vực ăn uống, bếp đầy đủ tiện nghi và sân trong nhìn ra quang cảnh núi non.\r\n\r\nDu khách có thể thư giãn trong vườn của chỗ nghỉ.\r\n\r\nCác điểm tham quan nổi tiếng gần biệt thự bao gồm Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay Tân Sơn Nhất, nằm trong bán kính 108 km từ VungTau Near Beach Premium Villa 4B, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.', '2022-02-25 04:22:28', '2022-02-25 04:22:28', 0, 'Còn Phòng'),
(22, 2, 'Komer', 1000000, 750000, 'https://image.nhadatmoi.net/tin-tuc/wp-content/uploads/2020/06/24140908/thiet-ke-nha-khong-gian-mo-12.jpg', 'Chỗ nghỉ này cách bãi biển 1 phút đi bộ. Tọa lạc tại thành phố Vũng Tàu, cách Bãi Sau vài bước chân, VOLGA HOTEL cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí và quầy bar. Chỗ nghỉ này nằm trong bán kính 1,2 km từ Mũi Nghinh Phong, 1,2 km từ Ngọn hải đăng Vũng Tàu và 3,2 km từ Bạch Dinh. Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ, dịch vụ phòng và phòng giữ hành lý cho khách.\r\n\r\nKhách sạn cung cấp phòng nghỉ có máy điều hòa, tủ để quần áo, ấm đun nước, tủ lạnh, minibar, két an toàn, TV màn hình phẳng và phòng tắm riêng với vòi sen. Tại VOLGA HOTEL, mỗi phòng đều được trang bị ga trải giường và khăn tắm.\r\n\r\nCác điểm tham quan nổi tiếng gần chỗ nghỉ bao gồm Bãi Dứa, Bãi Trước và Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách VOLGA HOTEL 72 km.', '2022-02-25 04:24:20', '2022-02-25 04:24:20', 0, 'Còn Phòng'),
(23, 13, 'Kamire', 1500000, 1400000, 'https://xuhuongquangcao.com/wp-content/uploads/2021/05/chiem-nguong-khong-gian-nha-dep-vua-doc-dao-vua-ca-tinh-khong-gian-mo-cuc-dep-kien-truc-nha-dep-1210x642.jpeg', 'Chỗ nghỉ này cách bãi biển 6 phút đi bộ. Nằm cách Bãi Sau 600 m, Căn hộ Vũng tàu Melody cung cấp chỗ nghỉ với sảnh khách chung, sân hiên và bếp chung để tạo thuận tiện cho khách.\r\n\r\nCác căn hộ gắn máy điều hòa tại đây có sàn gỗ parquet, phòng tắm riêng, TV màn hình phẳng, WiFi miễn phí, tủ để quần áo, phòng khách, bếp đầy đủ vật dụng, ban công và tầm nhìn ra hồ nước. Để thêm phần thuận tiện cho du khách, chỗ nghỉ có thể cung cấp khăn tắm và ga trải giường với một khoản phụ phí.\r\n\r\nCăn hộ này nằm cách Tượng Chúa Ki-tô Vua 1,7 km và Mũi Nghinh Phong 2,2 km. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 72 km từ Căn hộ Vũng tàu Melody.', '2022-02-25 04:27:04', '2022-02-25 04:27:04', 0, 'Còn Phòng'),
(24, 13, 'Bules', 2000000, 1600000, 'https://e8rbh6por3n.exactdn.com/sites/uploads/Tong-hop-cac-kieu-noi-that-nha-dep-1.jpg?strip=all&lossy=1&resize=770%2C513&ssl=1', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Nằm trên bãi biển ở thành phố Vũng Tàu, Fati Boutique Hotel & Apartment có vườn và WiFi miễn phí. Chỗ nghỉ này có các phòng gia đình và sân hiên. Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ và dịch vụ phòng cho khách.\r\n\r\nPhòng nghỉ tại khách sạn có máy điều hòa, tủ để quần áo, sân trong nhìn ra vườn, phòng tắm riêng, TV màn hình phẳng, ga trải giường và khăn tắm. Một số phòng được bố trí bếp với bếp nấu ăn. Tất cả các phòng đều được trang bị tủ lạnh.\r\n\r\nTrong số các điểm tham quan nổi tiếng gần Fati Boutique Hotel & Apartment có Khu du lịch sinh thái Hồ Mây, Bạch Dinh và Thích Ca Phật Đài. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, nằm trong bán kính 67 km từ chỗ nghỉ.', '2022-02-25 04:28:24', '2022-02-25 04:28:24', 0, 'Còn Phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '7b887b1e751b6839105033c9f7bdf48c', '2021-10-19 17:03:55'),
(6, '484df30b79bb3a93c3f1c7bfbe6376cb', '2022-06-09 14:33:21'),
(7, '2c54beadeec18be8915c23059f6f9539', '2022-02-25 10:03:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'dsadsa', 'hcjsa.it@gmail.com', '31232313123', 'Ha Noi, Việt Nam', 'b4cbd48886a5331c5eb2fedadabe311c', 1, '2021-10-19 10:39:39', '2021-10-20 17:40:06', 0),
(2, 'fsaasd', 'ziczac@gmail.com', '+84943552213', 'dsadas', 'b4cbd48886a5331c5eb2fedadabe311c', 1, '2021-10-19 10:42:39', '2021-10-20 17:43:19', 0),
(3, 'ABC', 'szfdssoft.com@gmail.com', '8153565814', '810 University Drive', 'b4cbd48886a5331c5eb2fedadabe311c', 2, '2021-10-20 17:16:11', '2021-10-20 17:53:15', 1),
(4, 'Lomjsa', 'ziczac01@gmail.com', '+84943552213', 'sdfdsfe', 'b4cbd48886a5331c5eb2fedadabe311c', 2, '2021-10-20 17:17:27', '2021-10-20 17:17:27', 0),
(5, 'Lucas', 'thanhsoma102@gmail.com', '9003037141', 'Hanoi', '123456', 1, '2022-02-25 05:06:40', '2022-02-25 05:06:40', NULL),
(6, 'safd', 'nguyenbatienanhtb1998@gmail.com', NULL, NULL, '935be9043017980a58f5c9b89985a51c', 2, '2022-02-25 09:16:36', '2022-02-25 09:16:36', 0),
(7, 'THANH', 'okie@gmail.com', NULL, NULL, '935be9043017980a58f5c9b89985a51c', 2, '2022-02-25 10:03:21', '2022-02-25 10:03:21', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
