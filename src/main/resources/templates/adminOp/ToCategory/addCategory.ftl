<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>文章列表--layui后台管理模板 2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="/css/public.css" media="all" />
</head>
<body class="childrenBody">
<form action="/admin/addCategory" method="post" class="layui-card">
    <div class="layui-card-header">添加分类</div>
    <div class="layui-card-body" pad15>
        <div class="layui-form" lay-filter="">
            <div class="layui-form-item">
                <label class="layui-form-label">分类名</label>
                <div class="layui-input-block">
                    <input name="categoryName" type="text" class="layui-input newsName" lay-verify="newsName" placeholder="请输入分类名">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">简介</label>
                <div class="layui-input-block">
                    <textarea name="brief" placeholder="请输入内容" class="layui-textarea abstract"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <input class="layui-btn" type="submit" name="提交">
                </div>
            </div>
        </div>
    </div>
</form>
<#--<form action="/admin/addArticle" method="post" class="layui-form layui-row layui-col-space10">-->
<#--    <input name="title">-->
<#--    <input type="submit" value="提交">-->
<#--</form>-->
<script type="text/javascript" src="/layui/layui.js"></script>
<script type="text/javascript" src="/js/newsAdd.js"></script>

</body>
</html>