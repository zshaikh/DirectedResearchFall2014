.class Lcom/fusepowered/m2/m2l/MraidBanner;
.super Lcom/fusepowered/m2/m2l/CustomEventBanner;
.source "MraidBanner.java"


# instance fields
.field private mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

.field private mMraidView:Lcom/fusepowered/m2/m2l/MraidView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidBanner;->onReady()V

    return-void
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidBanner;->onFail()V

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidBanner;->onExpand()V

    return-void
.end method

.method static synthetic access$3(Lcom/fusepowered/m2/m2l/MraidBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidBanner;->onClose()V

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .parameter
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
    .line 97
    .local p1, serverExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initMraidListener()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidBanner$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidBanner$1;-><init>(Lcom/fusepowered/m2/m2l/MraidBanner;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->setMraidListener(Lcom/fusepowered/m2/m2l/MraidView$MraidListener;)V

    .line 115
    return-void
.end method

.method private onClose()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 94
    return-void
.end method

.method private onExpand()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 89
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 90
    return-void
.end method

.method private onFail()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 85
    return-void
.end method

.method private onReady()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method private resetMraidListener()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->setMraidListener(Lcom/fusepowered/m2/m2l/MraidView$MraidListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter "customEventBannerListener"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;",
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
    .line 55
    .local p3, localExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, serverExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    .line 58
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/MraidBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "Html-Response-Body"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, htmlData:Ljava/lang/String;
    invoke-static {p3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->extractFromMap(Ljava/util/Map;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v0

    .line 66
    .local v0, adConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/factories/MraidViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    .line 67
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v2, v1}, Lcom/fusepowered/m2/m2l/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidBanner;->initMraidListener()V

    .line 69
    .end local v0           #adConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    .end local v1           #htmlData:Ljava/lang/String;
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    sget-object v3, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v2, v3}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidBanner;->resetMraidListener()V

    .line 75
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBanner;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->destroy()V

    .line 77
    :cond_0
    return-void
.end method
