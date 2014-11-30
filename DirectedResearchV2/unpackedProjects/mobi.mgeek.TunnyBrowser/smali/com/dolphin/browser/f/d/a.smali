.class public Lcom/dolphin/browser/f/d/a;
.super Ljava/lang/Object;
.source "Requester.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/f/d/a;


# instance fields
.field private b:Lcom/dolphin/browser/j/a/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/dolphin/browser/j/a/b;

    const-string v1, "TopSites"

    invoke-direct {v0, v1}, Lcom/dolphin/browser/j/a/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/d/a;->b:Lcom/dolphin/browser/j/a/b;

    .line 38
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/f/d/a;
    .locals 3

    .prologue
    .line 25
    const-class v1, Lcom/dolphin/browser/f/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/f/d/a;->a:Lcom/dolphin/browser/f/d/a;

    if-nez v0, :cond_1

    .line 26
    const-class v2, Lcom/dolphin/browser/f/d/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/f/d/a;->a:Lcom/dolphin/browser/f/d/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/dolphin/browser/f/d/a;

    invoke-direct {v0}, Lcom/dolphin/browser/f/d/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/f/d/a;->a:Lcom/dolphin/browser/f/d/a;

    .line 30
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    :try_start_2
    sget-object v0, Lcom/dolphin/browser/f/d/a;->a:Lcom/dolphin/browser/f/d/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 30
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

    .line 25
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    const-string v0, "http://opsen.dolphin-browser.com/api/1/topsite.json"

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

    .line 63
    const-string v3, "pn"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vn"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mt"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bs;->a(Landroid/content/Context;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/dolphin/browser/f/d/c;
    .locals 4

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/f/d/a;->b:Lcom/dolphin/browser/j/a/b;

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/f/d/a;->b(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dolphin/browser/f/d/c;

    invoke-direct {v3}, Lcom/dolphin/browser/f/d/c;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/j/a/b;->a(Ljava/lang/String;Lcom/dolphin/browser/j/a/a;)Lcom/dolphin/browser/j/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/d/c;
    :try_end_0
    .catch Lcom/dolphin/browser/j/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method
