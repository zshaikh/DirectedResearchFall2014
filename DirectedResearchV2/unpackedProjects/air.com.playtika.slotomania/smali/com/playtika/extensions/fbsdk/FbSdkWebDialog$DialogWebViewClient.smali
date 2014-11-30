.class Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FbSdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;


# direct methods
.method private constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$3(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$4(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$5(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 406
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$6(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$7(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 388
    const-string v0, "FacebookSDK.WebDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webview loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 390
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$3(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # getter for: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$4(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 393
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Ljava/lang/Throwable;)V

    .line 374
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->dismiss()V

    .line 375
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v3, 0x0

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 381
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Ljava/lang/Throwable;)V

    .line 382
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 383
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->dismiss()V

    .line 384
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 322
    const-string v7, "FacebookSDK.WebDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Redirect URL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v7, "fbconnect://success"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 324
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 326
    .local v6, "values":Landroid/os/Bundle;
    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 328
    const-string v7, "error_type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    const-string v7, "error_msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "errorMessage":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 333
    const-string v7, "error_description"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    :cond_1
    const-string v7, "error_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "errorCodeString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 337
    .local v1, "errorCode":I
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 339
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 345
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 346
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 347
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V
    invoke-static {v7, v6}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Landroid/os/Bundle;)V

    .line 356
    :goto_1
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v7}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->dismiss()V

    move v7, v11

    .line 367
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v6    # "values":Landroid/os/Bundle;
    :goto_2
    return v7

    .line 340
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "errorCode":I
    .restart local v2    # "errorCodeString":Ljava/lang/String;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "values":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 341
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0

    .line 348
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    if-eqz v0, :cond_5

    .line 349
    const-string v7, "access_denied"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "OAuthAccessDeniedException"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 350
    :cond_4
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendCancelToListener()V
    invoke-static {v7}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V

    goto :goto_1

    .line 352
    :cond_5
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v5, "requestError":Lcom/facebook/FacebookRequestError;
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    new-instance v8, Lcom/facebook/FacebookServiceException;

    invoke-direct {v8, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v7, v8}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 358
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v5    # "requestError":Lcom/facebook/FacebookRequestError;
    .end local v6    # "values":Landroid/os/Bundle;
    :cond_6
    const-string v7, "fbconnect://cancel"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 359
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendCancelToListener()V
    invoke-static {v7}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$1(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V

    .line 360
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v7}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->dismiss()V

    move v7, v11

    .line 361
    goto :goto_2

    .line 362
    :cond_7
    const-string v7, "touch"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 363
    const/4 v7, 0x0

    goto :goto_2

    .line 366
    :cond_8
    iget-object v7, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$DialogWebViewClient;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v7}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v7, v11

    .line 367
    goto :goto_2
.end method
