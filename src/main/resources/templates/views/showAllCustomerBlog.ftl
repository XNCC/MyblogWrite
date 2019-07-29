<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>showCostomerBlog</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" type="text/css" href="static/jquery.sPage.css">

    <style type="text/css">
        <#--`分页栏样式-->
        .num {
            height: 50px;
            line-height: 50px;
            text-align: center;
        }

        .demo {
            margin-bottom: 20px;
            text-align: center;
        }


        <#--展示区样式-->
        .tag {
            border-radius: 5px;
            border: darkgray 1px solid;
            margin-right: 10px;
        }

        .summary {
            font-family: ‘宋体 '，' 黑体 ', ' Arial’;
            font-size: 20px;
        }

        .back {
            background-size: cover;

            background-color: #FAFEFF;
            opacity: 1;
        }

        .borderset {
            border-bottom: #F2F2F2 1px solid;
            border-radius: 5px;
            background-color: #ffffff;
        }

        .borderset h2 a {
            color: #ffe211;
        }

        .borderset div p {
            color: #ffe211;
        }

        .borderset foot a {
            color: #ffe211;
        }

        .bagg {
            height: 280px;
            background-image: url(../imgs/footer.png);
            background-repeat: no-repeat;
            background-position: center;
            opacity: 1;
        }
    </style>
</head>
<body>
<#include  "../commonViews/head.ftl"/>
<div id="container">
    <div class="row back">
        <div class="col-md-8 col-md-offset-2">
            <div id="showBlogId">

                <#if rows??>
                    <#list rows as item>
                        <div class="col-md-12 borderset">
                            <h2>
                                <a href="showDetails/${item.userid!}/${item.title!}/${item.username!}">
                                    <strong style=" color: #141619; font-size: 19px">${item.title!}</strong></a>
                            </h2> <#--设置详细页面的数据地址-->

                            <div>
                                <p><i class="summary" style=" color: #56585a; font-size: 15px">${item.summary!}</i></p>
                            </div>
                            <foot>
                                <a href="#" style=" color: #78b8ff; font-size: 10px;">8989</a> &nbsp;
                                <span style=" color: #56585a; font-size: 10px;">&nbsp;
                                        ${item.username!} &nbsp; &nbsp;
                                        <#if item.time??>
                                            ${item.time?string('yyyy-MM-dd')}
                                        </#if>
                                            </span>
                                &nbsp; &nbsp;
                                <span style=" color: #56585a; font-size: 10px;">

                                            <#if item.list??>
                                                <#list item.list as items>
                                                    ${items} &nbsp;
                                                </#list>
                                            </#if>

                                            </span>
                                <span style=" color: #56585a; font-size: 10px;">&nbsp;
                                        ${item.classify!}
                                                </span>

                            </foot>
                        </div>
                    </#list>
                </#if>
            </div>

            <!--Bootstrap分页插件-->
            <div id="myPage" class="demo"></div>
            <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
            <script src="static/jquery.sPage.min.js"></script>

            <div class="bagg"><#--页尾-->
            </div>
        </div>
    </div>

</div>
<br/>
</body>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#myPage").sPage({
            page:${page!1},//当前页码
            pageSize:${pagesize!1},//每页显示多少条数据，默认10条
            total:${total!10},//数据总条数
            showTotal: true,//是否显示总条数，默认关闭：false
            totalTxt: "共{total}条",//数据总条数文字描述，{total}为占位符
            showSkip: true,//是否显示跳页，默认关闭：false
            showPN: true,//是否显示上下翻页，默认开启：true
            prevPage: "上一页",//上翻页文字描述，默认“上一页”
            nextPage: "下一页",//下翻页文字描述，默认“下一页”
            backFun: function (page) {
                //点击分页按钮回调函数，返回当前页码
                // $("#pNum").text(page);
                ajaxPage(page);
            }
        });
    });

    //结合Ajax使用
    function ajaxPage(page) {
        var p = page || 1;
        $.ajax({
            type: "GET",
            url: "/page",
            data: {
                page: p,
                pageSize: 10,
            },
            dataType: "json",
            success: function (data) {
                //数据处理
                //  alert(data);
                $("#showBlogId").empty();
                for (var i = 0; i < data.rows.length; i++) {
                    $("#showBlogId").append(
                        "<div class='col-md-12 borderset'><h2><a style=' color: #141619; font-size: 19px' href='showDetails/" + data.rows[i].userid + "/" + data.rows[i].title + "/" + data.rows[i].username + "'>" + data.rows[i].title + "</a></h2>" +
                        "<div>" +
                        "<p style=' color: #56585a; font-size: 15px'> <i class='summary'>" + data.rows[i].summary + "</i></p>" +
                        "</div>" +
                        "<foot>" +
                        "<a href='#'>" + 8989 + "</a>&nbsp; <span style=\" color: #56585a; font-size: 10px;\">&nbsp;" +
                        "" + data.rows[i].username + "&nbsp;" +
                        "" + data.rows[i].times + "&nbsp;" +
                        "" + data.rows[i].classify + "</span>" +
                        "</foot>" +
                        "</div>" +
                        "</div>");
                }
            },
            error: function (e) {
                console.log(e);
            }
        });
    }

</script>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
</html>