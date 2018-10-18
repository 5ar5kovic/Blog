-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 11:55 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2018-10-18 12:11:54'),
(2, 'Technology', '2018-10-18 12:11:54'),
(3, 'Cars', '2018-10-18 13:38:49'),
(4, 'Books', '2018-10-18 21:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 13, 'trdd', 'hgvghv@mailinator.com', 'dffgvhbjnkkm kjjbhjk ,l l kj lkmlk', '2018-10-18 15:18:38'),
(2, 13, 'ddasd', 'sdasd@maili.com', '123123123 21312 231231 3123 1 dsfsdf fdfgdg gf f1 213 1 ', '2018-10-18 15:30:36'),
(3, 20, 'John', 'jhoan@mailinator.com', 'Great work!', '2018-10-18 20:59:34'),
(4, 20, 'Miro', 'mr@mailinator.com', 'keep going...', '2018-10-18 21:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(16, 1, 1, 'The Untapped Gold Mine Of CLASSIC That Virtually No One Knows About', 'The-Untapped-Gold-Mine-Of-CLASSIC-That-Virtually-No-One-Knows-About', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis nulla risus. In sed ex nulla. Morbi et erat vulputate, finibus mi ut, semper ante. Aenean molestie, dui auctor lobortis vulputate, est turpis efficitur nibh, dignissim posuere mauris dolor at ex. Proin sapien eros, placerat quis mauris nec, tempor pellentesque dui. Ut vel neque ut erat faucibus tempus. Phasellus vulputate ornare ipsum nec ultrices. Mauris rhoncus justo tellus, in tincidunt ipsum hendrerit vel. Curabitur ullamcorper ornare neque. Pellentesque auctor justo eu ultricies hendrerit. Nulla semper est id arcu facilisis dapibus. Suspendisse potenti. Donec sodales dui tincidunt vestibulum vulputate. Phasellus id arcu a dui luctus consequat.</p>\r\n\r\n<p>Curabitur sollicitudin varius arcu, eget tempor diam aliquet eget. Praesent condimentum tempus tellus vitae faucibus. Integer facilisis dapibus auctor. Nullam cursus dictum dapibus. Sed euismod velit elementum rhoncus placerat. Aliquam arcu risus, accumsan sed egestas id, lobortis sed purus. Nulla nec ultricies tortor, nec elementum est. In sit amet lacus sem.</p>\r\n\r\n<p>Fusce ligula dui, molestie at diam a, lobortis vestibulum dui. Duis posuere dolor quis eros ultricies, vel interdum enim interdum. Phasellus vel nisl purus. Maecenas diam odio, porta sed placerat eu, convallis at sem. In accumsan libero eu mattis interdum. Ut nec dui fringilla, fermentum dui eget, vestibulum felis. Nunc egestas, nunc id tempus feugiat, dui enim ullamcorper est, id mollis elit quam vitae dolor. Nulla quis lacinia neque. Aenean vulputate, neque nec auctor elementum, lectus nisl fermentum felis, eget porttitor justo sapien eu enim. Nulla vitae dolor sit amet augue mattis placerat. Praesent consectetur, justo vitae porta malesuada, nulla est vestibulum nisi, id sollicitudin leo dolor egestas magna. Aenean in dapibus diam.</p>\r\n\r\n<p>Aenean luctus hendrerit sem, vel interdum velit fringilla eget. Maecenas mattis ex sit amet varius fringilla. Aenean elementum ut ante et convallis. Proin enim lacus, semper ac suscipit et, mattis sed nulla. Nullam eleifend urna ac tellus fringilla, eu sodales mi dignissim. Nullam id turpis mattis, vulputate eros ut, aliquam lacus. Cras vestibulum, quam non sodales tempus, urna nulla aliquam lectus, eu mattis est ipsum quis magna. Pellentesque rhoncus mauris quis elit euismod facilisis. Suspendisse elementum odio non porttitor volutpat. Suspendisse placerat diam massa, euismod gravida purus imperdiet rutrum. Duis commodo metus non nulla lacinia, eu tristique sem vestibulum. Aenean felis massa, mollis eget accumsan eget, bibendum viverra nunc. Aenean egestas scelerisque purus. Etiam odio neque, dictum vitae ante a, porta laoreet diam.</p>\r\n\r\n<p>Pellentesque sollicitudin lacus tortor, sed tincidunt justo volutpat ac. Curabitur lectus metus, pellentesque condimentum lacus et, vulputate eleifend dolor. Etiam id metus purus. Donec sodales est id finibus porttitor. Morbi congue nisi sed facilisis blandit. Sed fermentum molestie nisl, non semper ex rutrum ut. In sed enim elit. Aenean molestie mauris lorem. Cras vel porta elit. Cras vulputate auctor sem quis gravida. Vivamus sit amet pharetra lacus, vel condimentum ante. In hac habitasse platea dictumst. Pellentesque ultricies ipsum tellus, quis molestie tellus tristique quis. Sed pharetra sem non libero dapibus vehicula.</p>\r\n\r\n<p>Nam quis gravida augue. Mauris eu scelerisque sem. Integer in nibh facilisis, ornare metus vitae, ornare justo. Nullam finibus diam ac metus mollis malesuada. Sed sagittis ante nisi, in mollis elit iaculis id. Aliquam sagittis condimentum nibh, et semper velit. Etiam sed mi eget ex varius consectetur sit amet ac mi. Aenean blandit nisi non accumsan iaculis. Donec et tempor mi, ut condimentum massa. Praesent consectetur arcu lectus, ut laoreet enim ullamcorper vel. Morbi dictum augue eu tristique elementum. Duis ultricies libero ac sem sagittis facilisis. Sed lorem ipsum, lacinia id erat a, ultricies cursus est. Nulla ultricies orci sed sapien pulvinar tempor. Duis vitae orci ac velit vestibulum ullamcorper. Vestibulum ut ex vitae diam viverra porttitor a eget sapien.</p>\r\n\r\n<p>Donec viverra, velit a maximus tincidunt, dolor lectus consequat metus, vitae ultrices mauris nibh non massa. Nullam hendrerit vel felis et efficitur. Fusce varius felis et arcu venenatis, sed interdum est hendrerit. Mauris sit amet lacus vel ligula tempor consequat. Fusce elementum et magna in mattis. Pellentesque posuere elit ac aliquet luctus. Sed id semper leo. Suspendisse id metus a lectus elementum ullamcorper eu nec ex. Donec risus risus, tempus eget efficitur quis, rutrum vel diam. Cras interdum mi commodo ipsum sagittis pulvinar. Donec suscipit lorem a nulla egestas, eget maximus mi dignissim. Curabitur at ipsum porta, tristique nisi in, maximus nisl. Maecenas eget pretium diam, quis molestie dui.</p>\r\n\r\n<p>Nulla turpis lorem, venenatis vitae justo non, aliquet tempus ante. Cras sit amet lorem vel velit fringilla porta. Quisque congue, lorem eu congue ullamcorper, massa quam vehicula leo, aliquet cursus neque enim non massa. Fusce sit amet convallis felis. Suspendisse non sagittis turpis, eget lobortis enim. Pellentesque arcu arcu, bibendum vitae quam vitae, interdum eleifend risus. Vestibulum rutrum eget mauris in viverra. Etiam feugiat est aliquam tortor pretium, ut vulputate tellus imperdiet. Duis erat risus, feugiat nec nulla non, blandit venenatis nunc. Ut dignissim metus in justo luctus, sed convallis erat sollicitudin. Curabitur ut scelerisque nibh, nec mollis turpis. Sed purus purus, tincidunt sed risus sit amet, ornare condimentum dui. Vestibulum vel neque ac eros elementum egestas. Nunc malesuada eu est sed dapibus. Fusce viverra blandit nulla, ut tempus lacus hendrerit ut.</p>\r\n\r\n<p>Ut non euismod massa. Vestibulum elementum eget dui nec commodo. Sed fermentum quam sed nisi sollicitudin feugiat. Nunc egestas cursus ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla at tellus orci. Donec facilisis, orci eget fermentum mollis, dolor nisi scelerisque nulla, quis ultricies mi est id neque.</p>\r\n', 'noImage.jpg', '2018-10-18 20:35:09'),
(17, 2, 1, 'You Don\'t Have To Be A Big Corporation To Start GUN', 'You-Dont-Have-To-Be-A-Big-Corporation-To-Start-GUN', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis tincidunt dui. Pellentesque auctor, neque vitae accumsan rutrum, augue leo ultricies eros, eu semper enim ligula non metus. Pellentesque sed ante ac est egestas varius. Pellentesque lacinia purus sit amet aliquam posuere. Nulla facilisi. Phasellus iaculis ultrices lacus id vehicula. Proin molestie sollicitudin semper. Aenean a ornare libero, nec iaculis ante.</p>\r\n\r\n<p>Nunc viverra sagittis urna, eget malesuada est. Suspendisse sit amet finibus velit. Ut non nibh tortor. Sed ac rutrum mauris. Fusce tristique diam magna, vitae egestas turpis egestas et. Vivamus vulputate purus sem, a vestibulum nunc semper at. Pellentesque efficitur sed magna sodales tincidunt. In aliquet dolor enim, eget lacinia diam sodales ut.</p>\r\n\r\n<p>Phasellus condimentum semper mauris in dictum. Sed elementum odio quis felis pharetra pretium. Vivamus et aliquam leo, quis feugiat turpis. Etiam condimentum lectus nec urna laoreet posuere. Ut tincidunt pretium dui. Sed in ante eget velit sollicitudin imperdiet. Pellentesque id lorem vel tortor varius blandit. Aliquam scelerisque tincidunt volutpat. Sed ut orci mi. Vivamus scelerisque nibh in neque vehicula finibus. Morbi vehicula magna lorem, a pharetra neque laoreet in. Donec auctor ipsum eget blandit rhoncus. Proin faucibus quam nec lectus lacinia semper. Mauris venenatis felis ut consectetur semper. Donec tempus turpis non quam imperdiet, et lobortis ipsum fringilla.</p>\r\n\r\n<p>Morbi et accumsan nunc, quis dictum lectus. Curabitur non purus cursus, mattis massa blandit, porttitor turpis. Vestibulum id quam lacinia, venenatis enim sed, tempus elit. Sed mollis quam vel egestas convallis. Morbi molestie erat eu augue lobortis feugiat. Vestibulum ut lectus mi. Sed eget lorem facilisis, iaculis tellus ac, porta ligula. Quisque non massa at nibh congue feugiat. Quisque quis justo condimentum, malesuada mi quis, laoreet enim.</p>\r\n\r\n<p>Etiam auctor commodo sem sit amet porta. Nunc quis dolor eu dui tincidunt placerat. Aenean eu dui et tellus ultricies commodo vel eu sapien. Vivamus eu vulputate est. Quisque vehicula gravida mauris non luctus. Aliquam euismod consectetur justo, lobortis ultricies nibh sollicitudin fringilla. Pellentesque vitae lacinia mi, a porta dolor. Sed sagittis luctus augue non faucibus. Pellentesque gravida et neque efficitur porta. Quisque porta nisl nunc, sit amet pulvinar elit viverra sit amet. Curabitur eget sapien vitae eros auctor aliquet.</p>\r\n', 'noImage.jpg', '2018-10-18 20:43:26'),
(18, 3, 1, 'What Make BOOK Don\'t Want You To Know', 'What-Make-BOOK-Dont-Want-You-To-Know', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed lacinia diam. Cras quis bibendum felis. Vivamus ultrices velit ut orci elementum, in sagittis orci pretium. Cras et consectetur ipsum. Quisque non fermentum tellus, ac auctor sem. Aenean ac dolor arcu. Suspendisse potenti. Praesent eu sem eu mi porttitor porttitor non sit amet augue.</p>\r\n\r\n<p>Vestibulum non quam imperdiet, pulvinar lectus sed, sagittis diam. Proin tincidunt risus consequat, imperdiet turpis at, aliquam ipsum. Nullam rutrum convallis nisi ut viverra. In facilisis sem a hendrerit sagittis. Ut porta et nunc at finibus. In hac habitasse platea dictumst. Nullam nibh orci, efficitur eget dolor sit amet, commodo tempor nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Mauris consequat libero sed pulvinar condimentum. Nunc sodales ante diam. Quisque quis dui dui. Fusce luctus augue lectus, sit amet pretium leo tincidunt ut. Duis consectetur pharetra elit, vel tincidunt ex molestie non. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam ac mauris id felis convallis fermentum. Vestibulum vitae mollis metus. Curabitur vehicula ut neque eu commodo. Nulla facilisi. Nulla consectetur orci at justo blandit, vitae laoreet justo viverra. Maecenas placerat odio vel urna rutrum, in hendrerit ex pulvinar. Aliquam ullamcorper, libero et posuere commodo, purus orci lobortis nulla, vitae maximus ipsum nisi at nisl. Praesent aliquam non lacus eget pellentesque.</p>\r\n\r\n<p>Vivamus eu dui nec lacus consectetur dapibus. Etiam vitae ante quis augue interdum dictum. Vivamus non finibus lorem. Etiam interdum sapien nunc, nec egestas leo tempor sit amet. Integer metus lectus, congue a iaculis et, dapibus sit amet nibh. Vestibulum ultricies magna at dolor euismod auctor. Nunc augue risus, mattis sed eros sed, ornare finibus sapien. Nullam blandit vehicula bibendum. Praesent ante ipsum, laoreet a porta nec, facilisis quis sem. Maecenas at pretium sem. Vivamus nibh ligula, dictum at sapien at, porttitor pretium nibh. Nunc vitae consectetur lacus. Aliquam et dolor non mauris convallis fermentum eget et lacus. Curabitur sodales vulputate quam lacinia elementum. Ut ultricies est ac tristique tempor. Maecenas facilisis molestie malesuada.</p>\r\n\r\n<p>Phasellus blandit a ligula sit amet venenatis. Vivamus et odio quis mi porttitor ultricies. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam quis elit nec purus imperdiet fringilla. Nam in libero semper, maximus massa nec, varius ligula. In dui est, bibendum vitae massa non, porttitor gravida nisl. Suspendisse suscipit imperdiet varius.</p>\r\n', 'noImage.jpg', '2018-10-18 20:44:25'),
(19, 1, 1, 'Clear And Unbiased Facts About SUCCESS (Without All the Hype)', 'Clear-And-Unbiased-Facts-About-SUCCESS-Without-All-the-Hype', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim lorem, feugiat et justo a, tempor mollis augue. Pellentesque vitae eros a augue venenatis vehicula. Ut hendrerit odio et feugiat aliquam. Vivamus congue mauris neque, eu tristique dolor malesuada ac. Mauris bibendum tellus eget molestie venenatis. Aliquam erat volutpat. Nulla facilisi. Sed pellentesque leo justo, a tempus nulla rhoncus ut. Nullam rhoncus nisi et tortor accumsan, vel interdum nisi auctor. Nulla ullamcorper non ex imperdiet tempor.</p>\r\n\r\n<p>Ut vulputate pharetra justo, vel scelerisque ligula efficitur nec. In tempor sed lectus sed ullamcorper. Vivamus ullamcorper tristique ullamcorper. Ut ac ipsum augue. Aliquam tincidunt egestas velit, ut placerat enim luctus in. Praesent vel finibus libero. Mauris malesuada, arcu eu consequat vestibulum, risus arcu molestie quam, sagittis accumsan velit metus eu ligula. Quisque eget nisl luctus, venenatis velit vitae, congue metus. Mauris convallis tellus sem, nec iaculis mi tempus vitae. Proin et enim tellus. Suspendisse cursus nisi eu leo blandit, et facilisis mauris scelerisque.</p>\r\n\r\n<p>Vivamus varius sollicitudin feugiat. In pharetra eget lacus id convallis. Curabitur porta nunc ut sapien mattis, eu suscipit eros euismod. Etiam a nisl odio. Vivamus vel faucibus massa, vel suscipit lacus. Donec efficitur augue vel dui viverra, cursus gravida nisl euismod. Nam hendrerit eu nisl nec elementum. Nunc tempus commodo nisi vel ultricies. Aenean fringilla id metus nec mollis. Cras a metus sollicitudin, feugiat augue in, porta ipsum. Curabitur tincidunt eros at urna vestibulum vulputate. Aliquam iaculis ornare lectus, aliquam convallis lectus ornare iaculis. Donec lacinia volutpat nunc, nec condimentum dui ultrices eu.</p>\r\n\r\n<p>Proin sit amet elit in magna hendrerit condimentum. Duis est nisl, fringilla sit amet feugiat quis, lobortis a leo. Fusce ac nibh id tellus interdum convallis. Aliquam pulvinar erat nec lacus aliquam lobortis. Pellentesque dapibus tristique eleifend. Proin sagittis nunc eu facilisis suscipit. Curabitur cursus vulputate dolor, sed consequat erat condimentum ac. Etiam eget erat vel sapien aliquam feugiat eu at eros. Cras risus ex, dignissim vitae mi non, ornare ullamcorper lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec vulputate massa tellus, ut facilisis augue maximus sed. Maecenas lacinia eu tellus quis convallis. Aenean vitae efficitur turpis.</p>\r\n\r\n<p>Quisque eget iaculis tellus. Donec maximus hendrerit ipsum sed fermentum. Donec aliquam imperdiet aliquam. Aliquam laoreet vulputate lorem, a tempus massa eleifend vitae. Sed aliquet, velit a dignissim dignissim, lorem neque laoreet velit, at dapibus ligula diam quis arcu. Donec sit amet arcu eros. Praesent leo nisi, vehicula fringilla erat vitae, sagittis ultricies urna. In laoreet justo nec tristique bibendum. Phasellus posuere massa nunc, id viverra ligula mollis id. Quisque aliquam odio et lacus lobortis, et mattis dui mollis. Maecenas eu neque at est lobortis feugiat. Proin fringilla mattis risus, in malesuada turpis facilisis ut.</p>\r\n', 'noImage.jpg', '2018-10-18 20:53:16'),
(20, 2, 1, 'Need More Time? Read These Tips To Eliminate SUCCESS', 'Need-More-Time-Read-These-Tips-To-Eliminate-SUCCESS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et elit tellus. Duis viverra eros dolor, aliquet hendrerit justo laoreet eget. Donec in libero eget augue fermentum pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis finibus ultricies nibh, ac semper lorem commodo ac. Vivamus sed lacus ut lacus mattis efficitur. Donec tempor justo eu augue facilisis sodales volutpat in ligula. Praesent suscipit in orci vitae porttitor. In hendrerit congue mauris a interdum. Proin porttitor varius nibh nec viverra. Aenean nec enim et ex viverra egestas sollicitudin vitae massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nisl neque, ornare quis mauris ut, ultrices finibus quam. In ornare augue non tortor pulvinar cursus. Fusce vehicula dictum orci. Cras sodales, urna a cursus semper, metus dui bibendum arcu, at dictum tellus augue at orci.</p>\r\n\r\n<p>Cras facilisis varius lorem, rutrum placerat justo fringilla vel. Morbi euismod elit arcu, sed tristique lacus consequat et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur eu dictum magna. Etiam fermentum tincidunt enim, ac tempus justo sagittis id. Donec justo nulla, dapibus quis mauris et, congue luctus lorem. Duis scelerisque sodales tellus, vitae rutrum urna iaculis non. Fusce convallis et est sit amet fringilla. Aliquam finibus sit amet tortor sed convallis. Fusce nibh ante, auctor sit amet lectus in, interdum molestie orci. Ut sit amet congue tellus. Cras placerat lacus orci, vitae commodo odio scelerisque ut.</p>\r\n\r\n<p>Aenean dignissim quam vitae arcu facilisis, id feugiat nibh eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean nec est nec nisi faucibus viverra. Vivamus lacinia, tellus at tempor facilisis, est nisl rhoncus elit, non porttitor mi velit eu felis. Integer hendrerit magna in sem egestas, non suscipit mauris consequat. Nam convallis nunc sed augue mollis feugiat. Sed nisi risus, facilisis non orci sit amet, pellentesque pulvinar nisl. Phasellus porttitor lacus diam, nec imperdiet mi porta sit amet. Phasellus vel tortor non justo mattis sollicitudin id quis ipsum.</p>\r\n\r\n<p>Suspendisse nec mauris purus. Morbi efficitur nunc et arcu aliquet, ac gravida dui pellentesque. Maecenas ac sodales dolor. Phasellus mollis, justo id luctus tincidunt, dolor leo aliquet quam, sit amet tincidunt nunc tortor sed lectus. Morbi porttitor ligula sed vestibulum efficitur. Integer finibus placerat justo in porta. Donec vel urna a sapien vehicula volutpat nec sagittis sapien. Donec non posuere dolor, ut venenatis erat. In in arcu in eros dignissim congue. Suspendisse sagittis aliquam tempus. Aliquam id lacus ex. Nam varius nisl in metus mattis, nec fermentum sapien vulputate. Praesent quis velit id risus hendrerit eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique tempor metus, nec feugiat magna accumsan eu.</p>\r\n\r\n<p>Suspendisse eu accumsan nunc, sed luctus erat. Aliquam erat volutpat. Integer ullamcorper porta dolor, sit amet ultrices eros bibendum imperdiet. Nullam iaculis tortor non posuere fermentum. Maecenas cursus, lectus ut blandit condimentum, augue turpis feugiat tortor, ut condimentum dui dolor eget dolor. Nam vehicula ac odio ac commodo. Vivamus id odio commodo justo maximus posuere non quis metus. Sed tincidunt ut purus ac convallis. Nam feugiat massa et mi lacinia, nec dapibus lacus scelerisque. Mauris et tincidunt mauris, quis viverra massa. Pellentesque sagittis condimentum lorem. Sed ultrices nisi non odio elementum, at tincidunt diam lacinia. Ut sed porta nunc, vel pellentesque nulla. Nam congue lacus ligula, sed eleifend dui lobortis ac. Aenean efficitur purus eget sem commodo, vel luctus erat suscipit.</p>\r\n', 'noImage.jpg', '2018-10-18 20:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'pera', 'pera', 'pera@mailinator.com', 'pera', 'd8795f0d07280328f80e59b1e8414c49', '2018-10-18 16:27:27'),
(2, 'test', 'test', 'test@gmail.com', 'test', '098f6bcd4621d373cade4e832627b4f6', '2018-10-18 16:28:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
