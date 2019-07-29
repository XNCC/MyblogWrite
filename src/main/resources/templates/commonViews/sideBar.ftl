<!DOCTYPE html>
<html lang="en">

<head>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


    <link rel='stylesheet prefetch' href='static/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='static/css/font-awesome.min.css'>
    <link rel="stylesheet" href="static/css/style.css">
</head>

<body>
<#--/////////////////侧边栏//////////////////////////////////////////-->
<div id="wrapper">
    <div class="overlay"></div>
    <!-- Sidebar  侧边栏内容 -->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand ">
                <a href="/showBlog">My Blog</a>
            </li>
            <li>
                <a href="/showBlog">&nbsp; 主页</a>
            </li>
            <li>
                <a href="/about"> &nbsp;关于</a>
            </li>
            <li>
                <a href="https://github.com/XNCC?tab=repositories">&nbsp; 我的github</a>
            </li>
            <li>
                <a href="/classify">分类</a>
            </li>
            <li>
                <a href="/tag">标签墙</a>
            </li>
            <li>
                <a href="/friendsLink">友情链接</a>
            </li>
        </ul>
    </nav>
    <!-- /#sidebar-wrapper -->
    <div id="page-content-wrapper " class="sidebar">
        <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
        </button>
    </div>
</div>
<#--/////////////////////侧边栏结束//////////////////////////////////////-->
</body>
<#---侧边栏js-->
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<script src='static/js/bootstrap.min.js'></script>
<script type="text/javascript">
    $(document).ready(function () {
        var trigger = $('.hamburger'),
            overlay = $('.overlay'),
            isClosed = false;
        trigger.click(function () {
            hamburger_cross();
        });

        function hamburger_cross() {
            if (isClosed == true) {
                overlay.hide();
                trigger.removeClass('is-open');
                trigger.addClass('is-closed');
                isClosed = false;
            } else {
                overlay.show();
                trigger.removeClass('is-closed');
                trigger.addClass('is-open');
                isClosed = true;
            }
        }

        $('[data-toggle="offcanvas"]').click(function () {
            $('#wrapper').toggleClass('toggled');
        });
    });
</script>

</html>