<?php
namespace Home\Controller;

use Common\Controller\HomeBaseController;

/**
 * 3ms首页Controller
 */
class IndexController extends HomeBaseController
{
    /**
     * 首页
     */
    public $lang = "cn";
    public function _initialize()
    {
        $this->lang = I('lang') ? strtolower(I('lang')) : "cn";
    }

    public function index()
    {
        $this->display(':index');
    }
    public function index_show()
    {
        $url_data     = [];
        $url_data[60] = M('video')->where('cateid=60')->order('order_number,state desc')->select();
        $url_data[61] = M('video')->where('cateid=61')->order('order_number,state desc')->select();
        $assign       = array(
            'url_data' => $url_data,
        );
        $this->assign($assign);
        if ($this->lang == 'en') {
            $this->display('index_en'); //英文版页面
        } else {
            $this->display('index');
        }
    }

    public function carrier()
    {
        $this->tt('carrier');

    }
    public function safe_city()
    {
        $this->tt('safe_city');

    }
    public function government()
    {
        $this->tt('government');

    }
    public function finance()
    {
        $this->tt('finance');

    }
    public function large_enterprise()
    {
        $this->tt('large_enterprise');

    }
    private function tt($name)
    {

        $nav_data = D('AdminNav')->where('state=0')->getTreeData('level', 'order_number,id'); //顶部导航数据

        $action = strtolower(ACTION_NAME);
        switch ($action) {
            case 'carrier':
                $navid   = 33;
                $nav_top = $nav_data[10];
                break;

            case 'safe_city':
                $navid   = 35;
                $nav_top = $nav_data[16];
                break;
            case 'government':
                $navid   = 36;
                $nav_top = $nav_data[21];
                break;
            case 'finance':
                $navid   = 38;
                $nav_top = $nav_data[37];
                break;
            case 'large_enterprise':
                $navid   = 40;
                $nav_top = $nav_data[39];
                break;
        }
        $case_data = D('case')->where('navid=' . $navid)->order('order_number')->select(); //机会点地图数据
        foreach ($case_data as $k => $v) {

            $case_data[$k]['_data'] = M('scene')->where(array('caseid' => $v['id']))->order('order_number')->select();

            $arr      = [];
            $offering = M('offering')->where('caseid=' . $v['id'])->select();

            foreach ($offering as $value) {
                if ($value['name']) {
                    if (strrpos($value['name'], "+")) {
                        if ($value['url']) {
                            $arr['name'][] = "<a href='" . $value['url'] . "'>" . substr($value['name'], 0, -1) . "</a>+";
                        } else {
                            $arr['name'][] = "<a>" . substr($value['name'], 0, -1) . "</a>+";
                        }
                    } else {

                        if ($value['url']) {
                            $arr['name'][] = "<a href='" . $value['url'] . "'>" . $value['name'] . "</a>";
                        } else {
                            $arr['name'][] = "<a>" . $value['name'] . "</a>";
                        }
                    }
                }
                if ($value['name_en']) {
                    if (strrpos($value['name_en'], "+")) {
                        if ($value['url_en']) {
                            $arr['name_en'][] = "<a href='" . $value['url_en'] . "'>" . substr($value['name_en'], 0, -1) . "</a>+";
                        } else {
                            $arr['name_en'][] = "<a>" . substr($value['name_en'], 0, -1) . "</a>+";
                        }
                    } else {
                        if ($value['url_en']) {
                            $arr['name_en'][] = "<a href='" . $value['url_en'] . "'>" . $value['name_en'] . "</a>";
                        } else {
                            $arr['name_en'][] = "<a>" . $value['name_en'] . "</a>";
                        }
                    }
                }

            }
            $str = $str2 = "";

            foreach ($arr['name'] as $vs) {
                $ss = mb_substr($vs, -1);
                if ($ss == "+") {
                    $str .= $vs;
                } else {
                    $str .= $vs . "，";
                }
            }
            foreach ($arr['name_en'] as $vt) {
                $ss = mb_substr($vt, -1);
                if ($ss == "+") {
                    $str2 .= $vt;
                } else {
                    $str2 .= $vt . "，";
                }
            }
            $str                          = substr($str, 0, strlen($str) - 3);
            $str2                         = substr($str2, 0, strlen($str2) - 3);
            $case_data[$k]['offering']    = $str;
            $case_data[$k]['offering_en'] = $str2;

        }

        $arr_data    = M('category')->where(array('state' => array('neq', 1), 'type' => array('neq', 2)))->order('order_number')->select();
        $arr_data_en = M('category')->where(array('state' => array('neq', 1), 'type' => array('neq', 1)))->order('order_number')->select();

        $nid = [];
        foreach ($nav_top['_data'] as $a => $b) {
            if (!strpos($b['name'], '机会点地图')) {
                $nid[] = $b['id'];
            }
        }

        $category_data = $category_data_en = []; //资料数据
        foreach ($arr_data as $k => $v) {
            $category_data[$v['navid']][] = $v;
        }
        foreach ($arr_data_en as $k => $v) {
            $category_data_en[$v['navid']][] = $v;
        }
        foreach ($category_data as $x => $y) {
            foreach ($y as $a => $b) {
                $category_data[$x][$a]['ziliao'] = M('ziliao')->where(array('cateid' => $b['id'], 'state' => array('neq', 1), 'type' => array('neq', 2)))->order('order_number')->select();
            }
        }
        foreach ($category_data_en as $m => $n) {
            foreach ($n as $c => $d) {
                $category_data_en[$m][$c]['ziliao'] = M('ziliao')->where(array('cateid' => $d['id'], 'state' => array('neq', 1), 'type' => array('neq', 1)))->order('order_number')->select();
            }
        }
        // var_dump($category_data_en[11]);die;
        $width_arr = array(
            'table1' => array(
                array('width' => "25%", 'width_en' => "25%", "name" => "业务场景", "name_en" => "Break-down Scenarios", "position" => ""),
                array('width' => "15%", 'width_en' => "15%", "name" => "CXO话题", "name_en" => "CXO Topics", "position" => ""),
                array('width' => "25%", 'width_en' => "25%", "name" => "解决方案", "name_en" => "Solution Topics", "position" => ""),
                array('width' => "35%", 'width_en' => "35%", "name" => "Offering", "name_en" => "Offering", "position" => ""),
            ),
            'table2' => array(
                array('width' => "15%", 'width_en' => "15%", "name" => "资料类型", "name_en" => "Material Type", "position" => ""),
                array('width' => "50%", 'width_en' => "40%", "name" => "文档名称", "name_en" => "File Name", "position" => ""),
                array('width' => "12%", 'width_en' => "12%", "name" => "作者", "name_en" => "Author", "position" => ""),
                array('width' => "13%", 'width_en' => "13%", "name" => "发布日期", "name_en" => "Release Date", "position" => "center"),
                array('width' => "5%", 'width_en' => "10%", "name" => "中文链接", "name_en" => "CN Link", "position" => "center"),
                array('width' => "5%", 'width_en' => "10%", "name" => "英文链接", "name_en" => "EN Link", "position" => "center"),
            ),
        );
        $url_data     = [];
        $url_data[60] = M('video')->where('cateid=60')->order('order_number,state desc')->select();
        $url_data[61] = M('video')->where('cateid=61')->order('order_number,state desc')->select();

        $assign = array(
            'nav_top'          => $nav_top,
            'nav_data'         => $nav_data,
            'case_data'        => $case_data,
            'category_data'    => $category_data,
            'category_data_en' => $category_data_en,
            'width_arr'        => $width_arr,
            'nid'              => $nid,
            'url_data'         => $url_data,

        );

        $this->assign($assign);

        if ($this->lang == 'en') {
            $this->display($name . '_en'); //英文版页面
        } else {
            $this->display($name);
        }
    }

    public function _empty($methed_name)
    {
        $this->redirect('Home/index/index');
        exit(0);
    }

}
