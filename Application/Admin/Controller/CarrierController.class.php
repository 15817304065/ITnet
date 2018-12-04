<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

class CarrierController extends AdminBaseController
{

    public function index()
    {
        $navid = I('get.nav') ? I('get.nav') : 0;

        $data = M('category')->where('navid=' . $navid)->order('order_number')->select();

        $pid   = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $pname = M('admin_nav')->where('id=' . $pid)->find()['name'];

        $assign = array(
            'data'  => $data,
            'name'  => M('admin_nav')->where('id=' . $navid)->find()['name'],
            'pname' => $pname,
        );
        $this->assign($assign);

        if ($navid == '56') {
            $this->display('video');
        } else {
            $this->display();
        }

    }

    public function add()
    {
        $navid = I('get.nav') ? I('get.nav') : 0;
        $data  = I('post.');

        if (!$this->canChild($data['pid'])) {
            $this->error('error');
        }

        $result = D('Category')->addData($data);
        if ($result) {
            $this->success('success');
        } else {
            $this->error('error');
        }
    }

    private function canChild($id)
    {
        $pid = M('category')->where('id=' . $id)->find()['pid'];
        if ($pid == 0) {
            return true;
        }
        $ppid = M('category')->where('id=' . $pid)->find()['pid'];
        if ($ppid == 0) {
            return true;
        }
        return false;
    }

    public function edit()
    {
        $data = I('post.');
        // var_dump($data);die;
        $map = array(
            'id' => $data['id'],
        );
        $result = D('Category')->editData($map, $data);
        if ($result) {
            $this->success('success');
        } else {
            $this->error('error');
        }
    }

    public function delete()
    {
        $id  = I('get.id');
        $map = array(
            'id' => $id,
        );
        $result = D('Category')->deleteData($map);
        if ($result) {
            $this->success('success');
        } else {
            $this->error('error');
        }
    }

    public function order()
    {
        $data   = I('post.');
        $result = D('Category')->orderData($data);
        if ($result) {
            $this->success('success');
        } else {
            $this->error('error');
        }
    }

    public function addziliao()
    {
        $data   = I('post.');
        $result = M('ziliao')->add($data);
        if ($result) {
            $this->success('success');
        } else {
            $this->error('error');
        }
    }

}
