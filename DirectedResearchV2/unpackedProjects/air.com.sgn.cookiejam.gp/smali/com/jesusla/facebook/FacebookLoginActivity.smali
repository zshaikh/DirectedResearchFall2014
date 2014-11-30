.class public Lcom/jesusla/facebook/FacebookLoginActivity;
.super Landroid/app/Activity;
.source "FacebookLoginActivity.java"


# instance fields
.field private callback:Lcom/facebook/Session$StatusCallback;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    new-instance v0, Lcom/jesusla/facebook/FacebookLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/jesusla/facebook/FacebookLoginActivity$1;-><init>(Lcom/jesusla/facebook/FacebookLoginActivity;)V

    iput-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->callback:Lcom/facebook/Session$StatusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/jesusla/facebook/FacebookLoginActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/jesusla/facebook/FacebookLoginActivity;
    .param p1, "x1"    # Lcom/facebook/Session;
    .param p2, "x2"    # Lcom/facebook/SessionState;
    .param p3, "x3"    # Ljava/lang/Exception;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/jesusla/facebook/FacebookLoginActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 77
    sget-object v0, Lcom/jesusla/facebook/FacebookLib;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 79
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-ne p2, v0, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLoginActivity;->finish()V

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v2, Lcom/facebook/UiLifecycleHelper;

    iget-object v3, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v2, p0, v3}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v2, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 27
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 32
    .local v1, "session":Lcom/facebook/Session;
    if-nez v1, :cond_0

    .line 33
    const-string v2, "Session is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 38
    .local v0, "request":Lcom/facebook/Session$OpenRequest;
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0

    .line 40
    .end local v0    # "request":Lcom/facebook/Session$OpenRequest;
    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v2, v3}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 67
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 49
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLoginActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
