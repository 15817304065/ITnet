<?php
//网站主配置项
return array(
//*************************************附加设置***********************************
    'DEFAULT_MODULE'       => 'Home', // 默认模块
    'DEFAULT_CONTROLLER'   => 'Index', // 默认控制器名称
    'DEFAULT_ACTION'       => 'index', // 默认操作名称
    'DEFAULT_M_LAYER'      => 'Model', // 默认的模型层名称
    'DEFAULT_C_LAYER'      => 'Controller', // 默认的控制器层名称
    'VAR_MODULE'           => 'm', // 默认模块获取变量
    'VAR_CONTROLLER'       => 'c', // 默认控制器获取变量
    'VAR_ACTION'           => 'a', // 默认操作获取变量
    'DEFAULT_FILTER'       => 'strip_tags,trim',

    'URL_CASE_INSENSITIVE' => false, // url区分大小写
    'TAGLIB_BUILD_IN'      => 'Cx,Common\Tag\My', // 加载自定义标签
    'LOAD_EXT_CONFIG'      => 'db,alipay,oauth', // 加载网站设置文件
    'TMPL_PARSE_STRING'    => array( // 定义常用路径
        '__OSS__'            => OSS_URL,
        '__PUBLIC__'         => OSS_URL . __ROOT__ . '/Public',
        '__HOME_CSS__'       => __ROOT__ . trim(TMPL_PATH, '.') . 'Home/Public/css',
        '__HOME_JS__'        => __ROOT__ . trim(TMPL_PATH, '.') . 'Home/Public/js',
        '__HOME_IMAGES__'    => OSS_URL . trim(TMPL_PATH, '.') . 'Home/Public/images',
        '__ADMIN_CSS__'      => __ROOT__ . trim(TMPL_PATH, '.') . 'Admin/Public/css',
        '__ADMIN_JS__'       => __ROOT__ . trim(TMPL_PATH, '.') . 'Admin/Public/js',
        '__ADMIN_IMAGES__'   => OSS_URL . trim(TMPL_PATH, '.') . 'Admin/Public/images',
        '__ADMIN_ACEADMIN__' => OSS_URL . __ROOT__ . '/Public/statics/aceadmin',
        '__PUBLIC_CSS__'     => __ROOT__ . trim(TMPL_PATH, '.') . 'Public/css',
        '__PUBLIC_JS__'      => __ROOT__ . trim(TMPL_PATH, '.') . 'Public/js',
        '__PUBLIC_IMAGES__'  => OSS_URL . trim(TMPL_PATH, '.') . 'Public/images',
        '__USER_CSS__'       => __ROOT__ . trim(TMPL_PATH, '.') . 'User/Public/css',
        '__USER_JS__'        => __ROOT__ . trim(TMPL_PATH, '.') . 'User/Public/js',
        '__USER_IMAGES__'    => OSS_URL . trim(TMPL_PATH, '.') . 'User/Public/images',
        '__APP_CSS__'        => __ROOT__ . trim(TMPL_PATH, '.') . 'App/Public/css',
        '__APP_JS__'         => __ROOT__ . trim(TMPL_PATH, '.') . 'App/Public/js',
        '__APP_IMAGES__'     => OSS_URL . trim(TMPL_PATH, '.') . 'App/Public/images',
    ),
//***********************************URL设置**************************************
    'URL_HTML_SUFFIX'      => '', // URL伪静态后缀设置
    'URL_MODEL'            => 1, //启用rewrite
    //***********************************SESSION设置**********************************
    'SESSION_OPTIONS'      => array(
        'name'             => 'itnet_', //设置session名
        'expire'           => 24 * 3600 * 3, //SESSION保存2天
        // 'expire'           => 60, //SESSION保存60s
        'use_trans_sid'    => 1, //跨页传递
        'use_only_cookies' => 1, //是否只开启基于cookies的session的会话方式
    ),

    'COOKIE_EXPIRE'        => 0, // Cookie有效期
    'COOKIE_PREFIX'        => 'itnet_', // Cookie前缀 避免冲突
    // 'SHOW_PAGE_TRACE'        => false, //调试模式开启调试面板
    //***********************************页面设置**************************************
    'TMPL_EXCEPTION_FILE'  => APP_DEBUG ? THINK_PATH . 'Tpl/think_exception.tpl' : './Template/default/Home/Public/404.html',
    'TMPL_ACTION_ERROR'    => TMPL_PATH . '/Public/dispatch_jump.tpl', // 默认错误跳转对应的模板文件
    'TMPL_ACTION_SUCCESS'  => TMPL_PATH . '/Public/dispatch_jump.tpl', // 默认成功跳转对应的模板文件
    //***********************************auth设置**********************************
    'AUTH_CONFIG'          => array(
        'AUTH_USER' => 'users', //用户信息表
    ),

);
