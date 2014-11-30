.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Z

.field private c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private d:Ljava/lang/Object;

.field private e:Lcom/tokenautocomplete/l;

.field private f:Lcom/tokenautocomplete/m;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tokenautocomplete/i;

.field private i:Lcom/tokenautocomplete/h;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/text/Layout;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tokenautocomplete/TokenCompleteTextView;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lcom/tokenautocomplete/i;->a:Lcom/tokenautocomplete/i;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    .line 73
    sget-object v0, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    .line 78
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->n:Z

    .line 79
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->o:Z

    .line 80
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    .line 249
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->a:Z

    .line 144
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->c()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    sget-object v0, Lcom/tokenautocomplete/i;->a:Lcom/tokenautocomplete/i;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    .line 73
    sget-object v0, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    .line 78
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->n:Z

    .line 79
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->o:Z

    .line 80
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    .line 249
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->a:Z

    .line 149
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->c()V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    sget-object v0, Lcom/tokenautocomplete/i;->a:Lcom/tokenautocomplete/i;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    .line 73
    sget-object v0, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    .line 78
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->n:Z

    .line 79
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->o:Z

    .line 80
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    .line 249
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->a:Z

    .line 154
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->c()V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .prologue
    .line 560
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)Lcom/tokenautocomplete/j;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->d(Ljava/lang/Object;)Lcom/tokenautocomplete/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->f:Lcom/tokenautocomplete/m;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 93
    new-instance v0, Lcom/tokenautocomplete/o;

    invoke-direct {v0, p0, v5}, Lcom/tokenautocomplete/o;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/tokenautocomplete/n;

    invoke-direct {v0, p0, v5}, Lcom/tokenautocomplete/n;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/j;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/j;)V

    return-void
.end method

.method private a(Lcom/tokenautocomplete/j;)V
    .locals 4

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 671
    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 673
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 676
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 677
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->f:Lcom/tokenautocomplete/m;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/tokenautocomplete/m;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 681
    :cond_1
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 104
    sget-boolean v1, Lcom/tokenautocomplete/TokenCompleteTextView;->b:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Lcom/tokenautocomplete/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tokenautocomplete/m;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->f:Lcom/tokenautocomplete/m;

    .line 107
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a()V

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTextIsSelectable(Z)V

    .line 112
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->setLongClickable(Z)V

    .line 115
    const/high16 v0, 0x90000

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setInputType(I)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v1, Lcom/tokenautocomplete/a;

    invoke-direct {v1, p0}, Lcom/tokenautocomplete/a;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 138
    sget-object v0, Lcom/tokenautocomplete/i;->b:Lcom/tokenautocomplete/i;

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setDeletionStyle(Lcom/tokenautocomplete/i;)V

    .line 139
    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->n:Z

    .line 140
    return-void
.end method

.method private d()F
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private d(Ljava/lang/Object;)Lcom/tokenautocomplete/j;
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 565
    new-instance v1, Lcom/tokenautocomplete/j;

    invoke-direct {v1, p0, v0, p1}, Lcom/tokenautocomplete/j;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic d(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/m;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->f:Lcom/tokenautocomplete/m;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/tokenautocomplete/TokenCompleteTextView;)F
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->d()F

    move-result v0

    return v0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 686
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    .line 687
    if-eqz v6, :cond_0

    if-nez v7, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 693
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;

    invoke-interface {v6, v4, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;

    .line 695
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 696
    array-length v3, v0

    if-lez v3, :cond_4

    .line 697
    aget-object v3, v0, v4

    .line 698
    invoke-interface {v6, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v6, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v2

    move-object v2, v3

    .line 701
    :goto_1
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    .line 704
    if-nez v2, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_3

    .line 712
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 714
    :goto_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 716
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/tokenautocomplete/TokenCompleteTextView$HintSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 717
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v6, v1, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 718
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x21

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 719
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 722
    :cond_2
    if-eqz v2, :cond_0

    .line 727
    invoke-interface {v6, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 728
    invoke-interface {v6, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 730
    invoke-interface {v6, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 731
    const-string v2, ""

    invoke-interface {v6, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 733
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v0, v2

    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic g(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/h;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 754
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    sget-object v1, Lcom/tokenautocomplete/h;->c:Lcom/tokenautocomplete/h;

    if-eq v0, v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/tokenautocomplete/j;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 760
    array-length v3, v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 761
    iget-object v5, v4, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 762
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->e:Lcom/tokenautocomplete/l;

    invoke-virtual {v4}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tokenautocomplete/l;->d(Ljava/lang/Object;)V

    .line 765
    :cond_2
    iget-object v4, v4, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 767
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->g()V

    return-void
.end method

.method static synthetic i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->e:Lcom/tokenautocomplete/l;

    return-object v0
.end method

.method static synthetic j(Lcom/tokenautocomplete/TokenCompleteTextView;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->o:Z

    return v0
.end method

.method static synthetic k(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->f()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/view/View;
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 601
    new-instance v0, Lcom/tokenautocomplete/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/tokenautocomplete/b;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 632
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    .line 214
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 242
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v2

    .line 238
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 239
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 240
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 242
    :cond_1
    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 640
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 641
    return-void
.end method

.method protected b(Z)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 468
    if-nez p1, :cond_2

    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSingleLine(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 472
    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    .line 475
    const-class v0, Lcom/tokenautocomplete/j;

    invoke-interface {v10, v9, v1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/tokenautocomplete/j;

    .line 476
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v7

    sub-int v2, v0, v2

    .line 477
    if-lez v2, :cond_0

    .line 478
    add-int/lit8 v8, v1, 0x1

    .line 479
    new-instance v0, Lcom/tokenautocomplete/e;

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextSize()F

    move-result v1

    float-to-int v5, v1

    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->d()F

    move-result v1

    float-to-int v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tokenautocomplete/e;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;ILandroid/content/Context;III)V

    .line 481
    iget-object v1, v0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    invoke-interface {v10, v8, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 483
    iget-object v1, v0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v10, v9, v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v1

    .line 486
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->d()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 487
    iget-object v1, v0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    invoke-interface {v10, v8, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 489
    array-length v1, v7

    if-lez v1, :cond_1

    .line 490
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v7, v1

    .line 491
    invoke-interface {v10, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 492
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tokenautocomplete/e;->a(I)V

    .line 497
    :goto_0
    iget-object v2, v0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 500
    :goto_1
    iget-object v2, v0, Lcom/tokenautocomplete/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v3, 0x21

    invoke-interface {v10, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 528
    :cond_0
    :goto_2
    return-void

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p0, v9}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSingleLine(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 508
    if-eqz v2, :cond_0

    .line 509
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Lcom/tokenautocomplete/e;

    invoke-interface {v2, v9, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/e;

    .line 510
    array-length v3, v0

    move v1, v9

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 511
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 512
    invoke-interface {v2, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 515
    :cond_3
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    if-eqz v0, :cond_4

    .line 516
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    .line 521
    :goto_4
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/tokenautocomplete/m;

    invoke-interface {v0, v9, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/m;

    .line 522
    array-length v0, v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->f:Lcom/tokenautocomplete/m;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v3, 0x12

    invoke-interface {v2, v0, v9, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 518
    :cond_4
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_4

    :cond_5
    move v1, v8

    goto :goto_1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 740
    if-nez v0, :cond_0

    .line 751
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Lcom/tokenautocomplete/j;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 743
    array-length v3, v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 744
    iget-object v5, v4, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 745
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->e:Lcom/tokenautocomplete/l;

    invoke-interface {v5, p1}, Lcom/tokenautocomplete/l;->e(Ljava/lang/Object;)V

    .line 746
    invoke-virtual {v4, p1}, Lcom/tokenautocomplete/j;->a(Ljava/lang/Object;)V

    .line 748
    :cond_1
    iget-object v4, v4, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    goto :goto_0
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 540
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->d:Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/tokenautocomplete/d;->a:[I

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    invoke-virtual {v1}, Lcom/tokenautocomplete/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 552
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 545
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 547
    :pswitch_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 549
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enoughToFilter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v2

    .line 267
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 276
    :goto_0
    return v0

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 272
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 273
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 276
    :cond_2
    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getThreshold()I

    move-result v2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSerializableObjects()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1077
    instance-of v3, v0, Ljava/io/Serializable;

    if-eqz v3, :cond_0

    .line 1078
    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1080
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1084
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "You should make your objects Serializable or override"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1085
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getSerializableObjects and convertSerializableArrayToObjectArray"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    :cond_2
    return-object v1
.end method

.method public invalidate()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->a:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->a:Z

    .line 256
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowDy()F

    move-result v2

    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getShadowColor()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->setShadowLayer(FFFI)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->a:Z

    .line 259
    :cond_0
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->invalidate()V

    .line 260
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 298
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    .line 299
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 301
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 303
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 305
    :cond_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 306
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 308
    :cond_1
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->e()V

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 532
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 534
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->b(Z)V

    .line 536
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 338
    .line 339
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 370
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    return v0

    .line 343
    :sswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    .line 344
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    move v0, v2

    .line 346
    goto :goto_0

    .line 349
    :cond_2
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    move v0, v2

    .line 352
    goto :goto_0

    .line 354
    :sswitch_1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    sget-object v3, Lcom/tokenautocomplete/h;->c:Lcom/tokenautocomplete/h;

    if-ne v0, v3, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 356
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 358
    :cond_3
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/j;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 359
    array-length v4, v0

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 360
    iget-object v6, v5, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 361
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->e:Lcom/tokenautocomplete/l;

    invoke-virtual {v5}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/tokenautocomplete/l;->d(Ljava/lang/Object;)V

    .line 362
    invoke-direct {p0, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/j;)V

    move v0, v2

    .line 364
    goto :goto_0

    .line 359
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 370
    goto :goto_1

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 329
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->p:Z

    .line 331
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->e()V

    .line 333
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 463
    invoke-super/range {p0 .. p5}, Landroid/widget/MultiAutoCompleteTextView;->onLayout(ZIIII)V

    .line 464
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    .line 465
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1118
    instance-of v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    if-nez v0, :cond_1

    .line 1119
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    check-cast p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 1124
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1126
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    .line 1128
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->f()V

    .line 1129
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->b:Z

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    .line 1130
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->c:Lcom/tokenautocomplete/h;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    .line 1131
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->d:Lcom/tokenautocomplete/i;

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    .line 1133
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a()V

    .line 1134
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1135
    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 1140
    :cond_2
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Lcom/tokenautocomplete/c;

    invoke-direct {v0, p0}, Lcom/tokenautocomplete/c;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSerializableObjects()Ljava/util/ArrayList;

    move-result-object v0

    .line 1102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->o:Z

    .line 1103
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1104
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->o:Z

    .line 1105
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    invoke-direct {v2, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1107
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->a:Ljava/lang/String;

    .line 1108
    iget-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    iput-boolean v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->b:Z

    .line 1109
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->c:Lcom/tokenautocomplete/h;

    .line 1110
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    iput-object v1, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->d:Lcom/tokenautocomplete/i;

    .line 1111
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->e:Ljava/util/ArrayList;

    .line 1113
    return-object v2
.end method

.method protected onSelectionChanged(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->k:Z

    if-eqz v0, :cond_0

    move p1, v1

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    sget-object v2, Lcom/tokenautocomplete/h;->c:Lcom/tokenautocomplete/h;

    if-ne v0, v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->g()V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    .line 459
    :goto_0
    return-void

    .line 443
    :cond_3
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 444
    if-eqz v2, :cond_5

    .line 446
    const-class v0, Lcom/tokenautocomplete/j;

    invoke-interface {v2, p1, p1, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 447
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 448
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 449
    if-gt p1, v5, :cond_4

    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p1, :cond_4

    .line 450
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 447
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 457
    :cond_5
    invoke-super {p0, p1, p1}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 385
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 388
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    sget-object v1, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    if-ne v0, v1, :cond_6

    .line 389
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v1, v0

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_0

    if-ne v4, v3, :cond_5

    .line 396
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v0, v6, :cond_3

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->l:Landroid/text/Layout;

    invoke-static {v0, v6, p0, v7}, Lcom/tokenautocomplete/g;->a(FFLandroid/widget/TextView;Landroid/text/Layout;)I

    move-result v0

    .line 402
    :goto_1
    const/4 v6, -0x1

    if-eq v0, v6, :cond_5

    .line 403
    const-class v6, Lcom/tokenautocomplete/j;

    invoke-interface {v5, v0, v0, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 405
    array-length v5, v0

    if-lez v5, :cond_5

    .line 406
    aget-object v5, v0, v2

    if-nez v4, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Lcom/tokenautocomplete/j;->a(Z)V

    .line 407
    if-ne v4, v3, :cond_1

    .line 408
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/tokenautocomplete/j;->b()V

    :cond_1
    move v0, v3

    .line 415
    :goto_3
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    sget-object v2, Lcom/tokenautocomplete/h;->a:Lcom/tokenautocomplete/h;

    if-eq v1, v2, :cond_2

    .line 416
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 418
    :cond_2
    return v0

    .line 399
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v0, v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->getOffsetForPosition(FF)I

    move-result v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 406
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public performCompletion()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getListSelection()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_1
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performCompletion()V

    goto :goto_1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 167
    :cond_1
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearComposingText()V

    .line 571
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 572
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->d:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->d(Ljava/lang/Object;)Lcom/tokenautocomplete/j;

    move-result-object v2

    .line 574
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 575
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v4

    .line 576
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 577
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 578
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 580
    :cond_0
    invoke-static {v3, v0, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    .line 582
    if-eqz v3, :cond_1

    .line 583
    iget-boolean v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->m:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->g:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->d:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 584
    const-string v1, " "

    invoke-interface {v3, v0, v4, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 591
    :cond_1
    :goto_0
    return-void

    .line 586
    :cond_2
    invoke-static {v3, v0, v4, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 587
    invoke-interface {v3, v0, v4, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 588
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x21

    invoke-interface {v3, v2, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public setDeletionStyle(Lcom/tokenautocomplete/i;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->h:Lcom/tokenautocomplete/i;

    .line 178
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->j:Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->f()V

    .line 199
    return-void
.end method

.method public setTokenClickStyle(Lcom/tokenautocomplete/h;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->i:Lcom/tokenautocomplete/h;

    .line 183
    return-void
.end method

.method public setTokenListener(Lcom/tokenautocomplete/l;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->e:Lcom/tokenautocomplete/l;

    .line 187
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 173
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->c:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 174
    return-void
.end method
