.class public Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "WebHostActivity.java"


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:J

.field private e:Lcom/dolphin/browser/core/IWebView;

.field private f:Landroid/app/ProgressDialog;

.field private g:Lcom/dolphin/browser/core/IWebViewCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->b:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->c:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cr;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/cr;-><init>(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->g:Lcom/dolphin/browser/core/IWebViewCallback;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {p0, p1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :try_start_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->finish()V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {p0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->g:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/IWebSettings;->setSavePassword(Z)V

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->requestFocus()Z

    .line 111
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 146
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->finish()V

    .line 147
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 151
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 159
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected d(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->getQueryParameterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 250
    :cond_0
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->goBack()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->setHardwareAccelerated(Landroid/view/Window;)V

    .line 54
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0348

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/cq;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/cq;-><init>(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->d:J

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->f(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->pauseTimers()V

    .line 131
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->e:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->resumeTimers()V

    .line 142
    :cond_0
    return-void
.end method
