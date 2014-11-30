.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;
.super Landroid/widget/FrameLayout;
.source "TitleBarButton.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->a(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->a(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->a(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->l:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 52
    if-eq v1, v2, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->d:Landroid/graphics/drawable/Drawable;

    .line 55
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->e:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->a:Landroid/view/LayoutInflater;

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03004a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton$1;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->c:Landroid/widget/ProgressBar;

    .line 70
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setDividerPosition(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public setDividerPosition(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    iput p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->e:I

    .line 80
    and-int/lit8 v0, p1, 0x1

    if-eq v0, v2, :cond_1

    .line 81
    const v0, 0x7f020034

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 88
    return-void

    .line 83
    :cond_1
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 84
    const v0, 0x7f020033

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->d:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->f:Z

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->c:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->b:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 98
    return-void

    :cond_0
    move v1, v3

    .line 96
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1
.end method
