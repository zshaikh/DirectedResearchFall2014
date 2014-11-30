.class public Lcom/dolphin/browser/share/box/BoxShareView;
.super Landroid/widget/FrameLayout;
.source "BoxShareView.java"

# interfaces
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private a:Lcom/dolphin/browser/share/b/j;

.field private b:Lcom/dolphin/browser/share/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/dolphin/browser/share/box/BoxShareView;->a:Lcom/dolphin/browser/share/b/j;

    .line 23
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/BoxShareView;->c()V

    .line 24
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/BoxShareView;->removeAllViews()V

    .line 32
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/BoxShareView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/dolphin/browser/share/box/b;

    iget-object v2, p0, Lcom/dolphin/browser/share/box/BoxShareView;->a:Lcom/dolphin/browser/share/b/j;

    invoke-direct {v1, v0, v2}, Lcom/dolphin/browser/share/box/b;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    .line 34
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00fd

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/box/b;->setBackgroundColor(I)V

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/share/box/BoxShareView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iput-object v1, p0, Lcom/dolphin/browser/share/box/BoxShareView;->b:Lcom/dolphin/browser/share/n;

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/share/box/BoxShareView;->b:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/share/box/BoxShareView;->b:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Lcom/dolphin/browser/share/a;)V

    .line 55
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
