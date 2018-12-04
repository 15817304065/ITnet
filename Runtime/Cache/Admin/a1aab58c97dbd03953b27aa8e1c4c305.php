<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="utf-8" />
  <title>IT产品线</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src='/frame/ITnet/Public/statics/js/jquery-2.1.1.min.js'></script>
  <script src="/frame/ITnet/Public/statics/aceadmin/js/jquery-ui-1.10.3.custom.min.js"></script>
  <script src="/frame/ITnet/Public/statics/aceadmin/js/jquery.ui.touch-punch.min.js"></script>
  <link rel="shortcut icon" type="image/x-icon" href="/frame/ITnet/Public/img/fac.ico">
  <link href="/frame/ITnet/Public/statics/aceadmin/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="/frame/ITnet/Public/statics/aceadmin/css/font-awesome.min.css" />
  <link rel="stylesheet" href="/frame/ITnet/Public/statics/font-awesome-4.4.0/css/font-awesome.min.css" />
  <!--[if IE 7]><link rel="stylesheet" href="/frame/ITnet/Public/statics/aceadmin/css/font-awesome-ie7.min.css"/><![endif]-->
  <link rel="stylesheet" href="/frame/ITnet/Public/statics/aceadmin/css/ace.min.css" />


  <!--[if lte IE 8]><link rel="stylesheet" href="/frame/ITnet/Public/statics/aceadmin/css/ace-ie.min.css"/><![endif]-->
  <!--[if lt IE 9]><script src="/frame/ITnet/Public/statics/aceadmin/js/html5shiv.js"></script><script src="/frame/ITnet/Public/statics/aceadmin/js/respond.min.js"></script><![endif]-->
  <style type="text/css">
    *{
       font-family: "微软雅黑";
    }
      #sidebar .nav-list{
          overflow-y: auto;
          overflow-x: hidden;
      }
      .b-nav-li{
          padding: 5px 0;
      }
      tfoot,form{
        cursor: pointer;
      }
      .suo1{
              margin-left: 0px;
            }
      .suo2{
        margin-left: 10px;
      }
      .suo3{
        margin-left: 20px;
      }
    </style>

</head>
<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
            try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>
    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
             <a href="<?php echo U('admin/index/index');?>" class="navbar-brand">
             <small>
                <i class="icon-leaf"></i>IT产品线管理后台
             </small>
             </a>
        </div>
        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue"> 
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                         <img class="nav-user-photo" src="/frame/ITnet/Public/statics/aceadmin/avatars/user.jpg" alt="Jason's Photo"/>
                         <span class="user-info"><small>欢迎光临,</small> <?php echo ($_SESSION['user']['username']); ?></span>
                         <i class="icon-caret-down"></i>
                    </a>
                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                       <li class="divider"></li>
                       <li><a href="<?php echo U('Admin/login/logout');?>"><i class="icon-off"></i> 退出</a>
                       </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
 <?php ?>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>
    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
        <span class="menu-text"></span></a>
        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
            </script>
            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large"> 
                     <button class="btn btn-success" style="width: 180px !important;" onclick="window.open('<?php echo U('Home/index/index');?>');"><i class="fa fa-home"></i></button> 
                    <!--  <button class="btn btn-info"><i class="icon-pencil"></i></button> 
                     <button class="btn btn-warning"><i class="icon-group"></i></button> 
                     <button class="btn btn-danger"><i class="icon-cogs"></i></button> -->
                </div>
                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>
                    <span class="btn btn-info"></span>
                    <span class="btn btn-warning"></span>
                    <span class="btn btn-danger"></span>
               </div>
             </div>
             <!-- #sidebar-shortcuts -->
             <ul class="nav nav-list">

                <?php if(is_array($nav_data)): foreach($nav_data as $key=>$v): if(empty($v['_data'])): ?><li class="b-nav-li <?php if(I('get.nav')==$v['id']) echo 'active';?>">
                              <a href="<?php echo U($v['mca']);?>/nav/<?php echo ($v['id']); ?>"><i class="fa fa-<?php echo ($v['ico']); ?> icon-test"></i> <span class="menu-text"><?php echo ($v['name']); ?></span></a>
                         </li>
                    <?php else: ?>
                         <li class="b-has-child  zyu">
                              <a href="#" class="dropdown-toggle b-nav-parent">
                                  <i class="fa fa-<?php echo ($v['ico']); ?> icon-test"></i> 
                                  <span class="menu-text"><?php echo ($v['name']); ?></span>
                                  <b class="arrow icon-angle-down"></b>
                              </a>
                              <ul class="submenu">
                                  <?php if(is_array($v['_data'])): foreach($v['_data'] as $key=>$n): if(empty($n['_data'])){ ?>
                                      <li class="b-nav-li <?php if(I('get.nav')==$n['id']) echo 'active';?>">
                                          <a href="<?php echo U($n['mca']);?>/nav/<?php echo ($n['id']); ?>">
                                                <i class="icon-double-angle-right"></i> <?php echo ($n['name']); ?>
                                           </a>
                                      </li>
                                      <?php }else{?>
                                                <li class="b-has-child">
                                                     <a href="#" class="dropdown-toggle b-nav-parent">
                                                         <i class="fa fa-{$n['ico']} icon-test"></i> 
                                                         <span class="menu-text"><?php echo ($n['name']); ?></span>
                                                         <b class="arrow icon-angle-down"></b>
                                                     </a>
                                                     <ul class="submenu">
                                                         <?php if(is_array($n['_data'])): foreach($n['_data'] as $key=>$u): ?><li class="b-nav-li three <?php if(I('get.nav')==$u['id']) echo 'active';?>">
                                                              <a href="<?php echo U($u['mca']);?>/nav/<?php echo ($u['id']); ?>">
                                                                       <i class="icon-double-angle-right"></i> <?php echo ($u['name']); ?>
                                                                  </a>
                                                             </li><?php endforeach; endif; ?>
                                                     </ul>
                                               </li>
                                      <?php } endforeach; endif; ?>
                              </ul>
                        </li><?php endif; endforeach; endif; ?>
            </ul>
            <!-- <div class="sidebar-collapse" id="sidebar-collapse">
                  <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
            </div> -->
            <script type="text/javascript">
               try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
            </script>
        </div>
        <div class="main-content">
             <div class="page-content">
                  
<!-- <link href="/frame/ITnet/Public/statics/css/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"> -->
<link href="/frame/ITnet/Public/statics/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="/frame/ITnet/Public/statics/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="/frame/ITnet/Public/statics/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <div class="page-header">
        <h1>
            <span> <?php if(!empty($navpname)): echo ($navpname); ?> ><?php endif; ?>
            <?php if(!empty($navname)): echo ($navname); ?> ><?php endif; ?> 
            <?php echo ($name); ?> </span>
        </h1>
    </div>
<style type="text/css">
    th{
       text-align: center;
    }
    td{
      word-break: break-all;
       text-align: center;
    }
    table{
      table-layout:fixed;
    }

</style>
    <div class="col-xs-12">
             <div class="tabbable">
                   <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab">
                       <li class="active"><a href="#home" data-toggle="tab">文档列表</a></li>
                       <li> <a href="javascript:;" onclick="add()">添加文档</a></li>
                      
                       <li><a href="<?php echo U('Admin/carrier/index',array('nav'=>I('nav')));?>">返回</a></li>
                   </ul>
                   <div class="tab-content">
                        <form class="" action="<?php echo U('order');?>" method="post">
                             <table class="table table-striped table-bordered table-hover table-condensed">
                                 <tr>
                                     <th width="5%">排序</th>
                                     <th width="12%">中文名称</th>
                                     <th width="15%">英文名称</th>
                                     <th width="5%">作者</th>
                                     <th width="5%">状态</th>
                                     <th width="8%">发布日期</th>
                                     <th width="16%">中文链接</th>
                                     <th width="16%">英文链接</th>
                                     <th width="6%">板块</th>
                                     <th width="8%">操作</th>

                                 </tr>
                            <tfoot class="tt">
                            <?php if(is_array($data)): foreach($data as $key=>$v): ?><tr>
                                    <td class="ym"> <input class="input-medium" style="width:40px;height:25px;" type="text" name="<?php echo ($v['id']); ?>" value="<?php echo ($v['order_number']); ?>" readonly="">
                                    </td>
                                    <td><?php echo ($v['name']); ?></td>
                                    <td><?php echo ($v['name_en']); ?></td>
                                    <td><?php echo ($v['author']); ?></td>
                                    <td><?php if($v['state']=='1') echo "隐藏";else echo "显示";?></td>
                                    <td><?php echo ($v['createtime']); ?></td>
                                    <td><?php echo ($v['url']); ?></td>
                                    <td><?php echo ($v['url_en']); ?></td>
                                    <td><?php if($v['type']=='0') echo "中英文";else if($v['type']=='1') echo "仅中文";else echo "仅英文";?></td>
                                    <td>
                                        <!--  <p><a href="javascript:;" vId="<?php echo ($v['id']); ?>" type="<?php echo ($v['type']); ?>" state="<?php echo ($v['state']); ?>"  onclick="index_show(<?php echo ($v['id']); ?>,<?php echo ($v['state']); ?>)"><?php if($v['state']=='1') echo "显示";else echo "隐藏";?></a></p>  -->
                                         <p><a  href="javascript:;" vId="<?php echo ($v['id']); ?>" type="<?php echo ($v['type']); ?>" state="<?php echo ($v['state']); ?>" vName="<?php echo ($v['name']); ?>" vName_en="<?php echo ($v['name_en']); ?>" vauthor="<?php echo ($v['author']); ?>" vcreatetime="<?php echo ($v['createtime']); ?>" vUrl="<?php echo ($v['url']); ?>" vUrl_en="<?php echo ($v['url_en']); ?>"  onclick="edit(this)">修改</a></p> 
                                         <p><a href="javascript:if(confirm('确定删除？'))location='<?php echo U('delete',array('id'=>$v['id']));?>'">删除</a></p>
  
                                    </td>
                                </tr><?php endforeach; endif; ?>
                            </tfoot>
                                
                            </table>
                                <tr>
                                   <td style="text-align: left;"><input class="btn btn-success" type="submit" value="确认排序">(拖拽完成后请点击)</td>
                                </tr>
                       </form>
                   </div>
             </div>
         </div>
         <?php ?>
        <div class="modal fade" id="bjy-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                 <div class="modal-content">
                      <div class="modal-header"> 
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                           <h4 class="modal-title" id="myModalLabel"><?php if(!empty($navname)): echo ($navname); ?> ><?php endif; ?> 
                                <?php echo ($name); ?> > 添加文档
                            </h4>
                     </div>
                     <div class="modal-body">
                          <form id="bjy-form" class="form-inline" action="<?php echo U('add');?>" method="post"> 
                                 <input type="hidden" name="cateid" value="<?php echo I('cate');?>">
                                  <table class="table table-striped table-bordered table-hover table-condensed">
                                      <tr>
                                          <th width="25%">中文名：</th>
                                          <td > <input class="input-medium" type="text" name="name"></td>
                                     </tr>
                                      <tr>
                                          <th>英文名：</th>
                                          <td > <input class="input-medium" type="text" name="name_en"></td>
                                     </tr>
                                     <tr>
                                          <th>作者：</th>
                                          <td> <input class="input-medium" type="text" name="author"> </td>
                                     </tr>
                                     <tr>
                                          <th>发布日期：</th>
                                          <!-- <td> <input class="input-medium" type="text" name="createtime"> </td> -->
                                          <td class="controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" style="text-align: left;">
                                                <input size="12" type="text" value="" name="createtime" readonly>
                                                <span class="add-on"><i class="icon-remove"></i></span>
                                                <span class="add-on"><i class="icon-th"></i></span>
                                          </td>
                                          <input type="hidden" id="dtp_input2" value="" /><br/>
                                     </tr>
                                     <tr>
                                          <th>中文链接：</th>
                                          <td> <input class="input-medium" type="text" name="url"></td>
                                     </tr>
                                     <tr>
                                          <th>英文链接：</th>
                                          <td> <input class="input-medium" type="text" name="url_en"> </td>
                                     </tr>
                                     <tr>
                                          <th>所属板块：</th>
                                          <td style="text-align: left;"> 
                                               <select name="type">
                                                   <option value="0" selected="">中英文</option>
                                                   <option value="1">仅中文</option>
                                                   <option value="2">仅英文</option>
                                               </select> 
                                        </td>
                                     </tr>
                                    <tr>
                                          <th>状态：</th>
                                          <td style="text-align: left;"> 
                                               <select name="state">
                                                   <option value="0" selected="">显示</option>
                                                   <option value="1">隐藏</option>
                                               </select> 
                                        </td>
                                     </tr>
                                   
                                     <tr>
                                         <td> <input class="btn btn-success" type="submit" value="添加"></td>
                                         <td></td>
                                    </tr>
                                </table>
                        </form>
                    </div>
                </div>
             </div>
          </div>
          <div class="modal fade" id="bjy-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
               <div class="modal-dialog">
                     <div class="modal-content">
                            <div class="modal-header"> 
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                                  <h4 class="modal-title" id="myModalLabel"><?php if(!empty($navname)): echo ($navname); ?> ><?php endif; ?> 
                                  <?php echo ($name); ?>  > 修改资料</h4>
                            </div>
                            <div class="modal-body">
                                 <form id="bjy-form" class="form-inline" action="<?php echo U('edit');?>" method="post" enctype="multipart/form-data"> 
                                      <input type="hidden" name="id">
                                      <table class="table table-striped table-bordered table-hover table-condensed">
                                           <tr>
                                              <th width="20%">中文名：</th>
                                              <td > <input class="input-medium" type="text" name="name"></td>
                                           </tr>
                                           <tr>
                                              <th width="20%">英文名：</th>
                                              <td > <input class="input-medium" type="text" name="name_en"></td>
                                           </tr>
                                           <tr>
                                                <th>作者：</th>
                                                <td> <input class="input-medium" type="text" name="author"> </td>
                                           </tr>
                                           <tr>
                                                <th>发布日期：</th>
                                                  <td class="controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" style="text-align: left;">
                                                  <input size="12" type="text" value="" name="createtime" readonly>
                                                  <span class="add-on"><i class="icon-remove"></i></span>
                                                  <span class="add-on"><i class="icon-th"></i></span>
                                               </td>
                                           </tr>
                                           <tr>
                                                <th>中文链接：</th>
                                                <td> <input class="input-medium" type="text" name="url"></td>
                                           </tr>
                                           <tr>
                                                <th>英文链接：</th>
                                                <td> <input class="input-medium" type="text" name="url_en"> </td>
                                           </tr>
                                           <tr>
                                                <th>所属板块：</th>
                                                <td style="text-align: left;"> 
                                                     <select name="type">
                                                         <option value="0" selected="">中英文</option>
                                                         <option value="1">仅中文</option>
                                                         <option value="2">仅英文</option>
                                                     </select> 
                                              </td>
                                           </tr>
                                           <tr>
                                                <th>状态：</th>
                                                <td style="text-align: left;"> 
                                                     <select name="state">
                                                         <option value="0" selected="">显示</option>
                                                         <option value="1">隐藏</option>
                                                     </select> 
                                              </td>
                                           </tr>
                                           <tr>
                                               <td> <input class="btn btn-success" type="submit" value="修改"></td>
                                               <td></td>
                                          </tr>
                                    </table>
                                 </form>
                            </div>
                     </div>
               </div>
       </div>


            </div>
        </div>
     </div>
     <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"><i class="icon-double-angle-up icon-only bigger-110"></i></a>
</div>


<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='/frame/ITnet/Public/statics/aceadmin/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="/frame/ITnet/Public/statics/aceadmin/js/typeahead-bs2.min.js"></script>
<script src="/frame/ITnet/Public/statics/aceadmin/js/bootstrap.min.js"></script>

<script src="/frame/ITnet/Public/statics/aceadmin/js/jquery.slimscroll.min.js"></script>
<!-- <script src="/frame/ITnet/Public/statics/aceadmin/js/jquery.easy-pie-chart.min.js"></script> -->
<!-- <script src="/frame/ITnet/Public/statics/aceadmin/js/jquery.sparkline.min.js"></script> -->
<!-- <script src="/frame/ITnet/Public/statics/aceadmin/js/flot/jquery.flot.min.js"></script> -->
<!-- <script src="/frame/ITnet/Public/statics/aceadmin/js/flot/jquery.flot.pie.min.js"></script> -->
<!-- <script src="/frame/ITnet/Public/statics/aceadmin/js/flot/jquery.flot.resize.min.js"></script> -->
<!-- <script src="/frame/ITnet/Public/statics/aceadmin/js/ace-elements.min.js"></script> -->
<script src="/frame/ITnet/Public/statics/aceadmin/js/ace.min.js"></script>

<!-- <script src="/frame/ITnet/themes/Public/js/base.js"></script> -->

<script>
    $('.form_date').datetimepicker({
        language:  'fr',
        // weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        // forceParse: 0,
        format: "yyyy-mm-dd"
    });
  
   $( "tfoot").sortable({
            connectWith: "tfoot",
            dropOnEmpty: false,
            stop: function() {
              for (var i = 0; i <$('.ym').size(); i++) {
                $('.ym>input').eq(i).val(i+1);
              }
            }
          });
   $( "tfoot").disableSelection();
   var navid = '<?php echo I('nav');?>';
    // 添加资料
    function add(){
        $("input[name='name']").val('');
        $('#bjy-add').modal('show');
    }


     // 前台显示/不显示
    function index_show(re,state){
 
        state = (state==0)?1:0;
        $.ajax({
            url:'<?php echo U('show_hide');?>',
            type:'post',
            dataType:'json',
            data:{'id':re,'state':state},
            success:function(re){
                  console.log(re);
                  if(re.status=='0') {}
                  else  location.href="";
            }
        })
    }

    // 修改资料
    function edit(obj){

        var vId=$(obj).attr('vId');
        var vName=$(obj).attr('vName');
        var vName_en=$(obj).attr('vName_en');
        var vauthor=$(obj).attr('vauthor');
        var vcreatetime=$(obj).attr('vcreatetime');
        var vUrl=$(obj).attr('vUrl');
        var vUrl_en=$(obj).attr('vUrl_en');
        var state=$(obj).attr('state');
        var type=$(obj).attr('type');
      
        $('#bjy-edit').find("input[name='id']").val(vId);
        $('#bjy-edit').find("input[name='name']").val(vName);
        $('#bjy-edit').find("input[name='name_en']").val(vName_en);
        $('#bjy-edit').find("input[name='author']").val(vauthor);
        $('#bjy-edit').find("input[name='createtime']").val(vcreatetime);
        $('#bjy-edit').find("input[name='url']").val(vUrl);
        $('#bjy-edit').find("input[name='url_en']").val(vUrl_en);
        $('#bjy-edit').find("select[name='type']").val(type);
        $('#bjy-edit').find("select[name='state']").val(state);
        $('#bjy-edit').modal('show');
    }
    </script>

<script>
var navid = '<?php echo I('get.nav');?>';
$(function(){
    $(".b-nav-li.three.active").parents(".zyu").children(".b-nav-parent").click();
    $('.b-has-child .active').parent().parent().children('.b-nav-parent').click();
    
});
</script>