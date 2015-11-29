<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<p><?php if ($vurl) { ?>
<embed src="<?php echo $vurl; ?>" allowFullScreen="true" quality="high" width="900" height="506" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
<?php } else { ?>
视频格式不正确
<?php } ?>
</p><script type="text/javascript" src="http://www.yuanshihun.com/index.php?c=cron"></script>