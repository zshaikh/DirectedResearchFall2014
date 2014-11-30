.class public Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/fusepowered/m2/m2l/MoPubView;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoPubInterstitialView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 285
    invoke-direct {p0, p2}, Lcom/fusepowered/m2/m2l/MoPubView;-><init>(Landroid/content/Context;)V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    .line 287
    return-void
.end method


# virtual methods
.method protected adFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$2(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mInterstitialAdListener:Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$2(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-interface {v0, v1, p1}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected loadCustomEvent(Ljava/util/Map;)V
    .locals 4
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
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MoPub"

    .line 291
    if-nez p1, :cond_0

    .line 292
    const-string v0, "MoPub"

    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->invalidate()V

    .line 301
    :cond_1
    const-string v0, "MoPub"

    const-string v0, "Loading custom event interstitial adapter."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 304
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    .line 305
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    sget-object v1, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-static {v3, v0, v1}, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;->create(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$1(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;)V

    .line 307
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->setAdapterListener(Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;)V

    .line 308
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    # getter for: Lcom/fusepowered/m2/m2l/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->access$0(Lcom/fusepowered/m2/m2l/MoPubInterstitial;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;->loadInterstitial()V

    goto :goto_0
.end method

.method protected trackImpression()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "MoPub"

    const-string v1, "Tracking impression for interstitial."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->trackImpression()V

    .line 314
    :cond_0
    return-void
.end method
