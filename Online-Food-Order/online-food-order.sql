-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 09:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online-food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('abc', 'abc@gmail.com', '0702345671', 'for delivery problem', 'hello,I am abc .i have problem about delivery.');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('dill', 'Dilmi', 'dil@gmail.com', '0701234567', 'Kandy', 'dildil'),
('ru', 'ruwini', 'abc@gmail.com', '0774568920', '152/8, Jaffna', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(30,0) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(1, 'Chicken cheese kottu', '900', 'Have you ever tried Cheese kottu from GRUBHUB', 1, 'images/ITM04527.jpg', 'DISABLE'),
(2, 'Sea-food rice', '850', 'Quick and simple, our Cajun-Style Seafood Rice is a one-pot dish the whole family will enjoy..', 1, 'images/images.jpg', 'DISABLE'),
(3, 'Burger', '500', 'Go Big All Day with GURUHUB', 1, 'images/burger.jpg', 'DISABLE'),
(5, 'Hopper', '150', 'Delicious...! Your Tast', 1, 'images/appa-1024x683.jpg', 'DISABLE'),
(13, 'Vegetable Soup', '850', 'Farm Fresh Vegetable soup with a pinch of salt for your liking.', 2, 'images/vegetable-soup.jpg', 'ENABLE'),
(14, 'Sweet Corn Chicken Soup', '1050', 'Sweet corn kernels in a flavourful chicken soup with egg drop.', 2, 'images/Sweet-Corn-Chicken-Soup-2.jpg', 'ENABLE'),
(15, 'Roasted Fish Soup', '1050', 'Roasted fish soup along with roasted cumin seeds and red onions.', 2, 'images/recipe-image-legacy-id-1202599_11-5c327b6.jpg', 'ENABLE'),
(16, 'Mullaguthanni Soup', '850', 'Coconut milk based soup made with a combination of accompaniments to create an authentic Sri Lankan curry flavor.', 2, 'images/6884713781_5f6bc1e658_z.jpg', 'ENABLE'),
(17, 'Gotukola Sambolaya', '835', 'Chopped Gotu Kola, Coconut, Onion, Tomato, Green Chilli, Lime.', 2, 'images/gotu-kola-sambolaya.jpg', 'ENABLE'),
(18, 'Karawila Sambolaya', '775', 'Bitter Gourd, Onion, Tomato, Green Chilli, Lime, Capsicum', 2, 'images/IMG_3793-2.jpg', 'ENABLE'),
(19, 'Carrot Sambolaya', '775', 'Grated Carrot, Coconut, Onion, Green Chilli, Lime.', 2, 'images/8-best-sri-lankan-salad-recipes-to-add-to-your-meal.640x480.jpg', 'ENABLE'),
(20, 'Mixed Salad', '775', 'Mixture of Cucumber, Tomato, Carrot, Onion, Green Chilli, Lime.', 2, 'images/green-salad-12.jpg', 'ENABLE'),
(21, 'Seeni Sambol', '690', 'Caramelized Onion, Chilli Flakes, Tamarind Paste.', 2, 'images/seeni-sambol_43_1.1.266_386X580.jpg', 'ENABLE'),
(22, 'Pol Sambol', '625', 'Grated Coconut, Dry Chilli, Onion, Tomato, Green Chilli, Lime.', 2, 'images/coconut-sambal-1.jpg', 'ENABLE'),
(23, 'Papadam', '375', 'Chickpea flour, shiitake, garlic powder, black pepper', 2, 'images/p3.png', 'ENABLE'),
(24, 'Kukulmas Yapanaya Kramayata (J', '1650', 'Chicken marinated and slow cooked using a recipe unique to the Northern province of Sri Lanka.', 2, 'images/dsc09760.jpg', 'ENABLE'),
(25, 'Kukulmas Kaluwata Uyala', '1650', 'Corn fava bean mustard tigernut jícama green bean celtuce collard greens Pea horseradish azuki', 2, 'images/image_5d200ee862.jpg', 'ENABLE'),
(26, 'Kukulmas Themparadu', '1850', 'Marinated Fried Chicken sautéed with onions and capsicum.', 2, 'images/sri-lanka-kukul-mas-curry.jpg', 'ENABLE'),
(27, 'Meat Balls Kirata / Devilled', '1550', 'A favorite in the local household. Chicken meatballs cooked in coconut based brown curry.', 2, 'images/Meatball-curry-Recipe6.jpg', 'ENABLE'),
(28, 'Hot Butter Chicken', '2150', 'Avocado quandong fennel gumbo black-eyed pea bean corn fava bean mustard tigernut', 2, 'images/butter-chicken--750x750.jpg', 'ENABLE'),
(29, 'Elu Mas Masala', '2990', 'Mutton cooked in Masala herbs (Indian Spices) with Coriander and lime.', 2, 'images/68f22acccf625fc69e20bcf981b988cd.jpg', 'ENABLE'),
(30, 'Elu Mas Yapanaya Kramayata (Ja', '2990', 'Mutton marinated and slow cooked using a recipe unique to the northern Province.', 2, 'images/016-450x450.jpg', 'ENABLE'),
(31, 'Elu Mas Stew', '3250', 'Mutton cooked in Mustard flavoured sauce with a hint of Ceylon Spices & Farm Fresh Vegetables.', 2, 'images/images.jpeg', 'ENABLE'),
(32, 'Elu Mas Devilled (Boneless)', '3250', 'Boneless Mutton Sauted in Chefs special micture of Sauces.', 2, 'images/download.jpeg', 'ENABLE'),
(33, 'Elu Mas Themparadu (Boneless)', '2990', 'Marinated Mutton Sauteed to perfection with onions & capsicum.', 2, 'images/download (1).jpeg', 'ENABLE'),
(34, 'Maalu Mirisata', '1995', 'Spicy Fish curry cooked with Fresh Spices from the Heart of Ceylon.', 2, 'images/Sri-Lankan-chilli-fishmalu-mirisata-islandsmile.org-5732-e1547683596930.jpg', 'ENABLE'),
(35, 'Maalu Ambulthiyal', '1995', 'A Unique Sri Lankan fish recipe marinated in tangy and peppery sauce.', 2, 'images/dsc01411.jpg', 'ENABLE'),
(36, 'Maalu Themparadu Karala', '1995', 'Marinated Fried Fish Sautéed with Onions and Capsicum.', 2, 'images/sri-lankan-fish-curry.jpg', 'ENABLE'),
(37, 'Maalu Suduwata', '2250', 'It\'s our lighter version of the Miris Maalu. Cooked with Coconut milk, Turmeric and Mustard cream', 2, 'images/jos-fish-curry-85402-1.jpeg', 'ENABLE'),
(38, 'Maalu Devilled', '1995', 'Fried Fish sautéed with the Chef\'s special Mixture of Sauces.', 2, 'images/Devilled-Fish_43_1.1.300_326X580.jpeg', 'ENABLE'),
(39, 'Maalu Stew', '2150', 'Fish cooked in Mustard flavoured sauce with a hint of Ceylon Spices & Farm Fresh Vegetables.', 2, 'images/simple-fish-stew-1d0b259.jpg', 'ENABLE'),
(40, 'Fried Seer Fish', '2350', 'Coated with Bread Crumbs and Fried to perfection with a hint of Salt & Pepper', 2, 'images/1-56.jpg', 'ENABLE'),
(41, 'Dallo Rathata, Sarata', '1875', 'Fresh Cuttlefish Cooked in a spice blended red curry sauce.', 2, 'images/dallo-rathata-uyala.jpg', 'ENABLE'),
(42, 'Dallo Devilled', '1850', 'Fried Cuttlefish sautéed with the Chef\'s special mixture of sauces.', 2, 'images/Devilled-Cuttlefish_43_1.1.299_326X580.jpeg', 'ENABLE'),
(43, 'Hot Butter Cuttlefish', '1990', 'Batter fried Cuttlefish mixed with a special blend of spices.', 2, 'images/Hot-butter-Cuttlefish-445x445.png', 'ENABLE'),
(44, 'Isso Yapanaya Kramayata (Jaffn', '1975', 'Freshly caught Prawns cooked using authentic Jaffna spices', 2, 'images/00-koozh-jaffna-sri-lanka-airasia-chew-win-win-cropped.jpg', 'ENABLE'),
(45, 'Isso Themperadu', '2250', 'Fried Prawns sautéed with Onions and Capsicum.', 2, 'images/closeup-Prawns-Fry-Goan.jpg', 'ENABLE'),
(46, 'Isso Stew', '2250', 'Freshly caught Prawns cooked in Mustard flavoured sauce with a hint of Ceylon spices and vegetables.', 2, 'images/moqueca-77c32fc.jpg', 'ENABLE'),
(47, 'Isso Devilled', '2200', 'Fried Prawn sautéed with Chef\'s special mixture of sauces and Ceylon spices.', 2, 'images/IMG_1765-2.jpg', 'ENABLE'),
(48, 'Hot Butter Isso', '2450', 'Batter Fried Prawn mixed with a special blend of spices.', 2, 'images/680-x-900-14.png', 'ENABLE'),
(49, 'Kakuluwo Negombo Kramayata', '2250', 'Freshly caught Crab marinated and slow cooked according to a Unique recipe of an authentic household in Negombo.', 2, 'images/file.webp', 'ENABLE'),
(50, 'Lankan Chilli Kakuluwo', '1995', 'A local rendition of the world famous Singapore chilli crab.', 2, 'images/Sri-Lankan-Crab-Curry-The-Flavor-Bender-Facebook-Share-5.jpg', 'ENABLE'),
(51, 'Crab Tempered Dry Curry', '1950', 'Marinated Crab sautéed with Onions & Capsicum.', 2, 'images/img_1080.webp', 'ENABLE'),
(52, 'Soya Curry / Devilled', '720', 'Coconut milk, soya meat, curry powder, curry leaves, green', 3, 'images/download (2).jpeg', 'ENABLE'),
(53, 'Stuffed Capsicum (1 nos)', '650', 'Zucchini, bell peppers, cherry tomatoes, lemon, monterey jack', 3, 'images/stuffed-capsicum-recipe-main-photo.jpg', 'ENABLE'),
(54, 'Beetroot Curry', '850', 'Tomato paste, smoked paprika, red onion, olive oil, turmeric', 3, 'images/Tasty-easy-vegan-beetroot-curry.jpg', 'ENABLE'),
(55, 'Pumpkin Curry', '950', 'Coconut milk, pumpkin, cinnamon, curry leaves, chilli', 3, 'images/Vegan-Pumpkin-Curry-Square.jpg', 'ENABLE'),
(56, 'Tempered Potato / Curry', '850', 'Potatoes, curry leaves, green chili, chili powder, mustard', 3, 'images/couscous-grape-apple-salad-withpomegranate-dressing-islandsmile.org-6628-e1567486024692.jpg', 'ENABLE'),
(57, 'Mango Curry', '925', 'Coconut milk, coconut oil, curry powder, red onion, desiccated', 3, 'images/Mango-curry-low-q-2.webp', 'ENABLE'),
(58, 'Beans Curry', '850', 'Green beans, cinnamon', 3, 'images/IMG_8705-2.jpg', 'ENABLE'),
(59, 'Dhal Curry', '780', 'Masoor dal, coconut milk, curry powder, lime, curry leaves', 3, 'images/lentil-dhal-24166-1.jpeg', 'ENABLE'),
(60, 'Garlic Curry', '950', 'Garlic Curry is a curry recipe prepared using onions, tomatoes, powdered spices (such as turmeric, chilly powder, coriander powder)', 3, 'images/IMG_9125-2-scaled-720x720.jpg', 'ENABLE'),
(61, 'Tempered Pineapple', '950', 'Coconut milk, curry powder, roasted curry powder, green, pineapple', 3, 'images/download (3).jpeg', 'ENABLE'),
(62, 'Polos Curry', '1100', 'Coconut milk, jackfruit, roasted curry powder, ginger, cinnamon', 3, 'images/polos-curry-islandsmile.org-6455-e1548202492246.jpg', 'ENABLE'),
(63, 'Kaju Maluwa', '1750', 'Sri Lankan cashew curry, a vegan, vegetarian dish with a soft crunch accompanied by extra creaminess from the Coconut milk makes it a recipe worth trying.', 3, 'images/IMG_4637-2.jpg', 'ENABLE'),
(64, 'Batu Mojuwa', '825', 'Wambatu moju aka brinjal moju are fried eggplant strips, shallots, and green chillies mixed with mustard vinegar to pickle them. ', 3, 'images/download (4).jpeg', 'ENABLE'),
(65, 'Crab Dry Curry Bowl ', '0', 'Our Crabs are known to be the best in the world. Don\'t miss out on this spicy dry crab curry served with Rice or Roast Paan along with Onion Sambol.', 3, 'images/crab-curry-recipe.jpg', 'ENABLE'),
(66, 'Prawn Dry Curry Bowl ', '0', 'Do you know what you should not be missing out on? Culture Colombo\'s Prawn Dry Curry Bowl. Our Chef\'s culinary skills are excellent when it comes to creative dishes. This Prawn delicacy is accompanied', 3, 'images/IMG_7865-2-scaled.jpg', 'ENABLE'),
(67, 'Roast Chicken Dry Curry Bowl ', '0', 'Includes oven Roasted Chicken accompanied by your choice of carbs (Rice/Roast Paan) along with Onion Sambol.', 3, 'images/Curry-Roast-Chicken-Square-FS-11.webp', 'ENABLE'),
(68, 'Mixed Seafood Dry Curry Bowl (', '0', 'Mixed Seafood ranging from Fish, Cuttlefish, Crab to Prawns arrive in a \"Mati Walada\" which is a must have dish in the Sri Lankan Household. This Mixed Seafood Dry Curry Bowl is accompanied by your ch', 3, 'images/Slow-Cooker-Shrimp-Crab-Bisque-9.jpg', 'ENABLE'),
(69, 'Rice and Curry Special', '1190', 'Red Rice/ White Rice , Mallum or Salad , 03 Vegetable , Curries and Papadam/Dry Chilli/Lime Pickle/Male Pickle', 3, 'images/Rice-and-Curry-Veg.jpeg', 'ENABLE'),
(70, 'Fried Rice', '0', 'White rice, eggs, peanut oil, green onions, soy sauce, baby shrimp, carrots, butter', 3, 'images/272834easy-homemade-shrimp-fried-riceSouthernCookingQueen-669a0e67b1844ee08213d9e2cf3a88b2.jpg', 'ENABLE'),
(71, 'Bamboo Biriyani', '0', 'Biriyani served in a steaming hot bamboo with Raita, Homemade Chutney and Masala Curry', 3, 'images/main-qimg-d9317b25ec131acf2fb56202a791c939-lq.jpeg', 'ENABLE'),
(72, 'Lamprais', '0', 'The traditional Dutch lamprais is a portion of rice wrapped warm in a banana leaf with flavorful accompaniments prepared from an age old Dutch recipe.', 3, 'images/KCC_0878.jpg', 'ENABLE'),
(73, 'Kachal Rice (Serves 1-2 pax)', '4250', 'Special Rice mixed with mutton, chicken, prawns & fish.', 3, 'images/feature-5-cilantro-lime-rice.jpg', 'ENABLE'),
(74, 'PITTU - Sri Lankan Favourite', '0', 'A Local favourite & a regular. 3 pieces of Red or White Pittu served Kirihodi, Lunumiris, Coconut Milk & chefs dedicated Vegetable Dish.', 3, 'images/C5912F87-1C6E-498A-ACFA-32535468EBF0-768x1024.jpeg', 'DISABLE'),
(75, 'STRING HOPPERS - An All Rounde', '650', 'It’s an all rounder dish that a Sri Lankan would have for all 3 meals. 15 Nos Red or White String Hoppers served with the local favourite Kiri Hodi, Pol Sambol & chefs dedicated Vegetable Dish.', 3, 'images/DD20DB56-04CE-4523-B864-E14D4244ED14-768x1024.jpeg', 'ENABLE'),
(76, 'PITTU - Sri Lankan Favourite', '650', 'A Local favourite & a regular. 3 pieces of Red or White Pittu served Kirihodi, Lunumiris, Coconut Milk & chefs dedicated Vegetable Dish.', 3, 'images/C5912F87-1C6E-498A-ACFA-32535468EBF0-768x1024.jpeg', 'ENABLE'),
(77, 'STRING HOPPER PILAU (Serves 1-', '650', 'Shredded String Hoppers Tempered with authentic spices.', 3, 'images/pilau.JPG', 'ENABLE'),
(78, 'HOPPERS - Another Sri Lankan F', '625', 'No Sri Lankan would deny a midnight craving for a hopper. 3 Plain Hoppers & 1 Egg Hopper served with Lunumiris, Seeni Sambol & chefs dedicated Vegetable Dish.', 3, 'images/IMG_1036.jpg', 'ENABLE'),
(79, 'POL ROTTI - The Traditional', '350', 'A traditional household ﬂat bread prepared with coconut.3 Pieces of Pol Rotti served with Seeni Sambol, Katta Sambol & chefs dedicated Vegetable Dish.', 3, 'images/Sri-lankan-coconut-rotipol-roti-islandsmile.org-1986-e1550672889802.jpg', 'ENABLE'),
(80, 'PARATA - The Local Indian', '625', 'Another Local favourite. 3 Paratas served with Dhal Curry & chefs dedicated Vegetable Dish.', 3, 'images/roti-parata-roti-canai-with-lamb-curry-sauce_121826-2076.jpg', 'ENABLE'),
(81, 'EGG ROTTI - A Twist in Detail', '695', '1 Egg Rotti, 1 Masala Rotti served with Seeni Sambol, Katta Sambol & chefs dedicated Vegetable Dish.', 3, 'images/download (5).jpeg', 'ENABLE'),
(82, 'Hot Butter Chicken Hopper Meal', '950', '(01 plain hopper, 01 egg hopper topped with Hot bu er Chicken & spiced curd.)', 3, 'images/download (6).jpeg', 'ENABLE'),
(83, 'Hot Butter Prawn Hopper Meal', '1050', '(01 plain hopper, 01 egg hopper topped with Hot butter Prawn & spiced curd.)', 3, 'images/img_1369.jpg', 'ENABLE'),
(84, 'Vegetable Kottu', '1400', 'Kottu roti is a street food that has its origins in Batticaloa, in the east of Sri Lanka. ', 3, 'images/3534789-vegetable-kottu-roti-Minnie-4x3-1-4aa6f3ad55844157a40fdc793715e7d5.jpg', 'ENABLE'),
(85, 'Fish Kottu', '1850', 'Stir fry, coconut milk, bell peppers, soy sauce, tomato', 3, 'images/s431446970955069150_p75_i1_w2560.webp', 'ENABLE'),
(86, 'Chicken Kottu', '1850', 'Chopped flatbread mixed and mashed together with chicken & vegetables and aromatic spices.', 3, 'images/IMG_7129-2.jpg', 'ENABLE'),
(87, 'Mutton Kottu', '2750', 'This is made with Boneless Mutton, curry leaves, cabbage, roti, leeks, ginger', 3, 'images/1-49.jpg', 'ENABLE'),
(88, 'Cheesy Nai Miris', '0', 'The Famous Chicken Nai Miris Pizza\' is a chicken topped pie, smothered in cheesy mozzarella, sprinkled with onions and curry leaves.', 3, 'images/2baf8960-573d-4165-9ee6-257724eacbbf.jpg', 'ENABLE'),
(89, 'Culture Special Chicken Kottu', '2750', 'Kottu Rotti softend and Soaked in a thick curry, topped with 2 type of cheese sauce to bring the cheesiest kottu in town.', 3, 'images/79bfe7e4839440be81bba08b49b9bb9d.jpg', 'ENABLE'),
(90, 'Extra Cheese', '580', 'extra cheese is a topping option that allows customers to request an additional amount of cheese on their pizza.', 3, 'images/Instant-Cheese-Burst-Pizza-with-Extra-Cheese-on-Tawa-2.jpg', 'ENABLE'),
(91, 'Roast Paan', '375', ' Roast Paan is a bread that is baked not as a whole loaf but in slices (a pull-apart bread), which makes it easier to just peel off and eat.', 3, 'images/IMG_6194-2-791x1024.jpg', 'ENABLE'),
(92, 'Keeri Samba', '690', 'Keeri is the most expensive sub-variety of Samba. Compared to Nadu Rice, Keeri Samba Rice costs almost double.', 3, 'images/1-38-1.jpg', 'ENABLE'),
(93, 'Basmathi', '925', ' a variety of long-grain rice with slender aromatic grains, used for savoury dishes.', 3, 'images/pusa-rice-500x500.webp', 'ENABLE'),
(94, 'Yellow Rice', '1150', 'It is made using white rice made yellow with annatto, saffron or turmeric, ingredients used to give the rice its yellow color. ', 3, 'images/Yellow-Rice-4.jpg', 'ENABLE'),
(96, 'Boiled Egg', '550', 'Boiled eggs are eggs, typically from a chicken, cooked with their shells unbroken, usually by immersion in boiling water.', 3, 'images/9188544-1a3585fc8f3541c1891081af005ef7ff.jpg', 'ENABLE'),
(97, 'Egg Kiri Hodi', '1150', 'Coconut milk, curry powder, tomato, cinnamon, curry leaves', 3, 'images/egg-kiri-hodi-islandsmile.org-7390-e1534781175389.jpg', 'ENABLE'),
(98, 'Fried Eggs (2 eggs)', '750', 'A fried egg is a cooked dish made from one or more eggs which are removed from their shells and placed into a frying pan and fried.', 3, 'images/blackstone-fried-eggs-5-2.webp', 'ENABLE'),
(99, 'Omelette (3 eggs)', '1475', 'An omelette is prepared from beaten eggs cooked with butter or oil in a frying pan.', 3, 'images/easy-omelette-recipe-recipe-card-image-500x500.jpg', 'ENABLE'),
(100, 'Ice Cream (Vanilla/Chocolate/s', '975', 'Ice cream is a very cold sweet food made from frozen cream or a substance like cream and has a flavor such as vanilla, chocolate, or strawberry. ', 3, 'images/Scoops-kinds-ice-cream.webp', 'ENABLE'),
(101, 'Fruit Salad', '975', 'Fruit salad is a dish consisting of various kinds of fruit, sometimes served in a liquid, either their juices or a syrup.', 3, 'images/salad-1.jpg', 'ENABLE'),
(102, 'Fruit Salad with Ice Cream', '1350', 'This Fruit Salad With Ice Cream is a mix of various fruits and nuts served with dollops of vanilla ice cream. It is an easy, yummy dessert.', 3, 'images/knickerbocker-glory-3-500x500.jpg', 'ENABLE'),
(103, 'Watalappam', '925', 'Sri Lankan Watalappan (Cardamom Spiced Coconut Custard) is a delicious dairy-free coconut custard. Sweetened with unrefined brown sugar.', 3, 'images/1053554-53501a02e0e3475bb61374c0949bfa8b.jpg', 'ENABLE'),
(104, 'Curd and Treacle', '975', 'In Sri Lanka, this dessert is traditionally made using buffalo milk curd which is thick, rich and creamy, but good quality Greek-style yoghurt.', 3, 'images/Curd_&_treacle-Sri_Lanka.jpg', 'ENABLE'),
(105, 'Fruit Platter', '1550', 'A Fruit Platter is a pretty display of fruit for a party, event or get together. It sounds easy enough to make, and it is, however, with a few tricks you can make sure it lasts, looks delicious and th', 3, 'images/aab292_0956dd4a4b8f493fbddd16b44be4ed94~mv2.webp', 'ENABLE'),
(106, 'Honey Hopper', '650', 'A delicious dry cider with honey and dry hopped.', 3, 'images/e8fccefddb2d44b4151b451c4d75eab2.jpg', 'ENABLE'),
(107, 'Hopper Mousse', '950', '3 scoops of mousse served on a delicious Pani appa', 3, 'images/unnamed.jpg', 'ENABLE'),
(108, 'Biscuit Pudding', '975', 'Buttermilk biscuits, egg whites, sugar, whole milk, vanilla', 3, 'images/thumbnail-img.jpg', 'ENABLE'),
(109, 'Sundae Fantasy', '1550', '3 Scoops of ice cream topped with strawberry Comport Mango syrup & chocolate chip', 3, 'images/chocolate-fantasy-ice.jpg', 'ENABLE'),
(110, 'Kithul Curd Cake', '1550', 'So Curd cake as sembled on top of Ginger biscuit bace & is topped with Pani Kaju & kithul Treacle', 3, 'images/download (7).jpeg', 'ENABLE'),
(111, 'Orange Juice', '1500', 'Fresh orange juice tastes better than concentrate and is loaded with vitamins.', 1, 'images/download (8).jpeg', 'ENABLE'),
(112, 'Passion Fruit Juice', '890', 'Passion fruit juice is pleasantly tart and super refreshing. Similar to lemonade, this drink is made by combining fruit juice with water.', 1, 'images/passion-fruit-juice-13-700x1050.webp', 'ENABLE'),
(113, 'Mixed Fruit Juice', '825', 'Bursting with flavour, this concoction is a mix of pineapple, mango, and papaya. Made from the natural extract of our fruits and packed in a glass bottle.', 1, 'images/unnamed (1).jpg', 'ENABLE'),
(114, 'Mango Juice', '875', 'The best homemade mango juice recipe uses organic alphonso mangoes for a sweet, nectar-like drink that\'s perfect to enjoy on any day.', 1, 'images/Fresh mango Juice Main-1.webp', 'ENABLE'),
(115, 'Pineapple Juice', '875', 'Pineapple juice contains nutrients and beneficial compounds that may support your health, including bromelain, which may boost immunity and improve digestion.', 1, 'images/easy-apple-cider-vinegar-pineapple-juice-recipe-cli9pnkwd001drc1b7bkba7zy.webp', 'ENABLE'),
(116, 'Melon Juice', '825', 'Melon juice made of shredded cantaloupe and simple syrup is a refreshing drink you\'ll love year round. It\'s a tasty, healthy way to hydrate!', 1, 'images/Melon-Drink-4.jpg', 'ENABLE'),
(117, 'Lime Soda', '875', 'Lime Soda crisp & refreshing! Just minutes to make and you KNOW what\'s in it! PLUS, control the level of sweetness.', 1, 'images/fresh_lime_soda_zdish.webp', 'ENABLE'),
(118, 'Lime and Mint', '875', 'This Mint Lime is a fresh squeezed juice of mint and lemon to beat the hot days. Mint have a lot of health benefits if it included in ur diet plan.', 1, 'images/lime-mint-drink-image-1.jpg', 'ENABLE'),
(119, 'Home made Ginger Beer', '850', 'Ingredients Needed for Ginger Beer: All it takes is fresh grated organic ginger, cream of tartar, lemon juice, active dry yeast, and cold water.', 1, 'images/Trinidad-Homemade-Ginger-Beer-Recipe-Main.jpg', 'ENABLE'),
(120, 'Lime Juice', '750', 'A refreshing Lime Juice will cool you down on the hottest of days.', 1, 'images/lime-juice-pic.jpeg', 'ENABLE'),
(121, 'King Coconut Lime', '875', 'USES I LOVE COCO Flavored King Coconut Water is commonly used as a beverage and as a solution for treating dehydration related to diarrhea or exercise.', 1, 'images/EDITED7.webp', 'ENABLE'),
(122, 'King Coconut', '775', 'The king coconut is a variety of coconut that is indigenous to Sri Lanka. Widely used in Ayurvedic medicine, it is known for its naturally sweet taste.', 1, 'images/Hd1dea0bbd54b4d799963512fab9d0338Q.jpg_300x300.webp', 'ENABLE'),
(123, 'Passion Mint', '875', 'A tangy, sweet concoction of organic and natural fruits which will take your taste buds on a delicious journey.', 1, 'images/Passion-Fruit-Mojito-13.webp', 'ENABLE'),
(124, 'Papaya Juice', '795', ' Papaya juice is a delicious antioxidant-rich drink full of Vitamin C and fiber. This healthy 4 ingredient drink is ready in 5 minutes!', 1, 'images/sushine.jpg', 'ENABLE'),
(125, 'Tamarind Juice', '850', 'This chilled tamarind juice is a little sweet and a little tangy but seriously refreshing.', 1, 'images/download (9).jpeg', 'ENABLE'),
(126, 'Goraka Juice (Packed with Heal', '850', 'In traditional Ayurvedic medicine, Goraka is believed to aid digestion, promote weight loss, and even improve cardiovascular health.', 1, 'images/s-l1600.jpg', 'ENABLE'),
(127, 'Trio of Homemade Shooter Platt', '850', 'Add some fun to your holiday party with a round of shots! These great tasting shooter recipes fit the Christmas and winter theme perfectly.', 1, 'images/9a5ba30d978db8c98bddeb0c26e6471d.jpg', 'ENABLE'),
(128, 'Coca Cola', '550', 'Original Coca Cola is a great-tasting, refreshing soft drink with natural flavours and no added preservatives and in this pack.', 1, 'images/AU00099e.webp', 'ENABLE'),
(129, 'Sprite', '550', 'Sprite is a refreshing, lime-flavoured soft drink from the Coca-Cola Company.', 1, 'images/mcdonalds-sprite_1-3-product-tile-desktop.jpeg', 'ENABLE'),
(130, 'Portello', '550', 'Portello is a carbonated grape and berry flavored soft drink. Its rich, fruity flavour can be compared to port wine or cola.', 1, 'images/timthumb.jpeg', 'ENABLE'),
(131, 'Coke Zero', '625', 'It contains zero calories and sugar while providing the signature Coca-Cola flavor, making it an appealing drink among those trying to reduce their sugar.', 1, 'images/cokezero-h.webp', 'ENABLE'),
(132, 'Sprite Zero', '625', 'Welcome to Sri Lanka\'s first inspirational global experience in online grocery retailing. Be a part of this experience, redefining convenience and freshness.', 1, 'images/71+Mc5CC1yL._SL1500_.jpg', 'ENABLE'),
(133, 'Soda', '550', 'Soda is water that comprises of several bubbles. It is also one of the main ingredients used in the production of soft drinks.', 1, 'images/LemonSoda1-500x500.jpg', 'ENABLE'),
(134, 'Fanta', '550', 'Give your thirst a taste of the new irresistible Fanta! Check out more of our fruit flavored sodas and limited-edition flavors!', 1, 'images/001_fanta-300x400.jpg', 'ENABLE'),
(135, 'Cinnamon Iced Tea', '950', 'A fragrant and refreshing cinnamon Earl Grey recipe. A delightfully aromatic iced tea made with perfectly brewed Earl Grey tea deliciously.', 1, 'images/Cinnamon-Orange-Iced-Tea-5.webp', 'ENABLE'),
(136, 'Lemon Iced Tea', '950', 'This quick and easy recipe for Sweet Lemon Iced Tea will be a summer favorite - It\'s so refreshing and and full of fruity flavor!', 1, 'images/Lemon-Iced-Tea-11.jpg', 'ENABLE'),
(137, 'Iced Milo', '1100', ' It\'s kind of like a mocha but with a malted twist. Check out this easy Iced Milo latte recipe - the perfect nutritious summer drink to make!', 1, 'images/milo-dinosaur2.jpg', 'ENABLE'),
(138, 'Iced Coffee', '950', 'Discover how to make iced coffee at home. With this simple recipe, you can get a cooling caffeine fix with no fuss. Try it with a shot of maple syrup.', 1, 'images/220629.webp', 'ENABLE'),
(139, 'Faluda', '950', 'Falooda is one of a kind! Also known as (and spelled) Faluda, and Faloodeh or Faludeh, falooda is a uniquely delicious and decadent drink.', 1, 'images/Falooda-Social-Media-3329.jpg', 'ENABLE'),
(140, 'Mineral Water Bottle (500ml)', '220', 'Cristal drinking water bottle is filled with purified water which is filtered to remove impurities for a fresh, clean taste. With the ease of use to quench.', 1, 'images/4792241000944.jpg', 'ENABLE'),
(141, 'Tea Pot/Coffee Pot ', '0', 'ransparent glass and Amber touch, Material: Glass, Set Teapot/ Coffee pot and cups.', 1, 'images/Coffee-pot-set-Amber-heat-resistant-glass-coffee-teapot-and-cup-can-be-used-for-open-1.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('ashen20', 'Ashen', 'ashen20@gmail.com', '0775835504', '161/8,Kiriwaththuduwa', '12345678'),
('dil', 'dilmi', 'dilmi@gmail.com', '0703231778', 'Ratnapura', 'Dilmi'),
('sama', 'Samadi', 'sathsarani2000@gmail.com', '0763677456', '307/5,Katuwana', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 13, 'Vegetable Soup', 850, 1, '2024-02-23', 'dill', 2),
(2, 13, 'Vegetable Soup', 850, 1, '2024-02-23', 'dill', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'GRUBHUB ', 'gurubhub@gmail.com', '0701234567', 'colombo', 'dil'),
(2, 'CULTURE COLOMBO', 'abc@gmail.com', '0456978156', '307/5,Katuwana, western', 'sama'),
(3, 'LOTUS', 'lotus@gmail.com', '0456978156', 'Colombo 07, western', 'ashen20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
