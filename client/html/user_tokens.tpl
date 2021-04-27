<div id='user-tokens'>
    <div class='messages'></div>
    <% if (ctx.tokens.length > 0) { %>
    <div class='token-flex-container'>
        <% _.each(ctx.tokens, function(token, index) { %>
        <div class='token-flex-row'>
            <div class='token-flex-column token-flex-labels'>
                <div class='token-flex-row'>トークン：</div>
                <div class='token-flex-row'>詳細メモ：</div>
                <div class='token-flex-row'>作成日：</div>
                <div class='token-flex-row'>有効期限：</div>
                <div class='token-flex-row no-wrap'>最後に使用した日：</div>
            </div>
            <div class='token-flex-column full-width'>
                <div class='token-flex-row'><%= token.token %></div>
                <div class='token-flex-row'>
                    <% if (token.note !== null) { %>
                        <%= token.note %>
                    <% } else { %>
                        No note
                    <% } %>
                    <a class='token-change-note' data-token-id='<%= index %>' href='#'>（変更）</a>
                </div>
                <div class='token-flex-row'><%= ctx.makeRelativeTime(token.creationTime) %></div>
                <div class='token-flex-row'>
                    <% if (token.expirationTime) { %>
                        <%= ctx.makeRelativeTime(token.expirationTime) %>
                    <% } else { %>
                        No expiration
                    <% } %>
                </div>
                <div class='token-flex-row'><%= ctx.makeRelativeTime(token.lastUsageTime) %></div>
            </div>
        </div>
        <div class='token-flex-row'>
            <div class='token-flex-column full-width'>
                <div class='token-flex-row'>
                    <form class='token' data-token-id='<%= index %>'>
                        <% if (token.isCurrentAuthToken) { %>
                            <input type='submit' value='削除してログアウトする'
                                title='This token is used to authenticate this client, deleting it will force a logout.'/>
                        <% } else { %>
                            <input type='submit' value='削除'/>
                        <% } %>
                    </form>
                </div>
            </div>
        </div>
        <hr/>
        <% }); %>
    </div>
    <% } else { %>
        <h2>No Registered Tokens</h2>
    <% } %>
    <form id='create-token-form'>
        <ul class='input'>
            <li class='note'>
                <%= ctx.makeTextInput({
                    text: '詳細メモを設定',
                    id: 'note',
                }) %>
            </li>
            <li class='expirationTime'>
                <%= ctx.makeDateInput({
                    text: '有効期限を設定',
                    id: 'expirationTime',
                }) %>
            </li>
        </ul>
        <div class='buttons'>
            <input type='submit' value='ログイントークンを作成する'/>
        </div>
    </form>
</div>
