.class abstract Lcom/dolphin/browser/gesture/ui/ag;
.super Ljava/lang/Object;
.source "GesturePannelView.java"


# instance fields
.field protected b:Z

.field protected c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/ah;-><init>(Lcom/dolphin/browser/gesture/ui/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->c:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/y;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/ag;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/vg/ui/a;->a(Ljava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method public abstract a(Lcom/dolphin/browser/gesture/Gesture;)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->b:Z

    .line 271
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->b:Z

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ag;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->h()V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->b()V

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ag;->d:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    return-void
.end method
