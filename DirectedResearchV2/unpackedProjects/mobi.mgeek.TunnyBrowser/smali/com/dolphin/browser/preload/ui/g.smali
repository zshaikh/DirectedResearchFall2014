.class Lcom/dolphin/browser/preload/ui/g;
.super Ljava/lang/Object;
.source "PreloadingView.java"

# interfaces
.implements Landroid/support/v4/view/cj;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/ui/PreloadingView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/g;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/g;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->l(Lcom/dolphin/browser/preload/ui/PreloadingView;)Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/g;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->l(Lcom/dolphin/browser/preload/ui/PreloadingView;)Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->setVisibility(I)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/g;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0, p1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->b(Lcom/dolphin/browser/preload/ui/PreloadingView;I)V

    .line 417
    iget-boolean v0, p0, Lcom/dolphin/browser/preload/ui/g;->b:Z

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/g;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->f(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    .line 419
    iput-boolean v1, p0, Lcom/dolphin/browser/preload/ui/g;->b:Z

    .line 421
    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 427
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/preload/ui/g;->b:Z

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
