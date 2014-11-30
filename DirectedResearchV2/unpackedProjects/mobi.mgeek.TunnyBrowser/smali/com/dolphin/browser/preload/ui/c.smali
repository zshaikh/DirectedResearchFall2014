.class Lcom/dolphin/browser/preload/ui/c;
.super Ljava/lang/Object;
.source "PreloadingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/ui/PreloadingView;

.field private b:F


# direct methods
.method constructor <init>(Lcom/dolphin/browser/preload/ui/PreloadingView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dolphin/browser/preload/ui/c;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/c;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->c(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z

    move-result v0

    return v0

    .line 184
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/preload/ui/c;->b:F

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/c;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->d(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/c;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->c(Lcom/dolphin/browser/preload/ui/PreloadingView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget v0, p0, Lcom/dolphin/browser/preload/ui/c;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f00000

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 191
    :goto_1
    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/c;->a:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->e(Lcom/dolphin/browser/preload/ui/PreloadingView;)V

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
