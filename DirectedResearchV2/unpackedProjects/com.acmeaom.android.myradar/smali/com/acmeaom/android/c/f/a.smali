.class public abstract Lcom/acmeaom/android/c/f/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;
.implements Lcom/acmeaom/android/a/g/s;


# instance fields
.field private final a:Lcom/acmeaom/android/a/a/b/aj;

.field private b:Z

.field protected final c:Lcom/acmeaom/android/c/d/e;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/acmeaom/android/c/f/a;->c:Lcom/acmeaom/android/c/d/e;

    .line 34
    iput-object p2, p0, Lcom/acmeaom/android/c/f/a;->a:Lcom/acmeaom/android/a/a/b/aj;

    .line 35
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->s()V

    .line 37
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/c/f/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/f/b;-><init>(Lcom/acmeaom/android/c/f/a;)V

    const-string v2, "UIApplicationDidReceiveMemoryWarningNotification"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/c/f/a;->b:Z

    .line 43
    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->r()V

    .line 96
    :cond_0
    return-void
.end method

.method public abstract e()V
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->c()V

    .line 57
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;)V

    .line 47
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->e()V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->f()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 73
    invoke-virtual {p0}, Lcom/acmeaom/android/c/f/a;->g()V

    goto :goto_0
.end method

.method protected s()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/c/f/a;->a:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v0, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    sget-object v2, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v2, Lcom/acmeaom/android/a/a/b/aj;->b:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/acmeaom/android/c/f/a;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 81
    :cond_0
    return-void
.end method

.method public t()Lcom/acmeaom/android/c/d/e;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/acmeaom/android/c/f/a;->c:Lcom/acmeaom/android/c/d/e;

    return-object v0
.end method
