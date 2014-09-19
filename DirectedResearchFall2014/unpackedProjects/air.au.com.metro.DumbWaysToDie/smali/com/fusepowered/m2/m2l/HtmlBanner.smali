.class public Lcom/fusepowered/m2/m2l/HtmlBanner;
.super Lcom/fusepowered/m2/m2l/CustomEventBanner;
.source "HtmlBanner.java"


# instance fields
.field private mHtmlBannerWebView:Lcom/fusepowered/m2/m2l/HtmlBannerWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/CustomEventBanner;-><init>()V

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
    .line 86
    .local p1, serverExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
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
    .line 62
    .local p3, localExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, serverExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p4}, Lcom/fusepowered/m2/m2l/HtmlBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Html-Response-Body"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, htmlData:Ljava/lang/String;
    const-string v0, "Redirect-Url"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, redirectUrl:Ljava/lang/String;
    const-string v0, "Clickthrough-Url"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, clickthroughUrl:Ljava/lang/String;
    const-string v0, "Scrollable"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 72
    .local v7, isScrollable:Ljava/lang/Boolean;
    invoke-static {p3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->extractFromMap(Ljava/util/Map;)Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v5

    .line 73
    .local v5, adConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;->create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBanner;->mHtmlBannerWebView:Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBanner;->mHtmlBannerWebView:Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBanner;->mHtmlBannerWebView:Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    invoke-virtual {v0, v6}, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 76
    .end local v3           #redirectUrl:Ljava/lang/String;
    .end local v4           #clickthroughUrl:Ljava/lang/String;
    .end local v5           #adConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;
    .end local v6           #htmlData:Ljava/lang/String;
    .end local v7           #isScrollable:Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBanner;->mHtmlBannerWebView:Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBanner;->mHtmlBannerWebView:Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;->destroy()V

    .line 83
    :cond_0
    return-void
.end method
