.class final Lcom/vungle/sdk/j;
.super Lcom/vungle/sdk/g;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/j$f;,
        Lcom/vungle/sdk/j$d;,
        Lcom/vungle/sdk/j$a;,
        Lcom/vungle/sdk/j$c;,
        Lcom/vungle/sdk/j$b;,
        Lcom/vungle/sdk/j$e;,
        Lcom/vungle/sdk/j$g;
    }
.end annotation


# static fields
.field private static final c:Z


# instance fields
.field private A:Lcom/vungle/sdk/j$g;

.field private B:Lcom/vungle/sdk/j$a;

.field private C:Landroid/os/Handler;

.field a:Lcom/vungle/sdk/d;

.field b:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/VideoView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Ljava/util/Timer;

.field private k:Landroid/media/AudioManager;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Object;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:J

.field private y:Landroid/app/AlertDialog;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/sdk/j;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/vungle/sdk/j$g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/sdk/g$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lcom/vungle/sdk/g;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/vungle/sdk/j;->d:Landroid/content/Context;

    .line 47
    iput-object v1, p0, Lcom/vungle/sdk/j;->e:Landroid/view/View;

    .line 48
    iput-object v1, p0, Lcom/vungle/sdk/j;->f:Landroid/widget/ProgressBar;

    .line 49
    iput-object v1, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    .line 50
    iput-object v1, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    .line 51
    iput-object v1, p0, Lcom/vungle/sdk/j;->i:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    .line 53
    iput-object v1, p0, Lcom/vungle/sdk/j;->k:Landroid/media/AudioManager;

    .line 54
    iput-object v1, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    .line 57
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->n:Z

    .line 58
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->o:Z

    .line 59
    iput-boolean v3, p0, Lcom/vungle/sdk/j;->p:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/j;->q:Ljava/lang/Object;

    .line 63
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->r:Z

    .line 64
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->s:Z

    .line 65
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->t:Z

    .line 68
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->u:Z

    .line 80
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->z:Z

    .line 82
    iput-object v1, p0, Lcom/vungle/sdk/j;->A:Lcom/vungle/sdk/j$g;

    .line 83
    iput-object v1, p0, Lcom/vungle/sdk/j;->B:Lcom/vungle/sdk/j$a;

    .line 441
    new-instance v0, Lcom/vungle/sdk/j$1;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/j$1;-><init>(Lcom/vungle/sdk/j;)V

    iput-object v0, p0, Lcom/vungle/sdk/j;->C:Landroid/os/Handler;

    .line 542
    iput-boolean v2, p0, Lcom/vungle/sdk/j;->b:Z

    .line 110
    iput-object p1, p0, Lcom/vungle/sdk/j;->d:Landroid/content/Context;

    .line 112
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Lcom/vungle/sdk/g$a;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/g$a;-><init>(Lcom/vungle/sdk/g;)V

    throw v0

    .line 117
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vungle/sdk/j;->a(Landroid/content/Context;)V

    .line 120
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/vungle/sdk/j;->k:Landroid/media/AudioManager;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/j;->x:J

    .line 125
    iput-object p2, p0, Lcom/vungle/sdk/j;->m:Ljava/lang/String;

    .line 126
    iput p3, p0, Lcom/vungle/sdk/j;->v:I

    .line 127
    iput p4, p0, Lcom/vungle/sdk/j;->w:I

    .line 129
    iput-object p5, p0, Lcom/vungle/sdk/j;->A:Lcom/vungle/sdk/j$g;

    .line 133
    check-cast p1, Landroid/app/Activity;

    sget v0, Lcom/vungle/sdk/n;->C:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 137
    iget-object v0, p0, Lcom/vungle/sdk/j;->e:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    iget-object v0, p0, Lcom/vungle/sdk/j;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 145
    iget-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 151
    sget-boolean v0, Lcom/vungle/sdk/n;->s:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/vungle/sdk/j;->n:Z

    .line 152
    invoke-direct {p0}, Lcom/vungle/sdk/j;->e()V

    .line 155
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/sdk/j$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vungle/sdk/j$e;-><init>(Lcom/vungle/sdk/j;B)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 156
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/sdk/j$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vungle/sdk/j$b;-><init>(Lcom/vungle/sdk/j;B)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 157
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/sdk/j$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vungle/sdk/j$c;-><init>(Lcom/vungle/sdk/j;B)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 158
    iget-object v0, p0, Lcom/vungle/sdk/j;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/vungle/sdk/j$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vungle/sdk/j$d;-><init>(Lcom/vungle/sdk/j;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v0, Lcom/vungle/sdk/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/j$a;-><init>(Lcom/vungle/sdk/j;B)V

    iput-object v0, p0, Lcom/vungle/sdk/j;->B:Lcom/vungle/sdk/j$a;

    .line 162
    iget-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vungle/sdk/j;->B:Lcom/vungle/sdk/j$a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    :cond_2
    move v0, v2

    .line 151
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    .line 168
    new-instance v0, Lcom/vungle/sdk/g$a;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/g$a;-><init>(Lcom/vungle/sdk/g;)V

    throw v0
.end method

.method static synthetic a(Lcom/vungle/sdk/j;J)J
    .locals 0

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/vungle/sdk/j;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcom/vungle/sdk/j;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/sdk/j;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/vungle/sdk/j;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vungle/sdk/j;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/sdk/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/sdk/j;->g()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vungle/sdk/j;->k:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/vungle/sdk/j;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 273
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    iget-boolean v1, p0, Lcom/vungle/sdk/j;->n:Z

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/d;->a(Z)V

    .line 275
    return-void
.end method

.method static synthetic e(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->z:Z

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->z:Z

    .line 280
    sget-boolean v0, Lcom/vungle/sdk/j;->c:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/vungle/sdk/j;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    .line 286
    :goto_0
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->n:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vungle/sdk/j;->k:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 289
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/sdk/j;->h()V

    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    .line 507
    iget-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    .line 512
    iget-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    new-instance v1, Lcom/vungle/sdk/j$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vungle/sdk/j$f;-><init>(Lcom/vungle/sdk/j;B)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/sdk/j;->f()V

    return-void
.end method

.method static synthetic h(Lcom/vungle/sdk/j;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/vungle/sdk/j;->x:J

    return-wide v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 518
    iget-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/j;->j:Ljava/util/Timer;

    .line 521
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->A:Lcom/vungle/sdk/j$g;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/vungle/sdk/j;->f()V

    .line 525
    invoke-direct {p0}, Lcom/vungle/sdk/j;->h()V

    .line 526
    iget-object v0, p0, Lcom/vungle/sdk/j;->A:Lcom/vungle/sdk/j$g;

    iget-wide v1, p0, Lcom/vungle/sdk/j;->x:J

    invoke-interface {v0}, Lcom/vungle/sdk/j$g;->c()V

    .line 527
    return-void
.end method

.method static synthetic j(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/vungle/sdk/j;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/vungle/sdk/j;->w:I

    return v0
.end method

.method static synthetic l(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->n:Z

    return v0
.end method

.method static synthetic m(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/sdk/j;->e()V

    return-void
.end method

.method static synthetic n(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->r:Z

    return v0
.end method

.method static synthetic o(Lcom/vungle/sdk/j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic p(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->s:Z

    return v0
.end method

.method static synthetic q(Lcom/vungle/sdk/j;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->t:Z

    return v0
.end method

.method static synthetic s(Lcom/vungle/sdk/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->s:Z

    return v0
.end method

.method static synthetic u(Lcom/vungle/sdk/j;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/vungle/sdk/j;->v:I

    return v0
.end method

.method static synthetic v(Lcom/vungle/sdk/j;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->t:Z

    return v0
.end method

.method static synthetic w(Lcom/vungle/sdk/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/sdk/j;->C:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vungle/sdk/j;->e:Landroid/view/View;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/vungle/sdk/d;

    invoke-direct {v0, p1}, Lcom/vungle/sdk/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    .line 100
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    invoke-virtual {v0}, Lcom/vungle/sdk/d;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->e:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    invoke-virtual {v0}, Lcom/vungle/sdk/d;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->f:Landroid/widget/ProgressBar;

    .line 102
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    invoke-virtual {v0}, Lcom/vungle/sdk/d;->f()Landroid/widget/VideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    .line 103
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    invoke-virtual {v0}, Lcom/vungle/sdk/d;->d()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    invoke-virtual {v0}, Lcom/vungle/sdk/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->i:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/vungle/sdk/j;->a:Lcom/vungle/sdk/d;

    invoke-virtual {v0}, Lcom/vungle/sdk/d;->c()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/vungle/sdk/j;->p:Z

    .line 268
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 184
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vungle/sdk/j;->r:Z

    .line 188
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->u:Z

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->u:Z

    .line 191
    iget-object v0, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/vungle/sdk/j;->B:Lcom/vungle/sdk/j$a;

    invoke-virtual {v0}, Lcom/vungle/sdk/j$a;->a()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->b:Z

    .line 199
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->o:Z

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/vungle/sdk/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    .line 219
    invoke-direct {p0}, Lcom/vungle/sdk/j;->i()V

    goto :goto_0

    .line 203
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/vungle/sdk/j;->q:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :try_start_2
    iget-object v1, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    const/high16 v2, 0x40000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 207
    iget-object v1, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vungle/sdk/j;->s:Z

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vungle/sdk/j;->t:Z

    .line 211
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :try_start_3
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 214
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 215
    invoke-direct {p0}, Lcom/vungle/sdk/j;->g()V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 227
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->u:Z

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->u:Z

    .line 230
    iget-object v0, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 232
    iget-object v0, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/vungle/sdk/j;->q:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/vungle/sdk/j;->r:Z

    .line 242
    iget-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    .line 243
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    .line 247
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 251
    iget-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lcom/vungle/sdk/j;->l:Landroid/widget/TextView;

    const/high16 v2, 0x40000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 253
    iget-object v0, p0, Lcom/vungle/sdk/j;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 255
    invoke-direct {p0}, Lcom/vungle/sdk/j;->h()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->s:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->t:Z

    .line 259
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    .line 262
    invoke-direct {p0}, Lcom/vungle/sdk/j;->i()V

    goto :goto_0
.end method

.method public final d()V
    .locals 7

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->b:Z

    if-eqz v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/j;->b:Z

    .line 550
    sget-boolean v0, Lcom/vungle/sdk/n;->D:Z

    if-nez v0, :cond_2

    .line 551
    iget-boolean v0, p0, Lcom/vungle/sdk/j;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/vungle/sdk/j;->f()V

    invoke-direct {p0}, Lcom/vungle/sdk/j;->h()V

    iget-object v0, p0, Lcom/vungle/sdk/j;->A:Lcom/vungle/sdk/j$g;

    iget-wide v1, p0, Lcom/vungle/sdk/j;->x:J

    invoke-interface/range {v0 .. v6}, Lcom/vungle/sdk/j$g;->a(JJJ)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/vungle/sdk/j;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 559
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vungle/sdk/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    const-string v1, "Confirm Cancel"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 561
    const-string v1, "Stopping this video early will prevent you from earning your reward. Continue?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 562
    const-string v1, "Keep Watching"

    new-instance v2, Lcom/vungle/sdk/j$2;

    invoke-direct {v2, p0}, Lcom/vungle/sdk/j$2;-><init>(Lcom/vungle/sdk/j;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    const-string v1, "Cancel Video"

    new-instance v2, Lcom/vungle/sdk/j$3;

    invoke-direct {v2, p0}, Lcom/vungle/sdk/j$3;-><init>(Lcom/vungle/sdk/j;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    new-instance v1, Lcom/vungle/sdk/j$4;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/j$4;-><init>(Lcom/vungle/sdk/j;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/j;->y:Landroid/app/AlertDialog;

    goto :goto_0
.end method
