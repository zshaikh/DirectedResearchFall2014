.class Lcom/acmeaom/android/a/c/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/c/g;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/c/g;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0}, Lcom/acmeaom/android/a/c/g;->a(Lcom/acmeaom/android/a/c/g;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0}, Lcom/acmeaom/android/a/c/g;->a(Lcom/acmeaom/android/a/c/g;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/c/g;->a(Lcom/acmeaom/android/a/c/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 62
    iget-object v0, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0}, Lcom/acmeaom/android/a/c/g;->b(Lcom/acmeaom/android/a/c/g;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    iget-object v2, p0, Lcom/acmeaom/android/a/c/h;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v2}, Lcom/acmeaom/android/a/c/g;->b(Lcom/acmeaom/android/a/c/g;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/c/g;->a(I)V

    .line 67
    :cond_1
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
