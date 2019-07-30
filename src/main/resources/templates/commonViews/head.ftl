<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/qipao/dest/css/normalize.css" />
    <link rel="stylesheet" href="/static/qipao/dest/css/style.css">
</head>
<body>
<#include "../commonViews/sideBar.ftl"/>
<div class="wrapper">
    <header class="header">

        <div class="full-center middless">
            <h1><a href="/index" class="colo"><strong>M 的博客</strong></a></h1>
            <h3>上帝喜欢掷筛子</h3>
            <h5>小而美的 Java 博客系统 <a href="#" class="colo a1">My Blog</a></h5>
            <h5> Golang 在线 <a href="#" class="a2">IDE Wide</a></h5>
            <h5>社区 <a href="#" class="colo a1">Sym</a></h5>
        </div>


    </header>

</div>
</body>
<script src="static/qipao/dest/main.js" type="text/javascript"></script>
<script src="static/qipao/dest/circleMagic.min.js"></script>

<script>
    $('.header').circleMagic({
        elem: '.header',
        radius: 5,
        densety: .3,
        color: 'rgba(255,255,255, .4)',
        //color: 'random',
        clearOffset: .3
    });
</script>
</html>