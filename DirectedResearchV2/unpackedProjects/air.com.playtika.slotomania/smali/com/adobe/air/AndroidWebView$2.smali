.class Lcom/adobe/air/AndroidWebView$2;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPageStartedUrl:Ljava/lang/String;

.field private mNoCompleteForUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$webView:Lcom/adobe/air/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 457
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 459
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 460
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    .line 461
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0, p2}, Lcom/adobe/air/AndroidWebView;->onLocationChange(Ljava/lang/String;)Z

    .line 550
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 497
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Ljava/lang/String;

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0, p2}, Lcom/adobe/air/AndroidWebView;->onLoadComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 469
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-string v5, "] "

    const-string v4, "["

    const-string v3, ": "

    .line 559
    iput-object p4, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Ljava/lang/String;

    .line 561
    const/16 v0, -0xa

    if-ne p2, v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc9d

    invoke-virtual {v0, p4, v1, v2}, Lcom/adobe/air/AndroidWebView;->onLoadError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p4, v1, v2}, Lcom/adobe/air/AndroidWebView;->onLoadError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 518
    new-instance v1, Lcom/adobe/air/AndroidWebView$2$1;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/adobe/air/AndroidWebView$2$1;-><init>(Lcom/adobe/air/AndroidWebView$2;Landroid/net/http/SslError;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V

    .line 538
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0, p2}, Lcom/adobe/air/AndroidWebView;->onLocationChanging(Ljava/lang/String;)Z

    move-result v0

    .line 487
    if-eqz v0, :cond_0

    .line 488
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Ljava/lang/String;

    .line 490
    :cond_0
    return v0
.end method
