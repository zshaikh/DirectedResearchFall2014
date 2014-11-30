.class public abstract Lcom/sgn/googleservices/GPServicesActivity;
.super Landroid/app/Activity;
.source "GPServicesActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final ERROR_APP_MISCONFIGURED:I = 0x65

.field private static final ERROR_CANCELLED:I = 0x66

.field private static final ERROR_NETWORK_FAILURE:I = 0x64

.field private static final REQUEST_RESOLVE_ERROR:I = 0x3e9

.field private static final STATE_RESOLVING_ERROR:Ljava/lang/String; = "resolving_error"


# instance fields
.field private debugLog:Z

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mResolvingError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sgn/googleservices/GPServicesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sgn/googleservices/GPServicesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    return p1
.end method

.method private sendLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->debugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "GPServicesActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorDialog with errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sgn/googleservices/GPServicesActivity;->sendLog(Ljava/lang/String;)V

    .line 161
    const/16 v1, 0x3e9

    invoke-static {p1, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 162
    .local v0, "errorDialog":Landroid/app/Dialog;
    new-instance v1, Lcom/sgn/googleservices/GPServicesActivity$1;

    invoke-direct {v1, p0}, Lcom/sgn/googleservices/GPServicesActivity$1;-><init>(Lcom/sgn/googleservices/GPServicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 169
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 59
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 66
    :cond_0
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 54
    return-void
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult - requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->sendLog(Ljava/lang/String;)V

    .line 110
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    .line 112
    sparse-switch p2, :sswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 115
    :sswitch_0
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "onActivityResult - reconnecting"

    invoke-direct {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->sendLog(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 122
    :sswitch_1
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->onSignInFailed(I)V

    goto :goto_0

    .line 125
    :sswitch_2
    invoke-static {p0}, Lcom/sgn/googleservices/LogTools;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 126
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->onSignInFailed(I)V

    goto :goto_0

    .line 130
    :sswitch_3
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->onSignInFailed(I)V

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x2712 -> :sswitch_3
        0x2714 -> :sswitch_2
        0x2716 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const-string v0, "onConnected"

    invoke-direct {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->sendLog(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/sgn/googleservices/GPServicesActivity;->onSignInSucceeded()V

    .line 93
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v3, 0x1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFailed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sgn/googleservices/GPServicesActivity;->sendLog(Ljava/lang/String;)V

    .line 71
    iget-boolean v1, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    .line 77
    const/16 v1, 0x3e9

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    iget-object v1, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 84
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sgn/googleservices/GPServicesActivity;->showErrorDialog(I)V

    .line 85
    iput-boolean v3, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended - returnValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sgn/googleservices/GPServicesActivity;->sendLog(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 100
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_0

    const-string v0, "resolving_error"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    .line 46
    return-void

    :cond_0
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "resolving_error"

    iget-boolean v1, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method abstract onSignInFailed(I)V
.end method

.method abstract onSignInSucceeded()V
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 145
    iget-boolean v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mResolvingError:Z

    if-nez v0, :cond_0

    .line 148
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sgn/googleservices/GPServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 156
    :cond_0
    return-void
.end method

.method public setDebugLog(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sgn/googleservices/GPServicesActivity;->debugLog:Z

    return-void
.end method
