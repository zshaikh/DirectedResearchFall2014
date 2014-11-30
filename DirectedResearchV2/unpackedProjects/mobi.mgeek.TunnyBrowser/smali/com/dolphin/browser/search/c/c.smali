.class public Lcom/dolphin/browser/search/c/c;
.super Ljava/lang/Object;
.source "SearchPromotionManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/search/c/c;


# instance fields
.field private b:Lcom/dolphin/browser/search/c/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/dolphin/browser/search/c/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/c/c;->b:Lcom/dolphin/browser/search/c/d;

    .line 26
    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/c/c;
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/search/c/c;->a:Lcom/dolphin/browser/search/c/c;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/dolphin/browser/search/c/c;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/search/c/c;->a:Lcom/dolphin/browser/search/c/c;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/dolphin/browser/search/c/c;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/search/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/search/c/c;->a:Lcom/dolphin/browser/search/c/c;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/c/c;->a:Lcom/dolphin/browser/search/c/c;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object p1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/c/c;->b:Lcom/dolphin/browser/search/c/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/d;->b()Lcom/dolphin/browser/search/c/b;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 67
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/search/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/c/a;

    .line 70
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/search/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/URIUtil;->isTargetDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/search/c/c;->b:Lcom/dolphin/browser/search/c/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/d;->a()V

    .line 43
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/search/c/c;->b:Lcom/dolphin/browser/search/c/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/d;->c()V

    .line 48
    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/search/c/c;->b:Lcom/dolphin/browser/search/c/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/d;->b()Lcom/dolphin/browser/search/c/b;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/c/a;

    .line 91
    invoke-virtual {v0}, Lcom/dolphin/browser/search/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 94
    goto :goto_0
.end method
