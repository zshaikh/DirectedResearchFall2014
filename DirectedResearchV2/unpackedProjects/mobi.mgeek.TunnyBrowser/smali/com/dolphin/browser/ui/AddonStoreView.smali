.class public Lcom/dolphin/browser/ui/AddonStoreView;
.super Landroid/widget/LinearLayout;
.source "AddonStoreView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/AddonStoreView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 55
    sget v1, Lcom/dolphin/browser/core/R$drawable;->addon_store_bg:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AddonStoreView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/AddonStoreView;->setOrientation(I)V

    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/ui/AddonStoreView;->a()V

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/ui/AddonStoreView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/ui/AddonStoreView;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 64
    :cond_0
    return-void
.end method
