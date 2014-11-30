.class Lcom/applovin/impl/adview/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/s;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/s;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    iget-object v1, p0, Lcom/applovin/impl/adview/s;->a:Lcom/applovin/impl/adview/AdViewControllerJsInterface;

    # getter for: Lcom/applovin/impl/adview/AdViewControllerJsInterface;->videoOverlay:Lcom/applovin/impl/adview/AppLovinVideoOverlay;
    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->access$300(Lcom/applovin/impl/adview/AdViewControllerJsInterface;)Lcom/applovin/impl/adview/AppLovinVideoOverlay;

    move-result-object v1

    invoke-interface {v1}, Lcom/applovin/impl/adview/AppLovinVideoOverlay;->getPlaybackState()Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerJsInterface;->notifyJavaScriptOfNewState(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    return-void
.end method
