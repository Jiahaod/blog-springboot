<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>数据列表页面</title>
    <!-- layui.css -->
    <link href="/layui/css/layui.css" rel="stylesheet" />
    <style>
        .layui-btn-small {
            padding: 0 15px;
        }

        .layui-form-checkbox {
            margin: 0;
        }

        tr td:not(:nth-child(0)),
        tr th:not(:nth-child(0)) {
            text-align: center;
        }

        #dataConsole {
            text-align: center;
        }
        /*分页页容量样式*/
        /*可选*/
        .layui-laypage {
            display: block;
        }

        /*可选*/
        .layui-laypage > * {
            float: left;
        }
        /*可选*/
        .layui-laypage .laypage-extend-pagesize {
            float: right;
        }
        /*可选*/
        .layui-laypage:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }

        /*必须*/
        .layui-laypage .laypage-extend-pagesize {
            height: 30px;
            line-height: 30px;
            margin: 0px;
            border: none;
            font-weight: 400;
        }
        /*分页页容量样式END*/
    </style>
</head>
<body>

<fieldset id="dataList" class="layui-elem-field layui-field-title sys-list-field" style="display:block">
    <legend style="text-align:center;">分类列表</legend>

    <form action="/admin/addTagAction">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="layui-btn layui-btn-sm" type="submit" value="添加分类">
    </form>

    <div class="layui-field-box">
        <div id="dataContent" class="">
            <table style="" class="layui-table" lay-even="">
                <colgroup>
                    <col width="40">
                    <col width="180">
                    <col width="150">
                    <col width="120">
                    <col width="120">
                    <col width="90">
                    <col width="45">
                    <col width="45">
                </colgroup>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>分类名</th>
                    <th>简介</th>
                    <th>添加时间</th>
                    <th>更新时间</th>
                    <th colspan="1">选项</th>
                    <th colspan="2">操作</th>
                </tr>
                </thead>
                <tbody>
                <#list tags as tag>
                <tr>
                    <td>${tag.tagId}</td>
                    <td>${tag.tagName}</td>
                    <td>${tag.brief}</td>
                    <td>${tag.addTime?string('yyyy-MM-dd')}</td>
                    <td>${tag.updateTime?string('yyyy-MM-dd')}</td>
                    <td>
                        <form class="layui-form" action="">
                            <div class="layui-form-item" style="margin:0;">
                                <input type="checkbox" name="top" title="置顶" value="1" lay-filter="top" checked="">
                                <div class="layui-unselect layui-form-checkbox layui-form-checked" lay-skin="">
                                    <span>置顶</span>
                                    <i class="layui-icon"></i>
                                </div>
                            </div>
                        </form>
                    </td>
                    <td>
                        <button onclick="window.location.href='/admin/updateTagAction/${tag.tagId}'" class="layui-btn layui-btn-small layui-btn-normal">
                            <i class="layui-icon"></i>
                        </button>
                    </td>
                    <td>
                        <button onclick="window.location.href='/admin/deleteTagAction/${tag.tagId}'" class="layui-btn layui-btn-small layui-btn-danger" onclick="layui.datalist.deleteData('1')">
                            <i class="layui-icon"></i>
                        </button>
                    </td>
                </tr>
                <tr>
                    </#list>

                </tbody>
            </table>
            <div id="pageNav">
                <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-0">
                    <#if size gt 5 >
                        <#if now = 1>
                            <span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
                            <a href="/admin/tagList/2" data-page="2">2</a>
                            <a href="/admin/tagList/3" data-page="3">3</a>
                            <a href="/admin/tagList/4" data-page="4">4</a>
                            <a href="/admin/tagList/5" data-page="5">5</a>
                        <#elseif now = 2>
                            <a href="/admin/tagList/1" data-page="1">1</a>
                            <span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
                            <a href="/admin/tagList/3" data-page="3">3</a>
                            <a href="/admin/tagList/4" data-page="4">4</a>
                            <a href="/admin/tagList/5" data-page="5">5</a>
                        <#else>
                            <#if now + 2 <= size>
                                <a href="/admin/tagList/${now-2}" data-page="${now-2}">${now-2}</a>
                                <a href="/admin/tagList/${now-1}" data-page="${now-1}">${now-1}</a>
                                <span class="layui-laypage-curr">
									<em class="layui-laypage-em"></em>
									<em>${now}</em>
								</span>
                                <a href="/admin/tagList/${now+1}" data-page="${now+1}">${now+1}</a>
                                <a href="/admin/tagList/${now+2}" data-page="${now+2}">${now+2}</a>
                            <#elseif now + 1 = size>
                                <a href="/admin/tagList/${now-3}" data-page="${now-3}">${now-3}</a>
                                <a href="/admin/tagList/${now-2}" data-page="${now-2}">${now-2}</a>
                                <a href="/admin/tagList/${now-1}" data-page="${now-1}">${now-2}</a>
                                <span class="layui-laypage-curr">
									<em class="layui-laypage-em"></em>
									<em>${now}</em>
								</span>
                                <a href="/admin/tagList/${now+1}" data-page="${now+1}">${now+1}</a>
                            <#elseif now=size>
                                <a href="/admin/tagList/${now-4}" data-page="${now-4}">${now-4}</a>
                                <a href="/admin/tagList/${now-3}" data-page="${now-3}">${now-3}</a>
                                <a href="/admin/tagList/${now-2}" data-page="${now-2}">${now-2}</a>
                                <a href="/admin/tagList/${now-1}" data-page="${now-1}">${now-2}</a>
                                <span class="layui-laypage-curr">
									<em class="layui-laypage-em"></em>
									<em>${now}</em>
								</span>
                            </#if>
                        </#if>
                    <#else>
                        <#if now=1>
                            <span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
                            <#if size gt now>
                                <#list now+1..size as i>
                                    <a href="/admin/tagList/${i}" data-page="${i}">${i}</a>
                                </#list>
                            </#if>

                        <#elseif now=size>
                            <#if now gt 1 >
                                <#list 1..now-1 as i>
                                    <a href="/admin/tagList/${i}" data-page="${i}">${i}</a>
                                </#list>
                            </#if>
                            <span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
                        <#else>
                            <#list 1..now-1 as i>
                                <a href="/admin/tagList/${i}" data-page="${i}">${i}</a>
                            </#list>
                            <span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
                            <#list now+1..size as i>
                                <a href="/admin/tagList/${i}" data-page="${i}">${i}</a>
                            </#list>
                        </#if>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</fieldset>
<!-- layui.js -->
<script src="/layui/layui.js"></script>
<!-- layui规范化用法 -->


<div class="layui-layer-move"></div></body>
</body>
</html>