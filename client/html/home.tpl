<div class='content-wrapper transparent' id='home'>
    <div class='messages'></div>
    <header>
        <h1><%- ctx.name %></h1>
    </header>
    <% if (ctx.canListPosts) { %>
        <form class='horizontal'>
            <%= ctx.makeTextInput({name: 'search-text', placeholder: 'タグを入力'}) %>
            <input type='submit' value='検索'/>
            <span class=sep>または</span>
            <a href='<%- ctx.formatClientLink('posts') %>'>投稿一覧を見る</a>
        </form>
    <% } %>
    <div class='post-info-container'></div>
    <footer class='footer-container'></footer>
</div>
