.class public Lcom/dolphin/browser/share/twitter/TwitterShareView;
.super Landroid/widget/FrameLayout;
.source "TwitterShareView.java"

# interfaces
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private a:Lcom/dolphin/browser/share/b/j;

.field private b:Lcom/dolphin/browser/share/h;

.field private c:Lcom/dolphin/browser/share/n;

.field private d:Lcom/dolphin/browser/share/twitter/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/dolphin/browser/share/twitter/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/twitter/b;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareView;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->d:Lcom/dolphin/browser/share/twitter/a;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/dolphin/browser/share/twitter/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/twitter/b;-><init>(Lcom/dolphin/browser/share/twitter/TwitterShareView;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->d:Lcom/dolphin/browser/share/twitter/a;

    .line 21
    iput-object p2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->a:Lcom/dolphin/browser/share/b/j;

    .line 22
    iput-object p3, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->b:Lcom/dolphin/browser/share/h;

    .line 23
    invoke-direct {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareView;->c()V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/twitter/TwitterShareView;)Lcom/dolphin/browser/share/h;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->b:Lcom/dolphin/browser/share/h;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareView;->removeAllViews()V

    .line 32
    invoke-virtual {p0}, Lcom/dolphin/browser/share/twitter/TwitterShareView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    iget-object v2, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->a:Lcom/dolphin/browser/share/b/j;

    invoke-direct {v1, v0, v2}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->b:Lcom/dolphin/browser/share/h;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/h;)V

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->d:Lcom/dolphin/browser/share/twitter/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/a;)V

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/share/twitter/TwitterShareView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iput-object v1, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->c:Lcom/dolphin/browser/share/n;

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->c:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->c:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Lcom/dolphin/browser/share/a;)V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->c:Lcom/dolphin/browser/share/n;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/TwitterShareView;->c:Lcom/dolphin/browser/share/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/n;->a(Ljava/lang/String;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
