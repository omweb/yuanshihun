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
  	<?php if ($fn_include = $this->_include("mianbao.html")) include($fn_include); ?>
    <div class="lfebodyl">
    <div class="submenu">
      <ul>
		<?php $return = $this->list_tag("action=category pid=$cat[pid]"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
		<li <?php if ($t['id']==$catid) { ?> class="current" <?php } ?>>
			<a href="<?php echo $t['url']; ?>" title="<?php echo $t['name']; ?>" class="biao<?php echo $key; ?>">
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
          <div class="newsshow">
      <div class="newsshowtitle">
        <h1><?php echo $title; ?></h1>
        <p>作者：<?php echo $author; ?>　发布日期：<?php echo dr_date($_updatetime, 'Y-m-d'); ?>　阅读次数：<?php echo dr_show_hits($id); ?>次</p>
      </div>
      <div class="newsshowtxt">
        <?php echo $content; ?>
        <div id="fenye">                   
                    <?php if (is_array($content_page)) { $count=count($content_page);foreach ($content_page as $i=>$t) {  if ($page==$i) { ?>
                      <span><?php echo $i; ?></span>
                    <?php } else { ?>
                      <a href="<?php echo dr_content_page_url($urlrule, $i); ?>" title="<?php echo $t['title']; ?>"><?php echo $i; ?></a>
                    <?php }  } } ?>
              </div>
        <div class="shangxiapian" style="clear:both; margin:10px 0; line-height:24px;">
           <strong>上一篇：</strong><?php if ($prev_page) { ?><a href="<?php echo $prev_page['url']; ?>" rel="prev"><?php echo $prev_page['title']; ?></a><?php } else { ?>没有了<?php } ?>        
            <br/>
           <strong>下一篇：</strong><?php if ($next_page) { ?><a href="<?php echo $next_page['url']; ?>" rel="prev"><?php echo $next_page['title']; ?></a><?php } else { ?>没有了<?php } ?>
        </div>
      </div>
    </div>
  </div>
</div>
<!--mainbody end-->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?><script type="text/javascript" src="http://www.yuanshihun.com/index.php?c=cron"></script>