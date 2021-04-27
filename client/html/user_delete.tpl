<div id='user-delete'>
    <form>
        <ul class='input'>
            <li>
                <%= ctx.makeCheckbox({
                    name: 'confirm-deletion',
                    text: 'このアカウントを削除することを確認しました。',
                    required: true,
                }) %>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='アカウントを削除する'/>
        </div>
    </form>
</div>
