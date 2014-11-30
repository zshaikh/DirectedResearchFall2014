.class public Lcom/acmeaom/android/myradar/app/notifications/MyRadarGCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/b/a;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 22
    invoke-virtual {v0, p2}, Lcom/google/android/gms/b/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    const-string v2, "send_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 41
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3, v3}, Lcom/acmeaom/android/myradar/app/notifications/MyRadarGCMReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 42
    return-void

    .line 28
    :cond_1
    const-string v2, "deleted_messages"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-string v2, "gcm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->e(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/app/notifications/e;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
