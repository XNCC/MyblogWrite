<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>showCostomerBlog</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>

    <script src="/static/wangEditor.min.js"></script>
    <style type="text/css">
     .row{
         margin-left: 10%;
         margin-right: 10%;
         margin-top: 10px;
     }
    </style>
</head>
<body>
 <div id="container">
    <#-- 博客展示区-->
    <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <#if blog??>
                    <h1>${blog.title!}</h1>
                    <#if blog.time??>
                        <i>${blog.time?string('yyyy-MM-dd')}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                    </#if>
                     <a href="#">${user!}</a>&nbsp;&nbsp;&nbsp;&nbsp;
                     阅读数:3236
                    <hr/>
                    <h3>${blog.title!}</h3>
                     ${blog.content!}
                </#if>
            </div>
    </div>

 </div>

 <#include  "../commonViews/footer.ftl"/>
<!--/////////////////////////-->
<script>
    var E = window.wangEditor;
    var editor = new E('#WangEdite');
    editor.customConfig.uploadImgShowBase64 = true;   // 使用 base64 保存图片
    editor.create();     //创建富文本编辑器
    //点击提交命令，将数据提交到后台
    $('#submit').click(function () {
        var content = editor.txt.html();     //获取富文本数据
        // $.post("/saveController",{content:content},function(data){
        //     Alert(data);
        // },'text');

    });
</script>

</body>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
</html>