.class final Lcom/google/android/gms/internal/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ao;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ao;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/ao;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/ao;

    invoke-static {v0}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/internal/ao;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/ao;

    invoke-static {v0}, Lcom/google/android/gms/internal/ao;->b(Lcom/google/android/gms/internal/ao;)Lcom/google/android/gms/internal/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->b_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/ao;

    invoke-static {v0}, Lcom/google/android/gms/internal/ao;->b(Lcom/google/android/gms/internal/ao;)Lcom/google/android/gms/internal/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/ao;

    invoke-static {v0}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/internal/ao;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ap;->a:Lcom/google/android/gms/internal/ao;

    invoke-static {v0}, Lcom/google/android/gms/internal/ao;->b(Lcom/google/android/gms/internal/ao;)Lcom/google/android/gms/internal/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/aq;->b()Landroid/os/Bundle;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/h;->a(Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v0, "GmsClientEvents"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
