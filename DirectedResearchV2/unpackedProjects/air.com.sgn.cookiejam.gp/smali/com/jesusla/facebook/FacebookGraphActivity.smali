.class public Lcom/jesusla/facebook/FacebookGraphActivity;
.super Landroid/app/Activity;
.source "FacebookGraphActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;
    }
.end annotation


# static fields
.field private static activity:Lcom/jesusla/facebook/FacebookGraphActivity;


# instance fields
.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    return-void
.end method

.method static synthetic access$000()Lcom/jesusla/facebook/FacebookGraphActivity;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/jesusla/facebook/FacebookGraphActivity;->activity:Lcom/jesusla/facebook/FacebookGraphActivity;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v12, "params"

    const-string v11, "method"

    const-string v10, "callback_hash"

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v8, Lcom/facebook/UiLifecycleHelper;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v8, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 42
    iget-object v8, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v8, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v7

    .line 47
    .local v7, "session":Lcom/facebook/Session;
    if-nez v7, :cond_0

    .line 48
    const-string v8, "Session is null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookGraphActivity;->finish()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookGraphActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 54
    .local v3, "intent":Landroid/content/Intent;
    sput-object p0, Lcom/jesusla/facebook/FacebookGraphActivity;->activity:Lcom/jesusla/facebook/FacebookGraphActivity;

    .line 56
    const-string v8, "method"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "method":Ljava/lang/String;
    const-string v8, "params"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 58
    .local v5, "params":Landroid/os/Bundle;
    const-string v8, "callback_hash"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "callbackHash":Ljava/lang/String;
    const-string v8, "method"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 62
    const-string v8, "params"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 63
    const-string v8, "callback_hash"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;

    invoke-direct {v1, p0, v0}, Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;-><init>(Lcom/jesusla/facebook/FacebookGraphActivity;Ljava/lang/String;)V

    .line 67
    .local v1, "dialogCallback":Lcom/jesusla/facebook/FacebookGraphActivity$WebDialogCompleteListener;
    const-string v8, "feed"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 68
    new-instance v8, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v9

    invoke-direct {v8, p0, v9, v5}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    invoke-virtual {v8, v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/facebook/FacebookGraphActivity;
    check-cast p0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v2

    .line 70
    .local v2, "feedDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v2}, Lcom/facebook/widget/WebDialog;->show()V

    .line 76
    .end local v2    # "feedDialog":Lcom/facebook/widget/WebDialog;
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local p0    # "this":Lcom/jesusla/facebook/FacebookGraphActivity;
    :cond_2
    const-string v8, "apprequests"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 72
    new-instance v8, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v9

    invoke-direct {v8, p0, v9, v5}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    invoke-virtual {v8, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/facebook/FacebookGraphActivity;
    check-cast p0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v6

    .line 74
    .local v6, "requestDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v6}, Lcom/facebook/widget/WebDialog;->show()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/jesusla/facebook/FacebookGraphActivity;->activity:Lcom/jesusla/facebook/FacebookGraphActivity;

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 82
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookGraphActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method
