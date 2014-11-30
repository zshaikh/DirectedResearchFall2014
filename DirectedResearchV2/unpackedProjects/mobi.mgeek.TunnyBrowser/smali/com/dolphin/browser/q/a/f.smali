.class Lcom/dolphin/browser/q/a/f;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "BoxAuthDialog.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/q/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dolphin/browser/q/a/f;->b:Lcom/dolphin/browser/q/a/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/a/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/q/a/f;->b:Lcom/dolphin/browser/q/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/q/a/b;->a(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/q/a/f;->b:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->d(Lcom/dolphin/browser/q/a/b;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method public onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 0

    .prologue
    .line 128
    invoke-static {p1, p2}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;I)V

    .line 129
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/WebViewCallback;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/q/a/f;->b:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->e(Lcom/dolphin/browser/q/a/b;)V

    .line 152
    return-void
.end method

.method public onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-static {p1}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 135
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 157
    if-eqz p2, :cond_0

    .line 158
    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    const-string v1, "dolphin://auth_token_received"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
