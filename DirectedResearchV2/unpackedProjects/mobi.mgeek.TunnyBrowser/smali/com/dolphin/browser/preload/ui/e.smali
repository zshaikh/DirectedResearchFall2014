.class Lcom/dolphin/browser/preload/ui/e;
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
    .line 297
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->h(Lcom/dolphin/browser/preload/ui/PreloadingView;)I

    move-result v0

    invoke-static {}, Lcom/dolphin/browser/preload/ui/PreloadingView;->f()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;I)I

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->j(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/preload/ui/PreloadingView;->f()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v2}, Lcom/dolphin/browser/preload/ui/PreloadingView;->h(Lcom/dolphin/browser/preload/ui/PreloadingView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    iget-object v1, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->k(Lcom/dolphin/browser/preload/ui/PreloadingView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/preload/ui/PreloadingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/e;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->i(Lcom/dolphin/browser/preload/ui/PreloadingView;)I

    goto :goto_0
.end method
