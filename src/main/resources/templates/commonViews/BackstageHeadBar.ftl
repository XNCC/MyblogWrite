<html>
<head>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
<!----头部开始///////////////////////////////////////////////////////////////////////////-->
<div class="top">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- 小标题部分 -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" id="changActive">
                    <li><a class="navbar-brand" href="/showBlog">My Blog</a></li>
                    <li ><a href="/UserIndex">个人首页</a></li>
                    <li ><a href="/write">Rich Text Blogging <span class="sr-only">(current)</span></a></li>
                    <li><a href="/editeMd">markerdown写博客</a></li>
                    <li><a href="/ManagerBlog" >管理博客</a></li>
                </ul>
                <script>
                    $('#changActive > li').click(function(){
                        $('#changActive > li').removeClass('active');//删除所有active 的class属性
                        $(this).attr("class","active");             //设置被点击的class属性为active
                    });
                </script>
                <!-- 个人信息部分 -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">友情链接</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> ${username!}<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/PersonMessage">个人信息</a></li>
                            <li><a href="#">设置</a></li>
                            <li><a href="#">修改密码</a></li>
                            <li><a href="#">设置权限</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

</div>
<!----头部完///////////////////////////////////////////////////////////////////////////-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>
