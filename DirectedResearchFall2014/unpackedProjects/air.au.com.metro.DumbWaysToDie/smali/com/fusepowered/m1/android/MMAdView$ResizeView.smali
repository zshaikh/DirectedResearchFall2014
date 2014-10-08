.class Lcom/fusepowered/m1/android/MMAdView$ResizeView;
.super Landroid/view/View;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMAdView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    .line 537
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 538
    return-void
.end method


# virtual methods
.method declared-synchronized attachToContext(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    # invokes: Lcom/fusepowered/m1/android/MMAdView;->detachFromParent(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/MMAdView;->access$100(Lcom/fusepowered/m1/android/MMAdView;Landroid/view/View;)V

    .line 562
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_0
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 554
    const-string v0, "onRestoreInstanceState"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    # invokes: Lcom/fusepowered/m1/android/MMAdView;->attachToWindow(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMAdView;->access$000(Lcom/fusepowered/m1/android/MMAdView;Landroid/view/View;)V

    .line 556
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 557
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 545
    const-string v0, "onSaveInstanceState"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->this$0:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->attachToContext(Landroid/view/View;)V

    .line 548
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
