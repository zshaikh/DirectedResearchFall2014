.class public Lcom/facebook/internal/SessionTracker;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;,
        Lcom/facebook/internal/SessionTracker$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private session:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .param p3, "session"    # Lcom/facebook/Session;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .param p3, "session"    # Lcom/facebook/Session;
    .param p4, "startTracking"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    .line 74
    new-instance v0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/facebook/internal/SessionTracker$CallbackWrapper;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    .line 75
    iput-object p3, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    .line 76
    new-instance v0, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 79
    if-eqz p4, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method private addBroadcastReceiver()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 203
    return-void
.end method


# virtual methods
.method public getOpenSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 101
    .local v0, "openSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    .end local v0    # "openSession":Lcom/facebook/Session;
    :goto_0
    return-object v0

    .restart local v0    # "openSession":Lcom/facebook/Session;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    goto :goto_0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    return v0
.end method

.method public isTrackingActiveSession()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 3
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    .line 119
    invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v1, :cond_3

    .line 128
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 129
    .local v0, "activeSession":Lcom/facebook/Session;
    if-eqz v0, :cond_2

    .line 130
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    .end local v0    # "activeSession":Lcom/facebook/Session;
    :goto_1
    iput-object p1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    .line 140
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_1
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 158
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 170
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    goto :goto_0
.end method
