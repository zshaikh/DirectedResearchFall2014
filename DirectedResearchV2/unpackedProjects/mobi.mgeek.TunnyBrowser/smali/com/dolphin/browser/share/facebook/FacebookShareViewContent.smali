.class public Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;
.super Landroid/widget/LinearLayout;
.source "FacebookShareViewContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/share/n;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private A:Lcom/dolphin/browser/share/h;

.field private B:Landroid/text/TextWatcher;

.field private C:Lcom/dolphin/browser/q/c/u;

.field private D:Lcom/dolphin/browser/q/c/n;

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/EditText;

.field private h:Lcom/dolphin/browser/share/Spacer;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/dolphin/browser/share/VerticalFreeScrollView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Lcom/dolphin/browser/q/c/a;

.field private w:Lcom/dolphin/browser/q/c/b;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a:I

    .line 62
    const/16 v0, 0x54

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Lcom/dolphin/browser/share/facebook/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/facebook/c;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->B:Landroid/text/TextWatcher;

    .line 337
    new-instance v0, Lcom/dolphin/browser/share/facebook/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/facebook/g;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->C:Lcom/dolphin/browser/q/c/u;

    .line 670
    new-instance v0, Lcom/dolphin/browser/share/facebook/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/facebook/d;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->D:Lcom/dolphin/browser/q/c/n;

    .line 100
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->r:Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->s:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->e()V

    .line 104
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 719
    if-gez p1, :cond_1

    .line 720
    const/4 p1, 0x0

    .line 724
    :cond_0
    :goto_0
    return p1

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Lcom/dolphin/browser/q/c/a;)Lcom/dolphin/browser/q/c/a;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->v:Lcom/dolphin/browser/q/c/a;

    return-object p1
.end method

.method private a(II)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 729
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 735
    if-nez v0, :cond_f

    .line 737
    const-string v0, ""

    move-object v1, v0

    .line 742
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-le v0, v2, :cond_e

    move v2, v3

    .line 746
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v6, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    .line 749
    if-eqz v0, :cond_0

    move v5, v4

    move v6, v4

    .line 754
    :goto_3
    array-length v7, v0

    if-ge v5, v7, :cond_7

    .line 755
    aget-object v7, v0, v5

    .line 756
    iget-object v8, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 757
    iget-object v9, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 758
    if-lt p2, v8, :cond_2

    if-lt p1, v9, :cond_3

    .line 754
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 762
    :cond_3
    if-ne p1, v8, :cond_4

    .line 763
    if-nez v2, :cond_2

    .line 765
    iget-object v6, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    move v6, v3

    goto :goto_4

    .line 768
    :cond_4
    if-le p1, v8, :cond_5

    if-le p1, v9, :cond_6

    :cond_5
    if-le p2, v8, :cond_2

    if-gt p2, v9, :cond_2

    .line 771
    :cond_6
    iget-object v6, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    move v6, v3

    goto :goto_4

    .line 777
    :cond_7
    if-eqz v6, :cond_d

    .line 778
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4, p1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 779
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_a

    :goto_5
    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 781
    const-string v0, ""

    .line 782
    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    .line 783
    :goto_6
    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v2, v7

    .line 785
    :goto_7
    if-ltz v3, :cond_8

    if-ltz v2, :cond_8

    if-gt v3, v2, :cond_8

    .line 788
    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 797
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 800
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 801
    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 809
    :cond_9
    :goto_8
    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    :cond_a
    move p1, p2

    .line 779
    goto :goto_5

    :cond_b
    move v3, v4

    .line 782
    goto :goto_6

    .line 783
    :cond_c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_7

    .line 805
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

    .line 646
    if-nez p1, :cond_1

    .line 662
    :cond_0
    return-void

    .line 650
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    .line 653
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 654
    aget-object v2, v0, v1

    .line 655
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 656
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 657
    if-le p2, v3, :cond_2

    if-lt p2, v4, :cond_3

    :cond_2
    if-le p3, v3, :cond_4

    if-ge p3, v4, :cond_4

    .line 659
    :cond_3
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 653
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;II)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/share/a;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/share/facebook/k;

    invoke-direct {v1, p0, p3}, Lcom/dolphin/browser/share/facebook/k;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Lcom/dolphin/browser/share/a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/q/c/q;)V

    .line 514
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/share/facebook/i;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/share/facebook/i;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Lcom/dolphin/browser/share/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;Lcom/dolphin/browser/q/c/q;)V

    .line 463
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j()V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0, p2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->x:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    if-eqz p1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->z:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 376
    :goto_1
    return-void

    .line 369
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->z:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/Spacer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h:Lcom/dolphin/browser/share/Spacer;

    return-object v0
.end method

.method private b(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    :goto_0
    return-object v0

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Landroid/widget/EditText;)Ljava/util/List;

    move-result-object v1

    .line 555
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v1

    .line 557
    invoke-virtual {v1}, Lcom/dolphin/browser/share/facebook/a;->e()Z

    move-result v4

    if-nez v4, :cond_3

    .line 558
    invoke-virtual {v1}, Lcom/dolphin/browser/share/facebook/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/q/a;

    .line 559
    invoke-virtual {v1}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 560
    invoke-virtual {v1}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/dolphin/browser/q/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->u:Z

    move-object v0, v2

    :goto_2
    move-object v2, v0

    .line 567
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 568
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private b(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    .line 435
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/dolphin/browser/share/facebook/f;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/share/facebook/f;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 327
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 471
    new-instance v0, Lcom/dolphin/browser/share/facebook/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/share/facebook/j;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 486
    return-void
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/VerticalFreeScrollView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->o:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    return-object v0
.end method

.method private c(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->r:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V

    .line 467
    return-void
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Lcom/dolphin/browser/share/h;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->A:Lcom/dolphin/browser/share/h;

    return-object v0
.end method

.method private d(Lcom/dolphin/browser/share/a;)V
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->v:Lcom/dolphin/browser/q/c/a;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/dolphin/browser/q/c/a;

    invoke-direct {v0}, Lcom/dolphin/browser/q/c/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->v:Lcom/dolphin/browser/q/c/a;

    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->v:Lcom/dolphin/browser/q/c/a;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/a;->a(Ljava/lang/String;)V

    .line 521
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->u:Z

    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->u:Z

    iget-object v3, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->v:Lcom/dolphin/browser/q/c/a;

    new-instance v4, Lcom/dolphin/browser/share/facebook/l;

    invoke-direct {v4, p0, p1}, Lcom/dolphin/browser/share/facebook/l;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Lcom/dolphin/browser/share/a;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;ZLcom/dolphin/browser/q/c/a;Lcom/dolphin/browser/q/c/q;)V

    .line 547
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->w:Lcom/dolphin/browser/q/c/b;

    .line 108
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->f()V

    .line 109
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 112
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->setOrientation(I)V

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030074

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d:Landroid/widget/ImageView;

    .line 116
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->e:Landroid/widget/TextView;

    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->f:Landroid/view/ViewGroup;

    .line 120
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/VerticalFreeScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->o:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->o:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(Z)V

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->B:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/Spacer;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h:Lcom/dolphin/browser/share/Spacer;

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h:Lcom/dolphin/browser/share/Spacer;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/share/Spacer;->setClickable(Z)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h:Lcom/dolphin/browser/share/Spacer;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/share/Spacer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->p:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->i:Landroid/widget/ImageView;

    .line 135
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j:Landroid/view/View;

    .line 136
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->x:Landroid/view/View;

    .line 137
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->y:Landroid/widget/ImageView;

    .line 138
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->n:Landroid/widget/TextView;

    .line 139
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->k:Landroid/widget/TextView;

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->l:Landroid/widget/TextView;

    .line 141
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->m:Landroid/widget/TextView;

    .line 142
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->q:Landroid/view/View;

    .line 144
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g()V

    .line 146
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h()V

    .line 147
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j()V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const v5, 0x7f0a007b

    const v4, 0x7f0a007a

    const v3, 0x7f0a0062

    .line 229
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 230
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j()V

    .line 231
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->f:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02028e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 234
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 236
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->z:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->y:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->l:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a007e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a007c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->n:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a007d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->p:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027f

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 250
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 253
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->i()V

    .line 254
    const-string v0, "page"

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->w:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->C:Lcom/dolphin/browser/q/c/u;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;Lcom/dolphin/browser/q/c/u;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string v0, "image"

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Z)V

    .line 260
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->k()V

    goto :goto_0

    .line 261
    :cond_2
    const-string v0, "text"

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->l()V

    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->s:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->w:Lcom/dolphin/browser/q/c/b;

    .line 270
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    new-instance v2, Lcom/dolphin/browser/share/facebook/e;

    invoke-direct {v2, p0, v1, v0}, Lcom/dolphin/browser/share/facebook/e;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Lcom/dolphin/browser/q/c/b;)V

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/r;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->r:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 332
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method static synthetic k(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Lcom/dolphin/browser/share/facebook/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/facebook/h;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 397
    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->i:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020299

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void
.end method

.method static synthetic m(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 596
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 597
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 615
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/facebook/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->w:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->D:Lcom/dolphin/browser/q/c/n;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/n;)V

    .line 619
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 624
    invoke-direct {p0, v0, v1, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 627
    const-string v2, " @"

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 630
    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 632
    return-void
.end method

.method static synthetic n(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->k()V

    return-void
.end method

.method static synthetic o(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 667
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 668
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/EditText;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 573
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v4, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    invoke-virtual {v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    .line 577
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 578
    aget-object v4, v0, v1

    .line 579
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 580
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 581
    invoke-virtual {v3, v5, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_0
    return-object v2
.end method

.method public a()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 417
    const-string v0, "page"

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->d(Lcom/dolphin/browser/share/a;)V

    .line 426
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e059b

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 428
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 429
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 431
    :cond_1
    return-void

    .line 419
    :cond_2
    const-string v0, "image"

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c(Lcom/dolphin/browser/share/a;)V

    goto :goto_0

    .line 421
    :cond_3
    const-string v0, "text"

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->b(Lcom/dolphin/browser/share/a;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/share/h;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->A:Lcom/dolphin/browser/share/h;

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 685
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 689
    invoke-direct {p0, v2, v3, v3}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 692
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v1

    invoke-virtual {v2, v0, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/share/facebook/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .line 697
    :goto_0
    sub-int v4, v3, v1

    if-lez v4, :cond_0

    sub-int v0, v3, v1

    .line 698
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

    .line 702
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 705
    invoke-direct {p0, v2, v0, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 706
    new-instance v3, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent$AtFriendSpan;-><init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 710
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 714
    iput-object v2, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->c:Landroid/text/SpannableStringBuilder;

    .line 715
    const/4 v0, 0x1

    return v0

    .line 694
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 602
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801f3

    if-ne v0, v1, :cond_1

    .line 603
    const-string v0, "facebook share"

    const-string v1, "click"

    const-string v2, "addfriend"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 606
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->o()V

    .line 607
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->n()V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801f2

    if-ne v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 610
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->o()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->m()V

    .line 590
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 591
    return-void
.end method
