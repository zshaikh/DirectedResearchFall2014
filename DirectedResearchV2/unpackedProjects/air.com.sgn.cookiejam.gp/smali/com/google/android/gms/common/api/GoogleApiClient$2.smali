.class Lcom/google/android/gms/common/api/GoogleApiClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nq:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->e(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->f(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$2;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
