<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

class NavController extends AdminBaseController
{

    public function index()
    {
        $data = D('AdminNav')->getTreeData('level', 'order_number,id');
        $this->setData($data);

        $assign = array(
            'data' => $data,
        );
        $this->assign($assign);
        $this->display();
    }

    public function add()
    {
        $data = I('post.');
        unset($data['id']);
        $result = D('AdminNav')->addData($data);
        if ($result) {
            $this->success('success', U('Admin/Nav/index'));
        } else {
            $this->error('error');
        }
    }

    public function edit()
    {
        $data = I('post.');
        $map  = array(
            'id' => $data['id'],
        );
        $result = D('AdminNav')->editData($map, $data);
        if ($result) {
            $this->success('success', U('Admin/Nav/index'));
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
        $result = D('AdminNav')->deleteData($map);
        if ($result) {
            $this->success('success', U('Admin/Nav/index'));
        } else {
            $this->error('error');
        }
    }

    public function order()
    {
        $data   = I('post.');
        $result = D('AdminNav')->orderData($data);
        if ($result) {
            $this->success('success', U('Admin/Nav/index'));
        } else {
            $this->error('error');
        }
    }

    private function setData(&$data)
    {
        foreach ($data as $a => $b) {
            $bb = $b['_data'];
            if (empty($bb)) {
                $pp = M('AdminNav')->where('pid=' . $b['id'])->select();
                if (empty($pp)) {
                    $data[$a]['haschild'] = '0';
                } else {
                    $data[$a]['haschild'] = '1';
                }
            } else {
                $data[$a]['haschild'] = '1';
                foreach ($b['_data'] as $c => $d) {
                    $dd = $d['_data'];
                    if (empty($dd)) {
                        $mm = M('AdminNav')->where('pid=' . $d['id'])->select();
                        if (empty($mm)) {
                            $data[$a]['_data'][$c]['haschild'] = '0';
                        } else {
                            $data[$a]['_data'][$c]['haschild'] = '1';
                        }
                    } else {
                        $data[$a]['_data'][$c]['haschild'] = '1';
                        foreach ($d['_data'] as $e => $f) {
                            $data[$a]['_data'][$c]['_data'][$e]['haschild'] = '0';
                        }
                    }
                }
            }
        }
        return $data;
    }

}
