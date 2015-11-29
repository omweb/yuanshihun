<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script type="text/javascript">
function dr_delete(id) {
    art.dialog.confirm("你确认要删除吗？", function(){
		// 将表单数据ajax提交验证
		$.ajax({type: "POST",dataType:"json", url: "<?php echo dr_member_url($dclass.'/index'); ?>",data: {id:id, action:'delete'}, success: function(data) {
				//验证成功
				if (data.status == 1) {
					$.dialog.tips(data.code, 3, 1);
					$("#dr_row_"+id).hide();
				} else {
					$.dialog.tips(data.code, 3, 0);
				}
                art.dialog.close();
                return false;
			},
			error: function(HttpRequest, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + HttpRequest.statusText + "\r\n" + HttpRequest.responseText);
			}
		});
		return true;
	});
	return false;
}
</script>
<input name="page" id="dr_page" type="hidden" value="2" />
<div class="content clearfix">
	<?php if ($fn_include = $this->_include("navigator.html")) include($fn_include); ?>
    <div class="article">
        <div class="section">
            <div class="title"><strong><?php echo $meta_name; ?></strong></div>
            <div class="main dr_table">
				<div class="msearch mbutton">
					<a href="<?php echo dr_member_url('address/add'); ?>" class="cur" name="updatetime">添加</a>
				</div>
                <div class="bk10"></div>
				<table style="table-layout:fixed;margin-bottom: 0;">
				<thead>
					<tr>
						<th style="width:30px;" class="algin_c">默认</th>
						<th style="width:70px;" class="algin_l">姓名</th>
						<th style="width:80px;" class="algin_l">电话</th>
						<th style="width:50px;" class="algin_l">邮编</th>
						<th class="algin_l">地址</th>
						<th style="width:80px;" class="algin_l">操作</th>
					</tr>
				</thead>
				<tbody id="dr_body">
				<?php if (is_array($list)) { $count=count($list);foreach ($list as $t) { ?>
                <tr id="dr_row_<?php echo $t['id']; ?>">
                    <td class="algin_c"><?php if ($t['default']) { ?><font color="green">√</font><?php } else { ?><font color="red">×</font><?php } ?></td>
                    <td class="algin_l"><?php echo $t['name']; ?></td>
                    <td class="algin_l"><?php echo $t['phone']; ?></td>
                    <td class="algin_l"><?php echo $t['zipcode']; ?></td>
                    <td class="algin_l"><?php echo dr_linkagepos('address', $t['city'], '&nbsp;&nbsp;', NULL); ?>&nbsp;&nbsp;<?php echo $t['address']; ?></td>
					<td class="algin_l">
                    <a href="<?php echo dr_member_url('address/edit', array('id'=>$t['id'])); ?>">修改</a>
                    <a href="<?php echo dr_member_url('address/del', array('id'=>$t['id'])); ?>">删除</a>
                    </td>
                </tr>
                <?php } } ?>
				</tbody>
				</table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function() {
	$("#dr_body tr").last().addClass("dr_border_none");
}); 
</script>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>