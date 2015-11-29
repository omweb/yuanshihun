  <div class="title_case"><a href="<?php echo $ci->get_cache('module-1-case', 'category', 2, 'url'); ?>"></a></div>
  <div class="caseindex">
	   <ul>
	   <?php $return = $this->list_tag("action=module flag=1 module=case order=updatetime num=7"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
		<li class="ci<?php echo $key+1; ?>">
			<a href="<?php echo $t['url']; ?>">
				<img src="<?php echo dr_thumb($t['thumb']); ?>"
				alt="<?php echo $t['title']; ?>" title="<?php echo $t['title']; ?>" />
				<span class="png">
					<h2>
						<?php echo $t['title']; ?>
					</h2>
				</span>
			</a>
		</li>	
		 <?php } } ?>		
	</ul>    
     
  </div>