<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" type="text/css" href="static/jquery.sPage.css">

    <style>
        body {
            text-align: center;
            background-color: #F4F8FB;

        }

        .All {
            background-color: #F4F8FB;
        }

        .daxiao {
            height: 18px;
            width: 18px;
            margin-right: 24px;
        }

        .setCenter {

            margin-left: 10%;
            margin-right: 10%;
            padding-bottom: 3%;
        }

        .classify_main {
            margin-left: 10%;
            margin-right: 10%;
            background-color: #fff;
            text-align: left;
            border-radius: 5px;
        }

        .classify_neibu {
            padding-top: 3%;
            margin-top: 15px;
            margin-left: 4%;
            padding-bottom: 3%;
        }

        .classify_header {
            width: 100%;
            height: 200px;
        }

        .imgwidth {
            width: 100%;
            height: 200px;
        }

        .marginset a {
            color: #738A94;
        }
        .colorset{
            color: #738A94;
        }
    </style>
</head>

<body>
<#include "../commonViews/sideBar.ftl"/>

<div class="classify_header">
    <img class="imgwidth" src="static/imgs/backgroudbg.jpg">
</div>

<div class="All">
    <div class="setCenter">
        <div id="container ">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="colorset">wo de 标签</h1>
                    <small>${tagList?size}个标签</small>
                </div>
            </div>

            <!--主体界面-->
            <div class="classify_main">
                <div class="classify_neibu">

                    <div class="row">
                        <div class="col-md-12">
                            <#if tagList??>
                                <#list tagList as item>
                                    <div class="marginset"><a href="#">${item.tag!}</a></div>
                                    <br/>
                                </#list>
                            </#if>
                        </div>
                    </div>

                </div>
            </div>


        </div>
    </div>

</div>

<#include  "../commonViews/footer.ftl"/>

<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
</html>