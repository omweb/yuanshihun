<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

 /**
 * omooo Website Management System
 *
 * @since		version 2.0.1
 * @author		omooo <omooo@gmail.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, omooo.Com, Inc.
 */
 
require FCPATH.'omooo/core/D_Page.php';

class Page extends D_Page {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
    }

    /**
     * 首页
     */
    public function index() {
		$this->_page();
    }

}