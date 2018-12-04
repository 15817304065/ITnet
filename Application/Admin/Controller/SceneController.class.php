<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

/**
 * 后台场景管理控制器
 */
class SceneController extends AdminBaseController
{

    public function index()
    {
        // var_dump(1);
        $caseid = I('get.case') ? I('get.case') : 0;

        $name = M('case')->where('id=' . $caseid)->find()['id'];
        $data = M('scene')->where(array('caseid' => $caseid))->order('order_number')->select();

        $navid    = I('get.nav') ? I('get.nav') : 0;
        $pid      = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $navpname = M('admin_nav')->where('id=' . $pid)->find()['name'];
        $navname  = M('admin_nav')->where('id=' . $navid)->find()['name'];

        $assign = array(
            'data'     => $data,
            'name'     => "机会点id" . $name,
            'navname'  => $navname,
            'navpname' => $navpname,

        );
        $this->assign($assign);
        $this->display();
    }

    /**
     * 添加场景
     */
    public function add()
    {
        $data = I('post.');

        $reg = '/(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?/';
        if (!preg_match($reg, $data['url']) && $data['url'] != "") {
            $this->error('不合法的链接');
        }

        $data['createtime'] = date('Y-m-d H:i:s');

        $result = M('scene')->add($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    /**
     * 修改场景
     */
    public function edit()
    {
        $data = I('post.');

        $reg = '/(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?/';
        if (!preg_match($reg, $data['url']) && $data['url'] != "") {
            $this->error('不合法的链接');
        }

        $map = array(
            'id' => $data['id'],
        );
        $result = D('Scene')->editData($map, $data);
        if ($result) {
            $this->success('修改成功');
        } else {
            $this->error('修改失败');
        }
    }

    /**
     * 删除场景
     */
    public function delete()
    {
        $id = I('get.id');

        $result = M('scene')->where(array('id' => $id))->delete();
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
        $result = D('scene')->orderData($data);
        if ($result) {
            $this->success('排序成功');
        } else {
            $this->error('排序失败');
        }
    }

}
