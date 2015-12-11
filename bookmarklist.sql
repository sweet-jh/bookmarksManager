-- phpMyAdmin SQL Dump
-- version 4.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-12-11 12:24:25
-- 服务器版本： 5.5.37-log
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookmarks`
--

-- --------------------------------------------------------

--
-- 表的结构 `bookmarklist`
--

CREATE TABLE IF NOT EXISTS `bookmarklist` (
`id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `bookmarklist`
--

INSERT INTO `bookmarklist` (`id`, `name`, `address`) VALUES
(14, '姜源的WebLog: Textmate alike editors for windows', 'http://www.baidu.com'),
(17, 'Micro Persuasion: How to Use Gmail as a Busines...', 'http://www.baidu.com'),
(18, 'Micro Persuasion: Turn Gmail Into Your Personal...', 'http://www.baidu.com'),
(19, '理财宝典：改善您经济状况的20条妙计 - 译言翻译', 'http://www.baidu.com'),
(20, 'MINIX 3 系统调用, 信号机制 — Windows Live', 'http://www.baidu.com'),
(21, '我收集的字体颜色 — Windows Live', 'http://www.baidu.com'),
(22, '重装 Windows 后应该做的一些事 - 小兵的工具箱 - CSDNBlog', 'http://www.baidu.com'),
(23, '如何配置Windows Live Writer - dudu - 博客园', 'http://www.baidu.com'),
(24, 'yacc/lex windows 下 Parser Generator 使用指南 - woai...', 'http://www.baidu.com'),
(25, 'cscope在windows下使用mingw编译的方法 - mslk的专栏 - CSDNBlog', 'http://www.baidu.com'),
(26, 'Pcre for Windows', 'http://www.baidu.com'),
(27, '连线杂志：Windows操作系统发展简史(组图) - Linux宝库 - 全球最火中文开源门户', 'http://www.baidu.com'),
(28, 'The Jython Project', 'http://www.baidu.com'),
(29, '叹为观止的外国人铅笔画（组图）_韩梅_新浪博客', 'http://www.baidu.com'),
(30, 'IDM extra downloads - wordfiles, macros, scripts, and more', 'http://www.baidu.com'),
(31, 'http://www.teamcti.com/trayit/trayit.htm', 'http://www.baidu.com'),
(32, 'UltraEdit支持Python语法高亮 - jackyYEN的笔记 - CSDN博客', 'http://www.baidu.com'),
(33, '一个采用JavaScript开发基于Web的代码编辑器 - ACE_IT新闻_博客园', 'http://www.baidu.com'),
(34, '为你的MFC程序添加宏脚本语言 - VC知识库文章', 'http://www.baidu.com'),
(35, '玩转Windows个性化登录界面 (更换Windows7登录界面图片/XP仿Win7登录界面) | 异次元软件世界', 'http://www.baidu.com'),
(36, 'GINA之windows登录控制替换_百度文库', 'http://www.baidu.com'),
(37, 'IDM extra downloads - wordfiles, macros, scripts, and more', 'http://www.baidu.com'),
(38, '容易几步让您轻松替换Windows 7登录界面_电脑鸭 - 电脑基础知识网站', 'http://www.baidu.com'),
(39, 'EverNote 极致的免费笔记资料管理软件 (数据网络同步、支持PC、Mac与手机多平台) | 异次元软件世界', 'http://www.baidu.com'),
(40, '配置 vim Python IDE 开发环境 | Allegro Nanu', 'http://www.baidu.com'),
(41, 'cmdln.org (a sysadmin blog) » Blog Archive » Vim customization for python', 'http://www.baidu.com'),
(42, 'Turbogears Development: Enviroment » LuckyDonkey - Never knowingly knowing narwhals', 'http://www.baidu.com'),
(43, 'Programmer''s Notepad', 'http://www.baidu.com'),
(44, 'SWIG-2.0 Documentation', 'http://www.baidu.com'),
(45, 'Geany : Home Page', 'http://www.baidu.com'),
(46, 'ANSI/VT100 Terminal Control', 'http://www.baidu.com'),
(47, 'ScintillaNET', 'http://www.baidu.com'),
(48, 'Mitchell''s Caladbolg.net', 'http://www.baidu.com'),
(49, 'DaanSystems - LispIDE - Lisp and Scheme Editor IDE', 'http://www.baidu.com'),
(51, 'jquery first step', 'http://www.baidu.com'),
(52, 'i love php', 'http://www.baidu.com'),
(53, '下载谷歌拼音输入法 - Google', 'https://www.baidu.com'),
(54, 'xdocdiff - diff for Word, Excel, pdf files with TortoiseSVN -', 'https://www.baidu.com'),
(55, 'history.dcs.ed.ac.uk/archive/apps/Whitfield-Thesis/thesis.html', 'https://www.baidu.com'),
(56, 'A list of base boxes for Vagrant - Vagrantbox.es', 'https://www.baidu.com'),
(57, 'Hacker News', 'https://www.baidu.com'),
(58, 'reddit: the front page of the internet', 'https://www.baidu.com'),
(59, 'TheServerSide.com: your Java Community discussing server side development', 'https://www.baidu.com'),
(60, 'NoSQL数据库笔谈', 'https://www.baidu.com'),
(61, '【老当】Godaddy教程：新增修改域名解析A记录/CNAME/MX等(图文)-帮助', 'https://www.baidu.com'),
(62, '【老当】Godaddy教程：修改域名的DNS服务器(图文)-帮助', 'https://www.baidu.com'),
(63, 'OpenCV iOS - Video Processing — OpenCV 2.4.3 documentation', 'https://www.baidu.com'),
(64, 'ImageMagick: Command-line Tools: Convert', 'https://www.baidu.com'),
(65, 'Mac OS X: How to use the command line to resize images. | AI NO TENSHi', 'https://www.baidu.com'),
(66, 'Software Musings: Mars Rover Problem from Thoughtworks - Design considerations', 'https://www.baidu.com'),
(67, 'datamapper/dm-core · GitHub', 'https://www.baidu.com'),
(68, 'Identifying Cross-Functional and Non-Functional requirement during agile project inception', 'https://www.baidu.com'),
(69, 'String Calculator on Vimeo', 'https://www.baidu.com'),
(70, 'Coding Horror: The Last Responsible Moment', 'https://www.baidu.com'),
(71, '把一个人粉碎成原子再组合，这个人还是原来的人吗？（多图）', 'https://www.baidu.com'),
(72, '跨越边界: 动态类型语言中的 Web 开发策略', 'https://www.baidu.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarklist`
--
ALTER TABLE `bookmarklist`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarklist`
--
ALTER TABLE `bookmarklist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
