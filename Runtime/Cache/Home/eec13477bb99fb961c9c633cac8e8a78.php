<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><!--$include ss_layout_head_info-->
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Operation Transform</title>
    <script>
        var type=navigator.appName
        if (type=="Netscape"){
            var lang = navigator.language
        }
        else{
            var lang = navigator.userLanguage
        }
        //取得国家代码的前两个字母
        var lang = lang.substr(0,2)
        // 英语
        if (lang == "zh"){
            window.location.href="<?php echo U('index_show');?>?lang=cn";
        }else{
            window.location.href="<?php echo U('index_show');?>?lang=en";
        }
    </script>

</head>

<body>

Redirecting according your browser's language...

</body>

</html>