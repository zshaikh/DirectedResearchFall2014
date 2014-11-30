.class public Lcom/acmeaom/android/a/a/b/s;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/acmeaom/android/a/a/b/s;


# instance fields
.field private c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/acmeaom/android/a/a/b/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/b/s;->a:Z

    .line 12
    new-instance v0, Lcom/acmeaom/android/a/a/b/s;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/s;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/a/b/s;->b:Lcom/acmeaom/android/a/a/b/s;

    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/s;->c:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/b/s;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/acmeaom/android/a/a/b/s;->b:Lcom/acmeaom/android/a/a/b/s;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/v;
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Lcom/acmeaom/android/a/a/b/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/a/b/v;-><init>(Lcom/acmeaom/android/a/a/b/s;Lcom/acmeaom/android/a/a/b/t;)V

    .line 94
    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/b/r;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p1, Lcom/acmeaom/android/a/a/b/r;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/acmeaom/android/a/a/b/r;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/a/b/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public declared-synchronized a(Lcom/acmeaom/android/a/a/b/u;)V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/v;

    .line 62
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/b/v;->a(Lcom/acmeaom/android/a/a/b/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/acmeaom/android/a/a/b/s;->a:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/acmeaom/android/a/a/b/s;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/v;

    move-result-object v0

    .line 86
    invoke-static {v0, p1, p2}, Lcom/acmeaom/android/a/a/b/v;->a(Lcom/acmeaom/android/a/a/b/v;Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/v;

    .line 77
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {v0, p2}, Lcom/acmeaom/android/a/a/b/v;->a(Lcom/acmeaom/android/a/a/b/v;Ljava/lang/Object;)V

    goto :goto_0
.end method
