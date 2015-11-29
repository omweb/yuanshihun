<div class="top">
	<div class="toper">
		<div class="hybiaoti">
			<?php echo om_block(1); ?>
		</div>
		<div class="topmenu">
			<?php $return = $this->list_tag("action=navigator type=2 pid=0"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
			<a <?php if ($key < 1) { ?>class="nobg"<?php } ?> href="<?php echo $t['url']; ?>" <?php if ($t['target']) { ?>target="_blank"<?php } ?>>
				<?php echo $t['name']; ?>
			</a>
			<?php } } ?>
            		
		</div>
	</div>
</div>