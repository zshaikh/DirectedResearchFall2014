.class public Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;
.super Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WebViewClient"
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/rewards/RewardsActivity;


# direct methods
.method protected constructor <init>(Lcom/pocketchange/android/rewards/RewardsActivity;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "activity"    # Lcom/pocketchange/android/rewards/RewardsActivity;
    .param p2, "jsInterface"    # Ljava/lang/Object;
    .param p3, "debug"    # Z

    .prologue
    .line 487
    invoke-direct {p0, p2, p3}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;-><init>(Ljava/lang/Object;Z)V

    .line 488
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    .line 489
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->b()V

    .line 509
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->a()V

    .line 504
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading url ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: code ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] description ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v1, v0, v2}, Lcom/pocketchange/android/rewards/RewardsActivity;->notifyWebViewError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    return-void

    :cond_0
    move-object v0, v2

    .line 493
    goto :goto_0
.end method
