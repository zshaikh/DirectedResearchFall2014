.class Lcom/applovin/impl/adview/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/AppLovinVideoCallback;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->notifyJavaScriptOfNewState(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$200(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$200(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPercentViewed()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DLjava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$200(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPercentViewed()I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DLjava/lang/Boolean;)V

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->destroyVideoOverlay()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->FAILED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->adVideoPlaybackListener:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$100(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->currentAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$200(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DLjava/lang/Boolean;)V

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    #getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->stopUnderlyingMediaPlayer()V

    goto/16 :goto_0
.end method
