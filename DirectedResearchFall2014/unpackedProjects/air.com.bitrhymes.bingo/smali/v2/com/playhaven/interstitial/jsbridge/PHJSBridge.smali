.class public Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;
.super Ljava/lang/Object;
.source "PHJSBridge.java"


# static fields
.field private static final JAVASCRIPT_CALLBACK_TEMPLATE:Ljava/lang/String; = "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s)"


# instance fields
.field protected contentDisplayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurUrl:Landroid/net/Uri;

.field private routers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;",
            ">;"
        }
    .end annotation
.end field

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;)V
    .locals 1
    .param p1, "contentDisplayer"    # Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->routers:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->contentDisplayer:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method

.method private stripQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v2, "?"

    .line 130
    const/4 v0, 0x0

    const-string v1, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addRoute(Ljava/lang/String;Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;)V
    .locals 1
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "handler"    # Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;

    .prologue
    .line 117
    invoke-virtual {p2, p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->attachBridge(Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;)V

    .line 118
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-virtual {p2, v0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->attachContentDisplayer(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;)V

    .line 120
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->routers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public attachWebview(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 56
    iput-object p1, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    .line 57
    return-void
.end method

.method public clearCurrentURL()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    .line 189
    return-void
.end method

.method public clearRoutes()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->routers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 196
    return-void
.end method

.method public getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 101
    const-class v1, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v2, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    if-nez v2, :cond_0

    monitor-exit v1

    move-object v1, v3

    .line 108
    :goto_0
    return-object v1

    .line 104
    :cond_0
    iget-object v2, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "param":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    monitor-exit v1

    move-object v1, v3

    goto :goto_0

    .line 108
    :cond_2
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 109
    .end local v0    # "param":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const-class v0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRoute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asking about route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->routers:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasWebviewAttached()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrlInWebView(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public route(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    .line 152
    iget-object v2, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->mCurUrl:Landroid/net/Uri;

    if-nez v2, :cond_0

    monitor-exit p0

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "stripped":Ljava/lang/String;
    iget-object v2, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->routers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;

    .line 158
    .local v0, "handler":Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;->handle()V

    .line 160
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "handler":Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
    .end local v1    # "stripped":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public runJavascript(Ljava/lang/String;)V
    .locals 3
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public sendMessageToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "payload"    # Lorg/json/JSONObject;
    .param p3, "error"    # Lorg/json/JSONObject;

    .prologue
    const-string v5, "null"

    .line 171
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->hasWebviewAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move-object v4, p1

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v2, v3

    const/4 v3, 0x2

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "callbackCommand":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending javascript callback to WebView: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0    # "callbackCommand":Ljava/lang/String;
    :cond_1
    const-string v4, "null"

    move-object v4, v5

    goto :goto_1

    :cond_2
    const-string v4, "null"

    move-object v4, v5

    goto :goto_2

    :cond_3
    const-string v4, "null"

    move-object v4, v5

    goto :goto_3
.end method
