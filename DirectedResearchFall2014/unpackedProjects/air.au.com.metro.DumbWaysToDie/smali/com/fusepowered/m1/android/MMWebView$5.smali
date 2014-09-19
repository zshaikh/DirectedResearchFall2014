.class Lcom/fusepowered/m1/android/MMWebView$5;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMWebView;->unresizeToDefault(Lcom/fusepowered/m1/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMWebView;

.field final synthetic val$adView:Lcom/fusepowered/m1/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;Lcom/fusepowered/m1/android/MMAdView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMWebView$5;->val$adView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method handleUnresize()V
    .locals 3

    .prologue
    const/16 v2, -0x32

    .line 495
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    #calls: Lcom/fusepowered/m1/android/MMWebView;->hasDefaultResizeParams()Z
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMWebView;->access$000(Lcom/fusepowered/m1/android/MMWebView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 498
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget v1, v1, Lcom/fusepowered/m1/android/MMWebView;->oldWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 499
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget v1, v1, Lcom/fusepowered/m1/android/MMWebView;->oldHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iput v2, v1, Lcom/fusepowered/m1/android/MMWebView;->oldWidth:I

    .line 501
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iput v2, v1, Lcom/fusepowered/m1/android/MMWebView;->oldHeight:I

    .line 502
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->requestLayout()V

    .line 505
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->val$adView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdView;->handleUnresize()V

    .line 487
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMWebView$5;->handleUnresize()V

    .line 488
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidDefault()V

    .line 489
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fusepowered/m1/android/MMWebView;->isSendingSize:Z

    .line 490
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$5;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->invalidate()V

    .line 491
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
