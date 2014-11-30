.class public Lcom/playhaven/src/publishersdk/content/PHRequestRouter;
.super Ljava/lang/Object;
.source "PHRequestRouter.java"


# static fields
.field private static mCurUrl:Landroid/net/Uri;


# instance fields
.field mRoutes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mRoutes:Ljava/util/Hashtable;

    .line 19
    return-void
.end method

.method public static clearCurrentURL()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    .line 81
    return-void
.end method

.method public static getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 34
    const-class v1, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    if-nez v2, :cond_0

    monitor-exit v1

    move-object v1, v3

    .line 41
    :goto_0
    return-object v1

    .line 37
    :cond_0
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "param":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    monitor-exit v1

    move-object v1, v3

    goto :goto_0

    .line 41
    :cond_2
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 34
    .end local v0    # "param":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurrentURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_0
    monitor-exit v0

    return-object v1

    .line 29
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stripQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v2, "?"

    .line 50
    const/4 v0, 0x0

    const-string v1, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    const-string v1, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 50
    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addRoute(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mRoutes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public clearRoutes()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mRoutes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 85
    return-void
.end method

.method public hasRoute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mRoutes:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public route(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    .line 68
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mCurUrl:Landroid/net/Uri;

    if-nez v2, :cond_0

    monitor-exit p0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "stripped":Ljava/lang/String;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->mRoutes:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 74
    .local v0, "route":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "route":Ljava/lang/Runnable;
    .end local v1    # "stripped":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
