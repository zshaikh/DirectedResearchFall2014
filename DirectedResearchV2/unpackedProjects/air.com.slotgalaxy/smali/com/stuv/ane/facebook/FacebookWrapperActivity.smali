.class public Lcom/stuv/ane/facebook/FacebookWrapperActivity;
.super Landroid/app/Activity;
.source "FacebookWrapperActivity.java"


# instance fields
.field private _exception:Ljava/lang/Exception;

.field private _gotResult:Z

.field private _usingSSO:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/stuv/ane/facebook/FacebookWrapperActivity;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->_gotResult:Z

    return v0
.end method

.method static synthetic access$1(Lcom/stuv/ane/facebook/FacebookWrapperActivity;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->_exception:Ljava/lang/Exception;

    return-void
.end method

.method static synthetic access$2(Lcom/stuv/ane/facebook/FacebookWrapperActivity;Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->_gotResult:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-string v3, ","

    .line 112
    const-string v0, "authorizeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/stuv/ane/facebook/FacebookWrapper;->externalActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->finish()V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v0, "Fb"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->_exception:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->externalSessionResult(Ljava/lang/Exception;)V

    .line 107
    const-string v0, "Fb"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    const-string v0, "Fb"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const-string v6, "Fb"

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 37
    .local v2, "session":Lcom/facebook/Session;
    const-string v4, "Fb"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onResume: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v3, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;

    invoke-direct {v3, p0}, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;-><init>(Lcom/stuv/ane/facebook/FacebookWrapperActivity;)V

    .line 76
    .local v3, "statusCallback":Lcom/facebook/Session$StatusCallback;
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "readPermissions"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "readPermissions":Ljava/lang/String;
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 80
    .local v0, "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 82
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 84
    invoke-virtual {v0, v3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 86
    const-string v4, "Fb"

    const-string v4, "openForRead"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 92
    return-void
.end method
