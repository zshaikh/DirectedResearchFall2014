.class public Lcom/acmeaom/android/a/g/q;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static final b:Lcom/acmeaom/android/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/g/q;->a:Ljava/util/HashMap;

    .line 21
    const-class v0, Lcom/acmeaom/android/a/g/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/a/g/q;->b:Lcom/acmeaom/android/a/c/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/acmeaom/android/a/g/q;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/acmeaom/android/a/g/s;)V
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/acmeaom/android/a/g/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/acmeaom/android/a/g/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/t;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/g/t;->a(Lcom/acmeaom/android/a/g/t;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit v1

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/acmeaom/android/a/g/s;J)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/acmeaom/android/a/g/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/a/g/t;-><init>(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/g/r;)V

    .line 67
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 68
    sget-object v1, Lcom/acmeaom/android/a/g/q;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/acmeaom/android/a/c/b;->a:Lcom/acmeaom/android/a/c/b;

    invoke-static {v1, p1, p2}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/b;J)Lcom/acmeaom/android/a/c/j;

    move-result-object v1

    sget-object v2, Lcom/acmeaom/android/a/g/q;->b:Lcom/acmeaom/android/a/c/c;

    invoke-static {v1, v2, v0}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/j;Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public static declared-synchronized a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V
    .locals 6

    .prologue
    .line 61
    const-class v1, Lcom/acmeaom/android/a/g/q;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p1, Lcom/acmeaom/android/a/a/b/aj;->b:D

    const-wide v4, 0x41cdcd6500000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v1

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/j;)V
    .locals 4

    .prologue
    .line 56
    const-class v1, Lcom/acmeaom/android/a/g/q;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/j;->g()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v1

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
