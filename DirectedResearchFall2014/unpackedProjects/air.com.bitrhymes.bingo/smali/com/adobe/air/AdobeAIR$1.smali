.class Lcom/adobe/air/AdobeAIR$1;
.super Landroid/webkit/WebViewClient;
.source "AdobeAIR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AdobeAIR;->onCreate(Landroid/os/Bundle;)V
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
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x1

    #setter for: Lcom/adobe/air/AdobeAIR;->mOffline:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$102(Lcom/adobe/air/AdobeAIR;Z)Z

    .line 96
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_res/raw/startga.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 47
    .line 48
    if-eqz p2, :cond_5

    .line 50
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    const-string v1, "http://www.adobe.com/airgames/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 52
    invoke-static {}, Lcom/adobe/air/AdobeAIR;->access$000()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mOffline:Z
    invoke-static {v2}, Lcom/adobe/air/AdobeAIR;->access$100(Lcom/adobe/air/AdobeAIR;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/air/AdobeAIR;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mOffline:Z
    invoke-static {v2}, Lcom/adobe/air/AdobeAIR;->access$100(Lcom/adobe/air/AdobeAIR;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-static {}, Lcom/adobe/air/AdobeAIR;->access$000()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/adobe/air/AdobeAIR;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v0, v4

    .line 84
    :goto_0
    return v0

    .line 68
    :cond_3
    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$1;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method
