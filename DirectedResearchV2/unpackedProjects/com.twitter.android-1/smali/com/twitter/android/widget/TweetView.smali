.class public Lcom/twitter/android/widget/TweetView;
.super Landroid/view/View;


# static fields
.field private static final a:[I

.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;

.field private static final l:Landroid/text/TextPaint;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private J:Landroid/graphics/drawable/Drawable;

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Ljava/lang/String;

.field private P:Z

.field private Q:Z

.field private R:J

.field private d:Lcom/twitter/android/provider/ax;

.field private e:Lcom/twitter/android/widget/c;

.field private f:Landroid/text/StaticLayout;

.field private g:Landroid/text/StaticLayout;

.field private h:Landroid/text/StaticLayout;

.field private i:Landroid/text/StaticLayout;

.field private j:Landroid/text/StaticLayout;

.field private k:Landroid/text/StaticLayout;

.field private final m:Landroid/content/res/ColorStateList;

.field private n:F

.field private o:I

.field private p:Ljava/lang/String;

.field private q:F

.field private final r:Landroid/content/res/ColorStateList;

.field private s:I

.field private t:Ljava/lang/String;

.field private final u:F

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    sget v2, Lcom/twitter/android/c;->state_mentioned:I

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/TweetView;->a:[I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/TweetView;->l:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/twitter/android/c;->tweetViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ga;->TweetView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->m:Landroid/content/res/ColorStateList;

    const/high16 v1, 0x41600000

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->n:F

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->u:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->v:I

    const/4 v1, 0x6

    const/high16 v2, 0x41400000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->q:F

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->r:Landroid/content/res/ColorStateList;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->H:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->w:I

    sget-object v1, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sput-object v1, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sput-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->x:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->y:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->z:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->A:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->B:I

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->C:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->D:I

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->E:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->F:I

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->G:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->I:I

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->c()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/text/TextPaint;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->m:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->o:I

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->r:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->s:I

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/provider/ax;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ax;

    return-object v0
.end method

.method public final a(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->n:F

    const/high16 v1, 0x40000000

    sub-float v1, p1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->q:F

    return-void
.end method

.method public final a(Lcom/twitter/android/provider/ax;)V
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call setProvider before calling setTweet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ax;

    invoke-virtual {p1, v1}, Lcom/twitter/android/provider/ax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/StaticLayout;

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ax;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/widget/TweetView;->R:J

    invoke-virtual {p1, v1, v2}, Lcom/twitter/android/provider/ax;->a(J)Z

    move-result v3

    iget-wide v4, p1, Lcom/twitter/android/provider/ax;->h:J

    cmp-long v4, v4, v9

    if-gtz v4, :cond_4

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->t:Ljava/lang/String;

    :goto_0
    iget-wide v4, p1, Lcom/twitter/android/provider/ax;->q:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->x:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->l:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->y:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->p:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/twitter/android/widget/TweetView;->P:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/widget/TweetView;->Q:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->refreshDrawableState()V

    :cond_1
    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->y:Z

    if-eqz v1, :cond_9

    sget v1, Lcom/twitter/android/m;->top_tweet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/lang/String;

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->B:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->F:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->requestLayout()V

    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->b()V

    return-void

    :cond_4
    iget-wide v4, p1, Lcom/twitter/android/provider/ax;->h:J

    invoke-static {v0, v4, v5}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->t:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->z:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_7
    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->l:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->A:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_8
    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->g()Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lcom/twitter/android/m;->promoted_by:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/lang/String;

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->D:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lcom/twitter/android/m;->promoted_by:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/lang/String;

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_b
    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/lang/String;

    iput-object v6, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_c
    iget-wide v1, p1, Lcom/twitter/android/provider/ax;->j:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_d

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->G:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->E:I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4
.end method

.method public final a(Lcom/twitter/android/widget/c;)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/c;

    invoke-interface {p1}, Lcom/twitter/android/widget/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/widget/TweetView;->R:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/android/widget/TweetView;->P:Z

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ax;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/c;

    invoke-interface {v3, v1}, Lcom/twitter/android/widget/c;->a(Lcom/twitter/android/provider/ax;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->J:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->invalidate()V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->c()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/widget/TweetView;->Q:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/android/widget/TweetView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ax;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v3

    iget v6, p0, Lcom/twitter/android/widget/TweetView;->H:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->J:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    sget-object v0, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v6, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v0, v6

    add-int v6, v3, v0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    div-int/lit8 v0, v0, 0x2

    :goto_3
    sget-object v7, Lcom/twitter/android/widget/TweetView;->l:Landroid/text/TextPaint;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->n:F

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v6

    int-to-float v8, v4

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->o:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    :goto_4
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v3, v6

    iget v8, p0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v8, p0, Lcom/twitter/android/widget/TweetView;->H:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v3, p0, Lcom/twitter/android/widget/TweetView;->s:I

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v3, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int v0, v5, v0

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->H:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->s:I

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->w:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v5, v8

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    int-to-float v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v6

    int-to-float v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->o:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->I:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v6

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->s:I

    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v7}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->s:I

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->J:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_3

    :cond_a
    move v3, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 23

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    const/high16 v3, 0x40000000

    if-ne v5, v3, :cond_4

    move/from16 v17, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ax;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    sget-object v4, Lcom/twitter/android/widget/TweetView;->l:Landroid/text/TextPaint;

    sget-object v2, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingBottom()I

    move-result v6

    add-int v20, v2, v6

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v5

    sub-int v18, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->t:Ljava/lang/String;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/TweetView;->t:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v2, v3

    sub-int v2, v18, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v3, v5

    sub-int v16, v2, v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->n:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual/range {v22 .. v22}, Lcom/twitter/android/provider/ax;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/widget/TweetView;->u:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->v:I

    int-to-float v13, v2

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v9, v4

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v2, v3

    sub-int v16, v16, v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-nez v2, :cond_1

    if-lez v16, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v6, ""

    :goto_4
    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v9, v4

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->p:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->n:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->p:Ljava/lang/String;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/twitter/android/widget/TweetView;->u:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/TweetView;->v:I

    int-to-float v8, v5

    const/4 v9, 0x0

    move/from16 v5, v18

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->O:Ljava/lang/String;

    new-instance v2, Landroid/text/StaticLayout;

    invoke-static {v3, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move/from16 v3, v20

    :goto_5
    const/high16 v2, 0x40000000

    move/from16 v0, v21

    if-ne v0, v2, :cond_9

    move/from16 v2, v19

    :cond_3
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/TweetView;->setMeasuredDimension(II)V

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getSuggestedMinimumWidth()I

    move-result v3

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_11

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/twitter/android/widget/TweetView;->R:J

    move-object/from16 v0, v22

    iget-wide v7, v0, Lcom/twitter/android/provider/ax;->q:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_8

    sget v3, Lcom/twitter/android/m;->tweets_retweeted_by:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/twitter/android/provider/ax;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/TweetView;->q:F

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v4}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/widget/TweetView;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/TweetView;->w:I

    add-int/2addr v2, v3

    sub-int v16, v18, v2

    move-object v9, v4

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    :cond_8
    move/from16 v3, v20

    goto/16 :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/TweetView;->I:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/TweetView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-ne v0, v3, :cond_3

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_6

    :cond_e
    move/from16 v16, v2

    goto/16 :goto_3

    :cond_f
    move/from16 v2, v18

    goto/16 :goto_2

    :cond_10
    move v3, v4

    goto/16 :goto_5

    :cond_11
    move/from16 v17, v3

    goto/16 :goto_0
.end method
