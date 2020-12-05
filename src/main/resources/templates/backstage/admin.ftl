<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">layui 后台布局</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">文章管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">内容管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/adminArticleList">文章</a></dd>
                        <dd><a href="javascript:;">类别</a></dd>
                        <dd><a href="javascript:;">标签</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <!-- 内容主体区域 -->
            <table class="layui-hide" id="test" lay-filter="test"></table>

            <script type="text/html" id="toolbarDemo">
                <div class="layui-btn-container">
                    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
                    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
                    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
                </div>
            </script>

            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
            </script>

            <script type="text/html" id="img">
                <img src="images/{{d.fileName}}"/>
            </script>

            <script src="layui/layui.js" charset="utf-8"></script>
            <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

            <script>
                layui.use('table', function(){
                    var table = layui.table;

                    //温馨提示：默认由前端自动合计当前行数据。从 layui 2.5.6 开始： 若接口直接返回了合计行数据，则优先读取接口合计行数据。
                    //详见：https://www.layui.com/doc/modules/table.html#totalRow
                    table.render({
                        elem: '#test'
                        ,url:'data.json'
                        ,toolbar: '#toolbarDemo'
                        ,title: '用户数据表'
                        ,totalRow: true
                        ,cols: [[
                            {type: 'checkbox', fixed: 'left'}
                            ,{field:'articleId', title:'ID', width:80, fixed: 'left', unresize: true, sort: true, totalRowText: '合计'}
                            ,{field:'author', title:'作者', width:120, edit: 'text'}
                            ,{field:'brief', title:'简介', width:150, edit: 'text'}
                            ,{field:'categoryName', title:'分类', width:100}
                            ,{field:'hits', title:'点击量', width:120}
                            ,{field:'loveNum', title:'喜爱数', width:120}
                            ,{field:'addTime', title:'创建时间', width:120}
                            ,{field:'updateTime', title:'更新时间', width:120}
                            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
                        ]]
                        ,page: true
                    });

                    //工具栏事件
                    table.on('toolbar(test)', function(obj){
                        var checkStatus = table.checkStatus(obj.config.id);
                        switch(obj.event){
                            case 'getCheckData':
                                var data = checkStatus.data;
                                layer.alert(JSON.stringify(data));
                                break;
                            case 'getCheckLength':
                                var data = checkStatus.data;
                                layer.msg('选中了：'+ data.length + ' 个');
                                break;
                            case 'isAll':
                                layer.msg(checkStatus.isAll ? '全选': '未全选')
                                break;
                        };
                    });

                    //监听工具条
                    table.on('tool(test)', function(obj){
                        var data = obj.data;
                        if(obj.event === 'del'){
                            layer.confirm('真的删除行么', function(index){
                                obj.del();
                                layer.close(index);
                            });
                        } else if(obj.event === 'edit'){
                            layer.alert('编辑行：<br>'+ JSON.stringify(data))
                        }
                    });

                });
            </script>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>