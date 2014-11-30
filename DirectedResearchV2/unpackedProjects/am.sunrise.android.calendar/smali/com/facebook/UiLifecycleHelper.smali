.class public Lcom/facebook/UiLifecycleHelper;
.super Ljava/lang/Object;
.source "UiLifecycleHelper.java"


# static fields
.field private static final ACTIVITY_NULL_MESSAGE:Ljava/lang/String; = "activity cannot be null"

.field private static final DIALOG_CALL_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private final broadcastManager:Landroid/support/v4/a/g;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    .line 70
    iput-object p2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    .line 71
    new-instance v0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/UiLifecycleHelper;Lcom/facebook/UiLifecycleHelper$1;)V

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {p1}, Landroid/support/v4/a/g;->a(Landroid/content/Context;)Landroid/support/v4/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/a/g;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 5

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    .line 295
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    const-string v2, "com.facebook.platform.protocol.CALL_ID"

    const-string v3, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    const-string v2, "UnknownError"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v3

    invoke-static {v0, v2, v3, v1, p1}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 307
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 308
    return-void
.end method

.method private handleFacebookDialogActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 256
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 260
    :cond_1
    if-nez p3, :cond_2

    .line 263
    invoke-direct {p0, p4}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    goto :goto_0

    .line 267
    :cond_2
    const-string v1, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_4

    .line 271
    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-static {v1, v3, p1, p3, p4}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 287
    :goto_2
    iput-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 284
    :cond_3
    invoke-direct {p0, p4}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/AppEventsLogger;->isValidForSession(Lcom/facebook/Session;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v1, :cond_2

    .line 225
    invoke-static {}, Lcom/facebook/AppEventsLogger;->onContextStop()V

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 129
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/UiLifecycleHelper;->handleFacebookDialogActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 89
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 91
    :cond_2
    if-eqz p1, :cond_3

    .line 92
    const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 94
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/a/g;

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/g;->a(Landroid/content/BroadcastReceiver;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 105
    :cond_0
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 111
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/a/g;

    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/g;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 157
    const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 179
    invoke-static {}, Lcom/facebook/AppEventsLogger;->onContextStop()V

    .line 180
    return-void
.end method

.method public trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Facebook"

    const-string v1, "Tracking new app call while one is still pending; canceling pending call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 202
    return-void
.end method
