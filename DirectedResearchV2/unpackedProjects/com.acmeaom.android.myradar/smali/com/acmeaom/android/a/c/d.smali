.class Lcom/acmeaom/android/a/c/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Landroid/os/Looper;

.field final synthetic b:Lcom/acmeaom/android/a/c/c;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/c/c;[Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/acmeaom/android/a/c/d;->b:Lcom/acmeaom/android/a/c/c;

    iput-object p2, p0, Lcom/acmeaom/android/a/c/d;->a:[Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 104
    iget-object v0, p0, Lcom/acmeaom/android/a/c/d;->a:[Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    iget-object v1, p0, Lcom/acmeaom/android/a/c/d;->a:[Landroid/os/Looper;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/c/d;->a:[Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
