-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 10:18 AM
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
-- Database: `article`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_type` int(10) DEFAULT NULL COMMENT '1=NewsAPI,2=GuardianAPI,3=NyTimesAPI',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `images`, `published_at`, `source_name`, `category_name`, `url`, `api_type`, `created_at`, `updated_at`) VALUES
(1, 'Russia, China sign economic pacts despite Western criticism - Reuters', 'Russia\'s prime minister signed a set of agreements with China on Wednesday during a trip to Beijing, describing bilateral ties at an unprecedented high, despite disapproval from the West of their relationship as the war in Ukraine dragged on.', NULL, 'https://www.reuters.com/resizer/W1K0DdDv1ue6tkIVeYvyax3cxWw=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/54DIVYVR6JINHHTPGDZ6XNJGTA.jpg', '2023-05-24T06:30:00Z', 'NewsAPI', 'Reuters', 'https://www.reuters.com/world/russia-china-set-ink-bilateral-pacts-despite-western-criticism-2023-05-24/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(2, 'Saudi embrace of Assad sends strong signal to US - Reuters', 'Once labelled a pariah, Saudi Crown Prince Mohammed bin Salman took centre stage as master of ceremonies last week when Arab states readmitted Syria to the Arab League, signaling to Washington who calls the regional shots.', NULL, 'https://www.reuters.com/resizer/P97wtmYWzUTT062cQFsp-GePedA=/1147x600/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/GH72PIJMWRJ6FKJCKOPQMVJJ3M.jpg', '2023-05-24T05:28:00Z', 'NewsAPI', 'Reuters', 'https://www.reuters.com/world/middle-east/saudi-embrace-assad-sends-strong-signal-us-2023-05-24/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(3, 'It\'s launch day! After first scrub, here\'s what to know about SpaceX\'s next Florida launch - Florida Today', 'SpaceX is set to launch a Falcon 9 rocket from Cape Canaveral in Florida on Tuesday, a mission that will take a communications satellite to orbit.', 'Emre Kelly', 'https://www.floridatoday.com/gcdn/presto/2023/01/18/PBRE/d1473ca4-47fd-46e3-b008-9eff244f67e2-crb011823_spacex_1_.jpg?crop=2669,1501,x1,y101&width=2669&height=1501&format=pjpg&auto=webp', '2023-05-24T05:26:15Z', 'NewsAPI', 'Florida Today', 'https://www.floridatoday.com/story/tech/science/space/2023/05/23/its-launch-day-what-you-need-to-know-about-spacex-launch-from-florida/70244034007/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(4, 'Celtics show \'poise\' facing elimination, extend series vs. Heat - ESPN - ESPN', 'The Celtics flipped the script in Game 4, outshooting the Heat to extend the series.', 'Tim Bontemps', 'https://a3.espncdn.com/combiner/i?img=%2Fphoto%2F2023%2F0524%2Fr1177500_1024x576_16%2D9.jpg', '2023-05-24T04:48:02Z', 'NewsAPI', 'ESPN', 'https://www.espn.com/nba/story/_/id/37718463/celtics-show-poise-facing-elimination-extend-series-vs-heat', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(5, '\'The Voice\' Finale: Watch Gina Miles, Grace West, D. Smooth, Sorelle and NOIVAS Perform - Entertainment Tonight', 'Will your favorite singer be the season 23 winner?', 'Meredith B. Kile', 'https://www.etonline.com/sites/default/files/styles/max_1280x720/public/images/2023-05/ETD_TRENDING%20The%20Voice%20Finale%20Watch_20230523_MG_VIDPIC.jpg?h=d1cb525d&itok=veWrWG2P', '2023-05-24T04:18:14Z', 'NewsAPI', 'Entertainment Tonight', 'https://www.etonline.com/the-voice-finale-watch-gina-miles-grace-west-d-smooth-sorelle-and-noivas-perform-205083', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(6, 'Stars captain Jamie Benn ejected for cross-check as Golden Knights take 3-0 series lead - USA TODAY', 'Dallas Stars captain Jamie Benn was ejected for cross-checking Vegas Golden Knights\' Mark Stone less than two minutes into a 4-0 loss in Game 3.', 'Mike Brehm', 'https://www.usatoday.com/gcdn/presto/2023/05/24/USAT/bee96512-708c-4568-8f21-27ca7be0e823-jamie_benn.JPG?crop=4613,2595,x1688,y312&width=3200&height=1801&format=pjpg&auto=webp', '2023-05-24T04:07:30Z', 'NewsAPI', 'USA Today', 'https://www.usatoday.com/story/sports/nhl/2023/05/23/stars-jamie-benn-ejected-cross-check-mark-stone-golden-knights/70250359007/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(7, '‘Threats’ prompt Target stores in US to withdraw some Pride Collection products - The Guardian', 'Items removed from sale and others moved to back of stores after ‘confrontational behavior’ towards employees', 'Guardian staff reporter', 'https://i.guim.co.uk/img/media/926982314cf42b47f7179a0363c6fdba446dd284/0_0_3500_2100/master/3500.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&enable=upscale&s=7689dbe9c0eef7923dd979e860f73a0a', '2023-05-24T04:02:00Z', 'NewsAPI', 'The Guardian', 'https://www.theguardian.com/world/2023/may/24/target-stores-us-withdraw-some-pride-collection-lgbtq-products-items', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(8, 'Jayson Tatum Scores 33 Points In Celtics Game 4 W! | May 23, 2023 - NBA', 'Jayson Tatum recorded his 16th career playoff game with 25+ points, 10+ rebounds and 5+ assists, passing John Havlicek for 2nd most in Celtics franchise hist...', NULL, 'https://i.ytimg.com/vi/VCfx6TVP6hY/maxresdefault.jpg', '2023-05-24T02:59:42Z', 'NewsAPI', 'YouTube', 'https://www.youtube.com/watch?v=VCfx6TVP6hY', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(9, 'Star Swarms Reveal a Hidden Beast: NASA\'s Hubble Hunts for Black Hole Close to Earth - SciTechDaily', 'A Dark Central Mass is Lurking at the Hub of a Glittering Stellar Island Gravitational traps in space, black holes, come in different sizes. Or more correctly, different masses, because they are all infinitely small. The first black hole ever discovered, in 1…', NULL, 'https://scitechdaily.com/images/Globular-Cluster-Messier-4-M4.jpg', '2023-05-24T02:52:30Z', 'NewsAPI', 'SciTechDaily', 'https://scitechdaily.com/star-swarms-reveal-a-hidden-beast-nasas-hubble-hunts-for-black-hole-close-to-earth/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(10, 'Netflix password sharing is over, as crackdown on households starts - The Washington Post', 'Starting now, anyone borrowing a Netflix login in the U.S. will have to get their own account or pay $7.99 a month.', 'Heather Kelly', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/2CCPIHDH63G6GSHJ2OEUVW6RJY_size-normalized.jpg&w=1440', '2023-05-24T02:46:00Z', 'NewsAPI', 'The Washington Post', 'https://www.washingtonpost.com/technology/2023/05/23/netflix-password-account-sharing-ends-us/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(11, 'Hundreds of new species discovered in this remote part of the world, researcher say - ABC News', 'Inaccessibility to the mountainous regions have allowed the species to thrive.', 'Julia Jacobo', 'https://s.abcnews.com/images/International/Cyrtodactylus-Rukhadeva-1-ht-er-230522_1684774517683_hpMain_16x9_992.jpg', '2023-05-24T02:45:04Z', 'NewsAPI', 'ABC News', 'https://abcnews.go.com/International/hundreds-new-species-discovered-remote-part-world-researcher/story?id=99512711', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(12, 'Microsoft announces Windows Copilot AI-powered assistant - Fox Business', 'Microsoft unveiled its new AI-powered assistant known as Windows Copilot, a chatbot which will work across apps on Windows 11 and is set for a June preview for users.', 'Eric Revell', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2023/01/0/0/Microsoft-2-1.jpg?ve=1&tl=1', '2023-05-24T02:02:31Z', 'NewsAPI', 'Fox Business', 'https://www.foxbusiness.com/technology/microsoft-announces-windows-copilot-ai-powered-assistant', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(13, 'South Carolina Senate passes 6-week abortion ban, sends bill to governor - The Washington Post', 'An earlier effort to tightly restrict abortions in South Carolina was deemed unconstitutional by the state Supreme Court.', 'Molly Hennessy-Fiske, Rachel Roubein', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/U6QJSXHZLMI63OX4X5ICAVTB3I_size-normalized.jpg&w=1440', '2023-05-24T01:50:00Z', 'NewsAPI', 'The Washington Post', 'https://www.washingtonpost.com/nation/2023/05/23/south-carolina-six-week-abortion-ban-vote/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(14, 'Casey DeSantis teases looming launch of husband Ron\'s 2024 presidential campaign - New York Post ', 'Florida’s first lady Casey DeSantis shared a video clip that teases the imminent launch of her husband Gov. Ron DeSantis’ 2024 presidential campaign.  The 30-second clip, which Casey DeS…', 'Victor Nava', 'https://nypost.com/wp-content/uploads/sites/2/2023/05/newspress-collage-27179417-1684894056442.jpg?quality=75&strip=all&1684879725&w=1024', '2023-05-24T01:35:00Z', 'NewsAPI', 'New York Post', 'https://nypost.com/2023/05/23/casey-desantis-teases-launch-of-husband-rons-2024-presidential-campaign/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(15, 'Shawn Mendes and Camila Cabello’s New PDA Pics Prove Every Touch Is Ooh, La-La-La - E! NEWS', 'Shawn Mendes and Camila Cabello, who dated for two years before breaking up in November 2021, held hands during a recent coffee date in New York City.', 'Angie Orellana Hernandez', 'https://akns-images.eonline.com/eol_images/Entire_Site/2022128/rs_1200x1200-220228064947-1200-Shawn_Mendes_Camila_Cabello-gj.jpg?fit=around%7C1080:1080&output-quality=90&crop=1080:1080;center,top', '2023-05-24T01:12:00Z', 'NewsAPI', 'Eonline.com', 'https://www.eonline.com/news/1375319/shawn-mendes-and-camila-cabellos-new-pda-pics-prove-every-touch-is-ooh-la-la-la', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(16, 'Father of slain Idaho student felt ‘rage’ in courtroom during arraignment of murder suspect Bryan Kohberger - CNN', 'The father of slain University of Idaho student Kaylee Goncalves said he felt “rage” in the courtroom on Monday as he attended the arraignment for the man accused of killing his daughter and three other students.', 'Emma Tucker,Paradise Afshar', 'https://media.cnn.com/api/v1/images/stellar/prod/221117125006-01-university-of-idaho-killings-victims-goncalves.jpg?c=16x9&q=w_800,c_fill', '2023-05-24T00:49:00Z', 'NewsAPI', 'CNN', 'https://www.cnn.com/2023/05/23/us/kaylee-goncalves-father-bryan-kohberger-arraignment/index.html', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(17, 'Conroe storm: Building collapse kills 2, damage in Huntsville - Houston Chronicle ', 'A fast-moving storm killed two people and injured seven others when strong winds toppled the house they were building in Conroe, officials said.', 'Shaniece Holmes-Brown, John Wayne Ferguson, Catherine Dominguez', 'https://s.hdnux.com/photos/01/33/01/37/23861209/3/rawImage.jpg', '2023-05-24T00:33:45Z', 'NewsAPI', 'Houston Chronicle', 'https://www.houstonchronicle.com/news/houston-weather/article/national-weather-service-houston-tornado-warning-18115383.php', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(18, 'Wagner mercenary group accused of atrocities in Africa - CBS Evening News', NULL, NULL, NULL, '2023-05-23T23:28:29Z', 'NewsAPI', 'YouTube', 'https://www.youtube.com/watch?v=qEftR0k7Bbg', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(19, 'Debt ceiling talks grind ahead on as both sides are \"far apart\" - CBS News', 'Debt ceiling negotiations are resuming on Capitol Hill Tuesday, with a possible default or \"X-date\" quickly approaching.', 'Kathryn Watson, Rebecca Kaplan', 'https://assets3.cbsnewsstatic.com/hub/i/r/2023/05/23/f3b9906d-21c1-4005-a287-7175623c20c0/thumbnail/1200x630/29b7da029a5a3d7a3602d56f36f0619b/2023-05-22t231457z-1088968630-rc2v31aes5iq-rtrmadp-3-usa-debt.jpg', '2023-05-23T23:25:00Z', 'NewsAPI', 'CBS News', 'https://www.cbsnews.com/news/debt-ceiling-negotiations-default-june-deadline/', 1, '2023-05-25 00:54:07', '2023-05-25 00:54:07'),
(20, 'What S.F. must learn from the Dodgers\' Sisters of Perpetual Indulgence disaster - San Francisco Chronicle', 'A Chronicle archive search shows the Sisters of Perpetual Indulgence are anything but a “hate group.” San Francisco should embrace them and follow their lead.', 'Peter Hartlaub', 'https://s.hdnux.com/photos/01/33/01/31/23860853/3/rawImage.jpg', '2023-05-23T23:24:27Z', 'NewsAPI', 'San Francisco Chronicle', 'https://www.sfchronicle.com/vault/article/s-f-learn-dodgers-sisters-perpetual-18112516.php', 1, '2023-05-25 00:54:08', '2023-05-25 00:54:08'),
(21, 'Australia news live: buildings on fire near Sydney’s Central station', 'Australia news live: buildings on fire near Sydney’s Central station', 'N/A', '', '2023-05-25T06:53:53Z', 'Guardian', 'News', 'https://www.theguardian.com/australia-news/live/2023/may/25/australia-politics-news-live-katy-gallagher-pwc-lidia-thorpe-anthony-albanese-peter-dutton-indigenous-voice-malarndirri-mccarthy-senate-estimates-question-time', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(22, 'Russia-Ukraine war live: Russian rebels behind Belgorod attack say ‘you will see us again’; Kyiv repels drone strikes', 'Russia-Ukraine war live: Russian rebels behind Belgorod attack say ‘you will see us again’; Kyiv repels drone strikes', 'N/A', '', '2023-05-25T06:52:15Z', 'Guardian', 'News', 'https://www.theguardian.com/world/live/2023/may/25/russia-ukraine-war-live-updates-russian-rebels-belgorod-attack-raid-anti-putin-militia-latest-news', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(23, 'Sydney CBD fire: huge blaze engulfs building near Central station', 'Sydney CBD fire: huge blaze engulfs building near Central station', 'N/A', '', '2023-05-25T06:47:23Z', 'Guardian', 'News', 'https://www.theguardian.com/australia-news/2023/may/25/fire-sydney-today-central-station-cbd-building-surry-hills-blaze-today-news', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(24, 'Energy bills: Ofgem cuts price cap to £2,074 from July – business live', 'Energy bills: Ofgem cuts price cap to £2,074 from July – business live', 'N/A', '', '2023-05-25T06:46:56Z', 'Guardian', 'News', 'https://www.theguardian.com/business/live/2023/may/25/energy-bills-ofgem-price-cap-gas-electricity-cost-of-living-business-live', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(25, 'Return of the Jedi at 40: a flawed reminder of when Star Wars was still an event', 'Return of the Jedi at 40: a flawed reminder of when Star Wars was still an event', 'N/A', '', '2023-05-25T06:43:01Z', 'Guardian', 'Arts', 'https://www.theguardian.com/film/2023/may/24/return-of-the-jedi-at-40-star-wars-george-lucas', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(26, 'On Women by Susan Sontag review – the reluctant feminist', 'On Women by Susan Sontag review – the reluctant feminist', 'N/A', '', '2023-05-25T06:30:01Z', 'Guardian', 'Arts', 'https://www.theguardian.com/books/2023/may/25/on-women-by-susan-sontag-review-the-reluctant-feminist', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(27, ' Britain’s energy price cap cut: how the changes affect you', ' Britain’s energy price cap cut: how the changes affect you', 'N/A', '', '2023-05-25T06:07:33Z', 'Guardian', 'News', 'https://www.theguardian.com/business/2023/may/25/britain-energy-price-cap-cut-ofgem-electricity-gas-bills-how-changes-affect-you', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(28, 'Britain’s energy price cap falls to £2,074 but households will see little relief', 'Britain’s energy price cap falls to £2,074 but households will see little relief', 'N/A', '', '2023-05-25T06:03:32Z', 'Guardian', 'Lifestyle', 'https://www.theguardian.com/money/2023/may/25/britain-energy-price-cap-fall-ofgem-gas-electricity-bills', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(29, 'My mother’s treasured phone number of 70 years has been lost', 'My mother’s treasured phone number of 70 years has been lost', 'N/A', '', '2023-05-25T06:00:02Z', 'Guardian', 'Lifestyle', 'https://www.theguardian.com/money/2023/may/25/my-mothers-treasured-phone-number-of-70-years-has-been-lost', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(30, 'What’s the use of $800m, Bryan Johnson, if you dine on baby food? | Emma Brockes', 'What’s the use of $800m, Bryan Johnson, if you dine on baby food? | Emma Brockes', 'N/A', '', '2023-05-25T06:00:01Z', 'Guardian', 'Opinion', 'https://www.theguardian.com/commentisfree/2023/may/25/bryan-johnson-800m-baby-food-mortality', 2, '2023-05-25 00:54:09', '2023-05-25 00:54:09'),
(31, 'Elon Musk’s Event With Ron DeSantis Exposes Twitter’s Weaknesses', 'What was supposed to be a crowning moment for Mr. Musk’s Twitter turned into a series of technical glitches.', 'By Ryan Mac', 'https://static01.nyt.com/images/2023/05/24/multimedia/24MUSK-top-hbft/24MUSK-top-hbft-superJumbo.jpg', '2023-05-24T18:57:12-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/technology/elon-musk-desantis-twitter.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(32, 'Fact-Checking DeSantis’s Opening Bid for the White House', 'We assessed the Republican candidate’s defense of his record as Florida governor, his dispute with Disney and his attack on President Biden.', 'By Linda Qiu', 'https://static01.nyt.com/images/2023/05/24/multimedia/24dcfactcheck-kmvf/24dcfactcheck-kmvf-superJumbo.jpg', '2023-05-24T21:25:05-04:00', 'NYTimes', 'politics', 'https://www.nytimes.com/2023/05/24/us/politics/ron-desantis-fact-check.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(33, 'Five Takeaways From a Rocky 2024 Debut', 'Ron DeSantis’s long-awaited entry into the presidential race showed some potential strengths as a Republican candidate, after an embarrassing start on Twitter.', 'By Jonathan Swan, Shane Goldmacher and Maggie Haberman', 'https://static01.nyt.com/images/2023/05/25/multimedia/25pol-desantis-takeaways-01-htmw/25pol-desantis-takeaways-01-htmw-superJumbo.jpg', '2023-05-25T00:05:54-04:00', 'NYTimes', 'politics', 'https://www.nytimes.com/2023/05/25/us/politics/takeaways-desantis-2024-twitter.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(34, 'Tina Turner, Magnetic Singer of Explosive Power, Is Dead at 83', 'Hailed in the 1960s for her dynamic performances with her first husband, Ike, she became a sensation as a recording artist, often echoing her personal struggles in her songs.', 'By William Grimes', 'https://static01.nyt.com/images/2023/05/24/multimedia/24turner6-pckg/24turner6-pckg-superJumbo-v6.jpg', '2023-05-24T14:48:36-04:00', 'NYTimes', 'music', 'https://www.nytimes.com/2023/05/24/arts/music/tina-turner-dead.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(35, 'Fresh From Attack on Russian Soil, Raiders Taunt the Kremlin', 'The cross-border raid by Russian fighters based in Ukraine appeared intended in part to force Moscow to divert its soldiers from the battlefield.', 'By Andrew E. Kramer and Valerie Hopkins', 'https://static01.nyt.com/images/2023/05/24/multimedia/24ukraine-ledeall-1-pzlq/24ukraine-ledeall-1-pzlq-superJumbo.jpg', '2023-05-24T20:54:57-04:00', 'NYTimes', 'europe', 'https://www.nytimes.com/2023/05/24/world/europe/russia-border-attack-ukraine.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(36, 'Ukrainians Were Likely Behind Kremlin Drone Attack, U.S. Officials Say', 'American spy agencies do not know exactly who carried out the attack this month, but suggest it was part of a series of covert operations orchestrated by Ukraine’s security services.', 'By Julian E. Barnes, Adam Entous, Eric Schmitt and Anton Troianovski', 'https://static01.nyt.com/images/2023/05/24/multimedia/24dc-kremlin-drone-02-lvgq/24dc-kremlin-drone-02-lvgq-superJumbo.jpg', '2023-05-24T15:32:12-04:00', 'NYTimes', 'politics', 'https://www.nytimes.com/2023/05/24/us/politics/ukraine-kremlin-drone-attack.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(37, 'In Capitols and Courthouses, No End to National Divide Over Gun Policy', 'After the Supreme Court ruled last year that people could carry guns outside their homes, legal challenges and legislative debates have been playing out across the country.', 'By Shaila Dewan', 'https://static01.nyt.com/images/2023/05/24/multimedia/24nat-guncontrol-presser-qpjl/24nat-guncontrol-presser-qpjl-superJumbo.jpg', '2023-05-24T18:19:47-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/us/gun-control-laws-uvalde.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(38, 'After Uvalde, a Cemetery Anchors Families of Victims', 'A year after 19 children and two teachers were killed at a Texas elementary school, families of the victims have bonded through memories, grief and action.', 'Photographs and Text by Tamir Kalifa', 'https://static01.nyt.com/images/2023/05/22/us/00uvalde-photo-part5-09/00uvalde-photo-part5-09-superJumbo.jpg', '2023-05-23T23:37:29-04:00', 'NYTimes', '', 'https://www.nytimes.com/interactive/2023/05/23/us/uvalde-families-cemetery.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(39, 'Chinese Malware Hits Systems on Guam. Is Taiwan the Real Target?', 'The code, which Microsoft said was installed by a Chinese government hacking group, set off alarms because Guam would be a centerpiece of any U.S. military response to a move against Taiwan.', 'By David E. Sanger', 'https://static01.nyt.com/images/2023/05/24/multimedia/24dc-cyber-lkbt/24dc-cyber-lkbt-superJumbo.jpg', '2023-05-24T15:00:08-04:00', 'NYTimes', 'politics', 'https://www.nytimes.com/2023/05/24/us/politics/china-guam-malware-cyber-microsoft.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(40, 'Potential Debt Ceiling Deal Would Barely Change Federal Spending Path', 'Negotiators have focused on a relatively small corner of the budget, shunning new revenues or cuts to the fastest-growing programs', 'By Jim Tankersley', 'https://static01.nyt.com/images/2023/05/24/multimedia/24dc-spending-plvz/24dc-spending-plvz-superJumbo.jpg', '2023-05-24T13:00:22-04:00', 'NYTimes', 'politics', 'https://www.nytimes.com/2023/05/24/us/politics/debt-ceiling-deal-federal-spending.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(41, 'A Paralyzed Man Can Walk Naturally Again With Brain and Spine Implants', 'In a new study, researchers describe a device that connects the intentions of a paralyzed patient to his physical movements.', 'By Oliver Whang', 'https://static01.nyt.com/images/2023/06/23/multimedia/23paralysis-1-cmvj/23paralysis-1-cmvj-superJumbo.jpg', '2023-05-24T11:17:49-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/science/paralysis-brain-implants-ai.html', 3, '2023-05-25 00:54:11', '2023-05-25 00:54:11'),
(42, '‘Never a Reason to Take Off Your Socks’: A Flight Attendant’s 12 Etiquette Rules', 'Air travel is going to be busy this summer. With some common sense and courtesy, could flying be … pleasant?', 'By Kristie Koerbel', 'https://static01.nyt.com/images/2023/05/24/travel/24flight-attendant-etiquette/24flight-attendant-etiquette-superJumbo.jpg', '2023-05-24T05:00:15-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/travel/summer-travel-etiquette.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(43, '‘Ron DeSantis Has a Jekyll and Hyde Persona’: Our Columnists and Writers Weigh In on His Candidacy', 'Times Opinion looks at the strengths and weaknesses of the Florida governor.', 'By New York Times Opinion', 'https://static01.nyt.com/images/2023/05/30/opinion/30scorecard-desantis/30scorecard-desantis-superJumbo.png', '2023-05-25T01:00:06-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/25/opinion/ron-desantis-scorecard.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(44, 'He’s Not Dead Yet', 'The pre-mortems on Ron DeSantis are premature. He seems to have the correct theory of the case on how to try to topple Donald Trump.', 'By Rich Lowry', 'https://static01.nyt.com/images/2023/05/24/multimedia/24lowry1-zgkh/24lowry1-zgkh-superJumbo.jpg', '2023-05-24T05:00:23-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/opinion/ron-desantis-trump.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(45, 'No Time Like the Present, Senator Feinstein', 'The country shouldn’t discriminate against older workers, and older workers shouldn’t insist on staying in jobs they can no longer really carry out.', 'By Gail Collins', 'https://static01.nyt.com/images/2023/05/26/opinion/24collins-lead/24collins-lead-superJumbo.jpg', '2023-05-24T18:36:07-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/opinion/feinstein-senate-judiciary-resignation-age.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(46, 'Unprepared Republicans Are Flooding Into the Presidential Race', 'If they can’t outpace Trump, they’ll lie in wait to catch him limping.', 'By Charles M. Blow', 'https://static01.nyt.com/images/2023/05/25/multimedia/24blow1-cmvq/24blow1-cmvq-superJumbo.jpg', '2023-05-24T19:30:29-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/opinion/desantis-republicans.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(47, 'Nashville Parents Can Have Say in Case Over Shooter’s Writings, Judge Rules', 'A group of about 100 families will now have the chance to argue in court against releasing the writings of the assailant who killed six people at a Christian school.', 'By Emily Cochrane', 'https://static01.nyt.com/images/2023/05/24/multimedia/24nat-covenant-1-fqlm/24nat-covenant-1-fqlm-superJumbo.jpg', '2023-05-24T22:34:12-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/us/nashville-covenant-school-shooter-writings.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(48, 'Mawar Gains Strength After Thrashing Guam, Becoming a Super Typhoon', 'Island residents experienced howling winds and periods of intense rainfall, which left most of Guam without power. Officials had yet to assess the damage, but typhoon warnings remained in effect.', 'By Josie Moyer, Mar-Vic Cagurangan, Mike Ives and Derrick Bryson Taylor', 'https://static01.nyt.com/images/2023/05/24/video/24vid-xp-mawar2-still/24vid-xp-mawar2-still-superJumbo.jpg', '2023-05-24T04:12:11-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/us/typhoon-mawar-guam.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(49, 'Biden to Nominate Air Force Chief to Succeed Milley on Thursday', 'If confirmed by the Senate, the Air Force chief of staff would become the senior military adviser to the president.', 'By Helene Cooper', 'https://static01.nyt.com/images/2023/05/23/multimedia/00dc-cqbrown-hfo-bfzp/00dc-cqbrown-hfo-bfzp-superJumbo.jpg', '2023-05-24T18:23:31-04:00', 'NYTimes', 'politics', 'https://www.nytimes.com/2023/05/24/us/politics/charles-q-brown-nominated-joint-chiefs.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(50, 'Orcas Sank 3 Boats in Southern Europe in the Last Year, Scientists Say', 'A small group of orcas is ramming into sailboats in waters off the Iberian Peninsula. Researchers say they do not know what is driving the unusual behavior toward boats.', 'By Isabella Kwai', 'https://static01.nyt.com/images/2023/05/23/video/23vid-orcas-COVER/23vid-orcas-COVER-superJumbo-v2.png', '2023-05-24T08:57:08-04:00', 'NYTimes', 'europe', 'https://www.nytimes.com/2023/05/24/world/europe/orcas-sink-boats-spain.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12'),
(51, '3 Smart Techniques for Better (and Beautiful) Strawberry Desserts', 'Those luscious berries have a downside: All that liquid can weigh down baked goods, but Melissa Clark has solutions.', 'By Melissa Clark', 'https://static01.nyt.com/images/2023/05/31/multimedia/24appetite-strawberries-promo-wjqc/24appetite-strawberries-promo-wjqc-superJumbo.jpg', '2023-05-24T13:33:59-04:00', 'NYTimes', '', 'https://www.nytimes.com/2023/05/24/dining/strawberry-dessert-recipes.html', 3, '2023-05-25 00:54:12', '2023-05-25 00:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interested_author`
--

CREATE TABLE `interested_author` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interested_category`
--

CREATE TABLE `interested_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interested_source`
--

CREATE TABLE `interested_source` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_05_24_191856_create_articles_table', 2),
(11, '2023_05_24_214341_create_interested_source_table', 3),
(12, '2023_05_24_214359_create_interested_category_table', 3),
(13, '2023_05_24_214413_create_interested_author_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('036792002e89f7a301e45b500704c5d1556e4c0b0647608d5b9f20e2325815cd981ffb82d302742d', 11, 1, 'MyApp', '[]', 0, '2023-05-24 14:46:58', '2023-05-24 14:46:58', '2024-05-24 20:46:58'),
('0eebd187664a9e0a18f4bbaeeeb30079ec5b5e572719f4e0bfcc6f0ae3811ff64fc18fc143296b2d', 16, 1, 'MyApp', '[]', 0, '2023-05-25 00:54:54', '2023-05-25 00:54:54', '2024-05-25 06:54:54'),
('3da895d9286e8141cef4f62b75169b45a988fef9cd1c6830a44e2b8ba8b86a3b1edd909e444dc44c', 12, 1, 'MyApp', '[]', 0, '2023-05-24 15:01:18', '2023-05-24 15:01:18', '2024-05-24 21:01:18'),
('6188113643c05e96692b75fb43359a5bdd2e1b34f71310e94206772a00322ee26019c0db2a592424', 13, 1, 'MyApp', '[]', 0, '2023-05-24 15:06:07', '2023-05-24 15:06:07', '2024-05-24 21:06:07'),
('61c97f0c3fa252307524735216b77ec561c152837e1d9144cb7ae5b97d5fb5fc427749aeddf1bad5', 10, 1, 'MyApp', '[]', 0, '2023-05-24 14:46:28', '2023-05-24 14:46:29', '2024-05-24 20:46:28'),
('6367660d44ac71464fcd43d8e36196db9591725e181f2b0eb830e6df8e3a0dbfa58755b10505688d', 8, 1, 'MyApp', '[]', 0, '2023-05-24 14:34:40', '2023-05-24 14:34:40', '2024-05-24 20:34:40'),
('77e23cc35bfcca093528b4dc86af6efe210d28c0cda3a577c6783716993f052eb118344b231b79ab', 13, 1, 'MyApp', '[]', 0, '2023-05-24 15:05:33', '2023-05-24 15:05:33', '2024-05-24 21:05:33'),
('82d4aeb4db0f1f7e7aa134607c95f29bfc7a9daa0ac793c79d0323ca03f01a5beaf7bcd079874b52', 1, 1, 'MyApp', '[]', 0, '2023-05-24 12:59:20', '2023-05-24 12:59:20', '2024-05-24 18:59:20'),
('945d92fb7709431a39b10152107e8e58f49b180058de762db7ff11e534b927c3a065c29f377451da', 1, 1, 'MyApp', '[]', 0, '2023-05-24 12:59:33', '2023-05-24 12:59:33', '2024-05-24 18:59:33'),
('9998c02b246482f81a07720c8617ea4657129a876c234afb743642de8a2c10c47f8bf2f3855a2bfd', 13, 1, 'MyApp', '[]', 0, '2023-05-24 15:05:48', '2023-05-24 15:05:48', '2024-05-24 21:05:48'),
('9c50dc0e52e49902df42155141ea02127abe1bf4294fe7c63819d87a73968c77ba7f99a36553f15e', 7, 1, 'MyApp', '[]', 0, '2023-05-24 14:29:21', '2023-05-24 14:29:21', '2024-05-24 20:29:21'),
('a548339a394914009ac83f9900373f7f7aedb63a55f3e8025b383c1410c331e767b61db4129fd747', 17, 1, 'MyApp', '[]', 0, '2023-05-25 02:07:05', '2023-05-25 02:07:05', '2024-05-25 08:07:05'),
('aa5c1e42f68a19302d071fb74d00442f2a1a316559632569562abef9347f1b01924228d79d58a6b1', 6, 1, 'MyApp', '[]', 0, '2023-05-24 12:57:43', '2023-05-24 12:57:43', '2024-05-24 18:57:43'),
('b19510d1dc2f15bbacca67a87bf30b471929f03d32a63d49ae8b349a1a2d45a52d539d6656385aa2', 14, 1, 'MyApp', '[]', 0, '2023-05-24 15:07:03', '2023-05-24 15:07:03', '2024-05-24 21:07:03'),
('c968970276e9d537ca1ba71c89acc7bf6a53b08aede2449d59c990ea51044d46ea4e0db63fdebac1', 16, 1, 'MyApp', '[]', 0, '2023-05-25 00:21:45', '2023-05-25 00:21:45', '2024-05-25 06:21:45'),
('d47e82d95b4aa3765e4cb4e88275bfc60bd9f5fa0c3b41d83706733d9b24de436de275aea85d6542', 9, 1, 'MyApp', '[]', 0, '2023-05-24 14:45:54', '2023-05-24 14:45:54', '2024-05-24 20:45:54'),
('df74b6dfafa3a1a46c7af70a2f4fa3788a47d4ecd62f44fe87601e85edbad678852bd131866c0e74', 16, 1, 'MyApp', '[]', 0, '2023-05-25 00:34:08', '2023-05-25 00:34:08', '2024-05-25 06:34:08'),
('e7d09bc9c6d6eaef882c56db430abd97eedb392d35be59b33b85f2aa51336bf4eb28776e0c14c7f5', 15, 1, 'MyApp', '[]', 0, '2023-05-24 15:08:27', '2023-05-24 15:08:27', '2024-05-24 21:08:27'),
('ec6abec8ddbfb1751b89e184aa6100c26f8aae2b720e96da56f65a1e704a93ce6d7760921c5380ac', 16, 1, 'MyApp', '[]', 0, '2023-05-25 01:12:57', '2023-05-25 01:12:57', '2024-05-25 07:12:57'),
('ff099994cd3fb390a91641aa06cbee6980fa81750d848cc3967e5f25966626a92f7cb324e2ae9393', 15, 1, 'MyApp', '[]', 0, '2023-05-24 15:08:10', '2023-05-24 15:08:10', '2024-05-24 21:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'H8kYr14O3gA0QUpFrzHCygk0UFC3XwpCF3sqJbxr', NULL, 'http://localhost', 1, 0, 0, '2023-05-24 12:26:20', '2023-05-24 12:26:20'),
(2, NULL, 'Laravel Password Grant Client', '6XtJBuiQ71HA9uUz8aMTFbWuOVfRRJL6N3TIpU28', 'users', 'http://localhost', 0, 1, 0, '2023-05-24 12:26:20', '2023-05-24 12:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-24 12:26:20', '2023-05-24 12:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `interested`, `created_at`, `updated_at`) VALUES
(1, 'MD ABU ZAHID', 'aiubzahid@gmail.com', NULL, '$2y$10$dGUC8nX2DuC5Hps/nuAbdeXtfgVO/91qs6U2I1TXppbVWFI4NIjgm', NULL, NULL, '2023-05-24 12:49:52', '2023-05-24 12:49:52'),
(3, 'MD Abu Zahid', 'newuser@gmail.com', NULL, '$2y$10$lPdJLdKZER0m.WNZWkvzaO8zv0Bgcx4MPy4fqSpIccAMh2t1zO3g.', NULL, NULL, '2023-05-24 12:53:20', '2023-05-24 12:53:20'),
(4, 'MD Abu Zahid', 'asd@gmail.com', NULL, '$2y$10$73PWhlSqYYdYK6Sexy4MH.aSqEV6CkJ1V8gw70zWtATGBQknGWc/a', NULL, NULL, '2023-05-24 12:54:54', '2023-05-24 12:54:54'),
(5, 'MD Abu Zahid', 'ssdf@gmail.com', NULL, '$2y$10$ZkTAVTbZRM2tWCJmiInyO.I85.nxFIVFH7R9KaonP7poQ/zHhxipe', NULL, NULL, '2023-05-24 12:57:06', '2023-05-24 12:57:06'),
(6, 'MD Abu Zahid', 'asdsad@gmail.com', NULL, '$2y$10$QLj/KA2Q/AHwfdDUhwHUTOS5gPTYLemFKE3QknYkzeV8BaoTF0Gdy', NULL, NULL, '2023-05-24 12:57:43', '2023-05-24 12:57:43'),
(7, 'Zahid Hasan', 'xxxsss@gmail.com', NULL, '$2y$10$jKAz2Wm/n8rkRQ0RxcD3hOOfZ9hfvfbgp164sT/RVLa6mkuCukmca', NULL, NULL, '2023-05-24 14:29:20', '2023-05-24 14:29:20'),
(8, 'MD KABIR sdgsdgs', 'xxasdsadx@gmail.com', NULL, '$2y$10$X/tMFEZEz1QxeNna1Hbc6uje89s/w72gsYDfu1BzKSDydstj2.xAu', NULL, NULL, '2023-05-24 14:34:40', '2023-05-24 14:34:40'),
(9, 'MD Abu Zahid', 'asdsaddddd@gmail.com', NULL, '$2y$10$dDLdmmoz4D7HEDgwv2xwcesYFKtsbUIwdaeoiy6Ek1TFpn4YXCd3S', NULL, NULL, '2023-05-24 14:45:53', '2023-05-24 14:45:53'),
(10, 'MD Abu Zahid', 'tttt@gmail.com', NULL, '$2y$10$gqrRHJRSxvsFlnLMvg73leljRRsJteEZKmFLanQJ5XSCgyYfJ7uBy', NULL, NULL, '2023-05-24 14:46:28', '2023-05-24 14:46:28'),
(11, 'MD KABIR sdgsdgs', 'asd35666@gmail.com', NULL, '$2y$10$RSBiHAlMJUHBwADUJlvv8OPtvtI694F/KCbEGS5w7PqvwU9fLjLVq', NULL, NULL, '2023-05-24 14:46:58', '2023-05-24 14:46:58'),
(12, 'MD KABIR sdgsdgs', 'supporssst@shiningstarmarkets.com', NULL, '$2y$10$nuWBu73wVtj8cOs4VvOJZ.Y0EfDGoJ1JHIReSyQ/vDbLb5x9HaSme', NULL, NULL, '2023-05-24 15:01:17', '2023-05-24 15:03:39'),
(13, 'asdasdasd', 'admi333n@test.com', NULL, '$2y$10$20hRkxdvpuFXR35cCwwzu.jc32wOLrvbrO52T9lywlxKlNWgByvp.', NULL, NULL, '2023-05-24 15:05:32', '2023-05-24 15:05:48'),
(14, 'New', 'newemail@gmail.com', NULL, '$2y$10$yN4D5Cjew.Ob70usH1cEP.qVpnHSfJptUQgcea3FlUHpQD9nrcDfC', NULL, NULL, '2023-05-24 15:07:03', '2023-05-24 15:07:03'),
(15, 'Zahid Hasan', 'aiubzahid0258@gmail.com', NULL, '$2y$10$yePi137PKWhexWY1PDUxCOguuesipFHnvjSXVH6sKsT3unbiFbNtm', NULL, NULL, '2023-05-24 15:08:10', '2023-05-24 15:08:10'),
(16, 'New Registrations', 'zahihasanraj@gmail.com', NULL, '$2y$10$5cCdYchavDKVSw0fxMm18ek2YIWD5SmnspiztuCdatrCSplahKchG', NULL, '[\"NYTimes\",\"Vivien Lou Chen\",\"Ariane de Vogue,Tierney Sneed\",\"Fox News\",\"9to5google.com\",\"ESPN\",\"Entertainment Tonight\",\"Reuters\"]', '2023-05-25 00:21:45', '2023-05-25 01:12:56'),
(17, 'propsoft-requested-demo', 'asdasdasd333@gmail.com', NULL, '$2y$10$cfLhS5RJB6a2cZOWCWDBceUC.A9xfggXPAmnb7SVEMlsCPUopQv8q', NULL, NULL, '2023-05-25 02:07:05', '2023-05-25 02:07:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `interested_author`
--
ALTER TABLE `interested_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_category`
--
ALTER TABLE `interested_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_source`
--
ALTER TABLE `interested_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interested_author`
--
ALTER TABLE `interested_author`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interested_category`
--
ALTER TABLE `interested_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interested_source`
--
ALTER TABLE `interested_source`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
