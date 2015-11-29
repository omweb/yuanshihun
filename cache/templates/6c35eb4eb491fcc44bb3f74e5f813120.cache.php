<div class="banner"> <a href="javascript:void(0)" class="bn_prev"></a> <a href="javascript:void(0)" class="bn_next"></a>
  <div class="bannerimg">
    <ul>
    		<?php $return = $this->list_tag("action=navigator type=1 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <li><a href="<?php echo $t['url']; ?>" target="_blank"><img src="<?php echo dr_thumb($t['thumb']); ?>"></a></li>
            <?php } } ?>
      </ul>
  </div>
  <div class="bmenu">
	<div class="bannermenu" style="display:none;">
		<ul>
			<li class="cur">
				<a href="javascript:void(0);">
				</a>
				<div class="bimg">
					<img src="<?php echo HOME_THEME_PATH; ?>images/b.png">
				</div>
			</li>
			<li class="">
				<a href="javascript:void(0);">
				</a>
				<div class="bimg">
					<img src="<?php echo HOME_THEME_PATH; ?>images/b.png">
				</div>
			</li>
			<li class="">
				<a href="javascript:void(0);">
				</a>
				<div class="bimg">
					<img src="<?php echo HOME_THEME_PATH; ?>images/b.png">
				</div>
			</li>
			<li class="">
				<a href="javascript:void(0);">
				</a>
				<div class="bimg">
					<img src="<?php echo HOME_THEME_PATH; ?>images/b.png">
				</div>
			</li>
		</ul>
	</div>
	<div class="bsns">
		<a href="http://wpa.qq.com/msgrd?=3&uin=<?php echo om_block(2); ?>&menu=yes" target="_blank"
		rel="nofollow" class="qq">
		</a>
		<?php $return = $this->list_tag("action=navigator type=4 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if ($t['id']=53) { ?>
		<a href="<?php echo dr_thumb($t['thumb']); ?>"
		target="_blank" class="weixin orderbox">
		</a>
		<?php }  } } ?>
		<a href="<?php echo om_block(3); ?>" target="_blank" rel="nofollow" class="weibo">
		</a>
		<a href="" target="_blank" rel="nofollow" class="gengduo">
		</a>
	</div>
</div>
  
</div>