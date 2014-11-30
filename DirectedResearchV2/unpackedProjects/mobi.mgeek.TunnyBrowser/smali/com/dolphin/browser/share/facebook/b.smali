.class public Lcom/dolphin/browser/share/facebook/b;
.super Landroid/widget/FrameLayout;
.source "FacebookShareView.java"

# interfaces
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private a:Lcom/dolphin/browser/share/b/j;

.field private b:Lcom/dolphin/browser/share/h;

.field private c:Lcom/dolphin/browser/share/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/share/facebook/b;->a:Lcom/dolphin/browser/share/b/j;

    .line 25
    iput-object p3, p0, Lcom/dolphin/browser/share/facebook/b;->b:Lcom/dolphin/browser/share/h;

    .line 26
    invoke-direct {p0}, Lcom/dolphin/browser/share/facebook/b;->c()V

    .line 27
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/b;->removeAllViews()V

    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/facebook/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/b;->a:Lcom/dolphin/browser/share/b/j;

    invoke-direct {v1, v0, v2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/b;->b:Lcom/dolphin/browser/share/h;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/h;)V

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/share/facebook/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iput-object v1, p0, Lcom/dolphin/browser/share/facebook/b;->c:Lcom/dolphin/browser/share/n;

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/b;->c:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/b;->c:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Lcom/dolphin/browser/share/a;)V

    .line 56
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/b;->c:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/b;->c:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Ljava/lang/String;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
