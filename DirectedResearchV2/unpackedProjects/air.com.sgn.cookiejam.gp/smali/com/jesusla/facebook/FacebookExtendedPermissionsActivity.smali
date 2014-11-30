.class public Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;
.super Landroid/app/Activity;
.source "FacebookExtendedPermissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;
    }
.end annotation


# static fields
.field private static activity:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;


# instance fields
.field private callback:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->activity:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 42
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "type"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "type":Ljava/lang/String;
    const-string v8, "permissions"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "permissions":[Ljava/lang/String;
    const-string v8, "callback_hash"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "callbackHash":Ljava/lang/String;
    new-instance v8, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;

    invoke-direct {v8, p0, v0}, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;-><init>(Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->callback:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;

    .line 48
    new-instance v8, Lcom/facebook/UiLifecycleHelper;

    iget-object v9, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->callback:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity$SessionStatusCallback;

    invoke-direct {v8, p0, v9}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v8, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 49
    iget-object v8, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v8, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v6

    .line 54
    .local v6, "session":Lcom/facebook/Session;
    if-nez v6, :cond_0

    .line 55
    const-string v8, "Session is null"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->finish()V

    .line 59
    :cond_0
    sput-object p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->activity:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    .line 61
    const-string v8, "publish"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 62
    const-string v8, "defaultAudience"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "defaultAudience":I
    sparse-switch v2, :sswitch_data_0

    .line 76
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->NONE:Lcom/facebook/SessionDefaultAudience;

    .line 79
    .local v1, "da":Lcom/facebook/SessionDefaultAudience;
    :goto_0
    new-instance v8, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v8, p0, v5}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v4

    .line 81
    .local v4, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    invoke-virtual {v6, v4}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 86
    .end local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    .end local v2    # "defaultAudience":I
    .end local v4    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_1
    :goto_1
    return-void

    .line 67
    .restart local v2    # "defaultAudience":I
    :sswitch_0
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->ONLY_ME:Lcom/facebook/SessionDefaultAudience;

    .line 68
    .restart local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    goto :goto_0

    .line 70
    .end local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    :sswitch_1
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    .line 71
    .restart local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    goto :goto_0

    .line 73
    .end local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    :sswitch_2
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->EVERYONE:Lcom/facebook/SessionDefaultAudience;

    .line 74
    .restart local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    goto :goto_0

    .line 82
    .end local v1    # "da":Lcom/facebook/SessionDefaultAudience;
    .end local v2    # "defaultAudience":I
    :cond_2
    const-string v8, "read"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 83
    new-instance v4, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v4, p0, v5}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 84
    .restart local v4    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    invoke-virtual {v6, v4}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_1

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->activity:Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 92
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method
