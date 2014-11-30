.class public Lcom/dolphin/browser/download/m;
.super Ljava/lang/Object;
.source "FileCategoryManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/download/m;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dolphin/browser/download/a;",
            "Lcom/dolphin/browser/download/ui/bl;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/dolphin/browser/download/ui/bn;

.field private e:Lcom/dolphin/browser/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/f",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    .line 30
    new-instance v0, Lcom/dolphin/browser/download/ui/bn;

    sget-object v1, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/download/ui/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/m;->d:Lcom/dolphin/browser/download/ui/bn;

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    sget-object v1, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    new-instance v2, Lcom/dolphin/browser/download/ui/bl;

    sget-object v3, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/download/ui/bl;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;
    .locals 2

    .prologue
    .line 42
    sput-object p0, Lcom/dolphin/browser/download/m;->b:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/dolphin/browser/download/m;->a:Lcom/dolphin/browser/download/m;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/dolphin/browser/download/m;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/download/m;->a:Lcom/dolphin/browser/download/m;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/dolphin/browser/download/m;

    invoke-direct {v0}, Lcom/dolphin/browser/download/m;-><init>()V

    sput-object v0, Lcom/dolphin/browser/download/m;->a:Lcom/dolphin/browser/download/m;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/dolphin/browser/download/m;->a:Lcom/dolphin/browser/download/m;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/m;)Lcom/dolphin/browser/download/ui/bn;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->d:Lcom/dolphin/browser/download/ui/bn;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/download/m;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/bl;

    return-object v0
.end method

.method public a()Lcom/dolphin/browser/download/ui/bn;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->d:Lcom/dolphin/browser/download/ui/bn;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->d:Lcom/dolphin/browser/download/ui/bn;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bn;->c()V

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/bl;

    .line 64
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->c()V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->e:Lcom/dolphin/browser/util/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/m;->e:Lcom/dolphin/browser/util/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/f;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->e:Lcom/dolphin/browser/util/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->b(Z)Z

    .line 76
    :cond_0
    new-instance v0, Lcom/dolphin/browser/download/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/n;-><init>(Lcom/dolphin/browser/download/m;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/m;->e:Lcom/dolphin/browser/util/f;

    .line 149
    invoke-virtual {p0}, Lcom/dolphin/browser/download/m;->b()V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/download/m;->e:Lcom/dolphin/browser/util/f;

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 152
    return-void
.end method
