.class Lcom/appoxee/activities/MoreApps$1;
.super Landroid/webkit/WebViewClient;
.source "MoreApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/MoreApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/MoreApps;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/MoreApps;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/MoreApps$1;->this$0:Lcom/appoxee/activities/MoreApps;

    .line 53
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/appoxee/activities/MoreApps$1;->this$0:Lcom/appoxee/activities/MoreApps;

    iget-object v0, v0, Lcom/appoxee/activities/MoreApps;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/appoxee/activities/MoreApps$1;->this$0:Lcom/appoxee/activities/MoreApps;

    iget-object v0, v0, Lcom/appoxee/activities/MoreApps;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
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
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoreApps error, error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/appoxee/activities/MoreApps$1;->this$0:Lcom/appoxee/activities/MoreApps;

    # invokes: Lcom/appoxee/activities/MoreApps;->showErrorMessage()V
    invoke-static {v0}, Lcom/appoxee/activities/MoreApps;->access$0(Lcom/appoxee/activities/MoreApps;)V

    .line 75
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    return v0
.end method
