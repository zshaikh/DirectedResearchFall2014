.class Lcom/dolphin/browser/gesture/ui/ah;
.super Ljava/lang/Object;
.source "GesturePannelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/ag;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    iget-boolean v0, v0, Lcom/dolphin/browser/gesture/ui/ag;->b:Z

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->a()V

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->g(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ah;->a:Lcom/dolphin/browser/gesture/ui/ag;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
