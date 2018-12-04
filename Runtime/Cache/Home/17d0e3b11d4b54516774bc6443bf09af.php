<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>IT产品线营销作战平台</title>
    <link rel="Shortcut Icon" href="https://enterprise.huawei.com/cn/ucmf/groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_logo_ico.ico">
    <link rel="stylesheet" href="/ITnet/themes/Home//v1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/ITnet/themes/Home//v1.0/css/homeindex.css">
    <!--<base target="_blank" />-->
</head>

<body>
    <div class="content">
        <div class="fiexdh">
            <div id="navrelative" class="navrelative">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                                <span class="sr-only">切换导航</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="https://www.huawei.com/cn" target="_blank">
                                <img src="/ITnet/themes/Home//v1.0/img/HUAWEI-logo-New-white.png" alt="" style="width: 100%">
                            </a>
                            <p class="navbar-brand brandtxt">IT产品线营销作战平台</p>
                        </div>
                        <div class="collapse navbar-collapse" id="example-navbar-collapse">
                            <ul class="nav navbar-nav" style="padding-top: 10px;">
                                <li class="">
                                    <a href="http://e.huawei.com/cn/material/MaterialList?id={F710F2E0-F127-4813-9BC0-0E1A41CB62DE}" target="_blank">EBG官网</a>
                                </li>
                                <!-- <li>
                                    <a href="#">WEB书架</a>
                                </li> -->
                                <li>
                                    <a href="http://3ms.huawei.com/mm/docNav/mmNavigate.do?method=showChannelColumnHome&tree_id=585&node_id=585" target="_blank">3MS网站</a>
                                </li>
                                <li>
                                    <a class="enline" href="?lang=en">EN</a>
                                </li>
                            </ul>

                        </div>

                    </div>
                </nav>
            </div>
        </div>

        <div class="blockbox">
            <div class="container-fluid" style="margin:  0 auto;">
                <div class="blocksubbox">
                    <!-- <a class="block " href="#">
                                <span class="blocktxt">运营商</span>
                        </a>                                                           -->
                </div>
            </div>
        </div>

        <div class="blockbox2">
            <div class="row container-fluid" style="margin:  0 auto;">
                 <?php if(is_array($url_data[60])): $i = 0; $__LIST__ = array_slice($url_data[60],0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a class="bb1 col-xs-12" href="<?php echo ($val["url"]); ?>" target="_blank">
                        <!-- <img class="bbimg" src="/ITnet/themes/Home//v1.0/img/b1.png" alt=""> -->
                        <div class="bbox1">
                                <img src="/ITnet<?php echo ($val["img"]); ?>" alt="">
                                <span><?php echo ($val["name"]); ?></span>
                        </div>
                    </a><?php endforeach; endif; else: echo "" ;endif; ?>
                <div class="clear"></div>
                <div class="bb2box">
                    <?php if(is_array($url_data[60])): $i = 0; $__LIST__ = array_slice($url_data[60],1,4,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a class="bb2 col-xs-12 col-md-3" href="<?php echo ($val["url"]); ?>" target="_blank">
                            <img class="bbimg" src="/ITnet/themes/Home//v1.0/img/b1.png" alt="">
                            <div class="bbox2">
                                <img src="/ITnet<?php echo ($val["img"]); ?>" alt="">
                                <span><?php echo ($val["name"]); ?></span>
                            </div>
                        </a><?php endforeach; endif; else: echo "" ;endif; ?>

                    <div class="clear"></div>

                </div>
               
            </div>

        </div>

        <div class="blockbox3">
            <div class=" container-fluid" style="margin:  0 auto;text-align: center;">
                <div class="bb3txtbox ppl">
                    <div>
                        <a class="bb3txt" target="_blank" href="http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&mslType=msl_type&f_id=ITGS15013009550108&doc_msl_ids=61937&topic_id=1000780">IT主打胶片</a>
                    </div>
                    <div>
                            <a class="bb3txt bbtb" target="_blank" href="	
                            http://support.huawei.com/onlinetoolsweb/itexpress/zh/index.html">IT产品工具</a>
                    </div>
                    
                    <div>
                            <a class="bb3txt" target="_blank" href="http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&f_id=ITGS16101744050064">资料获取指南</a>
                    </div>
                    
                </div>
                 <div class="bb3txtbox ppl">
                    <div>
                            <a class="bb3txt" target="_blank" href="	
                            http://3ms.huawei.com/hi/group/1008137">IT总工社区</a>

                    </div>
                    <div>
                            <a class="bb3txt bbtb" target="_blank" href="	
                            http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&topic_id=1002580">IT培训书架</a>
    
    
                    </div>
                    <div>
                            <a class="bb3txt" target="_blank" href="	
                            http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&f_id=ITGS16101747490066">印刷资料书架</a>
                    </div>
                    
                   
                </div>
                 <div class="bb3txtbox ppl">
                    <div>
                            <a class="bb3txt" target="_blank" href="	
                            http://3ms.huawei.com/hi/IT/HC2018.html">HC资料大放送</a>
                    </div>
                    <div>
                            <a class="bb3txt bbtb" target="_blank" href="	
                            http://3ms.huawei.com/hi/group/2943217">IT投标资质</a>
                    </div>
                    <div>
                            <a class="bb3txt" target="_blank" href="http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&f_id=ITGS16101708590115">渠道资料合集</a>
                    </div>
                   
                </div>
                    <div class="bb3txtbox ppl">
                        <div>
                                <a class="bb3txt" target="_blank" href="	
                                http://3ms.huawei.com/hi/group/2899827">IT品牌社区</a>
                        </div>
                        <div>
                                <a class="bb3txt bbtb" target="_blank" href="	
                                http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&topic_id=1000780">IT品牌书架</a>
                        </div>
                        <div>
                                <a class="bb3txt" target="_blank" href="	
                                http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&f_id=ITGS170710283318743">IT营销资料基线</a>
                        </div>
                        
                    </div>
                  <div class="bb3txtbox pplp" >
                    <div>
                            <a class="bb3txt" target="_blank" href="	
                            http://3ms.huawei.com/hi/group/1000075">IT市场洞察社区</a>
                    </div>
                    <div>
                            <a class="bb3txt bbtb" target="_blank" href="http://3ms.huawei.com/mm/msl/documentList.do?method=getTopicDocDetails&topic_id=1003900">IT生态书架</a>
                    </div>
                    <div>
                            <a class="bb3txt" target="_blank" href="http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&f_id=ITGS16101748390070">IT营销资料责任地图</a>
                    </div>
                    
                </div>

            </div>

        </div>

    </div>

    <script src="/ITnet/themes/Home//v1.0/js/jquery-1.11.1.min.js"></script>
    <script src="/ITnet/themes/Home//v1.0/js/bootstrap.min.js"></script>
    <script>  
        var con, bgimg;
        var blockimg = ['1', '2', '3', '4', '5', '6', '7', '8'],
        blocktxt = ['运营商', '安平', '政府', '金融', '大企业', '能源', '公共事业', 'ISP'],
        rec = ['<?php echo U("Carrier");?>?lang=cn', '<?php echo U("Safe_city");?>?lang=cn', '<?php echo U("Government");?>?lang=cn', '<?php echo U("Finance");?>?lang=cn', '<?php echo U("Large_Enterprise");?>?lang=cn', 'javascript:void(0)', 'javascript:void(0)', 'javascript:void(0)'];
        $(function() {
             for (var index = 0; index < blocktxt.length; index++) {
                 if(index<5){
                      baimg = 'style="background: url(/ITnet/themes/Home//v1.0/img/' + blockimg[index] + '.png) no-repeat center;background-size: 130%;transition:all .7s;"'
                      con += '<a target="_blank" class="block"' + baimg + '  href="' + rec[index] + '"><div class="blocktt"><span id="f'+(index+1)+'" class="blocktxt">' + blocktxt[index] + '</span></div></a>';
                }else{
                      baimg = 'style="background: url(/ITnet/themes/Home//v1.0/img/' + blockimg[index] + '.png) no-repeat center;background-size: 130%;transition:all .7s;"'
                      con += '<a target="_blank" class="block"' + baimg + 'onclick="return false"  href="' + rec[index] + '"><div class="blocktt"><span id="f'+(index+1)+'" class="blocktxt">' + blocktxt[index] + '</span></div></a>';
                }

            }
             
            $('.blocksubbox').append(con);   
        })  
      $(".bb2").hover(
        function () {
            $(this).children('img').attr('src','/ITnet/themes/Home//v1.0/img/b2.png');
           
        },
        function () {
            $(this).children('img').attr('src','/ITnet/themes/Home//v1.0/img/b1.png');
        }

    )
    </script>

</body>


</html>