<p>いずれも半角英数。数の指定方法などの詳細は基本知識で説明しています。</p>

<p><strong>通常キー</strong></p>

<p>使用方法は「通常キー:任意の値」の形。</p>
<p>例えば、『score:5..』で「いいね」5以上の投稿が表示される。</p>

<table>
    <tbody>
        <tr>
            <td>id:</td>
            <td>投稿番号を指定</td>
        </tr>
        <tr>
            <td>tag:</td>
            <td>タグを指定（ワイルドカード可）</td>
        </tr>
        <tr>
            <td>score:</td>
            <td>いいねの数を指定</td>
        </tr>
        <tr>
            <td>source:</td>
            <td>ソースURLを指定（ワイルドカード可）</td>
        </tr>
        <tr>
            <td>comment-count:</td>
            <td>コメントの数を指定</td>
        </tr>
        <tr>
            <td>fav-count:</td>
            <td>お気に入りの数を指定</td>
        </tr>
        <tr>
            <td>type:</td>
            <td>投稿タイプを指定（imageまたはgif）</td>
        </tr>
        <tr>
            <td>image-width:</td>
            <td>画像の幅を指定</td>
        </tr>
        <tr>
            <td>image-height:</td>
            <td>画像の高さを指定</td>
        </tr>
        <tr>
            <td>creation-date:</td>
            <td>指定された日付の投稿</td>
        </tr>
        <tr>
            <td>comment-date:</td>
            <td>指定された日付のコメント</td>
        </tr>
    </tbody>
</table>

<p><strong>並べ替えキー</strong></p>

<p>使い方は簡単、コピペするだけ。</p>
<p>並べ替えに使えます。</p>

<table>
    <tbody>
        <tr>
            <td>sort:score</td>
            <td>いいねが多い順</td>
        </tr>
        <tr>
            <td>sort:fav-count</td>
            <td>お気に入りが多い順</td>
        </tr>
        <tr>
            <td>sort:comment-count</td>
            <td>コメントが多い順</td>
        </tr>
    </tbody>
</table>

<p><strong>スペシャルキー</strong></p>

<p>使い方は簡単、コピペするだけ。</p>

<table>
    <tbody>
        <tr>
            <td>special:liked</td>
            <td>いいねが多い順（現在ログインしているユーザーでフィルター）</td>
        </tr>
        <tr>
            <td>special:disliked</td>
            <td>反対票が多い順（現在ログインしているユーザーでフィルター）</td>
        </tr>
        <tr>
            <td>special:fav</td>
            <td>ユーザーがお気に入りに追加した投稿（現在ログインしているユーザーでフィルター）</td>
        </tr>
        <tr>
            <td>special:tumbleweed</td>
            <td>いいね、コメント、お気に入りが全て0の投稿</td>
        </tr>
    </tbody>
</table>
