<div class="col-md-4">
    <div id="secondaey" class="widget-area">
        <aside class="widget widget-search">
            <form class="form-search">
                <input type="search" class="form-control" placeholder="Search ...">
            </form>
        </aside>
        <!-- /.widget-search -->
        <aside class="widget widget-categories">
            <div class="subpage-title">
                <h5>Blog Categories</h5>
            </div>
            <div class="list-group">
                <#list categories as category>
                    <#if category_index = 5>
                        <#break >
                    </#if>
                    <a class="list-group-item" href="#"><i class="fa fa-angle-right fa-fw"></i>&nbsp;${category.categoryName}</a>
                </#list>

                <a class="list-group-item" href="#"><i class="fa fa-angle-right fa-fw"></i>&nbsp; More...</a>
            </div>

        </aside>
        <!-- /.widget-categories -->
        <aside class="widget widget-text">
            <div class="subpage-title">
                <h5>Text Widget</h5>
            </div>
            <p>Eam virtute petentium te. Sit ubique assentior similique et, cum tibique comprehensam at. Nam cu diam idque virtute, pro nihil bonorum percipitur et, illum simul eloquentiam per ea. Alii elit qui ad, prima singulis similique an per. Iudico sanctus eam no. Qui corpora accusamus no, eum id eripuit instructior.</p>
        </aside>
        <!-- /.widget-text -->
        <div class="widget widget-posts">
            <div class="subpage-title">
                <h5>Recent Posts</h5>
            </div>
            <ul class="recent-posts">
                <#list recentArticles as article>
                    <#if article_index = 5>
                        <#break >
                    </#if>
                    <li>
                        <img src="/img/recent-posts/img2.jpg" alt="Post Image">
                        <h5>
                            <a href="post-1.html">${article.brief}</a>
                            <small><i class="fa fa-clock-o"></i> ${article.updateTime?string('yyyy-MM-dd')}</small>
                        </h5>
                    </li>
                </#list>


            </ul>
        </div>
        <!-- /.widget-posts -->
        <div class="widget widget-tagcloud">
            <div class="subpage-title">
                <h5>Tags</h5>
            </div>
            <ul class="tag-links">
                <#list tags as tag>
                    <li><a href="#">${tag.tagName}</a></li>
                </#list>


            </ul>
        </div>
        <!-- /.widget-tagcloud -->

        <!-- /.widget-flickr -->
    </div>
    <!-- /.widget-area -->
</div>