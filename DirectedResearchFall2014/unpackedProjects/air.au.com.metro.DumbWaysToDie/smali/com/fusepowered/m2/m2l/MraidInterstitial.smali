.class Lcom/fusepowered/m2/m2l/MraidInterstitial;
.super Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;
.source "MraidInterstitial.java"


# instance fields
.field private mHtmlData:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
    .parameter
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
    .line 47
    .local p1, serverExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected preRenderHtml(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .parameter "customEventInterstitialListener"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/fusepowered/m2/m2l/M2RActivity;->preRenderHtml(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected showInterstitial()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidInterstitial;->mHtmlData:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidInterstitial;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m2/m2l/M2RActivity;->start(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    .line 58
    return-void
.end method
