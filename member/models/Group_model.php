<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.2
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 */
	
class Group_model extends CI_Model{
    
	/**
	 * 初始化
	 */
    public function __construct() {
        parent::__construct();
    }
	
	/**
	 * 所有数据
	 *
	 * @return	void
	 */
	public function get_data() {

		$_data = $this->db
					  ->order_by('displayorder ASC')
					  ->get('member_group')
					  ->result_array();
		if (!$_data) {
            return NULL;
        }

		$data = array();
		foreach ($_data as $t) {
			$t['level'] = $this->db->where('groupid', $t['id'])->count_all_results('member_level');
			$t['allowfield'] = dr_string2array($t['allowfield']);
			$t['spacefield'] = dr_string2array($t['spacefield']);
			$data[] = $t;
		}

		return $data;
	}
	
	/**
	 * 数据
	 *
	 * @param	int		$id
	 * @return	array
	 */
	public function get($id) {

		$_data = $this->db
					  ->limit(1)
					  ->where('id', (int)$id)
					  ->get('member_group')
					  ->row_array();
		if (!$_data) {
            return NULL;
        }

		$_data['allowfield'] = dr_string2array($_data['allowfield']);
		$_data['spacefield'] = dr_string2array($_data['spacefield']);

		return $_data;
	}
	
	/**
	 * 添加
	 *
	 * @param	array	$data
	 * @return	int		存储表id
	 */
	public function add($data) {

		if (!$data) {
            return NULL;
        }

		$this->db->insert('member_group', array(
			'name' => $data['name'],
			'theme' => $data['theme'],
			'template' => $data['template'],
			'price' => $data['price'],
			'unit' => (int)$data['unit'],
			'limit' => (int)$data['limit'],
			'overdue' => (int)$data['overdue'],
			'allowfield' => dr_array2string($data['allowfield']),
			'spacefield' => dr_array2string($data['spacefield']),
			'allowapply' => (int)$data['allowapply'],
			'allowspace' => (int)$data['allowspace'],
            'spacetemplate' => $data['spacetemplate'],
			'displayorder' => 0
		));

		return $this->db->insert_id();
    }
	
	/**
	 * 修改
	 *
	 * @param	array	$data
	 * @return	int		存储表id
	 */
	public function edit($id, $data) {

		if (!$data || !$id) {
            return NULL;
        }

		$this->db->where('id', $id)->update('member_group', array(
			'name' => $data['name'],
			'unit' => (int)$data['unit'],
			'theme' => $data['theme'],
			'price' => $data['price'],
			'limit' => (int)$data['limit'],
			'overdue' => (int)$data['overdue'],
			'template' => $data['template'],
			'allowfield' => dr_array2string($data['allowfield']),
			'spacefield' => dr_array2string($data['spacefield']),
            'spacetemplate' => $data['spacetemplate'],
			'allowapply' => (int)$data['allowapply'],
			'allowspace' => (int)$data['allowspace']
		));

        $syn = $this->input->post('syn');
        $synid = $this->input->post('synid');

        if ($syn && $synid) {

            $update = array();
            if (in_array(1, $syn)) {
                // 主题风格
                $update['theme'] = $data['theme'];
            }
            if (in_array(2, $syn)) {
                // 模板目录
                $update['template'] = $data['template'];
            }
            if (in_array(3, $syn)) {
                // 会员字段
                $update['allowfield'] = dr_array2string($data['allowfield']);
            }
            if (in_array(4, $syn)) {
                // 空间字段
                $update['spacefield'] = dr_array2string($data['spacefield']);
            }
            if (in_array(5, $syn)) {
                // 允许使用空间
                $update['allowspace'] = $data['allowspace'];
            }

            $this->db->where_in('id', $synid)->update('member_group', $update);
        }
    }
	
	/**
	 * 删除
	 *
	 * @param	array	$id
	 */
	public function del($id) {

		if (!$id) {
            return NULL;
        }

		if (!is_array($id)) {
            $id = array($id);
        }

		foreach ($id as $i => $ii) {
			if ($ii <= 3) {
                unset($id[$i]);
            }
		}

		if (!$id) {
            return NULL;
        }

		$this->db->where_in('id', $id)->delete('member_group');
		$this->db->where_in('groupid', $id)->update('member', array('groupid' => 3));
    }
}