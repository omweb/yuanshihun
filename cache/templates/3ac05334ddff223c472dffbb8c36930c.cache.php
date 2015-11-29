    <div class="caselefttitle"><a href="" class="leftmore"></a></div>
    	    <div class="caseleft">
        <div class="caseleftimg">
        <?php $return = $this->list_tag("action=module module=case  order=displayorder,updatetime num=4"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
          <a style="<?php if ($key < 1) { ?>display:inline;<?php } else { ?>display:none;<?php } ?>" href="<?php echo $t['url']; ?>" title="<?php echo $t['title']; ?>">
            
            <img src="<?php echo dr_thumb($t['thumb'], 230,163); ?>" class="attachment-thumbnail wp-post-image"
            alt="<?php echo $t['title']; ?>" title="<?php echo $t['title']; ?>" width="230px" height="163px" />
           
          </a>
          
          <?php } } ?>
        </div>
        <div class="caseleftmenu">
        <?php $return = $this->list_tag("action=module module=case  order=displayorder,updatetime num=4"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
          <a class="cur" href="javascript:void(0);">
           
            <img src="<?php echo dr_thumb($t['thumb'], 46,46); ?>" class="attachment-thumbnail wp-post-image"
            alt="<?php echo $t['title']; ?>" title="<?php echo $t['title']; ?>" width="46px" height="46px" />
           
          </a>
         <?php } } ?>
        </div>      
    </div>
        
    <div class="newslefttitle"></div>
    <div class="newsleft">
      	<ul>
	    <?php $return = $this->list_tag("action=module module=news  order=updatetime num=10"); if ($return) extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
	        <li><a href="<?php echo $t['url']; ?>"  title="<?php echo $t['title']; ?>"><?php echo $t['title']; ?></a></li>               
  		<?php } } ?>
        </ul>
    </div>
    
    <div class="lianxi">
      <p> <img style="display: inline;" src="<?php echo HOME_THEME_PATH; ?>images/lianxi_tel.jpg" data-original="<?php echo HOME_THEME_PATH; ?>images/lianxi_tel.jpg"></p>
      <strong>13778112085</strong>
      <p> <img style="display: inline;" src="<?php echo HOME_THEME_PATH; ?>images/lianxi_dz.jpg" data-original="<?php echo HOME_THEME_PATH; ?>images/lianxi_dz.jpg"></p>
      <span>
      	北京市东城区 爱喜嘉年华B栋七楼七号
      	<img src="<?php echo HOME_THEME_PATH; ?>images/map.jpg" />
      	<img src="<?php echo HOME_THEME_PATH; ?>images/lianxi_map.png" />
      </span> 
    </div>   