.class public Lcom/facebook/orca/tabs/TabIndicatorView;
.super Landroid/widget/LinearLayout;
.source "TabIndicatorView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    const v1, 0x7f030034

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v0, 0x7f020088

    invoke-virtual {p0, v0}, Lcom/facebook/orca/tabs/TabIndicatorView;->setBackgroundResource(I)V

    .line 42
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/facebook/orca/tabs/TabIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->a:Landroid/view/View;

    .line 43
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/facebook/orca/tabs/TabIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->b:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/tabs/TabIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->c:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->d:I

    .line 50
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->e:I

    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->b()V

    .line 55
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->isSelected()Z

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->isFocused()Z

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->isPressed()Z

    .line 62
    iget-object v1, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->d:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->f:I

    if-lez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_1
    return-void

    .line 62
    :cond_0
    iget v2, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->e:I

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 76
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->b()V

    .line 77
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->f:I

    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->b()V

    .line 86
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
