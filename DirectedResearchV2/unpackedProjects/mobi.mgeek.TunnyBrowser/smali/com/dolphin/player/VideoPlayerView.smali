.class public Lcom/dolphin/player/VideoPlayerView;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static r:Ljava/lang/String;

.field private static s:I


# instance fields
.field private A:Lcom/dolphin/player/bl;

.field private B:Lcom/dolphin/player/bk;

.field private C:Lcom/dolphin/player/bo;

.field private D:Lcom/dolphin/player/bm;

.field private E:Lcom/dolphin/player/bn;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/FrameLayout;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/SeekBar;

.field private R:Lcom/dolphin/player/a/b;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/ProgressBar;

.field private W:Landroid/view/View;

.field private Z:Landroid/widget/ImageView;

.field a:Landroid/media/AudioManager;

.field private aA:I

.field private aB:I

.field private aC:Lcom/dolphin/player/f;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/view/View;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/view/View;

.field private ae:Landroid/view/View;

.field private af:Landroid/widget/Button;

.field private ag:Landroid/widget/TextView;

.field private ah:Z

.field private ai:Lcom/dolphin/player/x;

.field private aj:Lcom/dolphin/player/i;

.field private ak:Z

.field private al:Ljava/lang/String;

.field private final am:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final an:Lcom/dolphin/player/w;

.field private ao:Lcom/dolphin/player/ad;

.field private ap:Lcom/dolphin/player/d;

.field private final aq:Landroid/content/BroadcastReceiver;

.field private final ar:Lcom/dolphin/player/a/d;

.field private final as:Landroid/os/Handler;

.field private at:Lcom/dolphin/player/h;

.field private au:Landroid/util/DisplayMetrics;

.field private av:Lcom/dolphin/player/g;

.field private aw:D

.field private ax:D

.field private ay:D

.field private az:Z

.field b:Lcom/dolphin/player/ag;

.field c:Landroid/view/View$OnTouchListener;

.field d:Lcom/dolphin/player/ac;

.field private e:Lcom/dolphin/player/br;

.field private f:Lcom/dolphin/player/bq;

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/util/Map;

.field private t:Z

.field private u:Lcom/dolphin/player/aa;

.field private v:Lcom/dolphin/player/ab;

.field private w:Lcom/dolphin/player/z;

.field private x:Lcom/dolphin/player/z;

.field private y:Z

.field private z:Lcom/dolphin/player/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const-string v0, "playloadingtime"

    sput-object v0, Lcom/dolphin/player/VideoPlayerView;->r:Ljava/lang/String;

    .line 262
    const/4 v0, 0x5

    sput v0, Lcom/dolphin/player/VideoPlayerView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/player/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/player/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const-wide/high16 v5, -0x4010000000000000L

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    .line 249
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->g:Z

    .line 250
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->h:Z

    .line 251
    iput-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->i:J

    .line 252
    iput-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    .line 253
    iput-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    .line 254
    iput-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->l:J

    .line 255
    iput-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->m:J

    .line 257
    iput v1, p0, Lcom/dolphin/player/VideoPlayerView;->n:I

    .line 258
    iput v1, p0, Lcom/dolphin/player/VideoPlayerView;->o:I

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/player/VideoPlayerView;->p:I

    .line 312
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->t:Z

    .line 313
    new-instance v0, Lcom/dolphin/player/av;

    invoke-direct {v0, p0}, Lcom/dolphin/player/av;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->u:Lcom/dolphin/player/aa;

    .line 323
    new-instance v0, Lcom/dolphin/player/bc;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bc;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->v:Lcom/dolphin/player/ab;

    .line 336
    new-instance v0, Lcom/dolphin/player/bd;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bd;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->w:Lcom/dolphin/player/z;

    .line 346
    new-instance v0, Lcom/dolphin/player/be;

    invoke-direct {v0, p0}, Lcom/dolphin/player/be;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->x:Lcom/dolphin/player/z;

    .line 366
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->y:Z

    .line 387
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->z:Lcom/dolphin/player/bp;

    .line 392
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->A:Lcom/dolphin/player/bl;

    .line 397
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->B:Lcom/dolphin/player/bk;

    .line 405
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->C:Lcom/dolphin/player/bo;

    .line 414
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->D:Lcom/dolphin/player/bm;

    .line 422
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->E:Lcom/dolphin/player/bn;

    .line 492
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->ah:Z

    .line 496
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    .line 498
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->aj:Lcom/dolphin/player/i;

    .line 538
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->ak:Z

    .line 540
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    .line 608
    new-instance v0, Lcom/dolphin/player/bf;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bf;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->c:Landroid/view/View$OnTouchListener;

    .line 689
    new-instance v0, Lcom/dolphin/player/bg;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bg;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->am:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 737
    new-instance v0, Lcom/dolphin/player/bh;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bh;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->an:Lcom/dolphin/player/w;

    .line 939
    new-instance v0, Lcom/dolphin/player/bi;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bi;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ao:Lcom/dolphin/player/ad;

    .line 988
    new-instance v0, Lcom/dolphin/player/bj;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bj;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->aq:Landroid/content/BroadcastReceiver;

    .line 1050
    new-instance v0, Lcom/dolphin/player/aw;

    invoke-direct {v0, p0}, Lcom/dolphin/player/aw;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ar:Lcom/dolphin/player/a/d;

    .line 1067
    new-instance v0, Lcom/dolphin/player/ay;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ay;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    .line 1350
    new-instance v0, Lcom/dolphin/player/az;

    invoke-direct {v0, p0}, Lcom/dolphin/player/az;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->at:Lcom/dolphin/player/h;

    .line 1365
    iput-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->au:Landroid/util/DisplayMetrics;

    .line 1367
    new-instance v0, Lcom/dolphin/player/ba;

    invoke-direct {v0, p0}, Lcom/dolphin/player/ba;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->av:Lcom/dolphin/player/g;

    .line 1608
    iput-wide v5, p0, Lcom/dolphin/player/VideoPlayerView;->aw:D

    .line 1609
    iput-wide v5, p0, Lcom/dolphin/player/VideoPlayerView;->ax:D

    .line 1610
    iput-wide v5, p0, Lcom/dolphin/player/VideoPlayerView;->ay:D

    .line 1611
    iput-boolean v1, p0, Lcom/dolphin/player/VideoPlayerView;->az:Z

    .line 1612
    iput v1, p0, Lcom/dolphin/player/VideoPlayerView;->aA:I

    .line 1613
    iput v1, p0, Lcom/dolphin/player/VideoPlayerView;->aB:I

    .line 1615
    new-instance v0, Lcom/dolphin/player/bb;

    invoke-direct {v0, p0}, Lcom/dolphin/player/bb;-><init>(Lcom/dolphin/player/VideoPlayerView;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->aC:Lcom/dolphin/player/f;

    .line 103
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->d()V

    .line 104
    return-void
.end method

.method private A()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v0, 0x0

    .line 1184
    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1191
    :goto_0
    return-wide v0

    .line 1187
    :cond_0
    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1188
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->m()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_0

    .line 1191
    :cond_1
    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_0
.end method

.method static synthetic A(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->s()V

    return-void
.end method

.method private B()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1196
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1197
    const-string v0, "%s_%s_%d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v2, v2, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    const-string v2, "shell_player"

    const-string v3, "play_success"

    invoke-interface {v1, v2, v3, v0}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->z()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->A()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1201
    const-string v1, "%s_%s_%d_%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v3, v3, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->z()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->A()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1202
    const-string v2, "%s_%s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "play_success_wait_"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    const-string v3, "shell_player"

    invoke-interface {v2, v3, v0, v1}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->t()V

    return-void
.end method

.method private C()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1209
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1212
    const-string v0, "%s_%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v4, v4, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    const-string v4, "shell_player"

    const-string v5, "play"

    invoke-interface {v3, v4, v5, v0}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    move v0, v1

    .line 1216
    :goto_0
    if-eqz v0, :cond_2

    .line 1217
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->B()V

    .line 1228
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1215
    goto :goto_0

    .line 1220
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->h:Z

    if-nez v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->z()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->A()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/dolphin/player/VideoPlayerView;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1223
    const-string v3, "%s_%s_%d_%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v5, v5, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->z()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->A()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1224
    const-string v4, "%s_%s"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "play_cancel_wait_"

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    const-string v2, "shell_player"

    invoke-interface {v1, v2, v0, v3}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic C(Lcom/dolphin/player/VideoPlayerView;)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->E()Z

    move-result v0

    return v0
.end method

.method static synthetic D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->K:Landroid/widget/ImageView;

    return-object v0
.end method

.method private D()V
    .locals 5

    .prologue
    .line 1341
    invoke-static {}, Lcom/dolphin/player/a/e;->a()Lcom/dolphin/player/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v1, v1, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v2, v2, Lcom/dolphin/player/bq;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v3, v3, Lcom/dolphin/player/bq;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v4, v4, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/player/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method static synthetic E(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->M:Landroid/widget/TextView;

    return-object v0
.end method

.method private E()Z
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic F(Lcom/dolphin/player/VideoPlayerView;)I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/dolphin/player/VideoPlayerView;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/player/VideoPlayerView;->n:I

    return v0
.end method

.method static synthetic G(Lcom/dolphin/player/VideoPlayerView;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/dolphin/player/VideoPlayerView;->o:I

    return v0
.end method

.method static synthetic H(Lcom/dolphin/player/VideoPlayerView;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->ah:Z

    return v0
.end method

.method static synthetic I(Lcom/dolphin/player/VideoPlayerView;)D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->ay:D

    return-wide v0
.end method

.method static synthetic J(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic K(Lcom/dolphin/player/VideoPlayerView;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->az:Z

    return v0
.end method

.method static synthetic L(Lcom/dolphin/player/VideoPlayerView;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->au:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;D)D
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/dolphin/player/VideoPlayerView;->ay:D

    return-wide p1
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;I)I
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/dolphin/player/VideoPlayerView;->n:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/player/VideoPlayerView;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;J)J
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/dolphin/player/VideoPlayerView;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->au:Landroid/util/DisplayMetrics;

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1e

    const-wide/16 v6, 0x19

    const-wide/16 v4, 0x14

    const-wide/16 v2, 0xf

    .line 1153
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 1154
    const-string v0, "<15"

    .line 1171
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 1157
    const-string v0, "<20"

    goto :goto_0

    .line 1159
    :cond_1
    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    cmp-long v0, p1, v6

    if-gez v0, :cond_2

    .line 1160
    const-string v0, "<25"

    goto :goto_0

    .line 1162
    :cond_2
    cmp-long v0, p1, v6

    if-ltz v0, :cond_3

    cmp-long v0, p1, v8

    if-gez v0, :cond_3

    .line 1163
    const-string v0, "<30"

    goto :goto_0

    .line 1165
    :cond_3
    cmp-long v0, p1, v8

    if-lez v0, :cond_4

    .line 1166
    const-string v0, ">=30"

    goto :goto_0

    .line 1169
    :cond_4
    const-string v0, "<%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(DDD)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 897
    .line 898
    cmpg-double v2, p5, v0

    if-gez v2, :cond_0

    move-wide p5, v0

    .line 902
    :cond_0
    invoke-static {p1, p2}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    .line 903
    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->J:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->L:Landroid/widget/TextView;

    invoke-static {p5, p6}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    cmpl-double v0, p5, v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    const-wide v1, 0x408f400000000000L

    mul-double/2addr v1, p1

    div-double/2addr v1, p5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 908
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    const-wide/high16 v1, 0x4024000000000000L

    mul-double/2addr v1, p3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 910
    :cond_1
    return-void
.end method

.method private a(F)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 1499
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->U:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1504
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1505
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 1506
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    iput v3, p0, Lcom/dolphin/player/VideoPlayerView;->aA:I

    .line 1509
    :cond_2
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 1511
    int-to-float v2, v1

    const/high16 v4, 0x43af0000

    div-float/2addr v2, v4

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 1512
    iget v4, p0, Lcom/dolphin/player/VideoPlayerView;->aA:I

    sub-int v2, v4, v2

    .line 1513
    if-le v2, v1, :cond_5

    move v0, v1

    .line 1520
    :cond_3
    :goto_1
    if-eq v0, v3, :cond_4

    .line 1521
    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->a:Landroid/media/AudioManager;

    const/16 v4, 0x1c

    invoke-virtual {v2, v5, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1522
    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(I)V

    .line 1525
    :cond_4
    const-string v2, "Dolphin Player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current voice :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "set volume to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1516
    :cond_5
    if-lez v2, :cond_3

    move v0, v2

    goto :goto_1
.end method

.method private a(FF)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const-wide/16 v1, 0x0

    .line 1434
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->U:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v3

    .line 1438
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v5

    .line 1439
    cmpg-double v0, v5, v1

    if-lez v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1444
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 1445
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/dolphin/player/VideoPlayerView;->ax:D

    .line 1446
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/dolphin/player/VideoPlayerView;->aw:D

    .line 1447
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    :cond_2
    const/high16 v0, 0x41f00000

    sub-float v0, p1, v0

    const/high16 v7, 0x43160000

    iget-object v8, p0, Lcom/dolphin/player/VideoPlayerView;->au:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v0, v7

    float-to-double v7, v0

    .line 1452
    add-double/2addr v3, v7

    .line 1454
    iget-wide v7, p0, Lcom/dolphin/player/VideoPlayerView;->aw:D

    cmpl-double v0, v3, v7

    if-lez v0, :cond_4

    .line 1455
    iget-wide v1, p0, Lcom/dolphin/player/VideoPlayerView;->aw:D

    .line 1461
    :cond_3
    :goto_1
    iget-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->ay:D

    cmpl-double v0, v1, v3

    if-lez v0, :cond_5

    .line 1462
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Z:Landroid/widget/ImageView;

    sget v3, Lcom/dolphin/player/R$drawable;->dpl_gestrue_btn_forward:I

    invoke-static {v3}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1468
    :goto_2
    iput-wide v1, p0, Lcom/dolphin/player/VideoPlayerView;->ay:D

    .line 1469
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->aa:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/dolphin/player/VideoPlayerView;->ay:D

    invoke-static {v3, v4}, Lcom/dolphin/player/a/g;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->c()I

    move-result v0

    int-to-double v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/player/VideoPlayerView;->a(DDD)V

    .line 1473
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1474
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1457
    :cond_4
    cmpg-double v0, v3, v1

    if-ltz v0, :cond_3

    move-wide v1, v3

    goto :goto_1

    .line 1465
    :cond_5
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Z:Landroid/widget/ImageView;

    sget v3, Lcom/dolphin/player/R$drawable;->dpl_gestrue_btn_back:I

    invoke-static {v3}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1530
    const-wide/high16 v1, 0x4014000000000000L

    int-to-float v0, v0

    float-to-double v3, v0

    div-double v0, v1, v3

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1531
    const-string v1, "Dolphin Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    packed-switch v0, :pswitch_data_0

    .line 1564
    :goto_0
    return-void

    .line 1536
    :pswitch_0
    if-nez p1, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_0:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_1:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1545
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_1:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1548
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_2:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1551
    :pswitch_3
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_3:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1554
    :pswitch_4
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_4:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1557
    :pswitch_5
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/player/R$drawable;->voice_5:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->B:Lcom/dolphin/player/bk;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->B:Lcom/dolphin/player/bk;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/player/bk;->a(II)V

    .line 1348
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lcom/dolphin/player/ae;->a(Landroid/content/Context;)V

    .line 85
    const-string v0, "Dolphin Player"

    const-string v1, "WebKitResources.setResources - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->u()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;DDD)V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/player/VideoPlayerView;->a(DDD)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;F)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/player/VideoPlayerView;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;FF)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/dolphin/player/VideoPlayerView;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;II)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/dolphin/player/VideoPlayerView;->a(II)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1329
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->U:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/VideoPlayerView;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/dolphin/player/VideoPlayerView;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/player/VideoPlayerView;I)I
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/dolphin/player/VideoPlayerView;->o:I

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    .line 265
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/player/VideoPlayerView;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    .line 269
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v2, v2, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 292
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 278
    iget-object v4, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 280
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 282
    goto :goto_1

    .line 284
    :cond_1
    if-lez v1, :cond_2

    .line 285
    div-int v0, v2, v1

    goto :goto_0

    .line 288
    :cond_2
    sget v0, Lcom/dolphin/player/VideoPlayerView;->s:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/player/VideoPlayerView;J)J
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    return-wide p1
.end method

.method private b(F)V
    .locals 6

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x1

    .line 1567
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    const/4 v0, 0x0

    .line 1571
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 1572
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1575
    :cond_2
    invoke-static {v0}, Lcom/dolphin/player/a/a;->a(Landroid/app/Activity;)I

    move-result v4

    .line 1577
    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->U:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1578
    invoke-direct {p0, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 1579
    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->U:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1580
    iput v4, p0, Lcom/dolphin/player/VideoPlayerView;->aB:I

    .line 1581
    iget v3, p0, Lcom/dolphin/player/VideoPlayerView;->aB:I

    invoke-direct {p0, v3}, Lcom/dolphin/player/VideoPlayerView;->b(I)V

    .line 1584
    :cond_3
    const v3, 0x3f36db6e

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 1585
    iget v5, p0, Lcom/dolphin/player/VideoPlayerView;->aB:I

    sub-int v3, v5, v3

    .line 1587
    if-le v3, v1, :cond_4

    .line 1594
    :goto_1
    if-eq v4, v1, :cond_0

    .line 1595
    invoke-static {v0, v1}, Lcom/dolphin/player/a/a;->a(Landroid/app/Activity;I)V

    .line 1596
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/dolphin/player/a/a;->a(Landroid/content/ContentResolver;I)V

    .line 1597
    invoke-static {v0}, Lcom/dolphin/player/a/a;->a(Landroid/app/Activity;)I

    move-result v0

    .line 1598
    const-string v2, "Dolphin Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set bright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "get bright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-direct {p0, v1}, Lcom/dolphin/player/VideoPlayerView;->b(I)V

    goto :goto_0

    .line 1590
    :cond_4
    if-gtz v3, :cond_5

    move v1, v2

    .line 1591
    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 1604
    const-wide v0, 0x3fd999999999999aL

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1605
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->V:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1606
    return-void
.end method

.method static synthetic b(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->k()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/player/VideoPlayerView;F)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/player/VideoPlayerView;->b(F)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1483
    if-eqz p1, :cond_0

    .line 1484
    iput-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->ah:Z

    .line 1485
    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 1486
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ab:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$anim;->rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1488
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1489
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->ac:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1496
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ab:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1494
    iput-boolean v2, p0, Lcom/dolphin/player/VideoPlayerView;->ah:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/player/VideoPlayerView;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/dolphin/player/VideoPlayerView;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/dolphin/player/VideoPlayerView;I)I
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/dolphin/player/VideoPlayerView;->p:I

    return p1
.end method

.method static synthetic c(Lcom/dolphin/player/VideoPlayerView;J)J
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    return-wide p1
.end method

.method static synthetic c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/player/VideoPlayerView;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/dolphin/player/VideoPlayerView;->h:Z

    return p1
.end method

.method static synthetic d(Lcom/dolphin/player/VideoPlayerView;J)J
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/dolphin/player/VideoPlayerView;->l:J

    return-wide p1
.end method

.method static synthetic d(Lcom/dolphin/player/VideoPlayerView;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->y:Z

    return v0
.end method

.method static synthetic d(Lcom/dolphin/player/VideoPlayerView;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/dolphin/player/VideoPlayerView;->ak:Z

    return p1
.end method

.method static synthetic e(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bp;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->z:Lcom/dolphin/player/bp;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/player/VideoPlayerView;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/player/VideoPlayerView;->b(Z)V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/player/VideoPlayerView;)J
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/dolphin/player/VideoPlayerView;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/player/VideoPlayerView;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/dolphin/player/VideoPlayerView;->az:Z

    return p1
.end method

.method static synthetic h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ad:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ae:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    invoke-virtual {v0, v2}, Lcom/dolphin/player/x;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v1, v1, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->b(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "playcount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    const-string v1, "count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 210
    if-nez v1, :cond_0

    .line 211
    const/4 v1, 0x1

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->u:Lcom/dolphin/player/aa;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->a(Lcom/dolphin/player/aa;)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    invoke-virtual {v0}, Lcom/dolphin/player/x;->c()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->u()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/dolphin/player/VideoPlayerView;)J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    return-wide v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/player/VideoPlayerView;->r:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 303
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 305
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 307
    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 309
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic m(Lcom/dolphin/player/VideoPlayerView;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/dolphin/player/VideoPlayerView;->n:I

    return v0
.end method

.method private m()J
    .locals 2

    .prologue
    .line 362
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 363
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic n(Lcom/dolphin/player/VideoPlayerView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->q:Ljava/util/Map;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 543
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bn;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->E:Lcom/dolphin/player/bn;

    return-object v0
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    return-void
.end method

.method static synthetic p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 558
    sget v0, Lcom/dolphin/player/R$id;->frame:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->H:Landroid/widget/FrameLayout;

    .line 563
    sget v0, Lcom/dolphin/player/R$id;->textView_time:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->M:Landroid/widget/TextView;

    .line 564
    sget v0, Lcom/dolphin/player/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->N:Landroid/widget/TextView;

    .line 565
    sget v0, Lcom/dolphin/player/R$id;->info_view:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->F:Landroid/view/View;

    .line 566
    sget v0, Lcom/dolphin/player/R$id;->btn_quit:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->O:Landroid/widget/ImageView;

    .line 567
    sget v0, Lcom/dolphin/player/R$id;->btn_download:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->P:Landroid/widget/ImageView;

    .line 568
    sget v0, Lcom/dolphin/player/R$id;->battery_state:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->K:Landroid/widget/ImageView;

    .line 573
    sget v0, Lcom/dolphin/player/R$id;->control_view:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->G:Landroid/view/View;

    .line 574
    sget v0, Lcom/dolphin/player/R$id;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->I:Landroid/widget/ImageView;

    .line 575
    sget v0, Lcom/dolphin/player/R$id;->PlaybackProgressBar:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    .line 576
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 577
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 578
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Q:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->am:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 579
    sget v0, Lcom/dolphin/player/R$id;->textView_current_position:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->J:Landroid/widget/TextView;

    .line 580
    sget v0, Lcom/dolphin/player/R$id;->textView_duration:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->L:Landroid/widget/TextView;

    .line 585
    sget v0, Lcom/dolphin/player/R$id;->layout_voidce:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->S:Landroid/view/View;

    .line 586
    sget v0, Lcom/dolphin/player/R$id;->layout_bright:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->U:Landroid/view/View;

    .line 587
    sget v0, Lcom/dolphin/player/R$id;->layout_forward:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->W:Landroid/view/View;

    .line 588
    sget v0, Lcom/dolphin/player/R$id;->layout_loading:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ab:Landroid/view/View;

    .line 589
    sget v0, Lcom/dolphin/player/R$id;->layout_net_info:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ad:Landroid/view/View;

    .line 590
    sget v0, Lcom/dolphin/player/R$id;->layout_reload:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ae:Landroid/view/View;

    .line 591
    sget v0, Lcom/dolphin/player/R$id;->button_reload_video:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->af:Landroid/widget/Button;

    .line 592
    sget v0, Lcom/dolphin/player/R$id;->imageView_voice:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->T:Landroid/widget/ImageView;

    .line 593
    sget v0, Lcom/dolphin/player/R$id;->progressBar_bright:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->V:Landroid/widget/ProgressBar;

    .line 594
    sget v0, Lcom/dolphin/player/R$id;->imageView_forward:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->Z:Landroid/widget/ImageView;

    .line 595
    sget v0, Lcom/dolphin/player/R$id;->textView_forward_time:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->aa:Landroid/widget/TextView;

    .line 596
    sget v0, Lcom/dolphin/player/R$id;->textView_net_info:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ag:Landroid/widget/TextView;

    .line 597
    sget v0, Lcom/dolphin/player/R$id;->imageView_load_animol:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ac:Landroid/widget/ImageView;

    .line 599
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->af:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->F:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 605
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->G:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 606
    return-void
.end method

.method static synthetic q(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->I:Landroid/widget/ImageView;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->a:Landroid/media/AudioManager;

    .line 669
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 670
    if-gez v0, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 673
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(I)V

    .line 675
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->y()V

    .line 676
    return-void
.end method

.method static synthetic r(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->o()V

    return-void
.end method

.method private r()Z
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic s(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bm;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->D:Lcom/dolphin/player/bm;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 918
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ag:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_network_error_internal:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ad:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ag:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/dolphin/player/VideoPlayerView;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/dolphin/player/VideoPlayerView;->p:I

    return v0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 928
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 930
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ae:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ag:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/player/ae;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dolphin/player/R$string;->dpl_player_loading_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ad:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 952
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Lcom/dolphin/player/d;

    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/player/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    .line 954
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/dolphin/player/d;->setBackgroundColor(I)V

    .line 955
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/dolphin/player/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    new-instance v0, Lcom/dolphin/player/ag;

    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/player/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    .line 959
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->an:Lcom/dolphin/player/w;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/w;)V

    .line 960
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 962
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 963
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v1, v0}, Lcom/dolphin/player/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    new-instance v1, Lcom/dolphin/player/ac;

    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/player/ac;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    .line 966
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    invoke-virtual {v1, v0}, Lcom/dolphin/player/ac;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/player/ac;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->ao:Lcom/dolphin/player/ad;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/ac;->a(Lcom/dolphin/player/ad;)V

    .line 970
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->at:Lcom/dolphin/player/h;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/d;->a(Lcom/dolphin/player/h;)V

    .line 971
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->av:Lcom/dolphin/player/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/d;->a(Lcom/dolphin/player/g;)V

    .line 972
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->aC:Lcom/dolphin/player/f;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/d;->a(Lcom/dolphin/player/f;)V

    .line 974
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0, v1, v6}, Lcom/dolphin/player/d;->addView(Landroid/view/View;I)V

    .line 975
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/player/d;->addView(Landroid/view/View;I)V

    .line 976
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->ap:Lcom/dolphin/player/d;

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 978
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-boolean v1, v1, Lcom/dolphin/player/bq;->h:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/player/ag;->a(Z)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v0, v0, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 983
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget v1, v1, Lcom/dolphin/player/bq;->f:I

    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-boolean v3, v3, Lcom/dolphin/player/bq;->h:Z

    iget-object v4, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v4, v4, Lcom/dolphin/player/bq;->e:Lcom/dolphin/player/aj;

    iget-boolean v5, p0, Lcom/dolphin/player/VideoPlayerView;->y:Z

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/player/ag;->a(ILandroid/net/Uri;ZLcom/dolphin/player/aj;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 984
    invoke-direct {p0, v6, v6}, Lcom/dolphin/player/VideoPlayerView;->a(II)V

    .line 986
    :cond_1
    return-void
.end method

.method static synthetic u(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->n()V

    return-void
.end method

.method static synthetic v(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 1020
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1021
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1023
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1024
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1025
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->aq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1027
    return-void
.end method

.method static synthetic w(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->G:Landroid/view/View;

    return-object v0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 1032
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1033
    const-string v1, "update_playlist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->aq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1035
    return-void
.end method

.method static synthetic x(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->F:Landroid/view/View;

    return-object v0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->aq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1039
    return-void
.end method

.method static synthetic y(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/br;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 1045
    new-instance v0, Lcom/dolphin/player/a/b;

    invoke-direct {v0}, Lcom/dolphin/player/a/b;-><init>()V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->R:Lcom/dolphin/player/a/b;

    .line 1046
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->R:Lcom/dolphin/player/a/b;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->ar:Lcom/dolphin/player/a/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/a/b;->a(Lcom/dolphin/player/a/d;)V

    .line 1047
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->R:Lcom/dolphin/player/a/b;

    invoke-virtual {v0}, Lcom/dolphin/player/a/b;->a()V

    .line 1048
    return-void
.end method

.method private z()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1175
    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1176
    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->m:J

    div-long/2addr v0, v4

    .line 1179
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->m()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->i:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_0
.end method

.method static synthetic z(Lcom/dolphin/player/VideoPlayerView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v0, v0, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/dolphin/player/bk;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->B:Lcom/dolphin/player/bk;

    .line 400
    return-void
.end method

.method public a(Lcom/dolphin/player/bl;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->A:Lcom/dolphin/player/bl;

    .line 395
    return-void
.end method

.method public a(Lcom/dolphin/player/bm;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->D:Lcom/dolphin/player/bm;

    .line 417
    return-void
.end method

.method public a(Lcom/dolphin/player/bn;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->E:Lcom/dolphin/player/bn;

    .line 425
    return-void
.end method

.method public a(Lcom/dolphin/player/bo;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->C:Lcom/dolphin/player/bo;

    .line 408
    return-void
.end method

.method public a(Lcom/dolphin/player/bp;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->z:Lcom/dolphin/player/bp;

    .line 390
    return-void
.end method

.method public a(Lcom/dolphin/player/bq;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 159
    iput-boolean p2, p0, Lcom/dolphin/player/VideoPlayerView;->y:Z

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->m()J

    move-result-wide v0

    .line 165
    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 166
    iget-wide v2, p0, Lcom/dolphin/player/VideoPlayerView;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->m:J

    .line 168
    :cond_1
    iget-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->B()V

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->j:J

    .line 173
    iput-wide v4, p0, Lcom/dolphin/player/VideoPlayerView;->k:J

    .line 174
    iput-wide v4, p0, Lcom/dolphin/player/VideoPlayerView;->l:J

    .line 175
    iput-boolean v6, p0, Lcom/dolphin/player/VideoPlayerView;->g:Z

    .line 176
    iput-boolean v6, p0, Lcom/dolphin/player/VideoPlayerView;->h:Z

    .line 178
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v1, v1, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/player/VideoPlayerView;->a(Z)V

    .line 184
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v0, v0, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "Dolphin Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v3, v3, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sheme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-boolean v1, v1, Lcom/dolphin/player/bq;->g:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->P:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :cond_4
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->k()V

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-boolean v0, v0, Lcom/dolphin/player/bq;->i:Z

    if-nez v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/player/x;->a(Landroid/content/Context;)I

    move-result v0

    .line 193
    const-string v1, "Dolphin Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAPNType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->v:Lcom/dolphin/player/ab;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->a(Lcom/dolphin/player/ab;)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v1, v1, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/player/br;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 111
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v3, v3, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    const-string v2, "shell_player"

    const-string v3, "play_error_page_load_failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iput-boolean v4, p0, Lcom/dolphin/player/VideoPlayerView;->g:Z

    .line 120
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    invoke-virtual {v0}, Lcom/dolphin/player/x;->a()V

    .line 123
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    iput-object p2, p0, Lcom/dolphin/player/VideoPlayerView;->al:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->x:Lcom/dolphin/player/z;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->a(Lcom/dolphin/player/z;)V

    .line 130
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    invoke-virtual {v0, p1}, Lcom/dolphin/player/x;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->h()V

    .line 141
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->A:Lcom/dolphin/player/bl;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->A:Lcom/dolphin/player/bl;

    invoke-interface {v0}, Lcom/dolphin/player/bl;->a()V

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->e()V

    goto :goto_0
.end method

.method protected d()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 645
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$layout;->activity_main_play:I

    invoke-static {v0, v1, p0}, Lcom/dolphin/player/ae;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 647
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 649
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->p()V

    .line 650
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->q()V

    .line 652
    new-instance v0, Lcom/dolphin/player/x;

    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dolphin/player/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    .line 653
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/player/VideoPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->ai:Lcom/dolphin/player/x;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->w:Lcom/dolphin/player/z;

    invoke-virtual {v0, v1}, Lcom/dolphin/player/x;->a(Lcom/dolphin/player/z;)V

    .line 661
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/player/VideoPlayerView;->i:J

    .line 663
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->w()V

    .line 664
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->v()V

    .line 665
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1233
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->j()V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/player/VideoPlayerView;->y:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->e()V

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->e:Lcom/dolphin/player/br;

    if-eqz v0, :cond_2

    .line 1242
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->C()V

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->C:Lcom/dolphin/player/bo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_3

    .line 1246
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->C:Lcom/dolphin/player/bo;

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->f:Lcom/dolphin/player/bq;

    iget-object v1, v1, Lcom/dolphin/player/bq;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v2}, Lcom/dolphin/player/ag;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dolphin/player/bo;->a(Ljava/lang/String;I)V

    .line 1249
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->l()V

    .line 1250
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->x()V

    .line 1251
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->v()V

    .line 1255
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1258
    const-string v0, "Dolphin Player"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->m()V

    .line 1262
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 1265
    const-string v0, "Dolphin Player"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->o()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->n()V

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->o()V

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1278
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-nez v1, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return v0

    .line 1282
    :cond_1
    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v1}, Lcom/dolphin/player/ag;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v1}, Lcom/dolphin/player/ag;->o()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-nez v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    .line 1291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->btn_play:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->button_reload_video:I

    if-ne v0, v1, :cond_3

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->m()V

    .line 1322
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1323
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->as:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1326
    return-void

    .line 1312
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->n()V

    goto :goto_0

    .line 1315
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->btn_quit:I

    if-ne v0, v1, :cond_4

    .line 1316
    invoke-virtual {p0}, Lcom/dolphin/player/VideoPlayerView;->c()V

    goto :goto_0

    .line 1317
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->btn_download:I

    if-ne v0, v1, :cond_1

    .line 1318
    invoke-direct {p0}, Lcom/dolphin/player/VideoPlayerView;->D()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1296
    const/4 v0, 0x0

    .line 1297
    const/16 v1, 0x52

    if-eq v1, p1, :cond_0

    const/16 v1, 0x54

    if-ne v1, p1, :cond_1

    .line 1298
    :cond_0
    const/4 v0, 0x1

    .line 1301
    :cond_1
    return v0
.end method
