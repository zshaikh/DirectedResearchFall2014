.class Lcom/somo/apptimiser/SomoDispatch;
.super Ljava/lang/Object;
.source "SomoDispatch.java"

# interfaces
.implements Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;,
        Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;
    }
.end annotation


# static fields
.field private static final MESSAGE_SEND:I = 0x10

.field private static hasAccessNetStatePermission:Ljava/lang/Boolean;

.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mErrorBackoff:Ljava/lang/Long;

.field private final mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;

.field private final mFeedback:Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;

.field private mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

.field private final mNetworkAgent:Lcom/somo/apptimiser/SomoNetworkAgent;

.field private mThread:Landroid/os/HandlerThread;

.field private prefs:Lcom/somo/apptimiser/SomoPreferences;

.field private uploadRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/somo/apptimiser/SomoDispatch;->hasAccessNetStatePermission:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/somo/apptimiser/SomoNetworkAgent;Lcom/somo/apptimiser/SomoEventQueue;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "agent"    # Lcom/somo/apptimiser/SomoNetworkAgent;
    .param p3, "eventQueue"    # Lcom/somo/apptimiser/SomoEventQueue;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    .line 115
    new-instance v0, Lcom/somo/apptimiser/SomoDispatch$2;

    invoke-direct {v0, p0}, Lcom/somo/apptimiser/SomoDispatch$2;-><init>(Lcom/somo/apptimiser/SomoDispatch;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->uploadRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/somo/apptimiser/SomoDispatch;->mNetworkAgent:Lcom/somo/apptimiser/SomoNetworkAgent;

    .line 59
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoDispatch;->getStatusUpdater()Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mFeedback:Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;

    .line 60
    iput-object p3, p0, Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SomoApptimiser"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoDispatch;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;-><init>(Lcom/somo/apptimiser/SomoDispatch;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    .line 64
    new-instance v0, Lcom/somo/apptimiser/SomoPreferences;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/somo/apptimiser/SomoPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->prefs:Lcom/somo/apptimiser/SomoPreferences;

    .line 65
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoDispatch;->start()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/somo/apptimiser/SomoDispatch;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$102(Lcom/somo/apptimiser/SomoDispatch;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$200()Lcom/somo/apptimiser/SomoLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/somo/apptimiser/SomoDispatch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoDispatch;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/somo/apptimiser/SomoDispatch;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/somo/apptimiser/SomoDispatch;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoEventQueue;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mFeedback:Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;

    return-object v0
.end method

.method static synthetic access$800(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mNetworkAgent:Lcom/somo/apptimiser/SomoNetworkAgent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/somo/apptimiser/SomoDispatch;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->uploadRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isConnected()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 176
    sget-object v3, Lcom/somo/apptimiser/SomoDispatch;->hasAccessNetStatePermission:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, "netState":I
    new-instance v6, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v3, v4

    :goto_0
    invoke-direct {v6, v3}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v6, Lcom/somo/apptimiser/SomoDispatch;->hasAccessNetStatePermission:Ljava/lang/Boolean;

    .line 182
    .end local v2    # "netState":I
    :cond_0
    sget-object v3, Lcom/somo/apptimiser/SomoDispatch;->hasAccessNetStatePermission:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 184
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    .line 188
    .local v0, "connected":Z
    :goto_1
    return v0

    .end local v0    # "connected":Z
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "netState":I
    :cond_1
    move v3, v5

    .line 179
    goto :goto_0

    .end local v2    # "netState":I
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    move v0, v5

    .line 184
    goto :goto_1

    .line 186
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SomoApptimiser SDK requires ACCESS_NETWORK_STATE permission"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 247
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    .line 248
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->prefs:Lcom/somo/apptimiser/SomoPreferences;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoPreferences;->edit()Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setDispatchBackoff(J)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoPreferences$Editor;->commit()Z

    .line 249
    return-void
.end method

.method getModeration()J
    .locals 9

    .prologue
    .line 198
    const-wide/16 v2, 0x0

    .line 199
    .local v2, "moderationDelay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "current":J
    iget-object v5, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    monitor-enter v5

    .line 206
    :try_start_0
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-lez v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 209
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    sget-object v4, Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v5, "Moderating by %d millis"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    return-wide v2

    .line 209
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method getStatusUpdater()Lcom/somo/apptimiser/SomoDispatch$StatusUpdate;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/somo/apptimiser/SomoDispatch$1;

    invoke-direct {v0, p0}, Lcom/somo/apptimiser/SomoDispatch$1;-><init>(Lcom/somo/apptimiser/SomoDispatch;)V

    return-object v0
.end method

.method public notifyEventAdded()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 238
    sget-object v0, Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "notifyEventAdded"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    invoke-virtual {v0, v3}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoDispatch;->getModeration()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    return-void
.end method

.method start()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 255
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->prefs:Lcom/somo/apptimiser/SomoPreferences;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoPreferences;->getDispatchBackoff()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    .line 257
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoEventQueue;->getEventCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    invoke-virtual {v0, v4}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->removeMessages(I)V

    .line 259
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoDispatch;->getModeration()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;

    invoke-virtual {v0, p0}, Lcom/somo/apptimiser/SomoEventQueue;->addObserver(Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;)Z

    .line 262
    return-void
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iput-object v3, p0, Lcom/somo/apptimiser/SomoDispatch;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mEventQueue:Lcom/somo/apptimiser/SomoEventQueue;

    invoke-virtual {v0, p0}, Lcom/somo/apptimiser/SomoEventQueue;->removeObserver(Lcom/somo/apptimiser/SomoEventQueue$SomoEventObserver;)Z

    .line 274
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->prefs:Lcom/somo/apptimiser/SomoPreferences;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoPreferences;->edit()Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/somo/apptimiser/SomoDispatch;->mErrorBackoff:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setDispatchBackoff(J)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoPreferences$Editor;->commit()Z

    .line 275
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    invoke-virtual {v0, v3}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 276
    return-void
.end method
