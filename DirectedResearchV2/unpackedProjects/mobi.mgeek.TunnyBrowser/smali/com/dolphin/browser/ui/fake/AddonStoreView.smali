.class public Lcom/dolphin/browser/ui/fake/AddonStoreView;
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
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/AddonStoreView;->a(Landroid/content/Context;)V

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
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AddonStoreView;->setBackgroundColor(I)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/AddonStoreView;->setOrientation(I)V

    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/ui/fake/AddonStoreView;->a()V

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AddonStoreView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AddonStoreView;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method
