<div class='content-wrapper' id='login'>
    <h1>ログイン</h1>
    <form>
        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({
                    text: 'ユーザー名',
                    name: 'name',
                    required: true,
                    pattern: ctx.userNamePattern,
                }) %>
            </li>
            <li>
                <%= ctx.makePasswordInput({
                    text: 'パスワード',
                    name: 'password',
                    required: true,
                    pattern: ctx.passwordPattern,
                }) %>
            </li>
            <li>
                <%= ctx.makeCheckbox({
                    text: 'ログイン状態を保存する',
                    name: 'remember-user',
                }) %>
            </li>
        </ul>

        <div class='messages'></div>

        <div class='buttons'>
            <input type='submit' value='ログイン'/>
            <a class='append' href='<%- ctx.formatClientLink('password-reset') %>'>パスワードを忘れた？</a>
        </div>
    </form>
</div>
