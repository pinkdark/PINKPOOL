<div class='post-container'></div>
<% if (ctx.featuredPost) { %>
    <aside>
        注目の投稿（不定期）：&nbsp;<%= ctx.makePostLink(ctx.featuredPost.id, true) %>,<wbr>
        投稿日：&nbsp;<%= ctx.makeRelativeTime(ctx.featuredPost.creationTime) %>,<wbr>
        投稿者：&nbsp;<%= ctx.makeUserLink(ctx.featuredPost.user) %>
    </aside>
<% } %>
