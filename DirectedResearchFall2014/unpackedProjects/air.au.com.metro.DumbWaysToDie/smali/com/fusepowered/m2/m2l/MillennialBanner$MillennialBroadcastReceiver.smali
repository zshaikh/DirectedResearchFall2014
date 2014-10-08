.class Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;
.super Lcom/fusepowered/m1/android/MMBroadcastReceiver;
.source "MillennialBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MillennialBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MillennialBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MillennialBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MillennialBanner;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialBanner;

    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdFailure(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->getAdFailure(Lcom/fusepowered/m1/android/MMAd;)V

    .line 121
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialBanner;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialBanner;->access$0(Lcom/fusepowered/m2/m2l/MillennialBanner;)Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 123
    return-void
.end method

.method public getAdSuccess(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->getAdSuccess(Lcom/fusepowered/m1/android/MMAd;)V

    .line 114
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialBanner;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialBanner;->access$0(Lcom/fusepowered/m2/m2l/MillennialBanner;)Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialBanner;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialBanner;->mMillennialAdView:Lcom/fusepowered/m1/android/MMAdView;
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MillennialBanner;->access$1(Lcom/fusepowered/m2/m2l/MillennialBanner;)Lcom/fusepowered/m1/android/MMAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public intentStarted(Lcom/fusepowered/m1/android/MMAd;Ljava/lang/String;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;
    .param p2, "intent"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->intentStarted(Lcom/fusepowered/m1/android/MMAd;Ljava/lang/String;)V

    .line 128
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->this$0:Lcom/fusepowered/m2/m2l/MillennialBanner;

    # getter for: Lcom/fusepowered/m2/m2l/MillennialBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MillennialBanner;->access$0(Lcom/fusepowered/m2/m2l/MillennialBanner;)Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 130
    return-void
.end method

.method register(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method unregister()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iput-object v3, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 145
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 141
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MoPub"

    const-string v2, "Unable to unregister MMBroadcastReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iput-object v3, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 142
    .end local v0    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 143
    iput-object v3, p0, Lcom/fusepowered/m2/m2l/MillennialBanner$MillennialBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 144
    throw v1
.end method
