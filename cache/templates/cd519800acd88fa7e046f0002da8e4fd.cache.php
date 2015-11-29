<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<script type="text/javascript">
$(function(){
	<?php if ($result_error) { ?>
	dr_tips("<?php echo $result_error; ?>", 3);
	<?php } ?>
});
</script>
<div class="content clearfix">
	<?php if ($fn_include = $this->_include("navigator.html")) include($fn_include); ?>
    <div class="section_wp">
        <div class="section_title">
        	<a href="javascript:;" class="cur"><?php echo $meta_name; ?></a>
        </div>
        <div id="message_id" class="section_main">
            <form method="post" action="">
            <table width="100%" class="table_form">
            <tr>
                <th width="160"><font color="red">*</font>&nbsp;城市： </th>
                <td><?php echo dr_field_input('city', 'Linkage', array('option' => array('linkage' => 'address'),'validate' => array('required' => 1 )), $data['city']); ?></td>
            </tr>
            <tr>
                <th><font color="#FF0000">*</font>&nbsp;姓名：</th>
                <td><input type="text" name="data[name]" value="<?php echo $data['name']; ?>" required="required" style="width:150px" class="input_text" /></td>
            </tr>
            <tr>
            	<th><font color="#FF0000">*</font>&nbsp;电话：</th>
                <td><input type="text" name="data[phone]" value="<?php echo $data['phone']; ?>" required="required" style="width:200px" class="input_text" /></td>
            </tr>
            <tr>
            	<th><font color="#FF0000">*</font>&nbsp;邮编：</th>
                <td><input type="text" name="data[zipcode]" value="<?php echo $data['zipcode']; ?>" required="required" style="width:200px" class="input_text" /></td>
            </tr>
            <tr>
            	<th><font color="#FF0000">*</font>&nbsp;地址：</th>
                <td><input type="text" name="data[address]" value="<?php echo $data['address']; ?>" required="required" style="width:350px" class="input_text" /></td>
            </tr>
            <tr>
            	<th><font color="#FF0000">*</font>&nbsp;设为默认：</th>
                <td><select name="data[default]">
                    <option <?php if (!$data['default']) { ?>selected="selected"<?php } ?> value="0">否</option>
                    <option <?php if ($data['default']) { ?>selected="selected"<?php } ?> value="1">是</option>
                </select></td>
            </tr>
            <tr>
                <th style="border-bottom:none">&nbsp;</th>
                <td style="border-bottom:none;padding-top: 20px;"><div class="mbutton"><button value="" type="submit" class="blue_button">保存</button></div></td>
            </tr>
            </table>
            </form>
        </div>
    </div>
</div>

<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>