-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2019 lúc 10:13 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_22_091506_create_tbl_admin_table', 1),
(5, '2019_11_22_150249_create_tbl_category_product', 2),
(6, '2019_11_23_094705_create_tbl_brand_product', 3),
(7, '2019_11_23_095002_create_tbl_brand_product', 4),
(8, '2019_11_23_101439_create_tbl_product', 5),
(9, '2019_11_24_143738_tbl_customer', 6),
(10, '2019_11_24_151042_tbl_shipping', 7),
(13, '2019_11_25_073944_tbl_payment', 8),
(14, '2019_11_25_074026_tbl_order', 8),
(15, '2019_11_25_074045_tbl_order_detail', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Uy', '0962979942', '2019-11-21 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(5, 'SONY', 'Công ty công nghiệp Sony (ソニー株式会社/Sony Corporation), gọi tắt là Sony, là một tập đoàn đa quốc gia của Nhật Bản, với trụ sở chính nằm tại Minato, Tokyo, Nhật Bản, và là tập đoàn điện tử đứng thứ 5 thế giới với 81,64 tỉ USD (2011). ... Công ty này đổi tên thành Sony vào tháng 1/1958.', 1, NULL, NULL),
(6, 'Dell', 'Dell Inc là một công ty đa quốc gia của Hoa Kỳ về phát triển và thương mại hóa công nghệ máy tính có trụ sở tại Round Rock, Texas, Hoa Kỳ. Dell được thành lập năm 1984 do chủ quản gia Michael Dell đồng sáng lập. Đây là công ty có thu nhập lớn thứ 28 tại Hoa Kỳ.', 1, NULL, NULL),
(7, 'Apple', 'Apple Inc. là một tập đoàn công nghệ máy tính của Mỹ có trụ sở chính đặt tại Cupertino, California. Apple được thành lập ngày 1 tháng 4 năm 1976 dưới tên Apple Computer, Inc., và đổi tên thành Apple Inc. vào đầu năm 2007. Với lượng sản phẩm bán ra toàn cầu hàng năm là 13,9 tỷ đô la Mỹ (2005), 74 triệu thiết bị iPhone được bán ra chỉ trong một quý 4 năm 2014 và có hơn 98.000 nhân viên ở nhiều quốc gia, sản phẩm là máy tính cá nhân, phần mềm, phần cứng, thiết bị nghe nhạc và nhiều thiết bị đa phương tiện khác. Sản phẩm nổi tiếng nhất là máy tính Apple Macintosh, máy nghe nhạc iPod (2001), chương trình nghe nhạc iTunes, điện thoại iPhone (2007), máy tính bảng iPad (2010) và đồng hồ thông minh Apple Watch (2014–2015) hoạt động trên nhiều quốc gia trên thế giới.', 1, NULL, NULL),
(8, 'MSI', 'MSI, viết tắt của Micro-Star International, là một công ty công nghệ đa quốc gia có trụ sở chính ở Tân Bắc, Đài Loan.', 1, NULL, NULL),
(9, 'Samsung', 'Tập đoàn Samsung (tiếng Hàn: 삼성 (Romaja: \"Samseong\", phiên âm chuẩn: \"Xam-xâng\"); Hanja: 三星; phiên âm Hán-Việt: \"Tam Tinh\" – có nghĩa là \"3 ngôi sao\") – là một tập đoàn đa quốc gia khổng lồ của Hàn Quốc có tổng hành dinh được đặt tại Samsung Town, Seocho-gu, Seoul. Tập đoàn này hiện sở hữu rất nhiều công ty con, hầu hết đều đang hoạt động dưới thương hiệu Samsung, đây là tập đoàn Tài phiệt đa ngành (Chaebol) có quy mô và tầm ảnh hưởng đến nền kinh tế lớn nhất tại Hàn Quốc và đồng thời cũng là một trong những thương hiệu công nghệ đắt giá bậc nhất trên thế giới hiện nay', 1, NULL, NULL),
(10, 'Nintendo', 'Công ty TNHH Nintendo (任天堂株式会社 Nintendō Kabushiki gaisha) là một công ty đa quốc gia do Fusajiro Yamauchi thành lập vào ngày 23 tháng 9 năm 1889 tại Kyoto, Nhật Bản, Nintendo là công ty phát triển video game lớn nhất của thế giới tính theo theo doanh thu.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(5, 'Tay cầm chơi game', 'Bộ điều khiển trò chơi, hoặc đơn giản là bộ điều khiển, là một thiết bị đầu vào được sử dụng với các trò chơi video hoặc hệ thống giải trí để cung cấp đầu vào cho trò chơi video, thường là để điều khiển một đối tượng hoặc nhân vật trong trò chơi.', 1, NULL, NULL),
(6, 'Máy chơi game console', 'Video game console, hay máy chơi game console hoặc đơn giản là máy console là một máy tính tương tác xuất ra tín hiệu video qua các Thiết bị hiển thị như TV, màn hình máy tính để hiển thị video game.', 1, NULL, NULL),
(7, 'Máy chơi game cầm tay', 'Máy chơi game cầm tay là tên gọi bao gồm cho các hệ máy console nhỏ cầm tay để chơi như điện thoại, máy này khác với máy chơi game gia đình là có thể mang bất cứ nơi nào để chơi, còn về điểm tương đồng là có thể chơi bất kì lúc nào.', 1, NULL, NULL),
(8, 'Máy ảnh', 'Máy ảnh hay máy chụp hình là một dụng cụ dùng để thu ảnh thành một ảnh tĩnh hay thành một loạt các ảnh chuyển động. Tên camera có gốc từ tiếng La tinh camera obscura nghĩa là \"phòng tối\", từ lý do máy ảnh đầu tiên là một cái phòng tối với vài người làm việc trong đó. Chức năng của máy ảnh giống với mắt người.', 1, NULL, NULL),
(9, 'Đồng hồ thông minh', 'Đồng hồ thông minh hay còn gọi là smartwatch là đồng hồ đeo tay vi tính hóa với chức năng như tăng cường thời gian duy trì và thường được so sánh với thiết bị kỹ thuật số cá nhân.', 1, NULL, NULL),
(10, 'Máy bay không người lái', 'Phương tiện bay không người lái hay Máy bay không người lái, viết tắt tiếng Anh là UAV là tên gọi chỉ chung cho các loại máy bay mà không có người lái ở buồng lái, hoạt động tự lập và thường được điều khiển từ xa từ trung tâm hay máy điều khiển.', 1, NULL, NULL),
(11, 'Smartphone', 'Điện thoại thông minh hay smartphone là khái niệm để chỉ loại điện thoại di động thích hợp một nền tảng hệ điều hành di động với nhiều tính năng hỗ trợ tiên tiến về điện toán và có khả năng kết nối với nhiều thiết bị điện tử hiện đại như TV thông minh, máy tính, robot, nhà thông minh, tích hợp hoặc không trí thông minh ...', 1, NULL, NULL),
(12, 'Laptop gaming', 'Laptop gaming (laptop chơi game) là những chiếc máy tính xách tay được thiết kế nâng cấp chuyên biệt phục vụ cho việc chơi game nặng, các trò chơi điện tử trên máy tính cần có xử lý mạnh về đồ họa.', 1, NULL, NULL),
(13, 'PC', 'Máy tính cá nhân là một loại máy tính cá nhân với giá cả, kích thước và sự tương thích của nó khiến nó hữu dụng cho từng đối tượng cá nhân.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(6, 'Trần Lê Uy', 'tranleuy.kma@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0962979942', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sale_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(5, 'Apple watch serie 5', 9, 7, 'Hộp bao gồm: Đồng hồ, dây cao su, củ sạc 5W, dây cáp', 'Apple Watch 5 44mm (GPS) Viền Nhôm Bạc - Dây Trắng Chính hãng (MWVD2)', '10990000', '45.jfif', 1, NULL, NULL),
(6, 'Apple watch serie 4', 9, 7, 'Apple Watch Series 4 GPS & LTE 40mm (Like New)', 'Apple Watch Series 4 hàng Like new là thiết bị đeo tay chính hãng Apple. Di Động Việt cam kết hàng chính hãng. Apple Watch Series đem đến hiệu năng mạnh mẽ như phát hiện tự động ngã, tự động gọi cấp cứu.', '7379000', '61.jfif', 1, NULL, NULL),
(7, 'Macbook pro 16 2019', 12, 7, 'MacBook Pro 15 inch 2018 512Gb MR952 Option i9/32G/1Tb', 'Ngày 12/7/2018, Apple vừa cho ra mắt sản phẩm MacBook Pro 2018 với nhiều cải tiến nổi trội như: Nâng cấp CPU lên 6 nhân, thế hệ 8 Coffee Lake, Ram DDR4 cho dung lượng lên đến 32GB, sử dụng Chip Apple T2, nâng cấp nhẹ card đồ hoạ rời lên dòng Extreme, bỏ card đồ hoạ 2GB chỉ sử dụng card đồ hoạ 4GB. Dung lượng SSD lên đến 4TB, màn hình Retina True Tone, từ bỏ phiên bản không thanh cảm ứng (non touchbar)…Các tín đồ Apple đã chờ đợi một sản phẩm đặc biệt này, hy vọng nó sẽ là điểm hút lớn cho Apple trong đợt ra mắt vừa qua.', '84000000', '43.jfif', 1, NULL, NULL),
(8, 'Máy PS4', 6, 5, 'Sony Playstation 4 Pro 1TB FIFA20 PLAS - 10443SB', 'Bộ máy bao gồm:\r\n1 máy PS4 Pro (CUH-7218B) phiên bản Death Stranding\r\n1 đĩa FIFA20 Standard Edition\r\n1 tay cầm DualShock 4', '9990000', '23.jfif', 1, NULL, NULL),
(9, 'Iphone 11 pro max', 11, 7, 'iPhone 11 Pro Max 64GB', 'Trong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.', '30990000', '45.jfif', 1, NULL, NULL),
(10, 'Nintendo Switch', 7, 10, 'Máy Chơi Game Nintendo Switch Với Neon Blue Và Red Joy‑Con (Xanh Đỏ) Model Mới 2019 - Hàng Nhập Khẩu', 'New Nintendo Switch (2019) được xem như một bản nâng cấp nhẹ so với phiên bản tiền nhiệm với thời gian sử dụng lâu hơn, cụ thể trong khoảng từ 4,5 đến 9 tiếng hơn hẳn thế hệ cũ chỉ từ 2,5 đến 6,5 tiếng đó là nhờ vào việc cải tiến chip xử lý bên trong giúp giảm tiêu hao điện năng hơn.', '7550000', '32.jfif', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 'Trần Lê Uy', 'Nhà N10, chung cư Vinaconex 2', '0962979942', 'leuy@gmail.com', 'á', NULL, NULL),
(2, 'Trần Lê Uy', 'Nhà N10, chung cư Vinaconex 2', '0962979942', 'a', 'a', NULL, NULL),
(3, 'Trần Lê Uy', 'Nhà N10, chung cư Vinaconex 2', '0962979942', 'leuy@gmail.com', 'a', NULL, NULL),
(4, 'Trần Lê Uy', 'Nhà N10, chung cư Vinaconex 2', '0962979942', 'leuy@gmail.com', 'gg', NULL, NULL),
(5, 'Trần Uy', 'Nhà N10, chung cư Vinaconex 2', '0962979943', 'leuy@gmail.com', 'à', NULL, NULL),
(6, 'Trần Uy', 'Nhà N10, chung cư Vinaconex 2', '0962979944', 'leuy@gmail.com', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
