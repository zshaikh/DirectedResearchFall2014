.class Lam/sunrise/android/calendar/ui/event/details/cards/a;
.super Ljava/lang/Object;
.source "CustomizableEllipsisTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)Z

    .line 153
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 92
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I

    move-result v4

    if-lt v0, v4, :cond_8

    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I

    move-result v0

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 94
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I

    move-result v0

    if-ne v4, v0, :cond_8

    .line 95
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 96
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    .line 97
    if-gtz v0, :cond_2

    .line 98
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    sub-int/2addr v0, v5

    .line 100
    :cond_2
    add-int/2addr v0, v5

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v0, v3

    .line 101
    if-ltz v3, :cond_8

    .line 102
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 104
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->getSpannedText()Landroid/text/Spannable;

    move-result-object v4

    .line 112
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v5, Ljava/lang/Object;

    invoke-interface {v4, v2, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 113
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v6}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 115
    if-eqz v1, :cond_5

    array-length v0, v1

    if-lez v0, :cond_5

    move v0, v2

    .line 116
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 117
    aget-object v5, v1, v0

    .line 118
    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 119
    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 120
    invoke-interface {v4, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 122
    if-ge v8, v3, :cond_4

    .line 123
    invoke-interface {v6, v5, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_4
    if-ge v7, v3, :cond_3

    if-le v8, v3, :cond_3

    .line 125
    invoke-interface {v6, v5, v7, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 130
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->c(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 131
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const-string v1, "sans-serif"

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->d(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I

    move-result v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0, v10}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)V

    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0, v10}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->c(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)Z

    .line 138
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v0, v6}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :cond_6
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_8
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/a;->a:Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)V

    goto/16 :goto_0
.end method
