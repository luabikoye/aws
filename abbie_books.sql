-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 03, 2025 at 01:27 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abbie_books`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `unit_price` varchar(39) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `order_id`, `title`, `description`, `unit_price`, `total_price`, `quantity`, `token`) VALUES
(20, 0, '48 Laws Of Power', '48 Laws Of Power', '10000', '30000', '3', '58debe1bc463ddb249c25c04c94a62cb'),
(22, 1, 'Limitless Mind', 'Limitless Mind', '10000', '10000', '1', '412ff6d46c2e9782e64173460614b939'),
(24, 1, '48 Laws Of Power', '48 Laws Of Power', '10000', '10000', '1', '58debe1bc463ddb249c25c04c94a62cb'),
(25, 1, 'The Mind Of The  Leader', 'The Mind Of The  Leader', '15000', '15000', '1', 'f7835a99ad8c1db8c6a24717ed95bd2b'),
(26, 1, 'The Mind Of The  Leader', 'The Mind Of The  Leader', '15000', '15000', '1', 'f7835a99ad8c1db8c6a24717ed95bd2b'),
(27, 1, 'The Mind Of The  Leader', 'The Mind Of The  Leader', '15000', '15000', '1', 'f7835a99ad8c1db8c6a24717ed95bd2b'),
(31, 2, 'Atomic Habit', 'Atomic Habit', '5000', '5000', '1', '0d3190199f988025a5bbdc957fb0c05a'),
(33, 2, 'Mindset', 'Mindset', '8500', '8500', '1', '3c606f4d0df74c091893d4fde8175da5'),
(34, 2, 'Limitless Mind', 'Limitless Mind', '10000', '10000', '1', '412ff6d46c2e9782e64173460614b939'),
(35, 2, 'The Hobit', 'The Hobit', '7000', '7000', '1', 'f320fcd19330c9895edb85654a183d15'),
(42, 4, 'Mindset', 'Mindset', '8500', '8500', '1', '3c606f4d0df74c091893d4fde8175da5'),
(44, 4, 'Limitless Mind', 'Limitless Mind', '10000', '10000', '1', '412ff6d46c2e9782e64173460614b939'),
(45, 4, 'Thinking, Fast And Slow', 'Thinking, Fast And Slow', '15000', '15000', '1', 'e6aa6063b362b45a54db14ee3d34b1cc'),
(46, 5, 'Holy Bible', 'Holy Bible', '6000', '6000', '1', '7dce713892693168b557e0d2a66481e0'),
(47, 5, 'Holy Bible', 'Holy Bible', '6000', '6000', '1', '7dce713892693168b557e0d2a66481e0'),
(48, 5, 'Holy Bible', 'Holy Bible', '6000', '6000', '1', '7dce713892693168b557e0d2a66481e0'),
(49, 5, 'Limitless Mind', 'Limitless Mind', '10000', '10000', '1', '412ff6d46c2e9782e64173460614b939'),
(55, 32, '48 Laws Of Power', '48 Laws Of Power', '10000', '10000', '1', '58debe1bc463ddb249c25c04c94a62cb'),
(56, 6, '48 Laws Of Power', '48 Laws Of Power', '10000', '10000', '1', '58debe1bc463ddb249c25c04c94a62cb'),
(57, 6, 'Limitless Mind', 'Limitless Mind', '10000', '10000', '1', '412ff6d46c2e9782e64173460614b939');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `token`, `date_created`, `date_modified`) VALUES
(1, 'Bible References', 'faa7b4f5f1712763f110716d9e69bbcd', '2023-11-08 15:39:37', NULL),
(2, 'Bibles', '92f4701fb709cc7db784e2681c67607c', '2023-11-08 15:40:20', NULL),
(3, 'Christian Books', '7d35364f51e68868ded02db00b20b611', '2023-11-08 15:40:28', NULL),
(4, 'Business Books', '9d203705d1b93b6edab6084f10cbaaed', '2023-11-08 15:40:43', NULL),
(5, 'Education Books', '15b4744f81228a678c56bcc64319be5a', '2023-11-08 15:40:49', NULL),
(7, 'Children Sections', '4db7aaec84d1feb30b21ea9f28c9fed1', '2023-11-12 22:29:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass_word` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `date_modified` date NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `pass_word`, `token`, `date_modified`, `date_created`) VALUES
(1, 'admin', '9a0364b9e99bb480dd25e1f0284c8555', '4450d2a103ab905fed4701ecf542d0a1', '2023-10-30', '2023-10-30 13:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(200) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `payment_type` varchar(40) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'Pending',
  `order_status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ip_address`, `date_time`, `firstname`, `lastname`, `email`, `phone`, `address`, `city`, `state`, `payment_type`, `amount`, `payment_status`, `order_status`) VALUES
(1, '::1', '2023-11-17 02:53:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'pending'),
(2, '::1', '2023-11-23 04:27:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'pending'),
(3, '::1', '2023-11-30 11:19:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'pending'),
(4, '::1', '2023-11-30 09:18:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'pending'),
(5, '::1', '2023-12-01 12:49:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'pending'),
(6, '::1', '2024-03-20 09:57:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `stock` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `cover_type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `category_token` text NOT NULL,
  `features` varchar(100) DEFAULT NULL,
  `img_url1` text NOT NULL,
  `img_url2` text NOT NULL,
  `img_url3` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `isbn`, `stock`, `author`, `description`, `cover_type`, `price`, `token`, `category_token`, `features`, `img_url1`, `img_url2`, `img_url3`, `date_created`, `date_modified`) VALUES
(8, 'Atomic Habit', '77808909898', 'In Stock', ' James Clear', 'Atomic Habits By James Clear Is A Comprehensive, Practical Guide On How To Change Your Habits And Get 1% Better Every Day. Using A Framework Called The Four Laws Of Behavior Change, Atomic Habits Teaches Readers A Simple Set Of Rules For Creating Good Habits And Breaking Bad Ones.', 'Hard', '5000', '0d3190199f988025a5bbdc957fb0c05a', '15b4744f81228a678c56bcc64319be5a', 'Books of 2023', 'uploads/Atomic Habit_1700046024__1.png', 'uploads/Atomic Habit_1700046024__2.png', 'uploads/Atomic Habit_1700046024__3.png', '2023-11-15 12:00:24', NULL),
(9, 'Mindset', '12345578799', 'In Stock', 'Carol S. Dweck ', 'Dweck Is About Unlocking Our Full Potential By Maintaining A Growth Mindset. Rather Than Assuming Our Abilities Are Static Or Fixed, This Mindset Recognizes That We Can Develop New Skills Over Time. So, By Switching From A Fixed Mindset To A Growth Mindset, We Can Unlock New Options For Ourselves And Others', 'Hard', '8500', '3c606f4d0df74c091893d4fde8175da5', '15b4744f81228a678c56bcc64319be5a', 'New Release', 'uploads/Mindset_1700046230__1.png', 'uploads/Mindset_1700046230__2.png', 'uploads/Mindset_1700046230__3.png', '2023-11-15 12:03:50', NULL),
(10, '48 Laws Of Power', '12345578799', 'In Stock', 'Robert Greene', 'The 48 Laws Of Power Draws On Many Of History\'s Most Famous Power Quarrels To Show You What Power Looks Like, How You Can Get It, What To Do To Defend Yourself Against The Power Of Others And, Most Importantly, How To Use It Well And Keep It.', 'Hard', '10000', '58debe1bc463ddb249c25c04c94a62cb', '15b4744f81228a678c56bcc64319be5a', 'New Release,Best Sellers', 'uploads/48 Laws Of Power_1700047315__1.png', 'uploads/48 Laws Of Power_1700047315__2.png', 'uploads/48 Laws Of Power_1700047315__3.png', '2023-11-15 12:21:55', NULL),
(11, 'Limitless Mind', '77808909898', 'Out Of Stock', 'Jo Boaler ', 'Limitless Mind By Jo Boaler Presents The Idea That Brains Are Not Fixed From Birth. Boaler Shares Research And Studies That Back Up This Message As Well As How This Can Help Us Move From The Fixed Brain Mindset To The Brain Growth Mindset As Learners.', 'Hard', '10000', '412ff6d46c2e9782e64173460614b939', '15b4744f81228a678c56bcc64319be5a', 'New Release,Best Sellers,Books of 2023', 'uploads/Limitless Mind_1700048606__1.png', 'uploads/Limitless Mind_1700048606__2.png', 'uploads/Limitless Mind_1700048606__3.png', '2023-11-15 12:43:26', NULL),
(12, 'Thinking, Fast And Slow', '12345578799', 'Out Of Stock', 'Daniel Kahneman', 'Thinking, Fast And Slow Is All About How Two Systems — Intuition And Slow Thinking — Shape Our Judgment, And How We Can Effectively Tap Into Both. Using Principles Of Behavioral Economics, Kahneman Walks Us Through How To Think And Avoid Mistakes In Situations When The Stakes Are Really High.', 'Hard', '15000', 'e6aa6063b362b45a54db14ee3d34b1cc', '15b4744f81228a678c56bcc64319be5a', 'New Release,Best Sellers,Books of 2023', 'uploads/Thinking, Fast And Slow_1700051823__1.png', 'uploads/Thinking, Fast And Slow_1700051823__2.png', 'uploads/Thinking, Fast And Slow_1700051823__3.png', '2023-11-15 13:37:03', NULL),
(13, 'Holy Bible', '77808909898', 'In Stock', 'God ', 'God Is Lord And King Over His World; He Rules All Things For His Own Glory, Displaying His Perfections In All That He Does. God Is Savior, Active In Sovereign Love Through The Lord Jesus Christ To Rescue Believers From The Guilt And Power Of Sin, To Adopt Them As His Children, And To Bless Them Accordingly.', 'Hard', '5000', '7dce713892693168b557e0d2a66481e0', '92f4701fb709cc7db784e2681c67607c', 'New Release,Best Sellers,Books of 2023', 'uploads/Holy Bible_1700052273__1.png', 'uploads/Holy Bible_1700052273__2.png', 'uploads/Holy Bible_1700052273__3.png', '2023-11-15 13:44:33', NULL),
(14, 'Holy Bible', '658787945908598', 'In Stock', 'God ', 'God Is Lord And King Over His World; He Rules All Things For His Own Glory, Displaying His Perfections In All That He Does. God Is Savior, Active In Sovereign Love Through The Lord Jesus Christ To Rescue Believers From The Guilt And Power Of Sin, To Adopt Them As His Children, And To Bless Them Accordingly.', 'Hard', '5000', '7dce713892693168b557e0d2a66481e0', '92f4701fb709cc7db784e2681c67607c', 'New Release,Best Sellers,Books of 2023', 'uploads/Holy Bible_1700052415__1.png', 'uploads/Holy Bible_1700052415__2.png', 'uploads/Holy Bible_1700052415__3.png', '2023-11-15 13:46:55', NULL),
(15, 'Holy Bible', '658787945908', 'In Stock', 'God ', 'God Is Lord And King Over His World; He Rules All Things For His Own Glory, Displaying His Perfections In All That He Does. God Is Savior, Active In Sovereign Love Through The Lord Jesus Christ To Rescue Believers From The Guilt And Power Of Sin, To Adopt Them As His Children, And To Bless Them Accordingly.', 'Hard', '6000', '7dce713892693168b557e0d2a66481e0', '92f4701fb709cc7db784e2681c67607c', 'New Release,Best Sellers,Books of 2023', 'uploads/Holy Bible_1700052547__1.png', 'uploads/Holy Bible_1700052547__2.png', 'uploads/Holy Bible_1700052547__3.png', '2023-11-15 13:49:07', NULL),
(16, 'To Kill A Mockingbird', '658787945908', 'Out Of Stock', 'Harper Lee', 'To Kill A Mockingbird Is A Coming-of-age Story About A Girl Named Scout. Scout And Her Brother Jem Try To Understand And Relate To Their Father, Atticus, Who Is A Lawyer Charged With Defending A Black Man Falsely Accused Of Raping A White Woman.', 'Hard', '5000', '79a9be94a54cb0a6fc16a83afdc37a68', '4db7aaec84d1feb30b21ea9f28c9fed1', 'New Release,Best Sellers,Books of 2023', 'uploads/To Kill A Mockingbird_1700052953__1.png', 'uploads/To Kill A Mockingbird_1700052953__2.png', 'uploads/To Kill A Mockingbird_1700052953__3.png', '2023-11-15 13:55:53', NULL),
(17, 'The Hobit', '77808909898', 'Out Of Stock', 'J.R.R. Tolkien', 'The Hobbit Is Set In Middle-earth And Follows Home-loving Bilbo Baggins, The Hobbit Of The Title, Who Joins The Wizard Gandalf And Thirteen Dwarves That Make Up Thorin Oakenshield\'s Company, On A Quest To Reclaim The Dwarves\' Home And Treasure From The Dragon Smaug.', 'Hard', '7000', 'f320fcd19330c9895edb85654a183d15', '4db7aaec84d1feb30b21ea9f28c9fed1', 'New Release,Best Sellers,Books of 2023', 'uploads/The Hobit_1700053473__1.png', 'uploads/The Hobit_1700053473__2.png', 'uploads/The Hobit_1700053473__3.png', '2023-11-15 14:04:33', NULL),
(18, 'Princess And The Goblin', '77808909898', 'In Stock', ' George MacDonald', 'This Is A Lovely Story Of A Little Princess Who Discovers She Has A Fairy Grandmother, But No One Believes Her. She Soon Runs Into Trouble With Goblins, But A Boy Name Curdie Rescues Her. He Then Overhears A Goblin Plot And Tries To Learn More. Instead, He Gets Captured, And The Little Princes Must Rescue Him.', 'Soft', '3000', '9a5d6e59468c6a18df9c8742a0e0ad9a', '4db7aaec84d1feb30b21ea9f28c9fed1', 'New Release,Best Sellers,Books of 2023', 'uploads/Princess And The Goblin_1700053704__1.png', 'uploads/Princess And The Goblin_1700053704__2.png', 'uploads/Princess And The Goblin_1700053704__3.png', '2023-11-15 14:08:25', NULL),
(19, 'Pokko And The Drum', '658787945908', 'In Stock', 'Matthew Forsy', 'When Pokko Takes The Drum Deep Into The Forest It Is So Quiet, So Very Quiet That Pokko Decides To Play. And Before She Knows It She Is Joined By A Band Of Animals —first The Raccoon, Then The Rabbit, Then The Wolf—and Soon The Entire Forest Is Following Her. ', 'Soft', '3000', 'c6e79e45d3a43ba9cf022674346d6714', '4db7aaec84d1feb30b21ea9f28c9fed1', 'New Release,Best Sellers,Books of 2023', 'uploads/Pokko And The Drum_1700053882__1.png', 'uploads/Pokko And The Drum_1700053882__2.png', 'uploads/Pokko And The Drum_1700053882__3.png', '2023-11-15 14:11:24', NULL),
(20, 'The Mind Of The  Leader', '658787945908598', 'Out Of Stock', 'Kathleen Hogan', 'Based On Extensive Research, Including Assessments Of More Than 35,000 Leaders And Interviews With 250 C-level Executives, The Mind Of The Leader Concludes That Organizations And Leaders Aren\'t Meeting Employees\' Basic Human Needs Of Finding Meaning, Purpose, Connection, And Genuine Happiness In Their Work.', 'Soft', '15000', 'f7835a99ad8c1db8c6a24717ed95bd2b', '9d203705d1b93b6edab6084f10cbaaed', 'New Release,Best Sellers,Books of 2023', 'uploads/The Mind Of The  Leader_1700054458__1.png', 'uploads/The Mind Of The  Leader_1700054458__2.png', 'uploads/The Mind Of The  Leader_1700054458__3.png', '2023-11-15 14:20:58', NULL),
(21, 'Luca', '658787945908', 'Out Of Stock', 'Lucas', 'Set On The Italian Riviera, The Film Centers On Luca Paguro (Tremblay), A Young Sea Monster Boy With The Ability To Assume Human Form While On Land, Who Explores The Town Of Portorosso With His New Best Friends, Alberto Scorfano (Grazer) And Giulia Marcovaldo (Berman), Experiencing A Life-changing Summer Adventure.', 'Soft', '3000', '3fe1e5c8202b57204cead4fa6769a8ce', '4db7aaec84d1feb30b21ea9f28c9fed1', 'New Release,Best Sellers,Books of 2023', 'uploads/Luca_1700054589__1.png', 'uploads/Luca_1700054589__2.png', 'uploads/Luca_1700054589__3.png', '2023-11-15 14:23:10', NULL),
(27, 'The Fellowship Of The Ring', '12345578799', 'In Stock', 'J. R. R. Tolkien', 'This Fellowship Consists Of Frodo And His Fellow Hobbits Merry, Sam, And Pippin; Two Men, Aragorn And Boromir; Legolas The Elf; Gimli The Dwarf; And Gandalf. As They Embark On Their Perilous Quest, They Are Thwarted In Their Attempt To Cross Over A Mountain Range And Instead Travel Through The Mines Of Moria.', 'Soft', '7000', 'e05e7a68d478dc104525d144530fbd4a', '4db7aaec84d1feb30b21ea9f28c9fed1', 'New Release,Best Sellers,Books of 2023', 'uploads/The Fellowship Of The Ring_1700058363__1.png', 'uploads/The Fellowship Of The Ring_1700058363__2.png', 'uploads/The Fellowship Of The Ring_1700058363__3.png', '2023-11-15 15:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass_word` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass_word`, `token`, `date_created`, `date_modified`) VALUES
(1, 'Okwara Kizito Chigozirim', 'chigokizzy@gmail.com', '9a0364b9e99bb480dd25e1f0284c8555', 'babe7fcc6bc118fc46bafffb7ec4bacd', '2023-11-09 20:03:08', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
