.class public Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;
.super Landroid/widget/FrameLayout;
.source "ViewPortAnimProviderImpl.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/cw;


# instance fields
.field private a:Z

.field private b:Lcom/dolphin/browser/tablist/cv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a:Z

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->invalidate()V

    .line 77
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/cv;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->b:Lcom/dolphin/browser/tablist/cv;

    if-eq p1, v0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a(Z)V

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->b:Lcom/dolphin/browser/tablist/cv;

    .line 33
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a:Z

    .line 57
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->b:Lcom/dolphin/browser/tablist/cv;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->b:Lcom/dolphin/browser/tablist/cv;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/cv;->a(Landroid/graphics/Canvas;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    return-void
.end method
