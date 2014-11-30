.class Lcom/dolphin/browser/tabbar/f;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tabbar/d;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tabbar/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/f;->a:Lcom/dolphin/browser/tabbar/d;

    .line 746
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 747
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, v0, v0}, Lcom/dolphin/browser/tabbar/f;->setMeasuredDimension(II)V

    .line 752
    return-void
.end method

.method public getSolidColor()I
    .locals 2

    .prologue
    .line 757
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    return v0
.end method
