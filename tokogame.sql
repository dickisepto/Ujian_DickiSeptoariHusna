-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 11:55 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokogame`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `head` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `text_color` enum('text-dark','text-light') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `product_id`, `image`, `head`, `content`, `text_color`) VALUES
(4, 3, '7f835b7235cd45661cac8a6c3de3f000.jpg', 'Anno 1880', 'Jadi lah yang pertama membangun peradaban', 'text-light'),
(5, 4, 'f2ea03a2f9af29c035d12d14bcc0dc48.jpg', 'Assasins\'s Creeds Valhala', 'Kisah lain dari bangsa viking', 'text-dark'),
(11, 9, 'e380fa1a82aa2155ff4588946c74f975.jpg', 'Dark souls 3', 'GIT GUT OR DIE', 'text-dark');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `subtotal`) VALUES
(16, 7, 3, 1149000),
(17, 1, 2, 689000),
(28, 15, 4, 700000),
(29, 15, 2, 689000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `area` varchar(25) NOT NULL,
  `phone` text NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `date`, `invoice`, `total`, `name`, `address`, `area`, `phone`, `status`) VALUES
(19, 8, '2021-12-29', '820211229135004', 1149000, 'asdasd', '2qasdasd', '', '123124214', 'paid'),
(22, 15, '2021-12-31', '1520211231081056', 1149000, 'dicki', 'kp kelapa', '', '082183821387', 'paid'),
(23, 15, '2021-12-31', '1520211231081348', 205000, 'dicki', 'kp klapa', '', '0123881239', 'paid'),
(24, 17, '2021-12-31', '1720211231093445', 1149000, 'Dicki', 'kp.indah', '', '098223182', 'paid'),
(25, 17, '2021-12-31', '1720211231094311', 894000, 'husna', 'jln pln', '', '091239231', 'waiting'),
(26, 17, '2022-01-03', '1720220103082129', 605000, 'asdasd', 'adsasdasd', '', '98324234', 'waiting'),
(27, 17, '2022-01-03', '1720220103082422', 400000, 'asdasd', 'asdadus', '', '21893791823', 'waiting'),
(28, 17, '2022-01-03', '1720220103082438', 1149000, 'sfagfags', 'asdasd', '', '233242143', 'waiting'),
(29, 17, '2022-01-03', '1720220103101334', 1149000, 'jkikl', 'hgbhgh', '', '89798', 'waiting'),
(30, 17, '2022-01-03', '1720220103101442', 700000, 'dicki', 'daskjads', '', '2313312123', 'waiting'),
(31, 17, '2022-01-03', '1720220103102401', 700000, 'septo', 'pln raya', '', '9881327312', 'waiting'),
(32, 17, '2022-01-03', '1720220103102448', 500000, 'dicki', 'asdasd', '', '08897213872', 'waiting'),
(33, 17, '2022-01-03', '1720220103104123', 500000, 'dicki', 'septo', 'jakarata', '91238321', 'waiting'),
(34, 17, '2022-01-03', '1720220103104300', 500000, 'dicki', 'septo', 'tangerang', '2134214123', 'paid'),
(35, 17, '2022-01-03', '1720220103114839', 605000, 'dtrsa', 'asdasd', 'depok Rp 10.000', '21312412', 'waiting'),
(36, 17, '2022-01-03', '1720220103114936', 1149000, 'asdasd', 'e3asdasd', 'bogor Rp 8.000', '213121254', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `orders_confirm`
--

CREATE TABLE `orders_confirm` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_confirm`
--

INSERT INTO `orders_confirm` (`id`, `orders_id`, `account_name`, `account_number`, `nominal`, `note`, `image`) VALUES
(3, 4, 'User', '111222333', 99999999, 'asdfasdfasdf', '23c839ec129597ed7735de78e515120a.jpg'),
(4, 7, 'buajgan', '215413541', 2147483647, 'asdsadasd', ''),
(5, 9, 'bujang', '9823193', 50000000, '', ''),
(6, 10, 'bujang', '1232314', 4000, 'lkajdas', ''),
(7, 15, 'bujang', '2131234', 8999999, 'saya sudah bayar', '0'),
(8, 17, 'bujang', '123123124214', 300000000, 'kakaka', ''),
(9, 18, 'Saya sendiri', '09123983219', 40000000, 'saya dimana', ''),
(10, 19, 'asdfasf', '2135124', 1231254124, 'dsaasasf', ''),
(11, 20, 'banksekian', '987654321', 500000, 'sudah saya bayar', '6e4f848260a6c0bac78f7a77bfd16cb8.jpg'),
(12, 21, 'bujang', '12836776124', 500000, 'sudah bayar yeh', ''),
(13, 23, 'Dicki', '71283123421', 300000, 'Sudah bayar', ''),
(14, 24, 'husna', '981328721', 40000000, 'saya sudah bayar', ''),
(15, 34, 'husna', '98219382319', 50000000, 'bacot\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `orders_id`, `product_id`, `subtotal`) VALUES
(7, 4, 1, 205000),
(8, 4, 5, 500000),
(9, 5, 2, 689000),
(10, 6, 3, 1149000),
(11, 7, 3, 1149000),
(12, 8, 2, 689000),
(13, 9, 3, 1149000),
(14, 10, 4, 700000),
(15, 11, 1, 205000),
(16, 12, 4, 700000),
(17, 13, 4, 700000),
(18, 14, 4, 700000),
(19, 14, 4, 700000),
(20, 15, 5, 500000),
(21, 16, 3, 1149000),
(22, 17, 6, 300000),
(23, 18, 3, 1149000),
(24, 19, 3, 1149000),
(25, 20, 6, 300000),
(26, 21, 6, 300000),
(27, 22, 3, 1149000),
(28, 23, 1, 205000),
(29, 24, 3, 1149000),
(30, 25, 1, 205000),
(31, 25, 2, 689000),
(32, 26, 1, 205000),
(33, 26, 9, 400000),
(34, 27, 9, 400000),
(35, 28, 3, 1149000),
(36, 29, 3, 1149000),
(37, 30, 4, 700000),
(38, 31, 4, 700000),
(39, 32, 5, 500000),
(40, 33, 5, 500000),
(41, 34, 5, 500000),
(42, 35, 9, 400000),
(43, 35, 1, 205000),
(44, 36, 3, 1149000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `edition` enum('reguler','premium') NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `edition`, `image`, `description`, `requirements`) VALUES
(1, 'Assassin\'s Creed Origins', 205000, 'reguler', 'assasincreedorigins.jpg', '<p>							<b>ASSASSIN’S CREED® ORIGINS IS A NEW BEGINNING\r\n</b></p><p>*The Discovery Tour by Assassin’s Creed®: Ancient Egypt is available now as a free update!*\r\n\r\n</p><p>Ancient Egypt, a land of majesty and intrigue, is disappearing in a ruthless fight for power. Unveil dark secrets and forgotten myths as you go back to the one founding moment: The Origins of the Assassin’s Brotherhood.\r\n</p><p><b>\r\n</b></p><p><b><br></b></p><p><b>A COUNTRY TO DISCOVER</b>\r\n</p><p>Sail down the Nile, uncover the mysteries of the pyramids or fight your way against dangerous ancient factions and wild beasts as you explore this gigantic and unpredictable land.\r\n</p><p><br></p><p><b>\r\nA NEW STORY EVERY TIME YOU PLAY</b>\r\n</p><p>Engage into multiple quests and gripping stories as you cross paths with strong and memorable characters, from the wealthiest high-born to the most desperate outcasts.\r\n</p><p><br></p><p><b>\r\nEMBRACE ACTION-RPG</b>\r\n</p><p>Experience a completely new way to fight. Loot and use dozens of weapons with different characteristics and rarities. Explore deep progression mechanics and challenge your skills against unique and powerful bosses.						</p>', '<p>							<u>MINIMUM CONFIGURATION\r\n</u></p><p>\r\nOS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)</p><p>PROCESSOR: Intel Core i5-2400s @ 2.5 GHz or AMD FX-6350 @ 3.9 GHz or equivalent\r\n</p><p>\r\nVIDEO CARD: NVIDIA GeForce GTX 660 or AMD R9 270 (2048 MB VRAM with Shader Model 5.0 or better)\r\n\r\n</p><p>SYSTEM RAM: 6GB\r\n\r\nResolution: 720p\r\n\r\nVideo Preset: Lowest\r\n\r\n</p><p><br></p><p><u>RECOMMENDED CONFIGURATION\r\n</u></p><p>\r\nOS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)\r\n</p><p>\r\nPROCESSOR: Intel Core i7- 3770 @ 3.5 GHz or AMD FX-8350 @ 4.0 GHz</p><p>\r\n\r\nVIDEO CARD: NVIDIA GeForce GTX 760 or AMD R9 280X (3GB VRAM with Shader Model 5.0 or better)\r\n\r\n</p><p>SYSTEM RAM: 8GB\r\n\r\nResolution: 1080p\r\n\r\nVideo Preset: High						</p>'),
(2, 'Watch Dogs 2', 689000, 'premium', 'watchdogs2.jpg', '<p>							Use hacking as a weapon in the massive &amp; dynamic open world of Watch Dogs 2.\r\n\r\nIn 2016, ctOS 2.0, an advanced operating system networking city infrastructure, was implemented in several US cities to create a safer, more efficient metropolis.\r\nPlay as Marcus Holloway, a brilliant young hacker living in the birthplace of the tech revolution, the San Francisco Bay Area. </p><p>Team up with Dedsec, a notorious group of hackers, and expose the hidden dangers of ctOS 2.0, which, in the hands of corrupt corporations, is being wrongfully used to monitor and manipulate citizens on a massive scale.\r\nWith the power of hacking and Dedsec by your side, launch the Hack of the Century, take down ctOS 2.0 and give freedom back to whom it belongs: the people.\r\n\r\nFeatures\r\n</p><p><b><br></b></p><p><b>WELCOME TO THE SAN FRANCISCO BAY AREA</b></p><p>\r\nExplore a massive and dynamic open-world offering an incredible variety of gameplay possibilities. Hack your way through traffic while you engage in dangerous car chases through the winding streets of San Francisco, traverse the rooftops of the colorful &amp; vibrant neighborhoods of Oakland, and infiltrate the cutting edge offices of Silicon Valley companies. There are many secrets to uncover in the birthplace of the tech revolution.\r\n</p><p>\r\n</p><p><b><br></b></p><p><b>HACKING IS YOUR WEAPON\r\n</b></p><p>Hack into the city’s infrastructure, every connected device, and everyone’s personal database. Take control of drones, cars, cranes, security robots, and much more. Hack your enemies and bystanders alike– manipulate them in different ways to trigger unpredictable chains of events. Every person, any vehicle they might drive, any connected device they possess can be hacked.\r\n\r\n</p><p><b><br></b></p><p><b>YOU ARE IN CTRL</b>\r\n</p><p>Use hacking and stealth to complete missions without killing a single enemy or combine hacking and your weapons for a more ferocious approach. Develop different skills to suit your playstyle, and upgrade your hacker tools – RC cars, Quadcopter drones, 3D printed weapons and much more.\r\n\r\n</p><p><br></p><p><b>SEAMLESSLY CONNECT WITH FRIENDS</b>\r\n</p><p>Stay connected to your friends with a brand new seamless multiplayer experience that includes both Co-op and Player vs. Player activities, all available in a shared open world experience.\r\n\r\n</p><p><br></p><p><b>PUT YOUR EYES IN CTRL</b>\r\n</p><p>Get the upper hand with Tobii Eye Tracking. Let your gaze aid you in weaponizing the “internet of things”, aim at enemies and take cover while you naturally explore the environment. Combine the extensive eye tracking feature set to pinpoint enemies, interact with your surroundings, locate shelter points, and rapidly select hackable targets. Let your vision lead the hacking of the city’s digital brain.						</p>', '<p>							<u>RECOMMENDED\r\n</u></p><p>OS: Windows 7 SP1, Windows 8.1, Windows 10 (64bit versions only)\r\n</p><p>PROCESSOR: Intel Core i5 3470 @ 3.2 GHz, AMD FX 8120 @ 3.9 GHz\r\n</p><p>VIDEO CARD: NVIDIA GeForce GTX 780 | AMD Radeon R9 290, with 3GB VRAM or better - See supported List*\r\n</p><p>SYSTEM RAM: 8 GB\r\nHARD DRIVE: 50 GB\r\n</p><p>SOUND CARD: DirectX-compatible using the latest drivers</p><p>\r\nDVD-ROM DRIVE: DVD-ROM Dual Layer\r\n</p><p>DIRECT X: DirectX End-User Runtimes (June 2010)\r\nPERIPHERALS: Microsoft Xbox One Controller, DUALSHOCK® 4 Controller, Windows-compatible keyboard, mouse, optional controller\r\nMULTIPLAYER: 256 kbps or faster broadband connection						</p>'),
(3, 'Anno 1800', 1149000, 'premium', 'anno.jpg', '<p>							Enhance your Anno 1800 experience with the Complete Edition including the following digital content:\r\n\r\nAnno 1800 - Full Game\r\n\r\n</p><p>Season 2 Pass, which includes 3 upcoming DLCs:\r\n</p><p>• Seat of Power: Show off the power of your city with a prestigious palace and government departments that can boost your economy with a variety of policies.\r\n<br>• Bright Harvest: Bring the wonders of mechanized farming to the countryside as you boost the efficiency of your farms with tractors and more.<br>\r\n• Land of Lions: Travel to the Southern continent and join forces with an embattled Emperor to bring life to the desert using a new irrigation system.\r\n\r\nAnd 3 exclusive ornaments\r\n\r\nSeason 1 Pass, which includes The Sunken Treasure, Botanica and The Passage DLCs						</p>', '<p>							<u>MINIMUM\r\n</u></p><p>Minimum specifications – 1080p Low Preset @30 FPS\r\n\r\n</p><p>CPU: Intel i5-2500K - 3.3 Ghz, AMD FX 6350 - 3.9 Ghz              \r\n\r\nGPU: Nvidia GTX 660 - 2GB, AMD Radeon R7 260X - 2GB\r\n\r\n</p><p>RAM: 8GB\r\n\r\n \r\n\r\nMinimum specifications – 1080p Low Preset @60 FPS\r\n\r\n</p><p>CPU: Intel i5-4460 - 3.2 Ghz, AMD Ryzen3 1200 - 3.1 Ghz              \r\n\r\n</p><p>GPU: Nvidia GTX 670 - 2GB, AMD Radeon R9 270X - 2GB\r\n\r\n</p><p>RAM: 8GB\r\n\r\n \r\n\r\n</p><p><br></p><p><u>RECOMMENDED\r\n</u></p><p>Recommended specifications – 1080p High Preset @30 FPS</p><p>\r\n\r\nCPU: Intel i5-4690K - 3.5 Ghz, AMD Ryzen5 1400 - 3.2 Ghz            \r\n\r\n</p><p>GPU: Nvidia GTX 770 - 4GB, AMD Radeon R9 285 - 2GB\r\n\r\n</p><p>RAM: 8GB\r\n\r\n \r\n\r\nRecommended specifications – 1080p High Preset @60 FPS\r\n\r\n</p><p>CPU: Intel i5-4690K - 3.5 Ghz, AMD Ryzen5 1500X - 3.5 Ghz         \r\n</p><p>GPU: Nvidia GTX 970 - 4GB, AMD Radeon R9 290X - 4GB\r\n\r\n</p><p>RAM: 8GB						</p>'),
(4, 'Assassin\'s Creed Valhalla', 700000, 'reguler', '6d593e0b9fe86690a49fd1fd32d26983.jpg', '							<p>Become Eivor, a legendary Viking raider on a quest for glory. Explore\r\n England\'s Dark Ages as you raid your enemies, grow your settlement, and\r\n build your political power.</p>\r\n\r\n<p>\r\n• Lead epic Viking raids against Saxon fortresses throughout England.<br>\r\n• Dual-wield powerful weapons and relive the visceral fighting style of the Vikings.<br>\r\n• Challenge yourself with the most varied collection of enemies ever found in Assassin\'s Creed.<br>\r\n• Shape the growth of your character with every choice you make and carve your path to glory.<br>\r\n• Explore a Dark Age open world, from the harsh shores of Norway to the beautiful kingdoms of England.<br>\r\n</p>\r\n\r\n\r\n\r\n<p><strong>THE GAME</strong><br>\r\n• Copy of the Ultimate Edition of <strong>Assassin’s Creed Valhalla</strong>, including the following digital content.<br></p>\r\n\r\n<p><strong>THE SEASON PASS</strong><br>\r\nExtend your experience with the<strong> Season Pass*</strong>:<br>\r\n• Get access to epic new content, explore new lands and discover new gear.<br>\r\n• Enjoy an immersive Story Mission, available at Launch.\r\n </p>\r\n\r\n<strong>THE ULTIMATE PACK</strong><br>\r\n\r\nStrike fear into the hearts of your enemies, dominate raids and rivers with the set of items included in the <strong>Ultimate Pack*</strong>: <br>\r\n• <strong>The Berserker Gear Pack </strong>includes the Bearded Axe, the\r\n Ursine Guard Light Shield, a new skin for your Raven, the ferocious \r\nHati Wolf Mount and the Berserker Set for Eivor.<br>\r\n• <strong>The Berserker Longship Pack</strong> includes a majestic Longship which comes with a unique figurehead and a set of new sails. <br>\r\n• <strong>The Berserker Settlement Pack </strong>includes new ways to customise your settlement in England.<br>\r\n• <strong>A Set of Runes </strong>to sharpen the weapons or improve the gear of your choice.						', '							<p>							<u>MINIMUM CONFIGURATION\r\n</u></p><p>\r\nOS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)</p><p>PROCESSOR: Intel Core i5-2400s @ 2.5 GHz or AMD FX-6350 @ 3.9 GHz or equivalent\r\n</p><p>\r\nVIDEO CARD: NVIDIA GeForce GTX 660 or AMD R9 270 (2048 MB VRAM with Shader Model 5.0 or better)\r\n\r\n</p><p>SYSTEM RAM: 6GB\r\n\r\nResolution: 720p\r\n\r\nVideo Preset: Lowest\r\n\r\n</p><p><br></p><p><u>RECOMMENDED CONFIGURATION\r\n</u></p><p>\r\nOS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)\r\n</p><p>\r\nPROCESSOR: Intel Core i7- 3770 @ 3.5 GHz or AMD FX-8350 @ 4.0 GHz</p><p>\r\n\r\nVIDEO CARD: NVIDIA GeForce GTX 760 or AMD R9 280X (3GB VRAM with Shader Model 5.0 or better)\r\n\r\n</p><p>SYSTEM RAM: 8GB\r\n\r\nResolution: 1080p\r\n\r\nVideo Preset: High						</p>						'),
(5, 'Far Cry 5', 500000, 'reguler', 'a15512528a86ac45c1ee4c9c47e4cb3c.jpg', '							<h3><span style=\"color:null;\">Product Description<span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></span><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Seventeen\r\n years after a global nuclear catastrophe, civilization re-emerges from \r\nthe chaos to find a world dramatically changed. In Hope County, Montana,\r\n the remaining populace has gathered into different groups, each with \r\ntheir own rules for survival. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">In\r\n this new world order, the vicious Highwaymen, led by twin sisters \r\nMickey and Lou, travel from place to place bleeding people dry of all \r\navailable resources. As the Survivors try to defend their lands against \r\nthe </span><span style=\"font-family:\'Stratum1 Regular\',sans-serif\" lang=\"EN-US\">Highwaymen\'s relentless onslaught, </span><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">it\'s up to you to come to their aid and lead the fight. </span><span style=\"font-family:\'Stratum1 Regular\',sans-serif\" lang=\"EN-CA\"><span style=\"font-variant:small-caps\"></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">In the latest installment of the award-winning Far Cry franchise,</span><span style=\"font-family:\'Stratum1 Regular\',sans-serif\" lang=\"EN-US\">\r\n you are the last line of defense in a transformed, post-apocalyptic \r\nHope County. Help the community of Survivors grow stronger, craft a \r\nmakeshift arsenal through Turf Wars and cross-country Expeditions, and \r\nform unexpected alliances to fight for survival in a dangerous new \r\nfrontier.</span><span style=\"font-size:9.0pt\" lang=\"EN-US\"><span style=\"font-family:\'Arial\',sans-serif\"></span></span></span></span></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt; text-align: justify;\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Stratum1 Regular\',sans-serif\" lang=\"EN-US\"></span><span style=\"font-size:9.0pt\" lang=\"EN-US\"><span style=\"font-family:\'Arial\',sans-serif\"></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Stratum1 Regular\',sans-serif\" lang=\"EN-US\"></span><span style=\"font-size:9.0pt\" lang=\"EN-US\"><span style=\"font-family:\'Arial\',sans-serif\"></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 0.0001pt\"> </p>\r\n\r\n<h3 style=\"text-align: justify; margin: 0cm 0cm 0.0001pt;\"><span style=\"color:null;\">Key Features</span></h3>\r\n\r\n<p><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></b></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">FIGHT FOR SURVIVAL IN A BREATHTAKING POST-APOCALYPTIC WORLD</span></b></span></span></span></p>\r\n\r\n<ul><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:Symbol\" lang=\"EN-US\"></span><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Sprawling\r\n superbloom fields and dense overgrowth invite you into a wildly \r\nbeautiful yet deadly post-apocalyptic landscape, to discover on your own\r\n or with a friend in two player co-op.</span></span></span></span></li><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:Symbol\" lang=\"EN-US\"></span><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Wildlife has not gone untouched by the disaster, with some predators evolving rugged natural defenses.</span></span></span></span></li></ul>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></b></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">UNFORGETTABLE CHARACTERS COLLIDE WITH A RELENTLESS DOUBLE THREAT</span></b> </span></span></span></p>\r\n\r\n<ul><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Clash\r\n with the brutal Highwaymen and their unruly leaders Mickey and Lou. \r\nKnown as The Twins, these sisters combine brains and brawn to give their\r\n army an iron grip on Hope County\'s precious resources.</span></span></span></span></li><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Recruit\r\n an eclectic cast of Guns and Fangs for Hire to fight by your side. \r\nThese new allies, as well as some familiar faces, each bring unique and \r\ncritical skills to the fray.</span></span></span></span></li><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Find the former doomsday cult and seek out the charismatic leader who prophesized the collapse of civilization: Joseph Seed.</span></span></span></span></li></ul>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span lang=\"EN-US\"></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">GROW THE SURVIVORS TO BUILD UP YOUR HOMEBASE</span></b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></span></p>\r\n\r\n<ul><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Specialists join the Survivors to help you craft</span><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">\r\n weapons and vehicles, train your Guns for Hire, and even go on \r\nExpeditions from the eight Homebase facilities: the workbench, training \r\ncamp, explosives lab, infirmary, garage, healing garden, cartography, \r\nand expeditions. </span></span></span></span></li><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Grow your community and upgrade your Homebase to improve your facilities and unlock more powerful weapons and gear. </span></span></span></span></li></ul>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></b></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 0.0001pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">BATTLE FOR RESOURCES IN HOPE COUNTY AND BEYOND</span></b><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></span></p>\r\n\r\n<ul><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Engage\r\n the Highwaymen in Turf Wars by clearing their outposts and then \r\nscavenging them for Ethanol and other materials. When the Highwaymen \r\nreturn with stronger reinforcements, you can take on a greater challenge\r\n for even more of these valuable resources.</span></span></span></span></li><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">For\r\n the first time in Far Cry, the adventure is not just local. Venture \r\noutside of Hope County on thrilling Expeditions to unique and memorable \r\nlocations across the USA including wetlands, canyons, and coastal \r\nregions.</span><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\"></span></span></span></span></li><li style=\"margin:0cm 0cm 0.0001pt 36pt\"><span style=\"color:null;\"><span style=\"font-size:10pt\"><span style=\"font-family:\'Times New Roman\',serif\"><span style=\"font-family:Symbol\" lang=\"EN-US\"></span><span style=\"font-family:\'Arial\',sans-serif\" lang=\"EN-US\">Expeditions\r\n and Outposts are different every playthrough, for rewarding missions \r\nthat increase in challenge and are surprising every time. </span></span></span></span></li></ul>						', '							<div class=\"section-content requirements-min\">\r\n                <h3>MINIMUM CONFIGURATION:</h3>\r\n\r\n<ul><li><font style=\"color:#bcbcbc;\">OPERATING SYSTEM: </font>Windows 7 SP1, Windows 8.1, Windows 10 (64bit versions only)</li><li><font style=\"color:#bcbcbc;\">PROCESSOR: </font>Intel Core i5 2400 @ 3.1 GHz or AMD FX 6350 @ 3.9 GHz</li><li><font style=\"color:#bcbcbc;\">RAM: </font>8GB</li><li><font style=\"color:#bcbcbc;\">VIDEO CARD: </font>NVIDIA GeForce GTX 670 (2GB) or AMD Radeon R9 270X (2GB) or better</li><li><font style=\"color:#bcbcbc;\">RESOLUTION: </font>720p</li><li><font style=\"color:#bcbcbc;\">VIDEO PRESET: </font>Low</li><li><font style=\"color:#bcbcbc;\">DIRECTX: </font>June2010 Redistributable</li><li><font style=\"color:#bcbcbc;\">SOUND: </font>DirectX 9.0c compatible sound card with latest drivers</li><li><font style=\"color:#bcbcbc;\">HARD DRIVE: </font>30 GB available space</li><li><font style=\"color:#bcbcbc;\">PERIPHERALS: </font>Windows-compatible keyboard, mouse, headset</li></ul>\r\n\r\n<p> </p>\r\n            </div>\r\n        \r\n\r\n        \r\n            \r\n                <h3>RECOMMENDED CONFIGURATION:</h3>\r\n\r\n<ul><li><font style=\"color:#bcbcbc;\">OPERATING SYSTEM: </font>Windows 7 SP1, Windows 8.1, Windows 10 (64bit versions only)</li><li><font style=\"color:#bcbcbc;\">PROCESSOR: </font>Intel Core i7-4790 @ 3.6 GHz or AMD Ryzen 5 1600 @ 3.2 GHz</li><li><font style=\"color:#bcbcbc;\">RAM: </font>8GB</li><li><font style=\"color:#bcbcbc;\">VIDEO CARD: </font>NVIDIA GeForce GTX 970 (4GB) or AMD Radeon R9 290X (4GB) or better</li><li><font style=\"color:#bcbcbc;\">RESOLUTION: </font>1080p</li><li><font style=\"color:#bcbcbc;\">VIDEO PRESET: </font>High</li><li><font style=\"color:#bcbcbc;\">DIRECTX: </font>DirectX June2010 Redistributable</li><li><font style=\"color:#bcbcbc;\">SOUND: </font>DirectX 9.0c compatible sound card with latest drivers</li><li><font style=\"color:#bcbcbc;\">HARD DRIVE: </font>30 GB available space</li><li><font style=\"color:#bcbcbc;\">PERIPHERALS: </font>Windows-compatible keyboard, mouse, headset <br></li></ul>						'),
(9, 'Dark souls 3', 400000, 'reguler', '720df720299565af1431a434b8d04eed.jpg', 'GiT GUT', '<p>							<u>RECOMMENDED\r\n</u></p><p>OS:  Windows 10 64-bit\r\n</p><p>PROCESSOR: Intel Core i7-3770 4-Core 3.4GHz / AMD FX-8350\r\n</p><p>VIDEO CARD: AMD Radeon R9 290X or NVIDIA GeForce GTX 970 4GB\r\n</p><p>SYSTEM RAM: 8 GB\r\nHARD DRIVE: 25 GB\r\n</p><p>SOUND CARD: DirectX-compatible using the latest drivers</p><p>\r\nDVD-ROM DRIVE: DVD-ROM Dual Layer\r\n</p><p>DIRECT X: DirectX 11 Compatible Graphics Card\r\n					</p>	');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$I52FUe8oEeyXPw8y6olwD.m12vecYpd0FiS66r2iN08cOiRmHE.I6', '1'),
(7, 'septoari', 'septosepto@gmail.com', '$2y$10$euKXDkaTxPddOHVTl.suH.xGS5mPHjRPXNVHFrPe56ZEA/tvLH4Ve', '2'),
(15, 'dicki', 'dickisepto@gmail.com', '$2y$10$HsY5/jhW4SOjoFJr69lcAOVNOkJ3IY/U/RWL9QFZZXTYfg0k5NlqC', '2'),
(16, 'septoari', 'septo@gmail.com', '$2y$10$IUAXbsrzHpQSuseILOuOj.e7dB/bLbUmTQcvRvbb2luJm0OTngMaq', '2'),
(17, 'dicki', 'husna@gmail.com', '$2y$10$Yi2KQB1L19Lu7L1HFBe9K.KRJ9xZn0IjDH0R.H9XbtUi5xcJozZZe', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
