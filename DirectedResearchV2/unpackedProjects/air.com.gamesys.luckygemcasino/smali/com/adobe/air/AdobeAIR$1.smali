.class Lcom/adobe/air/AdobeAIR$1;
.super Landroid/webkit/WebViewClient;
.source "AdobeAIR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AdobeAIR;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIR;


# direct methods
.method constructor <init>(Lcom/adobe/air/AdobeAIR;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$100(Lcom/adobe/air/AdobeAIR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v0, v0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x0

    # setter for: Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$102(Lcom/adobe/air/AdobeAIR;Z)Z

    .line 185
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR;->setRequestedOrientation(I)V

    .line 189
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/adobe/air/AdobeAIR;->access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR;->setContentView(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x1

    # setter for: Lcom/adobe/air/AdobeAIR;->mOffline:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$302(Lcom/adobe/air/AdobeAIR;Z)Z

    .line 203
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_res/raw/startga.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    if-eqz p2, :cond_5

    .line 123
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 130
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v3, v3, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gamespace.adobe.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dh8vjmvwgc27o.cloudfront.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    :cond_1
    :goto_0
    return v0

    .line 137
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www.adobe.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gaming.adobe.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v1

    .line 149
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    iget-object v2, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v2, v0}, Lcom/adobe/air/AdobeAIR;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    move v0, v1

    .line 169
    goto :goto_0

    :cond_6
    move v0, v1

    .line 145
    goto :goto_1

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    # getter for: Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$000(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    goto :goto_2
.end method
