<html>
<head>
    <title>Title</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>


    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="static/layui/css/layui.css"/>
    <link rel="stylesheet" href="static/layui/css/layui.mobile.css"/>

    <style>
   .txtset{
       margin-left: 10%;
       margin-right: 10%;
   }
        .tongji{
            margin-top: 12%;
        }
    </style>
</head>
<body>
<script src="Chart.js"></script>
<#include "../commonViews/BackstageHeadBar.ftl"/>
<div class="txtset">
    <div class="row">
        <div class="col-md-6">
            <div class="tongji">
                <div class="canvas-wrapper">
                    <!-- 雷达图 -->
                    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                    <div id="main" style="height:400px"></div>
                </div>
                <script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>
                <script type="text/javascript">
                    var myChart = echarts.init(document.getElementById('main'));
                    option = {

                        title : {
                            text: '你的Blog 成就',
                            subtext: 'You Ask Me'
                        },

                        tooltip : {
                            trigger: 'axis'
                        },
                        //图例
                        legend: {
                            orient : 'vertical',
                            x : 'right',
                            y : 'bottom',
                            data:['分类（Classify）','标签（Tag）','标题（Title）']
                        },
                        //工具箱
                        toolbox: {
                            show : true,
                            feature : {
                                mark : {show: true},
                                dataView : {show: true, readOnly: false},
                                restore : {show: true},
                                saveAsImage : {show: true}
                            }
                        },
                        //极坐标
                        polar : [
                            {
                                //就是类是横坐标
                                indicator : [
                                    { text: '分类（Classify）', max: 100},
                                    { text: '标签（Tag）', max: 100},
                                    { text: '标题（Title）', max: 100}

                                ]
                            }
                        ],

                        calculable : true,
                        series : [
                            {
                                name: '成就',      //一个名称，不写可以
                                type: 'radar', //类型雷达图
                                data : [
                                    {
                                        value : [${classifycount!}, ${tagcount!}, ${classifycount!}],
                                        name : '成就（achievement）'
                                    }//第一组数据结束

                                ]
                            }
                        ]
                    };
                    // 为echarts对象加载数据
                    myChart.setOption(option);
                </script>
                <script>
                    var data = [
                        {name:'Classify',value:20},
                        {name:'Tag',value:5},
                        {name:'Title',value:13}
                    ];

                </script>
            </div>
        </div>
        <div class="col-md-5 col-md-offset-1">
            <ul class="layui-timeline">
                <!--////////////////////////-->
                <#if blog??>
                    <#list blog as item>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">${item.time?string('yyyy-MM-dd')}</h3>
                                <p>
                                    ${item.title!}
                                    <br>${item.classify!}
                                </p>
                            </div>
                        </li>
                    </#list></#if>
                <!--////////////////////////-->
            </ul>
        </div>
    </div>

</div>
<script src="/static/layui/layui.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>

</html>
