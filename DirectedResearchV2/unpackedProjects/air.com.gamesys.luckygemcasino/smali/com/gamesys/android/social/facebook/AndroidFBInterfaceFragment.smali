.class public Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;
.super Lcom/facebook/ane/AneFragment;
.source "AndroidFBInterfaceFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public btn:Lcom/facebook/ane/AneLoginButton;

.field private fbApplicationID:Ljava/lang/String;

.field private isUnitTesting:Z

.field private permissions:[Ljava/lang/String;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/facebook/ane/AneFragment;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->isUnitTesting:Z

    .line 24
    iput-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->btn:Lcom/facebook/ane/AneLoginButton;

    .line 26
    iput-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->fbApplicationID:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->permissions:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method private action_login(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->btn:Lcom/facebook/ane/AneLoginButton;

    iget-object v0, v0, Lcom/facebook/ane/AneLoginButton;->clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;

    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->btn:Lcom/facebook/ane/AneLoginButton;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton$LoginClickListener;->onClick(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private decideAction(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    sget-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    iget-object v0, v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->fbApplicationID:Ljava/lang/String;

    .line 71
    const-string v0, "com.gamesys.android.facebook.ane.PARAM_KEY_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->permissions:[Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->tryLogin:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->tryLogin:Z

    .line 74
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->fbApplicationID:Ljava/lang/String;

    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->permissions:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->action_login(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ane/AneFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/facebook/ane/AneFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    iget-boolean v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->isUnitTesting:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v0, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->setAndroidContext(Landroid/content/Context;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/facebook/ane/AneFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 38
    const-string v1, "FLAG_UNIT_TESTING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->isUnitTesting:Z

    .line 39
    new-instance v1, Lcom/facebook/ane/AneLoginButton;

    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ane/AneLoginButton;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->btn:Lcom/facebook/ane/AneLoginButton;

    .line 40
    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->btn:Lcom/facebook/ane/AneLoginButton;

    invoke-virtual {v1, p0}, Lcom/facebook/ane/AneLoginButton;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 43
    :cond_0
    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-nez v1, :cond_1

    .line 44
    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->handleNullAsContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    new-instance v2, Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getStatusCallback()Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v2, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 48
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_3

    const-string v1, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, p1, v1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->decideAction(Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 47
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 48
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/facebook/ane/AneFragment;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 92
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/facebook/ane/AneFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 108
    invoke-super {p0}, Lcom/facebook/ane/AneFragment;->onResume()V

    .line 113
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 114
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_2

    .line 116
    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getStatusCallback()Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 122
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 123
    return-void

    .line 118
    :cond_2
    sget-object v1, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-virtual {p0, v1, v2}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->handleNullAsContext(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/facebook/ane/AneFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public performLogin()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->fbApplicationID:Ljava/lang/String;

    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->permissions:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->action_login(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    return-void
.end method
