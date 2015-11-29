<div class="head">
	<div class="header">
		<div class="logo">
			<a href="<?php echo SITE_URL; ?>" title="缘始婚庆礼仪策划">
				<img src="<?php echo HOME_THEME_PATH; ?>images/logo.png"
				alt="缘始婚庆礼仪策划" width="200" height="100">
			</a>
		</div>
		<div class="menu">
			<div id="mainnav" class="menunav">
				<ul id="mainnav" class="mainnav">
				<?php $return = $this->list_tag("action=navigator type=0 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
					<li id="menu-item-<?php echo $key; ?>" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-<?php echo $key; ?>">
						<a href="">
							<span>
								<?php echo $t['name']; ?>
							</span>
						</a>
						<?php if ($t['child']) { ?>
						<ul class="sub-menu">
							<?php $return_t2 = $this->list_tag("action=navigator type=0 pid=$t[id]  return=t2"); if ($return_t2) extract($return_t2); $count_t2=count($return_t2); if (is_array($return_t2)) { foreach ($return_t2 as $key_t2=>$t2) {  if ($key_t2 < 1) { ?>
							<li  class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-233">
								<a href="<?php echo $t['url']; ?>" <?php if ($t2['target']) { ?>target="_blank"<?php } ?>>
									<?php echo $t2['name']; ?>
								</a>
							</li>							
							<?php } else { ?>
							<li  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-238">
								<a href="<?php echo $t2['url']; ?>" <?php if ($t2['target']) { ?>target="_blank"<?php } ?>>
									<?php echo $t2['name']; ?>
								</a>
							</li>
							<?php }  } } ?>
						</ul>
						<?php } ?>
					</li>
					<?php } } ?>
					
				</ul>
			</div>
		</div>
	</div>
</div>