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
<footer id="colophon" class="site-footer" role="contentinfo">
    <div id="supplementary">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="widget widget-about">
                        <img class="brand" alt="Brand" src="/img/logo-white.png" width="145">
                        <p>Lorem ipsum dolor sit amet, no consequat ullamcorper nec, te commune constituto intellegebat eam. Soleat populo id nec. Est in altera vocibus, et vim iudico adolescens, mel no discere mediocritatem.</p>
                    </aside>
                    <!-- /.widget-about -->
                    <aside class="widget widget-social">
                        <h5 class="widget-title">Stay Connected</h5>
                        <ul class="social-links">
                            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a class="pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a class="rss" href="#"><i class="fa fa-rss"></i></a></li>
                        </ul>
                    </aside>
                    <!-- /.widget-social -->
                </div>
                <!-- /.col-md-3 -->
                <div class="col-md-3">
                    <aside class="widget widget-posts">
                        <div class="subpage-title">
                            <h5>Recent Posts</h5>
                        </div>
                        <ul class="recent-posts">
                            <#list recentArticles as article>
                                <#if article_index = 4>
                                    <#break>
                                </#if>
                                <li>RECENT Articles

                                    <img src="/img/recent-posts/img1.jpg" alt="Post Image">
                                    <h5>
                                        <a href="post-1.html">${article.brief}</a>
                                        <small><i class="fa fa-clock-o"></i> ${article.updateTime?string('yyyy-MM-dd')}</small>
                                    </h5>
                                </li>
                            </#list>

                        </ul>
                    </aside>
                    <!-- /.widget-posts -->
                </div>
                <!-- /.col-md-3 -->
                <div class="col-md-3">
                    <aside class="widget widget-tagcloud">
                        <div class="subpage-title">
                            <h5>Tags</h5>
                        </div>
                        <ul class="tag-links">
                            <#list tags as tag>
                                <li><a href="#">${tag.tagName}</a></li>
                            </#list>
                        </ul>
                    </aside>
                    <!-- /.widget-tagcloud -->
                </div>
                <!-- /.col-md-3 -->
                <div class="col-md-3">
                    <aside class="widget widget-flickr">
                        <div class="subpage-title">
                            <h5>Flickr Photos</h5>
                        </div>
<#--                        <ul class="flickr-photos-list"></ul>-->
                    </aside>
                    <!-- /.widget-flickr -->
                </div>
                <!-- /.col-md-3 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /#supplementary -->
    <div id="site-info">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="footer-info-wrapper">
                        <span>Copyright &copy; 2020.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></span>
                    </div>
                </div>
                <!-- /.footer-info-wrapper -->
                <div class="col-xs-12 col-sm-6">
                    <div class="footer-links-wrapper">
                        <ul class="list-inline">
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms Of Service</a></li>
                            <li><a href="#">Disclaimer</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.footer-links-wrapper -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.site-footer -->
</footer>
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
