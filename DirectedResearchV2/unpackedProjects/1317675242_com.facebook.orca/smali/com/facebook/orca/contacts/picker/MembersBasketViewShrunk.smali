.class Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;
.super Landroid/widget/TextView;
.source "MembersBasketViewShrunk.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->setFocusable(Z)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->setFocusableInTouchMode(Z)V

    .line 41
    invoke-static {}, Lcom/facebook/orca/contacts/picker/BasketMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->setSingleLine(Z)V

    .line 43
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    .line 65
    new-instance v1, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 66
    const-string v0, "+100"

    .line 67
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 68
    const-string v2, ", "

    .line 69
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->getWidth()I

    move-result v4

    .line 72
    int-to-float v4, v4

    sub-float v0, v4, v0

    .line 75
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 77
    const/4 v5, 0x0

    .line 78
    iget-object v6, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 80
    if-nez v5, :cond_2

    .line 81
    :goto_1
    cmpg-float v9, v7, v8

    if-gez v9, :cond_3

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .line 93
    if-lez v0, :cond_1

    .line 94
    const-string v1, " +"

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 80
    :cond_2
    add-float/2addr v8, v3

    goto :goto_1

    .line 84
    :cond_3
    sub-float/2addr v7, v8

    .line 85
    if-eqz v5, :cond_4

    .line 86
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    :cond_4
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->a:Ljava/util/List;

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41900000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->setTextSize(F)V

    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->b:Z

    .line 62
    :goto_1
    return-void

    .line 56
    :cond_0
    const/high16 v0, 0x41800000

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->b()V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 48
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->b:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->b:Z

    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MembersBasketViewShrunk;->b()V

    .line 52
    :cond_0
    return-void
.end method
