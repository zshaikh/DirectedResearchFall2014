.class public Lcom/aarki/AarkiInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Install Referrer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    invoke-static {p0, v0}, Lcom/aarki/Aarki;->registerInstall(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p1, p2}, Lcom/aarki/AarkiInstallReceiver;->registerInstall(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    return-void
.end method
