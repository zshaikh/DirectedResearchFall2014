.class Lcom/applovin/impl/adview/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinLogger;

.field final synthetic b:Lcom/applovin/impl/adview/AppLovinVideoCallback;

.field final synthetic c:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;Lcom/applovin/sdk/AppLovinLogger;Lcom/applovin/impl/adview/AppLovinVideoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/y;->c:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    iput-object p2, p0, Lcom/applovin/impl/adview/y;->a:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p3, p0, Lcom/applovin/impl/adview/y;->b:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/y;->a:Lcom/applovin/sdk/AppLovinLogger;

    invoke-static {}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLovinVideoView playback failed with error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/y;->b:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->FAILED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoCallback;->onPlaybackStateChanged(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    const/4 v0, 0x1

    return v0
.end method
