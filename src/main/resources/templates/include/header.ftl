<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/ico/favicon.png">
    <title>Home</title>
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
<header id="masthead" class="site-header" role="banner">
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img alt="Brand" src="/img/logo-dark.png">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <span class="search-toggle visible-lg-block"><i class="fa fa-search"></i></span>
                <ul class="nav navbar-nav navbar-right">
                    <#if status = 1>
                        <li class="active"><a href="/home">Home</a></li>
                    <#else>
                        <li><a href="/home">Home</a></li>
                    </#if>

                    <#if status = 2>
                        <li class="active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">博客 <i class="fa fa-angle-double-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/article/articleList/1">Blog: All</a></li>
                                <#list articles as article>
                                    <#if article_index = 3>
                                        <#break>
                                    </#if>
                                    <li><a href="/article/articleDetail/${article.articleId}">${article.title}</a></li>
                                </#list>
                            </ul>
                        </li>
                    <#else>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">博客 <i class="fa fa-angle-double-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/article/articleList/1">Blog: All</a></li>
                                <#list articles as article>
                                    <#if article_index = 3>
                                        <#break>
                                    </#if>
                                    <li><a href="/article/articleDetail/${article.articleId}">${article.title}</a></li>
                                </#list>
                            </ul>
                        </li>
                    </#if>
                    <#if status = 3>
                        <li class="active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">联系我 <i class="fa fa-angle-double-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/aboutMe">About me</a></li>
                                <li><a href="contact2.html">Contact: Alternative</a></li>
                            </ul>
                        </li>
                    <#else>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">联系我 <i class="fa fa-angle-double-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/aboutMe">About me</a></li>
                                <li><a href="contact2.html">Contact: Alternative</a></li>
                            </ul>
                        </li>
                    </#if>


                </ul>
                <!-- /.nav -->
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- /.navbar -->
</header>
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