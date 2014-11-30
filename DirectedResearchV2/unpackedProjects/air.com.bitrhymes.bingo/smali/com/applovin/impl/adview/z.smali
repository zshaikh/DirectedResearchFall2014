.class Lcom/applovin/impl/adview/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AppLovinVideoCallback;

.field final synthetic b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;Lcom/applovin/impl/adview/AppLovinVideoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    iput-object p2, p0, Lcom/applovin/impl/adview/z;->a:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    new-instance v0, Lcom/applovin/impl/adview/aa;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/aa;-><init>(Lcom/applovin/impl/adview/z;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Lcom/applovin/impl/adview/AppLovinVideoView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoSize(II)V

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Lcom/applovin/impl/adview/AppLovinVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->b(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->c(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->a:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoCallback;->onPlaybackStateChanged(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    :cond_0
    return-void
.end method
