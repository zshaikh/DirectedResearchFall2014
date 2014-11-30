.class public Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/rewards/RewardsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WebViewInterface"
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/rewards/RewardsActivity;

.field private final b:Lcom/pocketchange/android/webkit/OptimizedWebView;


# direct methods
.method public constructor <init>(Lcom/pocketchange/android/rewards/RewardsActivity;Lcom/pocketchange/android/webkit/OptimizedWebView;)V
    .locals 0
    .param p1, "activity"    # Lcom/pocketchange/android/rewards/RewardsActivity;
    .param p2, "webView"    # Lcom/pocketchange/android/webkit/OptimizedWebView;

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    .line 520
    iput-object p2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->b:Lcom/pocketchange/android/webkit/OptimizedWebView;

    .line 521
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;)Lcom/pocketchange/android/webkit/OptimizedWebView;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->b:Lcom/pocketchange/android/webkit/OptimizedWebView;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->finish()V

    .line 639
    return-void
.end method

.method public dismissKeyboard()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-static {v0}, Lcom/pocketchange/android/content/ContextUtils;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v1}, Lcom/pocketchange/android/rewards/RewardsActivity;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 591
    return-void
.end method

.method public launchApplication(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.amazon.venezia"

    .line 602
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-static {v0, p1}, Lcom/pocketchange/android/content/ContextUtils;->appIsInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 618
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v1, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    :goto_1
    return-void

    .line 606
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 608
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 610
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.amazon.venezia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    const-string v2, "com.amazon.venezia"

    invoke-static {v0, v2}, Lcom/pocketchange/android/content/ContextUtils;->appIsInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    const-string v1, "RewardsActivity.WebViewInterface"

    const-string v2, "Error launching application"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 627
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 628
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v2}, Lcom/pocketchange/android/rewards/RewardsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v1, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    const-string v1, "RewardsActivity.WebViewInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening url ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public purchaseComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pocketchange.android.rewards.UPDATE_PRODUCT_TRANSACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v1, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public setDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 545
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->b:Lcom/pocketchange/android/webkit/OptimizedWebView;

    new-instance v1, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$1;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;II)V

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->postWhenAttached(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setHardwareAccelerationEnabled(ZLorg/json/JSONObject;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "filter"    # Lorg/json/JSONObject;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/pocketchange/android/rewards/RewardsActivity;->setHardwareAccelerationEnabled(ZLorg/json/JSONObject;)V

    .line 582
    return-void
.end method

.method public setLongClickEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->b:Lcom/pocketchange/android/webkit/OptimizedWebView;

    new-instance v1, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$2;

    invoke-direct {v1, p0, p1}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface$2;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;Z)V

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 578
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->a:Lcom/pocketchange/android/rewards/RewardsActivity;

    invoke-virtual {v0, p1}, Lcom/pocketchange/android/rewards/RewardsActivity;->setRequestedOrientation(I)V

    .line 525
    return-void
.end method

.method public setRedrawConfiguration(JLjava/lang/Boolean;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "period"    # J
    .param p3, "appendElement"    # Ljava/lang/Boolean;
    .param p4, "filter"    # Lorg/json/JSONObject;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;->b:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setRedrawConfiguration(JLjava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 586
    return-void
.end method
