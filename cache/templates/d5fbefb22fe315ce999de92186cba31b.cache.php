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
      <div class="news">                               
	      <ul>
	      <?php $return = $this->list_tag("action=module catid=$catid order=displayorder,updatetime page=1"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <li>
				<a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>">
					<div class="newsl">							
						<img src="<?php echo dr_thumb($t['thumb'], 130,110); ?>" class="attachment-thumbnail wp-post-image" alt="<?php echo $t['title']; ?>" title="<?php echo $t['title']; ?>" width="130px" height="110px" />						
					</div>
					<div class="newsr">
						<h2>
							<?php echo $t['title']; ?>
						</h2>
						<em>
							 POST TIME：<?php echo dr_date($t['_updatetime'], 'Y-m-d'); ?>
						</em>
						<p>
							<?php echo $t['description']; ?>
						</p>
					</div>
				</a>
			</li>
		   <?php } }  echo $error; ?>         
	      </ul>
      </div>
    <?php if ($fn_include = $this->_include("pages.html")) include($fn_include); ?>
  </div>
</div>
<!--mainbody end-->
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>