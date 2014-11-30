.class public abstract Lcom/vungle/sdk/net/http/VungleHttpRequest;
.super Lcom/vungle/sdk/ah;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/sdk/ah;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/vungle/sdk/ah;->d()V

    .line 21
    return-void
.end method

.method protected final g()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 25
    invoke-super {p0}, Lcom/vungle/sdk/ah;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string v1, "X-VUNGLE-BUNDLE-ID"

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "X-VUNGLE-LANGUAGE"

    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "X-VUNGLE-TIMEZONE"

    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/vungle/sdk/net/http/VungleHttpRequest;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const-string v1, "X-VUNG-AUTHORIZATION"

    invoke-virtual {p0}, Lcom/vungle/sdk/net/http/VungleHttpRequest;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/sdk/VungleUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "X-VUNG-DATE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-object v0
.end method
