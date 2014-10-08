.class Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;
.super Lcom/fusepowered/m1/android/MMBroadcastReceiver;
.source "MillennialInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MillennialInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MillennialBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;-><init>()V

    return-void
.end method

.method private fetchFinished(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 2
    .param p1, "errorToReport"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    const-string v1, "MoPub"

    .line 166
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mMillennialInterstitial:Lcom/fusepowered/m1/android/MMInterstitial;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$1(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m1/android/MMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "MoPub"

    const-string v0, "Millennial interstitial ad loaded successfully."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "MoPub"

    const-string v0, "Millennial interstitial ad failed to load."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method


# virtual methods
.method public displayStarted(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->displayStarted(Lcom/fusepowered/m1/android/MMAd;)V

    .line 139
    const-string v0, "MoPub"

    const-string v1, "Showing Millennial interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 141
    return-void
.end method

.method public fetchFailure(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->fetchFailure(Lcom/fusepowered/m1/android/MMAd;)V

    .line 133
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->fetchFinished(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 134
    return-void
.end method

.method public fetchFinishedCaching(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->fetchFinishedCaching(Lcom/fusepowered/m1/android/MMAd;)V

    .line 113
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->fetchFinished(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 114
    return-void
.end method

.method public getAdFailure(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->getAdFailure(Lcom/fusepowered/m1/android/MMAd;)V

    .line 119
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 121
    return-void
.end method

.method public intentStarted(Lcom/fusepowered/m1/android/MMAd;Ljava/lang/String;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;
    .param p2, "intent"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->intentStarted(Lcom/fusepowered/m1/android/MMAd;Ljava/lang/String;)V

    .line 126
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 128
    return-void
.end method

.method public overlayClosed(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->overlayClosed(Lcom/fusepowered/m1/android/MMAd;)V

    .line 146
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialInterstitial;->mInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MillennialInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 148
    return-void
.end method

.method register(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method unregister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iput-object v3, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 163
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MoPub"

    const-string v2, "Unable to unregister MMBroadcastReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iput-object v3, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 160
    .end local v0    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 161
    iput-object v3, p0, Lcom/fusepowered/m2/m2l/MillennialInterstitial$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 162
    throw v1
.end method
