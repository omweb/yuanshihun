<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<body>
<?php if ($fn_include = $this->_include("top_nav.html")) include($fn_include); ?>
<!--head start--> 
<!--top-->
<?php if ($fn_include = $this->_include("top.html")) include($fn_include); ?>
<!--top end-->
<?php if ($fn_include = $this->_include("nav.html")) include($fn_include); ?>
<!--head end--> 
<!--banner start-->
<?php if ($fn_include = $this->_include("banner.html")) include($fn_include); ?>
<!--banner end--> 
<!--jsindex--> 
<script type="text/javascript" src="<?php echo HOME_THEME_PATH; ?>js/jquery_004.js"></script> 
<!--mainbody start-->
<div class="mainbody"> 
  <!--act start-->
	<?php if ($fn_include = $this->_include("act.html")) include($fn_include); ?>
  <!--act end--> 
  <!--case start-->
	<?php if ($fn_include = $this->_include("in_case.html")) include($fn_include); ?>
  <!--case end-->  
  <!--video start-->
	<?php if ($fn_include = $this->_include("in_video.html")) include($fn_include); ?>
  <!--video end-->
  <!--server start-->
	<?php if ($fn_include = $this->_include("in_server.html")) include($fn_include); ?>
  <!--server end-->  
  <!--team--> 
	<?php if ($fn_include = $this->_include("in_team.html")) include($fn_include); ?>
  <!--team end--> 
  <div class="clearit"></div>
  <!--jfnews start-->
	<?php if ($fn_include = $this->_include("in_news.html")) include($fn_include); ?>
  <!--jfnews end--> 
</div>
<!--mainbody end-->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?><script type="text/javascript" src="http://www.yuanshihun.com/index.php?c=cron"></script>