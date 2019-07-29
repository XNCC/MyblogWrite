<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="static/jquery.sPage.css">
</head>
<style>
    .managerBlogrowss {
        border-radius: 5px;
        border: #DDDDDD solid 1px;
        margin-left: 50px;
        margin-right: 50px;
        margin-bottom: 50px;
    }

    .manageBlogColor {
        border-bottom: dashed #DDDDDD 1px;
        border-radius: 5px;
        padding-bottom: 1%;
        padding-top: 1%;
    }

    .manageBlogaflout {
        float: right;
    }

    .setCenters {
        margin-left: 10%;
        margin-right: 10%;
    }

    .setManagerBlogcenter {
        margin-left: 10%;
        margin-right: 10%;
    }
</style>

<body>
<#include "../commonViews/BackstageHeadBar.ftl"/>
<div class="setCenters">
    <div class="row managerBlogrowss">
        <div class="col-md-11 col-md-offeset-1 ">
            <h3>管理</h3>
            <hr/>
            <div id="showBlogId">
                <#if rows??>
                    <#list rows as item>
                        <div class="row">
                            <div class="col-md-11 col-md-offeset-1 manageBlogColor">
                                <div class="col-md-12">
                                    <p>${item.title!}</p>
                                    <i>${item.classify!} &nbsp;&nbsp;&nbsp;${item.time?string('yyyy-MM-dd')!}  </i>
                                    <a class="manageBlogaflout" href="updateBlog/${item.id!} ">修改</a><a
                                            class="manageBlogaflout" href="deleteBlog/${item.id!}">删除&nbsp;&nbsp;&nbsp;</a>
                                </div>
                            </div>
                        </div>
                    </#list>
                </#if>
            </div>
            <!--Bootstrap分页插件-->
            <div class="row">
                <div class="col-md-12 setManagerBlogcenter">
                    <div id="myPage" class="demo"></div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <script src="static/jquery.sPage.min.js"></script>
</div>

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
            url: "/managerss",
            data: {
                page: p,
                pageSize: 10,
            },
            dataType: "json",
            success: function (data) {
                //数据处理   ----一定要清屏
                $("#showBlogId").empty();
                for (var i = 0; i < data.rows.length; i++) {
                    $("#showBlogId").append(
                        "<div class='row'>" +
                        "                <div class='col-md-11 col-md-offeset-1 manageBlogColor'>" +
                        "                    <div class='col-md-12'>" +
                        "                        <p>" + data.rows[i].title + "</p>" +
                        "                        <i>" + data.rows[i].classify + " &nbsp;&nbsp;&nbsp;" + data.rows[i].times + "  </i>" +
                        "                        <a class='manageBlogaflout' href='updateBlog/" + data.rows[i].id + "'>修改</a>" +
                        "                        <a class='manageBlogaflout' href='deleteBlog/" + data.rows[i].id + "'>删除&nbsp;&nbsp;&nbsp;</a>" +
                        "                    </div>" +
                        "                </div>" +
                        "            </div>");
                }
            },
            error: function (e) {
                console.log(e);
            }
        });
    }

</script>
</body>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
</script>

</html>