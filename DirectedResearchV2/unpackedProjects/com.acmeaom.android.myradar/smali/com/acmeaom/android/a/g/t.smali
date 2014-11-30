.class Lcom/acmeaom/android/a/g/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private final b:Lcom/acmeaom/android/a/g/s;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/acmeaom/android/a/g/s;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/a/g/t;->b:Lcom/acmeaom/android/a/g/s;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/acmeaom/android/a/g/t;->c:J

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/g/r;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/acmeaom/android/a/g/t;-><init>(Lcom/acmeaom/android/a/g/s;)V

    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/a/g/t;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/acmeaom/android/a/g/t;->a:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/acmeaom/android/a/g/t;->a:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/g/t;->b:Lcom/acmeaom/android/a/g/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/acmeaom/android/a/g/t;->b:Lcom/acmeaom/android/a/g/s;

    invoke-interface {v0}, Lcom/acmeaom/android/a/g/s;->f()V

    .line 42
    :cond_1
    const-class v1, Lcom/acmeaom/android/a/g/q;

    monitor-enter v1

    .line 43
    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/a/g/q;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/acmeaom/android/a/g/t;->b:Lcom/acmeaom/android/a/g/s;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2

    invoke-static {}, Lcom/acmeaom/android/a/g/q;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/acmeaom/android/a/g/t;->b:Lcom/acmeaom/android/a/g/s;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
