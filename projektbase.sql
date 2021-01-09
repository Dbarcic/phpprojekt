-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 12:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projektbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `body`) VALUES
(1, 'Junji Itō was born on 31 July 1963 in Sakashita, now a part of Nakatsugawa, Gifu. He began his experience in the horror world at a very young age; his two older sisters would read Kazuo Umezu and Shinichi Koga in magazines, and consequently, he began reading them too. He grew up in the countryside, in a small city next to Nagano. In the house where he lived, the bathroom was at the end of an underground tunnel, where there were spider crickets. Such experiences were later reflected in his works.\r\n\r\nItō first began writing and drawing manga as a hobby while working as a dental technician in around 1984.[2]\r\n\r\nIn 1987, he submitted a short story to Gekkan Halloween (月刊ハロウィン, lit. Monthly Halloween) that won an honorable mention in the Kazuo Umezu Prize (with Umezu himself as one of the judges). This story was later serialized as Tomie.\r\n\r\nFilm director Guillermo del Toro cited on his official Twitter account that Ito was originally a collaborator for the video game Silent Hills, of which both Del Toro and game designer Hideo Kojima were the main directors. However, a year after its announcement, the project was canceled by Konami, the IP\'s owner. Itō and Del Toro would later lend their likenesses to Kojima\'s next project, Death Stranding.\r\n\r\nIn 2019, Ito received an Eisner Award for his manga adaptation of Mary Shelley\'s Frankenstein.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Azerbaijan'),
(12, 'Bahamas (the)'),
(13, 'Bahrain'),
(14, 'Bangladesh'),
(15, 'Barbados'),
(16, 'Belarus'),
(17, 'Belgium'),
(18, 'Belize'),
(19, 'Benin'),
(20, 'Bhutan'),
(21, 'Bolivia (Plurinational State of)'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Brazil'),
(25, 'Brunei Darussalam'),
(26, 'Bulgaria'),
(27, 'Burkina Faso'),
(28, 'Burundi'),
(29, 'Cabo Verde'),
(30, 'Cambodia'),
(31, 'Cameroon'),
(32, 'Canada'),
(33, 'Central African Republic (the)'),
(34, 'Chad'),
(35, 'Chile'),
(36, 'China'),
(37, 'Colombia'),
(38, 'Comoros (the)'),
(39, 'Congo (the)'),
(40, 'Costa Rica'),
(41, 'Côte d\'Ivoire'),
(42, 'Croatia'),
(43, 'Cuba'),
(44, 'Cyprus'),
(45, 'Czechia'),
(46, 'Democratic People\'s Republic of Korea (the)'),
(47, 'Democratic Republic of the Congo (the)'),
(48, 'Denmark'),
(49, 'Djibouti'),
(50, 'Dominica'),
(51, 'Dominican Republic (the)'),
(52, 'Ecuador'),
(53, 'Egypt'),
(54, 'El Salvador'),
(55, 'Equatorial Guinea'),
(56, 'Eritrea'),
(57, 'Estonia'),
(58, 'Eswatini'),
(59, 'Ethiopia'),
(60, 'Fiji'),
(61, 'Finland'),
(62, 'France'),
(63, 'Gabon'),
(64, 'Gambia (the)'),
(65, 'Georgia'),
(66, 'Germany'),
(67, 'Ghana'),
(68, 'Greece'),
(69, 'Grenada'),
(70, 'Guatemala'),
(71, 'Guinea'),
(72, 'Guinea-Bissau'),
(73, 'Guyana'),
(74, 'Haiti'),
(75, 'Honduras'),
(76, 'Hungary'),
(77, 'Iceland'),
(78, 'India'),
(79, 'Indonesia'),
(80, 'Iran (Islamic Republic of)'),
(81, 'Iraq'),
(82, 'Ireland'),
(83, 'Israel'),
(84, 'Italy'),
(85, 'Jamaica'),
(86, 'Japan'),
(87, 'Jordan'),
(88, 'Kazakhstan'),
(89, 'Kenya'),
(90, 'Kiribati'),
(91, 'Kuwait'),
(92, 'Kyrgyzstan'),
(93, 'Lao People\'s Democratic Republic (the)'),
(94, 'Latvia'),
(95, 'Lebanon'),
(96, 'Lesotho'),
(97, 'Liberia'),
(98, 'Libya'),
(99, 'Liechtenstein'),
(100, 'Lithuania'),
(101, 'Luxembourg'),
(102, 'Madagascar'),
(103, 'Malawi'),
(104, 'Malaysia'),
(105, 'Maldives'),
(106, 'Mali'),
(107, 'Malta'),
(108, 'Marshall Islands (the)'),
(109, 'Mauritania'),
(110, 'Mauritius'),
(111, 'Mexico'),
(112, 'Micronesia (Federated States of)'),
(113, 'Monaco'),
(114, 'Mongolia'),
(115, 'Montenegro'),
(116, 'Morocco'),
(117, 'Mozambique'),
(118, 'Myanmar'),
(119, 'Namibia'),
(120, 'Nauru'),
(121, 'Nepal'),
(122, 'Netherlands (the)'),
(123, 'New Zealand'),
(124, 'Nicaragua'),
(125, 'Niger (the)'),
(126, 'Nigeria'),
(127, 'North Macedonia'),
(128, 'Norway'),
(129, 'Oman'),
(130, 'Pakistan'),
(131, 'Palau'),
(132, 'Panama'),
(133, 'Papua New Guinea'),
(134, 'Paraguay'),
(135, 'Peru'),
(136, 'Philippines (the)'),
(137, 'Poland'),
(138, 'Portugal'),
(139, 'Qatar'),
(140, 'Republic of Korea (the)'),
(141, 'Republic of Moldova (the)'),
(142, 'Romania'),
(143, 'Russian Federation (the)'),
(144, 'Rwanda'),
(145, 'Saint Kitts and Nevis'),
(146, 'Saint Lucia'),
(147, 'Saint Vincent and the Grenadines'),
(148, 'Samoa'),
(149, 'San Marino'),
(150, 'Sao Tome and Principe'),
(151, 'Saudi Arabia'),
(152, 'Senegal'),
(153, 'Serbia'),
(154, 'Seychelles'),
(155, 'Sierra Leone'),
(156, 'Singapore'),
(157, 'Slovakia'),
(158, 'Slovenia'),
(159, 'Solomon Islands'),
(160, 'Somalia'),
(161, 'South Africa'),
(162, 'South Sudan'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'Sudan (the)'),
(166, 'Suriname'),
(167, 'Sweden'),
(168, 'Switzerland'),
(169, 'Syrian Arab Republic (the)'),
(170, 'Tajikistan'),
(171, 'Thailand'),
(172, 'Timor-Leste'),
(173, 'Togo'),
(174, 'Tonga'),
(175, 'Trinidad and Tobago'),
(176, 'Tunisia'),
(177, 'Turkey'),
(178, 'Turkmenistan'),
(179, 'Tuvalu'),
(180, 'Uganda'),
(181, 'Ukraine'),
(182, 'United Arab Emirates (the)'),
(183, 'United Kingdom of Great Britain and Northern Ireland (the)'),
(184, 'United Republic of Tanzania (the)'),
(185, 'United States of America (the)'),
(186, 'Uruguay'),
(187, 'Uzbekistan'),
(188, 'Vanuatu'),
(189, 'Venezuela (Bolivarian Republic of)'),
(190, 'Viet Nam'),
(191, 'Yemen'),
(192, 'Zambia'),
(193, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `titles` text COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `titles`, `body`) VALUES
(1, '1. Hanging Blimp', 'Hanging Blimp (found in Shiver) is Ito’s eerie and chilling storytelling skills at their absolute peak. While his art is praised most often for its body horror quality, Hanging Blimp is what most expertly shows off his plotting and the strength of his mental forge.In this short story, ominous and enormous balloons – in the shape and façade of real people’s faces – appear floating across the sky over the entire country. Their gaunt and fearful but unchanging expressions, coupled with the mystery of what they are and where they came from, makes for a <b>petrifying premise</b> that’s only worsened when it becomes clear that the balloons are hunting down the people they resemble, and hanging from each balloon is a noose.'),
(2, '2. The Enigma of Amigara Fault', 'This is another short story (found as a bonus chapter in Gyo) that lacks the quintessential body horror stamp of Junji Ito. Instead, it’s a <b>terror masterpiece</b> that relies on mystery, intrigue, and a slow-burning plot to lure the reader in.A recent earthquake has shifted the earth and raised a long strip of rock at the base of a mountain. Along this newly unearthed rock is a series of holes that disappear into the mountain. But these holes are human-shaped, carved by people unknown and hidden in the earth for what surely must be thousands of years. And yet, people are being drawn to this phenomenon once they find what they believe to be their hole – a hole that fits them and only them.'),
(3, '3. The Long Dream', 'Now here is some <b>imaginative and original body horror</b> by our master of terror. The Long Dream (found in Shiver) tells the story of a man in a hospital bed who lives years – sometimes entire lives – every time he sleeps. When he wakes up, the time he spent in the dream is worn on his skin and his body slowly degrades and morphs into something alien and frightening. \r\nThere’s nothing threatening in this story – no monster or otherworldly creature – only a man who slowly succumbs to eternal dreams and wakes up to find his body sunken and immobile. This is what makes The Long Dream one of the most harrowing and haunting Ito stories, while also being so cleverly static.'),
(4, '4. The Thing That Drifted Ashore', 'An ominous title like this can only lead to <b>one of Ito’s best short stories</b>. And it does. Ito is at his very best when he recognised a specific innate fear or phobia and runs with a horror idea based on that fear. What makes this story shine is that it’s bigger than a simple phobia: The Thing That Drifted Ashore (found in the Slug Girl collection) taps into our discomfort when considering the infinite size and depth of our dark oceans – how close they are and yet how unknown. It also uses Ito’s signature aesthetics to design a truly disturbing creature that never looks too far beyond the realm of possibility. That’s what’s truly frightening: this thing could exist, it could be out there, and it could do what it does in this terrifying story.'),
(5, '5. Greased', 'Greased (found in Shiver) is, perhaps, Junji Ito’s <b>most disgusting story</b>. It was inspired by the discomfort he himself went through when studying at a dental school. While there, he had to sleep on a futon that had been stained brown from the sweat of former students. From sweat came oil and from oil came zits. And so, this story was born! In it, a young girl and her brother live above their father’s yakiniku restaurant which has slowly and steadily covered the interior of the house with grease and filled it with oily fumes. It’s a story of sibling rivalry soaked in grease: truly, one of the most unpleasant and squeamish stories you can imagine reading. And with the attention to detail Ito brings to his art, some of the panels can leave you feeling incredibly nauseous.'),
(6, '6. Fashion Model', 'One of <b>Ito’s most famous single panels</b> is that of a tall, thin, middle-aged woman with a long head and a monstrous mouth. She is the titular fashion model of this story (found in Shiver), a woman hired by a film crew. The story’s protagonist is frightened of her looks and confused as to why the crew has hired her to be a model. All the while, as we read, we wonder whether or not there is anything to be scared of – if she is, in fact, simply a scary-looking woman. This doubt comes with the guilt of judging her too harshly. This is what makes Fashion Model such a stand-out Ito story: it’s not only an unexplained natural mystery, a piece of terrifying body horror, or a supernatural phenomenon. It’s a story that makes you doubt, feel guilty, let your guard down, before it really lays on the terror.'),
(7, '7. Slug Girl', 'This story (found in the Slug Girl collection), while not a particular revelation of psychological horror like Hanging Blimp or The Long Dream, is <b>an excellent example of Ito’s unsettling body horror</b>.It’s gone down as one of his most beloved stories for its absurd nature and the empathy it demands from the reader. Slug Girl tells the story of a young girl whose family’s backyard has been overrun with slugs for most of her life. As the story begins, she finds that her tongue is swelling, and she is feeling sick. While at home from school, she is bedridden and, soon enough, finds that her tongue has transformed into the head and body of a slug. Her condition worsens but what really gets to the reader is that feeling of, “what would I do in her position?” and the sheer panic that comes with it.'),
(8, '8. Army of One', 'What really makes Army of One (found in Hellstar Remina) stand out from the crowd of claustrophobic, discomfiting, unnatural and inflated Ito comics is that it has an entirely other kind of atmosphere and tone. Army of One, right until its very ending, has the story and pacing of a very un-supernatural and grounded thriller. \r\n<b>People are going missing</b>, and turning up soon after, dead, and stitched together in macabre poses. The number of people going missing gradually increases, from couples to groups to entire mass gatherings. And when they’re found, they’re stitched together as a web made of people. It’s horrifying, but it seems to be the work of a serial killer or a group. It’s a very different kind of Ito story. That is, until the very end, of course.'),
(9, '9. Dissection Girl', 'Dissection Girl (found in Fragments of Horror) is an Ito story that combines all the best aspects of Ito’s artistic and literary skills. \r\nIt’s <b>a personal and human tale with an ordinary protagonist and an extraordinary subject character</b>. It considers a real-life issue – in this case a kind of body dysmorphia – and plays with it in a terrifying manner. It also explodes with a resolution moment of exaggerated and absurd body horror that’s as gross as it is thrilling. Dissection girl, in many ways, is an excellent entry point to reading Ito’s work. It’s unsettling but not ghastly. Its imagery is discomfiting, but not something that makes you writhe with chills and goose bumps. \r\nIt’s a perfectly crafted and unsettling tale of Ito at his most approachable, yet still wholly wicked.'),
(10, '10. Honoured Ancestors', 'There’s a funny anecdote surrounding this tale (found in Shiver), which is that Ito created something here that he was very proud of: a person running whilst lying on their back in an uncanny spider-like fashion. That is, until he at last saw the director’s cut of The Exorcist and was disappointed to see it had already been done. Nevertheless, it’s still a terrifying scene that comes at the end of this, one of <b>Ito’s most viscerally unsettling and monstrous tales</b>.When a high schooler brings a girl he likes home to meet his dad, she has already suffered memory loss and trauma in the form of a dream about an enormous caterpillar. When she meets the boy’s dad, he enters the room in a spider-like fashion and the top of his head is never shown. Eventually, the reason why is revealed and it’s one of the most shocking, eerie, and unnerving moments in an Ito comic. It’s a true moment of grotesque body horror that will stay with you for a long, long time.');

-- --------------------------------------------------------

--
-- Table structure for table `news2`
--

CREATE TABLE `news2` (
  `id` int(11) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news2`
--

INSERT INTO `news2` (`id`, `body`) VALUES
(1, 'In a small, seaside town of Japan, the population\'s sanity is dwindling and otherworldly, grotesque creatures terrorize those who call the place home. It\'s the end of the world and the only solution is to confront the terror reigning over the apocalypse. Navigate this hellis, rougelite, reality through turn-based combat and unforgiving choices.Experiment with the events of a playthrough by building a deck of event cards to discover different outcomes for your battles against the darkness.Different decks may even unlock new mysteries or clues.'),
(2, 'WORLD OF HORROR features branching stories with five playable characters to brave the chaos, each with their own story and a different perspective on the events that unfold.Unravel puzzles and mysteries through spells that sacrifice sanity. Uncover disturbing and schocking clues.Diligently search every nook and cranny, scouring for helpful items that may come in handy in another twisted encounter.');

-- --------------------------------------------------------

--
-- Table structure for table `news3`
--

CREATE TABLE `news3` (
  `id` int(11) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news3`
--

INSERT INTO `news3` (`id`, `body`) VALUES
(1, 'Manga artist Junji Ito says he overstated Hideo Kojima\'s offer of a collaboration in a recent interview. He intially told Comic Book, via a translator, that Kojima invited the mangaka to work on a horror game that he might be designing, but now he claims it was just a remark made at a party. Ito never claimed that Kojima Productions was developing a horror game or that there was any official agreement, so the only exaggeration was calling it an invitation rather than a casual remark. The interview did set off a lot of speculation, however, and some fans might have read into it a bit too much. It doesn\'t mean a collaboration won\'t happen, though, so keep your fingers crossed.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '$2y$10$silK3h239B5XDWMkWEHG3.6PjZSIPA6L5tGVzonYb2/RIToIWpk0S', 'admin@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news2`
--
ALTER TABLE `news2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news3`
--
ALTER TABLE `news3`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news2`
--
ALTER TABLE `news2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news3`
--
ALTER TABLE `news3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
