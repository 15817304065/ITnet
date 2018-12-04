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
                  
  <!-- <link rel="stylesheet" href="/frame/ITnet/Public/statics/css/drop2.css" /> -->
  <link rel="stylesheet" href="/frame/ITnet/Public/statics/css/case.css" />
    <div class="page-header">
        <h1>
             <span> <?php if(!empty($pname)): echo ($pname); ?> ><?php endif; ?> <?php echo ($name); ?> </span>
        </h1>
    </div>
    <div class="col-xs-12">
             <div class="tabbable">
                   <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab">
                       <li class="active"><a href="#home" data-toggle="tab">机会点地图列表</a></li>
                       <li> <a href="javascript:;" onclick="add()">添加机会点</a></li>
                       <!-- <li><a href="<?php echo U('en');?>/nav/<?php echo I('get.nav');?>" >英文机会点地图</a></li> -->
                   </ul>
                   <div class="tab-content">
               
                       <div class="ul_head">
                            <div class="li1">排序</div>
                            <div class="li2">业务场景</div>
                            <div class="li3">CXO话题</div>
                            <div class="li4">解决方案</div>
                            <div class="li5">Offering</div>
                            <div class="li6">操作</div>
                        </div>
               <form class="order_table" action="<?php echo U('order');?>/nav/<?php echo I('get.nav');?>" method="post">
                  <?php if(is_array($data)): foreach($data as $key=>$v): ?><div class="droptarget droptarget<?php echo ($v['id']); ?>">
                        <div>
                          <div class="btnBG">
                              <div class="ul_box">
                              <div class="li1"><input class="input-medium" style="width:40px;height:25px;" type="text" name="<?php echo ($v['id']); ?>" value="<?php echo ($v['order_number']); ?>" readonly=""></div>
                              <div class="li2"><?php echo ($v['scene']); ?></div>
                              <div class="li3"><?php echo ($v['cxo']); ?></div>
                              <div class="li4"><?php echo ($v['solution']); ?></div>
                              <div class="li5"><?php echo ($v['offering']); ?></div>
                             
                              <div class="li6">
                                      <a href="javascript:;" caseId="<?php echo ($v['id']); ?>" solution="<?php echo ($v['solution']); ?>" solution_en="<?php echo ($v['solution_en']); ?>" solution_url="<?php echo ($v['solution_url']); ?>" solution_url_en="<?php echo ($v['solution_url_en']); ?>" cxo="<?php echo ($v['cxo']); ?>" cxo_en="<?php echo ($v['cxo_en']); ?>" cxo_url="<?php echo ($v['cxo_url']); ?>" cxo_url_en="<?php echo ($v['cxo_url_en']); ?>" caseNum="<?php echo ($v['order_num']); ?>" onclick="edit(this)">修改</a>  | 
                                      <a href="javascript:if(confirm('确定删除？'))location='<?php echo U('delete',array('id'=>$v['id']));?>'">删除 </a> |
                                      <a href="<?php echo U('scene/index',array('nav'=>I('get.nav'),'case'=>$v['id']));?>" >场景维护</a> |
                                      <a href="<?php echo U('offering/index',array('nav'=>I('get.nav'),'case'=>$v['id']));?>" >Offering维护</a> 
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <script type="text/javascript">
                         $( ".box<?php echo ($v['id']); ?>" ).sortable({
                          connectWith: ".box<?php echo ($v['id']); ?>",
                          dropOnEmpty: false,
                          stop: function() {
                            for (var i = 0; i < $(".box<?php echo ($v['id']); ?>>div>.btnBG>.ul_box").size(); i++) {
                              $(".box<?php echo ($v['id']); ?>>div>.btnBG>.ul_box>.li1>input").eq(i).val(i+1)
                            }
                          }
                        });
                         $( ".box<?php echo ($v['id']); ?>").disableSelection();
                       </script><?php endforeach; endif; ?>
                             
                  </form>
                   <table class="table table-striped table-bordered table-hover table-condensed">
                            <tr>
                               <td><input class="btn btn-success" type="submit" value="确认排序">(拖拽完成后请点击)</td>
                            </tr>
                    </table>
                   </div>
             </div>
         </div>
        <div class="modal fade" id="bjy-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                 <div class="modal-content">
                      <div class="modal-header"> 
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                           <h4 class="modal-title" id="myModalLabel"> 添加机会点</h4>
                     </div>
                     <div class="modal-body">
                          <form id="bjy-form" class="form-inline" action="<?php echo U('add');?>" method="post"> 
                                  <input type="hidden" name="navid" value="<?php echo I('get.nav');?>">
                                  <table class="table table-striped table-bordered table-hover table-condensed">
                                        <tr>
                                            <th>解决方案（中文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution"> </td>
                                       </tr>
                                       <tr>
                                            <th>解决方案链接（中文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution_url"> </td>
                                       </tr>
                                         <tr>
                                            <th>CXO话题（中文）：</th>
                                            <td> <input class="input-medium" type="text" name="cxo"> </td>
                                       </tr>
                                       <tr>
                                            <th>CXO话题链接（中文） ：</th>
                                            <td> <input class="input-medium" type="text" name="cxo_url"> </td>
                                       </tr>
                                       
                                       <tr>
                                            <th>解决方案（英文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution_en"> </td>
                                       </tr>
                                       <tr>
                                            <th>解决方案链接（英文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution_url_en"> </td>
                                       </tr>
                                     
                                       <tr>
                                            <th>CXO话题（英文）：</th>
                                            <td> <input class="input-medium" type="text" name="cxo_en"> </td>
                                       </tr>
                                       
                                       <tr>
                                            <th>CXO话题链接（英文） ：</th>
                                            <td> <input class="input-medium" type="text" name="cxo_url_en"> </td>
                                       </tr>

                                       <tr>
                                           <th></th>
                                           <td><button class="btn btn-success">添加</button></td>
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
                                  <h4 class="modal-title" id="myModalLabel"> 修改机会点</h4>
                            </div>
                            <div class="modal-body">
                                 <form id="bjy-form" class="form-inline" action="<?php echo U('edit');?>" method="post"> 
                                      <input type="hidden" name="id" >
                                      <input type="hidden" name="navid" value="<?php echo I('get.nav');?>">
                                       <table class="table table-striped table-bordered table-hover table-condensed">
                                        <tr>
                                            <th>解决方案（中文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution"> </td>
                                       </tr>
                                       <tr>
                                            <th>解决方案链接（中文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution_url"> </td>
                                       </tr>
                                         <tr>
                                            <th>CXO话题（中文）：</th>
                                            <td> <input class="input-medium" type="text" name="cxo"> </td>
                                       </tr>
                                       <tr>
                                            <th>CXO话题链接（中文） ：</th>
                                            <td> <input class="input-medium" type="text" name="cxo_url"> </td>
                                       </tr>
                                       
                                       <tr>
                                            <th>解决方案（英文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution_en"> </td>
                                       </tr>
                                       <tr>
                                            <th>解决方案链接（英文）：</th>
                                            <td> <input class="input-medium" type="text" name="solution_url_en"> </td>
                                       </tr>
                                     
                                       <tr>
                                            <th>CXO话题（英文）：</th>
                                            <td> <input class="input-medium" type="text" name="cxo_en"> </td>
                                       </tr>
                                       
                                       <tr>
                                            <th>CXO话题链接（英文） ：</th>
                                            <td> <input class="input-medium" type="text" name="cxo_url_en"> </td>
                                       </tr>

                                       <tr>
                                           <th></th>
                                           <td><button class="btn btn-success">修改</button></td>
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

    $( "form").sortable({
            connectWith: "form",
            dropOnEmpty: false,
            stop: function() {
              for (var i = 0; i < $('.droptarget').size(); i++) {
                $('.droptarget>div>.btnBG>.ul_box>.li1>input').eq(i).val(i+1)
              }
            }
          });
   $( "form").disableSelection();

 
   $(".listBtn").click(function(){
      $(this).parents('.btnBG').next('div').slideToggle();
      // alert($(this).attr('data'));
      if($(this).attr('data')!='0') {
         $(this).attr('data','0');
         $(this).removeClass('icon-chevron-down').addClass('icon-chevron-up');
      }else {
        $(this).attr('data','1');
         $(this).removeClass('icon-chevron-up').addClass('icon-chevron-down');
      }
      
      console.log($(this).parents('.btnBG').next('div').attr('class'))
    });

   $('input[type=submit]').click(function(){
       $('.order_table').submit();
   })

    // 添加菜单
    function add(){
        $("input[name='name'],input[name='mca']").val('');
        $("input[name='pid']").val(0);
        $('#bjy-add').modal('show');
    }

  
     // 添加资料
    function add_ziliao(obj){
        var cateId=$(obj).attr('cateId');
        
        $("input[name='cateid']").val(cateId);
        $("input[name='name']").val('');
        $("input[name='url']").val('');
        $('#bjy-addziliao').modal('show');
    }

    // 修改菜单
    function edit(obj){
       
        var caseId=$(obj).attr('caseId');
       
        var cxo=$(obj).attr('cxo');
        var cxo_en=$(obj).attr('cxo_en');
        var cxo_url=$(obj).attr('cxo_url');
        var cxo_url_en=$(obj).attr('cxo_url_en');
        var solution=$(obj).attr('solution');
        var solution_en=$(obj).attr('solution_en');
        var solution_url=$(obj).attr('solution_url');
        var solution_url_en=$(obj).attr('solution_url_en');


        $('#bjy-edit').find("input[name='id']").val(caseId);
        $('#bjy-edit').find("input[name='cxo']").val(cxo);
        $('#bjy-edit').find("input[name='cxo_en']").val(cxo_en);
        $('#bjy-edit').find("input[name='cxo_url']").val(cxo_url);
        $('#bjy-edit').find("input[name='cxo_url_en']").val(cxo_url_en);
        $('#bjy-edit').find("input[name='solution']").val(solution);
        $('#bjy-edit').find("input[name='solution_en']").val(solution_en);
        $('#bjy-edit').find("input[name='solution_url']").val(solution_url);
        $('#bjy-edit').find("input[name='solution_url_en']").val(solution_url_en);

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