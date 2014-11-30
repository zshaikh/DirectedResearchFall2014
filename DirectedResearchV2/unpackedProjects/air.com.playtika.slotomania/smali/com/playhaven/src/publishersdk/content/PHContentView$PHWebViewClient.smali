.class Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method private constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;-><init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    return-void
.end method

.method private broadcastDispatch(Ljava/lang/String;)V
    .locals 4
    .param p1, "dispatch"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "endingIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 328
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 330
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 331
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Dispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidReceiveDispatch:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    # invokes: Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    invoke-static {v2, v3, v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$0(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private routePlayhavenCallback(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received webview callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;
    invoke-static {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$2(Lcom/playhaven/src/publishersdk/content/PHContentView;)Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->hasRoute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->broadcastDispatch(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    # getter for: Lcom/playhaven/src/publishersdk/content/PHContentView;->mRouter:Lcom/playhaven/src/publishersdk/content/PHRequestRouter;
    invoke-static {v1}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$2(Lcom/playhaven/src/publishersdk/content/PHContentView;)Lcom/playhaven/src/publishersdk/content/PHRequestRouter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/playhaven/src/publishersdk/content/PHRequestRouter;->route(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v1, 0x1

    .line 351
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - url routing"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 282
    :try_start_0
    const-string v1, "ph://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->routePlayhavenCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - onLoadResource"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Event;->DidLoad:Lcom/playhaven/src/publishersdk/content/PHContentView$Event;

    const/4 v3, 0x0

    # invokes: Lcom/playhaven/src/publishersdk/content/PHContentView;->broadcastEvent(Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$0(Lcom/playhaven/src/publishersdk/content/PHContentView;Lcom/playhaven/src/publishersdk/content/PHContentView$Event;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - onPageFinished()"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 295
    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "PHWebViewClient - onRecievedError"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v2, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    .line 299
    const-string v1, "Error loading template at url: %s Code: %d Description: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHWebViewClient - onReceivedError"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 310
    :try_start_0
    invoke-direct {p0, p2}, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->routePlayhavenCallback(Ljava/lang/String;)Z

    move-result v1

    .line 312
    .local v1, "shouldOverride":Z
    if-nez v1, :cond_0

    sget-boolean v2, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewClient;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    # invokes: Lcom/playhaven/src/publishersdk/content/PHContentView;->loadPrecachedIfExists(Ljava/lang/String;)Z
    invoke-static {v2, p2}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$1(Lcom/playhaven/src/publishersdk/content/PHContentView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 319
    .end local v1    # "shouldOverride":Z
    :goto_0
    return v2

    .line 315
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PHWebViewClient - shouldOverrideUrlLoading"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v2, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    .line 319
    const/4 v2, 0x0

    goto :goto_0
.end method
