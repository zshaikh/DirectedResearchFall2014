.class Lcom/acmeaom/android/a/f/w;
.super Lcom/acmeaom/android/a/f/t;
.source "ProGuard"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/a/f/t;-><init>(Lcom/acmeaom/android/a/f/p;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/a/f/p;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/w;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/acmeaom/android/a/j/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/acmeaom/android/a/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v1

    new-instance v2, Lcom/acmeaom/android/a/f/x;

    invoke-direct {v2, p0, v0}, Lcom/acmeaom/android/a/f/x;-><init>(Lcom/acmeaom/android/a/f/w;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
