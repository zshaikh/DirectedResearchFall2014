.class Lcom/applovin/impl/adview/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/z;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/z;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/aa;->a:Lcom/applovin/impl/adview/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/aa;->a:Lcom/applovin/impl/adview/z;

    iget-object v0, v0, Lcom/applovin/impl/adview/z;->a:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoCallback;->onPlaybackStateChanged(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    return-void
.end method
