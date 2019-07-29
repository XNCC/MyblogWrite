<html>
<head>
    <title>Title</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <style>
        .left {
            background-color: #F2F2F2;
            padding-top: 10px;
            padding-bottom: 10px;

        }

        .right {
            background-color: #F2F2F2;
        }

        .middle {
            margin-right: 5%;
            margin-left: 5%;
            margin-top: 5%;
            margin-bottom: 100px;
        }

        #static_p {
            text-align: center;
            padding-top: 5px;
        }

        #btn_submit {
            text-align: center;
            margin-top: 20px;
        }

        #dibu {
            background-color: black;

        }

        .header {
            height: 200px;
        }

        .img-circle  {
            width: 50px;
            height: 50px;

        }

        .sizes {
            size: 30px;
        }
    </style>
</head>
<body>
<!--顶部图片//////////////////////////////////////////////////////////////////////////-->
<div class="header"
     style="background-image: url(http://img4.imgtn.bdimg.com/it/u=3884946193,3883537273&fm=15&gp=0.jpg)">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="logotxt"><h1><a href="#">My Blog<br><span style="font-size:60%;font-weight:normal;">又是元气满满的一天</span></a>
                    </h1></div>
            </div>
        </div>

    </div>
</div>
<!--顶部图片结束//////////////////////////////////////////////////////////////////////////-->
<!----头部开始///////////////////////////////////////////////////////////////////////////-->
<div class="top">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- 这部分是图片上边内容 -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img class="img-circle" src="http://img4.imgtn.bdimg.com/it/u=3884946193,3883537273&fm=15&gp=0.jpg"/>

            </div>

            <!-- 小标题部分 -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav">
                    <li><a class="sizes" href="#"><strong>My Blog</strong></a></li>
                    <li><a href="/ManagerBlog">管理博客</a></li>
                </ul>
                <!-- 个人信息部分    下拉箭头-->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">app</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">个人信息</a></li>
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
</body>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</html>
