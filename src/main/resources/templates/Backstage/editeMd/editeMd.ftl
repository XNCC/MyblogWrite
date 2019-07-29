<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="static/editorMd/css/editormd.css" />
</head>
<body>
<#include "../../commonViews/BackstageHeadBar.ftl"/>
<div id="layout">
    <div id="test-editormd">
        <textarea style="display:none;"></textarea>
    </div>
</div>
<script src="static/editorMd/examples/js/jquery.min.js"></script>
<script src="static/editorMd/editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;

    $(function() {
        testEditor = editormd("test-editormd", {
            width   : "90%",
            height  : 640,
            syncScrolling : "single",
            path    : "static/editorMd/lib/"
        });


    });
</script>
</body>
</html>