<div id='user-summary'>
    <%= ctx.makeThumbnail(ctx.user.avatarUrl) %>
    <ul class='basic-info'>
        <li>登録日： <%= ctx.makeRelativeTime(ctx.user.creationTime) %></li>
        <li>最終ログイン： <%= ctx.makeRelativeTime(ctx.user.lastLoginTime) %></li>
        <li>アカウントレベル： <%- ctx.user.rankName.toLowerCase() %></li>
    </ul>

    <div>
        <nav>
            <p><strong>マイリスト</strong></p>
            <ul>
                <li><a href='<%- ctx.formatClientLink('posts', {query: 'submit:' + ctx.user.name}) %>'><%- ctx.user.uploadedPostCount %> ：投稿</a></li>
                <li><a href='<%- ctx.formatClientLink('posts', {query: 'fav:' + ctx.user.name}) %>'><%- ctx.user.favoritePostCount %> ：お気に入り</a></li>
                <li><a href='<%- ctx.formatClientLink('posts', {query: 'comment:' + ctx.user.name}) %>'><%- ctx.user.commentCount %> ：コメント</a></li>
            </ul>
        </nav>

        <% if (ctx.isLoggedIn) { %>
            <nav>
                <p><strong>いいね一覧</strong></p>
                <ul>
                    <li><a href='<%- ctx.formatClientLink('posts', {query: 'special:liked'}) %>'><%- ctx.user.likedPostCount %> ：いいねした投稿</a></li>
                    <li><a href='<%- ctx.formatClientLink('posts', {query: 'special:disliked'}) %>'><%- ctx.user.dislikedPostCount %> ：嫌いな投稿</a></li>
                </ul>
            </nav>
        <% } %>
    </div>
</div>
