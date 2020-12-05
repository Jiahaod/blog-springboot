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
<form action="/admin/updateArticle/${article.articleId}" method="post" class="layui-form layui-row layui-col-space10">
    <div class="layui-col-md9 layui-col-xs12">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md9 layui-col-xs7">
                <div class="layui-form-item magt3">
                    <label class="layui-form-label">文章标题</label>
                    <div class="layui-input-block">
                        <input name="title" type="text" class="layui-input newsName" lay-verify="newsName" placeholder="请输入文章标题" value="${article.title}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">内容摘要</label>
                    <div class="layui-input-block">
                        <textarea name="brief" placeholder="请输入内容摘要" class="layui-textarea abstract">${article.brief}</textarea>
                    </div>
                </div>
            </div>
            <div class="layui-col-md3 layui-col-xs5">
                <div class="layui-upload-list thumbBox mag0 magt3">
                    <img class="layui-upload-img thumbImg">
                </div>
            </div>
        </div>
        <div class="layui-form-item magb0">
            <label class="layui-form-label">文章内容</label>
            <div class="layui-input-block">
                <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="news_content">
                    ${article.content}
                </textarea>
            </div>
        </div>
    </div>
    <div class="layui-col-md3 layui-col-xs12">
        <blockquote class="layui-elem-quote title"><i class="layui-icon">&#xe609;</i> 标签</blockquote>
        <div class="border category">
            <div class="">
                <#list tags as tag>
                    <p><input type="checkbox" name="tag${tag.tagId}" title="${tag.tagName}" lay-skin="primary" /></p>
                </#list>
            </div>
        </div>
        <blockquote class="layui-elem-quote title magt10"><i class="layui-icon">&#xe609;</i> 分类</blockquote>

        <div class="border">
            <div class="layui-form-item">

                <div>
                    <select name="status" lay-verify="required">
                        <#list categories as category>
                            <option value="${category.categoryId}">${category.categoryName}</option>
                        </#list>

                    </select>
                </div>
            </div>
            <#--            <div class="layui-form-item">-->
            <#--                <label class="layui-form-label"><i class="layui-icon">&#xe609;</i> 发　布</label>-->
            <#--                <div class="layui-input-block">-->
            <#--                    <input type="radio" name="release" title="立即发布" lay-skin="primary" lay-filter="release" checked />-->
            <#--                    <input type="radio" name="release" title="定时发布" lay-skin="primary" lay-filter="release" />-->
            <#--                </div>-->
            <#--            </div>-->
            <#--            <div class="layui-form-item layui-hide releaseDate">-->
            <#--                <label class="layui-form-label"></label>-->
            <#--                <div class="layui-input-block">-->
            <#--                    <input type="text" class="layui-input" id="release" placeholder="请选择日期和时间" readonly />-->
            <#--                </div>-->
            <#--            </div>-->
            <#--            <div class="layui-form-item openness">-->
            <#--                <label class="layui-form-label"><i class="seraph icon-look"></i> 公开度</label>-->
            <#--                <div class="layui-input-block">-->
            <#--                    <input type="radio" name="openness" title="开放浏览" lay-skin="primary" checked />-->
            <#--                    <input type="radio" name="openness" title="私密浏览" lay-skin="primary" />-->
            <#--                </div>-->
            <#--            </div>-->
            <#--            <div class="layui-form-item newsTop">-->
            <#--                <label class="layui-form-label"><i class="seraph icon-zhiding"></i> 置　顶</label>-->
            <#--                <div class="layui-input-block">-->
            <#--                    <input type="checkbox" name="newsTop" lay-skin="switch" lay-text="是|否">-->
            <#--                </div>-->
            <#--            </div>-->
            <hr class="layui-bg-gray" />
            <div class="layui-right">
                <input class="layui-btn layui-btn-sm" type="submit" value="更新">
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