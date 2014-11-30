.class public Lcom/twitter/android/widget/TweetDetailView;
.super Lcom/twitter/android/widget/CardRowView;


# static fields
.field private static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Lcom/twitter/android/provider/ax;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/RelativeLayout;

.field public d:Landroid/view/ViewGroup;

.field public e:Landroid/widget/ImageButton;

.field public f:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Ljava/util/HashMap;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/graphics/Bitmap;

.field private s:Ljava/lang/String;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/widget/TweetDetailView;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x7f0c000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/twitter/android/util/g;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/widget/TweetDetailView;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/client/e;)V
    .locals 13

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/api/TweetEntities;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p1, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v9, v0, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/OverlayImageView;

    if-nez v1, :cond_4

    new-instance v1, Lcom/twitter/android/widget/OverlayImageView;

    invoke-direct {v1, v7}, Lcom/twitter/android/widget/OverlayImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/OverlayImageView;->setId(I)V

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/twitter/android/widget/OverlayImageView;->setAdjustViewBounds(Z)V

    const/4 v11, 0x1

    if-le v2, v11, :cond_3

    const/4 v11, 0x3

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3
    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v10}, Lcom/twitter/android/widget/OverlayImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lcom/twitter/android/widget/j;

    invoke-direct {v10, p0, v7, v0, v9}, Lcom/twitter/android/widget/j;-><init>(Lcom/twitter/android/widget/TweetDetailView;Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Media;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/twitter/android/widget/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->p:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p2, v9}, Lcom/twitter/android/client/e;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/twitter/android/widget/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02012e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/OverlayImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/OverlayImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/twitter/android/provider/ax;Lcom/twitter/android/client/e;JLcom/twitter/android/widget/o;Lcom/twitter/android/api/TweetEntities;)V
    .locals 8

    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/android/provider/ax;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p1, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/twitter/android/widget/b;

    iget-wide v3, p1, Lcom/twitter/android/provider/ax;->q:J

    invoke-direct {v2, p5, v3, v4}, Lcom/twitter/android/widget/b;-><init>(Lcom/twitter/android/widget/o;J)V

    const v3, 0x7f0b003b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v2, v3, v4}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, p6, p5}, Lcom/twitter/android/widget/d;->a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/widget/o;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0200a0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v2, 0x7f0b00cc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->n:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v0, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v3, p1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v5, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {p2, v0, v3, v4, v5}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/RelativeLayout;

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/twitter/android/provider/ax;->A:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/ImageView;

    const v2, 0x7f02012d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    sget-object v0, Lcom/twitter/android/widget/TweetDetailView;->g:Ljava/text/SimpleDateFormat;

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const v4, 0x7f0b0049

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    iget-object v6, p1, Lcom/twitter/android/provider/ax;->i:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/twitter/android/provider/ax;->u:Z

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    if-eqz v3, :cond_c

    :cond_1
    iget-object v3, p1, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    if-eqz v4, :cond_2

    const v4, 0x7f0b0048

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/twitter/android/widget/i;

    iget-wide v5, p1, Lcom/twitter/android/provider/ax;->s:J

    invoke-direct {v1, p5, v5, v6}, Lcom/twitter/android/widget/i;-><init>(Lcom/twitter/android/widget/o;J)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, v3, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->s:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/twitter/android/provider/ax;->u:Z

    if-eqz v0, :cond_b

    iget-wide v3, p1, Lcom/twitter/android/provider/ax;->v:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p1, Lcom/twitter/android/provider/ax;->w:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/android/client/e;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-direct {p0, p6, p2}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/client/e;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0200a1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v2, 0x7f0b00cc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f0200e7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    iget-boolean v0, p1, Lcom/twitter/android/provider/ax;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/ImageView;

    const v2, 0x7f0200d0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_b
    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-static {v0, v4}, Lcom/twitter/android/util/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/twitter/android/api/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "&path=color:0x00000000%7Cfillcolor:0xAA000033"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/twitter/android/api/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/api/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string v4, "%7C"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method protected onFinishInflate()V
    .locals 3

    const v2, 0x7f0700a9

    const v0, 0x7f0700b2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->q:Landroid/widget/ImageView;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Landroid/widget/TextView;

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Landroid/widget/TextView;

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->n:Landroid/widget/ImageView;

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/widget/TextView;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->p:Ljava/util/HashMap;

    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0700b6

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Landroid/widget/ImageView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->u:Landroid/widget/ImageButton;

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->v:Landroid/widget/ImageButton;

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->w:Landroid/widget/ImageButton;

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->e:Landroid/widget/ImageButton;

    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Landroid/widget/Button;

    return-void
.end method
