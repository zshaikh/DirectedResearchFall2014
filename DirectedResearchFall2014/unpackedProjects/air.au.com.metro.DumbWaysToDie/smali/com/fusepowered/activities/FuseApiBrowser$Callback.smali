.class public Lcom/fusepowered/activities/FuseApiBrowser$Callback;
.super Landroid/webkit/WebViewClient;
.source "FuseApiBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/activities/FuseApiBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field public completed:Z

.field final synthetic this$0:Lcom/fusepowered/activities/FuseApiBrowser;


# direct methods
.method public constructor <init>(Lcom/fusepowered/activities/FuseApiBrowser;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->this$0:Lcom/fusepowered/activities/FuseApiBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->completed:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 86
    const-string v0, "WEBCLIENT"

    const-string v1, "Loading completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->completed:Z

    .line 89
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/activities/FuseApiBrowser$Callback$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/activities/FuseApiBrowser$Callback$1;-><init>(Lcom/fusepowered/activities/FuseApiBrowser$Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 78
    const-string v0, "WEB_VIEW_TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_TIMEOUT:Lcom/fusepowered/util/FuseAdSkip;

    invoke-virtual {v0}, Lcom/fusepowered/util/FuseAdSkip;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->sendFuseAdSkip(I)V

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const-string v4, "android.intent.action.VIEW"

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    iget-object v2, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->this$0:Lcom/fusepowered/activities/FuseApiBrowser;

    invoke-virtual {v2, v0}, Lcom/fusepowered/activities/FuseApiBrowser;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adClick()V

    .line 73
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 61
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->this$0:Lcom/fusepowered/activities/FuseApiBrowser;

    invoke-virtual {v2, v1}, Lcom/fusepowered/activities/FuseApiBrowser;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adClick()V

    goto :goto_0

    .line 68
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exit://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/fusepowered/activities/FuseApiBrowser$Callback;->this$0:Lcom/fusepowered/activities/FuseApiBrowser;

    invoke-virtual {v2}, Lcom/fusepowered/activities/FuseApiBrowser;->handleOnExit()V

    goto :goto_0
.end method
