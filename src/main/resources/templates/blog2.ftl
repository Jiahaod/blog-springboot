<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="/ico/favicon.png">
        <title></title>
        <!-- Bootstrap Core CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <link href="/plugins/prettyPhoto/css/prettyPhoto.css" rel="stylesheet">
        <link href="/css/animate.min.css" rel="stylesheet">
        <link href="/css/ui.totop.css" rel="stylesheet">
        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
        <link href="/css/extralayers.css" rel="stylesheet">
        <link href="/plugins/rs-plugin/css/settings.css" rel="stylesheet">
        <!-- Font Awesome  -->
        <link href="/css/font-awesome.min.css" rel="stylesheet">
        <!-- Custom Stylesheet For This Template -->
        <link href="/css/stylesheet.css" rel="stylesheet">
        <link href="/css/skins.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link href="http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,600,500,300,200,100" rel="stylesheet" type="text/css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="/js/html5shiv.min.js"></script>
        <script src="/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="wide color-skin-1 color-pattern-1">
        <div id="page" class="hfeed site">
            <#include "/include/header.ftl"/>
            <!-- /#masthead -->
            <header id="header-search-box" class="search-box-wrapper">
                <div class="container">
                    <div class="search-box">
                        <button type="button" class="close"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <form role="form">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-lg" type="button"><i class="fa fa-search"></i></button>
                                </span>
                                <input type="text" class="form-control input-lg" placeholder="Search">
                            </div>
                        </form>
                    </div>
                </div>
            </header>
            <!-- /#header-search-box -->
            <header class="archive-header">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="archive-title">Blog: ALL BLOGS</h4>
                        </div>
                        <!-- /.col-sm-6 -->
                        <div class="col-xs-6 hidden-xs">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Blog</a></li>
                                <li class="active">Blog: ALL BLOGS</li>
                            </ol>
                        </div>
                        <!-- /.col-xs-6 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </header>
            <!-- /.archive-header -->
            <div id="main" class="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div id="primary" class="site-comtent">
                                <#list articles as article>
                                    <#if article_index = 5>
                                        <#break>
                                    </#if>
                                    <article class="post-1 post format-standard">
                                        <div class="entry-thumb">
                                            <img src="/img/general/img1.jpg" class="img-responsive" alt="">
                                            <div class="image-overlay"></div>
                                            <a href="/img/general/img1.jpg" data-rel="prettyPhoto" class="ima-zoom"><i class="fa fa-plus"></i></a>
                                        </div>
                                        <!-- /.entry-thumb -->
                                        <div class="entry-wrap">

                                            <header class="entry-header">
                                                <h1 class="entry-title"><a href="#" rel="bookmark">${article.title}</a></h1>
                                            </header>
                                            <!-- /.entry-header -->
                                            <div class="entry-content">
                                                <blockquote>
                                                    <p>${article.brief}</p>
                                                </blockquote>
                                            </div>
                                            <!-- /.entry-content -->
                                            <div class="entry-meta">
                                                <span class="post-date"><i class="fa fa-clock-o"></i> <a href="#" title="6:17 pm">${article.addTime?string('yyyy-MM-dd')}</a></span>
                                                <span class="post-author"><span class="glyphicon glyphicon-user"></span> <a href="#">${article.author}</a></span>

                                                <span class="post-taxs"><i class="fa fa-tags"></i> <a href="#">${article.updateTime?string('yyyy-MM-dd')}</a></span>
                                                <span class="post-cats"><i class="fa fa-th-list"></i> <a href="#">${article.loveNum}</a></span>
                                                <span class="comments-link"><i class="fa fa-comments"></i> <a href="#">${article.hits}</a></span>
                                            </div>
                                            <!-- /.entry-meta -->
                                        </div>
                                        <!-- /.entry-wrap -->
                                    </article>
                                </#list>

                                <#-- <li class="disabled"><a href="#">« Previous</a></li>-->
                                <#--                                    <li><a href="#">1</a></li>-->
                                <#--                                    <li><a href="#">2</a></li>-->
                                <#--                                    <li class="active"><a href="#">3</a></li>-->
                                <#--                                    <li><a href="#">4</a></li>-->
                                <#--                                    <li><a href="#">5</a></li>-->
                                <#--                                    <li><a href="#">Next »</a></li>-->
                                <!-- /.post -->
                                <ul class="pagination">
                                    <#if size gt 5 >
                                        <#if now = 1>
                                            <li class="disabled"><a href="#">« Previous</a></li>
                                            <li class="active">1</li>
                                            <li><a href="/article/articleList/2">2</a></li>
                                            <li><a href="/article/articleList/3">3</a></li>
                                            <li><a href="/article/articleList/4">4</a></li>
                                            <li><a href="/article/articleList/5">5</a></li>
                                            <li><a href="/article/articleList/2">Next »</a></li>
                                        <#elseif now = 2>
                                            <li><a href="/article/articleList/1">« Previous</a></li>
                                            <li><a href="/article/articleList/1">1</a></li>
                                            <li class="active"><a href="/article/articleList/2">2</a></li>
                                            <li><a href="/article/articleList/3">3</a></li>
                                            <li><a href="/article/articleList/4">4</a></li>
                                            <li><a href="/article/articleList/5">5</a></li>
                                            <li><a href="/article/articleList/3">Next »</a></li>
                                        <#else>
                                            <#if now + 2 <= size>
                                                <li><a href="/article/articleList/${now-1}">« Previous</a></li>
                                                <li><a href="/article/articleList/${now-2}">${now-2}</a></li>
                                                <li><a href="/article/articleList/${now-1}">${now-2}</a></li>
                                                <li class="active"><a href="/article/articleList/${now}">${now}</a></li>
                                                <li><a href="/article/articleList/${now+1}">${now+1}</a></li>
                                                <li><a href="/article/articleList/${now+2}">${now+2}</a></li>
                                                <li><a href="/article/articleList/${now+1}">Next »</a></li>

                                            <#elseif now + 1 = size>
                                                <li><a href="/article/articleList/${now-1}">« Previous</a></li>
                                                <li><a href="/article/articleList/${now-3}">${now-3}</a></li>
                                                <li><a href="/article/articleList/${now-2}">${now-2}</a></li>
                                                <li><a href="/article/articleList/${now-1}">${now-2}</a></li>
                                                <li class="active"><a href="/article/articleList/${now}">${now}</a></li>
                                                <li><a href="/article/articleList/${now+1}">${now+1}</a></li>
                                                <li><a href="/article/articleList/${now+1}">Next »</a></li>

                                            <#elseif now=size>

                                                <li><a href="/article/articleList/${now-1}">« Previous</a></li>
                                                <li><a href="/article/articleList/${now-4}">${now-4}</a></li>
                                                <li><a href="/article/articleList/${now-3}">${now-3}</a></li>
                                                <li><a href="/article/articleList/${now-2}">${now-2}</a></li>
                                                <li><a href="/article/articleList/${now-1}">${now-2}</a></li>
                                                <li class="active"><a href="/article/articleList/${now}">${now}</a></li>
                                                <li class="disabled"><a href="#">Next »</a></li>

                                            </#if>
                                        </#if>
                                    <#else>
                                        <#if now=1>
                                            <li class="disabled"><a href="#">« Previous</a></li>
                                            <li class="active"><a href="/article/articleList/${now}">${now}</a></li>
                                            <#if size gt now>
                                                <#list now+1..size as i>
                                                    <li><a href="/article/articleList/${i}">${i}</a></li>
                                                </#list>
                                            </#if>
                                            <li><a href="/article/articleList/${now+1}">Next »</a></li>
                                        <#elseif now=size>
                                            <li><a href="/article/articleList/${now-1}">« Previous</a></li>
                                            <#if now gt 1 >
                                                <#list 1..now-1 as i>
                                                    <li><a href="/article/articleList/${i}">${i}</a></li>
                                                </#list>
                                            </#if>
                                            <li class="active"><a href="/article/articleList/${now}">${now}</a></li>
                                            <li class="disabled"><a href="#">Next »</a></li>
                                        <#else>
                                            <li><a href="/article/articleList/${now-1}">« Previous</a></li>
                                            <#list 1..now-1 as i>
                                                <li><a href="/article/articleList/${i}">${i}</a></li>
                                            </#list>
                                            <li class="active"><a href="/article/articleList/${now}">${now}</a></li>
                                            <#list now+1..size as i>
                                                <li><a href="/article/articleList/${i}">${i}</a></li>
                                            </#list>
                                            <li><a href="/article/articleList/${now+1}">Next »</a></li>
                                        </#if>
                                    </#if>
<#--                                    <li class="disabled"><a href="#">« Previous</a></li>-->
<#--                                    <li><a href="#">1</a></li>-->
<#--                                    <li><a href="#">2</a></li>-->
<#--                                    <li class="active"><a href="#">3</a></li>-->
<#--                                    <li><a href="#">4</a></li>-->
<#--                                    <li><a href="#">5</a></li>-->
<#--                                    <li><a href="#">Next »</a></li>-->
                                </ul>
                            </div>
                            <!-- /.site-comtent -->
                        </div>
                        <!-- /.col-md-8 -->
                        <#include "/include/rightSiderBar.ftl">
                        <!-- /.col-md-4 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /#main -->
            <#include "/include/footer.ftl">
            <!-- /#site-info -->
        </div>
        <!-- /#page -->
        <div class="skin-chooser-wrap visible-lg-block">
            <span class="skin-chooser-toggle"><i class="fa fa-cog"></i></span>
            <section class="section">
                <h4>Style Switcher</h4>
            </section>
            <section class="section">
                <h6>Layout Options</h6>
                <p>Which layout option you want to use?</p>
                <p><a id="boxed" class="btn adv-default squre btn-xs" href="#" role="button">Boxed</a><em>&nbsp; or &nbsp;</em><a id="wide" class="btn adv-primary squre btn-xs" href="#" role="button">Wide</a></p>
            </section>
            <section class="section">
                <h6>Color Schemes</h6>
                <p>Which theme color you want to use? Here are some predefined colors.</p>
                <ul class="list-inline">
                    <li id="color-skin-1" class="color-skin active"></li>
                    <li id="color-skin-2" class="color-skin"></li>
                    <li id="color-skin-3" class="color-skin"></li>
                    <li id="color-skin-4" class="color-skin"></li>
                    <li id="color-skin-5" class="color-skin"></li>
                </ul>
            </section>
            <section class="section">
                <h6>Patterns</h6>
                <p>You can choose between four patterns.</p>
                <ul class="list-inline">
                    <li id="color-pattern-1" class="color-pattern active"></li>
                    <li id="color-pattern-2" class="color-pattern"></li>
                    <li id="color-pattern-3" class="color-pattern"></li>
                    <li id="color-pattern-4" class="color-pattern"></li>
                    <li id="color-pattern-5" class="color-pattern"></li>
                </ul>
            </section>
        </div>
        <!-- Bootstrap JS & Others JavaScript Plugins -->
        <!-- Placed At The End Of The Document So Page Loads Faster -->
        <script src="/js/jquery-2.1.4.min.js"></script>
        <script src="/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
        <script src="/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script src="/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <script src="/plugins/prettyPhoto/js/jquery.prettyPhoto.js"></script>
        <script src="/js/jquery.carouFredSel-6.2.1-packed.js"></script>
        <script src="/js/jflickrfeed.min.js"></script>
        <script src="/js/easing.js"></script>
        <script src="/js/jquery.ui.totop.min.js"></script>
        <script src="/js/isotope.pkgd.min.js"></script>
        <script src="/js/jquery.fitvids.js"></script>
        <!-- Custom Script For This Template -->
        <script src="/js/script.js"></script>
    </body>
</html>