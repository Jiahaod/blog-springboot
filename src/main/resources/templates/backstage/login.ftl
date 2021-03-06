

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登入 - layuiAdmin</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="/../layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="/../layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" href="/../layuiadmin/style/login.css" media="all">
</head>
<body>
<form method="post" action="/admin/login" class="layadmin-user-login-main">
  <div class="layadmin-user-login-box layadmin-user-login-header">
    <h2>layuiAdmin</h2>
    <p>layui 官方出品的单页面后台管理模板系统</p>
  </div>
  <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
    <div class="layui-form-item">
      <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
      <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" class="layui-input">
    </div>
    <div class="layui-form-item">
      <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
      <input type="password" name="password" id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
    </div>
    <div class="layui-form-item">
      <input class="layui-btn layui-btn-fluid" type="submit" name="submit" value="登录">
    </div>

  </div>
</form>

    
    <div class="layui-trans layadmin-user-login-footer">
      
      <p>© 2018 <a href="http://www.layui.com/" target="_blank">layui.com</a></p>
      <p>
        <span><a href="http://www.layui.com/admin/#get" target="_blank">获取授权</a></span>
        <span><a href="http://www.layui.com/admin/pro/" target="_blank">在线演示</a></span>
        <span><a href="http://www.layui.com/admin/" target="_blank">前往官网</a></span>
      </p>
    </div>

    
  </div>

  <script src="../layuiadmin/layui/layui.js"></script>
  <script>
  layui.config({
    base: '../layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'user'], function(){
    var $ = layui.$
    ,setter = layui.setter
    ,admin = layui.admin
    ,form = layui.form
    ,router = layui.router()
    ,search = router.search;

    form.render();

    //提交
    form.on('submit(LAY-user-login-submit)', function(obj){
    
      //请求登入接口
      admin.req({
        url: layui.setter.base + '' //实际使用请改成服务端真实接口
        ,data: obj.field
        ,done: function(res){
        
          //请求成功后，写入 access_token
          layui.data(setter.tableName, {
            key: setter.request.tokenName
            ,value: res.data.access_token
          });
          
          //登入成功的提示与跳转
          layer.msg('登入成功', {
            offset: '15px'
            ,icon: 1
            ,time: 1000
          }, function(){
            location.href = '/admin/home'; //后台主页
          });
        }
      });
      
    });
    
    
    //实际使用时记得删除该代码
    layer.msg('请输入账号密码', {
      offset: '15px'
      ,icon: 1
    });
    
  });
  </script>
</body>
</html>