.class Ldolphin/webkit/ll;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# static fields
.field private static E:F

.field private static I:F

.field private static J:F

.field static final synthetic a:Z


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private F:F

.field private G:F

.field private H:F

.field private K:F

.field private L:F

.field private M:F

.field private N:I

.field private O:I

.field private P:J

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Landroid/view/ScaleGestureDetector;

.field private V:Z

.field private W:Z

.field private X:Z

.field private final b:Ldolphin/webkit/WebViewClassic;

.field private final c:Ldolphin/webkit/ae;

.field private d:Ldolphin/webkit/ld;

.field private e:Ldolphin/webkit/lg;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:Ldolphin/webkit/ln;

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3be56042

    .line 53
    const-class v0, Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/ll;->a:Z

    .line 189
    const/high16 v0, 0x3f000000

    sput v0, Ldolphin/webkit/ll;->E:F

    .line 201
    sput v1, Ldolphin/webkit/ll;->I:F

    .line 207
    sput v1, Ldolphin/webkit/ll;->J:F

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/ae;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/ll;->j:Z

    .line 106
    iput-boolean v1, p0, Ldolphin/webkit/ll;->k:Z

    .line 116
    iput-boolean v1, p0, Ldolphin/webkit/ll;->l:Z

    .line 183
    const/high16 v0, 0x3f800000

    iput v0, p0, Ldolphin/webkit/ll;->D:F

    .line 239
    iput-boolean v1, p0, Ldolphin/webkit/ll;->V:Z

    .line 241
    iput-boolean v1, p0, Ldolphin/webkit/ll;->W:Z

    .line 242
    iput-boolean v1, p0, Ldolphin/webkit/ll;->X:Z

    .line 245
    iput-object p1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    .line 246
    iput-object p2, p0, Ldolphin/webkit/ll;->c:Ldolphin/webkit/ae;

    .line 253
    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Ldolphin/webkit/ll;->c(I)V

    .line 255
    new-instance v0, Ldolphin/webkit/ln;

    invoke-direct {v0, p0}, Ldolphin/webkit/ln;-><init>(Ldolphin/webkit/ll;)V

    iput-object v0, p0, Ldolphin/webkit/ll;->u:Ldolphin/webkit/ln;

    .line 256
    return-void
.end method

.method static synthetic H()F
    .locals 1

    .prologue
    .line 53
    sget v0, Ldolphin/webkit/ll;->J:F

    return v0
.end method

.method private I()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v0

    .line 793
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 794
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/WebViewClassic;->b(II)Z

    .line 796
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/ll;->v()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/ll;->a(FZ)Z

    .line 797
    return-void
.end method

.method private J()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 800
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getAutoAlignEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 801
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v3}, Ldolphin/webkit/WebViewClassic;->a(I)V

    .line 802
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getKernelTranscodingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v3}, Ldolphin/webkit/WebViewClassic;->b(Z)V

    .line 862
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebViewClassic;->b(Z)V

    .line 810
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_1

    .line 812
    const-string v1, "auto fit"

    const-string v4, "doubletap"

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Ldolphin/webkit/WebChromeClient;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v1

    .line 817
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->v()Landroid/graphics/Rect;

    move-result-object v4

    .line 818
    if-eqz v4, :cond_c

    .line 819
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getKernelTranscodingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 821
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    .line 822
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    mul-float/2addr v0, v5

    .line 823
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_2

    const/high16 v6, 0x3fa00000

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_2
    move v0, v1

    .line 828
    :cond_3
    :goto_1
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 829
    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    if-ge v1, v8, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Ldolphin/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v4

    sub-int/2addr v1, v4

    .line 833
    if-lez v1, :cond_5

    .line 834
    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Ldolphin/webkit/ll;->F:F

    sub-float v2, v0, v2

    div-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/ll;->o:F

    .line 841
    :goto_3
    invoke-virtual {p0, v0, v3}, Ldolphin/webkit/ll;->a(FZ)Z

    goto :goto_0

    .line 829
    :cond_4
    add-int/lit8 v1, v1, -0x5

    goto :goto_2

    .line 836
    :cond_5
    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 837
    iput v7, p0, Ldolphin/webkit/ll;->o:F

    goto :goto_3

    .line 843
    :cond_6
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v1

    .line 845
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget v4, p0, Ldolphin/webkit/ll;->v:I

    iget v5, p0, Ldolphin/webkit/ll;->w:I

    invoke-virtual {v0, v4, v5, v1}, Ldolphin/webkit/WebViewClassic;->a(IIF)I

    move-result v0

    .line 846
    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    .line 848
    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    if-ge v0, v8, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Ldolphin/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v4

    sub-int/2addr v0, v4

    .line 852
    if-lez v0, :cond_a

    .line 853
    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v4, p0, Ldolphin/webkit/ll;->F:F

    sub-float v4, v1, v4

    div-float/2addr v0, v4

    iput v0, p0, Ldolphin/webkit/ll;->o:F

    .line 859
    :cond_7
    :goto_5
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v0

    if-nez v0, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p0, v1, v2}, Ldolphin/webkit/ll;->a(FZ)Z

    goto/16 :goto_0

    .line 848
    :cond_9
    add-int/lit8 v0, v0, -0x5

    goto :goto_4

    .line 855
    :cond_a
    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/view/View;->scrollBy(II)V

    .line 856
    iput v7, p0, Ldolphin/webkit/ll;->o:F

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method private K()Ldolphin/webkit/lc;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1351
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1352
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1353
    iget-object v1, p0, Ldolphin/webkit/ll;->d:Ldolphin/webkit/ld;

    if-nez v1, :cond_2

    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1355
    new-instance v0, Ldolphin/webkit/ld;

    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/ld;-><init>(Ldolphin/webkit/ll;Ldolphin/webkit/WebViewClassic;)V

    iput-object v0, p0, Ldolphin/webkit/ll;->d:Ldolphin/webkit/ld;

    .line 1363
    :cond_0
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/ll;->d:Ldolphin/webkit/ld;

    .line 1371
    :cond_1
    :goto_1
    return-object v0

    .line 1358
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/ll;->d:Ldolphin/webkit/ld;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    iput-object v0, p0, Ldolphin/webkit/ll;->d:Ldolphin/webkit/ld;

    goto :goto_0

    .line 1365
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/ll;->e:Ldolphin/webkit/lg;

    if-nez v0, :cond_4

    .line 1366
    new-instance v0, Ldolphin/webkit/lg;

    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-direct {v0, v1}, Ldolphin/webkit/lg;-><init>(Ldolphin/webkit/WebViewClassic;)V

    iput-object v0, p0, Ldolphin/webkit/ll;->e:Ldolphin/webkit/lg;

    .line 1368
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ll;->e:Ldolphin/webkit/lg;

    goto :goto_1
.end method

.method static synthetic a(Ldolphin/webkit/ll;F)F
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->q:F

    return p1
.end method

.method static synthetic a(Ldolphin/webkit/ll;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->s:I

    return p1
.end method

.method static synthetic a(Ldolphin/webkit/ll;)Ldolphin/webkit/ln;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ldolphin/webkit/ll;->u:Ldolphin/webkit/ln;

    return-object v0
.end method

.method private a(FZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v5, 0x3f800000

    .line 621
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    move v0, v1

    .line 622
    :goto_0
    invoke-virtual {p0, p1}, Ldolphin/webkit/ll;->d(F)F

    move-result v3

    .line 625
    if-eqz v0, :cond_7

    iget v0, p0, Ldolphin/webkit/ll;->i:F

    iget v4, p0, Ldolphin/webkit/ll;->A:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 626
    invoke-virtual {p0, v1}, Ldolphin/webkit/ll;->b(Z)V

    .line 631
    :goto_1
    if-eqz p2, :cond_0

    .line 632
    iput v3, p0, Ldolphin/webkit/ll;->z:F

    .line 638
    :cond_0
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    iget v1, p0, Ldolphin/webkit/ll;->A:F

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ldolphin/webkit/ll;->z:F

    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getKernelTranscodingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 644
    :cond_1
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_5

    .line 645
    :cond_2
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    .line 646
    iget v0, p0, Ldolphin/webkit/ll;->G:F

    .line 648
    iget v1, p0, Ldolphin/webkit/ll;->F:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Ldolphin/webkit/ll;->V:Z

    if-nez v1, :cond_3

    .line 649
    iget-object v1, p0, Ldolphin/webkit/ll;->c:Ldolphin/webkit/ae;

    iget v2, p0, Ldolphin/webkit/ll;->F:F

    invoke-virtual {v1, v2, v3}, Ldolphin/webkit/ae;->a(FF)V

    .line 652
    :cond_3
    iput v3, p0, Ldolphin/webkit/ll;->F:F

    .line 653
    div-float v1, v5, v3

    iput v1, p0, Ldolphin/webkit/ll;->G:F

    .line 655
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->J()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Ldolphin/webkit/ll;->X:Z

    if-nez v1, :cond_4

    .line 663
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v1

    .line 664
    iget-object v2, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v2

    .line 665
    mul-float/2addr v0, v3

    .line 666
    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float v3, v0, v5

    iget v4, p0, Ldolphin/webkit/ll;->o:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 667
    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v0, v5

    iget v3, p0, Ldolphin/webkit/ll;->p:F

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 671
    iget-object v2, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v2, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v2}, Ldolphin/webkit/ViewManager;->d()V

    .line 675
    iget-object v2, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Ldolphin/webkit/WebViewClassic;->g(I)I

    move-result v1

    .line 676
    iget-object v2, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Ldolphin/webkit/WebViewClassic;->h(I)I

    move-result v0

    .line 677
    iget-object v2, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2, v1, v0}, Ldolphin/webkit/WebViewClassic;->b(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 681
    if-nez p2, :cond_4

    .line 682
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 689
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p2}, Ldolphin/webkit/WebViewClassic;->d(Z)Z

    .line 691
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 621
    goto/16 :goto_0

    .line 628
    :cond_7
    invoke-virtual {p0}, Ldolphin/webkit/ll;->v()F

    move-result v0

    invoke-static {v3, v0}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    invoke-virtual {p0, v1}, Ldolphin/webkit/ll;->b(Z)V

    goto/16 :goto_1

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Ldolphin/webkit/ll;FZZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/ll;->a(FZZ)V

    return-void
.end method

.method private a(Ldolphin/webkit/jp;I)Z
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    .line 1250
    iget v0, p0, Ldolphin/webkit/ll;->m:I

    .line 1251
    invoke-virtual {v1}, Ldolphin/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1252
    iget-object v1, p1, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    .line 1255
    sget v0, Ldolphin/webkit/WebViewClassic;->y:I

    iget-object v1, p1, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1262
    :cond_0
    :goto_0
    iget v1, p0, Ldolphin/webkit/ll;->m:I

    if-eq v0, v1, :cond_2

    .line 1263
    invoke-direct {p0, v0}, Ldolphin/webkit/ll;->c(I)V

    .line 1264
    const/4 v0, 0x1

    .line 1266
    :goto_1
    return v0

    .line 1260
    :cond_1
    int-to-float v0, p2

    iget v1, p0, Ldolphin/webkit/ll;->A:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1266
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Ldolphin/webkit/ll;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Ldolphin/webkit/ll;->k:Z

    return p1
.end method

.method static synthetic b(Ldolphin/webkit/ll;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->q:F

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/ll;F)F
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->r:F

    return p1
.end method

.method static synthetic b(Ldolphin/webkit/ll;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->t:I

    return p1
.end method

.method public static final b(FF)Z
    .locals 2

    .prologue
    .line 430
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Ldolphin/webkit/ll;->I:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/ll;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Ldolphin/webkit/ll;->V:Z

    return p1
.end method

.method static synthetic c(Ldolphin/webkit/ll;F)F
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->x:F

    return p1
.end method

.method static synthetic c(Ldolphin/webkit/ll;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->v:I

    return p1
.end method

.method static synthetic c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    const/16 v0, 0x3d4

    iput v0, p0, Ldolphin/webkit/ll;->m:I

    .line 773
    :goto_0
    const/high16 v0, 0x3f800000

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/ll;->n:F

    .line 774
    return-void

    .line 771
    :cond_0
    iput p1, p0, Ldolphin/webkit/ll;->m:I

    goto :goto_0
.end method

.method static synthetic d(Ldolphin/webkit/ll;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->r:F

    return v0
.end method

.method static synthetic d(Ldolphin/webkit/ll;F)F
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->y:F

    return p1
.end method

.method static synthetic d(Ldolphin/webkit/ll;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Ldolphin/webkit/ll;->w:I

    return p1
.end method

.method static synthetic e(Ldolphin/webkit/ll;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->s:I

    return v0
.end method

.method static synthetic f(Ldolphin/webkit/ll;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->t:I

    return v0
.end method

.method static synthetic g(Ldolphin/webkit/ll;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    return v0
.end method

.method private g(F)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 300
    iget v0, p0, Ldolphin/webkit/ll;->A:F

    .line 301
    iput p1, p0, Ldolphin/webkit/ll;->A:F

    .line 302
    const/high16 v1, 0x3f800000

    div-float/2addr v1, p1

    iput v1, p0, Ldolphin/webkit/ll;->B:F

    .line 303
    const/high16 v1, 0x40800000

    mul-float/2addr v1, p1

    iput v1, p0, Ldolphin/webkit/ll;->f:F

    .line 304
    const/high16 v1, 0x3e800000

    mul-float/2addr v1, p1

    iput v1, p0, Ldolphin/webkit/ll;->g:F

    .line 308
    const/high16 v1, 0x41200000

    iget v2, p0, Ldolphin/webkit/ll;->f:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Ldolphin/webkit/ll;->f:F

    .line 310
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Ldolphin/webkit/ll;->h:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 312
    div-float v1, p1, v0

    iget v2, p0, Ldolphin/webkit/ll;->h:F

    mul-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/ll;->h:F

    .line 316
    :goto_0
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p0, Ldolphin/webkit/ll;->i:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 318
    div-float v0, p1, v0

    iget v1, p0, Ldolphin/webkit/ll;->i:F

    mul-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 322
    :goto_1
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    iget v1, p0, Ldolphin/webkit/ll;->h:F

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    iput v0, p0, Ldolphin/webkit/ll;->h:F

    .line 325
    :cond_0
    return-void

    .line 314
    :cond_1
    iget v1, p0, Ldolphin/webkit/ll;->f:F

    iput v1, p0, Ldolphin/webkit/ll;->h:F

    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Ldolphin/webkit/ll;->g:F

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    goto :goto_1
.end method

.method private h(F)Z
    .locals 4

    .prologue
    const/high16 v2, 0x3f000000

    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    if-nez v1, :cond_0

    .line 466
    :goto_0
    return v0

    .line 458
    :cond_0
    iput-boolean v0, p0, Ldolphin/webkit/ll;->k:Z

    .line 460
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->L()V

    .line 462
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/ll;->o:F

    .line 463
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/ll;->p:F

    .line 464
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget v2, p0, Ldolphin/webkit/ll;->o:F

    float-to-int v2, v2

    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Ldolphin/webkit/ll;->v:I

    .line 465
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget v2, p0, Ldolphin/webkit/ll;->p:F

    float-to-int v2, v2

    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Ldolphin/webkit/ll;->w:I

    .line 466
    iget v1, p0, Ldolphin/webkit/ll;->F:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/ll;->a(FZ)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic h(Ldolphin/webkit/ll;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Ldolphin/webkit/ll;->V:Z

    return v0
.end method

.method static synthetic i(Ldolphin/webkit/ll;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->o:F

    return v0
.end method

.method static synthetic j(Ldolphin/webkit/ll;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->p:F

    return v0
.end method

.method static synthetic k(Ldolphin/webkit/ll;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 1375
    invoke-direct {p0}, Ldolphin/webkit/ll;->K()Ldolphin/webkit/lc;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_0

    .line 1377
    invoke-interface {v0}, Ldolphin/webkit/lc;->a()V

    .line 1379
    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 1382
    invoke-direct {p0}, Ldolphin/webkit/ll;->K()Ldolphin/webkit/lc;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_0

    .line 1384
    invoke-interface {v0}, Ldolphin/webkit/lc;->b()V

    .line 1386
    :cond_0
    return-void
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 1389
    invoke-direct {p0}, Ldolphin/webkit/ll;->K()Ldolphin/webkit/lc;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldolphin/webkit/lc;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()V
    .locals 1

    .prologue
    .line 1394
    invoke-direct {p0}, Ldolphin/webkit/ll;->K()Ldolphin/webkit/lc;

    move-result-object v0

    .line 1395
    if-eqz v0, :cond_0

    .line 1396
    invoke-interface {v0}, Ldolphin/webkit/lc;->c()V

    .line 1398
    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .prologue
    .line 1406
    invoke-direct {p0}, Ldolphin/webkit/ll;->K()Ldolphin/webkit/lc;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldolphin/webkit/ll;->e:Ldolphin/webkit/lg;

    if-ne v0, v1, :cond_0

    .line 1408
    invoke-interface {v0}, Ldolphin/webkit/lc;->a()V

    .line 1410
    :cond_0
    return-void
.end method

.method public F()Landroid/view/View;
    .locals 2

    .prologue
    .line 1413
    invoke-direct {p0}, Ldolphin/webkit/ll;->K()Ldolphin/webkit/lc;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldolphin/webkit/ll;->e:Ldolphin/webkit/lg;

    if-ne v0, v1, :cond_0

    .line 1415
    iget-object v0, p0, Ldolphin/webkit/ll;->e:Ldolphin/webkit/lg;

    invoke-virtual {v0}, Ldolphin/webkit/lg;->e()Ldolphin/webkit/lk;

    move-result-object v0

    .line 1417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()V
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/ll;->W:Z

    .line 1423
    return-void
.end method

.method public final a()F
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Ldolphin/webkit/ll;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_0
    iput p1, p0, Ldolphin/webkit/ll;->C:F

    .line 269
    invoke-direct {p0, p1}, Ldolphin/webkit/ll;->g(F)V

    .line 270
    iput p1, p0, Ldolphin/webkit/ll;->F:F

    .line 271
    const/high16 v0, 0x3f800000

    div-float/2addr v0, p1

    iput v0, p0, Ldolphin/webkit/ll;->G:F

    .line 272
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 273
    return-void
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 404
    iput p1, p0, Ldolphin/webkit/ll;->o:F

    .line 405
    iput p2, p0, Ldolphin/webkit/ll;->p:F

    .line 406
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 409
    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/ll;->H:F

    .line 410
    return-void
.end method

.method public a(IIII)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1086
    invoke-virtual {p0}, Ldolphin/webkit/ll;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v0

    .line 1088
    iput v5, p0, Ldolphin/webkit/ll;->o:F

    .line 1089
    int-to-float v3, v0

    iput v3, p0, Ldolphin/webkit/ll;->p:F

    .line 1090
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ldolphin/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    iput v3, p0, Ldolphin/webkit/ll;->v:I

    .line 1091
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ldolphin/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->w:I

    .line 1095
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/ll;->j:Z

    if-nez v0, :cond_1

    .line 1100
    const/high16 v3, 0x3f800000

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->K()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1104
    iget v0, p0, Ldolphin/webkit/ll;->H:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iget v0, p0, Ldolphin/webkit/ll;->H:F

    iget v3, p0, Ldolphin/webkit/ll;->i:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 1105
    iget v0, p0, Ldolphin/webkit/ll;->H:F

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1109
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/ll;->B()V

    .line 1112
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1122
    :goto_1
    return-void

    .line 1100
    :cond_2
    iget v0, p0, Ldolphin/webkit/ll;->m:I

    goto :goto_0

    .line 1120
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v3

    new-instance v4, Ldolphin/webkit/lo;

    if-eq p1, p3, :cond_4

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v5, p0, Ldolphin/webkit/ll;->l:Z

    if-ge p1, p3, :cond_5

    :goto_3
    invoke-direct {v4, p0, v0, v5, v1}, Ldolphin/webkit/lo;-><init>(Ldolphin/webkit/ll;ZZZ)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 866
    sget-boolean v0, Ldolphin/webkit/ll;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 868
    :cond_0
    if-nez p1, :cond_2

    .line 869
    const-string v0, "webviewZoom"

    const-string v1, "context null in updateMultiTouchSupport"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    :goto_0
    return-void

    .line 873
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    .line 874
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 875
    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    .line 876
    :cond_3
    iput-boolean v2, p0, Ldolphin/webkit/ll;->S:Z

    .line 877
    iput-boolean v2, p0, Ldolphin/webkit/ll;->T:Z

    .line 878
    const-string v0, "webviewZoom"

    const-string v1, "Error in updateMultiTouchSupport"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_1
    iget-boolean v0, p0, Ldolphin/webkit/ll;->S:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldolphin/webkit/ll;->U:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_9

    .line 891
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Ldolphin/webkit/lp;

    invoke-direct {v1, p0, v5}, Ldolphin/webkit/lp;-><init>(Ldolphin/webkit/ll;Ldolphin/webkit/lm;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Ldolphin/webkit/ll;->U:Landroid/view/ScaleGestureDetector;

    goto :goto_0

    .line 881
    :cond_4
    const-string v4, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->supportZoom()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ldolphin/webkit/ll;->S:Z

    .line 885
    const-string v0, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    iput-boolean v2, p0, Ldolphin/webkit/ll;->T:Z

    goto :goto_1

    :cond_8
    move v0, v2

    .line 881
    goto :goto_2

    .line 892
    :cond_9
    iget-boolean v0, p0, Ldolphin/webkit/ll;->S:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/ll;->U:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_1

    .line 893
    iput-object v5, p0, Ldolphin/webkit/ll;->U:Landroid/view/ScaleGestureDetector;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Ldolphin/webkit/ll;->X:Z

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    iget v0, p0, Ldolphin/webkit/ll;->Q:I

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/ll;->R:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1335
    const-string v0, "scale"

    iget v1, p0, Ldolphin/webkit/ll;->F:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1336
    const-string v0, "textwrapScale"

    iget v1, p0, Ldolphin/webkit/ll;->z:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1337
    const-string v0, "overview"

    iget-boolean v1, p0, Ldolphin/webkit/ll;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1338
    return-void
.end method

.method public a(Ldolphin/webkit/kc;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1160
    iget v0, p1, Ldolphin/webkit/kc;->a:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1161
    iget-boolean v0, p1, Ldolphin/webkit/kc;->h:Z

    if-eqz v0, :cond_1

    .line 1162
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1163
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1164
    iput-boolean v2, p0, Ldolphin/webkit/ll;->j:Z

    .line 1177
    :goto_0
    iget v0, p1, Ldolphin/webkit/kc;->b:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 1178
    iget v0, p0, Ldolphin/webkit/ll;->f:F

    iput v0, p0, Ldolphin/webkit/ll;->h:F

    .line 1182
    :goto_1
    return-void

    .line 1166
    :cond_0
    iget v0, p1, Ldolphin/webkit/kc;->e:F

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1167
    iput-boolean v1, p0, Ldolphin/webkit/ll;->j:Z

    goto :goto_0

    .line 1170
    :cond_1
    iget v0, p0, Ldolphin/webkit/ll;->g:F

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1171
    iput-boolean v2, p0, Ldolphin/webkit/ll;->j:Z

    goto :goto_0

    .line 1174
    :cond_2
    iget v0, p1, Ldolphin/webkit/kc;->a:F

    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1175
    iput-boolean v1, p0, Ldolphin/webkit/ll;->j:Z

    goto :goto_0

    .line 1180
    :cond_3
    iget v0, p1, Ldolphin/webkit/kc;->b:F

    iput v0, p0, Ldolphin/webkit/ll;->h:F

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ll;->k:Z

    .line 1431
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Ldolphin/webkit/ll;->a(FZZ)V

    .line 614
    return-void
.end method

.method public a(FZ)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000

    .line 476
    iput-boolean v1, p0, Ldolphin/webkit/ll;->k:Z

    .line 477
    iget v2, p0, Ldolphin/webkit/ll;->F:F

    .line 478
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v3

    iput v3, p0, Ldolphin/webkit/ll;->N:I

    .line 479
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v3

    iput v3, p0, Ldolphin/webkit/ll;->O:I

    .line 482
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v3

    invoke-static {p1, v3}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 483
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result p1

    .line 486
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/ll;->b(FZ)V

    .line 488
    iget v3, p0, Ldolphin/webkit/ll;->F:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 489
    iget-boolean v1, p0, Ldolphin/webkit/ll;->W:Z

    if-eqz v1, :cond_1

    .line 490
    iput-boolean v0, p0, Ldolphin/webkit/ll;->X:Z

    .line 493
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ldolphin/webkit/ll;->P:J

    .line 494
    div-float v1, v5, v2

    iput v1, p0, Ldolphin/webkit/ll;->L:F

    .line 495
    iget v1, p0, Ldolphin/webkit/ll;->F:F

    div-float v1, v5, v1

    iput v1, p0, Ldolphin/webkit/ll;->M:F

    .line 496
    iget v1, p0, Ldolphin/webkit/ll;->F:F

    iput v1, p0, Ldolphin/webkit/ll;->K:F

    .line 497
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->H()V

    .line 498
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 501
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(Ldolphin/webkit/jp;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1191
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    .line 1192
    invoke-direct {p0, p1, v0}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/jp;I)Z

    move-result v4

    .line 1193
    invoke-virtual {p0}, Ldolphin/webkit/ll;->v()F

    move-result v5

    .line 1194
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v6

    .line 1195
    if-eqz v4, :cond_2

    invoke-virtual {v6}, Ldolphin/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ldolphin/webkit/ll;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/ll;->l:Z

    if-eqz v0, :cond_2

    .line 1200
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/ll;->l:Z

    if-nez v0, :cond_9

    iget v0, p0, Ldolphin/webkit/ll;->z:F

    iget v3, p0, Ldolphin/webkit/ll;->A:F

    invoke-static {v0, v3}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ldolphin/webkit/ll;->A:F

    invoke-static {v5, v0}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1203
    :cond_1
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 1209
    :cond_2
    :goto_0
    iget-boolean v0, p0, Ldolphin/webkit/ll;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1210
    :cond_3
    iput v5, p0, Ldolphin/webkit/ll;->i:F

    .line 1211
    iget v0, p0, Ldolphin/webkit/ll;->h:F

    iget v3, p0, Ldolphin/webkit/ll;->i:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->h:F

    .line 1215
    :cond_4
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    invoke-static {v5, v0}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v7

    .line 1217
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    sub-float v0, v5, v0

    sget v3, Ldolphin/webkit/ll;->I:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_a

    move v0, v1

    .line 1221
    :goto_1
    iget-boolean v3, p0, Ldolphin/webkit/ll;->l:Z

    if-eqz v3, :cond_b

    iget v3, p0, Ldolphin/webkit/ll;->A:F

    invoke-static {v5, v3}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    .line 1223
    :goto_2
    iget-object v8, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v8}, Ldolphin/webkit/WebViewClassic;->J()Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Ldolphin/webkit/ll;->k:Z

    if-nez v0, :cond_6

    if-eqz v3, :cond_d

    :cond_6
    if-eqz v7, :cond_d

    if-eqz v4, :cond_d

    .line 1227
    :cond_7
    iput-boolean v2, p0, Ldolphin/webkit/ll;->k:Z

    .line 1228
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    invoke-virtual {p0, v0}, Ldolphin/webkit/ll;->f(F)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_3
    invoke-virtual {p0, v5, v1}, Ldolphin/webkit/ll;->b(FZ)V

    .line 1233
    :goto_4
    iget-boolean v0, p1, Ldolphin/webkit/jp;->f:Z

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Ldolphin/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1236
    iget-boolean v0, p0, Ldolphin/webkit/ll;->l:Z

    iput-boolean v0, p0, Ldolphin/webkit/ll;->k:Z

    .line 1239
    :cond_8
    return v7

    .line 1205
    :cond_9
    iput v5, p0, Ldolphin/webkit/ll;->z:F

    goto :goto_0

    :cond_a
    move v0, v2

    .line 1217
    goto :goto_1

    :cond_b
    move v3, v2

    .line 1221
    goto :goto_2

    :cond_c
    move v1, v2

    .line 1228
    goto :goto_3

    .line 1231
    :cond_d
    if-nez v7, :cond_e

    :goto_5
    iput-boolean v1, p0, Ldolphin/webkit/ll;->l:Z

    goto :goto_4

    :cond_e
    move v1, v2

    goto :goto_5
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Ldolphin/webkit/ll;->G:F

    return v0
.end method

.method public b(F)V
    .locals 5

    .prologue
    .line 285
    sget-boolean v0, Ldolphin/webkit/ll;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :cond_0
    iget v0, p0, Ldolphin/webkit/ll;->A:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Ldolphin/webkit/ll;->I:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 289
    iget v0, p0, Ldolphin/webkit/ll;->A:F

    .line 291
    iput p1, p0, Ldolphin/webkit/ll;->C:F

    .line 292
    invoke-direct {p0, p1}, Ldolphin/webkit/ll;->g(F)V

    .line 293
    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    div-float v0, p1, v0

    .line 295
    :goto_0
    iget v1, p0, Ldolphin/webkit/ll;->F:F

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/ll;->b(FZ)V

    .line 297
    :cond_1
    return-void

    .line 293
    :cond_2
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public b(FZ)V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldolphin/webkit/ll;->a(FZZ)V

    .line 618
    return-void
.end method

.method public b(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 604
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    iget v2, p0, Ldolphin/webkit/ll;->F:F

    sub-float/2addr v0, v2

    const v2, 0x3dcccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    move v0, v1

    .line 605
    :goto_0
    int-to-float v2, p1

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    iput v2, p0, Ldolphin/webkit/ll;->D:F

    .line 606
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v2

    iput v2, p0, Ldolphin/webkit/ll;->z:F

    .line 607
    if-eqz v0, :cond_1

    iget v0, p0, Ldolphin/webkit/ll;->z:F

    .line 609
    :goto_1
    invoke-direct {p0, v0, v1, v1}, Ldolphin/webkit/ll;->a(FZZ)V

    .line 610
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 607
    :cond_1
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    iget v2, p0, Ldolphin/webkit/ll;->F:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 532
    iput-boolean v6, p0, Ldolphin/webkit/ll;->k:Z

    .line 533
    iget v0, p0, Ldolphin/webkit/ll;->K:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_0

    .line 534
    const-string v0, "webviewZoom"

    const-string v1, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput-boolean v6, p0, Ldolphin/webkit/ll;->X:Z

    .line 593
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldolphin/webkit/ll;->P:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 543
    const/16 v1, 0xaf

    if-ge v0, v1, :cond_2

    .line 544
    int-to-float v0, v0

    const/high16 v1, 0x432f0000

    div-float/2addr v0, v1

    .line 545
    const/high16 v1, 0x3f800000

    iget v2, p0, Ldolphin/webkit/ll;->L:F

    iget v3, p0, Ldolphin/webkit/ll;->M:F

    iget v4, p0, Ldolphin/webkit/ll;->L:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    div-float v0, v1, v0

    .line 547
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 556
    :goto_1
    iget v1, p0, Ldolphin/webkit/ll;->L:F

    mul-float/2addr v1, v0

    .line 557
    iget v2, p0, Ldolphin/webkit/ll;->N:I

    int-to-float v2, v2

    iget v3, p0, Ldolphin/webkit/ll;->o:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v3, p0, Ldolphin/webkit/ll;->o:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 558
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v3

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->getContentWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v3, v4}, Ldolphin/webkit/WebViewClassic;->a(III)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v3

    add-int/2addr v2, v3

    .line 560
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v3

    .line 561
    iget v4, p0, Ldolphin/webkit/ll;->O:I

    int-to-float v4, v4

    iget v5, p0, Ldolphin/webkit/ll;->p:F

    add-float/2addr v4, v5

    int-to-float v5, v3

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    iget v4, p0, Ldolphin/webkit/ll;->p:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 564
    if-gt v1, v3, :cond_3

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    neg-int v1, v1

    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v3

    add-int/2addr v1, v3

    .line 568
    iget-boolean v3, p0, Ldolphin/webkit/ll;->W:Z

    if-eqz v3, :cond_4

    .line 569
    iget-object v3, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Ldolphin/webkit/WebViewClassic;->b(II)Z

    .line 572
    int-to-float v3, v2

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 573
    invoke-virtual {p0, v0, v6}, Ldolphin/webkit/ll;->b(FZ)V

    .line 575
    iget v0, p0, Ldolphin/webkit/ll;->K:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_1

    .line 577
    iput-boolean v6, p0, Ldolphin/webkit/ll;->X:Z

    .line 582
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v6}, Ldolphin/webkit/WebViewClassic;->d(Z)Z

    .line 590
    :cond_1
    :goto_3
    iput v2, p0, Ldolphin/webkit/ll;->Q:I

    .line 591
    iput v1, p0, Ldolphin/webkit/ll;->R:I

    goto/16 :goto_0

    .line 549
    :cond_2
    iget v0, p0, Ldolphin/webkit/ll;->K:F

    .line 551
    iput v7, p0, Ldolphin/webkit/ll;->K:F

    .line 552
    iget-object v1, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->I()V

    goto/16 :goto_1

    .line 564
    :cond_3
    sub-int/2addr v1, v3

    iget-object v4, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->getViewHeight()I

    move-result v4

    iget-object v5, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v1, v4, v5}, Ldolphin/webkit/WebViewClassic;->a(III)I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_2

    .line 585
    :cond_4
    int-to-float v3, v2

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 586
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_3
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 1344
    const-string v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->F:F

    .line 1345
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    div-float v0, v1, v0

    iput v0, p0, Ldolphin/webkit/ll;->G:F

    .line 1346
    const-string v0, "textwrapScale"

    iget v1, p0, Ldolphin/webkit/ll;->F:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 1347
    const-string v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldolphin/webkit/ll;->l:Z

    .line 1348
    return-void
.end method

.method public b(Ldolphin/webkit/jp;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1278
    sget-boolean v0, Ldolphin/webkit/ll;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1279
    :cond_0
    sget-boolean v0, Ldolphin/webkit/ll;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Ldolphin/webkit/jp;->e:Ldolphin/webkit/kc;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1280
    :cond_1
    sget-boolean v0, Ldolphin/webkit/ll;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1282
    :cond_2
    iget-object v4, p1, Ldolphin/webkit/jp;->e:Ldolphin/webkit/kc;

    .line 1283
    iget-object v0, p1, Ldolphin/webkit/jp;->b:Landroid/graphics/Point;

    .line 1284
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Ldolphin/webkit/jp;->d:I

    invoke-virtual {p0, v4, v0, v1}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/kc;II)V

    .line 1285
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/jp;I)Z

    .line 1286
    invoke-virtual {p0}, Ldolphin/webkit/ll;->v()F

    move-result v1

    .line 1287
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v5

    .line 1288
    iget-boolean v0, p0, Ldolphin/webkit/ll;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1289
    :cond_3
    iget v0, p0, Ldolphin/webkit/ll;->H:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    iget v0, p0, Ldolphin/webkit/ll;->H:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iput v0, p0, Ldolphin/webkit/ll;->i:F

    .line 1291
    iget v0, p0, Ldolphin/webkit/ll;->h:F

    iget v2, p0, Ldolphin/webkit/ll;->i:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->h:F

    .line 1294
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->J()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1296
    iget v0, p0, Ldolphin/webkit/ll;->H:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_a

    .line 1297
    iget v0, p0, Ldolphin/webkit/ll;->H:F

    .line 1317
    :cond_5
    :goto_1
    iget-boolean v2, v4, Ldolphin/webkit/kc;->i:Z

    if-nez v2, :cond_10

    .line 1318
    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1320
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1321
    iget v2, p0, Ldolphin/webkit/ll;->z:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Ldolphin/webkit/ll;->z:F

    .line 1323
    :cond_6
    iget v2, p0, Ldolphin/webkit/ll;->z:F

    invoke-static {v2, v0}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v2

    move v7, v2

    move v2, v0

    move v0, v7

    .line 1325
    :goto_2
    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2, v1}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v3, 0x1

    :cond_7
    iput-boolean v3, p0, Ldolphin/webkit/ll;->k:Z

    .line 1327
    invoke-virtual {p0, v2, v0}, Ldolphin/webkit/ll;->b(FZ)V

    .line 1330
    invoke-virtual {p0}, Ldolphin/webkit/ll;->D()V

    .line 1332
    :cond_8
    return-void

    :cond_9
    move v0, v1

    .line 1289
    goto :goto_0

    .line 1298
    :cond_a
    iget-boolean v0, v4, Ldolphin/webkit/kc;->i:Z

    if-nez v0, :cond_b

    iget v0, v4, Ldolphin/webkit/kc;->c:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_e

    .line 1299
    :cond_b
    iget v0, v4, Ldolphin/webkit/kc;->c:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_c

    iget v0, v4, Ldolphin/webkit/kc;->c:F

    .line 1301
    :goto_3
    iget v2, v4, Ldolphin/webkit/kc;->d:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_d

    iget v2, v4, Ldolphin/webkit/kc;->d:F

    :goto_4
    iput v2, p0, Ldolphin/webkit/ll;->z:F

    goto :goto_1

    :cond_c
    move v0, v1

    .line 1299
    goto :goto_3

    .line 1301
    :cond_d
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v2

    goto :goto_4

    .line 1305
    :cond_e
    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1307
    :cond_f
    iget v0, p0, Ldolphin/webkit/ll;->A:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1309
    :goto_5
    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1313
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v2

    iput v2, p0, Ldolphin/webkit/ll;->z:F

    goto :goto_1

    :cond_10
    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_11
    move v0, v1

    goto :goto_5
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 782
    iput-boolean p1, p0, Ldolphin/webkit/ll;->l:Z

    .line 783
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    return v0
.end method

.method final c(F)F
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Ldolphin/webkit/ll;->C:F

    iget v1, p0, Ldolphin/webkit/ll;->D:F

    mul-float/2addr v0, v1

    sget v1, Ldolphin/webkit/ll;->E:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public c(FF)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 716
    iput-boolean v1, p0, Ldolphin/webkit/ll;->k:Z

    .line 717
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v3

    .line 718
    invoke-virtual {p0}, Ldolphin/webkit/ll;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/ll;->a(FF)V

    .line 723
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    float-to-int v4, p1

    iget-object v5, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ldolphin/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->v:I

    .line 724
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    float-to-int v4, p2

    iget-object v5, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ldolphin/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->w:I

    .line 725
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Ldolphin/webkit/ll;->x:F

    .line 726
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    iput v0, p0, Ldolphin/webkit/ll;->y:F

    .line 728
    invoke-virtual {v3, v1}, Ldolphin/webkit/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 731
    invoke-virtual {p0}, Ldolphin/webkit/ll;->B()V

    .line 734
    invoke-virtual {v3}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 739
    :goto_1
    iget v4, p0, Ldolphin/webkit/ll;->F:F

    iget v5, p0, Ldolphin/webkit/ll;->z:F

    invoke-static {v4, v5}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 740
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v4, p0, Ldolphin/webkit/ll;->l:Z

    if-eqz v4, :cond_3

    .line 743
    :cond_2
    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 748
    :cond_3
    invoke-virtual {v3}, Ldolphin/webkit/WebSettingsClassic;->getAutoFitPage()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Ldolphin/webkit/ll;->z:F

    invoke-static {v3, v0}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    iget-boolean v1, p0, Ldolphin/webkit/ll;->l:Z

    if-nez v1, :cond_5

    .line 753
    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 754
    invoke-virtual {p0, v2}, Ldolphin/webkit/ll;->a(Z)V

    goto :goto_0

    .line 737
    :cond_4
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    goto :goto_1

    .line 755
    :cond_5
    iget-boolean v0, p0, Ldolphin/webkit/ll;->l:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ldolphin/webkit/ll;->v()F

    move-result v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ll;->f(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    iget v0, p0, Ldolphin/webkit/ll;->z:F

    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 758
    invoke-virtual {p0}, Ldolphin/webkit/ll;->f()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/ll;->z:F

    .line 759
    invoke-virtual {p0, v2}, Ldolphin/webkit/ll;->a(Z)V

    .line 761
    :cond_6
    invoke-direct {p0}, Ldolphin/webkit/ll;->I()V

    goto/16 :goto_0

    .line 763
    :cond_7
    invoke-direct {p0}, Ldolphin/webkit/ll;->J()V

    goto/16 :goto_0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    return v0
.end method

.method public final d(F)F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 414
    iget p1, p0, Ldolphin/webkit/ll;->i:F

    .line 418
    :cond_0
    :goto_0
    return p1

    .line 415
    :cond_1
    iget v0, p0, Ldolphin/webkit/ll;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 416
    iget p1, p0, Ldolphin/webkit/ll;->h:F

    goto :goto_0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Ldolphin/webkit/ll;->A:F

    return v0
.end method

.method public final e(F)Z
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Ldolphin/webkit/ll;->h:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Ldolphin/webkit/ll;->v()F

    move-result v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ll;->c(F)F

    move-result v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/ll;->d(F)F

    move-result v0

    return v0
.end method

.method public f(F)Z
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    invoke-static {p1, v0}, Ldolphin/webkit/ll;->b(FF)Z

    move-result v0

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Ldolphin/webkit/ll;->g:F

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Ldolphin/webkit/ll;->v:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Ldolphin/webkit/ll;->w:I

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/ll;->w:I

    iput v0, p0, Ldolphin/webkit/ll;->v:I

    .line 385
    return-void
.end method

.method public final k()F
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Ldolphin/webkit/ll;->x:F

    return v0
.end method

.method public final l()F
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Ldolphin/webkit/ll;->y:F

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Ldolphin/webkit/ll;->s:I

    return v0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Ldolphin/webkit/ll;->i:F

    iget v1, p0, Ldolphin/webkit/ll;->h:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Ldolphin/webkit/ll;->h:F

    iget v1, p0, Ldolphin/webkit/ll;->F:F

    sub-float/2addr v0, v1

    sget v1, Ldolphin/webkit/ll;->I:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Ldolphin/webkit/ll;->F:F

    iget v1, p0, Ldolphin/webkit/ll;->i:F

    sub-float/2addr v0, v1

    sget v1, Ldolphin/webkit/ll;->I:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 446
    const/high16 v0, 0x3fa00000

    invoke-direct {p0, v0}, Ldolphin/webkit/ll;->h(F)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 450
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Ldolphin/webkit/ll;->h(F)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Ldolphin/webkit/ll;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/ll;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 600
    iget v0, p0, Ldolphin/webkit/ll;->K:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/ll;->X:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method v()F
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Ldolphin/webkit/ll;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/ll;->n:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Ldolphin/webkit/ll;->l:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Ldolphin/webkit/ll;->T:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Ldolphin/webkit/ll;->s()Z

    move-result v0

    return v0
.end method

.method public z()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Ldolphin/webkit/ll;->U:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method
