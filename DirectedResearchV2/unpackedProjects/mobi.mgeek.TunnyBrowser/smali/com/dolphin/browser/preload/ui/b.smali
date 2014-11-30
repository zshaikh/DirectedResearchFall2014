.class Lcom/dolphin/browser/preload/ui/b;
.super Ljava/lang/Object;
.source "PreloadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/ui/PreloadingView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->b(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->c(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->d(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->e(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->b(I)V

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/preload/ui/b;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager2;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->a(I)V

    .line 113
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
