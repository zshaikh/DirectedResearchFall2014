.class Ldolphin/webkit/ae;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# instance fields
.field private volatile a:Ldolphin/webkit/WebViewClient;

.field private volatile b:Ldolphin/webkit/WebChromeClient;

.field private volatile c:Ldolphin/webkit/WebContentClient;

.field private final d:Ldolphin/webkit/WebViewClassic;

.field private volatile e:Ldolphin/webkit/DownloadListener;

.field private f:Z

.field private volatile g:I

.field private final h:Ldolphin/webkit/WebBackForwardList;

.field private volatile i:Ldolphin/webkit/WebBackForwardListClient;

.field private final j:Landroid/content/Context;

.field private k:Z

.field private l:Ldolphin/net/load/ILoadViewInterface;

.field private m:Ldolphin/net/load/ILoadViewInterface;

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Ldolphin/webkit/ae;->g:I

    .line 2085
    iput-boolean v1, p0, Ldolphin/webkit/ae;->n:Z

    .line 2087
    const/4 v0, 0x2

    iput v0, p0, Ldolphin/webkit/ae;->o:I

    .line 2110
    iput-boolean v1, p0, Ldolphin/webkit/ae;->p:Z

    .line 238
    iput-object p1, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    .line 239
    iput-object p2, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    .line 240
    new-instance v0, Ldolphin/webkit/WebBackForwardList;

    invoke-direct {v0, p0}, Ldolphin/webkit/WebBackForwardList;-><init>(Ldolphin/webkit/ae;)V

    iput-object v0, p0, Ldolphin/webkit/ae;->h:Ldolphin/webkit/WebBackForwardList;

    .line 241
    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1998
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/ae;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1999
    new-instance v1, Ldolphin/webkit/at;

    invoke-direct {v1, p0, p1}, Ldolphin/webkit/at;-><init>(Ldolphin/webkit/ae;Landroid/os/Message;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2000
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 2002
    invoke-static {}, Ldolphin/webkit/he;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    :goto_0
    :try_start_2
    invoke-static {}, Ldolphin/webkit/he;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2010
    monitor-exit p0

    return-void

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    :try_start_3
    const-string v1, "CallbackProxy"

    const-string v2, "Caught exception waiting for synchronous UI message to be processed"

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const-string v1, "CallbackProxy"

    invoke-static {v0}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1998
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/ae;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ldolphin/webkit/ae;->p()V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2126
    if-nez p1, :cond_0

    move v0, v1

    .line 2143
    :goto_0
    return v0

    .line 2129
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2130
    if-nez v0, :cond_1

    move v0, v1

    .line 2131
    goto :goto_0

    .line 2133
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2134
    if-eqz v1, :cond_3

    .line 2135
    check-cast v1, Landroid/view/ViewGroup;

    .line 2136
    if-ne v1, v0, :cond_2

    move v0, v2

    .line 2137
    goto :goto_0

    .line 2139
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2142
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v2

    .line 2143
    goto :goto_0
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2147
    if-nez p1, :cond_0

    move v0, v1

    .line 2156
    :goto_0
    return v0

    .line 2150
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2151
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 2152
    goto :goto_0

    .line 2154
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    .line 2155
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1123
    .line 1124
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    sget v0, Ldolphin/webkit/R$string;->js_dialog_title_default:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1137
    :goto_0
    return-object p1

    .line 1129
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1131
    sget v1, Ldolphin/webkit/R$string;->js_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ldolphin/webkit/WebKitResources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 2074
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/ae;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0}, Ldolphin/net/load/ILoadViewInterface;->getLoadView()Landroid/view/View;

    move-result-object v0

    .line 2078
    invoke-direct {p0, v0}, Ldolphin/webkit/ae;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2079
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2080
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldolphin/net/load/ILoadViewInterface;->notifyShowOrGone(Z)V

    .line 2081
    const/4 v0, 0x2

    iput v0, p0, Ldolphin/webkit/ae;->o:I

    goto :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2094
    iget-object v0, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/ae;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2108
    :cond_0
    :goto_0
    return-void

    .line 2097
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0}, Ldolphin/net/load/ILoadViewInterface;->getLoadView()Landroid/view/View;

    move-result-object v3

    .line 2098
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 2099
    :goto_1
    invoke-direct {p0, v3}, Ldolphin/webkit/ae;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2100
    if-nez v0, :cond_2

    .line 2101
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2103
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0, v1}, Ldolphin/net/load/ILoadViewInterface;->notifyShowOrGone(Z)V

    .line 2104
    iput-boolean v1, p0, Ldolphin/webkit/ae;->n:Z

    .line 2105
    invoke-direct {p0}, Ldolphin/webkit/ae;->p()V

    .line 2106
    iput-boolean v1, p0, Ldolphin/webkit/ae;->q:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2098
    goto :goto_1
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2114
    iget-object v0, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/ae;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2117
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0}, Ldolphin/net/load/ILoadViewInterface;->getLoadView()Landroid/view/View;

    move-result-object v0

    .line 2118
    invoke-direct {p0, v0}, Ldolphin/webkit/ae;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2119
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2120
    iget-object v0, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0, v2}, Ldolphin/net/load/ILoadViewInterface;->notifyShowOrGone(Z)V

    .line 2121
    iput-boolean v2, p0, Ldolphin/webkit/ae;->q:Z

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 2182
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2183
    iget-object v0, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 2185
    :cond_0
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2186
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    const/4 v0, 0x1

    .line 2189
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ZZ)Ldolphin/webkit/BrowserFrame;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1554
    iget-object v3, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1574
    :goto_0
    return-object v0

    .line 1558
    :cond_0
    new-instance v4, Ldolphin/webkit/WebView$WebViewTransport;

    iget-object v3, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3}, Ldolphin/webkit/WebView$WebViewTransport;-><init>(Ldolphin/webkit/WebView;)V

    .line 1560
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1561
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1562
    const/16 v6, 0x6d

    if-eqz p1, :cond_1

    move v3, v0

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {p0, v6, v3, v0, v5}, Ldolphin/webkit/ae;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1564
    invoke-virtual {v4}, Ldolphin/webkit/WebView$WebViewTransport;->getWebView()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebView;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    .line 1565
    if-eqz v0, :cond_3

    .line 1566
    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    .line 1569
    if-eqz v0, :cond_3

    .line 1570
    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->initializeSubwindow()V

    .line 1571
    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->getBrowserFrame()Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1562
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 1574
    goto :goto_0
.end method

.method protected declared-synchronized a()V
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldolphin/webkit/ae;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(FF)V
    .locals 3

    .prologue
    .line 1374
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1377
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1379
    const-string v2, "old"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1380
    const-string v2, "new"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1381
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1534
    monitor-enter p0

    .line 1537
    :try_start_0
    iget v0, p0, Ldolphin/webkit/ae;->g:I

    if-ne v0, p1, :cond_0

    .line 1538
    monitor-exit p0

    .line 1549
    :goto_0
    return-void

    .line 1540
    :cond_0
    iput p1, p0, Ldolphin/webkit/ae;->g:I

    .line 1541
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1542
    monitor-exit p0

    goto :goto_0

    .line 1548
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1544
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/ae;->f:Z

    if-nez v0, :cond_2

    .line 1545
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendEmptyMessage(I)Z

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/ae;->f:Z

    .line 1548
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1235
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1239
    :cond_0
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1240
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1241
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(JJLdolphin/webkit/WebStorage$QuotaUpdater;)V
    .locals 4

    .prologue
    .line 1743
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1746
    invoke-interface {p5, p3, p4}, Ldolphin/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1757
    :goto_0
    return-void

    .line 1750
    :cond_0
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1751
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1752
    const-string v2, "requiredStorage"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    const-string v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    const-string v2, "quotaUpdater"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1756
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Ldolphin/webkit/ae;->h:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    .line 1600
    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {v0, p1}, Ldolphin/webkit/WebHistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1605
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1609
    :goto_0
    return-void

    .line 1608
    :cond_1
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 1337
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1338
    return-void
.end method

.method public a(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1250
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1260
    :goto_0
    return-void

    .line 1255
    :cond_0
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1256
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1257
    const-string v2, "resend"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1258
    const-string v2, "dontResend"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1259
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/net/http/SslError;)V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1315
    :cond_0
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1316
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1317
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/net/load/ILoadViewInterface;)V
    .locals 0

    .prologue
    .line 2016
    if-nez p1, :cond_0

    .line 2020
    :goto_0
    return-void

    .line 2019
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/DownloadListener;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Ldolphin/webkit/ae;->e:Ldolphin/webkit/DownloadListener;

    .line 313
    return-void
.end method

.method public a(Ldolphin/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1281
    invoke-virtual {p1}, Ldolphin/webkit/HttpAuthHandler;->cancel()V

    .line 1288
    :goto_0
    return-void

    .line 1284
    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/SslErrorHandler;Ldolphin/net/http/SslError;)V
    .locals 3

    .prologue
    .line 1299
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1300
    invoke-virtual {p1}, Ldolphin/webkit/SslErrorHandler;->cancel()V

    .line 1309
    :goto_0
    return-void

    .line 1303
    :cond_0
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1304
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1305
    const-string v2, "handler"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-string v2, "error"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1308
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1833
    :cond_0
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1834
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1835
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method a(Ldolphin/webkit/WebBackForwardListClient;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    .line 325
    return-void
.end method

.method public a(Ldolphin/webkit/WebChromeClient;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    .line 279
    return-void
.end method

.method public a(Ldolphin/webkit/WebContentClient;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    .line 296
    return-void
.end method

.method a(Ldolphin/webkit/WebHistoryItem;)V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    if-nez v0, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1924
    :cond_0
    const/16 v0, 0x87

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1925
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method a(Ldolphin/webkit/WebHistoryItem;I)V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    if-nez v0, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1932
    :cond_0
    const/16 v0, 0x88

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Ldolphin/webkit/ae;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1933
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1409
    iget-object v0, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    if-nez v0, :cond_0

    .line 1417
    :goto_0
    return-void

    .line 1412
    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1413
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1414
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v2, "url"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1594
    :goto_0
    return-void

    .line 1593
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    .line 263
    return-void
.end method

.method public a(Ldolphin/webkit/ay;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1323
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1324
    invoke-virtual {p1}, Ldolphin/webkit/ay;->a()V

    .line 1333
    :goto_0
    return-void

    .line 1327
    :cond_0
    const/16 v0, 0x8d

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1328
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1329
    const-string v2, "handler"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    const-string v2, "host_and_port"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1332
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1219
    const/16 v0, 0x2713

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Ldolphin/webkit/ae;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1220
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1221
    return-void
.end method

.method a(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 1988
    const/16 v0, 0x2711

    invoke-virtual {p0, v0, p2, p3}, Ldolphin/webkit/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1989
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1990
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1991
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 1806
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1816
    :goto_0
    return-void

    .line 1810
    :cond_0
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1811
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1814
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1815
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method a(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 1978
    const/16 v0, 0x8f

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1979
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1980
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "function"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1983
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1984
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 1193
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1194
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1195
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1197
    return-void
.end method

.method public a(Ljava/lang/String;Ldolphin/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .prologue
    .line 1768
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1779
    :goto_0
    return-void

    .line 1772
    :cond_0
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1774
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1775
    const-string v2, "origin"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    const-string v2, "callback"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1778
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1639
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1647
    :goto_0
    return-void

    .line 1642
    :cond_0
    new-instance v0, Ldolphin/webkit/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/as;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V

    .line 1643
    const/16 v1, 0x70

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1644
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-direct {p0, v0}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJLdolphin/webkit/WebStorage$QuotaUpdater;)V
    .locals 4

    .prologue
    .line 1712
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1715
    invoke-interface {p9, p3, p4}, Ldolphin/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1729
    :goto_0
    return-void

    .line 1719
    :cond_0
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1720
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1721
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    const-string v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    const-string v2, "estimatedDatabaseSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const-string v2, "totalQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    const-string v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1728
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1396
    :goto_0
    return-void

    .line 1390
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1391
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1392
    const-string v2, "realm"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v2, "account"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v2, "args"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1520
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1526
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1964
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1965
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1966
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1969
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1343
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1346
    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Ldolphin/webkit/ae;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 1972
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1973
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1974
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1975
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldolphin/webkit/WebViewClient;->shouldOverrideKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 336
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v1, :cond_2

    .line 341
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldolphin/webkit/WebViewClient;->shouldOverrideUrlLoading(Ldolphin/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 344
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :try_start_0
    iget-object v2, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3

    .prologue
    .line 1466
    iget-object v0, p0, Ldolphin/webkit/ae;->e:Ldolphin/webkit/DownloadListener;

    if-nez v0, :cond_0

    .line 1468
    const/4 v0, 0x0

    .line 1479
    :goto_0
    return v0

    .line 1471
    :cond_0
    const/16 v0, 0x76

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1473
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v2, "userAgent"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v2, "mimetype"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v2, "contentLength"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1477
    const-string v2, "contentDisposition"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1368
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b(Ldolphin/net/load/ILoadViewInterface;)V
    .locals 0

    .prologue
    .line 2023
    if-nez p1, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2026
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/ae;->m:Ldolphin/net/load/ILoadViewInterface;

    goto :goto_0
.end method

.method b(Ldolphin/webkit/WebHistoryItem;)V
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    if-nez v0, :cond_0

    .line 1943
    :goto_0
    return-void

    .line 1941
    :cond_0
    const/16 v0, 0x12f

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1942
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1426
    iget-object v0, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    if-nez v0, :cond_0

    .line 1434
    :goto_0
    return-void

    .line 1429
    :cond_0
    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1430
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1431
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v2, "url"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1208
    const/16 v0, 0x79

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1209
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1210
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1510
    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1511
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1512
    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v2, "username"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1516
    return-void
.end method

.method b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1614
    iget-object v0, p0, Ldolphin/webkit/ae;->h:Ldolphin/webkit/WebBackForwardList;

    invoke-virtual {v0}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v0

    .line 1615
    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebHistoryItem;->setTouchIconUrl(Ljava/lang/String;Z)V

    .line 1620
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1625
    :goto_0
    return-void

    .line 1623
    :cond_1
    const/16 v2, 0x84

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Ldolphin/webkit/ae;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(ZZ)V
    .locals 2

    .prologue
    .line 2030
    if-eqz p1, :cond_2

    .line 2031
    if-eqz p2, :cond_1

    .line 2032
    iget v0, p0, Ldolphin/webkit/ae;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2033
    invoke-virtual {p0}, Ldolphin/webkit/ae;->n()V

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/ae;->p()V

    goto :goto_0

    .line 2039
    :cond_2
    if-eqz p2, :cond_3

    .line 2040
    iget-boolean v0, p0, Ldolphin/webkit/ae;->q:Z

    if-eqz v0, :cond_0

    .line 2041
    const-string v0, "CallbackProxy"

    const-string v1, "showLoadingErrorView due to pageStatusIsError"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-direct {p0}, Ldolphin/webkit/ae;->q()V

    goto :goto_0

    .line 2045
    :cond_3
    invoke-direct {p0}, Ldolphin/webkit/ae;->r()V

    goto :goto_0
.end method

.method protected declared-synchronized b()Z
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/ae;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1652
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1653
    const/4 v0, 0x0

    .line 1660
    :goto_0
    return v0

    .line 1655
    :cond_0
    new-instance v0, Ldolphin/webkit/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/as;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V

    .line 1656
    const/16 v1, 0x71

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1657
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-direct {p0, v1}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1660
    iget-object v0, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->getResult()Z

    move-result v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1666
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1675
    :goto_0
    return-object v0

    .line 1669
    :cond_0
    new-instance v1, Ldolphin/webkit/as;

    invoke-direct {v1, p0, v0}, Ldolphin/webkit/as;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V

    .line 1670
    const/16 v0, 0x72

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1671
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-direct {p0, v0}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1675
    iget-object v0, v1, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/WebViewClient;)V

    .line 254
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/WebChromeClient;)V

    .line 255
    return-void
.end method

.method public c(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1443
    iget-object v0, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    if-nez v0, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1446
    :cond_0
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1448
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v2, "url"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1214
    const/16 v0, 0x2712

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1215
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1216
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1681
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1682
    const/4 v0, 0x1

    .line 1689
    :goto_0
    return v0

    .line 1684
    :cond_0
    new-instance v0, Ldolphin/webkit/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/as;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V

    .line 1685
    const/16 v1, 0x73

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1686
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-direct {p0, v1}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1689
    iget-object v0, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->getResult()Z

    move-result v0

    goto :goto_0
.end method

.method public d()Ldolphin/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1841
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1851
    :goto_0
    return-void

    .line 1844
    :cond_0
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1849
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1268
    new-instance v0, Ldolphin/webkit/au;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/au;-><init>(Ljava/lang/Object;)V

    .line 1269
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1270
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1272
    invoke-direct {p0, v1}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1273
    invoke-virtual {v0}, Ldolphin/webkit/au;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e()Ldolphin/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Ldolphin/webkit/ae;->h:Ldolphin/webkit/WebBackForwardList;

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1856
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1866
    :goto_0
    return-void

    .line 1859
    :cond_0
    const/16 v0, 0x4e22

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1864
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1292
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1909
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1917
    :goto_0
    return-object v0

    .line 1912
    :cond_0
    const/16 v1, 0x86

    invoke-virtual {p0, v1}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1913
    new-instance v2, Ldolphin/webkit/av;

    invoke-direct {v2, p0, v0}, Ldolphin/webkit/av;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V

    .line 1914
    new-instance v0, Ldolphin/webkit/aw;

    invoke-direct {v0, v2, p1, p2}, Ldolphin/webkit/aw;-><init>(Ldolphin/webkit/av;Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1916
    invoke-direct {p0, v1}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1917
    invoke-virtual {v2}, Ldolphin/webkit/av;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method f()Ldolphin/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    return-object v0
.end method

.method f(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-nez v0, :cond_1

    .line 1351
    const/4 v0, 0x0

    .line 1359
    :cond_0
    :goto_0
    return-object v0

    .line 1354
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldolphin/webkit/WebViewClient;->shouldInterceptRequest(Ldolphin/webkit/WebView;Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;

    move-result-object v0

    .line 1356
    if-nez v0, :cond_0

    .line 1357
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Ldolphin/webkit/ae;->g:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1633
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 1119
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    .line 1120
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/high16 v9, 0x1040000

    const v8, 0x104000a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 382
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ldolphin/webkit/at;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/at;

    invoke-virtual {v0}, Ldolphin/webkit/at;->a()Landroid/os/Message;

    move-result-object p1

    .line 389
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1106
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    invoke-virtual {p0}, Ldolphin/webkit/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 391
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    iput-boolean v2, p0, Ldolphin/webkit/ae;->p:Z

    .line 393
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->b(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Ldolphin/webkit/ae;->n()V

    .line 395
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 396
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v1, v0}, Ldolphin/webkit/WebViewClient;->onPageStarted(Ldolphin/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 402
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 403
    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebViewClassic;->c(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Ldolphin/webkit/ae;->p()V

    .line 405
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v2, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClient;->onPageFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 412
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v2, :cond_3

    .line 413
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v3, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ldolphin/webkit/WebViewClient;->onDocumentFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    .line 415
    :cond_3
    iput-boolean v1, p0, Ldolphin/webkit/ae;->p:Z

    goto :goto_0

    .line 420
    :sswitch_3
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 421
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebChromeClient;->onReceivedIcon(Ldolphin/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 426
    :sswitch_4
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 427
    iget-object v3, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_4

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Ldolphin/webkit/WebChromeClient;->onReceivedTouchIconUrl(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 433
    :sswitch_5
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 434
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebChromeClient;->onReceivedTitle(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :sswitch_6
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 441
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "failingUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-object v3, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v4, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Ldolphin/webkit/WebViewClient;->onReceivedError(Ldolphin/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-boolean v0, p0, Ldolphin/webkit/ae;->p:Z

    if-nez v0, :cond_1

    .line 447
    const-string v0, "CallbackProxy"

    const-string v1, "showLoadingErrorView due to msg REPORT_ERROR before document finished"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Ldolphin/webkit/ae;->q()V

    goto/16 :goto_0

    .line 454
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 456
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dontResend"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 458
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v2, :cond_5

    .line 459
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v3, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Ldolphin/webkit/WebViewClient;->onFormResubmission(Ldolphin/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 462
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 467
    :sswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->a(Ljava/lang/String;)Z

    move-result v1

    .line 469
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/au;

    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/au;->a(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 474
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 478
    :sswitch_9
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/HttpAuthHandler;

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "realm"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    iget-object v3, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v4, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Ldolphin/webkit/WebViewClient;->onReceivedHttpAuthRequest(Ldolphin/webkit/WebView;Ldolphin/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :sswitch_a
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 491
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    const-string v1, "handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/SslErrorHandler;

    const-string v4, "error"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/http/SslError;

    invoke-virtual {v2, v3, v1, v0}, Ldolphin/webkit/WebViewClient;->onReceivedSslError(Ldolphin/webkit/WebView;Ldolphin/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 498
    :sswitch_b
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 499
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/net/http/SslError;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClient;->onProceededAfterSslError(Ldolphin/webkit/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 505
    :sswitch_c
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 508
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    const-string v1, "handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/webkit/ay;

    const-string v4, "host_and_port"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Ldolphin/webkit/WebViewClient;->onReceivedClientCertRequest(Ldolphin/webkit/WebView;Ldolphin/webkit/ay;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :sswitch_d
    monitor-enter p0

    .line 519
    :try_start_1
    iget v0, p0, Ldolphin/webkit/ae;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Ldolphin/webkit/ae;->n:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_6

    .line 522
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    iget v2, p0, Ldolphin/webkit/ae;->g:I

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/WebChromeClient;->onProgressChanged(Ldolphin/webkit/WebView;I)V

    .line 525
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ae;->f:Z

    .line 526
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 530
    :sswitch_e
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 531
    iget-object v3, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v3, v4, v0, v1}, Ldolphin/webkit/WebViewClient;->doUpdateVisitedHistory(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_2

    .line 537
    :sswitch_f
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 538
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClient;->onLoadResource(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :sswitch_10
    iget-object v0, p0, Ldolphin/webkit/ae;->e:Ldolphin/webkit/DownloadListener;

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "userAgent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "contentDisposition"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "mimetype"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "contentLength"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 551
    iget-object v0, p0, Ldolphin/webkit/ae;->e:Ldolphin/webkit/DownloadListener;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Ldolphin/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 557
    :sswitch_11
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 558
    iget-object v4, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v5

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_9

    move v3, v1

    :goto_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_a

    :goto_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v4, v5, v3, v1, v0}, Ldolphin/webkit/WebChromeClient;->onCreateWindow(Ldolphin/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 561
    monitor-enter p0

    .line 562
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 563
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 578
    :cond_8
    :goto_5
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->dismissZoomControl()V

    goto/16 :goto_0

    :cond_9
    move v3, v2

    .line 558
    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4

    .line 563
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 568
    :cond_b
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->isInGameMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 571
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_8

    .line 572
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebChromeClient;->onRequestFocus(Ldolphin/webkit/WebView;)V

    .line 573
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_5

    .line 583
    :sswitch_12
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebChromeClient;->onRequestFocus(Ldolphin/webkit/WebView;)V

    goto/16 :goto_0

    .line 589
    :sswitch_13
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 590
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebChromeClient;->onCloseWindow(Ldolphin/webkit/WebView;)V

    goto/16 :goto_0

    .line 595
    :sswitch_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 596
    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 598
    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 601
    iget-object v4, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v4, v1, v2, v3, v0}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    monitor-enter p0

    .line 604
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 605
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 610
    :sswitch_15
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 611
    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v3, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    invoke-virtual {v3, v1, v2, v0}, Ldolphin/webkit/WebViewClient;->maybeSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    :sswitch_16
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 619
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClient;->onUnhandledKeyEvent(Ldolphin/webkit/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 625
    :sswitch_17
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 628
    const-string v1, "databaseIdentifier"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 631
    const-string v3, "quota"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 633
    const-string v5, "totalQuota"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 635
    const-string v5, "estimatedDatabaseSize"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 637
    const-string v9, "quotaUpdater"

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldolphin/webkit/WebStorage$QuotaUpdater;

    .line 640
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual/range {v0 .. v9}, Ldolphin/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLdolphin/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 647
    :sswitch_18
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 650
    const-string v1, "requiredStorage"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 652
    const-string v3, "quota"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 654
    const-string v5, "quotaUpdater"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldolphin/webkit/WebStorage$QuotaUpdater;

    .line 657
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLdolphin/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 663
    :sswitch_19
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 666
    const-string v1, "origin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 667
    const-string v2, "callback"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/GeolocationPermissions$Callback;

    .line 670
    iget-object v2, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v2, v1, v0}, Ldolphin/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Ldolphin/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 676
    :sswitch_1a
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 682
    :sswitch_1b
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/as;

    .line 684
    iget-object v1, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    .line 685
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    iget-object v4, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v5, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2, v1}, Ldolphin/webkit/WebChromeClient;->onJsAlert(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 689
    invoke-virtual {p0}, Ldolphin/webkit/ae;->m()Z

    move-result v4

    if-nez v4, :cond_c

    .line 690
    invoke-virtual {v1}, Ldolphin/webkit/JsResult;->cancel()V

    .line 691
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 694
    :cond_c
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Ldolphin/webkit/ae;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/ak;

    invoke-direct {v3, p0, v1}, Ldolphin/webkit/ak;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/af;

    invoke-direct {v3, p0, v1}, Ldolphin/webkit/af;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 714
    :cond_d
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 719
    :sswitch_1c
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/as;

    .line 721
    iget-object v1, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    .line 722
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 724
    iget-object v4, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v5, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2, v1}, Ldolphin/webkit/WebChromeClient;->onJsConfirm(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 726
    invoke-virtual {p0}, Ldolphin/webkit/ae;->m()Z

    move-result v4

    if-nez v4, :cond_e

    .line 727
    invoke-virtual {v1}, Ldolphin/webkit/JsResult;->cancel()V

    .line 728
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 731
    :cond_e
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Ldolphin/webkit/ae;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/an;

    invoke-direct {v3, p0, v1}, Ldolphin/webkit/an;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/am;

    invoke-direct {v3, p0, v1}, Ldolphin/webkit/am;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldolphin/webkit/al;

    invoke-direct {v3, p0, v1}, Ldolphin/webkit/al;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 759
    :cond_f
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 764
    :sswitch_1d
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ldolphin/webkit/as;

    .line 766
    iget-object v5, v6, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    .line 767
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 768
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 770
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/WebChromeClient;->onJsPrompt(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsPromptResult;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 772
    invoke-virtual {p0}, Ldolphin/webkit/ae;->m()Z

    move-result v0

    if-nez v0, :cond_10

    .line 773
    invoke-virtual {v5}, Ldolphin/webkit/JsPromptResult;->cancel()V

    .line 774
    invoke-virtual {v6}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 777
    :cond_10
    iget-object v0, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    sget v1, Ldolphin/webkit/R$layout;->dw_js_prompt:I

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 779
    sget v0, Ldolphin/webkit/R$id;->value:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 781
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    sget v1, Ldolphin/webkit/R$id;->message:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Ldolphin/webkit/ae;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/aq;

    invoke-direct {v2, p0, v5, v0}, Ldolphin/webkit/aq;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ldolphin/webkit/ap;

    invoke-direct {v1, p0, v5}, Ldolphin/webkit/ap;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsPromptResult;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ldolphin/webkit/ao;

    invoke-direct {v1, p0, v5}, Ldolphin/webkit/ao;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 815
    :cond_11
    invoke-virtual {v6}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 820
    :sswitch_1e
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/as;

    .line 822
    iget-object v3, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    .line 823
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 824
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 825
    iget-object v6, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v7, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v7}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v4, v3}, Ldolphin/webkit/WebChromeClient;->onJsBeforeUnload(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 827
    invoke-virtual {p0}, Ldolphin/webkit/ae;->m()Z

    move-result v5

    if-nez v5, :cond_12

    .line 828
    invoke-virtual {v3}, Ldolphin/webkit/JsResult;->cancel()V

    .line 829
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 832
    :cond_12
    sget v5, Ldolphin/webkit/R$string;->js_dialog_before_unload:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v5, v1}, Ldolphin/webkit/WebKitResources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 834
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ah;

    invoke-direct {v2, p0, v3}, Ldolphin/webkit/ah;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ag;

    invoke-direct {v2, p0, v3}, Ldolphin/webkit/ag;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ar;

    invoke-direct {v2, p0, v3}, Ldolphin/webkit/ar;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/JsResult;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 861
    :cond_13
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 866
    :sswitch_1f
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/as;

    .line 868
    iget-object v1, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    .line 869
    iget-object v2, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v2}, Ldolphin/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 870
    invoke-virtual {v1}, Ldolphin/webkit/JsResult;->confirm()V

    .line 874
    :goto_6
    invoke-virtual {v0}, Ldolphin/webkit/as;->a()V

    goto/16 :goto_0

    .line 872
    :cond_14
    invoke-virtual {v1}, Ldolphin/webkit/JsResult;->cancel()V

    goto :goto_6

    .line 879
    :sswitch_20
    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/http/SslCertificate;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebViewClassic;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 883
    :sswitch_21
    monitor-enter p0

    .line 884
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 885
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 889
    :sswitch_22
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "old"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebViewClient;->onScaleChanged(Ldolphin/webkit/WebView;FF)V

    goto/16 :goto_0

    .line 896
    :sswitch_23
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->L()V

    goto/16 :goto_0

    .line 900
    :sswitch_24
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 903
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 904
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "sourceID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "lineNumber"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 906
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "msgLevel"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 907
    invoke-static {}, Ldolphin/webkit/bg;->values()[Ldolphin/webkit/bg;

    move-result-object v5

    array-length v5, v5

    .line 909
    if-ltz v0, :cond_15

    if-lt v0, v5, :cond_18

    .line 913
    :cond_15
    :goto_7
    invoke-static {}, Ldolphin/webkit/bg;->values()[Ldolphin/webkit/bg;

    move-result-object v0

    aget-object v0, v0, v2

    .line 916
    iget-object v2, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    new-instance v5, Ldolphin/webkit/bf;

    invoke-direct {v5, v1, v3, v4, v0}, Ldolphin/webkit/bf;-><init>(Ljava/lang/String;Ljava/lang/String;ILdolphin/webkit/bg;)V

    invoke-virtual {v2, v5}, Ldolphin/webkit/WebChromeClient;->onConsoleMessage(Ldolphin/webkit/bf;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 920
    const-string v2, "Web Console"

    .line 921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 923
    sget-object v3, Ldolphin/webkit/aj;->a:[I

    invoke-virtual {v0}, Ldolphin/webkit/bg;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 925
    :pswitch_0
    invoke-static {v2, v1}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    :pswitch_1
    invoke-static {v2, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    :pswitch_2
    invoke-static {v2, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 934
    :pswitch_3
    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :pswitch_4
    invoke-static {v2, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 945
    :sswitch_25
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 946
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/ValueCallback;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebChromeClient;->getVisitedHistory(Ldolphin/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 951
    :sswitch_26
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/aw;

    .line 953
    iget-object v1, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v0}, Ldolphin/webkit/aw;->a()Ldolphin/webkit/av;

    move-result-object v2

    invoke-virtual {v0}, Ldolphin/webkit/aw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ldolphin/webkit/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ldolphin/webkit/WebChromeClient;->openFileChooser(Ldolphin/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 960
    :sswitch_27
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebHistoryItem;

    .line 962
    invoke-virtual {v0}, Ldolphin/webkit/WebHistoryItem;->getPrereadStatus()Ldolphin/webkit/hj;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/hj;->a:Ldolphin/webkit/hj;

    if-ne v1, v2, :cond_16

    .line 963
    iget-object v1, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebBackForwardListClient;->onNewHistoryItem(Ldolphin/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 965
    :cond_16
    iget-object v1, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebBackForwardListClient;->onNewPrereadItem(Ldolphin/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 971
    :sswitch_28
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    if-eqz v0, :cond_1

    .line 972
    iget-object v1, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebHistoryItem;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Ldolphin/webkit/WebBackForwardListClient;->onIndexChanged(Ldolphin/webkit/WebHistoryItem;I)V

    .line 974
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->f(I)V

    goto/16 :goto_0

    .line 978
    :sswitch_29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 981
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 982
    iget-object v4, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4, v0, v1, v2, v3}, Ldolphin/webkit/WebViewClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :sswitch_2a
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->setInstallableWebApp()V

    goto/16 :goto_0

    .line 992
    :sswitch_2b
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->P()Ldolphin/webkit/gn;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gq;

    .line 995
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 996
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ldolphin/webkit/gq;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1000
    :sswitch_2c
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 1001
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "realm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    iget-object v3, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v4, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Ldolphin/webkit/WebViewClient;->onReceivedLoginRequest(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    :sswitch_2d
    iget-object v0, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    .line 1012
    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1014
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    iget-object v3, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Ldolphin/webkit/WebContentClient;->onBestSearchResultDetected(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1021
    :sswitch_2e
    iget-object v0, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    .line 1022
    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1024
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    iget-object v3, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Ldolphin/webkit/WebContentClient;->onNextPageLinkDetected(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1031
    :sswitch_2f
    iget-object v0, p0, Ldolphin/webkit/ae;->c:Ldolphin/webkit/WebContentClient;

    .line 1032
    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1034
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    iget-object v3, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Ldolphin/webkit/WebContentClient;->onPrevPageLinkDetected(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    :sswitch_30
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->P()Ldolphin/webkit/gn;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gq;

    .line 1043
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 1044
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/gq;->a(Z)V

    goto/16 :goto_0

    .line 1048
    :sswitch_31
    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->P()Ldolphin/webkit/gn;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gq;

    .line 1049
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 1050
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "function"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Ldolphin/webkit/gq;->a(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1056
    :sswitch_32
    iget-object v0, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v1, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget-object v0, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v0, v3, v4}, Ldolphin/webkit/WebViewClient;->onReceivedResource(Ldolphin/webkit/WebView;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1062
    :sswitch_33
    :try_start_6
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebChromeClient;->onTranscodeUpdate(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1070
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1075
    :sswitch_34
    :try_start_7
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebChromeClient;->onAdBlockUpdate(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1083
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1087
    :sswitch_35
    iget-object v0, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v1, p0, Ldolphin/webkit/ae;->i:Ldolphin/webkit/WebBackForwardListClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebHistoryItem;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebBackForwardListClient;->prereadItemStatusChanged(Ldolphin/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 1093
    :sswitch_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1094
    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    .line 1095
    if-nez v0, :cond_17

    if-eqz v1, :cond_17

    .line 1096
    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1097
    :cond_17
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    if-eqz v2, :cond_1

    .line 1098
    iget-object v2, p0, Ldolphin/webkit/ae;->a:Ldolphin/webkit/WebViewClient;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v0, v3}, Ldolphin/webkit/WebViewClient;->onPageMilestoneChanged(Ldolphin/webkit/WebView;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    move v2, v0

    goto/16 :goto_7

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_5
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
        0x6d -> :sswitch_11
        0x6e -> :sswitch_13
        0x6f -> :sswitch_14
        0x70 -> :sswitch_1b
        0x71 -> :sswitch_1c
        0x72 -> :sswitch_1d
        0x73 -> :sswitch_1e
        0x74 -> :sswitch_16
        0x76 -> :sswitch_10
        0x77 -> :sswitch_6
        0x78 -> :sswitch_7
        0x79 -> :sswitch_1
        0x7a -> :sswitch_12
        0x7b -> :sswitch_22
        0x7c -> :sswitch_20
        0x7d -> :sswitch_23
        0x7e -> :sswitch_17
        0x7f -> :sswitch_18
        0x80 -> :sswitch_1f
        0x81 -> :sswitch_24
        0x82 -> :sswitch_19
        0x83 -> :sswitch_1a
        0x84 -> :sswitch_4
        0x85 -> :sswitch_25
        0x86 -> :sswitch_26
        0x87 -> :sswitch_27
        0x88 -> :sswitch_28
        0x89 -> :sswitch_29
        0x8a -> :sswitch_2a
        0x8b -> :sswitch_2b
        0x8c -> :sswitch_2c
        0x8d -> :sswitch_c
        0x8e -> :sswitch_30
        0x8f -> :sswitch_31
        0x90 -> :sswitch_b
        0x91 -> :sswitch_15
        0xc8 -> :sswitch_21
        0x12c -> :sswitch_2d
        0x12d -> :sswitch_2e
        0x12e -> :sswitch_2f
        0x12f -> :sswitch_35
        0x2711 -> :sswitch_32
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_36
        0x4e21 -> :sswitch_33
        0x4e22 -> :sswitch_34
    .end sparse-switch

    .line 923
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1585
    :goto_0
    return-void

    .line 1584
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1792
    :goto_0
    return-void

    .line 1790
    :cond_0
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1791
    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1821
    const/4 v0, 0x1

    .line 1826
    :goto_0
    return v0

    .line 1823
    :cond_0
    new-instance v0, Ldolphin/webkit/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/as;-><init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V

    .line 1824
    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1825
    invoke-direct {p0, v1}, Ldolphin/webkit/ae;->a(Landroid/os/Message;)V

    .line 1826
    iget-object v0, v0, Ldolphin/webkit/as;->a:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->getResult()Z

    move-result v0

    goto :goto_0
.end method

.method l()V
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Ldolphin/webkit/ae;->b:Ldolphin/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1951
    :goto_0
    return-void

    .line 1950
    :cond_0
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method m()Z
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Ldolphin/webkit/ae;->j:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public n()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2051
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/ae;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0}, Ldolphin/net/load/ILoadViewInterface;->getLoadView()Landroid/view/View;

    move-result-object v3

    .line 2055
    iget-boolean v0, p0, Ldolphin/webkit/ae;->n:Z

    if-eqz v0, :cond_2

    .line 2056
    iput-boolean v2, p0, Ldolphin/webkit/ae;->n:Z

    goto :goto_0

    .line 2059
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2060
    :goto_1
    invoke-direct {p0, v3}, Ldolphin/webkit/ae;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2061
    iget-object v4, p0, Ldolphin/webkit/ae;->r:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 2062
    iget-object v4, p0, Ldolphin/webkit/ae;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Ldolphin/webkit/ae;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2064
    :cond_3
    if-nez v0, :cond_4

    .line 2065
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2067
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    invoke-interface {v0, v1}, Ldolphin/net/load/ILoadViewInterface;->notifyShowOrGone(Z)V

    .line 2068
    invoke-direct {p0}, Ldolphin/webkit/ae;->r()V

    .line 2069
    iput v1, p0, Ldolphin/webkit/ae;->o:I

    goto :goto_0

    :cond_5
    move v0, v2

    .line 2059
    goto :goto_1
.end method

.method public o()V
    .locals 3

    .prologue
    .line 2160
    invoke-direct {p0}, Ldolphin/webkit/ae;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2177
    :goto_0
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    if-eqz v0, :cond_1

    .line 2165
    iget-object v0, p0, Ldolphin/webkit/ae;->l:Ldolphin/net/load/ILoadViewInterface;

    iget-object v1, p0, Ldolphin/webkit/ae;->d:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v1

    invoke-interface {v0, v1}, Ldolphin/net/load/ILoadViewInterface;->setTitleHeight(I)V

    .line 2168
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ae;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 2169
    new-instance v0, Ldolphin/webkit/ai;

    invoke-direct {v0, p0}, Ldolphin/webkit/ai;-><init>(Ldolphin/webkit/ae;)V

    iput-object v0, p0, Ldolphin/webkit/ae;->r:Ljava/lang/Runnable;

    .line 2176
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/ae;->r:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/ae;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
