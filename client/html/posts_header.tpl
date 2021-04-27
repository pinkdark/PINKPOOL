<div class='post-list-header'><%
    %><form class='horizontal search'><%
        %><%= ctx.makeTextInput({text: 'Search query', id: 'search-text', name: 'search-text', value: ctx.parameters.query}) %><%
        %><wbr/><%
        %><input class='mousetrap' type='submit' value='検索'/><%
        %><wbr/><%
        %><a class='mousetrap button append' href='<%- ctx.formatClientLink('help', 'search', 'posts') %>'>検索ヘルプ</a><%
    %></form><%
    %><% if (ctx.canBulkEditTags) { %><%
        %><form class='horizontal bulk-edit bulk-edit-tags'><%
            %><span class='append hint'>編集するタグ:</span><%
            %><a href class='mousetrap button append open'>タグ編集</a><%
            %><wbr/><%
            %><%= ctx.makeTextInput({name: 'tag', value: ctx.parameters.tag}) %><%
            %><input class='mousetrap start' type='submit' value='タグ編集開始'/><%
            %><a href class='mousetrap button append close'>タグ編集終了</a><%
        %></form><%
    %><% } %><%
%></div>
