<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title></title>
    <link rel="stylesheet" href="/frame/ITnet/themes/Home//v1.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/frame/ITnet/themes/Home//v1.0/css/product-icon.css"/>
    <link rel="stylesheet" href="/frame/ITnet/themes/Home//v1.0/css/globe.css"/>
    <link rel="stylesheet" href="/frame/ITnet/themes/Home//v1.0/css/index.css"/>
    <link rel="stylesheet" href="/frame/ITnet/themes/Home//v1.0/css/index1.css"/>
    <link rel="Shortcut Icon" href="https://enterprise.huawei.com/cn/ucmf/groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_logo_ico.ico">
    <script src="/frame/ITnet/themes/Home//v1.0/js/jquery-1.11.1.min.js"></script>
    <!-- <base target="_blank" /> -->
</head>
<body>
    <div>
        <div>
            <div id="header" class="loaded hidden-print">
                    <header class="navbar navbar-inverse alicloud-header" role="navigation">
                            <div>
                                <div id="navrelative" class="navrelative">
                                    <nav class="navbar navbar-default" role="navigation">
                                        <div class="">
                                            <div class="navbar-header" style="float: left;">
                                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                                                    <span class="sr-only">切换导航</span>
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                </button>
                                                <div class="header-menu">
                                                    <i class="header-icon header-icon-menu"></i>
                                                </div>
                                                <a class="navbar-brand" href="<?php echo U('index/index_show');?>?lang=en" target="_blank" style=" display:  inline-block; ">
                                                    <img src="/frame/ITnet/themes/Home//v1.0/img/HUAWEI-logo-New-white.png" alt="" style="width: 100%"/>
                                                </a>
            
                                                <div class="alicloud-header-navs" style=" display:  inline-block;">
                                                    <div class="">
                                                        <div data-toggle="navBar">
                                                            <ul class="nav navbar-nav alicloud-nav-list" style="float:  left;">

                                                     <!--遍历顶部导航栏start -->    
                                                              <?php if(is_array($nav_top['_data'])): $i = 0; $__LIST__ = $nav_top['_data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="" data-toggle="navBarMenu" data-target="#dropdown-menu-bh-<?php echo ($i-1); ?>" aria-expanded="false" style="<?php if($i==1)echo 'padding-right: 20px';?>">
                                                                    <a  class="normal-cursor <?php if($i==1)echo 'aactive zerotitle';?>" onclick="return false;"><?php echo ($val["name_en"]); ?>
                                                                        <!-- <span class="k-iconfont icon-xiajiantou default-status"></span> -->
                                                                    </a>
                                                                </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                                         <!--遍历顶部导航栏end-->   
                                                            </ul>
                                                            <div class="clear"></div>
<script type="text/javascript">
     $('title').text('Carrier MKT Arsenal'); 
</script>
                                <div class="navbar-fixed-dropdown-menu" id="navbar-content">
                                    <div class="dropdown-menu-inner" id="dropdown-menu-bh-0" style="opacity: 1; display: block; ">
                                        <div class="container dropdown-menu-3" style="max-width: 1072px; ">
                                            <div class="row row-eq-height clearfix">
                                           
                                                <div class="xtable">
                                                    <table class="table table-bordered" style="border:  none; ">
                                                        <caption style="height: 10px;padding: 0px;"></caption>
                                                        <thead>
                                                            <tr>
                                                             <!--遍历机机会点地图表头start -->   
                                                                 <?php if(is_array($width_arr['table1'])): $i = 0; $__LIST__ = $width_arr['table1'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><th style="text-align: <?php echo ($val["position"]); ?>;" width="<?php echo ($val["width"]); ?>"><?php echo ($val["name_en"]); ?></th><?php endforeach; endif; else: echo "" ;endif; ?>
                                                                <!--遍历机机会点地图表头end --> 
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                            <!--遍历机会点地图start -->                                                                                     
                                                            <tr>
                                                            <?php  foreach ($case_data as $k => $v) { $num=0; $num += count($v['_data'])?count($v['_data']):1; $j=1; foreach ($v['_data'] as $a => $b) { ?>
                                                           
                                                                    <td class="<?php if($j!=$num) echo 'bordernone';?>">
                                                                        <a  target="_blank" <?php if($b['url_en']){echo "href=".$b['url_en'];}?>><?php echo ($b['name_en']); ?></a>
                                                                    </td>

                                                                    <?php  if($j==1){ ?>
                                                                           <td rowspan='<?php echo ($num); ?>' class="cxo">
                                                                               <a <?php if($v['cxo_url_en']){echo "href=".$v['cxo_url_en'];}?>><?php echo ($v['cxo_en']); ?></a>
                                                                          </td>
                                                                          <td rowspan='<?php echo ($num); ?>' >
                                                                              <a  <?php if($v['solution_url_en']){echo "href=".$v['solution_url_en'];}?>><?php echo ($v['solution_en']); ?></a>
                                                                          </td>
                                                                          <td rowspan='<?php echo ($num); ?>'>
                                                                               <?php echo ($v['offering_en']); ?>
                                                                          </td>

                                                                    <?php }?>
                                                                 </tr>
                                                
                                                                <?php  $j++;}}?>
                                             <!--遍历机会点地图end -->   
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    
                                            <?php $p = 1; foreach($nid as $x=>$y){ ?>                    
                                                                <div class="dropdown-menu-inner" id="dropdown-menu-bh-<?php echo ($p); ?>" style="opacity: 0; display: none;">
                                                                    <div class="container dropdown-menu-3" style="max-width: 1072px; ">
                                                                        <div class="row row-eq-height clearfix">
                                                                            <!-- CXO话题 -->
                                                                            <div class="xtable2">
                                                                                <table class="table table-bordered" style="border:  none; ">
                                                                                    <caption style="height: 10px;padding: 0px;"></caption>
                                                                                    <thead>
                                                                                       <tr>
                                                                                             <?php if(is_array($width_arr['table2'])): $i = 0; $__LIST__ = $width_arr['table2'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><th style="text-align: <?php echo ($val["position"]); ?>;" width="<?php echo ($val["width_en"]); ?>"><?php echo ($val["name_en"]); ?></th><?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                       
                                                                                        <?php foreach($category_data_en[$y] as $k=>$v){ $count=0; $count += count($v['ziliao'])?count($v['ziliao']):1;?>
                                                                                         <tr>
                                                                                            <td rowspan="<?php echo ($count); ?>"><?php echo ($v['name_en']); ?></td>
                                                                                            <?php  if(!empty($v['ziliao'])){ ?>
                                                                                                   <?php foreach($v['ziliao'] as $a=>$b){ ?>
                                                                                                        <td><?php echo ($b['name_en']); ?></td>
                                                                                                        <td align="center"><?php echo ($b['author']); ?></td>
                                                                                                        <td align="center"><?php echo ($b['createtime']); ?></td>
                                                                                                        <td align="center">
                                                                                                        <?php if(!$b['url']){ ?>
                                                                                                        NA
                                                                                                        <?php }else if($b['url']=="to be"){ ?>
                                                                                                        To Be
                                                                                                        <?php }else{?>
                                                                                                         <a href="<?php echo $b['url'];?>" target="_blank">CN</a>
                                                                                                        <?php }?>
                                                                                                        </td>

                                                                                                        <td align="center">
                                                                                                        <?php if(!$b['url_en']){ ?>
                                                                                                        NA
                                                                                                        <?php }else if($b['url_en']=="to be"){ ?>
                                                                                                        To Be
                                                                                                        <?php }else{?>
                                                                                                         <a href="<?php echo $b['url_en'];?>" target="_blank">EN</a>
                                                                                                        <?php }?>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                  <?php }?>
                                                                                            <?php }else{?>
                                                                                                        <td></td>
                                                                                                        <td align="center"></td>
                                                                                                        <td align="center"></td>
                                                                                                        <td align="center"></td>
                                                                                                        <td align="center"></td>
                                                                                                        </tr>
                                                                                           <?php }?>
                                                                                      <?php }?>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                          <?php $p++; }?>

                                                          </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                                                <ul class="nav navbar-nav nav-fan" style="padding-top: 14px;">
                                                  <li class="sbdemand">
                                                     <a href="https://e.huawei.com/en/material/MaterialList?id=%7bF710F2E0-F127-4813-9BC0-0E1A41CB62DE%7d" target="_blank">EBG Portal</a>
                                                  </li>
                                                    <!-- <li>
                                                        <a href="#">WEB书架</a>
                                                    </li> -->
                                                    <li class="sbdemand">
                                                        <a href="http://3ms.huawei.com/mm/docNav/mmNavigate.do?method=showChannelColumnHome&amp;tree_id=585&amp;node_id=585" target="_blank">3MS</a>
                                                    </li>
                                                    <li class="sbdemand">
                                                        <a class="enline" href="?lang=cn">CN</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                    </header>
                        <div>
                            <div class="header-allnav" meta-data-adjust-app="hide">
                                <div class="header-allnav-wrapper">
                                    <ul class="header-allnav-level header-allnav-level1">
                                        <li class="header-allnav-inner show">
                                            <ul class="header-allnav-common-list header-allnav-common-list-level1">
                                    <!-- 导航栏遍历一级 -->    
                        <?php  foreach($nav_data as $k=>$v){ $en = str_replace('_', '&nbsp;', $v['name_en']); $nav_data[$k]['name_en2'] = $en; }?>                                           
                                             <?php if(is_array($nav_data)): $i = 0; $__LIST__ = $nav_data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><!-- 加入配置的一级导航菜单 -->
                                                    <li class="header-allnav-common-item" data-key="nav<?php echo ($val["id"]); ?>">
                                                        <a target="_blank" href="<?php echo U($val['name_en']);?>?lang=en"><?php echo ($val["name_en2"]); ?></a>
                                                        <i class="header-icon-arrow-right"></i>
                                                    </li>
                        
                                                    <!-- 如果子菜单有属性要求展示在第一级导航，则这里要展示子菜单 --><?php endforeach; endif; else: echo "" ;endif; ?>
                                    <!-- 导航栏遍历一级end --> 
                                           
                                                <li class="header-allnav-common-split"></li>
                                    <!-- 遍历侧边栏start -->  
                                             <?php if(is_array($url_data[60])): $i = 0; $__LIST__ = $url_data[60];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="header-allnav-common-item header-nav-hot">
                                                    <a mate_data_ts="www_v3_top_navigation.click.activity_20170820" href="<?php echo ($val["url_en"]); ?>"
                                                        target="_blank"><?php echo ($val["name_en"]); ?></a>
                                                </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                    <!-- 遍历侧边栏start -->    

                                            </ul>
                                        </li>
                                    <!--     <li class="header-allnav-consult">
                                            <div class="header-allnav-consult-text">Further Enquiry</div>
                                            <a class="header-allnav-consult-number" href="tel:4000-999-888">
                                                <i class="header-icon header-icon-phone"></i>
                                                <span>4000-999-888</span>
                                            </a>
                                        </li> -->
                                    </ul>                                      
                                    <ul class="header-allnav-level header-allnav-level2">
                                        <!-- 加入配置的二级导航菜单 -->
                                          <!-- 如果是二级菜单3个及3个以下，则应该是两级的菜单，HTL中迭代无法实现计数，先这么写 -->
                                           <!-- 导航栏遍历二级 -->                 
                                            <?php $x=0; foreach($nav_data as $k=>$v){ ?>
                                                    <li class="header-allnav-inner" data-name="nav<?php echo ($v['id']); ?>">
                                                         <ul class="header-allnav-common-list">
                                           
                                                               <?php $j=0; foreach($v['_data'] as $key=>$val){ if($j!=0){ ?>
                                                                    <li class="header-allnav-common-item nav_child<?php echo ($val['id']); ?>"><?php echo ($val['name_en']); ?>
                                                                        <i class="header-icon-arrow-right"></i>
                                                                    </li>
                                                                  <?php if($x==0){ ?>
                                                                   <script type="text/javascript">
                                                                      $(".nav_child<?php echo ($val['id']); ?>").click(function() {
                                                                                $('#navbar-content').css('height', 'auto');
                                                                                $('.header-allnav-level,.header-allnav-level2').removeClass('show');
                                                                                $('.dropdown-menu-inner').css('opacity', '0').hide();
                                                                                $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-<?php echo ($j); ?>"]').removeClass("aactive");
                                                                                $('li[data-target="#dropdown-menu-bh-<?php echo ($j); ?>"]').children("a").addClass("aactive");
                                                                                $('#dropdown-menu-bh-<?php echo ($j); ?>').css('opacity', '1').fadeIn();
                                                                            });
                                                                  </script>
                                                                  <?php }else{ ?>
                                                                    <script type="text/javascript">
                                                                         $(".nav_child<?php echo ($val['id']); ?>").click(function() {
                                                                                var url = "<?php echo U($v['name_en']);?>"+"?lang=cn&nid=<?php echo ($j); ?>";
                                                                                window.open(url,"_blank");
                                                                          });
                                                                   </script>
                                                                <?php }}?>
                                                               <?php $j++; }?>
                                                       </ul>
                                                  </li>
                                            <?php $x++; }?>
                                        <!-- 二级导航遍历完毕 -->
                                </ul>
                            </div>
                        </div>
                </div>
            </div>
            <textarea id="alicloud-v3-nav-version" style="display:none">0.0.256</textarea>
        </div>
    </div>
    <div class="page-layout page-main-content" data-page-id="50942" style="position:  relative;">
        <div class="layout layout-grid-0">
            <div class="grid-0">
                <div class="col col-main">
                    <div class="main-wrap J_Region">
                        <div class="alicloud-v3-home-carousel J_Module">
                            <div id="carousel-home" class="carousel slide" data-ride="carousel">
                                <img src="/frame/ITnet/themes/Home//v1.0/img/bg.jpg" alt="" style="width: 100%;height: 100%;"/>
                            </div>
                              <div class="container-fluid carousel-home-bottom" id="carousel-home-bottom">
                     <!-- 遍历底部外链 --> 
                              <?php if(is_array($url_data[61])): $i = 0; $__LIST__ = $url_data[61];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><div class="col-md-3 col-sm-3 col-xs-6">
                                    <a class="sbdemand" href="<?php echo ($val['url_en']); ?>">
                                        <div class="default-status">
                                            <div class="default-icon">
                                                <img   src="/frame/ITnet<?php echo ($val['img']); ?>"/>
                                            </div>
                                            <h6><?php echo ($val['name_en']); ?></h6>
                                        </div>
                                        <div class="hover-status">
                                            <h6><?php echo ($val['name_en']); ?></h6>
                                            <!-- <p>新用户免费试用40余款产品</p> -->
                                        </div>
                                    </a>
                                </div><?php endforeach; endif; else: echo "" ;endif; ?>
                        <!-- 遍历底部外链end --> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
    .xtable2 td{
        height: 42px;
    }
</style>  
        <script type="text/javascript">
        
            function getParameter(name) { //获取url上面的参数为name的值
                var paramStr = location.search;
                if (paramStr.length == 0) return null;
                if (paramStr.charAt(0) != '?') return null;
                paramStr = unescape(paramStr);
                paramStr = paramStr.substring(1);
                if (paramStr.length == 0) return null;
                var params = paramStr.split('&');
                for (var i = 0; i < params.length; i++) {
                    var parts = params[i].split('=', 2);
                    if (parts[0] == name) {
                        if (parts.length < 2 || typeof(parts[1]) == "undefined" || parts[1] == "undefined" || parts[1] == "null") return "";
                        parts[1] = decodeURI(parts[1])
                        parts[1] = parts[1].replace(/</g, "");
                        parts[1] = parts[1].replace(/>/g, "");
                        return parts[1];
                    }
                }
                return null;
            }
            var nid = getParameter('nid')?getParameter('nid'):0; 
            if(nid!=0){
                    $('#navbar-content').css('height', 'auto');
                    $('.header-allnav-level,.header-allnav-level2').removeClass('show');
                    $('.dropdown-menu-inner').css('opacity', '0').hide();
                    $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-'+nid+'"]').removeClass("aactive");
                    $('li[data-target="#dropdown-menu-bh-'+nid+'"]').children("a").addClass("aactive");
                    $('#dropdown-menu-bh-'+nid+'').css('opacity', '1').fadeIn();
            }

    </script>
    <script src="/frame/ITnet/themes/Home//v1.0/js/bootstrap.min.js"></script>
    <script src="/frame/ITnet/themes/Home//v1.0/js/globe.js"></script>
    <script src="/frame/ITnet/themes/Home//v1.0/js/index.js"></script>
</body>
</html>