<?php
namespace Admin\Controller;

use Common\Controller\AdminBaseController;

/**
 * 分类管理控制器
 */
class CaseController extends AdminBaseController
{

    public function index()
    {
        $this->_tt();
        $this->display();

    }
    public function en()
    {
        $this->_tt();
        $this->display('index_en');
    }
    private function _tt()
    {
        $navid = I('get.nav') ? I('get.nav') : 0; //菜单id

        $data = D('case')->where('navid=' . $navid)->order('order_number')->select();
        $this->setData($data);

        $pid   = M('admin_nav')->where('id=' . $navid)->find()['pid'];
        $pname = M('admin_nav')->where('id=' . $pid)->find()['name'];

        $assign = array(
            'data'  => $data,
            'name'  => M('admin_nav')->where('id=' . $navid)->find()['name'],
            'pname' => $pname,
        );

        $this->assign($assign);
    }

    /**
     * 添加分类
     */
    public function add()
    {
        $navid = I('get.nav') ? I('get.nav') : 0;
        $data  = I('post.');

        if (!$data['solution'] && !$data['cxo'] && !$data['offering']) {
            $this->error('添加失败');
        }

        $result = D('Case')->addData($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    /**
     * 修改分类
     */
    public function edit()
    {
        $data = I('post.');

        $map = array(
            'id' => $data['id'],
        );
        $result = D('Case')->editData($map, $data);
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
        $id  = I('get.id');
        $map = array(
            'id' => $id,
        );
        $result = D('Case')->fetchSql(true)->deleteData($map);

        if ($result) {
            $this->success('删除成功');
        } else {
            $this->error('请先删除子分类');
        }
    }

    /**
     * 分类排序
     */
    public function order()
    {
        $data   = I('post.');
        $result = D('Case')->orderData($data);
        if ($result) {
            $this->success('排序成功');
        } else {
            $this->error('排序失败');
        }
    }

    public function addChance()
    {
        $data   = I('post.');
        $result = M('chance')->add($data);
        if ($result) {
            $this->success('添加成功');
        } else {
            $this->error('添加失败');
        }
    }

    private function setData(&$data)
    {

        foreach ($data as $k => $v) {
            $arr  = [];
            $arr2 = [];
            $sec  = M('scene')->where('caseid=' . $v['id'])->select();
            foreach ($sec as $value) {
                $arr['name'][]    = $value['name'];
                $arr['name_en'][] = $value['name_en'];
            }
            $offering = M('offering')->where('caseid=' . $v['id'])->select();
            foreach ($offering as $value) {
                $arr2['name'][]    = $value['name'];
                $arr2['name_en'][] = $value['name_en'];
            }

            $data[$k]['scene']    = implode("、", $arr['name']);
            $data[$k]['scene_en'] = implode("、", $arr['name_en']);

            $str = $str2 = "";
            foreach ($arr2['name'] as $vs) {
                $ss = substr($vs, -1);
                if ($ss == "+") {
                    $str .= $vs;
                } else {
                    $str .= $vs . "，";
                }
            }

            foreach ($arr2['name_en'] as $vt) {
                $ss = substr($vt, -1);
                if ($ss == "+") {
                    $str2 .= $vt;
                } else {
                    $str2 .= $vt . "，";
                }
            }
            $str  = substr($str, 0, strlen($str) - 3);
            $str2 = substr($str2, 0, strlen($str2) - 3);

            $data[$k]['offering']    = $str;
            $data[$k]['offering_en'] = $str2;

        }
        return $data;
    }

}
