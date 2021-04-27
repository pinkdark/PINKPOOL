<div class='content-wrapper' id='settings'>
    <form>
        <strong>閲覧設定</strong>
        <p>これらの設定はデバイスごとに保存されます。</p>
        <ul class='input'>
            <li>
                <%= ctx.makeNumericInput({
                    text: '1ページあたりの投稿数',
                    name: 'posts-per-page',
                    checked: ctx.browsingSettings.postCount,
                    value: ctx.browsingSettings.postsPerPage,
                    min: 10,
                    max: 50,
                }) %>
                <p class='hint'>デフォルトは14です。10～50の値に設定できます。</p>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: 'ダークテーマを使用する',
                    name: 'dark-theme',
                    checked: ctx.browsingSettings.darkTheme,
                }) %>
                <p class='hint'>この設定を変更した後は、ページを再読込してください。</p>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='設定を保存する'/>
        </div>
    </form>
</div>
