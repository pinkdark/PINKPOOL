"use strict";

const events = require("../events.js");
const api = require("../api.js");

class TopNavigationItem {
    constructor(accessKey, title, url, available, imageUrl) {
        this.accessKey = accessKey;
        this.title = title;
        this.url = url;
        this.available = available === undefined ? true : available;
        this.imageUrl = imageUrl === undefined ? null : imageUrl;
        this.key = null;
    }
}

class TopNavigation extends events.EventTarget {
    constructor() {
        super();
        this.activeItem = null;
        this._keyToItem = new Map();
        this._items = [];
    }

    getAll() {
        return this._items;
    }

    get(key) {
        if (!this._keyToItem.has(key)) {
            throw `An item with key ${key} does not exist.`;
        }
        return this._keyToItem.get(key);
    }

    add(key, item) {
        item.key = key;
        if (this._keyToItem.has(key)) {
            throw `An item with key ${key} was already added.`;
        }
        this._keyToItem.set(key, item);
        this._items.push(item);
    }

    activate(key) {
        this.activeItem = null;
        this.dispatchEvent(
            new CustomEvent("activate", {
                detail: {
                    key: key,
                    item: key ? this.get(key) : null,
                },
            })
        );
    }

    setTitle(title) {
        api.fetchConfig().then(() => {
            document.oldTitle = null;
            document.title = api.getName() + (title ? " – " + title : "");
        });
    }

    showAll() {
        for (let item of this._items) {
            item.available = true;
        }
    }

    show(key) {
        this.get(key).available = true;
    }

    hide(key) {
        this.get(key).available = false;
    }
}

function _makeTopNavigation() {
    const ret = new TopNavigation();
    ret.add("home", new TopNavigationItem("", "<i class='fa fa-home'></i> ホーム", ""));
    ret.add("posts", new TopNavigationItem("", "<i class='fa fa-image'></i> 投稿一覧", "posts"));
    ret.add("upload", new TopNavigationItem("", "<i class='fa fa-upload'></i> アップロード", "upload"));
    ret.add("comments", new TopNavigationItem("", "<i class='fa fa-comment'></i> コメント", "comments"));
    ret.add("tags", new TopNavigationItem("", "", ""));
    ret.add("pools", new TopNavigationItem("", "", ""));
    ret.add("users", new TopNavigationItem("", "", ""));
    ret.add("account", new TopNavigationItem("", "<i class='fa fa-user'></i> アカウント", "user/{me}"));
    ret.add("register", new TopNavigationItem("", "<i class='fa fa-power-off'></i> 登録", "register"));
    ret.add("login", new TopNavigationItem("", "<i class='fa fa-sign-in'></i> ログイン", "login"));
    ret.add("logout", new TopNavigationItem("", "<i class='fa fa-sign-out'></i> ログアウト", "logout"));
    ret.add("help", new TopNavigationItem("", "<i class='fa fa-question-circle'></i> 使い方", "help"));
    ret.add(
        "settings",
        new TopNavigationItem(null, "<i class='fa fa-cog'></i> 閲覧設定", "settings")
    );
    return ret;
}

module.exports = _makeTopNavigation();
