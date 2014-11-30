.class Lcom/dolphin/browser/preload/ui/d;
.super Ljava/lang/Object;
.source "PreloadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/ui/PreloadingView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/d;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/d;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->f(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/d;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->g(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/d;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    new-instance v1, Lcom/dolphin/browser/preload/ui/i;

    iget-object v2, p0, Lcom/dolphin/browser/preload/ui/d;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/ui/PreloadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/preload/ui/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/PreloadingView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/d;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->g(Lcom/dolphin/browser/preload/ui/PreloadingView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 292
    return-void
.end method
