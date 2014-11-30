.class public Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;
.super Landroid/widget/LinearLayout;
.source "TwitterShareViewContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/share/n;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private A:Landroid/text/TextWatcher;

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Landroid/content/Context;

.field private e:Lcom/dolphin/browser/share/twitter/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/dolphin/browser/share/VerticalFreeScrollView;

.field private n:Landroid/widget/EditText;

.field private o:Lcom/dolphin/browser/share/Spacer;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/Bitmap;

.field private x:Lcom/dolphin/browser/q/d/aa;

.field private y:Z

.field private z:Lcom/dolphin/browser/share/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a:I

    .line 57
    const/16 v0, 0x54

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->y:Z

    .line 272
    new-instance v0, Lcom/dolphin/browser/share/twitter/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/twitter/f;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->A:Landroid/text/TextWatcher;

    .line 97
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->d:Landroid/content/Context;

    .line 98
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->g:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->h:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    .line 104
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->h()V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->e()V

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->b(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 538
    if-gez p1, :cond_1

    .line 539
    const/4 p1, 0x0

    .line 543
    :cond_0
    :goto_0
    return p1

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->w:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(II)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 609
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 615
    if-nez v0, :cond_f

    .line 617
    const-string v0, ""

    move-object v1, v0

    .line 622
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-le v0, v2, :cond_e

    move v2, v3

    .line 626
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v6, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;

    .line 629
    if-eqz v0, :cond_0

    move v5, v4

    move v6, v4

    .line 634
    :goto_3
    array-length v7, v0

    if-ge v5, v7, :cond_7

    .line 635
    aget-object v7, v0, v5

    .line 636
    iget-object v8, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 637
    iget-object v9, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 638
    if-lt p2, v8, :cond_2

    if-lt p1, v9, :cond_3

    .line 634
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 642
    :cond_3
    if-ne p1, v8, :cond_4

    .line 643
    if-nez v2, :cond_2

    .line 645
    iget-object v6, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    move v6, v3

    goto :goto_4

    .line 648
    :cond_4
    if-le p1, v8, :cond_5

    if-le p1, v9, :cond_6

    :cond_5
    if-le p2, v8, :cond_2

    if-gt p2, v9, :cond_2

    .line 651
    :cond_6
    iget-object v6, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    move v6, v3

    goto :goto_4

    .line 657
    :cond_7
    if-eqz v6, :cond_d

    .line 658
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4, p1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_a

    :goto_5
    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 661
    const-string v0, ""

    .line 662
    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    .line 663
    :goto_6
    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v2, v7

    .line 665
    :goto_7
    if-ltz v3, :cond_8

    if-ltz v2, :cond_8

    if-gt v3, v2, :cond_8

    .line 667
    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 673
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 675
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 676
    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 684
    :cond_9
    :goto_8
    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    :cond_a
    move p1, p2

    .line 659
    goto :goto_5

    :cond_b
    move v3, v4

    .line 662
    goto :goto_6

    .line 663
    :cond_c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_7

    .line 680
    :cond_d
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    move v2, v4

    goto/16 :goto_2

    :cond_f
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 519
    if-nez p1, :cond_1

    .line 535
    :cond_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;

    .line 526
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 527
    aget-object v2, v0, v1

    .line 528
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 529
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 530
    if-le p2, v3, :cond_2

    if-lt p2, v4, :cond_3

    :cond_2
    if-le p3, v3, :cond_4

    if-ge p3, v4, :cond_4

    .line 532
    :cond_3
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 526
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;II)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    new-instance v1, Ljava/io/File;

    const-string v2, "image.png"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/dolphin/browser/q/d/aa;->a(Ljava/io/File;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/dolphin/browser/q/d/r;

    move-result-object v0

    .line 451
    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/q/d/aa;->a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v1, v0, p2}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/r;Lcom/dolphin/browser/share/a;)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/q/d/aa;->a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->j:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->k:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->g()V

    .line 192
    :goto_1
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0, p3}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 695
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->u:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    if-eqz p1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->v:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 701
    :goto_1
    return-void

    .line 695
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->v:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 152
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f()V

    .line 153
    const-string v0, "page"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v0, "text"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "image"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->d(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->b:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->g()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/dolphin/browser/share/twitter/d;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/share/twitter/d;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 219
    return-void
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/dolphin/browser/share/twitter/e;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/share/twitter/e;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 253
    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 263
    :goto_0
    const/16 v0, 0x14

    if-lt v1, v0, :cond_1

    const/16 v0, 0x76

    .line 265
    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return v0

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 263
    :cond_1
    rsub-int v0, v1, 0x8c

    goto :goto_1

    .line 265
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->setOrientation(I)V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->d:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030110

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->i:Landroid/widget/ImageView;

    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->j:Landroid/widget/TextView;

    .line 119
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803bc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->k:Landroid/widget/TextView;

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->l:Landroid/view/ViewGroup;

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803bd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/VerticalFreeScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(Z)V

    .line 126
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/Spacer;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->o:Lcom/dolphin/browser/share/Spacer;

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->o:Lcom/dolphin/browser/share/Spacer;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/share/Spacer;->setClickable(Z)V

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->o:Lcom/dolphin/browser/share/Spacer;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/share/Spacer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803be

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->p:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803bf

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->q:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->e(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->t:Landroid/widget/ImageView;

    .line 142
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->r:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->s:Landroid/view/ViewGroup;

    .line 146
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->u:Landroid/widget/ImageView;

    .line 148
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->i()V

    .line 149
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->h()V

    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    .line 168
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->e()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->d()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    new-instance v3, Lcom/dolphin/browser/share/twitter/c;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/dolphin/browser/share/twitter/c;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/q/d/aa;)V

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/q/d/aa;->b(Lcom/dolphin/browser/q/d/ap;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/Spacer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->o:Lcom/dolphin/browser/share/Spacer;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method

.method static synthetic h(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/VerticalFreeScrollView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->t:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020299

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/q/d/aa;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 390
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a010f

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->l:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02028e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a014a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 397
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a014b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 399
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->p:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027f

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->p:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 401
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->q:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a6

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 404
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->v:Landroid/graphics/drawable/Drawable;

    .line 405
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->u:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a014c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 476
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 477
    return-void
.end method

.method static synthetic k(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/twitter/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->e:Lcom/dolphin/browser/share/twitter/a;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 494
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->h()V

    .line 499
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 503
    invoke-direct {p0, v0, v1, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 506
    const-string v2, " @"

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 509
    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 511
    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 553
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 555
    iget-boolean v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->y:Z

    if-nez v1, :cond_0

    .line 557
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->y:Z

    .line 558
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 563
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m()V

    .line 564
    return-void

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Lcom/dolphin/browser/share/h;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->z:Lcom/dolphin/browser/share/h;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 569
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 570
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 430
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->h:Ljava/lang/String;

    const-string v3, "image"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    .line 441
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 442
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e059d

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 443
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 444
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 446
    :cond_1
    return-void

    .line 422
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 424
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->x:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/q/d/aa;->a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    goto :goto_2
.end method

.method public a(Lcom/dolphin/browser/share/h;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->z:Lcom/dolphin/browser/share/h;

    .line 93
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/twitter/a;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->e:Lcom/dolphin/browser/share/twitter/a;

    .line 270
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 574
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 577
    invoke-direct {p0, v2, v3, v3}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 580
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v1

    invoke-virtual {v2, v0, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/q/d/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .line 585
    :goto_0
    sub-int v4, v3, v1

    if-lez v4, :cond_0

    sub-int v0, v3, v1

    .line 588
    :cond_0
    add-int/2addr v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 591
    add-int/lit8 v1, v0, -0x1

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 595
    invoke-direct {p0, v2, v1, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 596
    new-instance v3, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent$AtFriendSpan;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 600
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 604
    iput-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    .line 605
    const/4 v0, 0x1

    return v0

    .line 582
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 464
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 465
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 482
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803be

    if-ne v0, v1, :cond_1

    .line 483
    const-string v0, "twitter share"

    const-string v1, "click"

    const-string v2, "addfriend"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 486
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->m()V

    .line 487
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->k()V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801f2

    if-ne v0, v1, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->l()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->j()V

    .line 470
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 471
    return-void
.end method
