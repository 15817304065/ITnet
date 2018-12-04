var con, bgimg;
var blockimg = ['1', '2', '3', '4', '5', '6', '7', '8'],
    blocktxt = ['Carrier', 'Safe City', 'Government', 'Finance', 'Large Enterprise', 'Energy', 'Public Utility', 'ISP'],
    rec = ['carrier.html ',
        'http://it.mkt.huawei.com/public_safety.html',
        'http://it.mkt.huawei.com/government.html',
        'http://it.mkt.huawei.com/finace.html',
        'http://it.mkt.huawei.com/manufacturing.html',
        'javascript:void(0);',
        'javascript:void(0);',
        'javascript:void(0);'
    ]

$(function () {
    for (var index = 0; index < blocktxt.length; index++) {
        // const element = array[index];
        baimg = 'style="background: url(../v1.0/img/' + blockimg[index] + '.png) no-repeat center; background-size: 110%;transition:all .8s;"'
        con += '<a class="block"' + baimg + '  href="' + rec[index] + '"><span class="blocktxt">' + blocktxt[index] + '</span></a>';
    }
    $('.blocksubbox').append(con);
})
