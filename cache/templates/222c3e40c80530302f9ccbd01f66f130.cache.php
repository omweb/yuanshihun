<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script language="javascript">
function dr_select_all() {
    $("#dr_synid").find("option").attr("selected", "selected");
}
</script>
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<?php echo $menu; ?>
	</div>
	<div class="bk10"></div>
	<div class="explain-col">
		<font color="gray"><?php echo lang('html-389'); ?></font>
	</div>
	<div class="bk10"></div>
	<div class="table-list col-tab">
		<form action="" method="post" name="myform" id="myform" target="result">
		<div class="contentList pad-10">
			<table width="100%" class="table_form">
			<tr>
				<th width="200">&nbsp;<?php echo lang('cat-19'); ?>： </th>
				<td>
                    <?php echo $select; ?>
                    <input value="<?php echo lang('html-605'); ?>" type="button" onclick="dr_select_all()" name="button" class="button" />
                </td>
			</tr>
			<tr>
				<th>&nbsp;</th>
				<td><input class="button noloading" type="submit" name="submit" value="<?php echo lang('submit'); ?>" /></td>
			</tr>
			<tr height="80">
				<th style="border-bottom:none">&nbsp;</th>
				<td style="padding-left:2px;"><iframe name="result" frameborder="0" id="result" width="100%" height="80"></iframe></td>
			</tr>
			</table>
		</div>
		</form>
	</div>
</div>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>