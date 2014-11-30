.class public Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;
.super Landroid/app/Activity;
.source "FbSdkAuthActivity.java"


# instance fields
.field private cbid:Ljava/lang/String;

.field private destroyingCalled:Z

.field private fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

.field private finishException:Ljava/lang/Throwable;

.field private isAlertShown:Z

.field private needToDispatchAfterClose:Z

.field private permissions:[Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->needToDispatchAfterClose:Z

    .line 18
    iput-boolean v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroyingCalled:Z

    .line 142
    iput-boolean v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->isAlertShown:Z

    .line 11
    return-void
.end method

.method private finishWithAlert()V
    .locals 3

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->isAlertShown:Z

    if-nez v1, :cond_0

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Error occurred logging into Facebook, please try later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 150
    const-string v1, "OK"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity$1;

    invoke-direct {v2, p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity$1;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 160
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method


# virtual methods
.method protected destroying()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "FbSdkAuthActivity Destroying"

    .line 102
    iget-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroyingCalled:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroyingCalled:Z

    .line 104
    const-string v0, "FbSdkAuthActivity Destroying"

    invoke-static {v2, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getInstance()Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    iget-boolean v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->needToDispatchAfterClose:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getInstance()Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v0

    iget-boolean v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->success:Z

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->cbid:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishException:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    move-object v3, v4

    .line 108
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->onActivityDestroy(ZLjava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishException:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "FbSdkAuthActivity Destroying"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context initialized = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/playtika/extensions/fbsdk/FbSdkContext;->initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishWithAlert()V

    goto :goto_1
.end method

.method public finish(ZZLjava/lang/Throwable;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "needDispatch"    # Z
    .param p3, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->success:Z

    .line 28
    iput-boolean p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->needToDispatchAfterClose:Z

    .line 29
    iput-object p3, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishException:Ljava/lang/Throwable;

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 32
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-string v2, "FbSdkAuthActivity onActivityResult"

    .line 129
    const-string v0, "FbSdkAuthActivity onActivityResult"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resultCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v0, "FbSdkAuthActivity onActivityResult"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context initialized = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/playtika/extensions/fbsdk/FbSdkContext;->initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishWithAlert()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const-string v3, "FbSdkAuthActivity onCreate"

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-boolean v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroyingCalled:Z

    .line 39
    const-string v1, "FbSdkAuthActivity onCreate"

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getInstance()Lcom/playtika/extensions/fbsdk/FbSdkContext;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .line 43
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cbid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->cbid:Ljava/lang/String;

    .line 44
    const-string v1, "FbSdkAuthActivity onCreate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->cbid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->permissions:[Ljava/lang/String;

    .line 46
    const-string v1, "FbSdkAuthActivity onCreate"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "permissions = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->permissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v3, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "achievedPermissions"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .local v0, "extendingPermissions":Z
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "FbSdkAuthActivity onCreate"

    const-string v1, ""

    invoke-static {v3, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->cbid:Ljava/lang/String;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->permissions:[Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->updateSessionPermissions(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->fbContext:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->cbid:Ljava/lang/String;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->permissions:[Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->authorizeWithActivity(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    const-string v1, "FbSdkAuthActivity onCreate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Context initialized = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/playtika/extensions/fbsdk/FbSdkContext;->initialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finishWithAlert()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroying()V

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "FbSdkAuthActivity onPause"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroying()V

    .line 84
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 68
    const-string v0, "FbSdkAuthActivity onRestart"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    const-string v0, "FbSdkAuthActivity onResume"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 123
    const-string v0, "FbSdkAuthActivity onStart"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "FbSdkAuthActivity onStop"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 90
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->destroying()V

    .line 93
    :cond_0
    return-void
.end method
