.class public Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;
.super Landroid/view/View;
.source "MultilineEllipsizeTextView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/graphics/Typeface;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/text/TextPaint;

.field private i:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method private a(Landroid/text/Layout;I)I
    .locals 6

    .prologue
    .line 200
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v3, 0x0

    move v5, v3

    move v3, v2

    move v2, v5

    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 205
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    float-to-int v2, v3

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 210
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 224
    :goto_1
    return v0

    :sswitch_0
    move v0, v2

    .line 213
    goto :goto_1

    .line 216
    :sswitch_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(I)Landroid/text/StaticLayout;
    .locals 6

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b()V

    .line 300
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, p1, v0

    .line 301
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->g:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->f:I

    iget v5, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->e:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;III)Ljava/util/List;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Ljava/util/List;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/text/TextPaint;",
            "I)",
            "Landroid/text/StaticLayout;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 373
    if-nez p1, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 376
    :cond_0
    const/4 v0, 0x1

    .line 377
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 379
    if-nez v0, :cond_1

    .line 380
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 382
    :cond_1
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 383
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v0, v2

    .line 384
    goto :goto_1

    .line 386
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v5, 0x4000

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v4, p2

    move v9, v2

    move v11, p3

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/TextPaint;III)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/text/TextPaint;",
            "III)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 324
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 328
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    move v2, v7

    move v3, p4

    .line 329
    :goto_1
    if-lez v3, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 330
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 332
    sub-int v5, p4, v8

    if-ge v2, v5, :cond_2

    .line 334
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    .line 335
    sub-int v6, v5, v8

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_1

    .line 336
    add-int/lit8 v5, v5, -0x1

    .line 350
    :cond_1
    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 351
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 353
    add-int/lit8 v3, v3, -0x1

    .line 354
    goto :goto_1

    :cond_2
    move v5, v4

    .line 342
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 343
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_1

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 355
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p5, :cond_4

    .line 356
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 358
    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    .line 185
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 186
    return-void
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 154
    return-void

    .line 141
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->a:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a:I

    .line 76
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->e:I

    .line 78
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->f:I

    .line 79
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 80
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 81
    invoke-direct {p0, v2, v1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(II)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 85
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->b(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    .line 87
    :cond_0
    return-void
.end method

.method private b(Landroid/text/Layout;I)I
    .locals 4

    .prologue
    .line 235
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 236
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 238
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 240
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 254
    :goto_0
    return v0

    :sswitch_0
    move v0, v2

    .line 243
    goto :goto_0

    .line 246
    :sswitch_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 286
    :goto_0
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->d:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    .line 287
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 288
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000

    :goto_2
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 290
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 285
    goto :goto_0

    :cond_2
    move v2, v3

    .line 287
    goto :goto_1

    .line 288
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private c()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(I)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 261
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b()V

    .line 262
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c()V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getHeight()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 268
    const/4 v2, 0x0

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    div-int/lit8 v0, v0, 0x2

    .line 270
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 274
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b()V

    .line 191
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getDefaultSize(II)I

    move-result v0

    .line 192
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(I)Landroid/text/StaticLayout;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/text/Layout;I)I

    move-result v1

    .line 194
    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b(Landroid/text/Layout;I)I

    move-result v0

    .line 196
    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setMeasuredDimension(II)V

    .line 197
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 180
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 181
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->f:I

    .line 113
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 114
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 115
    return-void
.end method

.method public setMinLines(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->e:I

    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 125
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->g:Ljava/lang/CharSequence;

    .line 133
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 135
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 94
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 96
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 103
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 105
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    .prologue
    .line 163
    if-lez p2, :cond_1

    .line 164
    if-nez p1, :cond_0

    .line 165
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 170
    :goto_0
    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    .line 171
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->d:I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 173
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 174
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 175
    return-void

    .line 167
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method
