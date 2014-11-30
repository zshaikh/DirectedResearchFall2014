.class public Lcom/dolphin/browser/titlebar/TinyTitleBar;
.super Lcom/dolphin/browser/titlebar/HorizontalProgressBar;
.source "TinyTitleBar.java"

# interfaces
.implements Lcom/dolphin/browser/titlebar/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->invalidate()V

    .line 55
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->n_()V

    .line 46
    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(Lcom/dolphin/browser/titlebar/f;)V

    .line 47
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->onAttachedToWindow()V

    .line 61
    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/h;->a(Lcom/dolphin/browser/titlebar/e;)V

    .line 63
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->onDetachedFromWindow()V

    .line 69
    invoke-static {}, Lcom/dolphin/browser/titlebar/h;->a()Lcom/dolphin/browser/titlebar/h;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/titlebar/e;)V

    .line 71
    return-void
.end method
