.class public Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/AppLovinVideoOverlay;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Lcom/applovin/impl/adview/AppLovinVideoCallback;

.field private d:Lcom/applovin/impl/adview/AppLovinVideoView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/media/MediaPlayer;

.field private g:Ljava/util/concurrent/atomic/AtomicReference;

.field private h:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AppLovinVideoOverlayImpl"

    sput-object v0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILandroid/app/Activity;Landroid/net/Uri;Lcom/applovin/sdk/AppLovinLogger;Lcom/applovin/impl/adview/AppLovinVideoCallback;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p7, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p8, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->c:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->e:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {v0, p5}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, p6}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Lcom/applovin/impl/adview/y;

    invoke-direct {v1, p0, p7, p8}, Lcom/applovin/impl/adview/y;-><init>(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;Lcom/applovin/sdk/AppLovinLogger;Lcom/applovin/impl/adview/AppLovinVideoCallback;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Lcom/applovin/impl/adview/z;

    invoke-direct {v1, p0, p8}, Lcom/applovin/impl/adview/z;-><init>(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;Lcom/applovin/impl/adview/AppLovinVideoCallback;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    div-int/lit16 v0, p1, 0x3e8

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->f:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Lcom/applovin/impl/adview/AppLovinVideoView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)I
    .locals 1

    mul-int/lit16 v0, p1, 0x3e8

    return v0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a(I)I

    move-result v0

    return v0
.end method

.method public getPercentViewed()I
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getPlaybackState()Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->getPercentViewed()I

    move-result v0

    const/16 v1, 0x62

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->STOPPED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    goto :goto_0
.end method

.method public getPlaybackTime()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->a(I)I

    move-result v0

    return v0
.end method

.method public getVideoLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public requestPause()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->c:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PAUSED:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoCallback;->onPlaybackStateChanged(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    :cond_0
    return-void
.end method

.method public requestPlay()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->c:Lcom/applovin/impl/adview/AppLovinVideoCallback;

    sget-object v1, Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;->PLAYING:Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;

    invoke-interface {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoCallback;->onPlaybackStateChanged(Lcom/applovin/impl/adview/AppLovinVideoPlaybackState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPercentViewed(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    return-void
.end method

.method public setPlaybackTime(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->d:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    return-void
.end method

.method public stopUnderlyingMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinVideoOverlayImpl;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
