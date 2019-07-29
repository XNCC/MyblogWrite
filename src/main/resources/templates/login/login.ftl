<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="/static/login/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/login/css/materialize.min.css">
    <link rel="stylesheet" href="/static/login/css/tooplate.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .containers{
            margin-top: 10%;
            height: 20%;
            width: 30%;
            margin-left: 35%;
            margin-bottom: 10%;
        }
        #login{
            background-image: url("http://localhost:8888/static/imgs/input-bg-05.jpg");
        }
    </style>

</head>

<body id="login">
<div class="containers">
    <form action="/login" method="get" class="tm-bg-black p-5 h-100">
        <div class="input-field">
            <input placeholder="Username" id="username" name="username" type="text" class="validate">
        </div>
        <div class="input-field mb-5">
            <input placeholder="Password" id="password" name="password" type="password" class="validate">
        </div>
        <div class="tm-flex-lr">
            <a href="#" class="white-text small">Forgot Password?</a>
            <button type="submit"
                    class="waves-effect btn-large btn-large-white px-4 black-text rounded-0">Login</button>
        </div>
    </form>

</div>

<script src="/static/login/js/jquery-3.2.1.slim.min.js"></script>
<script src="/static/login/js/materialize.min.js"></script>
<script>
    $(document).ready(function () {
        $('select').formSelect();
    });
</script>
<#include "../commonViews/footer.ftl"/>
</body>


</html>