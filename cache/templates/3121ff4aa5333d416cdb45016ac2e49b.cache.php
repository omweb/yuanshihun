<div class="topbg">
<div id="topnav" class="topbgCon">
<ul id="topnav" class="topnav">
	<li i class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-home ">
		<a href="/">
			首页
		</a>
	</li>
	<?php $return = $this->list_tag("action=navigator type=3 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
	<li  class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-250">
		<a  href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank"<?php } ?>>
				<?php echo $t['name']; ?>
		</a>
	</li>
	<?php } } ?>
</ul>
</div>
</div>
<script type="text/javascript">
$(window).scroll(function(){
	if ($(window).scrollTop() > 220){
		$(".topbg").slideDown(1000);
	}
	else
	{
		$(".topbg").slideUp(1000);
	}
});
</script> 