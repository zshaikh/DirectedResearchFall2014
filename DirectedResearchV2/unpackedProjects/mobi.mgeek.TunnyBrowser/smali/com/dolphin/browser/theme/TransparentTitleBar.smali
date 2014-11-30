.class public Lcom/dolphin/browser/theme/TransparentTitleBar;
.super Landroid/widget/LinearLayout;
.source "TransparentTitleBar.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# instance fields
.field private a:Lcom/dolphin/browser/theme/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/TransparentTitleBar;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/TransparentTitleBar;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/TransparentTitleBar;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/TransparentTitleBar;->a:Lcom/dolphin/browser/theme/bf;

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/theme/TransparentTitleBar;->a:Lcom/dolphin/browser/theme/bf;

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 44
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/theme/TransparentTitleBar;->a:Lcom/dolphin/browser/theme/bf;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/bf;->updateTheme()V

    .line 50
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/TransparentTitleBar;->invalidate()V

    .line 51
    return-void
.end method
