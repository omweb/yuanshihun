  <div class="title_video"><a href="<?php echo $ci->get_cache('module-1-video', 'category', 1, 'url'); ?>"></a></div>
  <div class="videoindex">
    <ul>
    <?php $return = $this->list_tag("action=module flag=1 module=video order=updatetime num=5"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
	<li <?php if ($key< 1) { ?>class="videoone"<?php } ?>>
		<a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>"
		class="orderbox">
			<img style="display: block;" src="<?php echo dr_thumb($t['thumb']); ?>"	alt="<?php echo $t['title']; ?>">
			<span class="png">
				<h2>
					<?php echo $t['title']; ?>
				</h2>
			</span>
			<ins>
			</ins>
		</a>
	</li>
	 <?php } } ?>	
</ul>
  </div>