.class public Lcom/dolphin/browser/f/b/g;
.super Ljava/lang/Object;
.source "Requester.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/f/b/g;


# instance fields
.field private b:Lcom/dolphin/browser/j/a/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/dolphin/browser/j/a/b;

    const-string v1, "WebAppNotification"

    invoke-direct {v0, v1}, Lcom/dolphin/browser/j/a/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/b/g;->b:Lcom/dolphin/browser/j/a/b;

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/f/b/g;
    .locals 3

    .prologue
    .line 26
    const-class v1, Lcom/dolphin/browser/f/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/f/b/g;->a:Lcom/dolphin/browser/f/b/g;

    if-nez v0, :cond_1

    .line 27
    const-class v2, Lcom/dolphin/browser/f/b/g;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/f/b/g;->a:Lcom/dolphin/browser/f/b/g;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/dolphin/browser/f/b/g;

    invoke-direct {v0}, Lcom/dolphin/browser/f/b/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/f/b/g;->a:Lcom/dolphin/browser/f/b/g;

    .line 31
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :cond_1
    :try_start_2
    sget-object v0, Lcom/dolphin/browser/f/b/g;->a:Lcom/dolphin/browser/f/b/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    const-string v0, "http://opsen.dolphin-browser.com/api/1/webapp/notification.json"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v2

    .line 62
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v5, "pn"

    invoke-virtual {v0, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vn"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "src"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mt"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bs;->a(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/dolphin/browser/f/b/c;
    .locals 4

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/f/b/g;->b:Lcom/dolphin/browser/j/a/b;

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/f/b/g;->b(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dolphin/browser/f/b/c;

    invoke-direct {v3}, Lcom/dolphin/browser/f/b/c;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/j/a/b;->a(Ljava/lang/String;Lcom/dolphin/browser/j/a/a;)Lcom/dolphin/browser/j/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/b/c;
    :try_end_0
    .catch Lcom/dolphin/browser/j/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 52
    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method
