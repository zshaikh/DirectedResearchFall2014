.class public Lcom/dolphin/player/ag;
.super Landroid/view/SurfaceView;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/player/at;


# instance fields
.field protected a:I

.field b:Landroid/view/SurfaceHolder$Callback;

.field private c:Lcom/dolphin/player/aj;

.field private d:Landroid/view/SurfaceHolder;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/net/Uri;

.field private i:D

.field private final j:Landroid/os/Handler;

.field private k:Lcom/dolphin/player/w;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    .line 38
    iput-object v0, p0, Lcom/dolphin/player/ag;->d:Landroid/view/SurfaceHolder;

    .line 44
    iput v1, p0, Lcom/dolphin/player/ag;->g:I

    .line 46
    iput-object v0, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    .line 144
    new-instance v0, Lcom/dolphin/player/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ah;-><init>(Lcom/dolphin/player/ag;)V

    iput-object v0, p0, Lcom/dolphin/player/ag;->b:Landroid/view/SurfaceHolder$Callback;

    .line 234
    new-instance v0, Lcom/dolphin/player/ai;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ai;-><init>(Lcom/dolphin/player/ag;)V

    iput-object v0, p0, Lcom/dolphin/player/ag;->j:Landroid/os/Handler;

    .line 294
    iput-boolean v1, p0, Lcom/dolphin/player/ag;->l:Z

    .line 539
    iput-boolean v1, p0, Lcom/dolphin/player/ag;->m:Z

    .line 59
    invoke-direct {p0}, Lcom/dolphin/player/ag;->r()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/ag;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/player/ag;->d:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/player/ag;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/player/ag;->d:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/player/ag;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/dolphin/player/ag;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/dolphin/player/ag;)Lcom/dolphin/player/w;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/player/ag;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/dolphin/player/ag;->g:I

    return v0
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/ag;->b:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    iput v2, p0, Lcom/dolphin/player/ag;->e:I

    .line 65
    iput v2, p0, Lcom/dolphin/player/ag;->f:I

    .line 67
    invoke-virtual {p0, v3}, Lcom/dolphin/player/ag;->setFocusable(Z)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/dolphin/player/ag;->setFocusableInTouchMode(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->requestFocus()Z

    .line 75
    return-void
.end method


# virtual methods
.method public a()D
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 78
    const-wide/16 v0, 0x0

    .line 81
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->h()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 204
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(I)V

    .line 210
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->l()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/player/j;)V
    .locals 7

    .prologue
    .line 402
    invoke-interface {p1}, Lcom/dolphin/player/j;->l()I

    move-result v0

    iput v0, p0, Lcom/dolphin/player/ag;->e:I

    .line 403
    invoke-interface {p1}, Lcom/dolphin/player/j;->m()I

    move-result v0

    iput v0, p0, Lcom/dolphin/player/ag;->f:I

    .line 405
    iget v0, p0, Lcom/dolphin/player/ag;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/player/ag;->e:I

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/player/ag;->e:I

    iget v2, p0, Lcom/dolphin/player/ag;->f:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->a(Landroid/net/Uri;)V

    .line 412
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    invoke-virtual {p0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/dolphin/player/ag;->c()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/dolphin/player/w;->a(DDD)V

    .line 413
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->c(Landroid/net/Uri;)V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/player/ag;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    const-string v0, "Dolphin Player"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->l()V

    .line 420
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->h()V

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/player/ag;->a(Z)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/player/j;I)V
    .locals 0

    .prologue
    .line 470
    iput p2, p0, Lcom/dolphin/player/ag;->g:I

    .line 471
    return-void
.end method

.method public a(Lcom/dolphin/player/j;II)V
    .locals 3

    .prologue
    .line 427
    const-string v0, "Dolphin Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-interface {p1}, Lcom/dolphin/player/j;->l()I

    move-result v0

    iput v0, p0, Lcom/dolphin/player/ag;->e:I

    .line 429
    invoke-interface {p1}, Lcom/dolphin/player/j;->m()I

    move-result v0

    iput v0, p0, Lcom/dolphin/player/ag;->f:I

    .line 430
    iget v0, p0, Lcom/dolphin/player/ag;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/player/ag;->f:I

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/player/ag;->e:I

    iget v2, p0, Lcom/dolphin/player/ag;->f:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 434
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/player/w;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    .line 262
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/dolphin/player/ag;->m:Z

    .line 543
    return-void
.end method

.method public a(ILandroid/net/Uri;ZLcom/dolphin/player/aj;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 297
    iput-boolean p5, p0, Lcom/dolphin/player/ag;->l:Z

    .line 299
    iput p1, p0, Lcom/dolphin/player/ag;->a:I

    .line 305
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    iput-object p2, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    .line 310
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->e()V

    .line 313
    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual {p4}, Lcom/dolphin/player/aj;->i()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 314
    iput-object p4, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    .line 326
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/dolphin/player/ag;->f:I

    .line 327
    const/4 v2, 0x0

    iput v2, p0, Lcom/dolphin/player/ag;->e:I

    .line 328
    const-wide/high16 v2, -0x4010000000000000L

    iput-wide v2, p0, Lcom/dolphin/player/ag;->i:D

    .line 329
    const/4 v2, 0x0

    iput v2, p0, Lcom/dolphin/player/ag;->g:I

    .line 331
    iget-object v2, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v2, p0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/at;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    iget-object v0, p0, Lcom/dolphin/player/ag;->d:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    iget-object v2, p0, Lcom/dolphin/player/ag;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Lcom/dolphin/player/aj;->a(Landroid/view/SurfaceHolder;)V

    .line 341
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->b(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->k()V

    .line 345
    :cond_0
    invoke-virtual {p0, p3}, Lcom/dolphin/player/ag;->a(Z)V

    move v0, v1

    .line 347
    :goto_1
    return v0

    .line 317
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/player/au;->a(ILandroid/content/Context;)Lcom/dolphin/player/j;

    move-result-object v2

    .line 318
    invoke-static {}, Lcom/dolphin/player/aj;->a()Lcom/dolphin/player/aj;

    move-result-object v3

    .line 319
    invoke-virtual {v3, v2, p1}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/j;I)V

    .line 320
    iput-object v3, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    .line 321
    iget-object v2, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    iget-object v3, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/player/aj;->a(Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v2

    .line 334
    const-string v3, "Dolphin Player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    iget-object v2, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v3, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v2, v3, v1}, Lcom/dolphin/player/w;->a(Landroid/net/Uri;I)V

    goto :goto_1
.end method

.method public b()D
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 86
    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/dolphin/player/ag;->i:D

    .line 87
    iget-wide v0, p0, Lcom/dolphin/player/ag;->i:D

    .line 93
    :goto_0
    return-wide v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->g()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/player/ag;->i:D

    .line 93
    iget-wide v0, p0, Lcom/dolphin/player/ag;->i:D

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 480
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 482
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->c(Landroid/net/Uri;)V

    .line 486
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/player/j;)V
    .locals 2

    .prologue
    .line 447
    const-string v0, "Dolphin Player"

    const-string v1, "onCompletion:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 450
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->b(Landroid/net/Uri;)V

    .line 454
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/player/j;II)Z
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 459
    const-string v0, "Dolphin Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1, p3}, Lcom/dolphin/player/w;->a(Landroid/net/Uri;I)V

    .line 465
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/dolphin/player/ag;->g:I

    return v0
.end method

.method public c(Lcom/dolphin/player/j;II)Z
    .locals 2

    .prologue
    .line 496
    sparse-switch p2, :sswitch_data_0

    .line 528
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 498
    :sswitch_0
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_BUFFERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    invoke-interface {v0}, Lcom/dolphin/player/w;->a()V

    goto :goto_0

    .line 504
    :sswitch_1
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_BUFFERING_END:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    invoke-interface {v0}, Lcom/dolphin/player/w;->b()V

    goto :goto_0

    .line 510
    :sswitch_2
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_NOT_SEEKABLE:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :sswitch_3
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_METADATA_UPDATE:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    :sswitch_4
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_BAD_INTERLEAVING:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :sswitch_5
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :sswitch_6
    const-string v0, "Dolphin Player"

    const-string v1, "MEDIA_INFO_VIDEO_RENDERING_START:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x2bc -> :sswitch_5
        0x2bd -> :sswitch_0
        0x2be -> :sswitch_1
        0x320 -> :sswitch_4
        0x321 -> :sswitch_2
        0x322 -> :sswitch_3
    .end sparse-switch
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 112
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->b()V

    .line 113
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->n()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    .line 116
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/dolphin/player/ag;->a:I

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->c()V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/player/ag;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 271
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/dolphin/player/ag;->a:I

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    .line 276
    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->e(Landroid/net/Uri;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    iget v1, p0, Lcom/dolphin/player/ag;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->c(I)V

    .line 286
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {p0}, Lcom/dolphin/player/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->a(Landroid/net/Uri;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->d()V

    .line 364
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 365
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->c(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public n()V
    .locals 6

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->c()V

    .line 376
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->i()V

    .line 377
    invoke-virtual {p0}, Lcom/dolphin/player/ag;->l()V

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/dolphin/player/ag;->k:Lcom/dolphin/player/w;

    iget-object v1, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dolphin/player/w;->d(Landroid/net/Uri;)V

    .line 386
    :cond_1
    return-void

    .line 380
    :cond_2
    iget v1, p0, Lcom/dolphin/player/ag;->a:I

    iget-object v2, p0, Lcom/dolphin/player/ag;->h:Landroid/net/Uri;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/dolphin/player/ag;->l:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/player/ag;->a(ILandroid/net/Uri;ZLcom/dolphin/player/aj;Z)Z

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x4

    .line 392
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ag;->c:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 125
    iget v0, p0, Lcom/dolphin/player/ag;->e:I

    invoke-static {v0, p1}, Lcom/dolphin/player/ag;->getDefaultSize(II)I

    move-result v1

    .line 126
    iget v0, p0, Lcom/dolphin/player/ag;->f:I

    invoke-static {v0, p2}, Lcom/dolphin/player/ag;->getDefaultSize(II)I

    move-result v0

    .line 127
    iget v2, p0, Lcom/dolphin/player/ag;->e:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/dolphin/player/ag;->f:I

    if-lez v2, :cond_0

    .line 128
    iget v2, p0, Lcom/dolphin/player/ag;->e:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/dolphin/player/ag;->f:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 130
    iget v0, p0, Lcom/dolphin/player/ag;->f:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/dolphin/player/ag;->e:I

    div-int/2addr v0, v2

    .line 141
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/player/ag;->setMeasuredDimension(II)V

    .line 142
    return-void

    .line 131
    :cond_1
    iget v2, p0, Lcom/dolphin/player/ag;->e:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/dolphin/player/ag;->f:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 133
    iget v1, p0, Lcom/dolphin/player/ag;->e:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/dolphin/player/ag;->f:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public p()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/dolphin/player/ag;->m:Z

    return v0
.end method
