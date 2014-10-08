.class Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationListener"
.end annotation


# instance fields
.field private overlayRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/AdViewOverlayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/AdViewOverlayView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/fusepowered/m1/android/AdViewOverlayView;

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;->overlayRef:Ljava/lang/ref/WeakReference;

    .line 390
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 406
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;->overlayRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 407
    .local v1, "overlayView":Lcom/fusepowered/m1/android/AdViewOverlayView;
    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 410
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "Finishing overlay this is in w/ anim finishOverLayWithAnim()"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 413
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 395
    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AnimationListener;->overlayRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 396
    .local v0, "overlayView":Lcom/fusepowered/m1/android/AdViewOverlayView;
    if-eqz v0, :cond_0

    .line 398
    # getter for: Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->access$300(Lcom/fusepowered/m1/android/AdViewOverlayView;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    # getter for: Lcom/fusepowered/m1/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->access$300(Lcom/fusepowered/m1/android/AdViewOverlayView;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    :cond_0
    return-void
.end method
