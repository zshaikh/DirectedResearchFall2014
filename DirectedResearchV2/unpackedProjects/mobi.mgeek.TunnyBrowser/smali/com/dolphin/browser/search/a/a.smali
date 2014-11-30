.class public Lcom/dolphin/browser/search/a/a;
.super Ljava/lang/Object;
.source "BuiltinSearchEngines.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 13
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v2, "layout"

    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    const-string v2, "order"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v2, "last_modified"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v2, "title"

    const-string v3, "General Search INT"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "searches"

    invoke-static {}, Lcom/dolphin/browser/search/a/a;->b()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const-string v3, "layout"

    const/16 v4, 0x66

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v3, "order"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    const-string v3, "last_modified"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v3, "title"

    const-string v4, "Vertical Search INT"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v3, "searches"

    invoke-static {}, Lcom/dolphin/browser/search/a/a;->c()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v1, "icon"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v1, "pressed_icon"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v1, "order"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v1, "selected"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 185
    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "unique_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "suggest"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "icon"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "color"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v1, "default"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 107
    const-string v1, "order"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    return-object v0
.end method

.method private static b()Lorg/json/JSONArray;
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v13, 0x0

    .line 40
    const/16 v0, 0xbe

    const-string v1, "google"

    const-string v2, "Google"

    const-string v3, "http://www.google.com/search?hl={language}&gl={country}&ie={inputEncoding}&source=android-browser&q={searchTerms}"

    const-string v4, "http://www.google.com/complete/search?hl={language}&gl={country}&client=android&q={searchTerms}"

    const-string v5, "http://opsen.dolphin-browser.com/resources/icon/engine_google.png"

    const-string v6, "#4283f0"

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lorg/json/JSONObject;

    move-result-object v9

    .line 49
    const/16 v0, 0xbf

    const-string v1, "bing"

    const-string v2, "Bing"

    const-string v3, "http://www.bing.com/search?a=results&q={searchTerms}"

    const-string v4, "http://api.bing.com/osjson.aspx?query={searchTerms}&language={language-country}"

    const-string v5, "http://opsen.dolphin-browser.com/resources/icon/engine_bing.png"

    const-string v6, "#ffa511"

    const/4 v8, 0x2

    move v7, v13

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lorg/json/JSONObject;

    move-result-object v10

    .line 58
    const/16 v0, 0xc0

    const-string v1, "yahoo"

    const-string v2, "Yahoo!"

    const-string v3, "http://search.yahoo.com/search?ei={inputEncoding}&fr=crmas&p={searchTerms}"

    const-string v4, "http://ff.search.yahoo.com/gossip?output=fxjson&command={searchTerms}"

    const-string v5, "http://opsen.dolphin-browser.com/resources/icon/engine_yahoo.png"

    const-string v6, "#8b2b90"

    const/4 v8, 0x3

    move v7, v13

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lorg/json/JSONObject;

    move-result-object v11

    .line 67
    const/16 v0, 0xc1

    const-string v1, "duckduckgo"

    const-string v2, "DuckDuckGo"

    const-string v3, "https://duckduckgo.com/?t=mobotap&q={searchTerms}"

    const-string v4, "http://www.google.com/complete/search?hl={language}&gl={country}&client=android&q={searchTerms}"

    const-string v5, "http://opsen.dolphin-browser.com/resources/icon/engine_duckduckgo.png"

    const-string v6, "#e23500"

    const/4 v8, 0x4

    move v7, v13

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lorg/json/JSONObject;

    move-result-object v12

    .line 76
    const/16 v0, 0xc2

    const-string v1, "yandex_default"

    const-string v2, "Yandex"

    const-string v3, "http://yandex.ru/touchsearch?text={searchTerms}&clid=1771196"

    const-string v4, "http://suggest.yandex.net/suggest?mob=1&sn=10&nav=yes&part={searchTerms}"

    const-string v5, "http://opsen.dolphin-browser.com/resources/icon/engine_yandex.png"

    const-string v6, "#a2a2a2"

    const/4 v8, 0x5

    move v7, v13

    invoke-static/range {v0 .. v8}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 86
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 87
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 92
    return-object v1
.end method

.method private static c()Lorg/json/JSONArray;
    .locals 12

    .prologue
    .line 114
    const/16 v0, 0xc9

    const-string v1, "Amazon"

    const-string v2, "http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords={searchTerms}&x=0&y=0"

    const-string v3, "http://opsen.dolphin-browser.com/resources/icon/search_with_amazon_normal.png"

    const-string v4, "http://opsen.dolphin-browser.com/resources/icon/search_with_amazon_pressed.png"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;

    move-result-object v7

    .line 122
    const/16 v0, 0xc4

    const-string v1, "YouTube"

    const-string v2, "http://www.youtube.com/results?search_query={searchTerms}"

    const-string v3, "http://opsen.dolphin-browser.com/resources/icon/search_with_youtube_normal.png"

    const-string v4, "http://opsen.dolphin-browser.com/resources/icon/search_with_youtube_pressed.png"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;

    move-result-object v8

    .line 130
    const/16 v0, 0xc5

    const-string v1, "Wikipedia"

    const-string v2, "http://en.m.wikipedia.org/w/index.php?title=Special:Search&search={searchTerms}"

    const-string v3, "http://opsen.dolphin-browser.com/resources/icon/search_with_wikipedia_normal.png"

    const-string v4, "http://opsen.dolphin-browser.com/resources/icon/search_with_wikipedia_pressed.png"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;

    move-result-object v9

    .line 138
    const/16 v0, 0xc6

    const-string v1, "Ebay"

    const-string v2, "http://shop.ebay.com/?_nkw={searchTerms}&_sacat=See-All-Categories"

    const-string v3, "http://opsen.dolphin-browser.com/resources/icon/search_with_ebay_normal.png"

    const-string v4, "http://opsen.dolphin-browser.com/resources/icon/search_with_ebay_pressed.png"

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;

    move-result-object v10

    .line 146
    const/16 v0, 0xc7

    const-string v1, "Twitter"

    const-string v2, "https://mobile.twitter.com/search/?q={searchTerms}"

    const-string v3, "http://opsen.dolphin-browser.com/resources/icon/search_with_twitter_normal.png"

    const-string v4, "http://opsen.dolphin-browser.com/resources/icon/search_with_twitter_pressed.png"

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;

    move-result-object v11

    .line 154
    const/16 v0, 0xd3

    const-string v1, "Facebook"

    const-string v2, "http://www.facebook.com/#!/search/?q={searchTerms}"

    const-string v3, "http://opsen.dolphin-browser.com/resources/icon/search_with_facebook_normal.png"

    const-string v4, "http://opsen.dolphin-browser.com/resources/icon/search_with_facebook_pressed.png"

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/search/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 163
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 166
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 168
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    return-object v1
.end method
