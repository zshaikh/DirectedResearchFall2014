.class public abstract Lcom/dolphin/browser/core/a;
.super Landroid/widget/BaseAdapter;
.source "AbsAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/core/a;->getView2(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 16
    if-eq v0, p2, :cond_0

    .line 17
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/view/View;)V

    .line 19
    :cond_0
    return-object v0
.end method

.method public abstract getView2(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
