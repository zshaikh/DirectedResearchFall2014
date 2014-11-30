.class final Ldolphin/webkit/kl;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# static fields
.field private static final M:I

.field private static final N:I

.field private static final O:I

.field private static final P:I

.field static final synthetic a:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:J

.field private D:Z

.field private final E:Ldolphin/webkit/ko;

.field private final F:Ldolphin/webkit/kp;

.field private final G:Ldolphin/webkit/kq;

.field private final H:Ldolphin/webkit/kr;

.field private I:Z

.field private J:Ldolphin/webkit/WebViewClassic$TouchInfo;

.field private K:Z

.field private L:Z

.field private final b:Ljava/lang/Object;

.field private c:Ldolphin/webkit/kn;

.field private d:I

.field private final e:Ldolphin/webkit/kp;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private final w:Ldolphin/webkit/ko;

.field private final x:Ldolphin/webkit/kp;

.field private final y:Ldolphin/webkit/ks;

.field private final z:Ldolphin/webkit/kt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-class v0, Ldolphin/webkit/kl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/kl;->a:Z

    .line 192
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Ldolphin/webkit/kl;->M:I

    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v1, Ldolphin/webkit/kl;->M:I

    add-int/2addr v0, v1

    sput v0, Ldolphin/webkit/kl;->N:I

    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Ldolphin/webkit/kl;->O:I

    .line 196
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Ldolphin/webkit/kl;->P:I

    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldolphin/webkit/kq;Ldolphin/webkit/ks;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    .line 104
    new-instance v0, Ldolphin/webkit/kp;

    invoke-direct {v0, v1}, Ldolphin/webkit/kp;-><init>(Ldolphin/webkit/km;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->e:Ldolphin/webkit/kp;

    .line 127
    new-instance v0, Ldolphin/webkit/ko;

    invoke-direct {v0, v1}, Ldolphin/webkit/ko;-><init>(Ldolphin/webkit/km;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    .line 128
    new-instance v0, Ldolphin/webkit/kp;

    invoke-direct {v0, v1}, Ldolphin/webkit/kp;-><init>(Ldolphin/webkit/km;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->x:Ldolphin/webkit/kp;

    .line 137
    new-instance v0, Ldolphin/webkit/ko;

    invoke-direct {v0, v1}, Ldolphin/webkit/ko;-><init>(Ldolphin/webkit/km;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->E:Ldolphin/webkit/ko;

    .line 138
    new-instance v0, Ldolphin/webkit/kp;

    invoke-direct {v0, v1}, Ldolphin/webkit/kp;-><init>(Ldolphin/webkit/km;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->F:Ldolphin/webkit/kp;

    .line 145
    iput-object v1, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    .line 149
    iput-boolean v3, p0, Ldolphin/webkit/kl;->K:Z

    .line 152
    iput-boolean v3, p0, Ldolphin/webkit/kl;->L:Z

    .line 292
    iput-object p1, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    .line 293
    new-instance v0, Ldolphin/webkit/kr;

    invoke-interface {p1}, Ldolphin/webkit/kq;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/kr;-><init>(Ldolphin/webkit/kl;Landroid/os/Looper;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    .line 295
    iput-object p2, p0, Ldolphin/webkit/kl;->y:Ldolphin/webkit/ks;

    .line 296
    new-instance v0, Ldolphin/webkit/kt;

    invoke-interface {p2}, Ldolphin/webkit/ks;->a()Ldolphin/util/l;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/kt;-><init>(Ldolphin/webkit/kl;Ldolphin/util/l;)V

    iput-object v0, p0, Ldolphin/webkit/kl;->z:Ldolphin/webkit/kt;

    .line 298
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0}, Ldolphin/webkit/kq;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ldolphin/webkit/kl;->v:F

    .line 300
    iget v1, p0, Ldolphin/webkit/kl;->v:F

    iget v2, p0, Ldolphin/webkit/kl;->v:F

    mul-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/kl;->v:F

    .line 301
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ldolphin/webkit/kl;->u:F

    .line 302
    iget v0, p0, Ldolphin/webkit/kl;->u:F

    iget v1, p0, Ldolphin/webkit/kl;->u:F

    mul-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/kl;->u:F

    .line 303
    iput-boolean v3, p0, Ldolphin/webkit/kl;->p:Z

    .line 304
    iput-boolean v3, p0, Ldolphin/webkit/kl;->D:Z

    .line 305
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1202
    iget-boolean v0, p0, Ldolphin/webkit/kl;->I:Z

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->sendEmptyMessage(I)Z

    .line 1204
    iput-boolean v1, p0, Ldolphin/webkit/kl;->I:Z

    .line 1206
    :cond_0
    return-void
.end method

.method private B()Ldolphin/webkit/kn;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1268
    iget-object v0, p0, Ldolphin/webkit/kl;->c:Ldolphin/webkit/kn;

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    iget v1, p0, Ldolphin/webkit/kl;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldolphin/webkit/kl;->d:I

    .line 1271
    iget-object v1, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    iput-object v1, p0, Ldolphin/webkit/kl;->c:Ldolphin/webkit/kn;

    .line 1272
    iput-object v2, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 1276
    :goto_0
    return-object v0

    .line 1274
    :cond_0
    new-instance v0, Ldolphin/webkit/kn;

    invoke-direct {v0, v2}, Ldolphin/webkit/kn;-><init>(Ldolphin/webkit/km;)V

    goto :goto_0
.end method

.method private a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;
    .locals 5

    .prologue
    const-wide/16 v3, 0x190

    .line 1225
    invoke-direct {p0}, Ldolphin/webkit/kl;->B()Ldolphin/webkit/kn;

    move-result-object v0

    .line 1226
    iput-object p1, v0, Ldolphin/webkit/kn;->b:Landroid/support/h;

    .line 1227
    iput p2, v0, Ldolphin/webkit/kn;->c:I

    .line 1228
    iput p3, v0, Ldolphin/webkit/kn;->d:I

    .line 1229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v3

    iput-wide v1, v0, Ldolphin/webkit/kn;->e:J

    .line 1232
    iget-boolean v1, p0, Ldolphin/webkit/kl;->i:Z

    if-eqz v1, :cond_0

    .line 1233
    iget-wide v1, v0, Ldolphin/webkit/kn;->e:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Ldolphin/webkit/kn;->e:J

    .line 1235
    :cond_0
    iget-boolean v1, p0, Ldolphin/webkit/kl;->L:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ldolphin/webkit/kl;->y:Ldolphin/webkit/ks;

    invoke-interface {v1}, Ldolphin/webkit/ks;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    :cond_1
    iget-wide v1, v0, Ldolphin/webkit/kn;->e:J

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iput-wide v1, v0, Ldolphin/webkit/kn;->e:J

    .line 1243
    :cond_2
    iput p4, v0, Ldolphin/webkit/kn;->f:I

    .line 1244
    iput p5, v0, Ldolphin/webkit/kn;->g:I

    .line 1245
    iput p6, v0, Ldolphin/webkit/kn;->h:F

    .line 1249
    return-object v0
.end method

.method private a(Landroid/support/h;)V
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->q:Z

    .line 605
    iget-boolean v0, p0, Ldolphin/webkit/kl;->j:Z

    if-nez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget v0, p0, Ldolphin/webkit/kl;->s:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/support/h;->f()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 609
    iget v1, p0, Ldolphin/webkit/kl;->t:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/support/h;->g()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 610
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/kl;->v:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 611
    invoke-direct {p0}, Ldolphin/webkit/kl;->t()V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->q:Z

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/kl;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ldolphin/webkit/kl;->v()V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/kl;Landroid/support/h;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->d(Landroid/support/h;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/kl;Z)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->f(Z)V

    return-void
.end method

.method private a(Ldolphin/webkit/kn;)V
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    iput-object v0, p1, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 972
    iget v0, p1, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->i(Ldolphin/webkit/kn;)V

    .line 978
    :goto_0
    return-void

    .line 975
    :cond_0
    iget v0, p1, Ldolphin/webkit/kn;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Ldolphin/webkit/kn;->d:I

    .line 976
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->g(Ldolphin/webkit/kn;)V

    goto :goto_0
.end method

.method private a(Ldolphin/webkit/kn;Landroid/support/h;)V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 684
    iget v0, p1, Ldolphin/webkit/kn;->f:I

    iput v0, p0, Ldolphin/webkit/kl;->m:I

    .line 685
    iget v0, p1, Ldolphin/webkit/kn;->g:I

    iput v0, p0, Ldolphin/webkit/kl;->n:I

    .line 686
    iget v0, p1, Ldolphin/webkit/kn;->h:F

    iput v0, p0, Ldolphin/webkit/kl;->o:F

    .line 687
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/support/h;->b()I

    move-result v0

    .line 688
    :goto_0
    iget v2, p1, Ldolphin/webkit/kn;->c:I

    if-eqz v2, :cond_2

    .line 735
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 687
    goto :goto_0

    .line 692
    :cond_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/support/h;->e()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 694
    :cond_3
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 695
    invoke-direct {p0}, Ldolphin/webkit/kl;->t()V

    .line 696
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    .line 697
    iput-boolean v3, p0, Ldolphin/webkit/kl;->q:Z

    .line 698
    iput-boolean v3, p0, Ldolphin/webkit/kl;->r:Z

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    .line 702
    iput-boolean v3, p0, Ldolphin/webkit/kl;->K:Z

    .line 704
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    goto :goto_1

    .line 705
    :cond_4
    if-nez v0, :cond_6

    .line 706
    invoke-direct {p0, p2}, Ldolphin/webkit/kl;->a(Landroid/support/h;)V

    .line 707
    invoke-direct {p0}, Ldolphin/webkit/kl;->j()V

    .line 708
    iput-boolean v4, p0, Ldolphin/webkit/kl;->r:Z

    .line 709
    invoke-virtual {p2}, Landroid/support/h;->f()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/kl;->s:F

    .line 710
    invoke-virtual {p2}, Landroid/support/h;->g()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/kl;->t:F

    .line 711
    invoke-direct {p0, p2}, Ldolphin/webkit/kl;->e(Landroid/support/h;)V

    .line 712
    iget-boolean v0, p0, Ldolphin/webkit/kl;->q:Z

    if-eqz v0, :cond_5

    .line 713
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    goto :goto_1

    .line 715
    :cond_5
    invoke-direct {p0}, Ldolphin/webkit/kl;->o()V

    goto :goto_1

    .line 717
    :cond_6
    if-ne v0, v4, :cond_a

    .line 718
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 719
    invoke-direct {p0, p2}, Ldolphin/webkit/kl;->b(Landroid/support/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 720
    iget-boolean v0, p0, Ldolphin/webkit/kl;->q:Z

    if-eqz v0, :cond_8

    .line 721
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    .line 722
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0, p2}, Ldolphin/webkit/kq;->a(Landroid/support/h;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    invoke-direct {p0, p2}, Ldolphin/webkit/kl;->c(Landroid/support/h;)V

    goto :goto_1

    .line 725
    :cond_7
    invoke-direct {p0, p2}, Ldolphin/webkit/kl;->d(Landroid/support/h;)V

    goto :goto_1

    .line 727
    :cond_8
    invoke-direct {p0}, Ldolphin/webkit/kl;->s()V

    goto :goto_1

    .line 730
    :cond_9
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    goto :goto_1

    .line 732
    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 733
    invoke-direct {p0, p2}, Ldolphin/webkit/kl;->f(Landroid/support/h;)V

    goto :goto_1
.end method

.method private a(Landroid/support/h;II)Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Ldolphin/webkit/kl;->y:Ldolphin/webkit/ks;

    invoke-interface {v0, p0, p1, p2, p3}, Ldolphin/webkit/ks;->a(Ldolphin/webkit/kl;Landroid/support/h;II)Z

    move-result v0

    .line 888
    return v0
.end method

.method private a(Ldolphin/webkit/kn;Ldolphin/webkit/kn;)Z
    .locals 2

    .prologue
    .line 1212
    if-eqz p2, :cond_0

    iget-object v0, p2, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eqz v0, :cond_0

    iget v0, p1, Ldolphin/webkit/kn;->c:I

    iget v1, p2, Ldolphin/webkit/kn;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Ldolphin/webkit/kn;->d:I

    iget v1, p2, Ldolphin/webkit/kn;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Ldolphin/webkit/kn;->f:I

    iget v1, p2, Ldolphin/webkit/kn;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Ldolphin/webkit/kn;->g:I

    iget v1, p2, Ldolphin/webkit/kn;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Ldolphin/webkit/kn;->h:F

    iget v1, p2, Ldolphin/webkit/kn;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p2, Ldolphin/webkit/kn;->b:Landroid/support/h;

    iget-object v1, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    invoke-virtual {v0, v1}, Landroid/support/h;->c(Landroid/support/h;)Z

    move-result v0

    .line 1220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/h;II)V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/kq;->a(Landroid/support/h;II)V

    .line 1063
    return-void
.end method

.method static synthetic b(Ldolphin/webkit/kl;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ldolphin/webkit/kl;->l()V

    return-void
.end method

.method static synthetic b(Ldolphin/webkit/kl;Z)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->d(Z)V

    return-void
.end method

.method private b(Ldolphin/webkit/kn;)V
    .locals 1

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->c(Ldolphin/webkit/kn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->d(Ldolphin/webkit/kn;)V

    .line 1077
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->f(Ldolphin/webkit/kn;)V

    goto :goto_0
.end method

.method private b(Landroid/support/h;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 617
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/h;->a()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Ldolphin/webkit/kl;->r:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 623
    :cond_1
    :goto_0
    return v0

    .line 622
    :cond_2
    invoke-virtual {p1}, Landroid/support/h;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/support/h;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 623
    sget v4, Ldolphin/webkit/kl;->N:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/support/h;)V
    .locals 4

    .prologue
    .line 633
    invoke-direct {p0}, Ldolphin/webkit/kl;->u()V

    .line 634
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 635
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 636
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldolphin/webkit/kl;->i:Z

    .line 638
    iget-object v1, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Ldolphin/webkit/kr;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 640
    return-void
.end method

.method static synthetic c(Ldolphin/webkit/kl;Z)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->e(Z)V

    return-void
.end method

.method private c(Ldolphin/webkit/kn;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1080
    iget v2, p1, Ldolphin/webkit/kn;->c:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1100
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 1093
    :pswitch_2
    iget-boolean v2, p0, Ldolphin/webkit/kl;->r:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eqz v2, :cond_1

    iget-object v2, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    invoke-virtual {v2}, Landroid/support/h;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1095
    goto :goto_0

    .line 1097
    :cond_1
    iget-boolean v2, p0, Ldolphin/webkit/kl;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Ldolphin/webkit/kl;->g:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1080
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Landroid/support/h;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 650
    iput-boolean v3, p0, Ldolphin/webkit/kl;->i:Z

    .line 651
    invoke-static {p1}, Landroid/support/h;->b(Landroid/support/h;)Landroid/support/h;

    move-result-object v1

    .line 652
    const/4 v2, 0x5

    iget v4, p0, Ldolphin/webkit/kl;->m:I

    iget v5, p0, Ldolphin/webkit/kl;->n:I

    iget v6, p0, Ldolphin/webkit/kl;->o:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 654
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kn;)V

    .line 655
    return-void
.end method

.method private d(Ldolphin/webkit/kn;)V
    .locals 3

    .prologue
    .line 1115
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v0, v0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kn;Ldolphin/webkit/kn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v0, v0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    iget-wide v1, p1, Ldolphin/webkit/kn;->e:J

    iput-wide v1, v0, Ldolphin/webkit/kn;->e:J

    .line 1120
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->i(Ldolphin/webkit/kn;)V

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->e(Ldolphin/webkit/kn;)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 509
    iget-object v1, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    if-eqz p1, :cond_1

    .line 511
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kl;->k:Z

    if-nez v0, :cond_0

    .line 512
    monitor-exit v1

    .line 523
    :goto_0
    return-void

    .line 514
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->k:Z

    .line 521
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0, p1}, Ldolphin/webkit/kq;->a(Z)V

    .line 522
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 516
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/kl;->l:Z

    if-nez v0, :cond_2

    .line 517
    monitor-exit v1

    goto :goto_0

    .line 519
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private e(Landroid/support/h;)V
    .locals 7

    .prologue
    .line 658
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0}, Ldolphin/webkit/kq;->g()V

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->K:Z

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    .line 664
    invoke-static {p1}, Landroid/support/h;->b(Landroid/support/h;)Landroid/support/h;

    move-result-object v1

    .line 665
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Ldolphin/webkit/kl;->m:I

    iget v5, p0, Ldolphin/webkit/kl;->n:I

    iget v6, p0, Ldolphin/webkit/kl;->o:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 667
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kn;)V

    .line 668
    return-void
.end method

.method private e(Ldolphin/webkit/kn;)V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eqz v0, :cond_0

    .line 1133
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ko;->a(Ldolphin/webkit/kn;)V

    .line 1134
    invoke-direct {p0}, Ldolphin/webkit/kl;->x()V

    .line 1135
    invoke-direct {p0}, Ldolphin/webkit/kl;->y()V

    .line 1136
    return-void
.end method

.method private e(Z)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 760
    :goto_0
    iget-object v2, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 764
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v5, v0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 765
    if-nez v5, :cond_1

    .line 766
    iget-boolean v0, p0, Ldolphin/webkit/kl;->A:Z

    if-eqz v0, :cond_0

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->A:Z

    .line 768
    if-nez p1, :cond_0

    .line 772
    iget-object v0, p0, Ldolphin/webkit/kl;->z:Ldolphin/webkit/kt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/webkit/kt;->removeMessages(I)V

    .line 779
    :cond_0
    monitor-exit v2

    return-void

    .line 782
    :cond_1
    iget-object v0, v5, Ldolphin/webkit/kn;->b:Landroid/support/h;

    .line 783
    if-eqz v0, :cond_2

    .line 784
    iget v4, v5, Ldolphin/webkit/kn;->f:I

    iget v6, v5, Ldolphin/webkit/kn;->g:I

    invoke-virtual {v0, v4, v6}, Landroid/support/h;->a(II)V

    .line 785
    iget v4, v5, Ldolphin/webkit/kn;->h:F

    invoke-virtual {v0, v4}, Landroid/support/h;->a(F)V

    .line 786
    iget v4, v5, Ldolphin/webkit/kn;->d:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v5, Ldolphin/webkit/kn;->d:I

    .line 789
    :cond_2
    iget v6, v5, Ldolphin/webkit/kn;->c:I

    .line 790
    if-nez v6, :cond_f

    .line 791
    iget-object v4, p0, Ldolphin/webkit/kl;->x:Ldolphin/webkit/kp;

    invoke-virtual {v4, v0}, Ldolphin/webkit/kp;->a(Landroid/support/h;)Landroid/support/h;

    move-result-object v0

    move-object v4, v0

    .line 797
    :goto_1
    iget v0, v5, Ldolphin/webkit/kn;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v5, Ldolphin/webkit/kn;->d:I

    .line 798
    iget v0, v5, Ldolphin/webkit/kn;->d:I

    .line 799
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 806
    if-nez v4, :cond_7

    move v0, v1

    .line 819
    :cond_3
    :goto_2
    iget-object v7, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 820
    :try_start_1
    iget v8, v5, Ldolphin/webkit/kn;->d:I

    .line 821
    and-int/lit8 v2, v8, -0x3

    iput v2, v5, Ldolphin/webkit/kn;->d:I

    .line 822
    iget-object v2, v5, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eq v4, v2, :cond_9

    move v2, v3

    .line 824
    :goto_3
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_a

    .line 826
    invoke-direct {p0, v5}, Ldolphin/webkit/kl;->i(Ldolphin/webkit/kn;)V

    .line 866
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 867
    invoke-virtual {v4}, Landroid/support/h;->c()V

    .line 870
    :cond_5
    if-ne v6, v12, :cond_6

    .line 871
    invoke-direct {p0}, Ldolphin/webkit/kl;->q()V

    .line 873
    :cond_6
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 799
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 809
    :cond_7
    iget v2, v5, Ldolphin/webkit/kn;->c:I

    if-ne v2, v12, :cond_8

    .line 810
    iput-boolean v1, p0, Ldolphin/webkit/kl;->p:Z

    .line 811
    :cond_8
    invoke-direct {p0, v4, v6, v0}, Ldolphin/webkit/kl;->a(Landroid/support/h;II)Z

    move-result v0

    .line 812
    invoke-virtual {v4}, Landroid/support/h;->a()I

    move-result v2

    if-nez v2, :cond_3

    .line 813
    iput-boolean v3, p0, Ldolphin/webkit/kl;->D:Z

    goto :goto_2

    :cond_9
    move v2, v1

    .line 822
    goto :goto_3

    .line 831
    :cond_a
    :try_start_3
    sget-boolean v9, Ldolphin/webkit/kl;->a:Z

    if-nez v9, :cond_b

    iget-object v9, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v9, v9, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    if-eq v9, v5, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 832
    :cond_b
    iget-object v9, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    invoke-virtual {v9}, Ldolphin/webkit/ko;->b()Ldolphin/webkit/kn;

    .line 834
    invoke-direct {p0}, Ldolphin/webkit/kl;->y()V

    .line 836
    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_c

    .line 838
    invoke-direct {p0, v5}, Ldolphin/webkit/kl;->i(Ldolphin/webkit/kn;)V

    goto :goto_4

    .line 839
    :cond_c
    if-eqz v0, :cond_e

    .line 841
    iget v0, v5, Ldolphin/webkit/kn;->c:I

    if-nez v0, :cond_4

    .line 842
    invoke-direct {p0}, Ldolphin/webkit/kl;->z()V

    .line 843
    iget-boolean v0, p0, Ldolphin/webkit/kl;->D:Z

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Landroid/support/h;->a()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_d

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->D:Z

    .line 848
    :cond_d
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 851
    iget-object v0, v5, Ldolphin/webkit/kn;->b:Landroid/support/h;

    invoke-virtual {v0}, Landroid/support/h;->a()I

    move-result v0

    if-nez v0, :cond_4

    .line 852
    invoke-direct {p0}, Ldolphin/webkit/kl;->u()V

    .line 853
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v0, v0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 854
    if-eqz v0, :cond_4

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    iput-wide v8, v0, Ldolphin/webkit/kn;->e:J

    .line 856
    invoke-direct {p0}, Ldolphin/webkit/kl;->y()V

    goto :goto_4

    .line 862
    :cond_e
    invoke-direct {p0, v5}, Ldolphin/webkit/kl;->g(Ldolphin/webkit/kn;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :cond_f
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private f(Landroid/support/h;)V
    .locals 3

    .prologue
    .line 671
    iget-boolean v0, p0, Ldolphin/webkit/kl;->r:Z

    if-nez v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget v0, p0, Ldolphin/webkit/kl;->s:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/support/h;->f()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 675
    iget v1, p0, Ldolphin/webkit/kl;->t:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/support/h;->g()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 676
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/kl;->u:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 677
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->r:Z

    .line 679
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    goto :goto_0
.end method

.method private f(Ldolphin/webkit/kn;)V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Ldolphin/webkit/kl;->E:Ldolphin/webkit/ko;

    iget-object v0, v0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kn;Ldolphin/webkit/kn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->i(Ldolphin/webkit/kn;)V

    .line 1191
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/kl;->g(Ldolphin/webkit/kn;)V

    goto :goto_0
.end method

.method private f(Z)V
    .locals 6

    .prologue
    .line 1000
    :cond_0
    :goto_0
    iget-object v1, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/kl;->E:Ldolphin/webkit/ko;

    invoke-virtual {v0}, Ldolphin/webkit/ko;->b()Ldolphin/webkit/kn;

    move-result-object v2

    .line 1002
    if-nez v2, :cond_2

    .line 1003
    iget-boolean v0, p0, Ldolphin/webkit/kl;->I:Z

    if-eqz v0, :cond_1

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->I:Z

    .line 1005
    if-nez p1, :cond_1

    .line 1006
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 1012
    :cond_1
    monitor-exit v1

    return-void

    .line 1015
    :cond_2
    iget-object v0, v2, Ldolphin/webkit/kn;->b:Landroid/support/h;

    .line 1016
    if-eqz v0, :cond_3

    iget v3, v2, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 1017
    const/high16 v3, 0x3f800000

    iget v4, v2, Ldolphin/webkit/kn;->h:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/support/h;->a(F)V

    .line 1018
    iget v3, v2, Ldolphin/webkit/kn;->f:I

    neg-int v3, v3

    iget v4, v2, Ldolphin/webkit/kn;->g:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/support/h;->a(II)V

    .line 1019
    iget v3, v2, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v2, Ldolphin/webkit/kn;->d:I

    .line 1022
    :cond_3
    iget v3, v2, Ldolphin/webkit/kn;->c:I

    .line 1023
    if-nez v3, :cond_4

    .line 1024
    iget-object v4, p0, Ldolphin/webkit/kl;->F:Ldolphin/webkit/kp;

    invoke-virtual {v4, v0}, Ldolphin/webkit/kp;->a(Landroid/support/h;)Landroid/support/h;

    move-result-object v0

    .line 1030
    :cond_4
    iget v4, v2, Ldolphin/webkit/kn;->d:I

    .line 1032
    iget-object v5, v2, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-ne v0, v5, :cond_5

    .line 1033
    const/4 v5, 0x0

    iput-object v5, v2, Ldolphin/webkit/kn;->b:Landroid/support/h;

    .line 1035
    :cond_5
    invoke-direct {p0, v2}, Ldolphin/webkit/kl;->i(Ldolphin/webkit/kn;)V

    .line 1037
    const/4 v2, 0x4

    if-ne v3, v2, :cond_6

    .line 1038
    invoke-direct {p0}, Ldolphin/webkit/kl;->q()V

    .line 1040
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    invoke-direct {p0, v0, v3, v4}, Ldolphin/webkit/kl;->b(Landroid/support/h;II)V

    .line 1048
    invoke-virtual {v0}, Landroid/support/h;->c()V

    goto :goto_0

    .line 1040
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g(Ldolphin/webkit/kn;)V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Ldolphin/webkit/kl;->E:Ldolphin/webkit/ko;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ko;->a(Ldolphin/webkit/kn;)V

    .line 1198
    invoke-direct {p0}, Ldolphin/webkit/kl;->A()V

    .line 1199
    return-void
.end method

.method private h(Ldolphin/webkit/kn;)Ldolphin/webkit/kn;
    .locals 3

    .prologue
    .line 1253
    invoke-direct {p0}, Ldolphin/webkit/kl;->B()Ldolphin/webkit/kn;

    move-result-object v0

    .line 1254
    iget-object v1, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    invoke-virtual {v1}, Landroid/support/h;->d()Landroid/support/h;

    move-result-object v1

    iput-object v1, v0, Ldolphin/webkit/kn;->b:Landroid/support/h;

    .line 1257
    :cond_0
    iget v1, p1, Ldolphin/webkit/kn;->c:I

    iput v1, v0, Ldolphin/webkit/kn;->c:I

    .line 1258
    iget v1, p1, Ldolphin/webkit/kn;->d:I

    iput v1, v0, Ldolphin/webkit/kn;->d:I

    .line 1259
    iget-wide v1, p1, Ldolphin/webkit/kn;->e:J

    iput-wide v1, v0, Ldolphin/webkit/kn;->e:J

    .line 1260
    iget v1, p1, Ldolphin/webkit/kn;->f:I

    iput v1, v0, Ldolphin/webkit/kn;->f:I

    .line 1261
    iget v1, p1, Ldolphin/webkit/kn;->g:I

    iput v1, v0, Ldolphin/webkit/kn;->g:I

    .line 1262
    iget v1, p1, Ldolphin/webkit/kn;->h:F

    iput v1, v0, Ldolphin/webkit/kn;->h:F

    .line 1263
    iget-object v1, p1, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    iput-object v1, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 1264
    return-object v0
.end method

.method private i(Ldolphin/webkit/kn;)V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    invoke-virtual {v0}, Landroid/support/h;->c()V

    .line 1282
    const/4 v0, 0x0

    iput-object v0, p1, Ldolphin/webkit/kn;->b:Landroid/support/h;

    .line 1285
    :cond_0
    iget v0, p0, Ldolphin/webkit/kl;->d:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1286
    iget v0, p0, Ldolphin/webkit/kl;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/webkit/kl;->d:I

    .line 1287
    iget-object v0, p0, Ldolphin/webkit/kl;->c:Ldolphin/webkit/kn;

    iput-object v0, p1, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 1288
    iput-object p1, p0, Ldolphin/webkit/kl;->c:Ldolphin/webkit/kn;

    .line 1290
    :cond_1
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 410
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->h:Z

    .line 412
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x3

    sget v2, Ldolphin/webkit/kl;->N:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/kr;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Ldolphin/webkit/kl;->h:Z

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->h:Z

    .line 419
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 421
    :cond_0
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-boolean v0, p0, Ldolphin/webkit/kl;->K:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-direct {p0}, Ldolphin/webkit/kl;->j()V

    .line 427
    iput-boolean v1, p0, Ldolphin/webkit/kl;->K:Z

    .line 428
    invoke-virtual {p0}, Ldolphin/webkit/kl;->e()V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/kl;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 434
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0}, Ldolphin/webkit/kq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    :cond_2
    iget-object v7, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 440
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kl;->h:Z

    if-nez v0, :cond_3

    .line 441
    monitor-exit v7

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 443
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ldolphin/webkit/kl;->h:Z

    .line 445
    iget-object v0, p0, Ldolphin/webkit/kl;->e:Ldolphin/webkit/kp;

    invoke-virtual {v0}, Ldolphin/webkit/kp;->a()Landroid/support/h;

    move-result-object v0

    .line 446
    if-nez v0, :cond_4

    .line 447
    monitor-exit v7

    goto :goto_0

    .line 450
    :cond_4
    invoke-virtual {v0}, Landroid/support/h;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 457
    :pswitch_0
    monitor-exit v7

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-static {v0}, Landroid/support/h;->b(Landroid/support/h;)Landroid/support/h;

    move-result-object v1

    .line 461
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/support/h;->a(I)V

    .line 462
    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Ldolphin/webkit/kl;->m:I

    iget v5, p0, Ldolphin/webkit/kl;->n:I

    iget v6, p0, Ldolphin/webkit/kl;->o:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 464
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kn;)V

    .line 465
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private m()V
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Ldolphin/webkit/kl;->r()V

    .line 470
    invoke-direct {p0}, Ldolphin/webkit/kl;->p()V

    .line 471
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldolphin/webkit/kq;->a(Z)V

    .line 472
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Ldolphin/webkit/kl;->r()V

    .line 476
    invoke-direct {p0}, Ldolphin/webkit/kl;->p()V

    .line 477
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ldolphin/webkit/kq;->a(Z)V

    .line 478
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 481
    invoke-direct {p0}, Ldolphin/webkit/kl;->p()V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->k:Z

    .line 483
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x5

    sget v2, Ldolphin/webkit/kl;->M:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/kr;->sendEmptyMessageDelayed(IJ)Z

    .line 485
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 488
    iget-boolean v0, p0, Ldolphin/webkit/kl;->k:Z

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->k:Z

    .line 490
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 492
    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 495
    invoke-direct {p0}, Ldolphin/webkit/kl;->r()V

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->l:Z

    .line 497
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x6

    sget v2, Ldolphin/webkit/kl;->P:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/kr;->sendEmptyMessageDelayed(IJ)Z

    .line 499
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 502
    iget-boolean v0, p0, Ldolphin/webkit/kl;->l:Z

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->l:Z

    .line 504
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 506
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 526
    invoke-direct {p0}, Ldolphin/webkit/kl;->t()V

    .line 527
    iput-boolean v1, p0, Ldolphin/webkit/kl;->j:Z

    .line 533
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0}, Ldolphin/webkit/kq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iput-boolean v1, p0, Ldolphin/webkit/kl;->p:Z

    .line 535
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    invoke-virtual {v0, v3}, Ldolphin/webkit/kr;->sendEmptyMessage(I)Z

    .line 541
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    sget v1, Ldolphin/webkit/kl;->O:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Ldolphin/webkit/kr;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 544
    iget-boolean v0, p0, Ldolphin/webkit/kl;->j:Z

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->j:Z

    .line 546
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 548
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 643
    iget-boolean v0, p0, Ldolphin/webkit/kl;->i:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->i:Z

    .line 645
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 647
    :cond_0
    return-void
.end method

.method private v()V
    .locals 8

    .prologue
    .line 916
    iget-object v2, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 917
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kl;->B:Z

    if-nez v0, :cond_0

    .line 918
    monitor-exit v2

    .line 965
    :goto_0
    return-void

    .line 920
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->B:Z

    .line 927
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    invoke-virtual {v0}, Ldolphin/webkit/ko;->c()Ldolphin/webkit/kn;

    move-result-object v0

    .line 930
    iget v1, v0, Ldolphin/webkit/kn;->c:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 931
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldolphin/webkit/kl;->K:Z

    .line 936
    :cond_1
    iget v1, v0, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 937
    iget v1, v0, Ldolphin/webkit/kn;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Ldolphin/webkit/kn;->d:I

    .line 938
    iget v1, v0, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 939
    iget-object v0, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 947
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 948
    iget-object v1, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 949
    iget-boolean v3, p0, Ldolphin/webkit/kl;->p:Z

    if-eqz v3, :cond_3

    iget v3, v0, Ldolphin/webkit/kn;->c:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 950
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->h(Ldolphin/webkit/kn;)Ldolphin/webkit/kn;

    move-result-object v3

    .line 951
    const/4 v4, 0x0

    iput-object v4, v3, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 952
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    iput-wide v4, v3, Ldolphin/webkit/kn;->e:J

    .line 953
    const/4 v4, 0x0

    iput v4, v3, Ldolphin/webkit/kn;->d:I

    .line 954
    invoke-direct {p0, v3}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kn;)V

    .line 956
    :cond_3
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kn;)V

    move-object v0, v1

    .line 958
    goto :goto_1

    .line 941
    :cond_4
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->h(Ldolphin/webkit/kn;)Ldolphin/webkit/kn;

    move-result-object v0

    .line 942
    iget v1, v0, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Ldolphin/webkit/kn;->d:I

    goto :goto_1

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 963
    :cond_5
    :try_start_1
    invoke-direct {p0}, Ldolphin/webkit/kl;->w()V

    .line 964
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private w()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1106
    iget-object v0, p0, Ldolphin/webkit/kl;->x:Ldolphin/webkit/kp;

    invoke-virtual {v0}, Ldolphin/webkit/kp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    invoke-virtual {v0}, Ldolphin/webkit/ko;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f800000

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 1109
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->e(Ldolphin/webkit/kn;)V

    .line 1110
    iput-boolean v3, p0, Ldolphin/webkit/kl;->g:Z

    .line 1112
    :cond_1
    return-void
.end method

.method private x()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1139
    iget-boolean v0, p0, Ldolphin/webkit/kl;->A:Z

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Ldolphin/webkit/kl;->z:Ldolphin/webkit/kt;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Ldolphin/webkit/kt;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Ldolphin/webkit/kl;->z:Ldolphin/webkit/kt;

    invoke-virtual {v1, v0}, Ldolphin/webkit/kt;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1143
    iput-boolean v4, p0, Ldolphin/webkit/kl;->A:Z

    .line 1148
    :cond_0
    return-void
.end method

.method private y()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1151
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v0, v0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1152
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ldolphin/webkit/kl;->B:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Ldolphin/webkit/kl;->C:J

    iget-wide v3, v0, Ldolphin/webkit/kn;->e:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-boolean v1, p0, Ldolphin/webkit/kl;->B:Z

    if-eqz v1, :cond_2

    .line 1159
    iget-object v1, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    invoke-virtual {v1, v5}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 1160
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldolphin/webkit/kl;->B:Z

    .line 1162
    :cond_2
    if-eqz v0, :cond_0

    .line 1163
    iget-object v1, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    iget-wide v2, v0, Ldolphin/webkit/kn;->e:J

    invoke-virtual {v1, v5, v2, v3}, Ldolphin/webkit/kr;->sendEmptyMessageAtTime(IJ)Z

    .line 1164
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldolphin/webkit/kl;->B:Z

    .line 1165
    iget-wide v0, v0, Ldolphin/webkit/kn;->e:J

    iput-wide v0, p0, Ldolphin/webkit/kl;->C:J

    goto :goto_0
.end method

.method private z()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-object v0, p0, Ldolphin/webkit/kl;->F:Ldolphin/webkit/kp;

    invoke-virtual {v0}, Ldolphin/webkit/kp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/kl;->E:Ldolphin/webkit/ko;

    invoke-virtual {v0}, Ldolphin/webkit/ko;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1176
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f800000

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 1178
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->g(Ldolphin/webkit/kn;)V

    .line 1180
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ldolphin/webkit/WebViewClassic$TouchInfo;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    return-object v0
.end method

.method public a(Ldolphin/webkit/WebViewClassic$TouchInfo;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    .line 164
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Ldolphin/webkit/kl;->K:Z

    .line 156
    return-void
.end method

.method public a(Landroid/support/h;IIF)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/support/h;->a()I

    move-result v3

    .line 348
    packed-switch v3, :pswitch_data_0

    .line 406
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v2, v0

    .line 369
    :goto_1
    iget-object v8, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v8

    .line 372
    if-nez v2, :cond_6

    .line 373
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/kl;->e:Ldolphin/webkit/kp;

    invoke-virtual {v1, p1}, Ldolphin/webkit/kp;->a(Landroid/support/h;)Landroid/support/h;

    move-result-object v1

    .line 374
    if-nez v1, :cond_1

    .line 378
    invoke-direct {p0}, Ldolphin/webkit/kl;->k()V

    .line 379
    invoke-direct {p0}, Ldolphin/webkit/kl;->t()V

    .line 380
    invoke-direct {p0}, Ldolphin/webkit/kl;->m()V

    .line 381
    monitor-exit v8

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 358
    :pswitch_2
    const/4 v2, 0x2

    .line 359
    goto :goto_1

    :pswitch_3
    move v2, v7

    .line 364
    goto :goto_1

    .line 384
    :cond_1
    if-nez v3, :cond_3

    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/kl;->f:Z

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0, v1}, Ldolphin/webkit/kq;->b(Landroid/support/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->g:Z

    .line 391
    :cond_2
    :goto_2
    iget-boolean v0, p0, Ldolphin/webkit/kl;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0, v1}, Ldolphin/webkit/kq;->a(Landroid/support/h;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kl;->g:Z

    .line 397
    :cond_3
    :goto_3
    if-ne v1, p1, :cond_4

    .line 398
    invoke-virtual {p1}, Landroid/support/h;->d()Landroid/support/h;

    move-result-object v1

    .line 401
    :cond_4
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0, p1}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kn;Landroid/support/h;)V

    .line 404
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kn;)V

    .line 405
    monitor-exit v8

    move v0, v7

    .line 406
    goto :goto_0

    .line 387
    :cond_5
    iget-boolean v0, p0, Ldolphin/webkit/kl;->g:Z

    if-eqz v0, :cond_2

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kl;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object v1, p1

    goto :goto_3

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Ldolphin/webkit/kl;->L:Z

    .line 172
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Ldolphin/webkit/kl;->L:Z

    return v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kl;->f:Z

    if-eq v0, p1, :cond_1

    .line 319
    if-nez p1, :cond_0

    .line 320
    invoke-direct {p0}, Ldolphin/webkit/kl;->w()V

    .line 322
    :cond_0
    iput-boolean p1, p0, Ldolphin/webkit/kl;->f:Z

    .line 324
    :cond_1
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    iget-object v2, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ldolphin/webkit/kl;->L:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 178
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v2}, Ldolphin/webkit/kq;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    iget v2, v2, Ldolphin/webkit/WebViewClassic$TouchInfo;->mCandidates:I

    if-le v2, v0, :cond_3

    iget-object v2, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    iget-boolean v2, v2, Ldolphin/webkit/WebViewClassic$TouchInfo;->mDirectTouch:Z

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    iget-object v2, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ldolphin/webkit/kl;->L:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 185
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    iget v2, v2, Ldolphin/webkit/WebViewClassic$TouchInfo;->mCandidates:I

    if-gt v2, v0, :cond_3

    iget-object v2, p0, Ldolphin/webkit/kl;->J:Ldolphin/webkit/WebViewClassic$TouchInfo;

    iget-boolean v2, v2, Ldolphin/webkit/WebViewClassic$TouchInfo;->mDirectTouch:Z

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Ldolphin/webkit/kl;->w:Ldolphin/webkit/ko;

    iget-object v0, v0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 553
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/kl;->B:Z

    if-eqz v1, :cond_0

    iget v1, v0, Ldolphin/webkit/kn;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget v0, v0, Ldolphin/webkit/kn;->d:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeMessages(I)V

    .line 555
    invoke-direct {p0}, Ldolphin/webkit/kl;->v()V

    .line 557
    :cond_0
    return-void
.end method

.method public f()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-boolean v0, p0, Ldolphin/webkit/kl;->K:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Ldolphin/webkit/kl;->s()V

    .line 564
    iput-boolean v1, p0, Ldolphin/webkit/kl;->K:Z

    .line 565
    invoke-virtual {p0}, Ldolphin/webkit/kl;->e()V

    .line 601
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/kl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0}, Ldolphin/webkit/kq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-direct {p0}, Ldolphin/webkit/kl;->t()V

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/kl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Ldolphin/webkit/kl;->G:Ldolphin/webkit/kq;

    invoke-interface {v0}, Ldolphin/webkit/kq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    invoke-direct {p0}, Ldolphin/webkit/kl;->t()V

    goto :goto_0

    .line 584
    :cond_2
    iget-object v7, p0, Ldolphin/webkit/kl;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 585
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kl;->j:Z

    if-nez v0, :cond_3

    .line 586
    monitor-exit v7

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 588
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ldolphin/webkit/kl;->j:Z

    .line 590
    iget-object v0, p0, Ldolphin/webkit/kl;->e:Ldolphin/webkit/kp;

    invoke-virtual {v0}, Ldolphin/webkit/kp;->a()Landroid/support/h;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/h;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 592
    :cond_4
    monitor-exit v7

    goto :goto_0

    .line 595
    :cond_5
    invoke-direct {p0}, Ldolphin/webkit/kl;->n()V

    .line 596
    invoke-static {v0}, Landroid/support/h;->b(Landroid/support/h;)Landroid/support/h;

    move-result-object v1

    .line 597
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Ldolphin/webkit/kl;->m:I

    iget v5, p0, Ldolphin/webkit/kl;->n:I

    iget v6, p0, Ldolphin/webkit/kl;->o:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/kl;->a(Landroid/support/h;IIIIF)Ldolphin/webkit/kn;

    move-result-object v0

    .line 599
    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kn;)V

    .line 600
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 911
    invoke-direct {p0}, Ldolphin/webkit/kl;->v()V

    .line 912
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldolphin/webkit/kl;->f(Z)V

    .line 990
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Ldolphin/webkit/kl;->H:Ldolphin/webkit/kr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/webkit/kr;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1068
    return-void
.end method
