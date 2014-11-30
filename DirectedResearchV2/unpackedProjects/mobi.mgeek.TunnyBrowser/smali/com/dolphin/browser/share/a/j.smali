.class public Lcom/dolphin/browser/share/a/j;
.super Landroid/widget/FrameLayout;
.source "EvernoteShareView.java"

# interfaces
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private a:Lcom/dolphin/browser/share/b/j;

.field private b:Lcom/dolphin/browser/share/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/share/a/j;->a:Lcom/dolphin/browser/share/b/j;

    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/j;->c()V

    .line 26
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/j;->removeAllViews()V

    .line 30
    new-instance v0, Lcom/dolphin/browser/share/a/k;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/share/a/j;->a:Lcom/dolphin/browser/share/b/j;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/share/a/k;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    .line 32
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/share/a/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iput-object v0, p0, Lcom/dolphin/browser/share/a/j;->b:Lcom/dolphin/browser/share/n;

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/share/a/j;->b:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/share/a/j;->b:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Lcom/dolphin/browser/share/a;)V

    .line 51
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
