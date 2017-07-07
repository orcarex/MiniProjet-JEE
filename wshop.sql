-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2017 年 07 月 07 日 21:21
-- 伺服器版本: 5.5.53
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `wshop`
--

-- --------------------------------------------------------

--
-- 表的結構 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `idarticle` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `prix` double DEFAULT '0',
  `img` varchar(200) DEFAULT 'images/OXO---Homepage_39.jpg',
  `qte` int(11) DEFAULT '0',
  `dateajout` datetime DEFAULT NULL,
  PRIMARY KEY (`idarticle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 轉存資料表中的資料 `article`
--

INSERT INTO `article` (`idarticle`, `libelle`, `desc`, `prix`, `img`, `qte`, `dateajout`) VALUES
(1, 'HTC One X10', '                                     HTC One X10 是一款具多工效能、長電池續航力的手機。手機內建 4000mAh 超大容量電池，續航力可長達兩天。\nHTC One X10 配備1600 萬高畫素主相機，隨時捕捉精彩回憶，800萬畫素超廣角自拍前相機，讓您成為自拍達人。', 33.2, 'produitImages/phone01.jpg', 4, '2014-12-27 11:31:29'),
(2, 'HTC U11', '隆重推出 Edge Sense 側框感應，開啟手機互動操作的新紀元。 \n\nHTC 以創新為本，就跟所有使用者一樣，我們總是不斷嘗試、不停追尋、持續精進。為了超越觸控式螢幕，我們開發出一種全新直覺化的手機互動操作 – Edge Sense側框感應。透過輕鬆的握壓方式，為使用者帶來全新體驗。 \n\n但我們並不以此為傲，HTC U11採用令人驚嘆的3D水漾玻璃表面，不僅有型好握好看並加入防塵防水，全新 HTC UltraPixel 3 (1200萬)主相機，獲得DxOMarki史上智慧型手機相機最高的評分，Usonic個人化音效加入主動降噪功能讓音質更純淨，並且搭載旗艦級最快速CPU，最大容量與雙卡雙待，使用者從此將對智慧型手機有更高的預期標準。', 5.32, 'produitImages/phone02.jpg', 12, '2014-12-27 12:06:58'),
(3, 'HTC U Ultra', '為你介紹 HTC U Ultra，這是一部有著 5.7 吋+2.05吋雙螢幕手機，專為精彩的你而設計。反映你對美的要求，全新設計3D水漾曲面玻璃設計。關注你的焦點，大/小雙螢幕方便好用。傾聽你的聲音，打造專屬的個人化聽覺享受。掌握你的習慣，讓手機成為你的貼身幫手，經過長時間使用後會更加瞭解你。\n', 7, 'produitImages/phone03.jpg', 5, '2013-12-27 18:27:23'),
(4, 'HTC U Play', '這是 HTC U Play，一部充滿樂趣的 5.2 吋手機，拿在手上大小剛好。反映你的需求，精心全新設計液態表面。傾聽你的需求，打造專屬的聽覺享受。搭載1600萬畫素Ultra自拍相機，捕捉你的美好。還能掌握你的習慣，成為你的生活夥伴，經過長時間使用後而跟著演進成長。', 8, 'produitImages/phone04.jpg', 87, '2014-12-27 18:41:47'),
(5, 'HTC 10 evo', 'HTC 10 evo金屬一體成形的機身，結合細膩時尚外型與個人專屬音效設定。革命性採用雷射光雕進化設計，同時還具備防水、防潑水和防塵功能*。HTC 10 evo 發表全世界第一款 USB Type-C 智慧個人化音效耳機，能針對使用者耳內的特殊結構調整音效，帶來耳目一新的音效體驗。\n*HTC 10 evo 符合 IP57 等級的防水、防潑水和防塵功能。正常磨損在長時間來說可能使防潑水和防水效能下降。請勿刻意將 HTC 10 evo 浸入水中。請勿嘗試用機身淋濕的 HTC 10 evo 上的 USB Type-C 連接埠充電或作其他用途。如需使手機乾燥的指示及維護防水功能的提示，請參閱使用指南、支援網站，或裝置上的小幫手應用程式。因液體造成的損壞不在保固範圍內。', 30, 'produitImages/phone05.jpg', 4, '2012-12-27 18:41:47'),
(6, 'HTC Desire 828 ', '為您介紹HTC Desire 828，這是一款擁有5.5吋FHD大螢幕頂尖拍照功能、價格實惠、性價比超高的智慧型手機。主相機搭載光學防手震(OIS)，相片從此清晰又銳利。前相機支援UltraPixel™高感光技術，即使在低光源下也能拍出漂亮的自拍照。並且搭載中階手機中最佳BoomSound™杜比環繞音效，讓你也能充分享受更多層次的聽覺饗宴。', 21, 'produitImages/phone06.jpg', 2, '2014-12-27 18:41:47'),
(7, 'HTC Desire 650 ', 'HTC Desire 650有著獨一無二的外型。50% 平滑圓弧，50%流線刻紋，融合兩者的優點，前衛時尚的外型，又可以增加穩定握感。讓你真正100%有型、100%樂趣。', 18, 'produitImages/phone07.jpg', 5, '2014-12-27 18:41:47'),
(8, 'HTC Desire 10 lifestyle', '經典造型中 注入嶄新創新元素， 經過細膩的處理， 將典雅炫麗的金屬流線 刻畫在機身邊框上， 完美連結科技與時尚美學； 擁有同級產品中 最佳的5.5吋大螢幕 以及搭載3G RAM/32G ROM 大容量，讓你聰明使用手機， 且能完整保留生活中 的美好時刻。\n', 40, 'produitImages/phone08.jpg', 77, '2014-12-27 18:41:47'),
(9, 'Galaxy Note\n\nNEXT IS NOW', 'S Pen 輕鬆點 程式自在切換\n一邊瀏餐廳介紹，也能同時查詢地圖位置，輕鬆放大或縮小程式畫面，快速切換兩個應用程式。\n\n隨手 memo\n在螢幕關閉下，抽出 S Pen 即可在螢幕上隨時記錄與好朋友共度的美好時光，並能以快捷 memo 形式儲存。', 19, 'produitImages/phone09.jpg', 3, '2014-12-27 18:41:47'),
(10, 'Galaxy J', 'J 飛遜超吸睛\n路人回頭，必有緣由，不是為J，就是為我！\n全金屬機身 + 正面 2.5D 大猩猩玻璃，飛遜得沒話說，相機鏡頭平整，背蓋零外凸，一手在握，走路超有風', 10, 'produitImages/phone10.jpg', 7, '2014-12-27 18:41:47'),
(11, 'Galaxy A', '旗艦級 IP68 防水防塵* 與無蓋防水設計**\n即使下雨天、游泳池、浴室內，都能盡情使用 Galaxy A，盡興玩水、風雨無阻，享樂生活無極限。', 22, 'produitImages/phone11.jpg', 3, '2014-12-27 18:41:47'),
(12, '\niPhone 7 ', 'iPhone 7 將 iPhone 體驗中最重要的環節，大幅提升。它全新推出先進的攝錄鏡頭系統，與 iPhone 歷來最出色的效能表現、最持久的電池續航力，讓人身歷其境的立體聲揚聲器，最亮麗、色彩最豐富的 iPhone 顯示器，而且還能防潑抗水1，更有足以媲美強大效能的耀眼外觀。這，就是 iPhone 7。', 30, 'produitImages/phone12.jpg', 8, '2014-12-27 19:04:21'),
(13, 'iPhone 6s', '1200 萬像素攝錄鏡頭\n具備影像穩定功能的 Live Photos\n自動對焦，採用 Focus Pixels\n光學影像穩定功能 (僅限 iPhone 6s Plus)\nTrue Tone 閃光燈\n全景模式 (高達 6300 萬像素)\n照片自動 HDR\n曝光控制\n連拍模式\n計時模式\nƒ/2.2 光圈\n五枚鏡片組\n5 倍數位變焦\n混合式 IR 濾鏡\n背照式感光元件\n藍寶石水晶玻璃保護鏡\n自動影像穩定功能\n局部色調對映功能\n雜點消除功能\n面孔偵測功能\n照片地理位置標記', 23, 'produitImages/phone13.jpg', 9, '2014-12-27 19:04:21');

-- --------------------------------------------------------

--
-- 表的結構 `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `login` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `dtnaissance` datetime DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `client`
--

INSERT INTO `client` (`login`, `mdp`, `nom`, `prenom`, `dtnaissance`) VALUES
('ali', '123', 'Ali', 'ila', '1988-10-12 00:00:00'),
('test', 'E', 'Z', 'sakZhana2', '1988-10-12 00:00:00');

-- --------------------------------------------------------

--
-- 表的結構 `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `idcommande` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) DEFAULT NULL,
  `datecmd` datetime DEFAULT NULL,
  `prixtotale` double DEFAULT NULL,
  `etat` int(11) DEFAULT '0',
  PRIMARY KEY (`idcommande`),
  KEY `Login_idx` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1007 ;

--
-- 轉存資料表中的資料 `commande`
--

INSERT INTO `commande` (`idcommande`, `login`, `datecmd`, `prixtotale`, `etat`) VALUES
(1002, 'ali', '2015-01-01 20:21:47', 93, 1),
(1003, 'ali', '2015-01-01 20:24:40', 7, 2),
(1004, 'ali', '2015-01-01 20:35:44', 93, 1),
(1005, 'ali', '2015-01-01 22:15:26', 77, 1);

-- --------------------------------------------------------

--
-- 表的結構 `ligne_commande`
--

CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `idcmd` int(11) NOT NULL,
  `idart` int(11) NOT NULL,
  `nbr` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcmd`,`idart`),
  KEY `idArt_idx` (`idart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `ligne_commande`
--

INSERT INTO `ligne_commande` (`idcmd`, `idart`, `nbr`) VALUES
(1002, 1, 1),
(1002, 5, 2),
(1003, 3, 1),
(1004, 1, 1),
(1004, 5, 2),
(1005, 3, 2),
(1005, 6, 3);

-- --------------------------------------------------------

--
-- 表的結構 `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `msgGuestId` int(11) NOT NULL AUTO_INCREMENT,
  `msgGuestName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `guestGuestEmail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `guestGuestMsgContent` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`msgGuestId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- 轉存資料表中的資料 `msg`
--

INSERT INTO `msg` (`msgGuestId`, `msgGuestName`, `guestGuestEmail`, `guestGuestMsgContent`) VALUES
(4, 'mary', 'mary@gmail.com', 'aaa'),
(3, 'henry', 'henry@gmail.com', '留言測試一下'),
(18, 'Ã¥Â¹Â¹Ã¦ÂÂÃ¨ÂÂ¯', 'ehrg@grqwef.com', 'Ã¨ÂÂÃ¦ÂÂ¨Ã©Â¦Â¬');

--
-- 匯出資料表的 Constraints
--

--
-- 資料表的 Constraints `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `Login` FOREIGN KEY (`login`) REFERENCES `client` (`login`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的 Constraints `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD CONSTRAINT `idArt` FOREIGN KEY (`idart`) REFERENCES `article` (`idarticle`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `idCmd` FOREIGN KEY (`idcmd`) REFERENCES `commande` (`idcommande`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
