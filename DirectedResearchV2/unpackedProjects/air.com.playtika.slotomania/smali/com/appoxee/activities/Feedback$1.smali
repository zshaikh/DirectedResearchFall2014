.class Lcom/appoxee/activities/Feedback$1;
.super Landroid/webkit/WebViewClient;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/Feedback;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Feedback;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/Feedback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/Feedback$1;->this$0:Lcom/appoxee/activities/Feedback;

    .line 59
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private loadMarketUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/appoxee/activities/Feedback$1;->this$0:Lcom/appoxee/activities/Feedback;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/appoxee/activities/Feedback;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/appoxee/activities/Feedback$1;->this$0:Lcom/appoxee/activities/Feedback;

    iget-object v0, v0, Lcom/appoxee/activities/Feedback;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/appoxee/activities/Feedback$1;->this$0:Lcom/appoxee/activities/Feedback;

    iget-object v0, v0, Lcom/appoxee/activities/Feedback;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
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
    .line 100
    const-string v0, "market://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feedback error, error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/appoxee/activities/Feedback$1;->this$0:Lcom/appoxee/activities/Feedback;

    # invokes: Lcom/appoxee/activities/Feedback;->showErrorMessage()V
    invoke-static {v0}, Lcom/appoxee/activities/Feedback;->access$0(Lcom/appoxee/activities/Feedback;)V

    .line 106
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 64
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p2}, Lcom/appoxee/activities/Feedback$1;->loadMarketUrl(Ljava/lang/String;)V

    move v0, v2

    .line 78
    :goto_0
    return v0

    .line 69
    :cond_0
    const-string v0, "appoxee://closeWindow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/appoxee/activities/Feedback$1;->this$0:Lcom/appoxee/activities/Feedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appoxee/activities/Feedback;->close(Landroid/view/View;)V

    move v0, v2

    .line 71
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method
