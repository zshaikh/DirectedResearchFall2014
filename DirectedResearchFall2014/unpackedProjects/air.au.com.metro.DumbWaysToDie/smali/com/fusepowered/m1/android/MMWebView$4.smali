.class Lcom/fusepowered/m1/android/MMWebView$4;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMWebView;->setMraidResize(Lcom/fusepowered/m1/android/DTOResizeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMWebView;

.field final synthetic val$adView:Lcom/fusepowered/m1/android/MMAdView;

.field final synthetic val$resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;Lcom/fusepowered/m1/android/MMAdView;Lcom/fusepowered/m1/android/DTOResizeParameters;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMWebView$4;->val$adView:Lcom/fusepowered/m1/android/MMAdView;

    iput-object p3, p0, Lcom/fusepowered/m1/android/MMWebView$4;->val$resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleMraidResize(Lcom/fusepowered/m1/android/DTOResizeParameters;)V
    .locals 3
    .param p1, "resizeParams"    # Lcom/fusepowered/m1/android/DTOResizeParameters;

    .prologue
    .line 434
    new-instance v0, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$4;->val$adView:Lcom/fusepowered/m1/android/MMAdView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, p1}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;-><init>(Lcom/fusepowered/m1/android/MMAdView;Lcom/fusepowered/m1/android/DTOResizeParameters;)V

    .line 437
    .local v0, "bounds":Lcom/fusepowered/m1/android/MMAdView$BannerBounds;
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMWebView$4;->setUnresizeParameters()V

    .line 439
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 440
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 441
    return-void
.end method

.method private setUnresizeParameters()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    # invokes: Lcom/fusepowered/m1/android/MMWebView;->hasDefaultResizeParams()Z
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMWebView;->access$000(Lcom/fusepowered/m1/android/MMWebView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 446
    .local v0, "oldParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Lcom/fusepowered/m1/android/MMWebView;->oldWidth:I

    .line 447
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Lcom/fusepowered/m1/android/MMWebView;->oldHeight:I

    .line 448
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget v1, v1, Lcom/fusepowered/m1/android/MMWebView;->oldWidth:I

    if-gtz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/fusepowered/m1/android/MMWebView;->oldWidth:I

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget v1, v1, Lcom/fusepowered/m1/android/MMWebView;->oldHeight:I

    if-gtz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/fusepowered/m1/android/MMWebView;->oldHeight:I

    .line 455
    .end local v0    # "oldParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fusepowered/m1/android/MMWebView;->isSendingSize:Z

    .line 424
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->val$adView:Lcom/fusepowered/m1/android/MMAdView;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$4;->val$resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMAdView;->handleMraidResize(Lcom/fusepowered/m1/android/DTOResizeParameters;)V

    .line 425
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->val$resizeParams:Lcom/fusepowered/m1/android/DTOResizeParameters;

    invoke-direct {p0, v1}, Lcom/fusepowered/m1/android/MMWebView$4;->handleMraidResize(Lcom/fusepowered/m1/android/DTOResizeParameters;)V

    .line 426
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    const-string v2, "javascript:MMJS.sdk.setState(\'resized\');"

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$4;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    const-string v2, "resized"

    iput-object v2, v1, Lcom/fusepowered/m1/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 429
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
