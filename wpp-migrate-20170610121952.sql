# WordPress MySQL database migration
#
# Generated: Saturday 10. June 2017 12:19 UTC
# Hostname: localhost
# Database: `wpp`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_cjtoolbox_authors`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_authors`;


#
# Table structure of table `wp_cjtoolbox_authors`
#

CREATE TABLE `wp_cjtoolbox_authors` (
  `name` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `attributes` int(4) NOT NULL DEFAULT '0',
  `guid` varchar(16) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid` (`guid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_authors`
#
INSERT INTO `wp_cjtoolbox_authors` ( `name`, `email`, `url`, `attributes`, `guid`, `id`) VALUES
('Wordpress', NULL, NULL, 1, NULL, 1) ;

#
# End of data contents of table `wp_cjtoolbox_authors`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_backups`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_backups`;


#
# Table structure of table `wp_cjtoolbox_backups`
#

CREATE TABLE `wp_cjtoolbox_backups` (
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'blocks',
  `owner` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_backups`
#

#
# End of data contents of table `wp_cjtoolbox_backups`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_block_files`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_block_files`;


#
# Table structure of table `wp_cjtoolbox_block_files`
#

CREATE TABLE `wp_cjtoolbox_block_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blockId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('css','javascript','php','html') DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `code` text,
  `order` smallint(6) DEFAULT '0',
  `tag` text,
  PRIMARY KEY (`id`,`blockId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_block_files`
#
INSERT INTO `wp_cjtoolbox_block_files` ( `id`, `blockId`, `name`, `type`, `description`, `code`, `order`, `tag`) VALUES
(1, 1, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n		width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n    		width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 0;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 3, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.clientY-$(\'.map .tooltip\').height()-50,\n          left:e.clientX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 34, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n		width: 283px;\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png) 283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 583;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 35, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n		width: 283px;\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png) 283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 5083;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 36, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n	\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png) 283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 283;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 37, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n	\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png)  top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 283;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 38, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n    width: 2838px;\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 283;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 39, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n    width: 283px;\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 283;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 40, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n	width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n    width: 283px;\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 0;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 41, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n \n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 0;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 42, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n		width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n    		width: 283px;\n	height: 597px;\n	background: url(<?php bloginfo(stylesheet_directory); ?>tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 0;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 44, 'Master', NULL, NULL, '<style type="text/css"> \n.map{\n		width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)left top no-repeat;\n	position: relative;\n\n\n}\n.map .overlay{\n    		width: 283px;\n	height: 597px;\n	background: url(wp-content/uploads/2017/05/tn.png)  283px top no-repeat;\n	position: absolute;\n\n	top:0;\n	left: 0;\n		z-index: 1;\n}\n.map img{\n	position: absolute;\n	top:0;\n	left: 0;\n	z-index: 2;\n}\n\n.map .tooltip{\n	position: fixed;\n	border-radius: 50px;\n	color: #FFF;\n	background: #000;\n	padding: 0 10px;\n	display: inline;\n	top:0;\n	left: 0;\n	z-index: 3;\n	text-align: center;\n}\n   </style> ', 0, NULL),
(1, 48, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height()-600,\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 49, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height()-200,\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 50, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height(),\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 51, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height()-700,\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 52, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height()-500,\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 53, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height()-2000,\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 54, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.pageY-$(\'.map .tooltip\').height()-700,\n          left:e.pageX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 55, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          track: true\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 56, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.clientY-$(\'.map .tooltip\').height()-200,\n          left:e.clientX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL),
(1, 57, 'Master', NULL, NULL, '\n    <script type="text/javascript">\n    jQuery(function($){\n      $(\'.map\').append(\'<div class="overlay">\').append(\'<div class="tooltip">hello<div>\');\n      $(\'.map .tooltip\').hide();\n      var region=[\n      {name:\'North\',slug:\'north\'},\n      {name:\'Tunis\',slug:\'tunis\'},\n      {name:\'Cap-Bon\',slug:\'capbon\'},\n      {name:\'Sahel\',slug:\'sahel\'},\n      {name:\'Middle\',slug:\'middle\'},\n      {name:\'North-West\',slug:\'northwest\'},\n      {name:\'South\',slug:\'south\'},\n      {name:\'Dejrba\',slug:\'dejreba\'}\n      ];\n\n      // tooltip\n      $(document).mousemove(function(e){\n        $(\'.map .tooltip\').css({\n          top:e.clientY-$(\'.map .tooltip\').height(),\n          left:e.clientX-$(\'.map .tooltip\').width()/2-10\n        });\n      });\n      //region\n      $(\'.map area\').mouseover(function(){\n        var index=$(this).index();\n        var left=-index*283-283;\n        $(\'.map .tooltip\').html(region[index].name).stop().fadeTo(500,1);\n        $(\'.map .overlay\').css({\n          backgroundPosition : left+"px 0px"\n        });\n      });\n      //sort\n      $(\'.map\').mouseout(function(){\n        $(\'.map .overlay\').css({\n          backgroundPosition:"283px 0px"\n        });\n         $(\'.map .tooltip\').stop().fadeTo(500,0);       \n      }) ;\n    });\n  </script>', 0, NULL) ;

#
# End of data contents of table `wp_cjtoolbox_block_files`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_block_pins`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_block_pins`;


#
# Table structure of table `wp_cjtoolbox_block_pins`
#

CREATE TABLE `wp_cjtoolbox_block_pins` (
  `blockId` int(11) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `value` int(11) NOT NULL,
  `attributes` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockId`,`pin`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_block_pins`
#
INSERT INTO `wp_cjtoolbox_block_pins` ( `blockId`, `pin`, `value`, `attributes`) VALUES
(1, 'pages', 10, 0),
(1, 'pages', 113, 0),
(1, 'pages', 119, 0),
(3, 'pages', 10, 0),
(3, 'pages', 113, 0),
(3, 'pages', 119, 0),
(34, 'pages', 113, 0),
(34, 'pages', 119, 0),
(35, 'pages', 113, 0),
(35, 'pages', 119, 0),
(36, 'pages', 113, 0),
(36, 'pages', 119, 0),
(37, 'pages', 113, 0),
(37, 'pages', 119, 0),
(38, 'pages', 113, 0),
(38, 'pages', 119, 0),
(39, 'pages', 113, 0),
(39, 'pages', 119, 0),
(40, 'pages', 113, 0),
(40, 'pages', 119, 0),
(41, 'pages', 113, 0),
(41, 'pages', 119, 0),
(42, 'pages', 113, 0),
(42, 'pages', 119, 0),
(44, 'pages', 113, 0),
(44, 'pages', 119, 0),
(48, 'pages', 10, 0),
(48, 'pages', 113, 0),
(48, 'pages', 119, 0),
(49, 'pages', 10, 0),
(49, 'pages', 113, 0),
(49, 'pages', 119, 0),
(50, 'pages', 10, 0),
(50, 'pages', 113, 0),
(50, 'pages', 119, 0),
(51, 'pages', 10, 0),
(51, 'pages', 113, 0),
(51, 'pages', 119, 0),
(52, 'pages', 10, 0),
(52, 'pages', 113, 0),
(52, 'pages', 119, 0),
(53, 'pages', 10, 0),
(53, 'pages', 113, 0),
(53, 'pages', 119, 0),
(54, 'pages', 10, 0),
(54, 'pages', 113, 0),
(54, 'pages', 119, 0),
(55, 'pages', 10, 0),
(55, 'pages', 113, 0),
(55, 'pages', 119, 0),
(56, 'pages', 10, 0),
(56, 'pages', 113, 0),
(56, 'pages', 119, 0),
(57, 'pages', 10, 0),
(57, 'pages', 113, 0),
(57, 'pages', 119, 0) ;

#
# End of data contents of table `wp_cjtoolbox_block_pins`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_block_templates`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_block_templates`;


#
# Table structure of table `wp_cjtoolbox_block_templates`
#

CREATE TABLE `wp_cjtoolbox_block_templates` (
  `blockId` int(11) NOT NULL,
  `templateId` int(11) NOT NULL,
  PRIMARY KEY (`blockId`,`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_block_templates`
#

#
# End of data contents of table `wp_cjtoolbox_block_templates`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_blocks`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_blocks`;


#
# Table structure of table `wp_cjtoolbox_blocks`
#

CREATE TABLE `wp_cjtoolbox_blocks` (
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `lastModified` datetime NOT NULL,
  `pinPoint` int(4) NOT NULL DEFAULT '0',
  `state` enum('active','inactive') DEFAULT 'inactive',
  `location` enum('header','footer') DEFAULT 'header',
  `links` text,
  `expressions` text,
  `type` enum('block','revision','metabox') DEFAULT 'block',
  `backupId` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `flag` int(4) NOT NULL DEFAULT '0',
  `masterFile` int(4) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`backupId`),
  KEY `pinPoint` (`pinPoint`,`state`,`location`,`type`,`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_blocks`
#
INSERT INTO `wp_cjtoolbox_blocks` ( `name`, `description`, `owner`, `created`, `lastModified`, `pinPoint`, `state`, `location`, `links`, `expressions`, `type`, `backupId`, `parent`, `flag`, `masterFile`, `id`) VALUES
('Tunisia-CSS', NULL, 1, '2017-05-23 12:29:43', '2017-06-09 20:58:52', 32, 'active', 'header', '', '', 'block', NULL, NULL, 0, 1, 1),
('Tunisia-JS', NULL, 1, '2017-05-23 12:30:55', '2017-06-09 23:32:22', 32, 'active', 'header', '', '', 'block', NULL, NULL, 0, 1, 3),
(NULL, NULL, 1, '2017-05-25 21:11:35', '2017-05-25 21:11:04', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 34),
(NULL, NULL, 1, '2017-05-25 21:11:56', '2017-05-25 21:11:35', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 35),
(NULL, NULL, 1, '2017-05-25 21:12:53', '2017-05-25 21:11:56', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 36),
(NULL, NULL, 1, '2017-05-25 21:13:52', '2017-05-25 21:12:53', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 37),
(NULL, NULL, 1, '2017-05-25 21:14:08', '2017-05-25 21:13:52', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 38),
(NULL, NULL, 1, '2017-05-25 21:15:15', '2017-05-25 21:14:09', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 39),
(NULL, NULL, 1, '2017-05-25 21:19:57', '2017-05-25 21:15:15', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 40),
(NULL, NULL, 1, '2017-05-25 21:20:27', '2017-05-25 21:19:57', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 41),
(NULL, NULL, 1, '2017-05-25 21:24:23', '2017-05-25 21:20:27', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 42),
(NULL, NULL, 1, '2017-06-09 20:58:51', '2017-05-25 21:24:24', 32, '', '', '', '', 'revision', NULL, 1, 0, 1, 44),
(NULL, NULL, 1, '2017-06-09 23:07:45', '2017-06-09 21:04:10', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 48),
(NULL, NULL, 1, '2017-06-09 23:08:13', '2017-06-09 23:07:46', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 49),
(NULL, NULL, 1, '2017-06-09 23:08:37', '2017-06-09 23:08:13', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 50),
(NULL, NULL, 1, '2017-06-09 23:09:25', '2017-06-09 23:08:37', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 51),
(NULL, NULL, 1, '2017-06-09 23:09:43', '2017-06-09 23:09:25', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 52),
(NULL, NULL, 1, '2017-06-09 23:10:02', '2017-06-09 23:09:43', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 53),
(NULL, NULL, 1, '2017-06-09 23:24:16', '2017-06-09 23:10:02', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 54),
(NULL, NULL, 1, '2017-06-09 23:31:29', '2017-06-09 23:24:16', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 55),
(NULL, NULL, 1, '2017-06-09 23:31:51', '2017-06-09 23:31:29', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 56),
(NULL, NULL, 1, '2017-06-09 23:32:22', '2017-06-09 23:31:51', 32, '', '', '', '', 'revision', NULL, 3, 0, 1, 57) ;

#
# End of data contents of table `wp_cjtoolbox_blocks`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_form_group_parameters`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_form_group_parameters`;


#
# Table structure of table `wp_cjtoolbox_form_group_parameters`
#

CREATE TABLE `wp_cjtoolbox_form_group_parameters` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `parameterId` int(11) NOT NULL COMMENT 'block to be associated with the form',
  `renderer` varchar(30) DEFAULT NULL,
  `description` text,
  `helpText` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`parameterId`),
  KEY `Index 2` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_form_group_parameters`
#

#
# End of data contents of table `wp_cjtoolbox_form_group_parameters`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_form_group_xfields`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_form_group_xfields`;


#
# Table structure of table `wp_cjtoolbox_form_group_xfields`
#

CREATE TABLE `wp_cjtoolbox_form_group_xfields` (
  `groupId` int(11) NOT NULL,
  `text` text,
  UNIQUE KEY `groupId` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_form_group_xfields`
#

#
# End of data contents of table `wp_cjtoolbox_form_group_xfields`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_form_groups`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_form_groups`;


#
# Table structure of table `wp_cjtoolbox_form_groups`
#

CREATE TABLE `wp_cjtoolbox_form_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL COMMENT 'block to be associated with the form',
  `name` varchar(100) NOT NULL COMMENT 'group name/title',
  `description` text COMMENT 'Parameters group description',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 3` (`formId`,`name`),
  KEY `formId` (`formId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_form_groups`
#

#
# End of data contents of table `wp_cjtoolbox_form_groups`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_forms`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_forms`;


#
# Table structure of table `wp_cjtoolbox_forms`
#

CREATE TABLE `wp_cjtoolbox_forms` (
  `blockId` int(11) NOT NULL COMMENT 'block to be associated with the form',
  `name` varchar(100) NOT NULL COMMENT 'Form name/title',
  `groupType` varchar(20) NOT NULL COMMENT 'parameters gooup type (tab, accordion, etc...)',
  PRIMARY KEY (`blockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_forms`
#

#
# End of data contents of table `wp_cjtoolbox_forms`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_package_objects`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_package_objects`;


#
# Table structure of table `wp_cjtoolbox_package_objects`
#

CREATE TABLE `wp_cjtoolbox_package_objects` (
  `packageId` int(10) unsigned NOT NULL,
  `objectId` int(10) unsigned NOT NULL,
  `objectType` enum('block','template') NOT NULL,
  `relType` enum('add','link') NOT NULL DEFAULT 'add',
  PRIMARY KEY (`packageId`,`objectId`,`objectType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_package_objects`
#

#
# End of data contents of table `wp_cjtoolbox_package_objects`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_packages`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_packages`;


#
# Table structure of table `wp_cjtoolbox_packages`
#

CREATE TABLE `wp_cjtoolbox_packages` (
  `name` varchar(100) NOT NULL,
  `author` varchar(150) NOT NULL,
  `webSite` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `license` text NOT NULL,
  `readme` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_packages`
#

#
# End of data contents of table `wp_cjtoolbox_packages`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_parameter_typedef`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_parameter_typedef`;


#
# Table structure of table `wp_cjtoolbox_parameter_typedef`
#

CREATE TABLE `wp_cjtoolbox_parameter_typedef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameterId` int(11) NOT NULL,
  `text` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parameterId` (`parameterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_parameter_typedef`
#

#
# End of data contents of table `wp_cjtoolbox_parameter_typedef`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_parameter_typeparams`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_parameter_typeparams`;


#
# Table structure of table `wp_cjtoolbox_parameter_typeparams`
#

CREATE TABLE `wp_cjtoolbox_parameter_typeparams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameterId` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parameterId` (`parameterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_parameter_typeparams`
#

#
# End of data contents of table `wp_cjtoolbox_parameter_typeparams`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_parameters`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_parameters`;


#
# Table structure of table `wp_cjtoolbox_parameters`
#

CREATE TABLE `wp_cjtoolbox_parameters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'paramter unique identifier',
  `blockId` int(11) unsigned NOT NULL,
  `parent` int(11) unsigned DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `defaultValue` text,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contentParam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`parent`,`blockId`),
  KEY `parent` (`parent`),
  KEY `blockId` (`blockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_parameters`
#

#
# End of data contents of table `wp_cjtoolbox_parameters`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_template_revisions`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_template_revisions`;


#
# Table structure of table `wp_cjtoolbox_template_revisions`
#

CREATE TABLE `wp_cjtoolbox_template_revisions` (
  `templateId` int(11) NOT NULL,
  `revisionNo` int(11) NOT NULL DEFAULT '0',
  `version` varchar(15) DEFAULT NULL,
  `changeLog` varchar(600) DEFAULT NULL,
  `state` enum('release','beta','release-candidate','alpha','revision') NOT NULL,
  `attributes` int(4) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `file` varchar(400) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `templateid-revisionNo` (`revisionNo`,`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_template_revisions`
#
INSERT INTO `wp_cjtoolbox_template_revisions` ( `templateId`, `revisionNo`, `version`, `changeLog`, `state`, `attributes`, `dateCreated`, `file`, `id`) VALUES
(1, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:53', '/wp-includes/js/utils.min.js', 1),
(2, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:53', '/wp-admin/js/common.min.js', 2),
(3, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:53', '/wp-includes/js/wp-a11y.min.js', 3),
(4, 1, '1.6.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:53', '/wp-includes/js/tw-sack.min.js', 4),
(5, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:53', '/wp-includes/js/quicktags.min.js', 5),
(6, 1, '3517m', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:53', '/wp-includes/js/colorpicker.min.js', 6),
(7, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-admin/js/editor.min.js', 7),
(8, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-admin/js/wp-fullscreen-stub.min.js', 8),
(9, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-includes/js/wp-ajax-response.min.js', 9),
(10, 1, '20111129a', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-includes/js/wp-pointer.min.js', 10),
(11, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-includes/js/autosave.min.js', 11),
(12, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-includes/js/heartbeat.min.js', 12),
(13, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-includes/js/wp-auth-check.min.js', 13),
(14, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:54', '/wp-includes/js/wp-lists.min.js', 14),
(15, 1, '1.7.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/prototype/1.7.1.0/prototype.js', 15),
(16, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/scriptaculous.js', 16),
(17, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/builder.js', 17),
(18, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/dragdrop.js', 18),
(19, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/effects.js', 19),
(20, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/slider.js', 20),
(21, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/sound.js', 21),
(22, 1, '1.9.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', 'https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/controls.js', 22),
(23, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', '', 23),
(24, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:55', '/wp-includes/js/crop/cropper.js', 24),
(25, 1, '1.12.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '', 25),
(26, 1, '1.12.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/jquery.js', 26),
(27, 1, '1.4.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/jquery-migrate.min.js', 27),
(28, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/core.min.js', 28),
(29, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect.min.js', 29),
(30, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-blind.min.js', 30),
(31, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-bounce.min.js', 31),
(32, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-clip.min.js', 32),
(33, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-drop.min.js', 33),
(34, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-explode.min.js', 34),
(35, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-fade.min.js', 35),
(36, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-fold.min.js', 36),
(37, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:56', '/wp-includes/js/jquery/ui/effect-highlight.min.js', 37),
(38, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-puff.min.js', 38),
(39, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-pulsate.min.js', 39),
(40, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-scale.min.js', 40),
(41, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-shake.min.js', 41),
(42, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-size.min.js', 42),
(43, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-slide.min.js', 43),
(44, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/effect-transfer.min.js', 44),
(45, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/accordion.min.js', 45),
(46, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/autocomplete.min.js', 46),
(47, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/button.min.js', 47),
(48, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:57', '/wp-includes/js/jquery/ui/datepicker.min.js', 48),
(49, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/dialog.min.js', 49),
(50, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/draggable.min.js', 50),
(51, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/droppable.min.js', 51),
(52, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/menu.min.js', 52),
(53, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/mouse.min.js', 53),
(54, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/position.min.js', 54),
(55, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/progressbar.min.js', 55),
(56, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/resizable.min.js', 56),
(57, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/selectable.min.js', 57),
(58, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/selectmenu.min.js', 58),
(59, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/slider.min.js', 59),
(60, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:58', '/wp-includes/js/jquery/ui/sortable.min.js', 60),
(61, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/ui/spinner.min.js', 61),
(62, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/ui/tabs.min.js', 62),
(63, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/ui/tooltip.min.js', 63),
(64, 1, '1.11.4', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/ui/widget.min.js', 64),
(65, 1, '3.37.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/jquery.form.min.js', 65),
(66, 1, '2.1.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/jquery.color.min.js', 66),
(67, 1, '20m', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/jquery.schedule.js', 67),
(68, 1, '2.1.7', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/jquery.query.js', 68),
(69, 1, '0.2', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/jquery.serialize-object.js', 69),
(70, 1, '0.0.2m', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:28:59', '/wp-includes/js/jquery/jquery.hotkeys.min.js', 70),
(71, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/jquery/jquery.table-hotkeys.min.js', 71),
(72, 1, '0.2.2', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/jquery/jquery.ui.touch-punch.js', 72),
(73, 1, '1.1-20110113', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/jquery/suggest.min.js', 73),
(74, 1, '3.2.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/imagesloaded.min.js', 74),
(75, 1, '3.3.2', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/masonry.min.js', 75),
(76, 1, '3.1.2b', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/jquery/jquery.masonry.min.js', 76),
(77, 1, '3.1-20121105', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/thickbox/thickbox.js', 77),
(78, 1, '0.9.12', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/jcrop/jquery.Jcrop.min.js', 78),
(79, 1, '2.2-20120417', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/swfobject.js', 79),
(80, 1, '2.1.8', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '/wp-includes/js/plupload/plupload.full.min.js', 80),
(81, 1, '2.1.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '', 81),
(82, 1, '2.1.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:00', '', 82),
(83, 1, '2.1.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '', 83),
(84, 1, '2.1.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '', 84),
(85, 1, '2.1.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '', 85),
(86, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/plupload/handlers.min.js', 86),
(87, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/plupload/wp-plupload.min.js', 87),
(88, 1, '2201-20110113', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/swfupload/swfupload.js', 88),
(89, 1, '2201a', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/swfupload/plugins/swfupload.swfobject.js', 89),
(90, 1, '2201', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/swfupload/plugins/swfupload.queue.js', 90),
(91, 1, '2201', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/swfupload/plugins/swfupload.speed.js', 91),
(92, 1, '2201', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '', 92),
(93, 1, '2201-20110524', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:01', '/wp-includes/js/swfupload/handlers.min.js', 93),
(94, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/comment-reply.min.js', 94),
(95, 1, '2015-05-03', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/json2.min.js', 95),
(96, 1, '1.8.3', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/underscore.min.js', 96),
(97, 1, '1.2.3', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/backbone.min.js', 97),
(98, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/wp-util.min.js', 98),
(99, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/wp-backbone.min.js', 99),
(100, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-admin/js/revisions.min.js', 100) ;
INSERT INTO `wp_cjtoolbox_template_revisions` ( `templateId`, `revisionNo`, `version`, `changeLog`, `state`, `attributes`, `dateCreated`, `file`, `id`) VALUES
(101, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/imgareaselect/jquery.imgareaselect.min.js', 101),
(102, 1, '2.22.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/mediaelement/mediaelement-and-player.min.js', 102),
(103, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/mediaelement/wp-mediaelement.min.js', 103),
(104, 1, '2.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:02', '/wp-includes/js/mediaelement/froogaloop.min.js', 104),
(105, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-includes/js/mediaelement/wp-playlist.min.js', 105),
(106, 1, '1.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-includes/js/zxcvbn-async.min.js', 106),
(107, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-admin/js/password-strength-meter.min.js', 107),
(108, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-admin/js/user-profile.min.js', 108),
(109, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-admin/js/language-chooser.min.js', 109),
(110, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-admin/js/user-suggest.min.js', 110),
(111, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-includes/js/admin-bar.min.js', 111),
(112, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-includes/js/wplink.min.js', 112),
(113, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-includes/js/wpdialog.min.js', 113),
(114, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-admin/js/word-count.min.js', 114),
(115, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:03', '/wp-admin/js/media-upload.min.js', 115),
(116, 1, '1.8.1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/hoverIntent.min.js', 116),
(117, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-base.min.js', 117),
(118, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-loader.min.js', 118),
(119, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-preview.min.js', 119),
(120, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-models.js', 120),
(121, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-views.js', 121),
(122, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-admin/js/customize-controls.min.js', 122),
(123, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-selective-refresh.min.js', 123),
(124, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-admin/js/customize-widgets.min.js', 124),
(125, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:04', '/wp-includes/js/customize-preview-widgets.min.js', 125),
(126, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-admin/js/customize-nav-menus.min.js', 126),
(127, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/customize-preview-nav-menus.min.js', 127),
(128, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/wp-custom-header.min.js', 128),
(129, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-admin/js/accordion.min.js', 129),
(130, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/shortcode.min.js', 130),
(131, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/media-models.min.js', 131),
(132, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/wp-embed.min.js', 132),
(133, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/media-views.min.js', 133),
(134, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/media-editor.min.js', 134),
(135, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/media-audiovideo.min.js', 135),
(136, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/mce-view.min.js', 136),
(137, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-includes/js/wp-api.min.js', 137),
(138, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:05', '/wp-admin/js/tags.min.js', 138),
(139, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/edit-comments.min.js', 139),
(140, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/xfn.min.js', 140),
(141, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/postbox.min.js', 141),
(142, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/tags-box.min.js', 142),
(143, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/tags-suggest.min.js', 143),
(144, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/post.min.js', 144),
(145, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/press-this.min.js', 145),
(146, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/editor-expand.min.js', 146),
(147, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/link.min.js', 147),
(148, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/comment.min.js', 148),
(149, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/gallery.min.js', 149),
(150, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/widgets.min.js', 150),
(151, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:06', '/wp-admin/js/theme.min.js', 151),
(152, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/inline-edit-post.min.js', 152),
(153, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/inline-edit-tax.min.js', 153),
(154, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/plugin-install.min.js', 154),
(155, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/updates.min.js', 155),
(156, 1, '1.2', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/farbtastic.js', 156),
(157, 1, '1.0.7', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/iris.min.js', 157),
(158, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/color-picker.min.js', 158),
(159, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/dashboard.min.js', 159),
(160, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-includes/js/wp-list-revisions.min.js', 160),
(161, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-includes/js/media-grid.min.js', 161),
(162, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/media.min.js', 162),
(163, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/image-edit.min.js', 163),
(164, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/set-post-thumbnail.min.js', 164),
(165, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/nav-menu.min.js', 165),
(166, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/custom-header.js', 166),
(167, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/custom-background.min.js', 167),
(168, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:07', '/wp-admin/js/media-gallery.min.js', 168),
(169, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '/wp-admin/js/svg-painter.js', 169),
(170, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '1', 170),
(171, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '/wp-admin/css/common.min.css', 171),
(172, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '/wp-admin/css/forms.min.css', 172),
(173, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '/wp-admin/css/admin-menu.min.css', 173),
(174, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '/wp-admin/css/dashboard.min.css', 174),
(175, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:08', '/wp-admin/css/list-tables.min.css', 175),
(176, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/edit.min.css', 176),
(177, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/revisions.min.css', 177),
(178, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/media.min.css', 178),
(179, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/themes.min.css', 179),
(180, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/about.min.css', 180),
(181, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/nav-menus.min.css', 181),
(182, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/widgets.min.css', 182),
(183, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/site-icon.min.css', 183),
(184, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/l10n.min.css', 184),
(185, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '', 185),
(186, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/login.min.css', 186),
(187, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/install.min.css', 187),
(188, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:09', '/wp-admin/css/color-picker.min.css', 188),
(189, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-admin/css/customize-controls.min.css', 189),
(190, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-admin/css/customize-widgets.min.css', 190),
(191, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-admin/css/customize-nav-menus.min.css', 191),
(192, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-admin/css/press-this.min.css', 192),
(193, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-admin/css/ie.min.css', 193),
(194, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/buttons.min.css', 194),
(195, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/dashicons.min.css', 195),
(196, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/admin-bar.min.css', 196),
(197, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/wp-auth-check.min.css', 197),
(198, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/editor.min.css', 198),
(199, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/media-views.min.css', 199),
(200, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/wp-pointer.min.css', 200) ;
INSERT INTO `wp_cjtoolbox_template_revisions` ( `templateId`, `revisionNo`, `version`, `changeLog`, `state`, `attributes`, `dateCreated`, `file`, `id`) VALUES
(201, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:10', '/wp-includes/css/customize-preview.min.css', 201),
(202, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/css/wp-embed-template-ie.min.css', 202),
(203, 1, '0.9.8', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/js/imgareaselect/imgareaselect.css', 203),
(204, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/css/jquery-ui-dialog.min.css', 204),
(205, 1, '2.22.0', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/js/mediaelement/mediaelementplayer.min.css', 205),
(206, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/js/mediaelement/wp-mediaelement.min.css', 206),
(207, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/js/thickbox/thickbox.css', 207),
(208, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-admin/css/deprecated-media.min.css', 208),
(209, 1, '1.3u1', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-admin/css/farbtastic.min.css', 209),
(210, 1, '0.9.12', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '/wp-includes/js/jcrop/jquery.Jcrop.min.css', 210),
(211, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', '', 211),
(212, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-05-23 12:29:11', 'https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,300,400,600&subset=latin,latin-ext', 212),
(0, 1, '', 'Cached by CJT installer!', 'release', 1, '2017-06-09 20:57:58', '/wp-includes/js/utils.min.js', 213) ;

#
# End of data contents of table `wp_cjtoolbox_template_revisions`
# --------------------------------------------------------



#
# Delete any existing table `wp_cjtoolbox_templates`
#

DROP TABLE IF EXISTS `wp_cjtoolbox_templates`;


#
# Table structure of table `wp_cjtoolbox_templates`
#

CREATE TABLE `wp_cjtoolbox_templates` (
  `name` varchar(80) NOT NULL,
  `queueName` varchar(80) NOT NULL,
  `description` text,
  `keywords` varchar(300) DEFAULT NULL,
  `license` text,
  `type` enum('css','javascript','php','html') NOT NULL,
  `email` varchar(90) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `creationDate` datetime NOT NULL,
  `ownerId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `state` enum('published','draft','trash') NOT NULL DEFAULT 'published',
  `attributes` int(4) NOT NULL DEFAULT '0',
  `guid` varchar(16) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`type`),
  UNIQUE KEY `guid` (`guid`),
  KEY `keywords` (`keywords`(255)),
  KEY `owner` (`ownerId`),
  KEY `author` (`authorId`),
  KEY `type` (`type`),
  KEY `attributes` (`attributes`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_cjtoolbox_templates`
#
INSERT INTO `wp_cjtoolbox_templates` ( `name`, `queueName`, `description`, `keywords`, `license`, `type`, `email`, `url`, `creationDate`, `ownerId`, `authorId`, `state`, `attributes`, `guid`, `id`) VALUES
('Utils', 'utils', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:53', 1, 1, 'published', 1, NULL, 1),
('Common', 'common', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:53', 1, 1, 'published', 1, NULL, 2),
('Wp a11y', 'wp-a11y', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:53', 1, 1, 'published', 1, NULL, 3),
('Sack', 'sack', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:53', 1, 1, 'published', 1, NULL, 4),
('Quicktags', 'quicktags', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:53', 1, 1, 'published', 1, NULL, 5),
('Colorpicker', 'colorpicker', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:53', 1, 1, 'published', 1, NULL, 6),
('Editor', 'editor', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 7),
('Wp fullscreen stub', 'wp-fullscreen-stub', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 8),
('Wp ajax response', 'wp-ajax-response', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 9),
('Wp pointer', 'wp-pointer', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 10),
('Autosave', 'autosave', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 11),
('Heartbeat', 'heartbeat', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 12),
('Wp auth check', 'wp-auth-check', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 13),
('Wp lists', 'wp-lists', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:54', 1, 1, 'published', 1, NULL, 14),
('Prototype', 'prototype', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 15),
('Scriptaculous root', 'scriptaculous-root', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 16),
('Scriptaculous builder', 'scriptaculous-builder', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 17),
('Scriptaculous dragdrop', 'scriptaculous-dragdrop', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 18),
('Scriptaculous effects', 'scriptaculous-effects', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 19),
('Scriptaculous slider', 'scriptaculous-slider', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 20),
('Scriptaculous sound', 'scriptaculous-sound', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 21),
('Scriptaculous controls', 'scriptaculous-controls', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 22),
('Scriptaculous', 'scriptaculous', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 23),
('Cropper', 'cropper', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:55', 1, 1, 'published', 1, NULL, 24),
('Jquery', 'jquery', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 25),
('Jquery core', 'jquery-core', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 26),
('Jquery migrate', 'jquery-migrate', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 27),
('Jquery ui core', 'jquery-ui-core', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 28),
('Jquery effects core', 'jquery-effects-core', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 29),
('Jquery effects blind', 'jquery-effects-blind', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 30),
('Jquery effects bounce', 'jquery-effects-bounce', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 31),
('Jquery effects clip', 'jquery-effects-clip', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 32),
('Jquery effects drop', 'jquery-effects-drop', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 33),
('Jquery effects explode', 'jquery-effects-explode', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 34),
('Jquery effects fade', 'jquery-effects-fade', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 35),
('Jquery effects fold', 'jquery-effects-fold', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 36),
('Jquery effects highlight', 'jquery-effects-highlight', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:56', 1, 1, 'published', 1, NULL, 37),
('Jquery effects puff', 'jquery-effects-puff', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 38),
('Jquery effects pulsate', 'jquery-effects-pulsate', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 39),
('Jquery effects scale', 'jquery-effects-scale', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 40),
('Jquery effects shake', 'jquery-effects-shake', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 41),
('Jquery effects size', 'jquery-effects-size', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 42),
('Jquery effects slide', 'jquery-effects-slide', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 43),
('Jquery effects transfer', 'jquery-effects-transfer', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 44),
('Jquery ui accordion', 'jquery-ui-accordion', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 45),
('Jquery ui autocomplete', 'jquery-ui-autocomplete', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 46),
('Jquery ui button', 'jquery-ui-button', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 47),
('Jquery ui datepicker', 'jquery-ui-datepicker', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:57', 1, 1, 'published', 1, NULL, 48),
('Jquery ui dialog', 'jquery-ui-dialog', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 49),
('Jquery ui draggable', 'jquery-ui-draggable', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 50),
('Jquery ui droppable', 'jquery-ui-droppable', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 51),
('Jquery ui menu', 'jquery-ui-menu', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 52),
('Jquery ui mouse', 'jquery-ui-mouse', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 53),
('Jquery ui position', 'jquery-ui-position', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 54),
('Jquery ui progressbar', 'jquery-ui-progressbar', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 55),
('Jquery ui resizable', 'jquery-ui-resizable', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 56),
('Jquery ui selectable', 'jquery-ui-selectable', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 57),
('Jquery ui selectmenu', 'jquery-ui-selectmenu', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 58),
('Jquery ui slider', 'jquery-ui-slider', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 59),
('Jquery ui sortable', 'jquery-ui-sortable', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:58', 1, 1, 'published', 1, NULL, 60),
('Jquery ui spinner', 'jquery-ui-spinner', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 61),
('Jquery ui tabs', 'jquery-ui-tabs', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 62),
('Jquery ui tooltip', 'jquery-ui-tooltip', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 63),
('Jquery ui widget', 'jquery-ui-widget', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 64),
('Jquery form', 'jquery-form', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 65),
('Jquery color', 'jquery-color', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 66),
('Schedule', 'schedule', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 67),
('Jquery query', 'jquery-query', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 68),
('Jquery serialize object', 'jquery-serialize-object', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 69),
('Jquery hotkeys', 'jquery-hotkeys', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:28:59', 1, 1, 'published', 1, NULL, 70),
('Jquery table hotkeys', 'jquery-table-hotkeys', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 71),
('Jquery touch punch', 'jquery-touch-punch', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 72),
('Suggest', 'suggest', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 73),
('Imagesloaded', 'imagesloaded', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 74),
('Masonry', 'masonry', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 75),
('Jquery masonry', 'jquery-masonry', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 76),
('Thickbox', 'thickbox', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 77),
('Jcrop', 'jcrop', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 78),
('Swfobject', 'swfobject', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 79),
('Plupload', 'plupload', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 80),
('Plupload all', 'plupload-all', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 81),
('Plupload html5', 'plupload-html5', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:00', 1, 1, 'published', 1, NULL, 82),
('Plupload flash', 'plupload-flash', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 83),
('Plupload silverlight', 'plupload-silverlight', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 84),
('Plupload html4', 'plupload-html4', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 85),
('Plupload handlers', 'plupload-handlers', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 86),
('Wp plupload', 'wp-plupload', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 87),
('Swfupload', 'swfupload', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 88),
('Swfupload swfobject', 'swfupload-swfobject', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 89),
('Swfupload queue', 'swfupload-queue', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 90),
('Swfupload speed', 'swfupload-speed', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 91),
('Swfupload all', 'swfupload-all', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 92),
('Swfupload handlers', 'swfupload-handlers', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:01', 1, 1, 'published', 1, NULL, 93),
('Comment reply', 'comment-reply', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 94),
('Json2', 'json2', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 95),
('Underscore', 'underscore', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 96),
('Backbone', 'backbone', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 97),
('Wp util', 'wp-util', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 98),
('Wp backbone', 'wp-backbone', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 99),
('Revisions', 'revisions', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 100) ;
INSERT INTO `wp_cjtoolbox_templates` ( `name`, `queueName`, `description`, `keywords`, `license`, `type`, `email`, `url`, `creationDate`, `ownerId`, `authorId`, `state`, `attributes`, `guid`, `id`) VALUES
('Imgareaselect', 'imgareaselect', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 101),
('Mediaelement', 'mediaelement', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 102),
('Wp mediaelement', 'wp-mediaelement', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 103),
('Froogaloop', 'froogaloop', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:02', 1, 1, 'published', 1, NULL, 104),
('Wp playlist', 'wp-playlist', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 105),
('Zxcvbn async', 'zxcvbn-async', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 106),
('Password strength meter', 'password-strength-meter', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 107),
('User profile', 'user-profile', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 108),
('Language chooser', 'language-chooser', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 109),
('User suggest', 'user-suggest', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 110),
('Admin bar', 'admin-bar', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 111),
('Wplink', 'wplink', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 112),
('Wpdialogs', 'wpdialogs', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 113),
('Word count', 'word-count', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 114),
('Media upload', 'media-upload', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:03', 1, 1, 'published', 1, NULL, 115),
('HoverIntent', 'hoverIntent', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 116),
('Customize base', 'customize-base', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 117),
('Customize loader', 'customize-loader', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 118),
('Customize preview', 'customize-preview', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 119),
('Customize models', 'customize-models', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 120),
('Customize views', 'customize-views', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 121),
('Customize controls', 'customize-controls', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 122),
('Customize selective refresh', 'customize-selective-refresh', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 123),
('Customize widgets', 'customize-widgets', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 124),
('Customize preview widgets', 'customize-preview-widgets', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:04', 1, 1, 'published', 1, NULL, 125),
('Customize nav menus', 'customize-nav-menus', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 126),
('Customize preview nav menus', 'customize-preview-nav-menus', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 127),
('Wp custom header', 'wp-custom-header', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 128),
('Accordion', 'accordion', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 129),
('Shortcode', 'shortcode', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 130),
('Media models', 'media-models', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 131),
('Wp embed', 'wp-embed', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 132),
('Media views', 'media-views', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 133),
('Media editor', 'media-editor', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 134),
('Media audiovideo', 'media-audiovideo', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 135),
('Mce view', 'mce-view', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 136),
('Wp api', 'wp-api', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 137),
('Admin tags', 'admin-tags', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:05', 1, 1, 'published', 1, NULL, 138),
('Admin comments', 'admin-comments', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 139),
('Xfn', 'xfn', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 140),
('Postbox', 'postbox', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 141),
('Tags box', 'tags-box', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 142),
('Tags suggest', 'tags-suggest', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 143),
('Post', 'post', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 144),
('Press this', 'press-this', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 145),
('Editor expand', 'editor-expand', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 146),
('Link', 'link', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 147),
('Comment', 'comment', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 148),
('Admin gallery', 'admin-gallery', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 149),
('Admin widgets', 'admin-widgets', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 150),
('Theme', 'theme', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:06', 1, 1, 'published', 1, NULL, 151),
('Inline edit post', 'inline-edit-post', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 152),
('Inline edit tax', 'inline-edit-tax', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 153),
('Plugin install', 'plugin-install', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 154),
('Updates', 'updates', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 155),
('Farbtastic', 'farbtastic', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 156),
('Iris', 'iris', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 157),
('Wp color picker', 'wp-color-picker', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 158),
('Dashboard', 'dashboard', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 159),
('List revisions', 'list-revisions', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 160),
('Media grid', 'media-grid', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 161),
('Media', 'media', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 162),
('Image edit', 'image-edit', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 163),
('Set post thumbnail', 'set-post-thumbnail', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 164),
('Nav menu', 'nav-menu', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 165),
('Custom header', 'custom-header', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 166),
('Custom background', 'custom-background', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 167),
('Media gallery', 'media-gallery', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:07', 1, 1, 'published', 1, NULL, 168),
('Svg painter', 'svg-painter', NULL, NULL, NULL, 'javascript', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 169),
('Colors', 'colors', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 170),
('Common', 'common', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 171),
('Forms', 'forms', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 172),
('Admin menu', 'admin-menu', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 173),
('Dashboard', 'dashboard', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 174),
('List tables', 'list-tables', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:08', 1, 1, 'published', 1, NULL, 175),
('Edit', 'edit', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 176),
('Revisions', 'revisions', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 177),
('Media', 'media', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 178),
('Themes', 'themes', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 179),
('About', 'about', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 180),
('Nav menus', 'nav-menus', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 181),
('Widgets', 'widgets', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 182),
('Site icon', 'site-icon', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 183),
('L10n', 'l10n', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 184),
('Wp admin', 'wp-admin', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 185),
('Login', 'login', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 186),
('Install', 'install', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 187),
('Wp color picker', 'wp-color-picker', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:09', 1, 1, 'published', 1, NULL, 188),
('Customize controls', 'customize-controls', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 189),
('Customize widgets', 'customize-widgets', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 190),
('Customize nav menus', 'customize-nav-menus', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 191),
('Press this', 'press-this', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 192),
('Ie', 'ie', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 193),
('Buttons', 'buttons', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 194),
('Dashicons', 'dashicons', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 195),
('Admin bar', 'admin-bar', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 196),
('Wp auth check', 'wp-auth-check', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 197),
('Editor buttons', 'editor-buttons', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 198),
('Media views', 'media-views', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 199),
('Wp pointer', 'wp-pointer', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 200) ;
INSERT INTO `wp_cjtoolbox_templates` ( `name`, `queueName`, `description`, `keywords`, `license`, `type`, `email`, `url`, `creationDate`, `ownerId`, `authorId`, `state`, `attributes`, `guid`, `id`) VALUES
('Customize preview', 'customize-preview', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:10', 1, 1, 'published', 1, NULL, 201),
('Wp embed template ie', 'wp-embed-template-ie', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 202),
('Imgareaselect', 'imgareaselect', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 203),
('Wp jquery ui dialog', 'wp-jquery-ui-dialog', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 204),
('Mediaelement', 'mediaelement', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 205),
('Wp mediaelement', 'wp-mediaelement', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 206),
('Thickbox', 'thickbox', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 207),
('Deprecated media', 'deprecated-media', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 208),
('Farbtastic', 'farbtastic', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 209),
('Jcrop', 'jcrop', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 210),
('Colors fresh', 'colors-fresh', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 211),
('Open sans', 'open-sans', NULL, NULL, NULL, 'css', NULL, NULL, '2017-05-23 12:29:11', 1, 1, 'published', 1, NULL, 212) ;

#
# End of data contents of table `wp_cjtoolbox_templates`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-24 10:07:52', '2017-05-24 10:07:52', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost\\testwp', 'yes'),
(2, 'home', 'http://localhost\\testwp/', 'yes'),
(3, 'blogname', 'Tunizil', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'molkazaw@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:50:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"index.php/vc_grid_item/([^/]+)/embed/?$";s:45:"index.php?vc_grid_item=$matches[1]&embed=true";s:43:"index.php/vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:51:"index.php/vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:58:"index.php/vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:47:"index.php/vc_grid_item/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:39:"index.php/vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"index.php/vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"index.php/vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"index.php/vc_grid_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=10&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:41:"css-javascript-toolbox/css-js-toolbox.php";i:1;s:27:"js_composer/js_composer.php";i:2;s:42:"page-scroll-to-id/malihu-pagescroll2id.php";i:3;s:23:"revslider/revslider.php";i:4;s:43:"themeisle-companion/themeisle-companion.php";i:5;s:29:"wp-sync-db-1.5/wp-sync-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:7:{i:2;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:3;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:4;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:5;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:8;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:9;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:"css-javascript-toolbox/css-js-toolbox.php";a:2:{i:0;s:18:"CJTMainAccessPoint";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:4;a:1:{s:5:"title";s:6:"Search";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'cron', 'a:4:{i:1497132464;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1497167390;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497175853;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:10:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:12:"categories-2";i:8;s:14:"recent-posts-2";i:9;s:17:"recent-comments-2";}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:1:{i:0;s:6:"text-8";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(107, 'nonce_key', '&LF$4De@8[HtP6e_r!9Nk7Z]2!AO//@k~|l1Y>{}qT)<cH89818t>}.q,t._3*xo', 'no'),
(108, 'nonce_salt', 'fA405f?^F KPP)_ndf-jG(u0Q/E9CSz,_R43bp21j:g|fIZxFB1I6qhlCipJ#Uu_', 'no'),
(109, 'theme_mods_twentyseventeen', 'a:7:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:7:"panel_1";i:14;s:7:"panel_2";i:11;s:7:"panel_3";i:13;s:7:"panel_4";i:12;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1496502261;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-6";i:1;s:8:"search-3";i:2;s:6:"text-7";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-8";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}}}}', 'yes'),
(116, 'auth_key', 'z9ptx_C5 O.hy{VfmG#Z;=p8UFeQq]jK+YP}j$u%K_)N){QKhb/qM8.c*YJs_ATo', 'no'),
(117, 'auth_salt', '6>4H(5+)%;E%$h*?$_; uwkBB1/=hNzk{tw X1oWV}h8V5q{$,=NZ;TGpirC0V-%', 'no'),
(118, 'logged_in_key', '{z~k_6HWAH#D =bm7SAZUC7~zTP$C)s,bx}VF&a$=f5S.a:&-CrC7LGmOv^7;>F/', 'no'),
(119, 'logged_in_salt', 'X%Y$>fm{Tkh o9&Wn%RB3}$f*&jc&.l1VTZ/w:T3-ojP1b2@M_i+e!`<d~:_yUV*', 'no'),
(121, 'can_compress_scripts', '0', 'no'),
(138, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(172, 'recently_activated', 'a:1:{s:41:"wordpress-importer/wordpress-importer.php";i:1497041768;}', 'yes'),
(192, 'category_children', 'a:0:{}', 'yes'),
(225, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"AT+PTWe9uLsYmXg1IvD9Ja9xqgvqFMP5";s:10:"allow_pull";b:1;s:10:"allow_push";b:1;s:8:"profiles";a:1:{i:0;a:18:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"0";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"0";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:8:"savefile";s:15:"connection_info";s:37:"git@github.com:Naimabdelkefi/test.git";s:11:"replace_old";a:1:{i:1;s:16:"localhost\\testwp";}s:11:"replace_new";a:1:{i:1;s:16:"localhost\\testwp";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:0:"";s:4:"name";s:3:"Git";}}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(334, 'current_theme', 'twentysixteen Child Theme', 'yes'),
(335, 'theme_mods_hestia', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:18:"custom_css_post_id";i:-1;s:12:"accent_color";s:7:"#e74c27";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497020900;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:10:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:12:"categories-2";i:8;s:14:"recent-posts-2";i:9;s:17:"recent-comments-2";}s:9:"sidebar-1";a:3:{i:0;s:6:"text-6";i:1;s:8:"search-3";i:2;s:6:"text-7";}s:17:"subscribe-widgets";a:1:{i:0;s:6:"text-8";}s:22:"blog-subscribe-widgets";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}s:18:"footer-one-widgets";N;s:18:"footer-two-widgets";N;s:20:"footer-three-widgets";N;}}}', 'yes'),
(336, 'theme_switched', '', 'yes'),
(337, 'hestia_time_activated', '1496502261', 'yes'),
(419, 'vc_version', '4.12', 'yes'),
(423, 'theme_mods_one-page', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:3:"top";i:2;s:6:"social";i:3;s:14:"frontpage-menu";i:4;s:12:"subpage-menu";i:4;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497023973;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:10:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:12:"categories-2";i:8;s:14:"recent-posts-2";i:9;s:17:"recent-comments-2";}s:9:"sidebar-1";a:3:{i:0;s:6:"text-6";i:1;s:8:"search-3";i:2;s:6:"text-7";}s:18:"orphaned_widgets_1";a:1:{i:0;s:6:"text-8";}s:18:"orphaned_widgets_2";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}}}}', 'yes'),
(424, 'widget_rcp_recent_custom_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(431, 'widget_malihupagescroll2idwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(432, 'page_scroll_to_id_version', '1.6.2', 'yes'),
(433, 'page_scroll_to_id_instances', 'a:1:{s:17:"mPS2id_instance_0";a:26:{s:8:"selector";a:10:{s:5:"value";s:24:"a[rel=\'m_PageScroll2id\']";s:6:"values";N;s:2:"id";s:28:"page_scroll_to_id_0_selector";s:10:"field_type";s:4:"text";s:5:"label";s:11:"Selector(s)";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:411:"Set the links (in the form of <a href="http://www.w3.org/TR/css3-selectors/" target="_blank">CSS selectors</a>) that will scroll the page when clicked (default value: any link with <code>rel</code> attribute equal to <code>m_PageScroll2id</code>) <br /><small>In addition to selectors above, the plugin is enabled automatically on links (or links contained within elements) with class <code>ps2id</code></small>";s:7:"wrapper";N;}s:21:"autoSelectorMenuLinks";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:41:"page_scroll_to_id_0_autoSelectorMenuLinks";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:30:"Enable on WordPress Menu links";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:185:"Automatically enable the plugin on custom links (containing <code>#</code> in their URL) created in Appearance &rarr; Menus <br /><small>Requires WordPress version 3.6 or higher</small>";s:7:"wrapper";s:8:"fieldset";}s:11:"scrollSpeed";a:10:{s:5:"value";i:1000;s:6:"values";N;s:2:"id";s:31:"page_scroll_to_id_0_scrollSpeed";s:10:"field_type";s:12:"text-integer";s:5:"label";s:15:"Scroll duration";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:12:"milliseconds";s:11:"description";s:99:"Scroll animation duration (i.e. scrolling speed) in milliseconds (1000 milliseconds equal 1 second)";s:7:"wrapper";N;}s:15:"autoScrollSpeed";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:35:"page_scroll_to_id_0_autoScrollSpeed";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:30:"Auto-adjust scrolling duration";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:104:"Enable to let the plugin fine-tune scrolling duration/speed according to target and page scroll position";s:7:"wrapper";s:8:"fieldset";}s:12:"scrollEasing";a:10:{s:5:"value";s:14:"easeInOutQuint";s:6:"values";s:406:"linear,swing,easeInQuad,easeOutQuad,easeInOutQuad,easeInCubic,easeOutCubic,easeInOutCubic,easeInQuart,easeOutQuart,easeInOutQuart,easeInQuint,easeOutQuint,easeInOutQuint,easeInExpo,easeOutExpo,easeInOutExpo,easeInSine,easeOutSine,easeInOutSine,easeInCirc,easeOutCirc,easeInOutCirc,easeInElastic,easeOutElastic,easeInOutElastic,easeInBack,easeOutBack,easeInOutBack,easeInBounce,easeOutBounce,easeInOutBounce";s:2:"id";s:32:"page_scroll_to_id_0_scrollEasing";s:10:"field_type";s:6:"select";s:5:"label";s:18:"Scroll type/easing";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:192:"Scroll animation easing (<a href="http://manos.malihu.gr/page-scroll-to-id-for-wordpress/#ps2id-duration-easings-demo" target="_blank">visual representation &amp; demo of all easing types</a>)";s:7:"wrapper";N;}s:15:"scrollingEasing";a:10:{s:5:"value";s:12:"easeOutQuint";s:6:"values";s:406:"linear,swing,easeInQuad,easeOutQuad,easeInOutQuad,easeInCubic,easeOutCubic,easeInOutCubic,easeInQuart,easeOutQuart,easeInOutQuart,easeInQuint,easeOutQuint,easeInOutQuint,easeInExpo,easeOutExpo,easeInOutExpo,easeInSine,easeOutSine,easeInOutSine,easeInCirc,easeOutCirc,easeInOutCirc,easeInElastic,easeOutElastic,easeInOutElastic,easeInBack,easeOutBack,easeInOutBack,easeInBounce,easeOutBounce,easeInOutBounce";s:2:"id";s:35:"page_scroll_to_id_0_scrollingEasing";s:10:"field_type";s:6:"select";s:5:"label";s:0:"";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:98:"Alternative animation easing (applied when a link is clicked while the page is animated/scrolling)";s:7:"wrapper";N;}s:19:"pageEndSmoothScroll";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:39:"page_scroll_to_id_0_pageEndSmoothScroll";s:10:"field_type";s:8:"checkbox";s:5:"label";s:15:"Scroll behavior";s:14:"checkbox_label";s:65:"Always scroll smoothly when reaching the end of the page/document";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";N;s:7:"wrapper";s:8:"fieldset";}s:22:"stopScrollOnUserAction";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:42:"page_scroll_to_id_0_stopScrollOnUserAction";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:49:"Stop page scrolling on mouse-wheel or touch-swipe";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:127:"Enable if you want to stop page scrolling when the user tries to scroll the page manually (e.g. via mouse-wheel or touch-swipe)";s:7:"wrapper";s:8:"fieldset";}s:6:"layout";a:10:{s:5:"value";s:8:"vertical";s:6:"values";s:24:"vertical,horizontal,auto";s:2:"id";s:26:"page_scroll_to_id_0_layout";s:10:"field_type";s:5:"radio";s:5:"label";s:11:"Page layout";s:14:"checkbox_label";N;s:12:"radio_labels";s:24:"vertical|horizontal|auto";s:10:"field_info";N;s:11:"description";s:346:"Restrict page scrolling to top-bottom (vertical) or left-right (horizontal) accordingly. For both vertical and horizontal scrolling select <code>auto</code> <br /><small>Please note that "Layout" option does not transform your theme&#8217;s templates layout (i.e. it won&#8217;t change your theme/page design from vertical to horizontal).</small>";s:7:"wrapper";s:8:"fieldset";}s:6:"offset";a:10:{s:5:"value";i:0;s:6:"values";N;s:2:"id";s:26:"page_scroll_to_id_0_offset";s:10:"field_type";s:4:"text";s:5:"label";s:6:"Offset";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:6:"pixels";s:11:"description";s:189:"Offset scroll-to position by x amount of pixels (positive or negative) or by <a href="http://www.w3.org/TR/css3-selectors/" target="_blank">selector</a> (e.g. <code>#navigation-menu</code>)";s:7:"wrapper";N;}s:17:"highlightSelector";a:10:{s:5:"value";s:0:"";s:6:"values";N;s:2:"id";s:37:"page_scroll_to_id_0_highlightSelector";s:10:"field_type";s:4:"text";s:5:"label";s:21:"Highlight selector(s)";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:181:"Set the links (in the form of <a href="http://www.w3.org/TR/css3-selectors/" target="_blank">CSS selectors</a>) that will be eligible for highlighting (leave empty to highlight all)";s:7:"wrapper";N;}s:12:"clickedClass";a:10:{s:5:"value";s:14:"mPS2id-clicked";s:6:"values";N;s:2:"id";s:32:"page_scroll_to_id_0_clickedClass";s:10:"field_type";s:4:"text";s:5:"label";s:31:"Classes &amp; highlight options";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:10:"class name";s:11:"description";s:124:"Class of the clicked link. You can use this class (e.g. <code>.mPS2id-clicked</code>) in your CSS to style the clicked link.";s:7:"wrapper";N;}s:11:"targetClass";a:10:{s:5:"value";s:13:"mPS2id-target";s:6:"values";N;s:2:"id";s:31:"page_scroll_to_id_0_targetClass";s:10:"field_type";s:4:"text";s:5:"label";s:0:"";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:10:"class name";s:11:"description";s:413:"Class of the (current) target element. You can use this class (e.g. <code>.mPS2id-target</code>) in your CSS to style the highlighted target element(s). <br />If multiple elements are highlighted, you can use the <code>-first</code> or <code>-last</code> suffix in the class name (e.g. <code>.mPS2id-target-first</code>, <code>.mPS2id-target-last</code>) to style the first or last highlighted element accordingly";s:7:"wrapper";N;}s:14:"highlightClass";a:10:{s:5:"value";s:16:"mPS2id-highlight";s:6:"values";N;s:2:"id";s:34:"page_scroll_to_id_0_highlightClass";s:10:"field_type";s:4:"text";s:5:"label";s:0:"";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:10:"class name";s:11:"description";s:409:"Class of the (current) highlighted link. You can use this class (e.g. <code>.mPS2id-highlight</code>) in your CSS to style the highlighted link(s). <br />If multiple links are highlighted, you can use the <code>-first</code> or <code>-last</code> suffix in the class name (e.g. <code>.mPS2id-highlight-first</code>, <code>.mPS2id-highlight-last</code>) to style the first or last highlighted links accordingly";s:7:"wrapper";N;}s:20:"forceSingleHighlight";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:40:"page_scroll_to_id_0_forceSingleHighlight";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:44:"Allow only one highlighted element at a time";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";N;s:7:"wrapper";s:8:"fieldset";}s:22:"keepHighlightUntilNext";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:42:"page_scroll_to_id_0_keepHighlightUntilNext";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:123:"Keep the current element highlighted until the next one comes into view (i.e. always keep at least one element highlighted)";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";N;s:7:"wrapper";s:8:"fieldset";}s:21:"highlightByNextTarget";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:41:"page_scroll_to_id_0_highlightByNextTarget";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:24:"Highlight by next target";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:118:"Set targets length according to their next adjacent target position (useful when target elements have zero dimensions)";s:7:"wrapper";s:8:"fieldset";}s:10:"appendHash";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:30:"page_scroll_to_id_0_appendHash";s:10:"field_type";s:8:"checkbox";s:5:"label";s:14:"Links behavior";s:14:"checkbox_label";s:101:"Append the clicked link&#8217;s hash value (e.g. <code>#id</code>) to browser&#8217;s URL/address bar";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";N;s:7:"wrapper";s:8:"fieldset";}s:12:"scrollToHash";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:32:"page_scroll_to_id_0_scrollToHash";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:70:"Scroll from/to different pages (i.e. scroll to target when page loads)";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";N;s:7:"wrapper";s:8:"fieldset";}s:18:"scrollToHashForAll";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:38:"page_scroll_to_id_0_scrollToHashForAll";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:96:"Enable different pages scrolling on all links (even the ones that are not handled by the plugin)";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";N;s:7:"wrapper";s:8:"fieldset";}s:17:"scrollToHashDelay";a:10:{s:5:"value";i:0;s:6:"values";N;s:2:"id";s:37:"page_scroll_to_id_0_scrollToHashDelay";s:10:"field_type";s:12:"text-integer";s:5:"label";s:0:"";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:55:"milliseconds delay for scrolling to target on page load";s:11:"description";N;s:7:"wrapper";N;}s:18:"disablePluginBelow";a:10:{s:5:"value";i:0;s:6:"values";N;s:2:"id";s:38:"page_scroll_to_id_0_disablePluginBelow";s:10:"field_type";s:4:"text";s:5:"label";s:20:"Disable plugin below";s:14:"checkbox_label";N;s:12:"radio_labels";N;s:10:"field_info";s:11:"screen-size";s:11:"description";s:135:"Set the width,height screen-size (in pixels), below which the plugin will be disabled (e.g. <code>1024</code> or <code>1024,600</code>)";s:7:"wrapper";N;}s:21:"adminDisplayWidgetsId";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:41:"page_scroll_to_id_0_adminDisplayWidgetsId";s:10:"field_type";s:8:"checkbox";s:5:"label";s:14:"Administration";s:14:"checkbox_label";s:28:"Display widgets id attribute";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:65:"Show the id attribute of each widget in Appearance &rarr; Widgets";s:7:"wrapper";s:8:"fieldset";}s:19:"adminTinyMCEbuttons";a:10:{s:5:"value";s:4:"true";s:6:"values";N;s:2:"id";s:39:"page_scroll_to_id_0_adminTinyMCEbuttons";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:55:"Enable insert link/target buttons in post visual editor";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:55:"<small>Requires WordPress version 3.9 or higher</small>";s:7:"wrapper";s:8:"fieldset";}s:26:"unbindUnrelatedClickEvents";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:46:"page_scroll_to_id_0_unbindUnrelatedClickEvents";s:10:"field_type";s:8:"checkbox";s:5:"label";s:16:"Advanced options";s:14:"checkbox_label";s:70:"Prevent other scripts from handling plugin&#8217;s links (if possible)";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:159:"Enable if another plugin or a theme script handles page scrolling and conflicts with "Page scroll to id" (removes other scripts js click events from the links)";s:7:"wrapper";s:8:"fieldset";}s:27:"normalizeAnchorPointTargets";a:10:{s:5:"value";s:5:"false";s:6:"values";N;s:2:"id";s:47:"page_scroll_to_id_0_normalizeAnchorPointTargets";s:10:"field_type";s:8:"checkbox";s:5:"label";s:0:"";s:14:"checkbox_label";s:30:"Normalize anchor-point targets";s:12:"radio_labels";N;s:10:"field_info";N;s:11:"description";s:86:"Force zero dimensions (via CSS) on targets created with <code>[ps2id]</code> shortcode";s:7:"wrapper";s:8:"fieldset";}}}', 'yes'),
(434, 'revslider-update-check-short', '1497021945', 'yes'),
(435, 'revslider-templates-check', '1497021945', 'yes'),
(436, 'revslider-library-check', '1497021950', 'yes'),
(437, 'revslider_checktables', '1', 'yes'),
(438, 'rs_tables_created', '1', 'yes'),
(439, 'revslider_table_version', '1.0.6', 'yes'),
(440, 'revslider-global-settings', '', 'yes'),
(441, 'revslider_update_version', '5.2.5.5', 'yes'),
(442, 'widget_rev-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(445, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:3:"top";i:2;s:6:"social";i:3;s:14:"frontpage-menu";i:4;s:12:"subpage-menu";i:4;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497039999;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:10:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:6:"text-2";i:4;s:6:"text-3";i:5;s:6:"text-4";i:6;s:6:"text-5";i:7;s:12:"categories-2";i:8;s:14:"recent-posts-2";i:9;s:17:"recent-comments-2";}s:9:"sidebar-1";a:3:{i:0;s:6:"text-6";i:1;s:8:"search-3";i:2;s:6:"text-7";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-8";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}}}}', 'yes'),
(454, 'theme_mods_twentysixteen-child', 'a:10:{i:0;b:0;s:18:"nav_menu_locations";a:5:{s:3:"top";i:2;s:6:"social";i:3;s:14:"frontpage-menu";i:4;s:12:"subpage-menu";i:4;s:7:"primary";i:4;}s:18:"custom_css_post_id";i:-1;s:16:"header_textcolor";s:6:"1a1a1a";s:16:"background_color";s:6:"1a1a1a";s:12:"color_scheme";s:7:"default";s:21:"page_background_color";s:7:"#ffffff";s:10:"link_color";s:7:"#007acc";s:15:"main_text_color";s:7:"#1a1a1a";s:20:"secondary_text_color";s:7:"#686868";}', 'yes'),
(460, 'state.CJTInstallerModel.operations', 'a:1:{s:3:"1.6";a:1:{s:10:"operations";a:1:{s:7:"install";a:5:{s:14:"builtinAuthors";a:2:{s:4:"name";s:14:"builtinAuthors";s:5:"state";s:9:"installed";}s:8:"database";a:2:{s:4:"name";s:8:"database";s:5:"state";s:9:"installed";}s:10:"fileSystem";a:2:{s:4:"name";s:10:"fileSystem";s:5:"state";s:9:"installed";}s:8:"finalize";a:2:{s:4:"name";s:8:"finalize";s:5:"state";s:9:"installed";}s:18:"wordpressTemplates";a:2:{s:4:"name";s:18:"wordpressTemplates";s:5:"state";s:9:"installed";}}}}}', 'yes'),
(461, 'cjtoolbox_db_version', '1.6', 'yes'),
(462, 'meta-box-order_cjtoolbox', 'a:1:{s:6:"normal";s:23:"cjtoolbox-1,cjtoolbox-3";}', 'yes'),
(498, 'rs_obj_favorites', 'a:6:{i:0;s:108:"http://localhost\\testwp/wp-content/plugins/revslider/public/assets/assets/svg/action/ic_3d_rotation_24px.svg";i:1;s:110:"http://localhost\\testwp/wp-content/plugins/revslider/public/assets/assets/svg/action/ic_accessibility_24px.svg";i:2;s:107:"http://localhost\\testwp/wp-content/plugins/revslider/public/assets/assets/svg/action/ic_accessible_24px.svg";i:3;s:13:"fa-icon-glass";i:4;s:13:"fa-icon-music";i:5;s:14:"fa-icon-search";}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(12, 21, '_menu_item_type', 'custom'),
(13, 21, '_menu_item_menu_item_parent', '0'),
(14, 21, '_menu_item_object_id', '21'),
(15, 21, '_menu_item_object', 'custom'),
(16, 21, '_menu_item_target', ''),
(17, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 21, '_menu_item_xfn', ''),
(19, 21, '_menu_item_url', 'http:https://github.com/Naimabdelkefi/test/'),
(20, 22, '_menu_item_type', 'post_type'),
(21, 22, '_menu_item_menu_item_parent', '0'),
(22, 22, '_menu_item_object_id', '11'),
(23, 22, '_menu_item_object', 'page'),
(24, 22, '_menu_item_target', ''),
(25, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 22, '_menu_item_xfn', ''),
(27, 22, '_menu_item_url', ''),
(28, 23, '_menu_item_type', 'post_type'),
(29, 23, '_menu_item_menu_item_parent', '0'),
(30, 23, '_menu_item_object_id', '13'),
(31, 23, '_menu_item_object', 'page'),
(32, 23, '_menu_item_target', ''),
(33, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 23, '_menu_item_xfn', ''),
(35, 23, '_menu_item_url', ''),
(36, 24, '_menu_item_type', 'post_type'),
(37, 24, '_menu_item_menu_item_parent', '0'),
(38, 24, '_menu_item_object_id', '12'),
(39, 24, '_menu_item_object', 'page'),
(40, 24, '_menu_item_target', ''),
(41, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 24, '_menu_item_xfn', ''),
(43, 24, '_menu_item_url', ''),
(44, 25, '_menu_item_type', 'custom'),
(45, 25, '_menu_item_menu_item_parent', '0'),
(46, 25, '_menu_item_object_id', '25'),
(47, 25, '_menu_item_object', 'custom'),
(48, 25, '_menu_item_target', ''),
(49, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 25, '_menu_item_xfn', ''),
(51, 25, '_menu_item_url', 'https://www.yelp.com'),
(52, 26, '_menu_item_type', 'custom'),
(53, 26, '_menu_item_menu_item_parent', '0'),
(54, 26, '_menu_item_object_id', '26'),
(55, 26, '_menu_item_object', 'custom'),
(56, 26, '_menu_item_target', ''),
(57, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 26, '_menu_item_xfn', ''),
(59, 26, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(60, 27, '_menu_item_type', 'custom'),
(61, 27, '_menu_item_menu_item_parent', '0'),
(62, 27, '_menu_item_object_id', '27'),
(63, 27, '_menu_item_object', 'custom'),
(64, 27, '_menu_item_target', ''),
(65, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 27, '_menu_item_xfn', ''),
(67, 27, '_menu_item_url', 'https://twitter.com/wordpress'),
(68, 28, '_menu_item_type', 'custom'),
(69, 28, '_menu_item_menu_item_parent', '0'),
(70, 28, '_menu_item_object_id', '28'),
(71, 28, '_menu_item_object', 'custom'),
(72, 28, '_menu_item_target', ''),
(73, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 28, '_menu_item_xfn', ''),
(75, 28, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(76, 29, '_menu_item_type', 'custom'),
(77, 29, '_menu_item_menu_item_parent', '0'),
(78, 29, '_menu_item_object_id', '29'),
(79, 29, '_menu_item_object', 'custom'),
(80, 29, '_menu_item_target', ''),
(81, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 29, '_menu_item_xfn', ''),
(83, 29, '_menu_item_url', 'mailto:wordpress@example.com'),
(84, 15, '_wp_trash_meta_status', 'publish'),
(85, 15, '_wp_trash_meta_time', '1495620719'),
(86, 30, '_edit_last', '1'),
(87, 30, '_edit_lock', '1495957679:1'),
(88, 32, '_wp_attached_file', '2017/05/testing.wordpress.2017-05-28-3.xml_.txt'),
(89, 32, '_wp_attachment_context', 'import'),
(92, 2, '_wp_page_template', 'default'),
(93, 2, '_wp_page_template', 'default'),
(94, 10, '_edit_last', '1'),
(95, 30, '_edit_last', '1'),
(96, 30, '_edit_last', '1'),
(97, 34, '_edit_last', '1'),
(98, 10, '_edit_lock', '1497096938:1'),
(99, 34, '_edit_lock', '1496070693:1'),
(100, 36, '_wp_trash_meta_status', 'publish'),
(101, 36, '_wp_trash_meta_time', '1496047769'),
(102, 14, '_edit_lock', '1496069224:1'),
(103, 14, '_edit_last', '1'),
(104, 40, '_edit_lock', '1497020374:1'),
(105, 40, '_edit_last', '1'),
(106, 42, '_edit_last', '1'),
(109, 42, '_edit_lock', '1496182454:1'),
(110, 49, '_wp_trash_meta_status', 'publish'),
(111, 49, '_wp_trash_meta_time', '1496502512'),
(112, 40, '_wpb_vc_js_status', 'false'),
(115, 40, '_wp_trash_meta_status', 'publish'),
(116, 40, '_wp_trash_meta_time', '1497021229') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(117, 40, '_wp_desired_post_slug', 'naim'),
(118, 40, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(119, 10, '_wp_page_template', 'default'),
(120, 10, '_wpb_vc_js_status', 'true'),
(121, 10, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(122, 14, '_wp_trash_meta_status', 'publish'),
(123, 14, '_wp_trash_meta_time', '1497021274'),
(124, 14, '_wp_desired_post_slug', 'a-homepage-section'),
(125, 14, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(126, 10, 'slide_template', 'default'),
(127, 54, '_wp_attached_file', '2017/06/753f6a74-ee75-42c2-9ff2-e82e55dd2d9e.jpg'),
(128, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1108;s:6:"height";i:736;s:4:"file";s:48:"2017/06/753f6a74-ee75-42c2-9ff2-e82e55dd2d9e.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"753f6a74-ee75-42c2-9ff2-e82e55dd2d9e-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"753f6a74-ee75-42c2-9ff2-e82e55dd2d9e-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"753f6a74-ee75-42c2-9ff2-e82e55dd2d9e-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"753f6a74-ee75-42c2-9ff2-e82e55dd2d9e-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post_thumbnail";a:4:{s:4:"file";s:48:"753f6a74-ee75-42c2-9ff2-e82e55dd2d9e-600x250.jpg";s:5:"width";i:600;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:16:"post_thumbnail_1";a:4:{s:4:"file";s:46:"753f6a74-ee75-42c2-9ff2-e82e55dd2d9e-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 55, '_wp_attached_file', '2017/06/14611149_10206639925750038_1525383254583045129_n.jpg'),
(130, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:640;s:4:"file";s:60:"2017/06/14611149_10206639925750038_1525383254583045129_n.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"14611149_10206639925750038_1525383254583045129_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"14611149_10206639925750038_1525383254583045129_n-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:60:"14611149_10206639925750038_1525383254583045129_n-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post_thumbnail";a:4:{s:4:"file";s:60:"14611149_10206639925750038_1525383254583045129_n-600x250.jpg";s:5:"width";i:600;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:16:"post_thumbnail_1";a:4:{s:4:"file";s:58:"14611149_10206639925750038_1525383254583045129_n-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 56, '_wp_trash_meta_status', 'publish'),
(132, 56, '_wp_trash_meta_time', '1497023943'),
(135, 58, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(136, 58, '_menu_item_type', 'post_type'),
(137, 58, '_menu_item_menu_item_parent', '0'),
(138, 58, '_menu_item_object_id', '10'),
(139, 58, '_menu_item_object', 'page'),
(140, 58, '_menu_item_target', ''),
(141, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 58, '_menu_item_xfn', ''),
(143, 58, '_menu_item_url', ''),
(145, 59, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(146, 59, '_menu_item_type', 'custom'),
(147, 59, '_menu_item_menu_item_parent', '0'),
(148, 59, '_menu_item_object_id', '59'),
(149, 59, '_menu_item_object', 'custom'),
(150, 59, '_menu_item_target', ''),
(151, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 59, '_menu_item_xfn', ''),
(153, 59, '_menu_item_url', '#Destinations'),
(155, 60, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(156, 60, '_menu_item_type', 'custom'),
(157, 60, '_menu_item_menu_item_parent', '0'),
(158, 60, '_menu_item_object_id', '60'),
(159, 60, '_menu_item_object', 'custom'),
(160, 60, '_menu_item_target', ''),
(161, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 60, '_menu_item_xfn', ''),
(163, 60, '_menu_item_url', '#Latest'),
(165, 61, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(166, 61, '_menu_item_type', 'custom'),
(167, 61, '_menu_item_menu_item_parent', '0'),
(168, 61, '_menu_item_object_id', '61'),
(169, 61, '_menu_item_object', 'custom'),
(170, 61, '_menu_item_target', ''),
(171, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(172, 61, '_menu_item_xfn', ''),
(173, 61, '_menu_item_url', '#Things'),
(175, 63, '_wp_trash_meta_status', 'publish'),
(176, 63, '_wp_trash_meta_time', '1497041165'),
(177, 64, '_wp_trash_meta_status', 'publish'),
(178, 64, '_wp_trash_meta_time', '1497041699') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-24 10:07:52', '2017-05-24 10:07:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-05-24 10:07:52', '2017-05-24 10:07:52', '', 0, 'http:https://github.com/Naimabdelkefi/test/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-24 10:07:52', '2017-05-24 10:07:52', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http:https://github.com/Naimabdelkefi/test/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-05-24 10:07:52', '2017-05-24 10:07:52', '', 0, 'http:https://github.com/Naimabdelkefi/test/?page_id=2', 0, 'page', '', 0),
(10, 1, '2017-05-24 10:11:50', '2017-05-24 10:11:50', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="50"][/vc_column][/vc_row][vc_row el_class="#Destinations" el_id="Destinations"][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-06-10 00:08:24', '2017-06-10 00:08:24', '', 0, 'http:https://github.com/Naimabdelkefi/test/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 0, 'http:https://github.com/Naimabdelkefi/test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 0, 'http:https://github.com/Naimabdelkefi/test/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 0, 'http:https://github.com/Naimabdelkefi/test/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts. test sync db', 'A homepage section', '', 'trash', 'closed', 'closed', '', 'a-homepage-section__trashed', '', '', '2017-06-09 15:14:34', '2017-06-09 15:14:34', '', 0, 'http:https://github.com/Naimabdelkefi/test/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-05-24 10:11:50', '2017-05-24 10:11:50', '{"widget_text[6]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"56ae911d435660434ec6f37eea626b90"},"type":"option","user_id":1},"widget_search[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==","title":"Search","is_widget_customizer_js_value":true,"instance_hash_key":"d25d28b914719480e932834b5380ee03"},"type":"option","user_id":1},"widget_text[7]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"b96e8a6dfc9d5d9fa865cd9ecaa2bc3c"},"type":"option","user_id":1},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-6","search-3","text-7"],"type":"option","user_id":1},"widget_text[8]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoyMDA6IjxwPjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPjxiciAvPjEyMyBNYWluIFN0cmVldDxiciAvPk5ldyBZb3JrLCBOWSAxMDAwMTwvcD48cD48c3Ryb25nPkhvdXJzPC9zdHJvbmc+PGJyIC8+TW9uZGF5Jm1kYXNoO0ZyaWRheTogOTowMEFNJm5kYXNoOzU6MDBQTTxiciAvPlNhdHVyZGF5ICZhbXA7IFN1bmRheTogMTE6MDBBTSZuZGFzaDszOjAwUE08L3A+Ijt9","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"56ae911d435660434ec6f37eea626b90"},"type":"option","user_id":1},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-8"],"type":"option","user_id":1},"widget_text[9]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7fQ==","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"b96e8a6dfc9d5d9fa865cd9ecaa2bc3c"},"type":"option","user_id":1},"widget_search[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==","title":"Search","is_widget_customizer_js_value":true,"instance_hash_key":"d25d28b914719480e932834b5380ee03"},"type":"option","user_id":1},"sidebars_widgets[sidebar-3]":{"starter_content":true,"value":["text-9","search-4"],"type":"option","user_id":1},"nav_menus_created_posts":{"starter_content":true,"value":[10,11,12,13,14],"type":"option","user_id":1},"nav_menu[-1]":{"value":{"name":"Top Menu","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-1]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Home","url":"http:https:\\/\\/github.com\\/Naimabdelkefi\\/test\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-1,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-2]":{"value":{"object_id":11,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"About","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"About","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-3]":{"value":{"object_id":13,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Blog","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Blog","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-4]":{"value":{"object_id":12,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Contact","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Contact","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[top]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1},"nav_menu[-5]":{"value":{"name":"Social Links Menu","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-5]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Yelp","url":"https:\\/\\/www.yelp.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-6]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-7]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":2,"type":"custom","title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-8]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":3,"type":"custom","title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-9]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":4,"type":"custom","title":"Email","url":"mailto:wordpress@example.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[social]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1},"page_on_front":{"starter_content":true,"value":10,"type":"option","user_id":1},"page_for_posts":{"starter_content":true,"value":13,"type":"option","user_id":1},"twentyseventeen::panel_1":{"starter_content":true,"value":14,"type":"theme_mod","user_id":1},"twentyseventeen::panel_2":{"starter_content":true,"value":11,"type":"theme_mod","user_id":1},"twentyseventeen::panel_3":{"starter_content":true,"value":13,"type":"theme_mod","user_id":1},"twentyseventeen::panel_4":{"starter_content":true,"value":12,"type":"theme_mod","user_id":1},"blogname":{"value":"testing","type":"option","user_id":1},"blogdescription":{"value":"Hey hey","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '8b387c50-2dd0-4ffb-a9c7-f69d04caa204', '', '', '2017-05-24 10:11:50', '2017-05-24 10:11:50', '', 0, 'http:https://github.com/Naimabdelkefi/test/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2017-05-24 10:11:50', '2017-05-24 10:11:50', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-24 10:11:50', '2017-05-24 10:11:50', '', 10, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 11, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 12, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 13, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/13-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-05-24 10:11:51', '2017-05-24 10:11:51', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-05-24 10:11:51', '2017-05-24 10:11:51', '', 14, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/14-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-05-24 10:11:52', '2017-05-24 10:11:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-05-24 10:11:52', '2017-05-24 10:11:52', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/home/', 0, 'nav_menu_item', '', 0),
(22, 1, '2017-05-24 10:11:53', '2017-05-24 10:11:53', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-05-24 10:11:53', '2017-05-24 10:11:53', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/22/', 1, 'nav_menu_item', '', 0),
(23, 1, '2017-05-24 10:11:54', '2017-05-24 10:11:54', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-05-24 10:11:54', '2017-05-24 10:11:54', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/23/', 2, 'nav_menu_item', '', 0),
(24, 1, '2017-05-24 10:11:54', '2017-05-24 10:11:54', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-05-24 10:11:54', '2017-05-24 10:11:54', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/24/', 3, 'nav_menu_item', '', 0),
(25, 1, '2017-05-24 10:11:55', '2017-05-24 10:11:55', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-05-24 10:11:55', '2017-05-24 10:11:55', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/yelp/', 0, 'nav_menu_item', '', 0),
(26, 1, '2017-05-24 10:11:56', '2017-05-24 10:11:56', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-05-24 10:11:56', '2017-05-24 10:11:56', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/facebook/', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-05-24 10:11:56', '2017-05-24 10:11:56', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-05-24 10:11:56', '2017-05-24 10:11:56', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/twitter/', 2, 'nav_menu_item', '', 0),
(28, 1, '2017-05-24 10:11:57', '2017-05-24 10:11:57', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-05-24 10:11:57', '2017-05-24 10:11:57', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/instagram/', 3, 'nav_menu_item', '', 0),
(29, 1, '2017-05-24 10:11:58', '2017-05-24 10:11:58', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2017-05-24 10:11:58', '2017-05-24 10:11:58', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/24/email/', 4, 'nav_menu_item', '', 0),
(30, 1, '2017-05-28 07:50:15', '2017-05-28 07:50:15', 'Bonjouuuuur', 'My post', '', 'publish', 'open', 'open', '', 'my-post', '', '', '2017-05-28 07:50:15', '2017-05-28 07:50:15', '', 0, 'http:https://github.com/Naimabdelkefi/test/?p=30', 0, 'post', '', 0),
(31, 1, '2017-05-28 07:50:15', '2017-05-28 07:50:15', 'Bonjouuuuur', 'My post', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-05-28 07:50:15', '2017-05-28 07:50:15', '', 30, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/28/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-05-28 15:19:51', '2017-05-28 15:19:51', 'http:https://github.com/Naimabdelkefi/test/wp-content/uploads/2017/05/testing.wordpress.2017-05-28-3.xml_.txt', 'testing.wordpress.2017-05-28-3.xml_.txt', '', 'private', 'open', 'closed', '', 'testing-wordpress-2017-05-28-3-xml_-txt', '', '', '2017-05-28 15:19:51', '2017-05-28 15:19:51', '', 0, 'http:https://github.com/Naimabdelkefi/test/wp-content/uploads/2017/05/testing.wordpress.2017-05-28-3.xml_.txt', 0, 'attachment', '', 0),
(34, 1, '2017-05-28 14:57:26', '2017-05-28 14:57:26', '1 2 3 4 c c++ c c++ :p hahahahah', 'test test', '', 'publish', 'open', 'open', '', 'test-test', '', '', '2017-05-28 14:57:26', '2017-05-28 14:57:26', '', 0, 'http://localhost\\testwp/?p=32', 0, 'post', '', 0),
(35, 1, '2017-05-28 15:26:08', '2017-05-28 15:26:08', 'hahahahahahafik : pbehi xD ayaxD a touute :p;* ;* :* xD w hahahthebna nekhdmou el site bel teamviewer hahahahahhahhchaklna hhhh aplus ay', 'test test', '', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2017-05-28 15:26:08', '2017-05-28 15:26:08', '', 34, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/28/34-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-29 08:49:28', '2017-05-29 08:49:28', '{"blogname":{"value":"testing db sync","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'cfdf4803-16c7-4ac6-b792-74f231c37298', '', '', '2017-05-29 08:49:28', '2017-05-29 08:49:28', '', 0, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/29/cfdf4803-16c7-4ac6-b792-74f231c37298/', 0, 'customize_changeset', '', 0),
(38, 1, '2017-05-29 08:50:00', '2017-05-29 08:50:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts. test sync db', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-05-29 08:50:00', '2017-05-29 08:50:00', '', 14, 'http:https://github.com/Naimabdelkefi/test/index.php/2017/05/29/14-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-05-30 22:15:48', '2017-05-30 22:15:48', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time. hello naim is here :p :p', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-30 22:15:48', '2017-05-30 22:15:48', '', 10, 'http://localhost\\testwp/index.php/2017/05/30/10-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-05-30 22:16:17', '2017-05-30 22:16:17', 'nn', 'naim', '', 'trash', 'closed', 'closed', '', 'naim__trashed', '', '', '2017-06-09 15:13:49', '2017-06-09 15:13:49', '', 0, 'http://localhost\\testwp/?page_id=40', 0, 'page', '', 0),
(41, 1, '2017-05-30 22:16:17', '2017-05-30 22:16:17', 'nn', 'naim', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-30 22:16:17', '2017-05-30 22:16:17', '', 40, 'http://localhost\\testwp/index.php/2017/05/30/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-05-30 22:16:34', '2017-05-30 22:16:34', '', 'nn', '', 'publish', 'open', 'open', '', 'nn', '', '', '2017-05-30 22:16:34', '2017-05-30 22:16:34', '', 0, 'http://localhost\\testwp/?p=42', 0, 'post', '', 0),
(43, 1, '2017-05-30 22:16:34', '2017-05-30 22:16:34', '', 'nn', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-05-30 22:16:34', '2017-05-30 22:16:34', '', 42, 'http://localhost\\testwp/index.php/2017/05/30/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-05-30 22:53:22', '2017-05-30 22:53:22', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time. hello naim is here :p :p xD xD hahahahahha ma8ir taksir keryem exportio bl plguin w yofa l7ob xD', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-30 22:53:22', '2017-05-30 22:53:22', '', 10, 'http://localhost\\testwp/index.php/2017/05/30/10-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-05-30 23:01:21', '2017-05-30 23:01:21', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time. hello naim is here :p :p xD xD hahahahahha ma8ir taksir keryem exportio bl plguin w yofa l7ob xD w  chno l7al xD pour le moment to naamlou haka xD voila xD injez ya bo galb nharin xD w ahna nt3arko hh hahahhaaha ay njio lswh ih chamlna fi theme? ey dkika, faza okhra, ki nabdew nekhdmou fard wakt mochkel xDkifh? khater ena maandich en temps réel enti chnia zedt, donc ki n\'importi mteek, mteei bech yetfassakh xD Lezedima naamlo copi ml db sur pc en cas ou :p de plus ya5i lazm a3lina n5dmo fard wa9t xD :p ey voila xD lezem naamlou reglement wala faza xD akid :p taw ki tched ro7ha l5dema taw nraw kifh :p behi xD hay a narjoou facebook aleh laadheb hahahahhaha :p hahaha lazmha capture :p w tahbet fl groupe xD hahahahah ey :\'DDDDD ms', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-30 23:01:21', '2017-05-30 23:01:21', '', 10, 'http://localhost\\testwp/index.php/2017/05/30/10-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-05-30 23:02:24', '2017-05-30 23:02:24', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time. hello naim is here :p :p xD xD hahahahahha ma8ir taksir keryem exportio bl plguin w yofa l7ob xD w  chno l7al xD pour le moment to naamlou haka xD voila xD injez ya bo galb nharin xD w ahna nt3arko hh hahahhaaha ay njio lswh ih chamlna fi theme? ey dkika, faza okhra, ki nabdew nekhdmou fard wakt mochkel xDkifh? khater ena maandich en temps réel enti chnia zedt, donc ki n\'importi mteek, mteei bech yetfassakh xD Lezedima naamlo copi ml db sur pc en cas ou :p de plus ya5i lazm a3lina n5dmo fard wa9t xD :p ey voila xD lezem naamlou reglement wala faza xD akid :p taw ki tched ro7ha l5dema taw nraw kifh :p behi xD hay a narjoou facebook aleh laadheb hahahahhaha :p hahaha lazmha capture :p w tahbet fl groupe xD hahahahah ey :\'DDDDD ms3a ntha7k wahdi kl mahbol hhh ti hatena kol marra haka hahahahhaha xD Xd done ;p hahahahaha', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-05-30 23:02:24', '2017-05-30 23:02:24', '', 10, 'http://localhost\\testwp/index.php/2017/05/30/10-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-06-03 15:02:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-03 15:02:58', '0000-00-00 00:00:00', '', 0, 'http://localhost\\testwp/?p=48', 0, 'post', '', 0),
(49, 1, '2017-06-03 15:08:31', '2017-06-03 15:08:31', '{"blogname":{"value":"Tunizil","type":"option","user_id":1},"hestia::accent_color":{"value":"#e74c27","type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '062313a9-b70e-44b7-b2ab-c354e0e20761', '', '', '2017-06-03 15:08:31', '2017-06-03 15:08:31', '', 0, 'http://localhost\\testwp/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2017-06-09 00:22:20', '0000-00-00 00:00:00', '{"hestia::hestia_features_hide":{"value":true,"type":"theme_mod","user_id":1},"hestia::hestia_team_hide":{"value":true,"type":"theme_mod","user_id":1},"hestia::hestia_blog_hide":{"value":false,"type":"theme_mod","user_id":1},"hestia::hestia_testimonials_hide":{"value":true,"type":"theme_mod","user_id":1}}', '', '', 'auto-draft', 'closed', 'closed', '', 'e819e585-8ea6-4123-baf5-a9b53e1adc28', '', '', '2017-06-09 00:22:20', '2017-06-09 00:22:20', '', 0, 'http://localhost\\testwp/?p=50', 0, 'customize_changeset', '', 0),
(51, 1, '2017-06-09 15:01:47', '2017-06-09 15:01:47', 'nn', 'naim', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2017-06-09 15:01:47', '2017-06-09 15:01:47', '', 40, 'http://localhost\\testwp/index.php/2017/06/09/40-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2017-06-09 15:29:29', '2017-06-09 15:29:29', '[rev_slider alias="home_slide"]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-09 15:29:29', '2017-06-09 15:29:29', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-06-09 15:32:30', '2017-06-09 15:32:30', '', '753f6a74-ee75-42c2-9ff2-e82e55dd2d9e', '', 'inherit', 'open', 'closed', '', '753f6a74-ee75-42c2-9ff2-e82e55dd2d9e', '', '', '2017-06-09 15:32:30', '2017-06-09 15:32:30', '', 0, 'http://localhost\\testwp/wp-content/uploads/2017/06/753f6a74-ee75-42c2-9ff2-e82e55dd2d9e.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-06-09 15:35:35', '2017-06-09 15:35:35', '', '14611149_10206639925750038_1525383254583045129_n', '', 'inherit', 'open', 'closed', '', '14611149_10206639925750038_1525383254583045129_n', '', '', '2017-06-09 15:35:35', '2017-06-09 15:35:35', '', 0, 'http://localhost\\testwp/wp-content/uploads/2017/06/14611149_10206639925750038_1525383254583045129_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-06-09 15:59:02', '2017-06-09 15:59:02', '{"one-page::nav_menu_locations[frontpage-menu]":{"value":4,"type":"theme_mod","user_id":1},"one-page::nav_menu_locations[subpage-menu]":{"value":4,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'c6e60ffc-f0c7-4229-a9ed-ef04d887f6c4', '', '', '2017-06-09 15:59:02', '2017-06-09 15:59:02', '', 0, 'http://localhost\\testwp/?p=56', 0, 'customize_changeset', '', 0),
(58, 1, '2017-06-09 20:37:34', '2017-06-09 20:37:34', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2017-06-09 20:37:34', '2017-06-09 20:37:34', '', 0, 'http://localhost\\testwp/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2017-06-09 20:37:34', '2017-06-09 20:37:34', '', 'Destinations', '', 'publish', 'closed', 'closed', '', 'destinations', '', '', '2017-06-09 20:37:34', '2017-06-09 20:37:34', '', 0, 'http://localhost\\testwp/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2017-06-09 20:37:34', '2017-06-09 20:37:34', '', 'Latest', '', 'publish', 'closed', 'closed', '', 'latest', '', '', '2017-06-09 20:37:34', '2017-06-09 20:37:34', '', 0, 'http://localhost\\testwp/?p=60', 2, 'nav_menu_item', '', 0),
(61, 1, '2017-06-09 20:37:35', '2017-06-09 20:37:35', '', 'Things to do', '', 'publish', 'closed', 'closed', '', 'things-to-do', '', '', '2017-06-09 20:37:35', '2017-06-09 20:37:35', '', 0, 'http://localhost\\testwp/?p=61', 4, 'nav_menu_item', '', 0),
(63, 1, '2017-06-09 20:46:04', '2017-06-09 20:46:04', '{"twentysixteen-child::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '70ae78a2-8711-4416-aa7b-a130c11d700a', '', '', '2017-06-09 20:46:04', '2017-06-09 20:46:04', '', 0, 'http://localhost\\testwp/index.php/2017/06/09/70ae78a2-8711-4416-aa7b-a130c11d700a/', 0, 'customize_changeset', '', 0),
(64, 1, '2017-06-09 20:54:59', '2017-06-09 20:54:59', '{"twentysixteen-child::background_color":{"value":"#1a1a1a","type":"theme_mod","user_id":1},"twentysixteen-child::color_scheme":{"value":"default","type":"theme_mod","user_id":1},"twentysixteen-child::page_background_color":{"value":"#ffffff","type":"theme_mod","user_id":1},"twentysixteen-child::link_color":{"value":"#007acc","type":"theme_mod","user_id":1},"twentysixteen-child::main_text_color":{"value":"#1a1a1a","type":"theme_mod","user_id":1},"twentysixteen-child::secondary_text_color":{"value":"#686868","type":"theme_mod","user_id":1},"blogdescription":{"value":"","type":"option","user_id":1},"twentysixteen-child::header_textcolor":{"value":"#1a1a1a","type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '4f082143-9be0-451d-8521-d9598ab51694', '', '', '2017-06-09 20:54:59', '2017-06-09 20:54:59', '', 0, 'http://localhost\\testwp/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2017-06-09 23:06:45', '2017-06-09 23:06:45', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="250px"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-09 23:06:45', '2017-06-09 23:06:45', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-06-10 00:08:23', '2017-06-10 00:08:23', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="50"][/vc_column][/vc_row][vc_row el_class="#Destinations" el_id="Destinations"][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2017-06-10 00:08:23', '2017-06-10 00:08:23', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-autosave-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2017-06-09 23:15:05', '2017-06-09 23:15:05', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="250px"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-09 23:15:05', '2017-06-09 23:15:05', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-06-09 23:15:36', '2017-06-09 23:15:36', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-09 23:15:36', '2017-06-09 23:15:36', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-06-09 23:16:38', '2017-06-09 23:16:38', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_text_separator title="Destinations"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-09 23:16:38', '2017-06-09 23:16:38', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-06-09 23:17:39', '2017-06-09 23:17:39', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="50"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-09 23:17:39', '2017-06-09 23:17:39', '', 10, 'http://localhost\\testwp/index.php/2017/06/09/10-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-06-10 00:02:28', '2017-06-10 00:02:28', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="50"][/vc_column][/vc_row][vc_row el_class="#Destinations"][vc_column el_class="#Destinations"][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-10 00:02:28', '2017-06-10 00:02:28', '', 10, 'http://localhost\\testwp/index.php/2017/06/10/10-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-06-10 00:03:00', '2017-06-10 00:03:00', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="50"][/vc_column][/vc_row][vc_row el_class="#Destinations"][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-10 00:03:00', '2017-06-10 00:03:00', '', 10, 'http://localhost\\testwp/index.php/2017/06/10/10-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-06-10 00:08:24', '2017-06-10 00:08:24', '[vc_row][vc_column][rev_slider alias="home_slide"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="50"][/vc_column][/vc_row][vc_row el_class="#Destinations" el_id="Destinations"][vc_column][vc_custom_heading text="Destinations" font_container="tag:h2|text_align:center" google_fonts="font_family:Abril%20Fatface%3Aregular"][/vc_column][/vc_row][vc_row][vc_column][vc_raw_html]JTNDY2VudGVyJTNFJTBBJTNDZGl2JTIwY2xhc3MlM0QlMjJtYXAlMjIlM0UlMEElMDklM0NpbWclMjBzcmMlM0QlMjJ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTclMkYwNSUyRnZvaWQucG5nJTIyJTIwd2lkdGglM0QlMjIyODMlMjIlMjBoZWlnaHQlM0QlMjI1OTclMjIlMjB1c2VtYXAlM0QlMjIlMjNNYXAlMjIlMkYlM0UlMEElMjAlMjAlMjAlMjAlM0NtYXAlMjBuYW1lJTNEJTIyTWFwJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjQ3JTJDNzclMkM0NiUyQzc2JTJDNDUlMkM3NCUyQzcyJTJDNTYlMkM3OCUyQzQ2JTJDODclMkMzNSUyQzEwNSUyQzIyJTJDMTE3JTJDMTElMkMxMjYlMkMxNCUyQzEzNCUyQzklMkMxNDMlMkM2JTJDMTUzJTJDNSUyQzE1OCUyQzQlMkMxNjQlMkM3JTJDMTc0JTJDMTElMkMxODUlMkMxNCUyQzE3NiUyQzIyJTJDMTcyJTJDMzIlMkMxNjAlMkMzNSUyQzE0MCUyQzQ0JTJDMTQ1JTJDNTElMkMxNTMlMkM1NiUyQzE1NiUyQzYwJTJDMTYwJTJDNjclMkMxNTQlMkM3OCUyQzE0NSUyQzgwJTJDMTI3JTJDODQlMkMxMDklMkM4MSUyQzk0JTJDODElMkM4NiUyQzgxJTJDNzAlMkM4MyUyQzYxJTJDODUlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjE0MiUyQzQ1JTJDMTU4JTJDMzclMkMxNzElMkMyOSUyQzE4MCUyQzIxJTJDMTg4JTJDMzclMkMxOTMlMkM0NCUyQzE4OCUyQzUyJTJDMTk3JTJDNTclMkMxOTclMkM2NCUyQzE5MyUyQzc1JTJDMTg3JTJDNzQlMkMxNjYlMkM2MiUyQzE2MSUyQzY3JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMTElMkM4OCUyQzIwMyUyQzg0JTJDMTk5JTJDODQlMkMxOTQlMkM3NCUyQzE5MSUyQzc0JTJDMTk5JTJDNTglMkMyMDglMkM1NyUyQzIxMyUyQzQ2JTJDMjE2JTJDNDQlMkMyMjIlMkM0MyUyQzIzMCUyQzM3JTJDMjM3JTJDMjklMkMyNDMlMkMyNyUyQzI0NiUyQzMwJTJDMjUwJTJDNDIlMkMyMzQlMkM2MiUyQzIyOSUyQzc4JTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIxNDYlMkM5MyUyQzE1NSUyQzc3JTJDMTY0JTJDNjQlMkMxODIlMkM3MCUyQzE5MyUyQzgxJTJDMjA0JTJDODYlMkMyMDklMkM4NiUyQzIwNyUyQzEwNCUyQzIwNSUyQzExNSUyQzIwOSUyQzEyNSUyQzIxNSUyQzEzMiUyQzIxOSUyQzEzNyUyQzIyNyUyQzEzOCUyQzIzNiUyQzE0OSUyQzI0MyUyQzE1NiUyQzI0MyUyQzE2NyUyQzI0OSUyQzE4NSUyQzI0MSUyQzE5MyUyQzIzMiUyQzE4OCUyQzIyNiUyQzE4NCUyQzIxMyUyQzE4NCUyQzIwOCUyQzE4OCUyQzIwMSUyQzE5MiUyQzE5MSUyQzE5MiUyQzE4NiUyQzE3NCUyQzE4NSUyQzE2NCUyQzE5MCUyQzE1OCUyQzE5MiUyQzE1MyUyQzE4MyUyQzEzMSUyQzE4OCUyQzExNSUyQzE4NSUyQzEwOCUyQzE3NyUyQzExMCUyQzE3NCUyQzExMyUyQzE2NSUyQzExMyUyQzE1NyUyQzExMSUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTIlMkMyMjMlMkM1MSUyQzIxMCUyQzU0JTJDMTk5JTJDNjIlMkMxOTAlMkM2NCUyQzE4MyUyQzU4JTJDMTc2JTJDNTklMkMxNjUlMkM2MSUyQzE1MyUyQzYxJTJDMTQ4JTJDNzQlMkMxNDIlMkM4MSUyQzEzOCUyQzEwMCUyQzE0MiUyQzEwOCUyQzE1MyUyQzExOSUyQzE1OCUyQzEyOSUyQzE2MiUyQzEzMSUyQzE1NyUyQzEyNyUyQzE0NSUyQzEyNSUyQzE0MyUyQzEzNiUyQzE0MCUyQzEzOCUyQzEzMyUyQzEzOSUyQzEyOCUyQzE1NyUyQzExMCUyQzE3MiUyQzExNCUyQzE4NSUyQzExMCUyQzE4OCUyQzEyMSUyQzE4MyUyQzEyOSUyQzE4NyUyQzE0MCUyQzE5MSUyQzE1MSUyQzE4OCUyQzE1OCUyQzE4NCUyQzE2NyUyQzE4NCUyQzE3NSUyQzE5MCUyQzE4OCUyQzE5MiUyQzE5MiUyQzIwMSUyQzE5NCUyQzIwNyUyQzE4OSUyQzIxOCUyQzE4MyUyQzIyOCUyQzE4OSUyQzIzNCUyQzE5NCUyQzIzOSUyQzE5NSUyQzIzNyUyQzIwMyUyQzIzNSUyQzIxMiUyQzI1OSUyQzIxOCUyQzI2MyUyQzIyNSUyQzI1MSUyQzIzMyUyQzIyMSUyQzIzMiUyQzIxMyUyQzI0MSUyQzIwMCUyQzI0NiUyQzE5NCUyQzI1MyUyQzE4MSUyQzI1OSUyQzE3MyUyQzI2OCUyQzE2NiUyQzI3MCUyQzE0OCUyQzI2MSUyQzE0MiUyQzI1NCUyQzEzNyUyQzI0OCUyQzEzMSUyQzI0NCUyQzEyMyUyQzIzOCUyQzEyMSUyQzIzMSUyQzExMSUyQzIzMCUyQzkyJTJDMjI2JTJDODUlMkMyMjclMkM3NCUyQzIzMiUyMiUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMEElMjAlMjAlMjAlMjAlMjAlMjAlMEElMjAlMjAlMjAlMjAlMjAlMjAlM0NhcmVhJTIwc2hhcGUlM0QlMjJwb2x5JTIyJTIwY29vcmRzJTNEJTIyNTklMkM4NiUyQzc1JTJDODMlMkMxMDElMkM4MiUyQzExNCUyQzgzJTJDMTI1JTJDODMlMkMxNDQlMkM4MyUyQzE1MCUyQzgyJTJDMTQ5JTJDOTUlMkMxNTIlMkMxMDYlMkMxNTAlMkMxMTMlMkMxNDIlMkMxMTglMkMxMzYlMkMxMjMlMkMxMzclMkMxMzAlMkMxMzIlMkMxNDElMkMxMjQlMkMxNDIlMkMxMjclMkMxNTIlMkMxMjglMkMxNjElMkMxMDUlMkMxNDklMkM5NiUyQzEzOCUyQzg0JTJDMTM3JTJDNzUlMkMxMzglMkM3MSUyQzE0NCUyQzY2JTJDMTQ2JTJDNTclMkMxNDglMkM1MyUyQzE0MiUyQzUxJTJDMTMxJTJDNTAlMkMxMjQlMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTBBJTIwJTIwJTIwJTIwJTIwJTIwJTNDYXJlYSUyMHNoYXBlJTNEJTIycG9seSUyMiUyMGNvb3JkcyUzRCUyMjU0JTJDMjMxJTJDNjglMkMyMzQlMkM4NSUyQzIzMiUyQzEwMyUyQzIzMiUyQzExNiUyQzIzOSUyQzEzMCUyQzI0OCUyQzEzOSUyQzI1MyUyQzE1MSUyQzI2NyUyQzE2OCUyQzI3NCUyQzE3MyUyQzI3NCUyQzE3NiUyQzI5MCUyQzE4NyUyQzMwNiUyQzIwMiUyQzMxNCUyQzIyMyUyQzMxMSUyQzIxOSUyQzMyOCUyQzIyOSUyQzMzMSUyQzIzNSUyQzMyMiUyQzI1NCUyQzMyMiUyQzI0OSUyQzMzNSUyQzI1NCUyQzM0NCUyQzI1NCUyQzM1NCUyQzI3OCUyQzM1NyUyQzI3NiUyQzM5MSUyQzI3NyUyQzQwMSUyQzI3OCUyQzQwOSUyQzI3NCUyQzQyMiUyQzI1NyUyQzQzMSUyQzIzOCUyQzQzOSUyQzIyMCUyQzQ1NSUyQzIxMSUyQzQ2OCUyQzIwMSUyQzQ3NSUyQzE5MCUyQzQ3NCUyQzE4NSUyQzQ5NCUyQzE5MiUyQzUyOCUyQzE4NyUyQzU1MSUyQzE3NyUyQzU2NiUyQzE2NiUyQzU4MyUyQzEzNSUyQzU4NiUyQzEwNyUyQzQ0NyUyQzU2JTJDNDA5JTJDNDglMkMzNzQlMkMyMSUyQzM1NCUyQzUlMkMzMTMlMkM3JTJDMjcyJTIyJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUwQSUyMCUyMCUyMCUyMCUyMCUyMCUwQSUyMCUyMCUyMCUyMCUyMCUyMCUzQ2FyZWElMjBzaGFwZSUzRCUyMnBvbHklMjIlMjBjb29yZHMlM0QlMjIyMjQlMkMzMDglMkMyMjUlMkMyOTYlMkMyMzglMkMyOTclMkMyNDYlMkMzMDQlMkMyMzQlMkMzMTclMjIlMjBocmVmJTNEJTIyJTIzJTIyJTNFJTBBJTIwJTIwJTIwJTIwJTNDJTJGbWFwJTNFJTBBJTNDJTJGZGl2JTNFJTBBJTNDJTJGY2VudGVyJTNF[/vc_raw_html][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-06-10 00:08:24', '2017-06-10 00:08:24', '', 10, 'http://localhost\\testwp/index.php/2017/06/10/10-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_responsive_menu`
#

DROP TABLE IF EXISTS `wp_responsive_menu`;


#
# Table structure of table `wp_responsive_menu`
#

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(5000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_responsive_menu`
#
INSERT INTO `wp_responsive_menu` ( `name`, `value`) VALUES
('accordion_animation', 'off'),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('active_arrow_shape', '▲'),
('animation_speed', '0.5'),
('animation_type', 'slide'),
('arrow_position', 'right'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('breakpoint', '8000'),
('button_background_colour', '#000'),
('button_background_colour_active', '#000'),
('button_background_colour_hover', '#000'),
('button_click_animation', 'boring'),
('button_click_trigger', '#responsive-menu-button'),
('button_distance_from_side', '5'),
('button_distance_from_side_unit', '%'),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('button_height', '55'),
('button_height_unit', 'px'),
('button_image', ''),
('button_image_alt', ''),
('button_image_alt_when_clicked', ''),
('button_image_when_clicked', ''),
('button_left_or_right', 'right'),
('button_line_colour', '#fff'),
('button_line_colour_active', '#fff'),
('button_line_colour_hover', '#fff'),
('button_line_height', '3'),
('button_line_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_width', '25'),
('button_line_width_unit', 'px'),
('button_position_type', 'fixed'),
('button_push_with_animation', 'off'),
('button_text_colour', '#fff'),
('button_title', ''),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_title_position', 'left'),
('button_top', '15'),
('button_top_unit', 'px'),
('button_transparent_background', 'off'),
('button_width', '55'),
('button_width_unit', 'px'),
('custom_css', ''),
('custom_walker', ''),
('external_files', 'off'),
('fade_submenus', 'off'),
('fade_submenus_delay', '100'),
('fade_submenus_side', 'left'),
('fade_submenus_speed', '500'),
('header_bar_background_color', '#ffffff'),
('header_bar_breakpoint', '800'),
('header_bar_font', ''),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_html_content', ''),
('header_bar_items_order', '{"logo":"on","title":"on","search":"on","html content":"on"}'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_link', ''),
('header_bar_position_type', 'fixed'),
('header_bar_text_color', '#ffffff'),
('header_bar_title', ''),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('inactive_arrow_shape', '▼'),
('items_order', '{"title":"on","menu":"on","search":"on","additional content":"on"}'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#fff'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_appear_from', 'left'),
('menu_auto_height', 'off'),
('menu_background_colour', '#212121'),
('menu_background_image', ''),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_close_on_body_click', 'off'),
('menu_close_on_link_click', 'off'),
('menu_container_background_colour', '#212121'),
('menu_current_item_background_colour', '#212121'),
('menu_current_item_background_hover_colour', '#3f3f3f'),
('menu_current_item_border_colour', '#212121'),
('menu_current_item_border_hover_colour', '#3f3f3f'),
('menu_current_link_colour', '#fff'),
('menu_current_link_hover_colour', '#fff') ;
INSERT INTO `wp_responsive_menu` ( `name`, `value`) VALUES
('menu_depth', '5'),
('menu_depth_0', '5'),
('menu_depth_0_unit', '%'),
('menu_depth_1', '10'),
('menu_depth_1_unit', '%'),
('menu_depth_2', '15'),
('menu_depth_2_unit', '%'),
('menu_depth_3', '20'),
('menu_depth_3_unit', '%'),
('menu_depth_4', '25'),
('menu_depth_4_unit', '%'),
('menu_depth_5', '30'),
('menu_depth_5_unit', '%'),
('menu_disable_scrolling', 'off'),
('menu_font', ''),
('menu_font_icons', ''),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_item_background_colour', '#212121'),
('menu_item_background_hover_colour', '#3f3f3f'),
('menu_item_border_colour', '#212121'),
('menu_item_border_colour_hover', '#212121'),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_link_colour', '#fff'),
('menu_link_hover_colour', '#fff'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_maximum_width', ''),
('menu_maximum_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0,0,0,0.7)'),
('menu_search_box_background_colour', '#fff'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_placeholder_colour', '#C7C7CD'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333'),
('menu_sub_arrow_background_colour', '#212121'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour', '#3f3f3f'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_border_colour', '#212121'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour', '#3f3f3f'),
('menu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_shape_colour', '#fff'),
('menu_sub_arrow_shape_colour_active', '#fff'),
('menu_sub_arrow_shape_hover_colour', '#fff'),
('menu_sub_arrow_shape_hover_colour_active', '#fff'),
('menu_text_alignment', 'left'),
('menu_title', ''),
('menu_title_background_colour', '#212121'),
('menu_title_background_hover_colour', '#212121'),
('menu_title_colour', '#fff'),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_title_font_size', '13'),
('menu_title_font_size_unit', 'px'),
('menu_title_hover_colour', '#fff'),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_to_hide', ''),
('menu_to_use', ''),
('menu_width', '75'),
('menu_width_unit', '%'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('mobile_only', 'off'),
('page_wrapper', ''),
('scripts_in_footer', 'off'),
('shortcode', 'off'),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_link_colour', '#000000'),
('single_menu_item_link_colour_hover', '#000000'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#000000'),
('single_menu_item_submenu_link_colour_hover', '#000000'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_submenu_height', '40'),
('single_menu_submenu_height_unit', 'px'),
('slide_effect_back_to_text', 'Back'),
('submenu_arrow_height', '40'),
('submenu_arrow_height_unit', 'px'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('theme_location_menu', ''),
('transition_speed', '0.5'),
('use_header_bar', 'off') ;
INSERT INTO `wp_responsive_menu` ( `name`, `value`) VALUES
('use_single_menu', 'off'),
('use_slide_effect', 'off') ;

#
# End of data contents of table `wp_responsive_menu`
# --------------------------------------------------------



#
# Delete any existing table `wp_revslider_css`
#

DROP TABLE IF EXISTS `wp_revslider_css`;


#
# Table structure of table `wp_revslider_css`
#

CREATE TABLE `wp_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` longtext,
  `hover` longtext,
  `params` longtext NOT NULL,
  `advanced` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_revslider_css`
#
INSERT INTO `wp_revslider_css` ( `id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(1, '.tp-caption.medium_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","white-space":"nowrap"},"hover":""}'),
(2, '.tp-caption.small_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","white-space":"nowrap"},"hover":""}'),
(3, '.tp-caption.medium_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","white-space":"nowrap"},"hover":""}'),
(4, '.tp-caption.large_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","white-space":"nowrap"},"hover":""}'),
(5, '.tp-caption.very_large_text', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","white-space":"nowrap","letter-spacing":"-2px"},"hover":""}'),
(6, '.tp-caption.very_big_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","padding":"0px 4px","background-color":"#000"}', '{"idle":{"position":"absolute","text-shadow":"none","white-space":"nowrap","padding-top":"1px"},"hover":""}'),
(7, '.tp-caption.very_big_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","padding":"0px 4px","background-color":"#fff"}', '{"idle":{"position":"absolute","text-shadow":"none","white-space":"nowrap","padding-top":"1px"},"hover":""}'),
(8, '.tp-caption.modern_medium_fat', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","white-space":"nowrap"},"hover":""}'),
(9, '.tp-caption.modern_medium_fat_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","white-space":"nowrap"},"hover":""}'),
(10, '.tp-caption.modern_medium_light', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","white-space":"nowrap"},"hover":""}'),
(11, '.tp-caption.modern_big_bluebg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c"}', '{"idle":{"position":"absolute","text-shadow":"none","letter-spacing":"0"},"hover":""}'),
(12, '.tp-caption.modern_big_redbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e"}', '{"idle":{"position":"absolute","text-shadow":"none","padding-top":"1px","letter-spacing":"0"},"hover":""}'),
(13, '.tp-caption.modern_small_text_dark', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#555","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none"}', '{"idle":{"position":"absolute","text-shadow":"none","white-space":"nowrap"},"hover":""}'),
(14, '.tp-caption.boxshadow', '{"translated":5,"type":"text","version":"4"}', 'null', '[]', '{"idle":{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"},"hover":""}'),
(15, '.tp-caption.black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(16, '.tp-caption.noshadow', '{"translated":5,"type":"text","version":"4"}', 'null', '[]', '{"idle":{"text-shadow":"none"},"hover":""}'),
(17, '.tp-caption.thinheadline_dark', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"rgba(0,0,0,0.85)","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}', '{"idle":{"position":"absolute","text-shadow":"none"},"hover":""}'),
(18, '.tp-caption.thintext_dark', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"rgba(0,0,0,0.85)","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}', '{"idle":{"position":"absolute","text-shadow":"none"},"hover":""}'),
(19, '.tp-caption.largeblackbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(20, '.tp-caption.largepinkbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(21, '.tp-caption.largewhitebg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#000","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(22, '.tp-caption.largegreenbg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"color":"#fff","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","border-radius":"0px"}', '{"idle":{"position":"absolute","text-shadow":"none","-webkit-border-radius":"0px","-moz-border-radius":"0px"},"hover":""}'),
(23, '.tp-caption.excerpt', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","margin":"0px","padding":"1px 4px 0px 4px","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}', '{"idle":{"text-shadow":"none","letter-spacing":"-1.5px","width":"150px","white-space":"normal !important","height":"auto"},"hover":""}'),
(24, '.tp-caption.large_bold_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(25, '.tp-caption.medium_thin_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(26, '.tp-caption.small_thin_grey', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(27, '.tp-caption.lightgrey_divider', '{"translated":5,"type":"text","version":"4"}', 'null', '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}', '{"idle":{"width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial"},"hover":""}'),
(28, '.tp-caption.large_bold_darkblue', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(29, '.tp-caption.medium_bg_darkblue', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(30, '.tp-caption.medium_bold_red', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(31, '.tp-caption.medium_light_red', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(32, '.tp-caption.medium_bg_red', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(33, '.tp-caption.medium_bold_orange', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(34, '.tp-caption.medium_bg_orange', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(35, '.tp-caption.grassfloor', '{"translated":5,"type":"text","version":"4"}', 'null', '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}', '{"idle":{"width":"4000px","height":"150px"},"hover":""}'),
(36, '.tp-caption.large_bold_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(37, '.tp-caption.medium_light_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(38, '.tp-caption.mediumlarge_light_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(39, '.tp-caption.mediumlarge_light_white_center', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(40, '.tp-caption.medium_bg_asbestos', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(41, '.tp-caption.medium_light_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(42, '.tp-caption.large_bold_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(43, '.tp-caption.mediumlarge_light_darkblue', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(44, '.tp-caption.small_light_white', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(45, '.tp-caption.roundedimage', '{"translated":5,"type":"text","version":"4"}', 'null', '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}', '{"idle":[],"hover":""}'),
(46, '.tp-caption.large_bg_black', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}', '{"idle":[],"hover":""}'),
(47, '.tp-caption.mediumwhitebg', '{"translated":5,"type":"text","version":"4"}', 'null', '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(48, '.tp-caption.MarkerDisplay', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ff0000","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0px","0px","0px","0px"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"font-style":"normal","font-family":"Permanent Marker","padding":"0px 0px 0px 0px","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"#000000","border-style":"none","border-width":"0px","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(49, '.tp-caption.Restaurant-Display', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"120px","line-height":"120px","font-weight":"700","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(50, '.tp-caption.Restaurant-Cursive', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"30px","line-height":"30px","font-weight":"400","font-style":"normal","font-family":"Nothing you could do","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(51, '.tp-caption.Restaurant-ScrollDownText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"17px","line-height":"17px","font-weight":"400","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(52, '.tp-caption.Restaurant-Description', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"20px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(53, '.tp-caption.Restaurant-Price', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0"}', '{"color":"#ffffff","font-size":"30px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(54, '.tp-caption.Restaurant-Menuitem', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"500","easing":"Power2.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"400","font-style":"normal","font-family":"Roboto","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(55, '.tp-caption.Furniture-LogoText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#e6cfa3","color-transparency":"1","font-size":"160px","line-height":"150px","font-weight":"300","font-style":"normal","font-family":"\\"Raleway\\"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(56, '.tp-caption.Furniture-Plus', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0.5","easing":"Linear.easeNone"}', '{"color":"#e6cfa3","color-transparency":"1","font-size":"20","line-height":"20px","font-weight":"400","font-style":"normal","font-family":"\\"Raleway\\"","padding":["6px","7px","4px","7px"],"text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none","box-shadow":"rgba(0,0,0,0.1) 0 1px 3px"},"hover":""}'),
(57, '.tp-caption.Furniture-Title', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"700","font-style":"normal","font-family":"\\"Raleway\\"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none","letter-spacing":"3px"},"hover":""}'),
(58, '.tp-caption.Furniture-Subtitle', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"17px","line-height":"20px","font-weight":"300","font-style":"normal","font-family":"\\"Raleway\\"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(59, '.tp-caption.Gym-Display', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"80px","line-height":"70px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(60, '.tp-caption.Gym-Subline', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"5px"},"hover":""}'),
(61, '.tp-caption.Gym-SmallText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"22","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(62, '.tp-caption.Fashion-SmallText', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"12px","line-height":"20px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(63, '.tp-caption.Fashion-BigDisplay', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"60px","line-height":"60px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(64, '.tp-caption.Fashion-TextBlock', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"20px","line-height":"40px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(65, '.tp-caption.Sports-Display', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"130px","line-height":"130px","font-weight":"100","font-style":"normal","font-family":"\\"Raleway\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"13px"},"hover":""}'),
(66, '.tp-caption.Sports-DisplayFat', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"130px","line-height":"130px","font-weight":"900","font-style":"normal","font-family":"\\"Raleway\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":[""],"hover":""}'),
(67, '.tp-caption.Sports-Subline', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#000000","color-transparency":"1","font-size":"32px","line-height":"32px","font-weight":"400","font-style":"normal","font-family":"\\"Raleway\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"4px"},"hover":""}'),
(68, '.tp-caption.Instagram-Caption', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"900","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(69, '.tp-caption.News-Title', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"70px","line-height":"60px","font-weight":"400","font-style":"normal","font-family":"Roboto Slab","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(70, '.tp-caption.News-Subtitle', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"0.65","text-decoration":"none","background-color":"#ffffff","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"solid","border-width":"0px","border-radius":["0","0","0px","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"300","easing":"Power3.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"24px","font-weight":"300","font-style":"normal","font-family":"Roboto Slab","padding":["0","0","0","0"],"text-decoration":"none","background-color":"#ffffff","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(71, '.tp-caption.Photography-Display', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"80px","line-height":"70px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"5px"},"hover":""}'),
(72, '.tp-caption.Photography-Subline', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#777777","color-transparency":"1","font-size":"20px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(73, '.tp-caption.Photography-ImageHover', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"0.5","scalex":"0.8","scaley":"0.8","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"1000","easing":"Power3.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"#ffffff","border-transparency":"0","border-style":"none","border-width":"0px","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(74, '.tp-caption.Photography-Menuitem', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#00ffde","background-transparency":"0.65","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"200","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["3px","5px","3px","8px"],"text-decoration":"none","background-color":"#000000","background-transparency":"0.65","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(75, '.tp-caption.Photography-Textblock', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"17px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(76, '.tp-caption.Photography-Subline-2', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"0.35","font-size":"20px","line-height":"30px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":{"letter-spacing":"3px"},"hover":""}') ;
INSERT INTO `wp_revslider_css` ( `id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(77, '.tp-caption.Photography-ImageHover2', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"0.5","scalex":"0.8","scaley":"0.8","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"500","easing":"Back.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20","line-height":"22","font-weight":"400","font-style":"normal","font-family":"Arial","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"#ffffff","border-transparency":"0","border-style":"none","border-width":"0px","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(78, '.tp-caption.WebProduct-Title', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#333333","color-transparency":"1","font-size":"90px","line-height":"90px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(79, '.tp-caption.WebProduct-SubTitle', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#999999","color-transparency":"1","font-size":"15px","line-height":"20px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(80, '.tp-caption.WebProduct-Content', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#999999","color-transparency":"1","font-size":"16px","line-height":"24px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600"}', '{"idle":"","hover":""}'),
(81, '.tp-caption.WebProduct-Menuitem', '{"hover":"true","version":"5.0","translated":"5"}', '{"color":"#999999","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"200","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"20px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["3px","5px","3px","8px"],"text-decoration":"none","text-align":"left","background-color":"#333333","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(82, '.tp-caption.WebProduct-Title-Light', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"90px","line-height":"90px","font-weight":"100","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(83, '.tp-caption.WebProduct-SubTitle-Light', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"0.35","font-size":"15px","line-height":"20px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(84, '.tp-caption.WebProduct-Content-Light', '{"hover":"false","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"0.65","font-size":"16px","line-height":"24px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(85, '.tp-caption.FatRounded', '{"hover":"true","type":"text","version":"5.0","translated":"5"}', '{"color":"#fff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"#d3d3d3","border-transparency":"1","border-style":"none","border-width":"0px","border-radius":["50px","50px","50px","50px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["20px","22px","20px","25px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0.5","border-color":"#d3d3d3","border-transparency":"1","border-style":"none","border-width":"0px","border-radius":["50px","50px","50px","50px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"text-shadow":"none"},"hover":""}'),
(86, '.tp-caption.NotGeneric-Title', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"70px","line-height":"70px","font-weight":"800","font-style":"normal","font-family":"Raleway","padding":"10px 0px 10px 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"[object Object]","hover":""}'),
(87, '.tp-caption.NotGeneric-SubTitle', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"13px","line-height":"20px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"4px","text-align":"left"},"hover":""}'),
(88, '.tp-caption.NotGeneric-CallToAction', '{"hover":"true","translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":"0px 0px 0px 0px","opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power3.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":"10px 30px 10px 30px","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"1","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(89, '.tp-caption.NotGeneric-Icon', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"default","speed":"300","easing":"Power3.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"400","font-style":"normal","font-family":"Raleway","padding":"0px 0px 0px 0px","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0","border-style":"solid","border-width":"0px","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(90, '.tp-caption.NotGeneric-Menuitem', '{"hover":"true","translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":"0px 0px 0px 0px","opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":"27px 30px 27px 30px","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.15","border-style":"solid","border-width":"1px","border-radius":"0px 0px 0px 0px","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}'),
(91, '.tp-caption.MarkerStyle', '{"translated":5,"type":"text","version":"5.0"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"30px","font-weight":"100","font-style":"normal","font-family":"\\"Permanent Marker\\"","padding":"0 0 0 0","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":"0 0 0 0","z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"text-align":"left","0":""},"hover":""}'),
(92, '.tp-caption.Gym-Menuitem', '{"hover":"true","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"2px","border-radius":["3px","3px","3px","3px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"200","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"20px","line-height":"20px","font-weight":"300","font-style":"normal","font-family":"Raleway","padding":["3px","5px","3px","8px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"1","border-color":"#ffffff","border-transparency":"0","border-style":"solid","border-width":"2px","border-radius":["3px","3px","3px","3px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(93, '.tp-caption.Newspaper-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"#FFFFFF","background-transparency":"1","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"13px","line-height":"17px","font-weight":"700","font-style":"normal","font-family":"Roboto","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#ffffff","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(94, '.tp-caption.Newspaper-Subtitle', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#a8d8ee","color-transparency":"1","font-size":"15px","line-height":"20px","font-weight":"900","font-style":"normal","font-family":"Roboto","padding":["0","0","0","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(95, '.tp-caption.Newspaper-Title', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"50px","line-height":"55px","font-weight":"400","font-style":"normal","font-family":"\\"Roboto Slab\\"","padding":["0","0","10px","0"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(96, '.tp-caption.Newspaper-Title-Centered', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"50px","line-height":"55px","font-weight":"400","font-style":"normal","font-family":"\\"Roboto Slab\\"","padding":["0","0","10px","0"],"text-decoration":"none","text-align":"center","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(97, '.tp-caption.Hero-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(98, '.tp-caption.Video-Title', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#fff","color-transparency":"1","font-size":"30px","line-height":"30px","font-weight":"900","font-style":"normal","font-family":"Raleway","padding":["5px","5px","5px","5px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"-20%","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(99, '.tp-caption.Video-SubTitle', '{"hover":"false","type":"text","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"0","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"12px","line-height":"12px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["5px","5px","5px","5px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0.35","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":"0","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"-20%","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(100, '.tp-caption.NotGeneric-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"1","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px","text-align":"left"},"hover":""}') ;
INSERT INTO `wp_revslider_css` ( `id`, `handle`, `settings`, `hover`, `params`, `advanced`) VALUES
(101, '.tp-caption.NotGeneric-BigButton', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"14px","line-height":"14px","font-weight":"500","font-style":"normal","font-family":"Raleway","padding":["27px","30px","27px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.15","border-style":"solid","border-width":"1px","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(102, '.tp-caption.WebProduct-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#333333","color-transparency":"1","text-decoration":"none","background-color":"#ffffff","background-transparency":"1","border-color":"#000000","border-transparency":"1","border-style":"none","border-width":"2","border-radius":["0","0","0","0"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"300","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"16px","line-height":"48px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["0px","40px","0px","40px"],"text-decoration":"none","text-align":"left","background-color":"#333333","background-transparency":"1","border-color":"#000000","border-transparency":"1","border-style":"none","border-width":"2","border-radius":["0","0","0","0"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"1px"},"hover":""}'),
(103, '.tp-caption.Restaurant-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffe081","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"300","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"500","font-style":"normal","font-family":"Roboto","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#0a0a0a","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"3px"},"hover":""}'),
(104, '.tp-caption.Gym-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#72a800","background-transparency":"1","border-color":"#000000","border-transparency":"0","border-style":"solid","border-width":"0","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power1.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["13px","35px","13px","35px"],"text-decoration":"none","text-align":"left","background-color":"#8bc027","background-transparency":"1","border-color":"#000000","border-transparency":"0","border-style":"solid","border-width":"0","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"1px"},"hover":""}'),
(105, '.tp-caption.Gym-Button-Light', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#72a800","background-transparency":"0","border-color":"#8bc027","border-transparency":"1","border-style":"solid","border-width":"2px","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Power2.easeInOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"transparent","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"2px","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}'),
(106, '.tp-caption.Sports-Button-Light', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"500","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(107, '.tp-caption.Sports-Button-Red', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"1","border-color":"#000000","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["0px","0px","0px","0px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"500","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"17px","line-height":"17px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["12px","35px","12px","35px"],"text-decoration":"none","text-align":"left","background-color":"#db1c22","background-transparency":"1","border-color":"#db1c22","border-transparency":"0","border-style":"solid","border-width":"2px","border-radius":["0px","0px","0px","0px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"2px"},"hover":""}'),
(108, '.tp-caption.Photography-Button', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"1px","border-radius":["30px","30px","30px","30px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"auto","speed":"300","easing":"Power3.easeOut"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"600","font-style":"normal","font-family":"Raleway","padding":["13px","35px","13px","35px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.25","border-style":"solid","border-width":"1px","border-radius":["30px","30px","30px","30px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":{"letter-spacing":"1px"},"hover":""}'),
(109, '.tp-caption.Newspaper-Button-2', '{"hover":"true","type":"button","version":"5.0","translated":"5"}', '{"color":"#ffffff","color-transparency":"1","text-decoration":"none","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"1","border-style":"solid","border-width":"2","border-radius":["3px","3px","3px","3px"],"opacity":"1","scalex":"1","scaley":"1","skewx":"0","skewy":"0","xrotate":"0","yrotate":"0","2d_rotation":"0","css_cursor":"pointer","speed":"300","easing":"Linear.easeNone"}', '{"color":"#ffffff","color-transparency":"1","font-size":"15px","line-height":"15px","font-weight":"900","font-style":"normal","font-family":"Roboto","padding":["10px","30px","10px","30px"],"text-decoration":"none","text-align":"left","background-color":"#000000","background-transparency":"0","border-color":"#ffffff","border-transparency":"0.5","border-style":"solid","border-width":"2","border-radius":["3px","3px","3px","3px"],"z":"0","skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":"0","yrotate":"0","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","parallax":"-"}', '{"idle":"","hover":""}') ;

#
# End of data contents of table `wp_revslider_css`
# --------------------------------------------------------



#
# Delete any existing table `wp_revslider_layer_animations`
#

DROP TABLE IF EXISTS `wp_revslider_layer_animations`;


#
# Table structure of table `wp_revslider_layer_animations`
#

CREATE TABLE `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  `settings` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_revslider_layer_animations`
#

#
# End of data contents of table `wp_revslider_layer_animations`
# --------------------------------------------------------



#
# Delete any existing table `wp_revslider_navigations`
#

DROP TABLE IF EXISTS `wp_revslider_navigations`;


#
# Table structure of table `wp_revslider_navigations`
#

CREATE TABLE `wp_revslider_navigations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `handle` varchar(191) NOT NULL,
  `css` longtext NOT NULL,
  `markup` longtext NOT NULL,
  `settings` longtext,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_revslider_navigations`
#

#
# End of data contents of table `wp_revslider_navigations`
# --------------------------------------------------------



#
# Delete any existing table `wp_revslider_sliders`
#

DROP TABLE IF EXISTS `wp_revslider_sliders`;


#
# Table structure of table `wp_revslider_sliders`
#

CREATE TABLE `wp_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` longtext NOT NULL,
  `settings` text,
  `type` varchar(191) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_revslider_sliders`
#
INSERT INTO `wp_revslider_sliders` ( `id`, `title`, `alias`, `params`, `settings`, `type`) VALUES
(1, 'home slide', 'home_slide', '{"hero_active":"-1","source_type":"gallery","instagram-count":"","instagram-transient":"1200","instagram-type":"user","instagram-user-id":"","flickr-count":"","flickr-transient":"1200","flickr-api-key":"","flickr-type":"publicphotos","flickr-user-url":"","flickr-photoset":"","flickr-photoset-select":"","flickr-gallery-url":"","flickr-group-url":"","facebook-count":"","facebook-transient":"1200","facebook-page-url":"","facebook-type-source":"album","facebook-album":"","facebook-album-select":"","facebook-app-id":"","facebook-app-secret":"","twitter-count":"","twitter-transient":"1200","twitter-user-id":"","twitter-image-only":"off","twitter-include-retweets":"off","twitter-exclude-replies":"off","twitter-consumer-key":"","twitter-consumer-secret":"","twitter-access-token":"","twitter-access-secret":"","youtube-count":"","youtube-transient":"1200","youtube-api":"","youtube-channel-id":"","youtube-type-source":"channel","youtube-playlist":"","youtube-playlist-select":"","vimeo-count":"","vimeo-transient":"1200","vimeo-type-source":"user","vimeo-username":"","vimeo-groupname":"","vimeo-albumid":"","vimeo-channelname":"","product_types":"product","product_category":"","posts_list":"","fetch_type":"cat_tag","post_types":"post","post_category":"","product_sortby":"ID","product_sort_direction":"DESC","max_slider_products":"30","excerpt_limit_product":"55","reg_price_from":"","reg_price_to":"","sale_price_from":"","sale_price_to":"","instock_only":"off","featured_only":"off","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","title":"home slide","alias":"home_slide","shortcode":"[rev_slider alias=\\\\\\"home_slide\\\\\\"]","slider-type":"standard","slider_type":"fullscreen","width":"1240","height":"868","width_notebook":"1024","height_notebook":"768","enable_custom_size_notebook":"off","width_tablet":"778","height_tablet":"960","enable_custom_size_tablet":"off","width_mobile":"480","height_mobile":"720","enable_custom_size_iphone":"off","full_screen_align_force":"off","fullscreen_min_height":"","autowidth_force":"off","fullscreen_offset_container":"","fullscreen_offset_size":"","main_overflow_hidden":"off","auto_height":"off","min_height":"","max_width":"","force_full_width":"on","next_slide_on_window_focus":"off","disable_focus_listener":"off","def-layer_selection":"off","slider_id":"","delay":"6000","start_js_after_delay":"0","def-slide_transition":"fade","def-transition_duration":"300","def-image_source_type":"full","def-background_fit":"cover","def-bg_fit_x":"100","def-bg_fit_y":"100","def-bg_position":"center center","def-bg_position_x":"0","def-bg_position_y":"0","def-bg_repeat":"no-repeat","def-kenburn_effect":"off","def-kb_start_fit":"100","def-kb_easing":"Linear.easeNone","def-kb_end_fit":"100","def-kb_start_offset_x":"0","def-kb_start_offset_y":"0","def-kb_end_offset_x":"0","def-kb_end_offset_y":"0","def-kb_start_rotate":"0","def-kb_end_rotate":"0","def-kb_duration":"10000","0":"blank","start_with_slide_enable":"off","start_with_slide":"1","first_transition_active":"off","first_transition_type":"fade","first_transition_duration":"300","first_transition_slot_amount":"7","stop_on_hover":"off","stop_slider":"off","stop_after_loops":"0","stop_at_slide":"2","shuffle":"off","loop_slide":"off","label_viewport":"off","viewport_start":"wait","viewport_area":"80","label_presetheight":"off","waitforinit":"off","enable_progressbar":"off","show_timerbar":"top","progress_height":"5","progress_opa":"15","progressbar_color":"#000000","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":"0","hide_defined_layers_under":"0","hide_all_layers_under":"0","shadow_type":"0","background_dotted_overlay":"none","background_color":"transparent","padding":"0","show_background_image":"off","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center center","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","use_spinner":"-1","spinner_color":"#FFFFFF","enable_arrows":"on","rtl_arrows":"off","navigation_arrow_style":"round","navigation_arrows_preset":"default","ph-round-arrows-hover-bg-color-color-rgba-def":"off","ph-round-arrows-hover-bg-color-color-rgba":"#000000","ph-round-arrows-arrow-size-custom-def":"off","ph-round-arrows-arrow-size-custom":"20","ph-round-arrows-arrow-color-color-def":"off","ph-round-arrows-arrow-color-color":"#ffffff","ph-round-arrows-bg-size-custom-def":"off","ph-round-arrows-bg-size-custom":"40","ph-round-arrows-bg-color-custom-def":"off","ph-round-arrows-bg-color-custom":"0,0,0,0.5","arrows_always_on":"false","hide_arrows":"200","hide_arrows_mobile":"1200","hide_arrows_on_mobile":"off","arrows_under_hidden":"0","hide_arrows_over":"off","arrows_over_hidden":"0","leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":"20","leftarrow_offset_vert":"0","leftarrow_position":"slider","rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":"20","rightarrow_offset_vert":"0","rightarrow_position":"slider","enable_bullets":"on","rtl_bullets":"off","navigation_bullets_style":"round","navigation_bullets_preset":"default","ph-round-bullets-hover-bullet-bg-color-def":"off","ph-round-bullets-hover-bullet-bg-color":"#666666","ph-round-bullets-border-size-custom-def":"off","ph-round-bullets-border-size-custom":"3","ph-round-bullets-border-color-color-def":"off","ph-round-bullets-border-color-color":"#e5e5e5","ph-round-bullets-bullet-bg-bottom-color-def":"off","ph-round-bullets-bullet-bg-bottom-color":"#e1e1e1","ph-round-bullets-bullet-bg-top-color-def":"off","ph-round-bullets-bullet-bg-top-color":"#999999","ph-round-bullets-bullet-size-custom-def":"off","ph-round-bullets-bullet-size-custom":"12","bullets_space":"5","bullets_direction":"horizontal","bullets_always_on":"false","hide_bullets":"200","hide_bullets_mobile":"1200","hide_bullets_on_mobile":"off","bullets_under_hidden":"0","hide_bullets_over":"off","bullets_over_hidden":"0","bullets_align_hor":"center","bullets_align_vert":"bottom","bullets_offset_hor":"0","bullets_offset_vert":"20","bullets_position":"slider","enable_thumbnails":"off","rtl_thumbnails":"off","thumbnails_padding":"5","span_thumbnails_wrapper":"off","thumbnails_wrapper_color":"transparent","thumbnails_wrapper_opacity":"100","thumbnails_style":"round","navigation_thumbs_preset":"default","ph-round-thumbs-title-font-size-custom-def":"off","ph-round-thumbs-title-font-size-custom":"12","ph-round-thumbs-title-color-color-rgba-def":"off","ph-round-thumbs-title-color-color-rgba":"#ffffff","ph-round-thumbs-title-bg-color-rgba-def":"off","ph-round-thumbs-title-bg-color-rgba":"rgba(0,0,0,0.85)","thumb_amount":"5","thumbnails_space":"5","thumbnail_direction":"horizontal","thumb_width":"100","thumb_height":"50","thumb_width_min":"100","thumbs_always_on":"false","hide_thumbs":"200","hide_thumbs_mobile":"1200","hide_thumbs_on_mobile":"off","thumbs_under_hidden":"0","hide_thumbs_over":"off","thumbs_over_hidden":"0","thumbnails_inner_outer":"inner","thumbnails_align_hor":"center","thumbnails_align_vert":"bottom","thumbnails_offset_hor":"0","thumbnails_offset_vert":"20","thumbnails_position":"slider","enable_tabs":"off","rtl_tabs":"off","tabs_padding":"5","span_tabs_wrapper":"off","tabs_wrapper_color":"transparent","tabs_wrapper_opacity":"5","tabs_style":"round","navigation_tabs_preset":"default","ph-round-tabs-param2-size-custom-def":"off","ph-round-tabs-param2-size-custom":"14","ph-round-tabs-param2-color-color-rgba-def":"off","ph-round-tabs-param2-color-color-rgba":"0,0,0,0","ph-round-tabs-contentcolor-color-rgba-def":"off","ph-round-tabs-contentcolor-color-rgba":"#333333","ph-round-tabs-bgcolor-color-rgba-def":"off","ph-round-tabs-bgcolor-color-rgba":"rgba(0,0,0,0)","ph-round-tabs-hover-bg-color-color-rgba-def":"off","ph-round-tabs-hover-bg-color-color-rgba":"#eeeeee","ph-round-tabs-param1-size-custom-def":"off","ph-round-tabs-param1-size-custom":"12","ph-round-tabs-param1-color-color-rgba-def":"off","ph-round-tabs-param1-color-color-rgba":"rgba(51,51,51,0.5)","ph-round-tabs-image-size-custom-def":"off","ph-round-tabs-image-size-custom":"60","ph-round-tabs-border-size-custom-def":"off","ph-round-tabs-border-size-custom":"1","ph-round-tabs-border-color-color-rgba-def":"off","ph-round-tabs-border-color-color-rgba":"#e5e5e5","ph-round-tabs-font-family-font_family-def":"off","ph-round-tabs-font-family-font_family":"Roboto","tabs_amount":"5","tabs_space":"5","tabs_direction":"horizontal","tabs_width":"100","tabs_height":"50","tabs_width_min":"100","tabs_always_on":"false","hide_tabs":"200","hide_tabs_mobile":"1200","hide_tabs_on_mobile":"off","tabs_under_hidden":"0","hide_tabs_over":"off","tabs_over_hidden":"0","tabs_inner_outer":"inner","tabs_align_hor":"center","tabs_align_vert":"bottom","tabs_offset_hor":"0","tabs_offset_vert":"20","tabs_position":"slider","touchenabled":"off","drag_block_vertical":"off","swipe_velocity":"75","swipe_min_touches":"1","swipe_direction":"horizontal","keyboard_navigation":"off","keyboard_direction":"horizontal","mousescroll_navigation":"off","mousescroll_navigation_reverse":"default","previewimage_width":"100","previewimage_height":"50","carousel_infinity":"off","carousel_space":"0","carousel_borderr":"0","carousel_borderr_unit":"px","carousel_padding_top":"0","carousel_padding_bottom":"0","carousel_maxitems":"3","carousel_stretch":"off","carousel_fadeout":"on","carousel_varyfade":"off","carousel_rotation":"off","carousel_varyrotate":"off","carousel_maxrotation":"0","carousel_scale":"off","carousel_varyscale":"off","carousel_scaledown":"50","carousel_hposition":"center","carousel_vposition":"center","use_parallax":"off","disable_parallax_mobile":"off","ddd_parallax":"off","ddd_parallax_shadow":"off","ddd_parallax_bgfreeze":"off","ddd_parallax_overflow":"off","ddd_parallax_layer_overflow":"off","ddd_parallax_zcorrection":"65","parallax_type":"mouse","parallax_origo":"enterpoint","parallax_speed":"400","parallax_level_16":"55","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"46","parallax_level_11":"47","parallax_level_12":"48","parallax_level_13":"49","parallax_level_14":"50","parallax_level_15":"51","lazy_load_type":"none","simplify_ie8_ios4":"off","show_alternative_type":"off","show_alternate_image":"","ignore_height_changes":"off","ignore_height_changes_px":"0","jquery_noconflict":"on","js_to_body":"true","output_type":"none","jquery_debugmode":"off","custom_css":"","custom_javascript":""}', '{"version":5}', '') ;

#
# End of data contents of table `wp_revslider_sliders`
# --------------------------------------------------------



#
# Delete any existing table `wp_revslider_slides`
#

DROP TABLE IF EXISTS `wp_revslider_slides`;


#
# Table structure of table `wp_revslider_slides`
#

CREATE TABLE `wp_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_revslider_slides`
#
INSERT INTO `wp_revslider_slides` ( `id`, `slider_id`, `slide_order`, `params`, `layers`, `settings`) VALUES
(1, 1, 1, '{"background_type":"image","rs-gallery-type":"gallery","bg_external":"","bg_color":"#E7E7E7","0":"Clear","slide_bg_youtube":"","slide_bg_vimeo":"","slide_bg_html_mpeg":"","slide_bg_html_webm":"","slide_bg_html_ogv":"","image_source_type":"full","alt_option":"media_library","alt_attr":"","ext_width":"1920","ext_height":"1080","title_option":"media_library","title_attr":"","video_force_cover":"on","video_dotted_overlay":"none","video_ratio":"16:9","video_start_at":"","video_end_at":"","video_loop":"none","video_nextslide":"off","video_force_rewind":"on","video_mute":"on","video_volume":"","video_speed":"1","video_arguments":"hd=1&wmode=opaque&showinfo=0&rel=0;","video_arguments_vim":"title=0&byline=0&portrait=0&api=1","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_repeat":"no-repeat","media-filter-type":"none","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_start_offset_x":"0","kb_end_offset_x":"0","kb_start_offset_y":"0","kb_end_offset_y":"0","kb_start_rotate":"0","kb_end_rotate":"0","kb_easing":"Linear.easeNone","kb_duration":"10000","image_id":"54","title":"Slide","delay":"","stoponpurpose":"false","invisibleslide":"false","state":"published","hideslideafter":"0","hideslideonmobile":"off","date_from":"","date_to":"","save_performance":"off","slide_thumb":"","thumb_dimension":"slider","thumb_for_admin":"off","slide_transition":["fade"],"slot_amount":["default"],"transition_rotation":["0"],"transition_duration":["300"],"transition_ease_in":["default"],"transition_ease_out":["default"],"ph-round-arrows-bg-color-custom-slide":"off","ph-round-arrows-bg-color-custom":"0,0,0,0.5","ph-round-arrows-bg-size-custom-slide":"off","ph-round-arrows-bg-size-custom":"40","ph-round-arrows-arrow-color-color-slide":"off","ph-round-arrows-arrow-color-color":"#ffffff","ph-round-arrows-arrow-size-custom-slide":"off","ph-round-arrows-arrow-size-custom":"20","ph-round-arrows-hover-bg-color-color-rgba-slide":"off","ph-round-arrows-hover-bg-color-color-rgba":"#000000","ph-round-bullets-bullet-size-custom-slide":"off","ph-round-bullets-bullet-size-custom":"12","ph-round-bullets-bullet-bg-top-color-slide":"off","ph-round-bullets-bullet-bg-top-color":"#999999","ph-round-bullets-bullet-bg-bottom-color-slide":"off","ph-round-bullets-bullet-bg-bottom-color":"#e1e1e1","ph-round-bullets-border-color-color-slide":"off","ph-round-bullets-border-color-color":"#e5e5e5","ph-round-bullets-border-size-custom-slide":"off","ph-round-bullets-border-size-custom":"3","ph-round-bullets-hover-bullet-bg-color-slide":"off","ph-round-bullets-hover-bullet-bg-color":"#666666","ph-round-tabs-font-family-font_family-slide":"off","ph-round-tabs-font-family-font_family":"Roboto","ph-round-tabs-border-color-color-rgba-slide":"off","ph-round-tabs-border-color-color-rgba":"#e5e5e5","ph-round-tabs-border-size-custom-slide":"off","ph-round-tabs-border-size-custom":"1","ph-round-tabs-image-size-custom-slide":"off","ph-round-tabs-image-size-custom":"60","ph-round-tabs-param1-color-color-rgba-slide":"off","ph-round-tabs-param1-color-color-rgba":"rgba(51,51,51,0.5)","ph-round-tabs-param1-size-custom-slide":"off","ph-round-tabs-param1-size-custom":"12","ph-round-tabs-hover-bg-color-color-rgba-slide":"off","ph-round-tabs-hover-bg-color-color-rgba":"#eeeeee","ph-round-tabs-bgcolor-color-rgba-slide":"off","ph-round-tabs-bgcolor-color-rgba":"rgba(0,0,0,0)","ph-round-tabs-contentcolor-color-rgba-slide":"off","ph-round-tabs-contentcolor-color-rgba":"#333333","ph-round-tabs-param2-color-color-rgba-slide":"off","ph-round-tabs-param2-color-color-rgba":"0,0,0,0","ph-round-tabs-param2-size-custom-slide":"off","ph-round-tabs-param2-size-custom":"14","ph-round-thumbs-title-bg-color-rgba-slide":"off","ph-round-thumbs-title-bg-color-rgba":"rgba(0,0,0,0.85)","ph-round-thumbs-title-color-color-rgba-slide":"off","ph-round-thumbs-title-color-color-rgba":"#ffffff","ph-round-thumbs-title-font-size-custom-slide":"off","ph-round-thumbs-title-font-size-custom":"12","params_1":"","params_1_chars":"10","params_2":"","params_2_chars":"10","params_3":"","params_3_chars":"10","params_4":"","params_4_chars":"10","params_5":"","params_5_chars":"10","params_6":"","params_6_chars":"10","params_7":"","params_7_chars":"10","params_8":"","params_8_chars":"10","params_9":"","params_9_chars":"10","params_10":"","params_10_chars":"10","slide_description":"","class_attr":"","id_attr":"","data_attr":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_bg_color":"#E7E7E7","slide_bg_external":"","image":"http:\\/\\/localhost\\\\testwp\\/wp-content\\/uploads\\/2017\\/06\\/753f6a74-ee75-42c2-9ff2-e82e55dd2d9e.jpg"}', '[{"text":"Sidi Bous3id :p","type":"text","special_type":null,"version":"530","frames":{"frame_0":{"time":0,"delay":0,"split":"none","splitdelay":"10","split_extratime":0,"speed":300,"animation":"tp-fade","easing":"Power3.easeInOut","time_relative":0},"frame_999":{"time":6000,"delay":0,"split":"none","splitdelay":"10","split_extratime":0,"speed":300,"animation":"","easing":"Power3.easeInOut","time_relative":5700}},"subtype":"","specialsettings":[],"unique_id":1,"left":{"desktop":429},"top":{"desktop":228},"isDemo":false,"internal_class":"","hover":false,"alias":"Sidi Bous3id :p","layer_bg_position":"center center","layer_bg_size":"cover","layer_bg_repeat":"no-repeat","loop_animation":"none","loop_easing":"","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","layer_blend_mode":"normal","html_tag":"div","mask_start":false,"mask_end":false,"force_hover":true,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_speed_start":"inherit","mask_ease_start":"inherit","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","max_height":{"desktop":"43px"},"min_height":"40px","max_width":{"desktop":"246px"},"video_width":{"desktop":"480px"},"video_height":{"desktop":"360px"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"display":"block","static_start":"1","static_end":"last","align_hor":{"desktop":"left"},"align_vert":{"desktop":"top"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","css-position":"relative","width":137,"height":21,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"40px"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"600"},"color":{"desktop":"#ffffff"}},"margin":{"desktop":["0","0","0","0"]},"padding":{"desktop":["0","0","0","0"]},"text-align":{"desktop":"inherit"},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","pers_start":"inherit","pers_end":"inherit","deformation":{"font-family":"Open Sans","font-style":"normal","color-transparency":"1","text-decoration":"none","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":["0","0","0","0"],"border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","overflow":"visible"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":["0px","0px","0px","0px"],"border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","zindex":"auto","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":0,"endWithSlide":false,"p_uid":-1,"toggle":false,"toggle_use_hover":false,"toggle_inverse_content":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"displaymode":true,"scaleProportional":false,"attrID":"","attrWrapperID":"","attrClasses":"","attrWrapperClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","column_break_at":"mobile","layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]},"zIndex":5}]', '""'),
(2, 1, 2, '{"background_type":"image","rs-gallery-type":"gallery","bg_external":"","bg_color":"#E7E7E7","0":"Clear","slide_bg_youtube":"","slide_bg_vimeo":"","slide_bg_html_mpeg":"","slide_bg_html_webm":"","slide_bg_html_ogv":"","image_source_type":"full","alt_option":"media_library","alt_attr":"","ext_width":"1920","ext_height":"1080","title_option":"media_library","title_attr":"","video_force_cover":"on","video_dotted_overlay":"none","video_ratio":"16:9","video_start_at":"","video_end_at":"","video_loop":"none","video_nextslide":"off","video_force_rewind":"on","video_mute":"on","video_volume":"","video_speed":"1","video_arguments":"hd=1&wmode=opaque&showinfo=0&rel=0;","video_arguments_vim":"title=0&byline=0&portrait=0&api=1","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_repeat":"no-repeat","media-filter-type":"none","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_start_offset_x":"0","kb_end_offset_x":"0","kb_start_offset_y":"0","kb_end_offset_y":"0","kb_start_rotate":"0","kb_end_rotate":"0","kb_easing":"Linear.easeNone","kb_duration":"10000","image_id":"55","title":"Slide","delay":"","stoponpurpose":"false","invisibleslide":"false","state":"published","hideslideafter":"0","hideslideonmobile":"off","date_from":"","date_to":"","save_performance":"off","slide_thumb":"","thumb_dimension":"slider","thumb_for_admin":"off","slide_transition":["fade"],"slot_amount":["default"],"transition_rotation":["0"],"transition_duration":["300"],"transition_ease_in":["default"],"transition_ease_out":["default"],"ph-round-arrows-bg-color-custom-slide":"off","ph-round-arrows-bg-color-custom":"0,0,0,0.5","ph-round-arrows-bg-size-custom-slide":"off","ph-round-arrows-bg-size-custom":"40","ph-round-arrows-arrow-color-color-slide":"off","ph-round-arrows-arrow-color-color":"#ffffff","ph-round-arrows-arrow-size-custom-slide":"off","ph-round-arrows-arrow-size-custom":"20","ph-round-arrows-hover-bg-color-color-rgba-slide":"off","ph-round-arrows-hover-bg-color-color-rgba":"#000000","ph-round-bullets-bullet-size-custom-slide":"off","ph-round-bullets-bullet-size-custom":"12","ph-round-bullets-bullet-bg-top-color-slide":"off","ph-round-bullets-bullet-bg-top-color":"#999999","ph-round-bullets-bullet-bg-bottom-color-slide":"off","ph-round-bullets-bullet-bg-bottom-color":"#e1e1e1","ph-round-bullets-border-color-color-slide":"off","ph-round-bullets-border-color-color":"#e5e5e5","ph-round-bullets-border-size-custom-slide":"off","ph-round-bullets-border-size-custom":"3","ph-round-bullets-hover-bullet-bg-color-slide":"off","ph-round-bullets-hover-bullet-bg-color":"#666666","ph-round-tabs-font-family-font_family-slide":"off","ph-round-tabs-font-family-font_family":"Roboto","ph-round-tabs-border-color-color-rgba-slide":"off","ph-round-tabs-border-color-color-rgba":"#e5e5e5","ph-round-tabs-border-size-custom-slide":"off","ph-round-tabs-border-size-custom":"1","ph-round-tabs-image-size-custom-slide":"off","ph-round-tabs-image-size-custom":"60","ph-round-tabs-param1-color-color-rgba-slide":"off","ph-round-tabs-param1-color-color-rgba":"rgba(51,51,51,0.5)","ph-round-tabs-param1-size-custom-slide":"off","ph-round-tabs-param1-size-custom":"12","ph-round-tabs-hover-bg-color-color-rgba-slide":"off","ph-round-tabs-hover-bg-color-color-rgba":"#eeeeee","ph-round-tabs-bgcolor-color-rgba-slide":"off","ph-round-tabs-bgcolor-color-rgba":"rgba(0,0,0,0)","ph-round-tabs-contentcolor-color-rgba-slide":"off","ph-round-tabs-contentcolor-color-rgba":"#333333","ph-round-tabs-param2-color-color-rgba-slide":"off","ph-round-tabs-param2-color-color-rgba":"0,0,0,0","ph-round-tabs-param2-size-custom-slide":"off","ph-round-tabs-param2-size-custom":"14","ph-round-thumbs-title-bg-color-rgba-slide":"off","ph-round-thumbs-title-bg-color-rgba":"rgba(0,0,0,0.85)","ph-round-thumbs-title-color-color-rgba-slide":"off","ph-round-thumbs-title-color-color-rgba":"#ffffff","ph-round-thumbs-title-font-size-custom-slide":"off","ph-round-thumbs-title-font-size-custom":"12","params_1":"","params_1_chars":"10","params_2":"","params_2_chars":"10","params_3":"","params_3_chars":"10","params_4":"","params_4_chars":"10","params_5":"","params_5_chars":"10","params_6":"","params_6_chars":"10","params_7":"","params_7_chars":"10","params_8":"","params_8_chars":"10","params_9":"","params_9_chars":"10","params_10":"","params_10_chars":"10","slide_description":"","class_attr":"","id_attr":"","data_attr":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_bg_color":"#E7E7E7","slide_bg_external":"","image":"http:\\/\\/localhost\\\\testwp\\/wp-content\\/uploads\\/2017\\/06\\/14611149_10206639925750038_1525383254583045129_n.jpg"}', '[{"text":"Sfax :p test test :p","type":"text","special_type":null,"version":"530","frames":{"frame_0":{"time":0,"delay":0,"split":"none","splitdelay":"10","split_extratime":0,"speed":300,"animation":"tp-fade","easing":"Power3.easeInOut","time_relative":0},"frame_999":{"time":6000,"delay":0,"split":"none","splitdelay":"10","split_extratime":0,"speed":300,"animation":"","easing":"Power3.easeInOut","time_relative":5700}},"subtype":"","specialsettings":[],"unique_id":1,"left":{"desktop":284},"top":{"desktop":101},"isDemo":false,"internal_class":"","hover":false,"alias":"Sfax :p test test :p","layer_bg_position":"center center","layer_bg_size":"cover","layer_bg_repeat":"no-repeat","loop_animation":"none","loop_easing":"","loop_speed":"2","loop_startdeg":-20,"loop_enddeg":20,"loop_xorigin":50,"loop_yorigin":50,"loop_xstart":0,"loop_xend":0,"loop_ystart":0,"loop_yend":0,"loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","layer_blend_mode":"normal","html_tag":"div","mask_start":false,"mask_end":false,"force_hover":true,"x_start_reverse":false,"y_start_reverse":false,"x_end_reverse":false,"y_end_reverse":false,"x_rotate_start_reverse":false,"y_rotate_start_reverse":false,"z_rotate_start_reverse":false,"x_rotate_end_reverse":false,"y_rotate_end_reverse":false,"z_rotate_end_reverse":false,"scale_x_start_reverse":false,"scale_y_start_reverse":false,"scale_x_end_reverse":false,"scale_y_end_reverse":false,"skew_x_start_reverse":false,"skew_y_start_reverse":false,"skew_x_end_reverse":false,"skew_y_end_reverse":false,"mask_x_start_reverse":false,"mask_y_start_reverse":false,"mask_x_end_reverse":false,"mask_y_end_reverse":false,"mask_x_start":"0","mask_y_start":"0","mask_speed_start":"inherit","mask_ease_start":"inherit","mask_x_end":"0","mask_y_end":"0","mask_speed_end":"inherit","mask_ease_end":"inherit","alt_option":"media_library","alt":"","max_height":{"desktop":"auto"},"min_height":"40px","max_width":{"desktop":"auto"},"video_width":{"desktop":"480px"},"video_height":{"desktop":"360px"},"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"whitespace":{"desktop":"nowrap"},"display":"block","static_start":"1","static_end":"last","align_hor":{"desktop":"left"},"align_vert":{"desktop":"top"},"hiddenunder":false,"resizeme":true,"seo-optimized":false,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"","visible-desktop":true,"visible-notebook":true,"visible-tablet":true,"visible-mobile":true,"resize-full":true,"show-on-hover":false,"basealign":"grid","responsive_offset":true,"lazy-load":"auto","image-size":"auto","css-position":"relative","width":330,"height":21,"cover_mode":"custom","static_styles":{"font-size":{"desktop":"40px"},"line-height":{"desktop":"22"},"font-weight":{"desktop":"400"},"color":{"desktop":"#e59627"}},"margin":{"desktop":["0","0","0","0"]},"padding":{"desktop":["0","0","0","0"]},"text-align":{"desktop":"inherit"},"x_start":"inherit","y_start":"inherit","z_start":"inherit","x_end":"inherit","y_end":"inherit","z_end":"inherit","opacity_start":"0","opacity_end":"0","x_rotate_start":"inherit","y_rotate_start":"inherit","z_rotate_start":"inherit","x_rotate_end":"inherit","y_rotate_end":"inherit","z_rotate_end":"inherit","scale_x_start":"inherit","scale_y_start":"inherit","scale_x_end":"inherit","scale_y_end":"inherit","skew_x_start":"inherit","skew_y_start":"inherit","skew_x_end":"inherit","skew_y_end":"inherit","pers_start":"inherit","pers_end":"inherit","deformation":{"font-family":"Open Sans","font-style":"normal","color-transparency":"1","text-decoration":"none","text-transform":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":["0","0","0","0"],"border-radius":["0","0","0","0"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_origin_x":"50","2d_origin_y":"50","pers":"600","corner_left":"nothing","corner_right":"nothing","overflow":"visible"},"svg":{"svgstroke-color":"transparent","svgstroke-transparency":"1","svgstroke-dasharray":"0","svgstroke-dashoffset":"0","svgstroke-width":"0","svgstroke-hover-color":"transparent","svgstroke-hover-transparency":"1","svgstroke-hover-dasharray":"0","svgstroke-hover-dashoffset":"0","svgstroke-hover-width":"0"},"deformation-hover":{"color":"#000000","color-transparency":"1","text-decoration":"none","background-color":"transparent","background-transparency":"1","border-color":"transparent","border-transparency":"1","border-style":"none","border-width":["0px","0px","0px","0px"],"border-radius":["0px","0px","0px","0px"],"x":0,"y":0,"z":0,"skewx":"0","skewy":"0","scalex":"1","scaley":"1","opacity":"1","xrotate":0,"yrotate":0,"2d_rotation":0,"2d_origin_x":50,"2d_origin_y":50,"speed":"0","zindex":"auto","easing":"Linear.easeNone","css_cursor":"auto"},"visible":true,"animation_overwrite":"wait","trigger_memory":"keep","serial":0,"endWithSlide":false,"p_uid":-1,"toggle":false,"toggle_use_hover":false,"toggle_inverse_content":false,"texttoggle":"","scaleX":{"desktop":""},"scaleY":{"desktop":""},"autolinebreak":false,"displaymode":true,"scaleProportional":false,"attrID":"","attrWrapperID":"","attrClasses":"","attrWrapperClasses":"","attrTitle":"","attrRel":"","layer-selectable":"default","column_break_at":"mobile","zIndex":5,"layer_action":{"tooltip_event":[],"action":[],"image_link":[],"link_open_in":[],"jump_to_slide":[],"scrollunder_offset":[],"actioncallback":[],"layer_target":[],"link_type":[],"action_delay":[],"toggle_layer_type":[],"toggle_class":[]}}]', '""') ;

#
# End of data contents of table `wp_revslider_slides`
# --------------------------------------------------------



#
# Delete any existing table `wp_revslider_static_slides`
#

DROP TABLE IF EXISTS `wp_revslider_static_slides`;


#
# Table structure of table `wp_revslider_static_slides`
#

CREATE TABLE `wp_revslider_static_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


#
# Data contents of table `wp_revslider_static_slides`
#

#
# End of data contents of table `wp_revslider_static_slides`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 1, 0),
(34, 1, 0),
(42, 1, 0),
(58, 4, 0),
(59, 4, 0),
(60, 4, 0),
(61, 4, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 4) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(4, 'Menu', 'menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'aklom'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:3:{s:64:"5d61deb510fe01b901e0117b074c22a77751bdae5b5369b5962f4119b87ac00b";a:4:{s:10:"expiration";i:1497140413;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1496967613;}s:64:"61072f1c2177a1b582d9874bee395afbc335fa54938f5ab4aaac119179847f3c";a:4:{s:10:"expiration";i:1497212606;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497039806;}s:64:"2c8a209532cf9f1c55f380780343c137c7eda4391843b167eb44b5e2abbd1c40";a:4:{s:10:"expiration";i:1497212613;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497039813;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(17, 2, 'nickname', 'test'),
(18, 2, 'first_name', ''),
(19, 2, 'last_name', ''),
(20, 2, 'description', ''),
(21, 2, 'rich_editing', 'true'),
(22, 2, 'comment_shortcuts', 'false'),
(23, 2, 'admin_color', 'fresh'),
(24, 2, 'use_ssl', '0'),
(25, 2, 'show_admin_bar_front', 'true'),
(26, 2, 'locale', ''),
(27, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(28, 2, 'wp_user_level', '10'),
(29, 2, 'dismissed_wp_pointers', ''),
(30, 1, 'closedpostboxes_post', 'a:0:{}'),
(31, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(32, 1, 'nav_menu_recently_edited', '4'),
(33, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(35, 1, 'wp_user-settings', 'libraryContent=upload&edit_element_vcUIPanelWidth=649&edit_element_vcUIPanelLeft=749px&edit_element_vcUIPanelTop=74px&editor=tinymce'),
(36, 1, 'wp_user-settings-time', '1497040816'),
(37, 1, 'meta-box-order_cjtoolbox', 'a:1:{s:6:"normal";s:23:"cjtoolbox-1,cjtoolbox-3";}'),
(38, 1, 'closedpostboxes_cjtoolbox', 'a:0:{}'),
(39, 1, 'metaboxhidden_cjtoolbox', 'a:0:{}'),
(40, 1, 'closedpostboxes_page', 'a:1:{i:0;s:21:"mymetabox_revslider_0";}'),
(41, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'aklom', '$P$B4G4yM0JeQ98LTEzewSdCJW1pwOE5o0', 'aklom', 'molkazaw@gmail.com', '', '2017-05-24 10:07:51', '', 0, 'aklom'),
(2, 'test', '$P$B3GgidS6VL4fxr8KN53DEQdLxZyd2B.', 'test', 'mallou2305@hotmail.FR', '', '2017-05-28 08:46:29', '1495961190:$P$BJKq0HW/U3nQQ7iHTxUTplSzC2dbij0', 0, 'test') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
