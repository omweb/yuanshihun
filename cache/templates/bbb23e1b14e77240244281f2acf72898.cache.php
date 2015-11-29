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
<!--mainbody start-->
<div class="mainbody">
  	<div class="mianbao">
    <h2>  <?php echo $parent['name']; ?></h2>
    <span>您所在的位置：<a href="<?php echo SITE_URL; ?>"class="gray">首页</a> >> <?php echo dr_page_catpos($id, ' >> '); ?></span></div>
    <div class="lfebodyl">
    <div class="submenu">
      <ul>
      <?php if (is_array($related)) { $count=count($related);foreach ($related as $t) { ?>
			<li <?php if ($id==$t['id']) { ?> class="current" <?php } ?>>
				<a href="<?php echo $t['url']; ?>" title="<?php echo $t['name']; ?>" class="biao<?php echo $key_t; ?>">
				<?php echo $t['name']; ?>
				<i>
					<?php echo $t['dirname'];  echo $catid; ?>
				</i>
			</a>
			</li>
		<?php } } ?>
		</ul>
    </div>
	<?php if ($fn_include = $this->_include("sidebar.html")) include($fn_include); ?>    
 </div>   
 
<div class="lfebodyr">
	<div class="about">
		<?php echo $content; ?>
            	<div id="fenye">
                   
                    <?php if (is_array($content_page)) { $count=count($content_page);foreach ($content_page as $i=>$t) {  if ($page==$i) { ?>
                    	<span><?php echo $i; ?></span>
                    <?php } else { ?>
                    	<a href="<?php echo dr_content_page_url($urlrule, $i); ?>" title="<?php echo $t['title']; ?>"><?php echo $i; ?></a>
                    <?php }  } } ?>
             	</div>
	</div>
</div>
</div>
<!--mainbody end-->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?><script type="text/javascript" src="http://www.yuanshihun.com/index.php?c=cron"></script>