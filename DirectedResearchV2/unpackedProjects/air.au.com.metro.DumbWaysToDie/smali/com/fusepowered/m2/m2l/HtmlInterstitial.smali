.class public Lcom/fusepowered/m2/m2l/HtmlInterstitial;
.super Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;
.source "HtmlInterstitial.java"


# instance fields
.field private mClickthroughUrl:Ljava/lang/String;

.field private mHtmlData:Ljava/lang/String;

.field private mIsScrollable:Z

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 52
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    .line 53
    const-string v0, "Scrollable"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mIsScrollable:Z

    .line 54
    const-string v0, "Redirect-Url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mRedirectUrl:Ljava/lang/String;

    .line 55
    const-string v0, "Clickthrough-Url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected preRenderHtml(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/fusepowered/m2/m2l/M2Activity;->preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected showInterstitial()V
    .locals 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mHtmlData:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mIsScrollable:Z

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mRedirectUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mClickthroughUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitial;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/M2Activity;->start(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    .line 66
    return-void
.end method
