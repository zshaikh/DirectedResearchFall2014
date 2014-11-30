.class Lcom/facebook/dolphin/FacebookAuthDialog$5;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "FacebookAuthDialog.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/FacebookAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/FacebookAuthDialog;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/WebViewCallback;->onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$500(Lcom/facebook/dolphin/FacebookAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/Util;->dismissDialogSafe(Landroid/content/DialogInterface;)Z

    .line 260
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$600(Lcom/facebook/dolphin/FacebookAuthDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 261
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mWebView:Lcom/dolphin/browser/core/IWebView;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$700(Lcom/facebook/dolphin/FacebookAuthDialog;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 245
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/WebViewCallback;->onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 247
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mHasCanceled:Z
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$000(Lcom/facebook/dolphin/FacebookAuthDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$500(Lcom/facebook/dolphin/FacebookAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/Util;->showDialogSafe(Landroid/app/Dialog;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 0

    .prologue
    .line 192
    invoke-static {p1, p2}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;I)V

    .line 193
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    new-instance v1, Lcom/facebook/dolphin/FacebookError;

    invoke-direct {v1, p3, p4, p2}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    # invokes: Lcom/facebook/dolphin/FacebookAuthDialog;->notifyFailed(Lcom/facebook/dolphin/FacebookError;)V
    invoke-static {v0, v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$400(Lcom/facebook/dolphin/FacebookAuthDialog;Lcom/facebook/dolphin/FacebookError;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-static {v0}, Lcom/facebook/dolphin/Util;->dismissDialogSafe(Landroid/content/DialogInterface;)Z

    .line 241
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    invoke-static {p1}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 199
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 203
    const-string v1, "Facebook-WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    invoke-static {p2}, Lcom/facebook/dolphin/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 207
    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-nez v1, :cond_0

    .line 209
    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_0
    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # invokes: Lcom/facebook/dolphin/FacebookAuthDialog;->notifySucceed(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$200(Lcom/facebook/dolphin/FacebookAuthDialog;Landroid/os/Bundle;)V

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-virtual {v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->dismiss()V

    .line 232
    :goto_1
    return v0

    .line 214
    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # invokes: Lcom/facebook/dolphin/FacebookAuthDialog;->notifyCancel()V
    invoke-static {v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$300(Lcom/facebook/dolphin/FacebookAuthDialog;)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    new-instance v3, Lcom/facebook/dolphin/FacebookError;

    invoke-direct {v3, v1}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/facebook/dolphin/FacebookAuthDialog;->notifyFailed(Lcom/facebook/dolphin/FacebookError;)V
    invoke-static {v2, v3}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$400(Lcom/facebook/dolphin/FacebookAuthDialog;Lcom/facebook/dolphin/FacebookError;)V

    goto :goto_0

    .line 223
    :cond_4
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # invokes: Lcom/facebook/dolphin/FacebookAuthDialog;->notifyCancel()V
    invoke-static {v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$300(Lcom/facebook/dolphin/FacebookAuthDialog;)V

    .line 225
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-virtual {v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->dismiss()V

    goto :goto_1

    .line 227
    :cond_5
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 228
    const/4 v0, 0x0

    goto :goto_1

    .line 231
    :cond_6
    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$5;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-virtual {v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcom/facebook/dolphin/Util;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1
.end method
