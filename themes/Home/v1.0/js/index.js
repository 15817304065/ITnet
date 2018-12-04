var i = 0,
    id, target;
$('.normal-cursor').on({
    mouseover: function() {
        $(".normal-cursor").not(this).removeClass("aactive");
        $(this).addClass("aactive");
        id = $(this).parent().attr("data-target");
        $(id).parent().css('height', 'auto');
        $(id).stop(true, true).css('opacity', '1');
        $(id).fadeIn();
        $(id).siblings().hide();
        $(id).siblings().stop(true, true).css('opacity', '0');
    },
    // mouseout: function() {
    //     $(this).removeClass("aactive");
    // },
    click: function() {
        // return;
        if (!$(this).hasClass("aactive")) {
            $(".normal-cursor").not(this).removeClass("aactive");
            $(this).addClass("aactive");
            id = $(this).parent().attr("data-target");
            $(id).parent().css('height', 'auto');
            $(id).stop(true, true).css('opacity', '1');
            $(id).fadeIn();
            $(id).siblings().hide();
            $(id).siblings().stop(true, true).css('opacity', '0');
            i = 1;
        } else {
            $(this).removeClass("aactive");
            id = $(this).parent().attr("data-target");
            $(id).parent().css('height', '0');
            $(id).stop(true, true).css('opacity', '0');
            $(id).fadeIn();
            $(id).siblings().hide();
            $(id).siblings().stop(true, true).css('opacity', '0');
            i = 0;
        }
    }
});
// $('.dropdown-menu-inner').hover(function () {
//     target = $(this).attr('id');
//     $(this).parent().css('height', 'auto');
//     $(this).css('opacity', '1');
//     $(this).stop(true, true).fadeIn();
//     $(this).css('display', 'block');
//     // $("li[data-target!="+"'#"+target+"'"+"]").children("a").css('color','#fff');
//     $("li[data-target=" + "'#" + target + "'" + "]").children("a").css('color', '#e41f2b');
//     $("li[data-target=" + "'#" + target + "'" + "]").children("a").css('border-bottom', ' 2px solid');
// },
//     function () {
//         //    var pp = $(this)[0].hidden;
//         $('.normal-cursor').removeClass("aactive");
//         $('.normal-cursor').removeAttr("style");
//         $(this).stop(true, true).fadeOut();
//         $("li[data-target=" + "'#" + target + "'" + "]").children("a").removeAttr("style");
//     }
// );
// 点击会杀死一个怪搜
// $('.sbdemand').click(function() {
//     $('.normal-cursor').removeClass("aactive");
//     $('.dropdown-menu-inner').css('opacity', '0');
//     $('.dropdown-menu-inner').hide();
// });
// // 点击会出现一个怪搜
// $('.cxo').click(function() {
//     $('#navbar-content').css('height', 'auto');
//     $('.header-allnav-level').removeClass('show');
//     $('.header-allnav-level2').removeClass('show');
//     $('.dropdown-menu-inner').css('opacity', '0');
//     $('.dropdown-menu-inner').hide();
//     $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-1"]').removeClass("aactive");
//     $('li[data-target="#dropdown-menu-bh-1"]').children("a").addClass("aactive");
//     // $('li[data-target="#dropdown-menu-bh-1"]').children("a").css('border-bottom', ' 2px solid');
//     $('#dropdown-menu-bh-1').css('opacity', '1');
//     $('#dropdown-menu-bh-1').fadeIn();
// });
// $('.nfvi').click(function() {
//     $('#navbar-content').css('height', 'auto');
//     $('.header-allnav-level').removeClass('show');
//     $('.header-allnav-level2').removeClass('show');
//     $('.dropdown-menu-inner').css('opacity', '0');
//     $('.dropdown-menu-inner').hide();
//     $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-2"]').removeClass("aactive");
//     $('li[data-target="#dropdown-menu-bh-2"]').children("a").addClass("aactive");
//     $('#dropdown-menu-bh-2').css('opacity', '1');
//     $('#dropdown-menu-bh-2').fadeIn();
// });
// $('.rzc').click(function() {
//     $('#navbar-content').css('height', 'auto');
//     $('.header-allnav-level').removeClass('show');
//     $('.header-allnav-level2').removeClass('show');
//     $('.dropdown-menu-inner').css('opacity', '0');
//     $('.dropdown-menu-inner').hide();
//     $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-1"]').removeClass("aactive");
//     $('li[data-target="#dropdown-menu-bh-5"]').children("a").addClass("aactive");
//     $('#dropdown-menu-bh-5').css('opacity', '1');
//     $('#dropdown-menu-bh-5').fadeIn();
// });
// $('.dsj').click(function() {
//     $('#navbar-content').css('height', 'auto');
//     $('.header-allnav-level').removeClass('show');
//     $('.header-allnav-level2').removeClass('show');
//     $('.dropdown-menu-inner').css('opacity', '0');
//     $('.dropdown-menu-inner').hide();
//     $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-1"]').removeClass("aactive");
//     $('li[data-target="#dropdown-menu-bh-6"]').children("a").addClass("aactive");
//     $('#dropdown-menu-bh-6').css('opacity', '1');
//     $('#dropdown-menu-bh-6').fadeIn();
// });
// $('.b2b').click(function() {
//     $('#navbar-content').css('height', 'auto');
//     $('.header-allnav-level').removeClass('show');
//     $('.header-allnav-level2').removeClass('show');
//     $('.dropdown-menu-inner').css('opacity', '0');
//     $('.dropdown-menu-inner').hide();
//     $('.normal-cursor').not('li[data-target="#dropdown-menu-bh-1"]').removeClass("aactive");
//     $('li[data-target="#dropdown-menu-bh-7"]').children("a").addClass("aactive");
//     $('#dropdown-menu-bh-7').css('opacity', '1');
//     $('#dropdown-menu-bh-7').fadeIn();
// });