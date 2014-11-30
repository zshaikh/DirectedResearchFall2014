.class public Lmobi/mgeek/TunnyBrowser/ib;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "WebViewCallbackHandler.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private e:Landroid/os/Message;

.field private f:Landroid/os/Message;

.field private g:Lmobi/mgeek/TunnyBrowser/fh;

.field private h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

.field private i:I

.field private final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/dolphin/browser/core/IWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/dolphin/browser/util/bu;->b:Ljava/lang/String;

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->b:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/dolphin/browser/util/bu;->c:Ljava/lang/String;

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->c:Ljava/lang/String;

    .line 118
    const-string v0, "javascript:(function (){var videos = document.getElementsByTagName(\'video\') || [];for (var i = 0; i < videos.length; i++) {    var v = videos[i];    v.removeAttribute(\'type\');    if (v.width == 0) { v.width = 320;};    if (v.width == 0) { v.height = 200;};    var sources = v.getElementsByTagName(\'source\') || [];    for (var j = 0; j < sources.length; j++) {        sources[j].removeAttribute(\'type\');    }    v.addEventListener(\'click\', function(videoNode) {        return function() {            videoNode.play();        };    }(v), false);    if (v.src == \'\') {v.play();};}})();"

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->a:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/dolphin/browser/provider/FileContentProvider;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->k:Ljava/lang/String;

    .line 285
    const-string v0, "[?|&]fr=(.*?)(#|&|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->l:Ljava/util/regex/Pattern;

    .line 286
    const-string v0, "^(uh3|ush|fp|yfp)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->m:Ljava/util/regex/Pattern;

    .line 288
    const-string v0, "[?|&]t=(.*?)(#|&|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->n:Ljava/util/regex/Pattern;

    .line 290
    const-string v0, "[?|&]clid=(\\d*?)(#|&|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/ib;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    .line 146
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 147
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->d()Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 148
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->a()V

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    .line 150
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1192
    const/4 v0, 0x0

    .line 1193
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1194
    if-eqz v1, :cond_1

    .line 1195
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1196
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1197
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v2

    .line 1198
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/ITab;)Ljava/lang/Integer;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1204
    :cond_1
    return v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ib;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->e:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ib;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ib;->f:Landroid/os/Message;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;

    invoke-direct {v1}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/javascript/h;)V

    .line 171
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/q/b/ag;->h()Lcom/dolphin/browser/javascript/EvernotePageClipHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/javascript/h;)V

    .line 172
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->f()Lcom/dolphin/browser/webkit/management/EngineStrategyManager$Html5TagCheckHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/javascript/h;)V

    .line 174
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 1696
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->k()V

    .line 1698
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->l()V

    .line 1700
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 947
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 951
    :cond_0
    if-eqz p1, :cond_1

    .line 952
    invoke-interface {p1, v4}, Lcom/dolphin/browser/core/ITab;->setIsOpeningInNewTab(Z)V

    .line 954
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v1, v0}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 955
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v2

    .line 956
    invoke-interface {p3}, Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;->getInitializedTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 957
    if-nez v0, :cond_2

    .line 958
    invoke-virtual {v2}, Lcom/dolphin/browser/core/TabManager;->l()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 959
    invoke-interface {p3, v0}, Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;->setTab(Lcom/dolphin/browser/core/ITab;)V

    .line 961
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setCloseOnExit(Z)V

    .line 962
    if-eq v0, p1, :cond_3

    .line 963
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B()Z

    move-result v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 973
    :goto_0
    invoke-interface {p3}, Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;->sendToTarget()V

    .line 974
    return-void

    .line 966
    :cond_3
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v3

    if-gez v3, :cond_4

    .line 967
    invoke-virtual {v2, v1, v0, v4}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 971
    :cond_4
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 2

    .prologue
    .line 1502
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1503
    if-eqz v0, :cond_0

    .line 1504
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1505
    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1507
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1143
    if-nez p1, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/dt;->a()Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "recordMostVisitUrlIfNeeded begin"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1161
    const-string v2, "WebViewCallbackHandler"

    const-string v3, "url: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1162
    const-string v2, "WebViewCallbackHandler"

    const-string v3, "originalUrl: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1163
    const-string v2, "WebViewCallbackHandler"

    const-string v3, "title: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1165
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v2

    .line 1168
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/mostvisit/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1173
    const-string v4, "WebViewCallbackHandler"

    const-string v5, "hostUrl: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1175
    invoke-direct {p0, p1, v1, v0}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1177
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;)Z

    move-result v4

    .line 1178
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1179
    if-nez v4, :cond_3

    .line 1180
    if-eqz v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    .line 1181
    :cond_2
    const/4 p2, 0x0

    .line 1185
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v0, v3}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1187
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "recordMostVisitUrlIfNeeded finished"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1643
    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v0

    .line 1644
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->e(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1646
    packed-switch p3, :pswitch_data_0

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1648
    :pswitch_0
    invoke-static {p2}, Lcom/dolphin/browser/util/URIUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    const-string v2, "dolphin://jsreq/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    if-nez v1, :cond_1

    .line 1651
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/if;

    invoke-direct {v2, p0, p1, v0, p3}, Lmobi/mgeek/TunnyBrowser/if;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/titlebar/h;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1663
    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 1669
    :pswitch_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1671
    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1672
    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 1678
    :pswitch_2
    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1679
    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 1683
    :pswitch_3
    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1684
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->l()V

    goto :goto_0

    .line 1646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 301
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "Tracking search engine: %s."

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/e/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {p1}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "blank"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    invoke-static {p1}, Lcom/dolphin/browser/search/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v2, "other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v1

    const-string v2, "webpage"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 317
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    const-string v1, "blank"

    .line 320
    const-string v1, "blank"

    .line 321
    const-string v2, ""

    .line 323
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 324
    const-string v3, "google"

    .line 377
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 378
    const-string v1, "blank"

    .line 381
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 383
    const-string v4, "blank"

    .line 386
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 388
    const-string v5, "blank"

    .line 390
    :cond_6
    const-string v6, "search"

    const-string v7, "traffic_local"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "||"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v6, v7, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 393
    const-string v4, "search"

    const-string v5, "traffic_for_BD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "||"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v4, v5, v6, v7}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 396
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/search/e/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 397
    const-string v5, "other"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 399
    :try_start_0
    invoke-static {v0}, Lcom/dolphin/browser/v/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v5, "search_way"

    invoke-static {v5, v4, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_7
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 406
    const-string v0, "search_way"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "||"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "||"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_3
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "other"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_8
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 326
    const-string v3, "yahoo"

    .line 327
    sget-object v5, Lmobi/mgeek/TunnyBrowser/ib;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 328
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 329
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 335
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 336
    sget-object v6, Lmobi/mgeek/TunnyBrowser/ib;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 337
    const-string v1, "others"

    .line 340
    :cond_a
    const-string v5, ".yahoo."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    const-string v5, "mail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 342
    const-string v2, "mail.yahoo.com"

    goto/16 :goto_1

    .line 343
    :cond_b
    const-string v5, "search"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 344
    const-string v2, "search.yahoo.com"

    goto/16 :goto_1

    .line 345
    :cond_c
    const-string v5, "answer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 346
    const-string v2, "answer.yahoo.com"

    goto/16 :goto_1

    .line 347
    :cond_d
    const-string v5, "news"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 348
    const-string v2, "news.yahoo.com"

    goto/16 :goto_1

    .line 349
    :cond_e
    const-string v5, "sports"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    const-string v2, "sports.yahoo.com"

    goto/16 :goto_1

    .line 353
    :cond_f
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 354
    const-string v3, "bing"

    goto/16 :goto_1

    .line 355
    :cond_10
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 356
    const-string v3, "duckduckgo"

    .line 357
    sget-object v4, Lmobi/mgeek/TunnyBrowser/ib;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 358
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 359
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 361
    :cond_11
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 362
    const-string v3, "yandex"

    .line 363
    sget-object v4, Lmobi/mgeek/TunnyBrowser/ib;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 364
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 367
    :cond_12
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 368
    const-string v3, "baidu"

    goto/16 :goto_1

    .line 369
    :cond_13
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 370
    const-string v3, "ebay"

    goto/16 :goto_1

    .line 371
    :cond_14
    invoke-static {v4, v3, v0}, Lcom/dolphin/browser/search/e/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    const-string v3, "ask"

    goto/16 :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 409
    :cond_15
    const-string v0, "search_way"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/ib;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ib;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->f:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ib;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ib;->e:Landroid/os/Message;

    return-object p1
.end method

.method public static b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 178
    instance-of v0, p0, Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Lcom/dolphin/browser/core/ITab;

    .line 185
    :goto_0
    return-object p0

    .line 181
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/TabManager;->getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object p0

    goto :goto_0

    .line 185
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 2

    .prologue
    .line 1704
    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v0

    .line 1705
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->e(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1706
    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/core/ITab;I)V

    .line 1707
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    const-string v1, "www.flipkart.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "blank"

    .line 424
    const-string v1, "www\\.flipkart\\.com.*cmpid=([^\\&]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_2
    const-string v1, "search"

    const-string v2, "traffic_for_BD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flipcart||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/ib;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/ib;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 111
    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/ib;->e(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/TabManager;->getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lcom/dolphin/browser/core/IWebView;)V
    .locals 4

    .prologue
    .line 480
    invoke-static {}, Lcom/dolphin/browser/share/box/p;->a()Lcom/dolphin/browser/share/box/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/p;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {}, Lcom/dolphin/browser/util/dt;->a()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 492
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 493
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lmobi/mgeek/TunnyBrowser/io;

    invoke-direct {v3, p0, p1, v1, v0}, Lmobi/mgeek/TunnyBrowser/io;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method c(Lcom/dolphin/browser/core/IWebView;)Lmobi/mgeek/TunnyBrowser/fh;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->g:Lmobi/mgeek/TunnyBrowser/fh;

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/fh;->a(Landroid/content/Context;)Lmobi/mgeek/TunnyBrowser/fh;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->g:Lmobi/mgeek/TunnyBrowser/fh;

    .line 1482
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->g:Lmobi/mgeek/TunnyBrowser/fh;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/fh;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 1483
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->g:Lmobi/mgeek/TunnyBrowser/fh;

    return-object v0
.end method

.method public doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 736
    const-string v0, "WebViewCallbackHandler"

    const-string v3, "doUpdateVisitedHistory begin,url=%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 737
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    const-string v3, "about:"

    const/4 v5, 0x6

    move-object v0, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 748
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/core/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1366
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-super {p0}, Lcom/dolphin/browser/core/WebViewCallback;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1370
    :goto_0
    return-object v0

    .line 1369
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->r()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1382
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    invoke-super {p0}, Lcom/dolphin/browser/core/WebViewCallback;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 1392
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->s()Landroid/view/View;

    move-result-object v1

    .line 1389
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1390
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v0, v1

    .line 1392
    goto :goto_0
.end method

.method public getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1416
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "getVisitedHistory begin"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 1437
    :goto_0
    return-void

    .line 1421
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ie;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/ie;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ValueCallback;)V

    .line 1434
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1559
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "interceptUrl:%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1560
    invoke-direct {p0, p1, p2, v4}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 1562
    invoke-static {}, Lcom/dolphin/browser/search/g/d;->a()Lcom/dolphin/browser/search/g/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/search/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    invoke-static {}, Lcom/dolphin/browser/util/dq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1565
    invoke-static {v0}, Lcom/dolphin/browser/util/dq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    :cond_0
    return-object v0
.end method

.method public onCheckFullScreenStatus(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 1052
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1053
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 1058
    if-eqz v1, :cond_0

    .line 1059
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    goto :goto_0
.end method

.method public onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z
    .locals 7

    .prologue
    const v6, 0x1080027

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 980
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z

    move-result v0

    .line 1033
    :cond_0
    :goto_0
    return v0

    .line 983
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 986
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->isDeleting()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 990
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v3

    .line 991
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_3

    .line 992
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e064e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e064d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1001
    :cond_3
    if-eqz p3, :cond_4

    .line 1002
    invoke-direct {p0, v2, p2, p4}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V

    move v0, v1

    .line 1003
    goto :goto_0

    .line 1007
    :cond_4
    new-instance v3, Lmobi/mgeek/TunnyBrowser/in;

    invoke-direct {v3, p0, v2, p2, p4}, Lmobi/mgeek/TunnyBrowser/in;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V

    .line 1016
    new-instance v2, Lmobi/mgeek/TunnyBrowser/id;

    invoke-direct {v2, p0, p4}, Lmobi/mgeek/TunnyBrowser/id;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V

    .line 1025
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v4

    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e0048

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e045e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e0042

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e009e

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1032
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    move v0, v1

    .line 1033
    goto/16 :goto_0
.end method

.method public onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 1490
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    invoke-super/range {p0 .. p7}, Lcom/dolphin/browser/core/WebViewCallback;->onDownloadStart(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1498
    :goto_0
    return-void

    .line 1494
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;I)V

    .line 1496
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 10

    .prologue
    .line 1280
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    invoke-super/range {p0 .. p9}, Lcom/dolphin/browser/core/WebViewCallback;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1285
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->A()Lmobi/mgeek/TunnyBrowser/hw;

    move-result-object v0

    .line 1287
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    .line 1288
    invoke-virtual/range {v0 .. v9}, Lmobi/mgeek/TunnyBrowser/hw;->a(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 673
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onFormResubmission(Lcom/dolphin/browser/core/IWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 724
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 682
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->e:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 683
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onFormResubmission should not be called again while dialog is still up"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 688
    :cond_2
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ib;->e:Landroid/os/Message;

    .line 689
    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/ib;->f:Landroid/os/Message;

    .line 690
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ii;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ii;-><init>(Lmobi/mgeek/TunnyBrowser/ib;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ih;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ih;-><init>(Lmobi/mgeek/TunnyBrowser/ib;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ig;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ig;-><init>(Lmobi/mgeek/TunnyBrowser/ib;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 1347
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1352
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->g:Lmobi/mgeek/TunnyBrowser/fh;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->g:Lmobi/mgeek/TunnyBrowser/fh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fh;->b()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 1331
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1336
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ib;->c(Lcom/dolphin/browser/core/IWebView;)Lmobi/mgeek/TunnyBrowser/fh;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmobi/mgeek/TunnyBrowser/fh;->a(Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 1253
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o()V

    goto :goto_0
.end method

.method public onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1524
    const-string v1, "WebViewCallbackHandler"

    const-string v2, "onJsAlert url=%s"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1525
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1529
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1535
    const-string v1, "WebViewCallbackHandler"

    const-string v2, "onJsConfirm url=%s"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1536
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1547
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onJsPrompt url=%s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1548
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 1552
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/dolphin/browser/core/WebViewCallback;->onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 445
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onPageFinished url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 447
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/javascript/j;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 448
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    .line 450
    const/4 v2, 0x5

    invoke-direct {p0, p1, p2, v2}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 451
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setIsBackOrForward(Z)V

    .line 452
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setIsOpeningInNewTab(Z)V

    .line 454
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_2

    .line 455
    sget-object v2, Lmobi/mgeek/TunnyBrowser/ib;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 459
    :cond_2
    if-eqz v1, :cond_3

    .line 460
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    .line 463
    :cond_3
    invoke-static {p1, p2}, Lmobi/mgeek/TunnyBrowser/eu;->b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/ib;->f(Lcom/dolphin/browser/core/IWebView;)V

    .line 467
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/z;->a()Lmobi/mgeek/util/CrashReporter/z;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/util/CrashReporter/z;->b()V

    .line 470
    invoke-static {}, Lcom/dolphin/browser/util/cy;->a()Lcom/dolphin/browser/util/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/cy;->b()V

    .line 473
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->stoppedLoadingByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionBack2()Z

    goto :goto_0
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 283
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 224
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onPageStarted:%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    invoke-static {p1}, Lcom/dolphin/browser/javascript/j;->c(Lcom/dolphin/browser/core/IWebView;)V

    .line 227
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/CookieSyncManager;->resetSync()V

    .line 229
    invoke-static {}, Lcom/dolphin/browser/core/ab;->a()Lcom/dolphin/browser/core/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/ab;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    invoke-interface {p1, v3}, Lcom/dolphin/browser/core/IWebView;->setNetworkAvailable(Z)V

    .line 235
    :cond_2
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_3

    .line 237
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setLoadingReceivedErrorState(Z)V

    .line 238
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setIsTitleReceived(Z)V

    .line 239
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setStoppedLoadingByUser(Z)V

    .line 240
    sget-object v1, Lmobi/mgeek/TunnyBrowser/ib;->k:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    invoke-interface {v0, v4}, Lcom/dolphin/browser/core/ITab;->setIsOpeningContentUrl(Z)V

    .line 242
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/t/l;->g(Ljava/lang/String;)V

    .line 248
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 250
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getScrollY()I

    move-result v1

    iput v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->i:I

    .line 252
    :cond_4
    invoke-static {p1, p2}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "Skip tracking search engine: redirected request."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_5
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setIsOpeningContentUrl(Z)V

    goto :goto_1

    .line 260
    :cond_6
    new-instance v1, Lmobi/mgeek/TunnyBrowser/ic;

    invoke-direct {v1, p0, v0}, Lmobi/mgeek/TunnyBrowser/ic;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;)V

    new-array v0, v4, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto/16 :goto_0
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1066
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onProgressChanged:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1071
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 1074
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ib;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 1081
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v5, v0}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 1088
    :cond_3
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;I)V

    .line 1089
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1090
    if-eqz v0, :cond_0

    .line 1091
    invoke-interface {v0, v4}, Lcom/dolphin/browser/core/ITab;->setIsOpeningInNewTab(Z)V

    .line 1092
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;I)V

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    const-string v1, "CookieSyncManager sync"

    invoke-static {v5, v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V
    .locals 6

    .prologue
    .line 1308
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1309
    invoke-super/range {p0 .. p5}, Lcom/dolphin/browser/core/WebViewCallback;->onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->A()Lmobi/mgeek/TunnyBrowser/hw;

    move-result-object v0

    .line 1314
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1315
    invoke-virtual/range {v0 .. v5}, Lmobi/mgeek/TunnyBrowser/hw;->a(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 636
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v0, "WebViewCallbackHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 647
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/t/l;->d()V

    .line 663
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/t/k;->a(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 869
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-void

    .line 873
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/eu;->b(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    invoke-interface {p2}, Lcom/dolphin/browser/core/IHttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    .line 878
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 879
    invoke-interface {p1, p3, p4}, Lcom/dolphin/browser/core/IWebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 881
    aget-object v1, v0, v7

    .line 882
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 886
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 888
    :try_start_0
    invoke-interface {p2, v1, v0}, Lcom/dolphin/browser/core/IHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :cond_1
    :goto_2
    invoke-static {p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 893
    :cond_2
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 895
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 898
    :cond_3
    :try_start_1
    invoke-interface {p2}, Lcom/dolphin/browser/core/IHttpAuthHandler;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 899
    :catch_1
    move-exception v0

    .line 900
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    move-object v0, v4

    move-object v1, v4

    goto :goto_1
.end method

.method public onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 1221
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    if-eqz p2, :cond_2

    .line 1227
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/dolphin/browser/provider/Browser;->updateFaviconAsync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1230
    :cond_2
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/t/l;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 762
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedSslError(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 856
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 767
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    invoke-interface {p2}, Lcom/dolphin/browser/core/ISslErrorHandler;->cancel()V

    goto :goto_0

    .line 771
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->G()V

    .line 772
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->showSecurityWarnings()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_6

    .line 774
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 775
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300f9

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 776
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080376

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0044

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 778
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08035f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 781
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 783
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05c9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 784
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a0044

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 791
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05c6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 792
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a0044

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 794
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 797
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 798
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 799
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c5

    .line 800
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v3

    .line 801
    if-eqz v3, :cond_7

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_7

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 804
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    .line 805
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05c8

    move v3, v2

    .line 808
    :goto_1
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 809
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a0044

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 811
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 814
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 815
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 816
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05c7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 817
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080375

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 822
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0555

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05c4

    new-instance v2, Lmobi/mgeek/TunnyBrowser/im;

    invoke-direct {v2, p0, p2}, Lmobi/mgeek/TunnyBrowser/im;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ISslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e067a

    new-instance v2, Lmobi/mgeek/TunnyBrowser/il;

    invoke-direct {v2, p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/il;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ik;

    invoke-direct {v2, p0, p2}, Lmobi/mgeek/TunnyBrowser/ik;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ISslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ij;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/ij;-><init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ISslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 854
    :cond_6
    invoke-interface {p2}, Lcom/dolphin/browser/core/ISslErrorHandler;->proceed()V

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto/16 :goto_1
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1104
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onReceivedTitle begin,title=%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1105
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 1112
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_2

    .line 1115
    invoke-interface {v1, v4}, Lcom/dolphin/browser/core/ITab;->setIsTitleReceived(Z)V

    .line 1117
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-ge v1, v2, :cond_0

    .line 1120
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1122
    :cond_3
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 1126
    :cond_4
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1127
    sget-object v1, Lmobi/mgeek/TunnyBrowser/ib;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 1129
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/javascript/j;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 1136
    invoke-static {p1, v0, p2}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 1210
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onReceivedTouchIconUrl:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1211
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 1214
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method public onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 1039
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->switchToTab(Lcom/dolphin/browser/core/ITab;)Z

    goto :goto_0
.end method

.method public onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1632
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1633
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/cc;->a()Lcom/dolphin/browser/DolphinService/ui/cc;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    const/16 v3, 0x66

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/ui/cc;->a(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;)V

    .line 1636
    return-void

    .line 1632
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onSaveUsernamePassword(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1576
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    array-length v3, p2

    if-ne v2, v3, :cond_0

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v2, p2, v0

    if-nez v2, :cond_1

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1590
    aget-object v5, p2, v1

    .line 1591
    aget-object v6, p2, v0

    .line 1592
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v2}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v2

    .line 1597
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/l/l;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1598
    if-eqz v3, :cond_2

    .line 1602
    aget-object v7, v3, v1

    if-eqz v7, :cond_0

    .line 1604
    aget-object v7, v3, v1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1609
    aget-object v3, v3, v0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1610
    invoke-virtual {v2, v4, v5}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :goto_1
    if-eqz v1, :cond_0

    .line 1624
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/cc;->a()Lcom/dolphin/browser/DolphinService/ui/cc;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    const/16 v3, 0x65

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/DolphinService/ui/cc;->a(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1615
    :cond_3
    invoke-virtual {v2, v4, v5, v6}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 1465
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    if-eqz p1, :cond_0

    .line 1470
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->doSelectTextDone()V

    goto :goto_0
.end method

.method public onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 1445
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onSelectionStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/WebViewCallback;->onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V

    .line 1455
    :goto_0
    return-void

    .line 1450
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getEnableLongPressMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1451
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->startSelectText()V

    goto :goto_0

    .line 1453
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->cancelSelectText()V

    goto :goto_0
.end method

.method public onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 1239
    const-string v0, "WebViewCallbackHandler"

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p2, p3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 929
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onUnhandledKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 934
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-boolean v0, v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    if-nez v0, :cond_0

    .line 937
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 938
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 940
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/IWebView;",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1398
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V

    .line 1408
    :goto_0
    return-void

    .line 1402
    :cond_0
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1403
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1404
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p2, p3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 1406
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setFullScreen(Lcom/dolphin/browser/core/IWebView;Z)V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZ)V

    .line 1513
    return-void
.end method

.method public shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 911
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->shouldOverrideKeyEvent(Lcom/dolphin/browser/core/IWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    :cond_2
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ib;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 565
    const-string v2, "WebViewCallbackHandler"

    const-string v3, "shouldOverrideUrlLoading url=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 571
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 572
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    :goto_0
    const-string v2, "web"

    const-string v3, "click"

    const-string v4, "pagelink"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ib;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v0

    .line 626
    :cond_0
    :goto_1
    return v0

    .line 574
    :cond_1
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ib;->j:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_2
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ib;->h:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-interface {v2, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    const-string v2, "vnd.youtube"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 590
    const/16 v2, 0x3f

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 591
    const/4 v3, -0x1

    if-eq v3, v2, :cond_3

    .line 592
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 594
    :cond_3
    const-string v2, "vnd.youtube://"

    const-string v3, "vnd.youtube:"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 596
    :cond_4
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 597
    sget-object v3, Lmobi/mgeek/TunnyBrowser/ib;->k:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 598
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmobi/mgeek/TunnyBrowser/ib;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    :cond_5
    const-string v3, "dolphin://jsreq/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 603
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    goto :goto_1

    .line 607
    :cond_6
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->isOpeningInNewTab()Z

    move-result v3

    if-nez v3, :cond_7

    .line 608
    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, v3}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;I)V

    .line 610
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 611
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v1

    .line 617
    :cond_8
    if-nez v1, :cond_9

    invoke-static {}, Lcom/dolphin/browser/util/dq;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 621
    invoke-interface {p1, p2}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method
