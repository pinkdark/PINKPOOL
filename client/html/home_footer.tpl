<ul>
    <li><%- ctx.postCount %> 投稿</li><span class='sep'>
    </span><li><%= ctx.makeFileSize(ctx.diskUsage) %></li><span class='sep'>
    </span><li>ビルド： <a class='version' href='https://github.com/pinkdark/pinkpool' target='_blank'><%- ctx.version %></a> 最終更新： <%= ctx.makeRelativeTime(ctx.buildDate) %></li><span class='sep'>
    </span><% if (ctx.canListSnapshots) { %><li><a href='<%- ctx.formatClientLink('history') %>'>History</a></li><span class='sep'>
    </span><% } %>
</ul>
