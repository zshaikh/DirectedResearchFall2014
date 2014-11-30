.class Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->setDimensions(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;II)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->c:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;

    iput p2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->a:I

    iput p3, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const-string v4, "RewardsActivity.WebViewInterface"

    .line 550
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->c:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;

    invoke-static {v0}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;)Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 551
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 552
    const-string v1, "RewardsActivity.WebViewInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set view dimensions: Parent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] not an instance of ViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->c:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;

    invoke-static {v1}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;)Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 556
    if-nez v1, :cond_1

    .line 557
    const-string v0, "RewardsActivity.WebViewInterface"

    const-string v0, "Cannot set view dimensions: No existing layout parameters"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_1
    iget v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->a:I

    if-eqz v2, :cond_2

    .line 561
    iget v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->a:I

    if-gez v2, :cond_4

    move v2, v3

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 563
    :cond_2
    iget v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->b:I

    if-eqz v2, :cond_3

    .line 564
    iget v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->b:I

    if-gez v2, :cond_5

    move v2, v3

    :goto_2
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 566
    :cond_3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->c:Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;

    invoke-static {v2}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;)Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 561
    :cond_4
    iget v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->a:I

    goto :goto_1

    .line 564
    :cond_5
    iget v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;->b:I

    goto :goto_2
.end method
