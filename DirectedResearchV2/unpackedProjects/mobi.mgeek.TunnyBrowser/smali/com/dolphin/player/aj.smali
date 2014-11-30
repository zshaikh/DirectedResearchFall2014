.class public Lcom/dolphin/player/aj;
.super Ljava/lang/Object;
.source "VideoPlayerEx.java"


# static fields
.field protected static e:Ljava/util/Timer;

.field protected static g:Lcom/dolphin/player/j;

.field protected static h:I

.field private static j:Lcom/dolphin/player/aj;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Landroid/net/Uri;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Z

.field public i:Z

.field private k:Z

.field private l:Lcom/dolphin/player/at;

.field private m:Lcom/dolphin/player/ar;

.field private n:Lcom/dolphin/player/o;

.field private o:Lcom/dolphin/player/k;

.field private p:Lcom/dolphin/player/m;

.field private q:Lcom/dolphin/player/n;

.field private r:Lcom/dolphin/player/l;

.field private s:Lcom/dolphin/player/p;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/dolphin/player/aj;->j:Lcom/dolphin/player/aj;

    .line 73
    sput-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    .line 74
    const/4 v0, -0x1

    sput v0, Lcom/dolphin/player/aj;->h:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/dolphin/player/aj;->k:Z

    .line 139
    new-instance v0, Lcom/dolphin/player/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ak;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->m:Lcom/dolphin/player/ar;

    .line 152
    new-instance v0, Lcom/dolphin/player/al;

    invoke-direct {v0, p0}, Lcom/dolphin/player/al;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->n:Lcom/dolphin/player/o;

    .line 158
    new-instance v0, Lcom/dolphin/player/am;

    invoke-direct {v0, p0}, Lcom/dolphin/player/am;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->o:Lcom/dolphin/player/k;

    .line 168
    new-instance v0, Lcom/dolphin/player/an;

    invoke-direct {v0, p0}, Lcom/dolphin/player/an;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->p:Lcom/dolphin/player/m;

    .line 183
    new-instance v0, Lcom/dolphin/player/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ao;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->q:Lcom/dolphin/player/n;

    .line 194
    new-instance v0, Lcom/dolphin/player/ap;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ap;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->r:Lcom/dolphin/player/l;

    .line 204
    new-instance v0, Lcom/dolphin/player/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/player/aq;-><init>(Lcom/dolphin/player/aj;)V

    iput-object v0, p0, Lcom/dolphin/player/aj;->s:Lcom/dolphin/player/p;

    .line 286
    iput-boolean v1, p0, Lcom/dolphin/player/aj;->i:Z

    .line 480
    iput-boolean v1, p0, Lcom/dolphin/player/aj;->t:Z

    .line 85
    return-void
.end method

.method public static a()Lcom/dolphin/player/aj;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/dolphin/player/aj;->j:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/dolphin/player/aj;

    invoke-direct {v0}, Lcom/dolphin/player/aj;-><init>()V

    sput-object v0, Lcom/dolphin/player/aj;->j:Lcom/dolphin/player/aj;

    .line 80
    :cond_0
    sget-object v0, Lcom/dolphin/player/aj;->j:Lcom/dolphin/player/aj;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/player/aj;Lcom/dolphin/player/j;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/j;)V

    return-void
.end method

.method private a(Lcom/dolphin/player/j;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 442
    sput v2, Lcom/dolphin/player/aj;->h:I

    .line 445
    iget v0, p0, Lcom/dolphin/player/aj;->a:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/dolphin/player/aj;->a:I

    invoke-virtual {p0}, Lcom/dolphin/player/aj;->g()I

    move-result v1

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/dolphin/player/aj;->a:I

    invoke-virtual {p0}, Lcom/dolphin/player/aj;->h()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 446
    iget v0, p0, Lcom/dolphin/player/aj;->a:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/aj;->a(I)V

    .line 452
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dolphin/player/aj;->f:Z

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/dolphin/player/aj;->d()V

    .line 455
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    invoke-interface {v0, v2}, Lcom/dolphin/player/at;->b(I)V

    .line 459
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/player/aj;->f:Z

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    invoke-interface {v0, p1}, Lcom/dolphin/player/at;->a(Lcom/dolphin/player/j;)V

    .line 465
    :cond_3
    return-void

    .line 448
    :cond_4
    iget v0, p0, Lcom/dolphin/player/aj;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/dolphin/player/aj;->a:I

    invoke-virtual {p0}, Lcom/dolphin/player/aj;->g()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/player/aj;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/dolphin/player/aj;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/player/aj;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 468
    sget v0, Lcom/dolphin/player/aj;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 470
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 474
    :cond_0
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->a(I)V

    goto :goto_0

    .line 476
    :cond_1
    iput p1, p0, Lcom/dolphin/player/aj;->a:I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 398
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 401
    :cond_0
    sget v0, Lcom/dolphin/player/aj;->h:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/dolphin/player/aj;->h:I

    if-eq v0, v4, :cond_1

    sget v0, Lcom/dolphin/player/aj;->h:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/player/aj;->k:Z

    .line 405
    iget-boolean v0, p0, Lcom/dolphin/player/aj;->k:Z

    if-nez v0, :cond_3

    .line 407
    :try_start_0
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->b()V

    .line 408
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/dolphin/player/aj;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1, v3}, Lcom/dolphin/player/j;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 409
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->f()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 421
    :goto_2
    sput v2, Lcom/dolphin/player/aj;->h:I

    .line 422
    const-string v0, "player"

    const-string v1, "need to prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 401
    goto :goto_1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 412
    const-string v0, "player"

    const-string v1, "prepare  IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 413
    :catch_1
    move-exception v0

    .line 414
    const-string v1, "player"

    const-string v3, "prepare  IllegalStateException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 416
    :catch_2
    move-exception v0

    .line 417
    const-string v1, "player"

    const-string v3, "prepare  IOException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 424
    :cond_3
    const-string v0, "player"

    const-string v2, "don\'t need to prepare"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget v0, Lcom/dolphin/player/aj;->h:I

    if-lt v0, v4, :cond_4

    .line 429
    const-string v0, "player"

    const-string v2, "don\'t need to prepare,already prepared in inline mode.start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-direct {p0, v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/j;)V

    .line 432
    :cond_4
    iput-boolean v1, p0, Lcom/dolphin/player/aj;->k:Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/player/j;->a(Landroid/content/Context;I)V

    .line 500
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->a(Landroid/graphics/SurfaceTexture;)V

    .line 537
    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Lcom/dolphin/player/aj;->c:Landroid/net/Uri;

    .line 241
    iput-object p2, p0, Lcom/dolphin/player/aj;->d:Ljava/util/Map;

    .line 242
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->a(Landroid/view/SurfaceHolder;)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/player/at;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    .line 134
    return-void
.end method

.method public a(Lcom/dolphin/player/j;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 91
    :cond_0
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->h()V

    .line 94
    :cond_1
    sput-object p1, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    .line 95
    sput v1, Lcom/dolphin/player/aj;->h:I

    .line 104
    :cond_2
    iput p2, p0, Lcom/dolphin/player/aj;->a:I

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    .line 106
    iput-boolean v1, p0, Lcom/dolphin/player/aj;->f:Z

    .line 108
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->n:Lcom/dolphin/player/o;

    invoke-interface {v0, v1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/o;)V

    .line 110
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->o:Lcom/dolphin/player/k;

    invoke-interface {v0, v1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/k;)V

    .line 111
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->r:Lcom/dolphin/player/l;

    invoke-interface {v0, v1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/l;)V

    .line 112
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->p:Lcom/dolphin/player/m;

    invoke-interface {v0, v1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/m;)V

    .line 113
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->s:Lcom/dolphin/player/p;

    invoke-interface {v0, v1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/p;)V

    .line 114
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    iget-object v1, p0, Lcom/dolphin/player/aj;->q:Lcom/dolphin/player/n;

    invoke-interface {v0, v1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/n;)V

    .line 116
    :cond_3
    return-void
.end method

.method public a(Lcom/dolphin/player/k;)V
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/k;)V

    .line 224
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/player/p;)V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->a(Lcom/dolphin/player/p;)V

    .line 218
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/dolphin/player/aj;->i:Z

    .line 295
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 233
    sget v0, Lcom/dolphin/player/aj;->h:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->b()V

    .line 236
    :cond_0
    sput v1, Lcom/dolphin/player/aj;->h:I

    .line 237
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->b(I)V

    .line 522
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0, p1}, Lcom/dolphin/player/j;->a(Z)V

    .line 494
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xfa

    .line 261
    sget v0, Lcom/dolphin/player/aj;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 264
    sget-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 266
    const-string v0, "Media"

    const-string v1, "new timer:"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    .line 268
    sget-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    new-instance v1, Lcom/dolphin/player/as;

    iget-object v4, p0, Lcom/dolphin/player/aj;->m:Lcom/dolphin/player/ar;

    invoke-direct {v1, v4}, Lcom/dolphin/player/as;-><init>(Lcom/dolphin/player/ar;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 272
    :cond_0
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v0, :cond_2

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->c()V

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/player/aj;->a(Z)V

    .line 279
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/player/at;->b(I)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 525
    iput p1, p0, Lcom/dolphin/player/aj;->a:I

    .line 526
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/dolphin/player/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->d()V

    .line 310
    :cond_2
    :goto_1
    sget-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 312
    sget-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 313
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/player/aj;->e:Ljava/util/Timer;

    goto :goto_0

    .line 306
    :cond_3
    sget v0, Lcom/dolphin/player/aj;->h:I

    if-ne v0, v1, :cond_2

    .line 307
    iput-boolean v1, p0, Lcom/dolphin/player/aj;->f:Z

    goto :goto_1
.end method

.method public e()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/dolphin/player/aj;->d()V

    .line 319
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/dolphin/player/aj;->l:Lcom/dolphin/player/at;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/dolphin/player/at;->b(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 327
    sget v1, Lcom/dolphin/player/aj;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 329
    sget-object v1, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->k()Z

    move-result v0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 340
    sget v0, Lcom/dolphin/player/aj;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 342
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 346
    :cond_0
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->i()I

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public h()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    sget v1, Lcom/dolphin/player/aj;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 355
    sget-object v1, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->j()I

    move-result v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/dolphin/player/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x3

    .line 368
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/dolphin/player/aj;->h:I

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 373
    sget v0, Lcom/dolphin/player/aj;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 375
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-nez v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->e()V

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->l()I

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->m()I

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 504
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->o()I

    move-result v0

    .line 506
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->h()V

    .line 512
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    .line 515
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/dolphin/player/aj;->h:I

    .line 516
    return-void
.end method
