<html>
<head>
    <title>Title</title>
    <script src="static/js/jquery-1.8.3.min.js"></script>
    <script src="static/js/jquery.ss.menu.js"></script>
    <script src="static/js/jquery-1.8.3.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">


    <script src="static/wangEditor.min.js"></script>
    <style>
        .blogTitle {
            margin-bottom: 10px;
        }
        .ck-content {
            min-height: 500px;
        }
        .w-e-text-container {
            height: 600px !important; /*!important是重点，因为原div是行内样式设置的高度300px*/
        }

       .htmleaf-container{
           margin-top: 10px;
       }
        #container{
           margin-left: 15%;
        }
        .row {
            background-color: #fff;
        }
        .dibu{
            margin-left: 45%;
        }
    </style>
</head>
<body>
<#include "../commonViews/BackstageHeadBar.ftl"/>

<div class="htmleaf-container">
    <div id="container">
        <!--承载富文本编辑器 begin-->
        <div class="row">
            <div class="col-md-9 ">
                <div class="row blogTitle">
                    <div class="col-md-12">
                        <input type="text" class="form-control" name="title" id="title" placeholder="请输入标题"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!---这里使用wangedite   存储图片使用的base64-->
                        <div id="WangEdite">
                            <p>欢迎使用 wangEditor 富文本编辑器</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--承载富文本编辑器 end-->

        <!--底部小标签 begin-->
        <div class="row dibu">
            <div class="col-md-6 col-md-offeset-6">
                <!--下面标签tag和分类-->
                <div class="row">
                <div>
                    <h5>添加标签（多个标签之间使用空格分隔）</h5>
                    <input type="text" class="form-control" id="tag" name="tag">
                    <h5>添加个人分类</h5>
                    <input type="text" class="form-control" id="classify" name="classify">
                </div>
                </div>
                <!--提交按钮-->
                <div class="row">
                    <div class="col-md-6 col-md-offeset-6">
                        <button id="submit" class="btn btn-default">发布博客</button>
                    </div>
                </div>
            </div>
        </div>
        <!--底部小标签 end-->
    </div>
</div>

<script>
    var E = window.wangEditor
    var editor = new E('#WangEdite')
    editor.customConfig.uploadImgShowBase64 = true   // 使用 base64 保存图片
    editor.create();     //创建富文本编辑器

    //点击提交命令，将数据提交到后台
    $('#submit').click(function () {
        var content = editor.txt.html();     //获取富文本数据
        var title = $('#title').val();        //获取标题
        var tag = $('#tag').val();            //获取标签
        var classify = $('#classify').val();  //获取分类
        //读取封面（cover）file中的图片数据
        $.post("/saveController", {content: content, title: title, tag: tag, classify: classify}, function (data) {
            Alert(data);
        }, 'text');


    });

</script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>

</html>
