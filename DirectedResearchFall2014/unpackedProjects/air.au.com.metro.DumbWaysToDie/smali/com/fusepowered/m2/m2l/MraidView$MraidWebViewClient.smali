.class Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MraidWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidView;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;-><init>(Lcom/fusepowered/m2/m2l/MraidView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 386
    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    #getter for: Lcom/fusepowered/m2/m2l/MraidView;->mHasFiredReadyEvent:Z
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidView;->access$1(Lcom/fusepowered/m2/m2l/MraidView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    #getter for: Lcom/fusepowered/m2/m2l/MraidView;->mDisplayController:Lcom/fusepowered/m2/m2l/MraidDisplayController;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidView;->access$2(Lcom/fusepowered/m2/m2l/MraidView;)Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->initializeJavaScriptState()V

    .line 375
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    #getter for: Lcom/fusepowered/m2/m2l/MraidView;->mPlacementType:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidView;->access$3(Lcom/fusepowered/m2/m2l/MraidView;)Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;->createWithType(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Lcom/fusepowered/m2/m2l/MraidPlacementTypeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 376
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->fireReadyEvent()V

    .line 377
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getMraidListener()Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getMraidListener()Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView$MraidListener;->onReady(Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    const/4 v1, 0x1

    #setter for: Lcom/fusepowered/m2/m2l/MraidView;->mHasFiredReadyEvent:Z
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->access$4(Lcom/fusepowered/m2/m2l/MraidView;Z)V

    .line 382
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 339
    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 345
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 346
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "mopub"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    .line 368
    :goto_0
    return v4

    .line 349
    :cond_0
    const-string v4, "mraid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    #calls: Lcom/fusepowered/m2/m2l/MraidView;->tryCommand(Ljava/net/URI;)Z
    invoke-static {v4, v5}, Lcom/fusepowered/m2/m2l/MraidView;->access$0(Lcom/fusepowered/m2/m2l/MraidView;Ljava/net/URI;)Z

    move v4, v6

    .line 351
    goto :goto_0

    .line 354
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/MraidView;->wasClicked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v1, i:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 358
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidWebViewClient;->this$0:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v4}, Lcom/fusepowered/m2/m2l/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 362
    goto :goto_0

    .line 363
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/content/ActivityNotFoundException;
    move v4, v5

    .line 364
    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    move v4, v5

    .line 368
    goto :goto_0
.end method
