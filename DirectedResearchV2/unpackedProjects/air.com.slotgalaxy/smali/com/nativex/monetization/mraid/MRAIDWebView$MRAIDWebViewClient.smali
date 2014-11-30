.class Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MRAIDWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;


# direct methods
.method private constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p2, "x1"    # Lcom/nativex/monetization/mraid/MRAIDWebView$1;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;-><init>(Lcom/nativex/monetization/mraid/MRAIDWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->onPageFinished()V

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 321
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 312
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 284
    :try_start_0
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$300(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 285
    invoke-static {p2}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->checkForScheme(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    move-result-object v1

    .line 286
    .local v1, "scheme":Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$300(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->callsHandled:Ljava/util/List;
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$400(Lcom/nativex/monetization/mraid/MRAIDWebView;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->handleScheme(Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    const-string v3, "Loading custom url scheme"

    invoke-static {v2, v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    move v2, v5

    .line 303
    .end local v1    # "scheme":Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    :goto_0
    return v2

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$500(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not MRAID AD. Opening url in android browser - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/nativex/monetization/mraid/MRAIDUtils;->startMRAIDBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    sget-object v3, Lcom/nativex/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/nativex/monetization/enums/AdEvent;

    const-string v4, "The user clicked on a link in the ad and is navigating out of the app"

    invoke-virtual {v2, v3, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 296
    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v5

    .line 300
    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url blocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    move v2, v5

    .line 303
    goto/16 :goto_0
.end method
