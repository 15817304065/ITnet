<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

/**
 * 后台资料管理控制器
 */
class ZiliaoController extends AdminBaseController
{

    public function index()
    {
        $cateid = I('get.cate') ? I('get.cate') : 0;
        $navid  = I('get.nav') ? I('get.nav') : 0;
        $data   = M('Ziliao')->where(array('cateid' => $cateid))->order('order_number')->select();

        $name = M('category')->where('id=' . $cateid)->find()['name'] ? M('category')->where('id=' . $cateid)->find()['name'] : M('category')->where('id=' . $cateid)->find()['name_en'];

        $pid      = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $navpname = M('admin_nav')->where('id=' . $pid)->find()['name'];
        $navname  = M('admin_nav')->where('id=' . $navid)->find()['name'];

        $assign = array(
            'data'     => $data,
            'name'     => $name,
            'navname'  => $navname,
            'navpname' => $navpname,

        );
        $this->assign($assign);
        $this->display();
    }

    /**
     * 添加资料
     */
    public function add()
    {
        $data = I('post.');

        // $reg = '/(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?/';
        // if (!preg_match($reg, $data['url']) && $data['url'] != "") {
        //     $this->error('不合法的中文链接');
        // }
        // if (!preg_match($reg, $data['url_en']) && $data['url_en'] != "") {
        //     $this->error('不合法的英文链接');
        // }

        if (!isset($data['createtime']) || !$data['createtime']) {
            $data['createtime'] = date('Y-m-d');
        }

        $result = M('ziliao')->add($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    /**
     * 修改资料
     */
    public function edit()
    {
        $data = I('post.');

        // $reg = '/(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?/';
        // if (!preg_match($reg, $data['url']) && $data['url'] != "") {
        //     $this->error('不合法的中文链接');
        // }
        // if (!preg_match($reg, $data['url_en']) && $data['url_en'] != "") {
        //     $this->error('不合法的英文链接');
        // }
        $map = array(
            'id' => $data['id'],
        );
        $result = D('Ziliao')->editData($map, $data);
        if ($result) {
            $this->success('修改成功');
        } else {
            $this->error('修改失败');
        }
    }

    /**
     * 删除分类
     */
    public function delete()
    {
        $id = I('get.id');

        $result = M('ziliao')->where(array('id' => $id))->delete();
        if ($result) {
            $this->success('删除成功');
        } else {
            $this->error('删除失败');
        }
    }

    /**
     * 排序
     */
    public function order()
    {
        $data   = I('post.');
        $result = D('Ziliao')->orderData($data);
        if ($result) {
            $this->success('排序成功');
        } else {
            $this->error('排序失败');
        }
    }

    public function show_hide()
    {
        $data   = I('post.');
        $result = M('ziliao')->save($data);
        if ($result) {
            $this->success('修改成功');
        } else {
            $this->error('修改失败');
        }
    }

    public function indexShowSet()
    {
        // $cateid = I('get.cate') ? I('get.cate') : 0;
        $navid    = I('get.nav') ? I('get.nav') : 0;
        $pid      = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $navpname = M('admin_nav')->where('id=' . $pid)->find()['name'];
        $navname  = M('admin_nav')->where('id=' . $navid)->find()['name'];
        $re       = M('category')->where('navid=' . $navid)->select();
        $arr      = array();
        foreach ($re as $k => $v) {
            $arr[] = $v['id'];
        }
        $where['cateid'] = array('in', $arr);
        $where['status'] = 1;
        $data            = M('ziliao')->where($where)->order('order_number')->select();
        $assign          = array(
            'data'     => $data,
            'navname'  => $navname,
            'navpname' => $navpname,
        );
        // var_dump($data);die;
        $this->assign($assign);
        $this->display();

    }

}
