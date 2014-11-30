.class Ldolphin/webkit/ViewManager$ChildView;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Landroid/view/View;

.field final synthetic f:Ldolphin/webkit/ViewManager;


# direct methods
.method constructor <init>(Ldolphin/webkit/ViewManager;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ViewManager$ChildView;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ldolphin/webkit/ViewManager$ChildView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->f()Ldolphin/webkit/ia;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Ldolphin/webkit/ia;->b(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->b(Ldolphin/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->c(Ldolphin/webkit/ViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method

.method static synthetic b(Ldolphin/webkit/ViewManager$ChildView;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ldolphin/webkit/ViewManager$ChildView;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->f()Ldolphin/webkit/ia;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Ldolphin/webkit/ia;->a(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->b(Ldolphin/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    new-instance v1, Ldolphin/webkit/hd;

    invoke-direct {v1, p0}, Ldolphin/webkit/hd;-><init>(Ldolphin/webkit/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(IIII)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Ldolphin/webkit/ViewManager$ChildView;->a:I

    .line 55
    iput p2, p0, Ldolphin/webkit/ViewManager$ChildView;->b:I

    .line 56
    iput p3, p0, Ldolphin/webkit/ViewManager$ChildView;->c:I

    .line 57
    iput p4, p0, Ldolphin/webkit/ViewManager$ChildView;->d:I

    .line 58
    return-void
.end method

.method b(IIII)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldolphin/webkit/ViewManager$ChildView;->a(IIII)V

    .line 66
    iget-object v0, p0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    new-instance v1, Ldolphin/webkit/hc;

    invoke-direct {v1, p0}, Ldolphin/webkit/hc;-><init>(Ldolphin/webkit/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
