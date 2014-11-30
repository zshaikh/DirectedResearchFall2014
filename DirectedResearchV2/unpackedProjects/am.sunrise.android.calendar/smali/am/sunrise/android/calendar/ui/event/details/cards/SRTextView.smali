.class public Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;
.super Landroid/widget/TextView;
.source "SRTextView.java"


# instance fields
.field private a:I

.field private b:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->g()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->g()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->g()V

    .line 54
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 134
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a()Z

    move-result v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->b()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->c()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->d()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->e()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getSpannedText()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->b:Landroid/text/Spannable;

    return-object v0
.end method

.method public setTextWithAutoLinking(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 84
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 85
    const/16 v0, 0xf

    invoke-static {v3, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v3, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 88
    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_6

    aget-object v5, v0, v1

    .line 89
    invoke-interface {v3, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 90
    invoke-interface {v3, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 91
    invoke-interface {v3, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 94
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 95
    if-lez v8, :cond_0

    .line 101
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 102
    const-string v9, "mailto"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 103
    iget v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    .line 115
    :cond_0
    :goto_1
    new-instance v8, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView$SRURLSpan;

    invoke-direct {v8, p0, v5}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView$SRURLSpan;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;Ljava/lang/String;)V

    .line 116
    invoke-interface {v3, v8, v6, v7, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string v9, "http"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "https"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "rtsp"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 105
    :cond_2
    iget v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    goto :goto_1

    .line 106
    :cond_3
    const-string v9, "tel"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    iget v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    goto :goto_1

    .line 108
    :cond_4
    const-string v9, "geo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 109
    iget v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    goto :goto_1

    .line 111
    :cond_5
    iget v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->a:I

    goto :goto_1

    .line 119
    :cond_6
    iput-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->b:Landroid/text/Spannable;

    .line 120
    invoke-super {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_2
    return-void

    .line 124
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->b:Landroid/text/Spannable;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
