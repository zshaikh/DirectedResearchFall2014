.class public Lcom/redbox/android/http/AndroidNetworkConnectivityListener;
.super Ljava/lang/Object;
.source "AndroidNetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;,
        Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;
    }
.end annotation


# static fields
.field private static instance:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;


# instance fields
.field private isUsingMobile:Z

.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->isUsingMobile:Z

    .line 113
    sget-object v0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;->UNKNOWN:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    .line 114
    new-instance v0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;)V

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mReceiver:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$1(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$10(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    return-void
.end method

.method static synthetic access$3(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method static synthetic access$4(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method static synthetic access$5(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->isUsingMobile:Z

    return-void
.end method

.method static synthetic access$7(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mIsFailover:Z

    return-void
.end method

.method static synthetic access$9(Lcom/redbox/android/http/AndroidNetworkConnectivityListener;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public static getInstance()Lcom/redbox/android/http/AndroidNetworkConnectivityListener;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->instance:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    invoke-direct {v0}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;-><init>()V

    sput-object v0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->instance:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    .line 124
    :cond_0
    sget-object v0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->instance:Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public isNetworkConnected()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mState:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    sget-object v1, Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;->CONNECTED:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingMobileNetwork()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->isUsingMobile:Z

    return v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mReceiver:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mReceiver:Lcom/redbox/android/http/AndroidNetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mIsFailover:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method
