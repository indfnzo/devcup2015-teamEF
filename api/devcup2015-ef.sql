-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2015 at 04:21 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `devcup2015-ef`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `author_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `author_gender` varchar(255) CHARACTER SET latin1 NOT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author_name`, `author_gender`, `create_timestamp`) VALUES
(41, '#LGBT', '<i>Just a thought, if you''re hiding in a closet or you''re hiding your partner with you. :)</i>\n\n<b>I''m a lesbian.</b> A butch, to be exact. I''m pretty much comfortable with who I am. Except for those little tiny things on the side. Although before, whenever I  was asked in class (we all experienced the impromptu session of Truths with all our classmates) if what was my relationship status, I always told them I was single, even though I had a girlfriend (2 years and counting, hahaha) simply because I wanted to avoid any side comments or a follow-up question. Of course, being a butch, I dress boy-ish (proud hardcore butch right here) with really short hair, etc. It''s not that I''m not comfortable with who I am and I''m embarrassed of who I love, I just didn''t want any further discussion, period. I didn''t want to expound, elaborate, or share something very personal in a room full of people I didn''t really truly know.\n\nThen I realized, that my deepest feelings and thoughts were never shared as much at all. My girlfriend, on the other hand, is so proud to brag to her friends how she has a girlfriend when in reality she''s the one who can enter a "normal" or a more acceptable relationship for other people. She''s the girl in our relationship, she''s bisexual. It makes me so guilty yet at the same time so proud that my girlfriend was never ashamed of me and she never hid me from other people. Yet here I am, the one whose "different," the "abnormal" one in the eyes of other people, I''m  the one who hides from those topics.\n\nDo you really understand why you''re still in the closet? Why you keep someone you love in the dark? Why we need approval of other people?\n\nWhy are we withdrawn to people who are brash enough to judge us? \n\nWhy do we need to be considered "normal" in their perspectives and be accepted by them? In the first place, why do they need to accept us? What have we done to them? Well, their the ones who have problems with us anyway! =))) They''re the ones who judge and condemn us. It''s not our duty to make us accept them.\n\nJust, be proud and love the skin you are in. Love the people you want to love. We love someone by who they are, not what their gender says so. Forget the world, fck them. Just love.\n\n<b>PS:</b> To my baby, I''m sorry I''ve always told everyone I''m single even though I''m happily taken by you, the best human being in this planet for me. I love you so much. I''ll never hide you again. I love you, always.', 'MahalNaMahalKita, Promise', '', '2015-08-16 00:22:16'),
(42, 'Life''s Too Short to be Inside the Closet', '<b>I want non-LGBT people to understand what itÃ¢Â€Â™s like to be gay. </b>\n\nFirst of all, hereÃ¢Â€Â™s what sucks about being gay. Gosh, that sounds so strange. Anyways, I grew up in a place that is relatively conservative compared to, well, a lot of places I go to on the internet or the stuff I read in novels. Of course, when you go to a relatively progressive public school and college, it gets better, but the overarching culture of society is still the same.\n\nIn the media, gay people are shown in secondary roles, always as vapid caricatures that support a strong female main character or antagonist. And theyÃ¢Â€Â™re always the butt of every joke. ItÃ¢Â€Â™s not surprising that in high school - and to a lesser extent, college - being openly gay or even simply looking gay, makes you a target to a lot of very crude jokes even if many of them arenÃ¢Â€Â™t deliberately meant to hurt you. When in school plays, you get to play the punchline every cliche gay joke, or worse, be the drag queen who pursues a male character for comic relief. What really gets to me is when they try to tease you with another classmate in order to poke fun at the other person.  If you''re gay in this kind of environment, I suppose you have to find a way to deal with this emotional crap. Some people laugh it off, some people don''t. For the most part, I dealt with it by being very scary to people. I can be quite mean myself, and though I''d let the odd joke pass by, I can come up with a wicked comeback if they''re getting on my nerves.\n\nGrowing up in this environment also has another issue. Now, what if you''re gay? The other openly gay people in school would realistically be less than 5% of all the guys. So unless you''re really lucky, you''re gonna have crushes on guys who are straight, and you can do absolutely nothing about this. Imagine if you''re a duck who only liked swans, when all the swans only liked other swans. Not your idea of an ideal high school or college experience, right? You have all these feelings that bother you on a daily basis which you know you can never be returned. You have these fantasies in your head that you know can never be fulfilled.\n\nAnd the worst part about it is, I could never tell anybody most of them. If it was somebody within our class or within our extended circle of friends, I simply couldn''t. If word of it got out, and my crush found out, what would he think. He''d feel weird, and probably creeped out. Let''s face it, you can hardly expect the reaction of a halfway-educated straight teenager to having a gay admirer to be... forgiving. And if his friends find out, they''ll tease him about it. To admit a crush to somebody means that if they find out, they''d be disgusted by you. Sure, times are changing, and I know that a lot of people are progressive, but hey, straight boys will be straight boys, and you couldn''t be really sure what they felt deep down, beneath what they think in the head to the underlying inherited homophobia that seems to go hand in hand with what it takes in our culture to Ã¢Â€Âœbe a manÃ¢Â€Â. At least, I wasn''t sure they wouldn''t feel that way. I was paranoid. Even celebrity crushes were dangerous, because if I said too many, I was afraid of being called a slut. That''s what happens if you ever tell a friend about your crushes, and my pride couldn''t take that.\nTheir disgust. That was what I was so afraid of. That is why I never expected my crushes to be any more than petty feelings, I kept them to myself, and if that person happened to talk to me at school, I would be slightly more aloof, condescending, or mean to that person, just so he wouldn''t suspect. I wouldn''t talk about them to anybody. I''d rather they think I''m a jerk rather than somebody who wants to grope them. I know I should feel sorry for being so mean to them, it wasn''t their fault. By the end, I got so good at it that when I develop a crush, I could simply laugh derisively at my own feelings. It''s scary to think if I could take my feelings seriously again if I ever meet somebody who likes me back.\n\nBut now times have changed, and itÃ¢Â€Â™s time we do to. IÃ¢Â€Â™ve been hiding in the closet for so long, and itÃ¢Â€Â™s taken most of my life away from me. All the love and affection every one of us has inside deserves to be felt by everyone, and we could even love more than just simply standing in the dark. We can all relate to the struggles and hardships the LGBT community has just for us to be remotely accepted in society. In the end, it all boils down to a choice. At some point, you recognize that your fears of someone feeling disgust towards you and the awkwardness you feel is just society''s view which you''ve somehow internalized. I don''t think anyone is born with shame. People are taught to be ashamed of who they are - whether it''s because they''re a particular orientation, race, economic class, etc.\n\nJust remember, when you choose to remain aloof and distant due to your fears (which you have all the right to do), you are also the only one losing out. These heterosexuals whose opinions you''re so afraid of will have their own love stories. Are you gonna miss out on that? Sometimes all it takes is being loved exactly for who we are in order for us to realize that who and what we are isn''t in any way wrong. :)', 'Pugna', '', '2015-08-16 02:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE IF NOT EXISTS `shouts` (
`id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
