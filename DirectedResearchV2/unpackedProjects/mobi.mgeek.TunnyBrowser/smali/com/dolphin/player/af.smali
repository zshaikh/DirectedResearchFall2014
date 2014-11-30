.class public Lcom/dolphin/player/af;
.super Ljava/lang/Object;
.source "StreamPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/dolphin/player/j;


# instance fields
.field private a:Lcom/dolphin/player/l;

.field private b:Lcom/dolphin/player/o;

.field private c:Lcom/dolphin/player/m;

.field private d:Lcom/dolphin/player/n;

.field private e:Lcom/dolphin/player/k;

.field private f:Lcom/dolphin/player/p;

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:Landroid/media/MediaPlayer;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/player/af;->i:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 150
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 65
    iget-object v1, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 66
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 67
    iput-object p1, p0, Lcom/dolphin/player/af;->g:Landroid/graphics/SurfaceTexture;

    .line 68
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/player/k;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dolphin/player/af;->e:Lcom/dolphin/player/k;

    .line 46
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 47
    return-void
.end method

.method public a(Lcom/dolphin/player/l;)V
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dolphin/player/af;->a:Lcom/dolphin/player/l;

    .line 31
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 32
    return-void
.end method

.method public a(Lcom/dolphin/player/m;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dolphin/player/af;->c:Lcom/dolphin/player/m;

    .line 36
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 37
    return-void
.end method

.method public a(Lcom/dolphin/player/n;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dolphin/player/af;->d:Lcom/dolphin/player/n;

    .line 41
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 42
    return-void
.end method

.method public a(Lcom/dolphin/player/o;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dolphin/player/af;->b:Lcom/dolphin/player/o;

    .line 26
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 27
    return-void
.end method

.method public a(Lcom/dolphin/player/p;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/player/af;->f:Lcom/dolphin/player/p;

    .line 52
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 53
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 142
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 76
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 82
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 86
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 90
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 94
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 98
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    const-string v1, "player"

    const-string v2, "getCurrentPosition IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 124
    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/player/af;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/dolphin/player/af;->i:I

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/player/af;->e:Lcom/dolphin/player/k;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/dolphin/player/af;->e:Lcom/dolphin/player/k;

    invoke-interface {v0, p0, p2}, Lcom/dolphin/player/k;->a(Lcom/dolphin/player/j;I)V

    .line 184
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dolphin/player/af;->a:Lcom/dolphin/player/l;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dolphin/player/af;->a:Lcom/dolphin/player/l;

    invoke-interface {v0, p0}, Lcom/dolphin/player/l;->a(Lcom/dolphin/player/j;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/player/af;->c:Lcom/dolphin/player/m;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/dolphin/player/af;->c:Lcom/dolphin/player/m;

    invoke-interface {v0, p0, p2, p3}, Lcom/dolphin/player/m;->a(Lcom/dolphin/player/j;II)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/player/af;->d:Lcom/dolphin/player/n;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/player/af;->d:Lcom/dolphin/player/n;

    invoke-interface {v0, p0, p2, p3}, Lcom/dolphin/player/n;->a(Lcom/dolphin/player/j;II)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dolphin/player/af;->b:Lcom/dolphin/player/o;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dolphin/player/af;->b:Lcom/dolphin/player/o;

    invoke-interface {v0, p0}, Lcom/dolphin/player/o;->a(Lcom/dolphin/player/j;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/player/af;->f:Lcom/dolphin/player/p;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dolphin/player/af;->f:Lcom/dolphin/player/p;

    invoke-interface {v0, p0, p2, p3}, Lcom/dolphin/player/p;->a(Lcom/dolphin/player/j;II)V

    .line 191
    :cond_0
    return-void
.end method
