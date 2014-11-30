.class public Lcom/facebook/LoginActivity;
.super Lcom/facebook/ane/AneActivity;
.source "LoginActivity.java"


# static fields
.field private static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginActivity:Result"

.field private static final SAVED_AUTH_CLIENT:Ljava/lang/String; = "authorizationClient"

.field private static final SAVED_CALLING_PKG_KEY:Ljava/lang/String; = "callingPackage"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private callingPackage:Ljava/lang/String;

.field private request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/ane/AneActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/LoginActivity;->onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method static synthetic access$1()Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    return-object v0
.end method

.method private onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 5
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 111
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 113
    iget-object v3, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v4, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    .line 115
    .local v1, "resultCode":I
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "com.facebook.LoginActivity:Result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v1, v2}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    .line 123
    return-void

    .line 113
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "resultCode":I
    .end local v2    # "resultIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
    .locals 2
    .param p0, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 180
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f030001

    .line 59
    invoke-super {p0, p1}, Lcom/facebook/ane/AneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget-object v1, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "layout.com_facebook_login_activity_layout"

    invoke-virtual {v1, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/LoginActivity;->setContentView(I)V

    .line 66
    if-eqz p1, :cond_2

    .line 67
    const-string v1, "callingPackage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    .line 68
    const-string v1, "authorizationClient"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/facebook/AuthorizationClient;

    iput-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, p0}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/app/Activity;)V

    .line 76
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v3, Lcom/facebook/LoginActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v1, v3}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 83
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v3, Lcom/facebook/LoginActivity$2;

    invoke-direct {v3, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v1, v3}, Lcom/facebook/AuthorizationClient;->setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V

    .line 100
    sget-object v1, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v2, "layout.com_facebook_login_activity_layout"

    invoke-virtual {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "bg":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 103
    sget-object v1, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    const-string v2, "Background found, setting transparent color"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    :goto_2
    return-void

    .end local v0    # "bg":Landroid/view/View;
    :cond_1
    move v1, v2

    .line 64
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/facebook/AuthorizationClient;

    invoke-direct {v1}, Lcom/facebook/AuthorizationClient;-><init>()V

    iput-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "request"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    iput-object v1, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    goto :goto_1

    .line 106
    .restart local v0    # "bg":Landroid/view/View;
    :cond_3
    sget-object v1, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    const-string v2, "Background NOT found !!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/facebook/ane/AneActivity;->onPause()V

    .line 153
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->cancelCurrentHandler()V

    .line 156
    :cond_0
    sget-object v1, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/facebook/LoginActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v2, "id.com_facebook_login_activity_progress_bar"

    invoke-virtual {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 159
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_1
    return-void

    .line 157
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    const v1, 0x7f040005

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/facebook/ane/AneActivity;->onResume()V

    .line 132
    iget-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 133
    sget-object v1, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    iget-object v2, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1, v2}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    const-string v2, "Resources.NotFoundException caught"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/facebook/ane/AneActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string v0, "callingPackage"

    iget-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "authorizationClient"

    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 170
    return-void
.end method
