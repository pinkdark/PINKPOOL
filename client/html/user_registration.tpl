<div class='content-wrapper' id='user-registration'>
    <h1>登録</h1>
    <form autocomplete='off'>
        <input class='anticomplete' type='text' name='fakeuser'/>
        <input class='anticomplete' type='password' name='fakepass'/>

        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({
                    text: 'ユーザー名',
                    name: 'name',
                    placeholder: '半角英数',
                    required: true,
                    pattern: ctx.userNamePattern,
                }) %>
            </li>
            <li>
                <%= ctx.makePasswordInput({
                    text: 'パスワード',
                    name: 'password',
                    placeholder: '5文字以上',
                    required: true,
                    pattern: ctx.passwordPattern,
                }) %>
            </li>
            <li>
                <%= ctx.makeEmailInput({
                    text: 'メールアドレス（任意）',
                    name: 'email',
                    placeholder: '未入力でも登録可',
                }) %>
                <p class='hint'>
                    メールアドレスは未入力でも登録可能ですが、パスワードを紛失した際に困ります。
                </p>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='アカウントを作成'/>
        </div>
    </form>

    <div class='info'>
        <p>登録ユーザーは次のことができます。</p>
        <ul>
            <li><i class='fa fa-upload'></i> 投稿をアップロード（匿名モードあり）</li>
            <li><i class='fa fa-tag'></i> タグの追加や削除</li>
            <li><i class='fa fa-heart'></i> 投稿をお気に入りに追加</li>
            <li><i class='fa fa-commenting-o'></i> コメントを投稿する</li>
            <li><i class='fa fa-star-half-o'></i> いいねする（賛成票と反対票）</li>
            <li><i class='fa fa-user'></i> アバターを設定（初期設定はランダム）</li>
        </ul>
        <hr/>
        <p>アカウントを作成すると、<a href='<%- ctx.formatClientLink('help', 'tos') %>'>利用規約</a>に同意したことになります。</p>
    </div>
</div>
