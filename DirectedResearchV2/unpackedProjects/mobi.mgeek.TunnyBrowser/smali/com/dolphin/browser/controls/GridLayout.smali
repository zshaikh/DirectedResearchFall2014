.class public Lcom/dolphin/browser/controls/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# static fields
.field static final a:Ljava/lang/String;

.field static final i:Lcom/dolphin/browser/controls/h;

.field public static final j:Lcom/dolphin/browser/controls/h;

.field public static final k:Lcom/dolphin/browser/controls/h;

.field public static final l:Lcom/dolphin/browser/controls/h;

.field public static final m:Lcom/dolphin/browser/controls/h;

.field public static final n:Lcom/dolphin/browser/controls/h;

.field public static final o:Lcom/dolphin/browser/controls/h;

.field public static final p:Lcom/dolphin/browser/controls/h;

.field private static final q:Lcom/dolphin/browser/controls/h;

.field private static final r:Lcom/dolphin/browser/controls/h;


# instance fields
.field final b:Lcom/dolphin/browser/controls/k;

.field final c:Lcom/dolphin/browser/controls/k;

.field d:Z

.field e:I

.field f:Z

.field g:I

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const-class v0, Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->a:Ljava/lang/String;

    .line 2481
    new-instance v0, Lcom/dolphin/browser/controls/a;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->i:Lcom/dolphin/browser/controls/h;

    .line 2487
    new-instance v0, Lcom/dolphin/browser/controls/b;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/b;-><init>()V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->q:Lcom/dolphin/browser/controls/h;

    .line 2493
    new-instance v0, Lcom/dolphin/browser/controls/c;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->r:Lcom/dolphin/browser/controls/h;

    .line 2503
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->q:Lcom/dolphin/browser/controls/h;

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->j:Lcom/dolphin/browser/controls/h;

    .line 2509
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->r:Lcom/dolphin/browser/controls/h;

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->k:Lcom/dolphin/browser/controls/h;

    .line 2515
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->r:Lcom/dolphin/browser/controls/h;

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->l:Lcom/dolphin/browser/controls/h;

    .line 2521
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->q:Lcom/dolphin/browser/controls/h;

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->m:Lcom/dolphin/browser/controls/h;

    .line 2528
    new-instance v0, Lcom/dolphin/browser/controls/d;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/d;-><init>()V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->n:Lcom/dolphin/browser/controls/h;

    .line 2541
    new-instance v0, Lcom/dolphin/browser/controls/e;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/e;-><init>()V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->o:Lcom/dolphin/browser/controls/h;

    .line 2591
    new-instance v0, Lcom/dolphin/browser/controls/g;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/controls/GridLayout;->p:Lcom/dolphin/browser/controls/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/controls/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    new-instance v0, Lcom/dolphin/browser/controls/k;

    invoke-direct {v0, p0, v2, v3}, Lcom/dolphin/browser/controls/k;-><init>(Lcom/dolphin/browser/controls/GridLayout;ZLcom/dolphin/browser/controls/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    .line 238
    new-instance v0, Lcom/dolphin/browser/controls/k;

    invoke-direct {v0, p0, v1, v3}, Lcom/dolphin/browser/controls/k;-><init>(Lcom/dolphin/browser/controls/GridLayout;ZLcom/dolphin/browser/controls/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    .line 239
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/GridLayout;->d:Z

    .line 240
    iput v1, p0, Lcom/dolphin/browser/controls/GridLayout;->e:I

    .line 241
    iput-boolean v1, p0, Lcom/dolphin/browser/controls/GridLayout;->f:Z

    .line 242
    iput v2, p0, Lcom/dolphin/browser/controls/GridLayout;->g:I

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$dimen;->default_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/controls/GridLayout;->h:I

    .line 256
    sget-object v0, Lcom/dolphin/browser/core/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 258
    const/4 v0, 0x2

    const/high16 v2, -0x80000000

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->b(I)V

    .line 259
    const/4 v0, 0x3

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->c(I)V

    .line 260
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(I)V

    .line 261
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(Z)V

    .line 262
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->d(I)V

    .line 263
    const/4 v0, 0x5

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->b(Z)V

    .line 264
    const/4 v0, 0x6

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static a(III)I
    .locals 2

    .prologue
    .line 963
    .line 964
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 965
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 966
    sparse-switch v1, :sswitch_data_0

    .line 981
    :cond_0
    :goto_0
    :sswitch_0
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    or-int/2addr v0, p0

    return v0

    .line 971
    :sswitch_1
    if-ge v0, p0, :cond_0

    .line 972
    const/high16 v1, 0x1000000

    or-int p0, v0, v1

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 978
    goto :goto_0

    .line 966
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/view/View;Lcom/dolphin/browser/controls/GridLayout$LayoutParams;ZZ)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 588
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/GridLayout;->f:Z

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return v2

    .line 591
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    move-object v3, v0

    .line 592
    :goto_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    .line 593
    :goto_2
    iget-object v3, v3, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 594
    if-eqz p4, :cond_4

    iget v0, v3, Lcom/dolphin/browser/controls/n;->a:I

    if-nez v0, :cond_3

    move v0, v1

    .line 596
    :goto_3
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;ZZZ)I

    move-result v2

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p2, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    move-object v3, v0

    goto :goto_1

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    goto :goto_2

    :cond_3
    move v0, v2

    .line 594
    goto :goto_3

    :cond_4
    iget v3, v3, Lcom/dolphin/browser/controls/n;->b:I

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    if-ne v3, v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private a(Landroid/view/View;ZZZ)I
    .locals 1

    .prologue
    .line 584
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Lcom/dolphin/browser/controls/n;ZI)I
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/n;->a()I

    move-result v1

    .line 649
    if-nez p2, :cond_0

    move v0, v1

    .line 653
    :goto_0
    return v0

    .line 652
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/dolphin/browser/controls/n;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 653
    :goto_1
    sub-int v0, p2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 652
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a([II)I
    .locals 3

    .prologue
    .line 542
    .line 543
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 544
    aget v2, p0, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    return p1
.end method

.method static a(IZ)Lcom/dolphin/browser/controls/h;
    .locals 2

    .prologue
    .line 558
    if-eqz p1, :cond_0

    const/4 v0, 0x7

    move v1, v0

    .line 559
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 560
    :goto_1
    and-int/2addr v1, p0

    shr-int v0, v1, v0

    .line 561
    packed-switch v0, :pswitch_data_0

    .line 571
    :pswitch_0
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->i:Lcom/dolphin/browser/controls/h;

    :goto_2
    return-object v0

    .line 558
    :cond_0
    const/16 v0, 0x70

    move v1, v0

    goto :goto_0

    .line 559
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 563
    :pswitch_1
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->q:Lcom/dolphin/browser/controls/h;

    goto :goto_2

    .line 565
    :pswitch_2
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->r:Lcom/dolphin/browser/controls/h;

    goto :goto_2

    .line 567
    :pswitch_3
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->p:Lcom/dolphin/browser/controls/h;

    goto :goto_2

    .line 569
    :pswitch_4
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->n:Lcom/dolphin/browser/controls/h;

    goto :goto_2

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(II)Lcom/dolphin/browser/controls/q;
    .locals 1

    .prologue
    .line 2405
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->i:Lcom/dolphin/browser/controls/h;

    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(IILcom/dolphin/browser/controls/h;)Lcom/dolphin/browser/controls/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(IILcom/dolphin/browser/controls/h;)Lcom/dolphin/browser/controls/q;
    .locals 6

    .prologue
    .line 2378
    new-instance v0, Lcom/dolphin/browser/controls/q;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/controls/q;-><init>(ZIILcom/dolphin/browser/controls/h;Lcom/dolphin/browser/controls/a;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(IIZ)V
    .locals 13

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v12

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_7

    .line 893
    invoke-virtual {p0, v11}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 894
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v3

    .line 896
    if-eqz p3, :cond_2

    .line 897
    iget v4, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->width:I

    iget v5, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 899
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/controls/GridLayout;->e:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    .line 900
    :goto_2
    if-eqz v2, :cond_4

    iget-object v0, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 901
    :goto_3
    iget-object v4, v0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    sget-object v5, Lcom/dolphin/browser/controls/GridLayout;->p:Lcom/dolphin/browser/controls/h;

    if-ne v4, v5, :cond_0

    .line 902
    iget-object v4, v0, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 903
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    .line 904
    :goto_4
    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->f()[I

    move-result-object v0

    .line 905
    iget v5, v4, Lcom/dolphin/browser/controls/n;->b:I

    aget v5, v0, v5

    iget v4, v4, Lcom/dolphin/browser/controls/n;->a:I

    aget v0, v0, v4

    sub-int v0, v5, v0

    .line 906
    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;Z)I

    move-result v4

    sub-int v4, v0, v4

    .line 907
    if-eqz v2, :cond_6

    .line 908
    iget v5, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 899
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    .line 900
    :cond_4
    iget-object v0, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    goto :goto_3

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    goto :goto_4

    .line 910
    :cond_6
    iget v9, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->width:I

    move-object v5, p0

    move-object v6, v1

    move v7, p1

    move v8, p2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 915
    :cond_7
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0, p4}, Lcom/dolphin/browser/controls/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 886
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;Z)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3, v1, p5}, Lcom/dolphin/browser/controls/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 888
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 889
    return-void
.end method

.method private static a(Lcom/dolphin/browser/controls/GridLayout$LayoutParams;IIII)V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Lcom/dolphin/browser/controls/n;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a(Lcom/dolphin/browser/controls/n;)V

    .line 643
    new-instance v0, Lcom/dolphin/browser/controls/n;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b(Lcom/dolphin/browser/controls/n;)V

    .line 644
    return-void
.end method

.method private static a([IIII)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 625
    array-length v1, p0

    if-le p3, v1, :cond_1

    .line 633
    :goto_0
    return v0

    .line 628
    :cond_0
    add-int/lit8 p2, p2, 0x1

    :cond_1
    if-ge p2, p3, :cond_2

    .line 629
    aget v1, p0, p2

    if-le v1, p1, :cond_0

    goto :goto_0

    .line 633
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 552
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    return-object v0
.end method

.method private b(Landroid/view/View;Z)I
    .locals 2

    .prologue
    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;ZZ)I
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/controls/Space;

    if-ne v0, v1, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 580
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/controls/GridLayout;->h:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private b()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 658
    iget v0, p0, Lcom/dolphin/browser/controls/GridLayout;->e:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 659
    :goto_0
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    .line 660
    :goto_1
    iget v2, v0, Lcom/dolphin/browser/controls/k;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    iget v0, v0, Lcom/dolphin/browser/controls/k;->b:I

    .line 664
    :goto_2
    new-array v7, v0, [I

    .line 666
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v8

    move v5, v1

    move v4, v1

    move v3, v1

    :goto_3
    if-ge v5, v8, :cond_c

    .line 667
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v9

    .line 669
    if-eqz v6, :cond_5

    iget-object v2, v9, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 670
    :goto_4
    iget-object v10, v2, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 671
    iget-boolean v11, v2, Lcom/dolphin/browser/controls/q;->b:Z

    .line 672
    invoke-virtual {v10}, Lcom/dolphin/browser/controls/n;->a()I

    move-result v12

    .line 673
    if-eqz v11, :cond_0

    .line 674
    iget v3, v10, Lcom/dolphin/browser/controls/n;->a:I

    .line 677
    :cond_0
    if-eqz v6, :cond_6

    iget-object v2, v9, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 678
    :goto_5
    iget-object v10, v2, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 679
    iget-boolean v13, v2, Lcom/dolphin/browser/controls/q;->b:Z

    .line 680
    invoke-static {v10, v13, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/n;ZI)I

    move-result v14

    .line 681
    if-eqz v13, :cond_d

    .line 682
    iget v2, v10, Lcom/dolphin/browser/controls/n;->a:I

    .line 685
    :goto_6
    if-eqz v0, :cond_a

    .line 687
    if-eqz v11, :cond_1

    if-nez v13, :cond_9

    .line 688
    :cond_1
    :goto_7
    add-int v4, v2, v14

    invoke-static {v7, v3, v2, v4}, Lcom/dolphin/browser/controls/GridLayout;->a([IIII)Z

    move-result v4

    if-nez v4, :cond_9

    .line 689
    if-eqz v13, :cond_7

    .line 690
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2
    move v6, v1

    .line 658
    goto :goto_0

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 660
    goto :goto_2

    .line 669
    :cond_5
    iget-object v2, v9, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    goto :goto_4

    .line 677
    :cond_6
    iget-object v2, v9, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    goto :goto_5

    .line 692
    :cond_7
    add-int v4, v2, v14

    if-gt v4, v0, :cond_8

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 696
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_7

    .line 701
    :cond_9
    add-int v4, v2, v14

    add-int v10, v3, v12

    invoke-static {v7, v2, v4, v10}, Lcom/dolphin/browser/controls/GridLayout;->b([IIII)V

    .line 704
    :cond_a
    if-eqz v6, :cond_b

    .line 705
    invoke-static {v9, v3, v12, v2, v14}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/GridLayout$LayoutParams;IIII)V

    .line 710
    :goto_8
    add-int v4, v2, v14

    .line 666
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 707
    :cond_b
    invoke-static {v9, v2, v14, v3, v12}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/GridLayout$LayoutParams;IIII)V

    goto :goto_8

    .line 712
    :cond_c
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 713
    return-void

    :cond_d
    move v2, v4

    goto :goto_6
.end method

.method private static b([IIII)V
    .locals 2

    .prologue
    .line 637
    array-length v0, p0

    .line 638
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v1, v0, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 639
    return-void
.end method

.method private c(Landroid/view/View;Z)I
    .locals 1

    .prologue
    .line 989
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/view/View;ZZ)I
    .locals 2

    .prologue
    .line 608
    iget v0, p0, Lcom/dolphin/browser/controls/GridLayout;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 609
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v0

    .line 616
    :goto_0
    return v0

    .line 611
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    .line 612
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->d()[I

    move-result-object v0

    .line 613
    :goto_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v1

    .line 614
    if-eqz p2, :cond_3

    iget-object v1, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 615
    :goto_3
    if-eqz p3, :cond_4

    iget-object v1, v1, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    iget v1, v1, Lcom/dolphin/browser/controls/n;->a:I

    .line 616
    :goto_4
    aget v0, v0, v1

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->e()[I

    move-result-object v0

    goto :goto_2

    .line 614
    :cond_3
    iget-object v1, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    goto :goto_3

    .line 615
    :cond_4
    iget-object v1, v1, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    iget v1, v1, Lcom/dolphin/browser/controls/n;->b:I

    goto :goto_4
.end method

.method private c(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/GridLayout;->d:Z

    .line 717
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->g()V

    .line 718
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->g()V

    .line 720
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->d()V

    .line 721
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->h()V

    .line 728
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->h()V

    .line 730
    :cond_0
    return-void
.end method

.method public static e(I)Lcom/dolphin/browser/controls/q;
    .locals 1

    .prologue
    .line 2417
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(II)Lcom/dolphin/browser/controls/q;

    move-result-object v0

    return-object v0
.end method

.method static f(I)Z
    .locals 1

    .prologue
    .line 2603
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)I
    .locals 1

    .prologue
    .line 985
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method final a(Landroid/view/View;Z)I
    .locals 2

    .prologue
    .line 993
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    const/4 v0, 0x0

    .line 996
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/View;ZZ)I
    .locals 3

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v1

    .line 601
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v0, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->leftMargin:I

    .line 604
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;Lcom/dolphin/browser/controls/GridLayout$LayoutParams;ZZ)I

    move-result v0

    :cond_0
    return v0

    .line 601
    :cond_1
    iget v0, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v0, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v0, v1, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected a()Lcom/dolphin/browser/controls/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 746
    new-instance v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    invoke-direct {v0}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;
    .locals 2

    .prologue
    .line 751
    new-instance v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method final a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/dolphin/browser/controls/GridLayout;->d:Z

    if-nez v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->b()V

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/GridLayout;->d:Z

    .line 741
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 756
    new-instance v0, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final a(Lcom/dolphin/browser/controls/h;Z)Lcom/dolphin/browser/controls/h;
    .locals 1

    .prologue
    .line 1006
    sget-object v0, Lcom/dolphin/browser/controls/GridLayout;->i:Lcom/dolphin/browser/controls/h;

    if-eq p1, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/dolphin/browser/controls/GridLayout;->m:Lcom/dolphin/browser/controls/h;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/dolphin/browser/controls/GridLayout;->o:Lcom/dolphin/browser/controls/h;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/dolphin/browser/controls/GridLayout;->e:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Lcom/dolphin/browser/controls/GridLayout;->e:I

    .line 315
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 316
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 318
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/dolphin/browser/controls/GridLayout;->f:Z

    .line 428
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 429
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 854
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 855
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 856
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/k;->a(I)V

    .line 349
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 350
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 351
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/k;->a(Z)V

    .line 499
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 500
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 501
    return-void
.end method

.method final b(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/k;->a(I)V

    .line 382
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 383
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 384
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/k;->a(Z)V

    .line 535
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 536
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 537
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Lcom/dolphin/browser/controls/GridLayout;->g:I

    .line 464
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->requestLayout()V

    .line 465
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->a()Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/util/AttributeSet;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 773
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 817
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 28

    .prologue
    .line 1026
    sub-int v3, p4, p2

    .line 1027
    sub-int v4, p5, p3

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingLeft()I

    move-result v6

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingTop()I

    move-result v7

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingRight()I

    move-result v5

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingBottom()I

    move-result v8

    .line 1034
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    invoke-virtual {v9, v3}, Lcom/dolphin/browser/controls/k;->c(I)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    sub-int/2addr v4, v7

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/controls/k;->c(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v3}, Lcom/dolphin/browser/controls/k;->f()[I

    move-result-object v8

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v3}, Lcom/dolphin/browser/controls/k;->f()[I

    move-result-object v9

    .line 1040
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/controls/GridLayout;->getChildCount()I

    move-result v10

    move v5, v3

    :goto_0
    if-ge v5, v10, :cond_3

    .line 1041
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/controls/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1042
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/dolphin/browser/controls/GridLayout;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1040
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 1043
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/dolphin/browser/controls/GridLayout;->a(Landroid/view/View;)Lcom/dolphin/browser/controls/GridLayout$LayoutParams;

    move-result-object v3

    .line 1044
    iget-object v4, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->b:Lcom/dolphin/browser/controls/q;

    .line 1045
    iget-object v3, v3, Lcom/dolphin/browser/controls/GridLayout$LayoutParams;->a:Lcom/dolphin/browser/controls/q;

    .line 1047
    iget-object v12, v4, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 1048
    iget-object v13, v3, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 1050
    iget v14, v12, Lcom/dolphin/browser/controls/n;->a:I

    aget v14, v8, v14

    .line 1051
    iget v15, v13, Lcom/dolphin/browser/controls/n;->a:I

    aget v15, v9, v15

    .line 1053
    iget v12, v12, Lcom/dolphin/browser/controls/n;->b:I

    aget v12, v8, v12

    .line 1054
    iget v13, v13, Lcom/dolphin/browser/controls/n;->b:I

    aget v13, v9, v13

    .line 1056
    sub-int/2addr v12, v14

    .line 1057
    sub-int/2addr v13, v15

    .line 1059
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;Z)I

    move-result v16

    .line 1060
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;Z)I

    move-result v17

    .line 1062
    iget-object v4, v4, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/h;Z)Lcom/dolphin/browser/controls/h;

    move-result-object v18

    .line 1063
    iget-object v3, v3, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/dolphin/browser/controls/GridLayout;->a(Lcom/dolphin/browser/controls/h;Z)Lcom/dolphin/browser/controls/h;

    move-result-object v19

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v3}, Lcom/dolphin/browser/controls/k;->b()Lcom/dolphin/browser/controls/p;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/controls/p;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/controls/m;

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v4}, Lcom/dolphin/browser/controls/k;->b()Lcom/dolphin/browser/controls/p;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/dolphin/browser/controls/p;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dolphin/browser/controls/m;

    .line 1072
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/controls/m;->a(Z)I

    move-result v21

    sub-int v21, v12, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/controls/h;->a(Landroid/view/View;I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/dolphin/browser/controls/GridLayout;->g(I)I

    move-result v20

    .line 1074
    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/controls/m;->a(Z)I

    move-result v22

    sub-int v22, v13, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/controls/h;->a(Landroid/view/View;I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/dolphin/browser/controls/GridLayout;->g(I)I

    move-result v21

    .line 1076
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v22

    .line 1077
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v11, v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v23

    .line 1078
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v11, v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v24

    .line 1079
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v11, v1, v2}, Lcom/dolphin/browser/controls/GridLayout;->c(Landroid/view/View;ZZ)I

    move-result v25

    .line 1082
    add-int v26, v22, v16

    add-int v26, v26, v24

    .line 1083
    add-int v27, v23, v17

    add-int v27, v27, v25

    .line 1086
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v3, v11, v0, v1}, Lcom/dolphin/browser/controls/m;->a(Landroid/view/View;Lcom/dolphin/browser/controls/h;I)I

    move-result v3

    .line 1087
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v4, v11, v0, v1}, Lcom/dolphin/browser/controls/m;->a(Landroid/view/View;Lcom/dolphin/browser/controls/h;I)I

    move-result v4

    .line 1089
    add-int v3, v3, v20

    add-int v3, v3, v22

    .line 1090
    add-int v4, v4, v21

    add-int v4, v4, v23

    .line 1092
    add-int v20, v22, v24

    sub-int v12, v12, v20

    .line 1093
    add-int v20, v23, v25

    sub-int v13, v13, v20

    .line 1095
    const/16 v20, 0x1

    .line 1096
    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v12, v2}, Lcom/dolphin/browser/controls/h;->a(Landroid/view/View;III)I

    move-result v12

    .line 1097
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v13, v2}, Lcom/dolphin/browser/controls/h;->a(Landroid/view/View;III)I

    move-result v13

    .line 1099
    add-int/2addr v14, v6

    add-int/2addr v3, v14

    .line 1100
    add-int v14, v7, v15

    add-int/2addr v4, v14

    .line 1101
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    if-ne v12, v14, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eq v13, v14, :cond_2

    .line 1102
    :cond_1
    const/high16 v14, 0x40000000

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, 0x40000000

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1104
    :cond_2
    add-int/2addr v12, v3

    add-int/2addr v13, v4

    invoke-virtual {v11, v3, v4, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1106
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 921
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->d()V

    .line 923
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/controls/GridLayout;->a(IIZ)V

    .line 928
    iget v0, p0, Lcom/dolphin/browser/controls/GridLayout;->e:I

    if-nez v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/controls/k;->b(I)I

    move-result v1

    .line 930
    invoke-direct {p0, p1, p2, v5}, Lcom/dolphin/browser/controls/GridLayout;->a(IIZ)V

    .line 931
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/controls/k;->b(I)I

    move-result v0

    .line 938
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 939
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 941
    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 942
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/GridLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 944
    invoke-static {v1, p1, v5}, Lcom/dolphin/browser/controls/GridLayout;->a(III)I

    move-result v1

    invoke-static {v0, p2, v5}, Lcom/dolphin/browser/controls/GridLayout;->a(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/controls/GridLayout;->setMeasuredDimension(II)V

    .line 947
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/controls/GridLayout;->c:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/controls/k;->b(I)I

    move-result v0

    .line 934
    invoke-direct {p0, p1, p2, v5}, Lcom/dolphin/browser/controls/GridLayout;->a(IIZ)V

    .line 935
    iget-object v1, p0, Lcom/dolphin/browser/controls/GridLayout;->b:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/controls/k;->b(I)I

    move-result v1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 860
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 861
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 862
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .prologue
    .line 866
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 867
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 868
    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .prologue
    .line 872
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 873
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->c()V

    .line 874
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1001
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1002
    invoke-direct {p0}, Lcom/dolphin/browser/controls/GridLayout;->d()V

    .line 1003
    return-void
.end method
