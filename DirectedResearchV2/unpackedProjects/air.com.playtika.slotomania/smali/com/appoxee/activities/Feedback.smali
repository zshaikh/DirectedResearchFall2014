.class public Lcom/appoxee/activities/Feedback;
.super Landroid/app/Activity;
.source "Feedback.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field protected static final CLOSE_WINDOW_URL:Ljava/lang/String; = "appoxee://closeWindow"

.field protected static final MARKET_URL:Ljava/lang/String; = "market://"


# instance fields
.field errorMessage:Landroid/widget/RelativeLayout;

.field progressBar:Landroid/widget/ProgressBar;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appoxee/activities/Feedback;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/appoxee/activities/Feedback;->showErrorMessage()V

    return-void
.end method

.method private showErrorMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 113
    iget-object v0, p0, Lcom/appoxee/activities/Feedback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/appoxee/activities/Feedback;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/appoxee/activities/Feedback;->errorMessage:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appoxee/activities/Inbox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "backIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Feedback;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/appoxee/activities/Feedback;->finish()V

    .line 129
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Feedback;->close(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0, v7}, Lcom/appoxee/activities/Feedback;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/appoxee/activities/Feedback;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 39
    .local v3, "mInflater":Landroid/view/LayoutInflater;
    const-string v5, "feedback_layout"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    .line 38
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 40
    .local v2, "feedbackLayout":Landroid/widget/RelativeLayout;
    const-string v5, "feedback_webview"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/appoxee/activities/Feedback;->webView:Landroid/webkit/WebView;

    .line 41
    const-string v5, "feedback_progress_bar"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/appoxee/activities/Feedback;->progressBar:Landroid/widget/ProgressBar;

    .line 43
    const-string v5, "feedback_error_message"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 42
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/appoxee/activities/Feedback;->errorMessage:Landroid/widget/RelativeLayout;

    .line 45
    iget-object v5, p0, Lcom/appoxee/activities/Feedback;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_0

    .line 47
    iget-object v5, p0, Lcom/appoxee/activities/Feedback;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 48
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppId()Ljava/lang/Long;

    move-result-object v0

    .line 51
    .local v0, "appId":Ljava/lang/Long;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "deviceId":Ljava/lang/String;
    iget-object v5, p0, Lcom/appoxee/activities/Feedback;->webView:Landroid/webkit/WebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getFeedbackUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?appID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/appoxee/activities/Feedback;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v5, p0, Lcom/appoxee/activities/Feedback;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/appoxee/activities/Feedback$1;

    invoke-direct {v6, p0}, Lcom/appoxee/activities/Feedback$1;-><init>(Lcom/appoxee/activities/Feedback;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    .end local v0    # "appId":Ljava/lang/Long;
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v4    # "webSettings":Landroid/webkit/WebSettings;
    :cond_0
    return-void
.end method
