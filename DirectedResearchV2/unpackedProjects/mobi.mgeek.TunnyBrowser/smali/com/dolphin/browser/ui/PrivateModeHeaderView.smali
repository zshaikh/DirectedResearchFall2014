.class public Lcom/dolphin/browser/ui/PrivateModeHeaderView;
.super Landroid/widget/FrameLayout;
.source "PrivateModeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/dolphin/browser/ui/InclickableTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->private_operation_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background_round:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 48
    const v0, 0x42ce999a

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->setMinimumHeight(I)V

    .line 49
    sget v0, Lcom/dolphin/browser/core/R$layout;->private_mode_header_view:I

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/dolphin/browser/core/R$id;->private_mode_header_summary:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/InclickableTextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->a:Lcom/dolphin/browser/ui/InclickableTextView;

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->a:Lcom/dolphin/browser/ui/InclickableTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/InclickableTextView;->a(Z)V

    .line 52
    sget v0, Lcom/dolphin/browser/core/R$id;->private_mode_header_operation:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$drawable;->divider_horizontal:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->a()V

    .line 60
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/ui/PrivateModeHeaderView;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 73
    :cond_0
    return-void
.end method
