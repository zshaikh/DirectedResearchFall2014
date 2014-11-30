.class public Lcom/facebook/UiLifecycleHelper;
.super Ljava/lang/Object;
.source "UiLifecycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_NULL_MESSAGE:Ljava/lang/String; = "activity cannot be null"

.field private static final DIALOG_CALL_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    .line 68
    new-instance v0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/UiLifecycleHelper;Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 69
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 5
    .param p1, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    .line 308
    .local v1, "pendingIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v2, "com.facebook.platform.protocol.CALL_ID"

    const-string v3, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    const-string v3, "UnknownError"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iget-object v4, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v4}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v4

    invoke-static {v2, v3, v4, v0, p1}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 317
    .end local v0    # "cancelIntent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 318
    return-void
.end method

.method private handleFacebookDialogActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    const/4 v2, 0x1

    .line 270
    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 271
    :cond_0
    const/4 v2, 0x0

    .line 301
    :goto_0
    return v2

    .line 274
    :cond_1
    if-nez p3, :cond_2

    .line 277
    invoke-direct {p0, p4}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    goto :goto_0

    .line 281
    :cond_2
    const-string v3, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "callIdString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 283
    .local v0, "callId":Ljava/util/UUID;
    if-eqz v1, :cond_3

    .line 285
    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-static {v3, v4, p1, p3, p4}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 300
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    goto :goto_0

    .line 297
    :cond_4
    invoke-direct {p0, p4}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    goto :goto_2

    .line 286
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 231
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/AppEventsLogger;->isValidForSession(Lcom/facebook/Session;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v1, :cond_2

    .line 239
    invoke-static {}, Lcom/facebook/AppEventsLogger;->onContextStop()V

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 148
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    .line 159
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 160
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 164
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/UiLifecycleHelper;->handleFacebookDialogActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 79
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_2

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v1, v2, v3, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v0

    .line 83
    :cond_0
    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 88
    :cond_2
    if-eqz p1, :cond_3

    .line 89
    const-string v1, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/FacebookDialog$PendingCall;

    iput-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 91
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 101
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_2

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v1, v2, v3, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v0

    .line 105
    :cond_0
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 110
    :cond_2
    if-eqz p1, :cond_3

    .line 111
    const-string v1, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/FacebookDialog$PendingCall;

    iput-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 113
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 186
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 190
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 119
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 120
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 124
    :cond_0
    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 130
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 174
    const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 196
    invoke-static {}, Lcom/facebook/AppEventsLogger;->onContextStop()V

    .line 197
    return-void
.end method

.method public trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    .locals 2
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "Facebook"

    const-string v1, "Tracking new app call while one is still pending; canceling pending call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 219
    return-void
.end method
