<html>
<head>
    <title>Title</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


    <link rel='stylesheet prefetch' href='static/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='static/css/font-awesome.min.css'>
    <link rel="stylesheet" href="static/css/style.css">

    <style>
        .middless {
            font-family: '，' 黑体;
            text-align: center;
            margin-top: 25%;
            margin-bottom: 6%;
        }
        .middless h1 {
            letter-spacing: -1px;
            font-weight: 700;
            font-size: 50px;
            text-shadow: 0 3px 6px rgba(0, 0, 0, 0.3);
            animation: fade-in-down 1s both;
            animation-delay: .5s;

        }

        .middless h3 {
            margin-top: 10px;
            color: rgba(255, 255, 255, 0.8);
            line-height: 24px;
            text-shadow: 0 3px 6px rgba(0, 0, 0, 0.3);
            animation: fade-in-down .9s both;
            animation-delay: .3s;
        }

        .middless h5 {
            font-family: '，' 黑体;
            color: #fff;

        }

        .middless .colo {
            font-family: '，' 黑体;
            color: #fff;
        }

        .middless .a1 {
            color: #ffe211;
        }

        .middless .a2 {
            color: #cbeafb;
        }


        #canvas{
            background-size: cover;
        }

    </style>
</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
    </div>
</div>
<#--背景加气泡   <sapn>&nsp;menu</sapn>-->
<canvas id="canvas" width="100%" height="100%" style="position: absolute; left: 0px; bottom: 0px;"></canvas>
<#--背景加气泡结束   <sapn>&nsp;menu</sapn>-->
<div class="col-xs-12">
    <#include "../commonViews/sideBar.ftl"/>

    <div class="container">
        <div class="row">
            <#--中间文字-->
            <div class="col-xs-12   middless">
                <h1><a href="/index" class="colo"><strong>M 的博客</strong></a></h1>
                <h3>上帝喜欢掷筛子</h3>
                <h5>小而美的 Java 博客系统 <a href="#" class="colo a1">My Blog</a></h5>
                <h5> Golang 在线 <a href="#" class="a2">IDE Wide</a></h5>
                <h5>社区 <a href="#" class="colo a1">Sym</a></h5>
            </div>
        </div>
    </div>
</div>
</body>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<#---气泡的js-->
<script>
    var canvas = document.getElementById("canvas");
    var context = canvas.getContext("2d");
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    function Circle() {
        this.x = Math.random() * canvas.width;
        this.y = canvas.height;
        this.r = Math.random() * 10;
        //绘制圆形
        this.paint = function () {
            context.beginPath();
            context.arc(this.x, this.y, this.r, 0, Math.PI * 2);
            context.fillStyle = "white";
            context.globalAlpha = 0.5;
            context.fill();
        }
        //控制圆形移动
        this.step = function () {
            this.y--;
        }
    }

    var circles = [];

    function createCircles() {
        var circle = new Circle();
        circles[circles.length] = circle;
    }

    function paintCircles() {
        for (var i = 0; i < circles.length; i++) {
            circles[i].paint();
        }
    }

    function stepCircles() {
        for (var i = 0; i < circles.length; i++) {
            circles[i].step();
        }
    }

    var myimg = new Image();
    myimg.src = "../imgs/headerBg.jpg";
    var timer = "";
    setInterval(function () {
        context.drawImage(myimg, 0, 0);
        timer++;
        if (timer % 20 == 0) {
            createCircles();
        }
        paintCircles();
        stepCircles();
    }, 10);
</script>

</html>
