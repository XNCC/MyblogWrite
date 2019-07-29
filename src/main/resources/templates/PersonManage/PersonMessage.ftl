<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="/static/layer/layer.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .personmageger_all {
            margin-top: 3%;
            margin-left: 6%;
            margin-right: 6%;

            margin-bottom: 3%;
        }

        body {
            background-color: #ECF5FF;
        }

        .titleTmg {
            border: rgb(16, 17, 17) solid 1;
            margin: 1px;
        }

        .img_center {
            text-align: center;
        }

        .aFloat {
            float: right;
        }
        .displaynono{
            display: none;
        }

    </style>
</head>

<body>
<#include "../commonViews/BackstageHeadBar.ftl"/>



<div class="personmageger_all">
    <div class="container">
        <div class="row">
            <!--第一行分为上下两列  -->
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <h1>个人资料</h1>
                    </div>
                </div>
                <hr/>
                <!--再分为左右两个界面
                            左：头像
                            右：个人信息-->
                <div class="row">
                    <div class="col-md-12">

                        <div class="row">
                            <div class="col-md-3 img_center">
                                <img class="titleTmg img-thumbnail img-circle " src="${touxiang!}"/>
                                <button id="my-img">修改头像</button>
                            </div>

                            <div class="col-md-8 setRightBorder">
                                <div class="row">
                                    <div class="col-md-12">
                                        ID:${username!}
                                        <a href="#" class="aFloat">个人主页</a>
                                    </div>
                                </div>
                                <hr/>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p> 昵称：${Nickname}</p>
                                        <p> 实名：${realName}</p>
                                        <p> 性别：${sex!}</p>

                                        <p> 生日： <#if birthday??>${birthday?string('yyyy-MM-DD')}</p>
                                        </#if>
                                        <p> 地区：${area!}</p>
                                        <p> 行业：${hangye!}</p>
                                        <p> 职位：${zhiye!}</p>
                                        <p> 简介：${jianjie!}</p>
                                        <p><a href="bianji">编辑个人信息</a></p>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>
</div>
<#include "../commonViews/footer.ftl"/>

<#---layer弹出框-->
<script>


</script>


</body>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
</script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- 这里我是用layer -->
<script>
    $("#my-img").click(function () {
        alert("123");
        layer.open({
            type: 1, //page层类型，一定要写1，否则没法在里面添加内容，除非添加url选2
            title: '更改头像', //弹出框标题
            maxmin: true, //弹出框设置可以缩略
            area: ['800px', '500px'],
            content: ContentMethod1(), //弹出框设置内容
        });

        $("#uploadId").change(function () {
            var $file = $(this);
            var objUrl = $file[0].files[0];
            //获得一个http格式的url路径:mozilla(firefox)||webkit or chrome
            var windowURL = window.URL || window.webkitURL;
            //createObjectURL创建一个指向该参数对象(图片)的URL
            var dataURL = windowURL.createObjectURL(objUrl);
            $("#my-img").attr("src", dataURL);
            $("#my-imgs").attr("src", dataURL);
        });

        $('#my-imgs').click(function () {
            $('#uploadId').click();
        });
    });
    //在弹出框中添加内容
    function ContentMethod1() {
        return "<form method='post' action='upload' enctype='multipart/form-data'>" +
            "<img src='' style='width: 200px' class='titleTmg img-thumbnail img-circle img' id='my-imgs'>" +
            "<input class='imgInput' type='file' name='file' id='uploadId'  style='display:none;'>点击更换图片" +
            ' <input type="submit"  class="btn btn-default"></input>' +
            '</form>';
    }
</script>

</html>