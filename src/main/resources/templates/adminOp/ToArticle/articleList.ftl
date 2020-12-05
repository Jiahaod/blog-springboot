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
<fieldset id="dataConsole" class="layui-elem-field layui-field-title" style="display:block">
	<legend>控制台</legend>
	<div class="layui-field-box">
		<div id="articleIndexTop">
			<form class="layui-form layui-form-pane" action="">
				<div class="layui-form-item" style="margin:0;margin-top:15px;">
					<div class="layui-inline">
						<label class="layui-form-label">分类</label>
						<div class="layui-input-inline">
							<select name="city">

								<option value="0"></option>
							</select>
							<div class="layui-unselect layui-form-select">
								<div class="layui-select-title">
									<input type="text" placeholder="请选择" value="" readonly="" class="layui-input layui-unselect">
									<i class="layui-edge">

									</i>
								</div>
								<dl class="layui-anim layui-anim-upbit">

									<#list categories as category>
										<dd  lay-value="1" class="">${category.getCategoryName()}</dd>
									</#list>
								</dl>
							</div>
						</div>
						<label class="layui-form-label">关键词</label>
						<div class="layui-input-inline">
							<input type="text" name="keywords" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline" style="width:auto">
							<button class="layui-btn" lay-submit="" lay-filter="formSearch">搜索</button>
						</div>
					</div>
					<div class="layui-inline">
						<div class="layui-input-inline" style="width:auto">
							<a href="/admin/addArticleAction" id="addArticle" class="layui-btn layui-btn-normal">发表文章</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</fieldset>
<fieldset id="dataList" class="layui-elem-field layui-field-title sys-list-field" style="display:block">
	<legend style="text-align:center;">文章列表</legend>
	<div class="layui-field-box">
		<div id="dataContent" class="">
			<table style="" class="layui-table" lay-even="">
				<colgroup>
					<col width="40">
					<col width="180">
					<col width="150">
					<col width="50">
					<col width="90">
					<col width="120">
					<col width="120">
					<col width="90">
					<col width="45">
					<col width="45">
				</colgroup>
				<thead>
				<tr>
					<th>ID</th>
					<th>标题</th>
					<th>简介</th>
					<th>作者</th>
					<th>封面图</th>
					<th>添加时间</th>
					<th>更新时间</th>
					<th colspan="1">选项</th>
					<th colspan="2">操作</th>
				</tr>
				</thead>
				<tbody>
				<#list articles as article>
					<tr>
					<td>${article.articleId}</td>
					<td>${article.title}</td>
					<td>${article.brief}</td>
					<td>${article.author}</td>
					<td>${article.logo}</td>
					<td>${article.addTime?string('yyyy-MM-dd')}</td>
					<td>${article.updateTime?string('yyyy-MM-dd')}</td>
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
						<button onclick="window.location.href='/admin/updateArticleAction/${article.articleId}'" class="layui-btn layui-btn-small layui-btn-normal">
							<i class="layui-icon"></i>
						</button>
					</td>
					<td>
						<button onclick="window.location.href='/admin/deleteArticleAction/${article.articleId}'" class="layui-btn layui-btn-small layui-btn-danger" onclick="layui.datalist.deleteData('1')">
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
							<a href="/admin/articleList/2" data-page="2">2</a>
							<a href="/admin/articleList/3" data-page="3">3</a>
							<a href="/admin/articleList/4" data-page="4">4</a>
							<a href="/admin/articleList/5" data-page="5">5</a>
						<#elseif now = 2>
							<a href="/admin/articleList/1" data-page="1">1</a>
							<span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
							<a href="/admin/articleList/3" data-page="3">3</a>
							<a href="/admin/articleList/4" data-page="4">4</a>
							<a href="/admin/articleList/5" data-page="5">5</a>
						<#else>
							<#if now + 2 <= size>
								<a href="/admin/articleList/${now-2}" data-page="${now-2}">${now-2}</a>
								<a href="/admin/articleList/${now-1}" data-page="${now-1}">${now-1}</a>
								<span class="layui-laypage-curr">
									<em class="layui-laypage-em"></em>
									<em>${now}</em>
								</span>
								<a href="/admin/articleList/${now+1}" data-page="${now+1}">${now+1}</a>
								<a href="/admin/articleList/${now+2}" data-page="${now+2}">${now+2}</a>
							<#elseif now + 1 = size>
								<a href="/admin/articleList/${now-3}" data-page="${now-3}">${now-3}</a>
								<a href="/admin/articleList/${now-2}" data-page="${now-2}">${now-2}</a>
								<a href="/admin/articleList/${now-1}" data-page="${now-1}">${now-2}</a>
								<span class="layui-laypage-curr">
									<em class="layui-laypage-em"></em>
									<em>${now}</em>
								</span>
								<a href="/admin/articleList/${now+1}" data-page="${now+1}">${now+1}</a>
							<#elseif now=size>
								<a href="/admin/articleList/${now-4}" data-page="${now-4}">${now-4}</a>
								<a href="/admin/articleList/${now-3}" data-page="${now-3}">${now-3}</a>
								<a href="/admin/articleList/${now-2}" data-page="${now-2}">${now-2}</a>
								<a href="/admin/articleList/${now-1}" data-page="${now-1}">${now-2}</a>
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
									<a href="/admin/articleList/${i}" data-page="${i}">${i}</a>
								</#list>
							</#if>

						<#elseif now=size>
							<#if now gt 1 >
								<#list 1..now-1 as i>
									<a href="/admin/articleList/${i}" data-page="${i}">${i}</a>
								</#list>
							</#if>
							<span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
						<#else>
							<#list 1..now-1 as i>
								<a href="/admin/articleList/${i}" data-page="${i}">${i}</a>
							</#list>
							<span class="layui-laypage-curr">
								<em class="layui-laypage-em"></em>
								<em>${now}</em>
							</span>
							<#list now+1..size as i>
								<a href="/admin/articleList/${i}" data-page="${i}">${i}</a>
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