.class public abstract Lcom/dolphin/browser/tablist/g;
.super Landroid/widget/FrameLayout;
.source "BaseTabListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/g;->c()V

    .line 29
    return-void
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
