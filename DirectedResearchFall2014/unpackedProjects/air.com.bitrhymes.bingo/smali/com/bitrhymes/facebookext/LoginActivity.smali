.class public Lcom/bitrhymes/facebookext/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;
    }
.end annotation


# instance fields
.field private reauthorize:Z

.field private statusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;-><init>(Lcom/bitrhymes/facebookext/LoginActivity;Lcom/bitrhymes/facebookext/LoginActivity$SessionStatusCallback;)V

    iput-object v0, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/facebookext/LoginActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 196
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->onCancel()V

    .line 224
    return-void
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 228
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "fb_auth"

    const-string v2, "failed,"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 230
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    .line 231
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v13, "null exception"

    const-string v12, "failed,"

    const-string v11, "fb_auth"

    .line 35
    const-string v7, "Login.onCreate"

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 39
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-nez v7, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    .line 153
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/bitrhymes/facebookext/LoginActivity;->requestWindowFeature(I)Z

    .line 47
    const-string v7, "layout.fb_main"

    invoke-virtual {v0, v7}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/bitrhymes/facebookext/LoginActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 51
    .local v2, extras:Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    const-string v7, "permissions"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .local v4, permissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "type"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, type:Ljava/lang/String;
    const-string v7, "reauthorize"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login FacebookExtContext.session "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login session.isClosed "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v8}, Lcom/facebook/Session;->isClosed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v8}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login session.isOpened : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v8}, Lcom/facebook/Session;->isOpened()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 59
    iget-boolean v7, p0, Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z

    if-eqz v7, :cond_5

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " reauthorize : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/bitrhymes/facebookext/LoginActivity;->reauthorize:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 64
    :try_start_0
    const-string v7, "read"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "email"

    aput-object v8, v5, v7

    .line 67
    .local v5, permissionsArray:[Ljava/lang/String;
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 68
    new-instance v8, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v8, p0, v5}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 69
    iget-object v9, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v8

    .line 67
    invoke-virtual {v7, v8}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 79
    .end local v5           #permissionsArray:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 81
    .local v1, exception:Lcom/facebook/FacebookException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login FacebookException : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 82
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 83
    .local v3, msg:Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v8, "fb_auth"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "failed,"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sput-object v10, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto/16 :goto_0

    .line 73
    .end local v1           #exception:Lcom/facebook/FacebookException;
    .end local v3           #msg:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 74
    new-instance v8, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-direct {v8, p0, v4}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 75
    iget-object v9, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v8

    .line 73
    invoke-virtual {v7, v8}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 86
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 88
    .local v1, exception:Ljava/lang/UnsupportedOperationException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login UnsupportedOperationException : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 89
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 90
    .restart local v3       #msg:Ljava/lang/String;
    :goto_2
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v8, "fb_auth"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "failed,"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sput-object v10, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto/16 :goto_0

    .line 82
    .end local v3           #msg:Ljava/lang/String;
    .local v1, exception:Lcom/facebook/FacebookException;
    :cond_3
    const-string v7, "null exception"

    move-object v3, v13

    goto :goto_1

    .line 89
    .local v1, exception:Ljava/lang/UnsupportedOperationException;
    :cond_4
    const-string v7, "null exception"

    move-object v3, v13

    goto :goto_2

    .line 94
    .end local v1           #exception:Ljava/lang/UnsupportedOperationException;
    :cond_5
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v7}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-nez v7, :cond_a

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login session.isOpened : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v8}, Lcom/facebook/Session;->isOpened()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 99
    :try_start_2
    const-string v7, "Login session.isOpened : try "

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 101
    const-string v7, "read"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login read : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 104
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "email"

    aput-object v8, v5, v7

    .line 105
    .restart local v5       #permissionsArray:[Ljava/lang/String;
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    new-instance v8, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v8, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 106
    invoke-virtual {v8, v5}, Lcom/facebook/Session$OpenRequest;->setPermissions([Ljava/lang/String;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    .line 107
    iget-object v9, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    .line 105
    invoke-virtual {v7, v8}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login FacebookExtContext.session : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login statusCallback : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login read done: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 129
    .end local v5           #permissionsArray:[Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 131
    .local v1, exception:Lcom/facebook/FacebookException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login FacebookException : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 132
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 133
    .restart local v3       #msg:Ljava/lang/String;
    :goto_3
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v8, "fb_auth"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "failed,"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sput-object v10, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto/16 :goto_0

    .line 113
    .end local v1           #exception:Lcom/facebook/FacebookException;
    .end local v3           #msg:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v7, "publish"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login publish  : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 116
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    new-instance v8, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v8, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 117
    invoke-virtual {v8, v4}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    .line 118
    iget-object v9, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    .line 116
    invoke-virtual {v7, v8}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V
    :try_end_3
    .catch Lcom/facebook/FacebookException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 136
    :catch_3
    move-exception v7

    move-object v1, v7

    .line 138
    .local v1, exception:Ljava/lang/UnsupportedOperationException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login UnsupportedOperationException : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 139
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 140
    .restart local v3       #msg:Ljava/lang/String;
    :goto_4
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v8, "fb_auth"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "failed,"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sput-object v10, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto/16 :goto_0

    .line 122
    .end local v1           #exception:Ljava/lang/UnsupportedOperationException;
    .end local v3           #msg:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v7, "Login session.isOpened else: "

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 123
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    new-instance v8, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v8, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 124
    invoke-virtual {v8, v4}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    .line 125
    iget-object v9, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    .line 123
    invoke-virtual {v7, v8}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V
    :try_end_4
    .catch Lcom/facebook/FacebookException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 132
    .local v1, exception:Lcom/facebook/FacebookException;
    :cond_8
    const-string v7, "null exception"

    move-object v3, v13

    goto/16 :goto_3

    .line 139
    .local v1, exception:Ljava/lang/UnsupportedOperationException;
    :cond_9
    const-string v7, "null exception"

    move-object v3, v13

    goto :goto_4

    .line 146
    .end local v1           #exception:Ljava/lang/UnsupportedOperationException;
    :cond_a
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v8, "fb_auth"

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "success,"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v9}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 148
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v9}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual {v7, v11, v8}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v7, "Login else : "

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 212
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->onBackPressed()V

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    sget-object v1, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    .line 204
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 205
    .local v0, session:Lcom/facebook/Session;
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 207
    .end local v0           #session:Lcom/facebook/Session;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 177
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 185
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/bitrhymes/facebookext/LoginActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 187
    :cond_0
    return-void
.end method

.method public printHashKey()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "air.com.bitrhymes.slotsipad"

    .line 159
    const/16 v5, 0x40

    .line 158
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 160
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v6

    :goto_0
    if-lt v5, v4, :cond_0

    .line 171
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .line 160
    .restart local v0       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    aget-object v2, v3, v5

    .line 161
    .local v2, signature:Landroid/content/pm/Signature;
    const-string v6, "SHA"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 162
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 163
    const-string v6, "TEMPTAGHASH KEY:"

    .line 164
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #signature:Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 166
    :catch_1
    move-exception v3

    goto :goto_1
.end method
