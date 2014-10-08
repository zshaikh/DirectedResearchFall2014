.class abstract Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;
.super Lcom/fusepowered/m2/m2l/CustomEventInterstitial;
.source "ResponseBodyInterstitial.java"


# instance fields
.field protected mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

.field private mBroadcastReceiver:Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;

.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract extractExtras(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected loadInterstitial(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p4}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->extractExtras(Ljava/util/Map;)V

    .line 67
    invoke-static {p3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->extractFromMap(Ljava/util/Map;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    .line 68
    new-instance v0, Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;

    invoke-direct {v0, p2}, Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;

    .line 69
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->preRenderHtml(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/EventForwardingBroadcastReceiver;->unregister()V

    .line 79
    :cond_0
    return-void
.end method

.method protected abstract preRenderHtml(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V
.end method

.method protected abstract showInterstitial()V
.end method
