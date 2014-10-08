.class public Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;
.super Ljava/lang/Object;
.source "IMAdInterstitialFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Lcom/adobe/fre/FREContext;

.field public mAdRequest:Lcom/inmobi/androidsdk/IMAdRequest;

.field private mIMAdInListener:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

.field public mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

.field private testMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->testMode:Z

    .line 47
    new-instance v0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;

    invoke-direct {v0, p0}, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction$1;-><init>(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)V

    iput-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInListener:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;)Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->context:Lcom/adobe/fre/FREContext;

    .line 29
    :try_start_0
    const-string v1, "IMAdInterstitialFunction"

    const-string v2, "IMAdInterstitialFunction initializing  333 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->appId:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->testMode:Z

    .line 32
    new-instance v1, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    iput-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mAdRequest:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 33
    iget-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mAdRequest:Lcom/inmobi/androidsdk/IMAdRequest;

    iget-boolean v2, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->testMode:Z

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 35
    iget-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->appId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 37
    iget-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    iget-object v2, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInListener:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mIMAdInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    iget-object v2, p0, Lcom/bitrhymes/inmobiext/IMAdInterstitialFunction;->mAdRequest:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 41
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
