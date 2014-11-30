.class public Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;
.super Landroid/view/View;
.source "ThreadNameView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

.field private b:Lcom/facebook/orca/threads/ThreadSummary;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/text/Layout$Alignment;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/text/Layout;

.field private j:I

.field private k:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    .line 58
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    .line 58
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    .line 58
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private a(II)I
    .locals 7

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->f:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g:I

    const/4 v6, -0x1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;

    move-result-object v0

    .line 226
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 227
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 230
    sparse-switch v1, :sswitch_data_0

    move v0, v2

    .line 244
    :goto_0
    return v0

    .line 232
    :sswitch_0
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_0

    .line 236
    :sswitch_1
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(I)Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 105
    :goto_0
    return-object v0

    .line 103
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 105
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    .line 180
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->e:I

    :goto_0
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->d:I

    if-lt v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->c(I)Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 82
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 83
    const-class v1, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->g:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->c:I

    .line 87
    const/16 v1, 0xe

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->d:I

    .line 88
    const/4 v1, 0x3

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->e:I

    .line 89
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->f:Landroid/text/Layout$Alignment;

    .line 90
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->e:I

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->d:I

    if-ge v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid text sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->d()Z

    move-result v0

    return v0
.end method

.method private b(I)F
    .locals 3

    .prologue
    .line 172
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 173
    const/high16 v0, -0x40800000

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    .line 203
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->invalidate()V

    .line 204
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->c()V

    .line 205
    return-void
.end method

.method private c(I)Landroid/text/TextPaint;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 187
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 188
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b(I)F

    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 190
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 191
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->c:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 192
    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 285
    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    if-nez v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 291
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    goto :goto_0

    .line 292
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 293
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    if-eq v0, v2, :cond_0

    move v0, v2

    .line 311
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g()V

    .line 306
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->f()V

    .line 308
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->e()Z

    move-result v0

    .line 310
    const/4 v1, 0x2

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    .line 311
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 318
    .line 319
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 321
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getWidth()I

    move-result v2

    .line 325
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_2

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    .line 332
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    .line 334
    sub-int v4, v3, v0

    if-ge v4, v2, :cond_1

    .line 335
    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    .line 367
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 368
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->scrollTo(II)V

    .line 369
    const/4 v0, 0x1

    .line 371
    :goto_1
    return v0

    .line 337
    :cond_1
    if-gez v1, :cond_0

    .line 338
    sub-int v0, v3, v2

    goto :goto_0

    .line 343
    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_4

    .line 348
    if-gez v1, :cond_3

    .line 349
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 350
    sub-int/2addr v0, v2

    .line 351
    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 359
    :cond_4
    if-gez v1, :cond_5

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 363
    sub-int/2addr v0, v2

    goto :goto_0

    :cond_6
    move v0, v5

    .line 371
    goto :goto_1
.end method

.method private f()V
    .locals 7

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->f:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g:I

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getHeight()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;->a(Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    .line 381
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a()V

    .line 387
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 270
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->j:I

    .line 277
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 251
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g()V

    .line 252
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->f()V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getHeight()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 258
    const/4 v2, 0x0

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 259
    div-int/lit8 v0, v0, 0x2

    .line 260
    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->i:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 264
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g()V

    .line 210
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getDefaultSize(II)I

    move-result v0

    .line 211
    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a(II)I

    move-result v1

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMeasuredDimension(II)V

    .line 214
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 198
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 199
    return-void
.end method

.method public setGravity(Landroid/text/Layout$Alignment;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->f:Landroid/text/Layout$Alignment;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    .line 157
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->invalidate()V

    .line 159
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->g:I

    .line 167
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 168
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->invalidate()V

    .line 169
    return-void
.end method

.method public setScaledTextSizes(II)V
    .locals 2

    .prologue
    .line 130
    if-ge p2, p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid text sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->d:I

    .line 134
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->e:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    .line 136
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->invalidate()V

    .line 138
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 116
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->c:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->h:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->invalidate()V

    .line 119
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b:Lcom/facebook/orca/threads/ThreadSummary;

    .line 146
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 147
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->invalidate()V

    .line 148
    return-void
.end method
