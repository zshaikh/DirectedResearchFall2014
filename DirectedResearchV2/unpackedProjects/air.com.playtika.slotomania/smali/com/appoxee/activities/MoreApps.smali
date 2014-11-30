.class public Lcom/appoxee/activities/MoreApps;
.super Landroid/app/Activity;
.source "MoreApps.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field errorMessage:Landroid/widget/RelativeLayout;

.field progressBar:Landroid/widget/ProgressBar;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appoxee/activities/MoreApps;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/appoxee/activities/MoreApps;->showErrorMessage()V

    return-void
.end method

.method private showErrorMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 81
    iget-object v0, p0, Lcom/appoxee/activities/MoreApps;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/appoxee/activities/MoreApps;->errorMessage:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appoxee/activities/Inbox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "backIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/MoreApps;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/appoxee/activities/MoreApps;->finish()V

    .line 96
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appoxee/activities/MoreApps;->close(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, v5}, Lcom/appoxee/activities/MoreApps;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/appoxee/activities/MoreApps;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const-string v3, "moreapps_layout"

    invoke-static {v3}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 35
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 37
    .local v1, "moreAppsLayout":Landroid/widget/RelativeLayout;
    const-string v3, "moreapps_webview"

    invoke-static {v3}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    .line 38
    const-string v3, "moreapps_progress_bar"

    invoke-static {v3}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/appoxee/activities/MoreApps;->progressBar:Landroid/widget/ProgressBar;

    .line 40
    const-string v3, "moreapps_error_message"

    invoke-static {v3}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/appoxee/activities/MoreApps;->errorMessage:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v3, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 45
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v3, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getMoreAppsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/appoxee/activities/MoreApps;->setContentView(Landroid/view/View;)V

    .line 53
    iget-object v3, p0, Lcom/appoxee/activities/MoreApps;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/appoxee/activities/MoreApps$1;

    invoke-direct {v4, p0}, Lcom/appoxee/activities/MoreApps$1;-><init>(Lcom/appoxee/activities/MoreApps;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    .end local v2    # "webSettings":Landroid/webkit/WebSettings;
    :cond_0
    return-void
.end method
