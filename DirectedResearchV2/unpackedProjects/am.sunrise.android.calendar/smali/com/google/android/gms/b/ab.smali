.class final Lcom/google/android/gms/b/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service connected, binder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-static {p2}, Lcom/google/android/gms/internal/q;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/p;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/aa;->a(Lcom/google/android/gms/b/aa;Lcom/google/android/gms/internal/p;)Lcom/google/android/gms/internal/p;

    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-static {v0}, Lcom/google/android/gms/b/aa;->a(Lcom/google/android/gms/b/aa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-static {v0}, Lcom/google/android/gms/b/aa;->b(Lcom/google/android/gms/b/aa;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-static {v0, v2}, Lcom/google/android/gms/b/aa;->a(Lcom/google/android/gms/b/aa;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-static {v0}, Lcom/google/android/gms/b/aa;->c(Lcom/google/android/gms/b/aa;)Lcom/google/android/gms/b/ad;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/ad;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/aa;->a(Lcom/google/android/gms/b/aa;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/b/ab;->a:Lcom/google/android/gms/b/aa;

    invoke-static {v0}, Lcom/google/android/gms/b/aa;->d(Lcom/google/android/gms/b/aa;)Lcom/google/android/gms/b/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/ac;->e()V

    return-void
.end method
