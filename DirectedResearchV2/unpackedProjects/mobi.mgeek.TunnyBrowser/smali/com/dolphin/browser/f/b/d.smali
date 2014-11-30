.class public Lcom/dolphin/browser/f/b/d;
.super Ljava/util/Observable;
.source "NotificationsManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/f/b/d;


# instance fields
.field private b:Lcom/dolphin/browser/f/b/b;

.field private c:Lcom/dolphin/browser/f/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/f/b/d;->a:Lcom/dolphin/browser/f/b/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 32
    new-instance v0, Lcom/dolphin/browser/f/b/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/f/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    .line 33
    return-void
.end method

.method public static a()Lcom/dolphin/browser/f/b/d;
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/f/b/d;->a:Lcom/dolphin/browser/f/b/d;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/dolphin/browser/f/b/d;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/f/b/d;->a:Lcom/dolphin/browser/f/b/d;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/dolphin/browser/f/b/d;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/f/b/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/f/b/d;->a:Lcom/dolphin/browser/f/b/d;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/dolphin/browser/f/b/d;->a:Lcom/dolphin/browser/f/b/d;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/dolphin/browser/f/b/a;)Z
    .locals 7

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/dolphin/browser/f/b/a;->c()Z

    move-result v1

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/b;->a()Ljava/util/List;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/b/a;

    .line 94
    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolphin/browser/f/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/a;->b()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/dolphin/browser/f/b/a;->b()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/a;->c()Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/f/b/d;)Z
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dolphin/browser/f/b/d;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/f/b/d;)V
    .locals 0

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/dolphin/browser/f/b/d;->setChanged()V

    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/dolphin/browser/f/b/g;->a()Lcom/dolphin/browser/f/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/f/b/b;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/f/b/g;->a(J)Lcom/dolphin/browser/f/b/c;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-virtual {v1}, Lcom/dolphin/browser/f/b/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/dolphin/browser/f/b/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/b/a;

    .line 79
    invoke-direct {p0, v0}, Lcom/dolphin/browser/f/b/d;->a(Lcom/dolphin/browser/f/b/a;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/f/b/a;->a(Z)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/f/b/c;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/f/b/b;->a(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/f/b/c;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/f/b/b;->a(J)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/b;->a()Ljava/util/List;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/b/a;

    .line 125
    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/f/b/a;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/b/b;->a(Ljava/util/List;)V

    .line 132
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->c:Lcom/dolphin/browser/f/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->c:Lcom/dolphin/browser/f/b/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/f;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Lcom/dolphin/browser/f/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/f/b/f;-><init>(Lcom/dolphin/browser/f/b/d;Lcom/dolphin/browser/f/b/e;)V

    iput-object v0, p0, Lcom/dolphin/browser/f/b/d;->c:Lcom/dolphin/browser/f/b/f;

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->c:Lcom/dolphin/browser/f/b/f;

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 43
    :cond_1
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/f/b/d;->b:Lcom/dolphin/browser/f/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
