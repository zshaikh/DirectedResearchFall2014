.class Lcom/dolphin/browser/preload/ui/a;
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
    .line 81
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/a;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/a;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager2;->b(I)V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/a;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager2;->a(I)V

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/a;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/support/v4/view/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager2;->a(Z)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/a;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a()V

    .line 89
    return-void
.end method
