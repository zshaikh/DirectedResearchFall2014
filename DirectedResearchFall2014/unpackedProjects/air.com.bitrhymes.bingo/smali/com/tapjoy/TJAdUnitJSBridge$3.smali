.class Lcom/tapjoy/TJAdUnitJSBridge$3;
.super Ljava/lang/Object;
.source "TJAdUnitJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->displayRichMedia(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitJSBridge;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 378
    .local v2, "html":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->val$json:Lorg/json/JSONObject;

    const-string v3, "html"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 386
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, "banner":Lcom/tapjoy/mraid/view/MraidView;
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$300(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 396
    .local v9, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 397
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 400
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0x280

    const/16 v3, 0x64

    invoke-direct {v7, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 401
    .local v7, "layout":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v7}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setInitialScale(I)V

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setBackgroundColor(I)V

    .line 408
    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "window"

    .end local v2    # "html":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 412
    .local v10, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 413
    .local v8, "screenWidth":I
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0, v8}, Lcom/tapjoy/TapjoyUtil;->scaleDisplayAd(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->access$102(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/view/View;)Landroid/view/View;

    .line 415
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$200(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v0

    .end local v0    # "banner":Lcom/tapjoy/mraid/view/MraidView;
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->this$0:Lcom/tapjoy/TJAdUnitJSBridge;

    # getter for: Lcom/tapjoy/TJAdUnitJSBridge;->bannerView:Landroid/view/View;
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->access$100(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const-wide/high16 v3, 0x4059000000000000L

    int-to-double v5, v8

    const-wide/high16 v9, 0x4084000000000000L

    div-double/2addr v5, v9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v8, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .end local v9    # "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    return-void

    .line 380
    .end local v7    # "layout":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "screenWidth":I
    .end local v10    # "windowManager":Landroid/view/WindowManager;
    .restart local v2    # "html":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 382
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
