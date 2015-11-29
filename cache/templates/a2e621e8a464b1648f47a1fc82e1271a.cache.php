  <div class="title_jfnews" style="position:relative;">
  	<a href="<?php echo $ci->get_cache('module-1-news', 'category', 1, 'url'); ?>" target="_blank" class="inewsmore"></a>
  	<img style="display: inline;" src="<?php echo HOME_THEME_PATH; ?>images/title_jfnews.jpg">
  	</div>
  <div class="jfnews">

	<ul class="inews">
		<?php $return = $this->list_tag("action=module flag=1 module=news order=updatetime num=10"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
		<li>
			<div class="newsindexl">
				<a href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>">
					<!--调用缩略图 start-->
					<img src="<?php echo dr_thumb($t['thumb'],80,80); ?>"
					class="attachment-thumbnail wp-post-image" alt="<?php echo $t['title']; ?>"
					title="<?php echo $t['title']; ?>" width="80px" height="80px" />
					<!--调用缩略图 end-->
				</a>
			</div>
			<div class="newsindexr">
				<h2>
					<a href="<?php echo $t['url']; ?>">
						<?php echo $t['title']; ?>
					</a>
				</h2>
				<em>
					POST TIME：<?php echo dr_date($t['_updatetime'], 'Y-m-d'); ?>
				</em>
				<p>
					<?php echo $t['description']; ?>
				</p>
			</div>
		</li>
		 <?php } } ?>
	</ul>
            
  </div>