<div class="mianbao">
    <h2>  <?php $cache = $this->_cache_var('CATEGORY'); eval('echo $cache'.$this->_get_var('$catid.name').';');unset($cache); ?></h2>
    <span>您所在的位置：<a href="/"class="gray">首页</a> >> <?php echo dr_catpos($catid, '  >> '); ?></span></div>