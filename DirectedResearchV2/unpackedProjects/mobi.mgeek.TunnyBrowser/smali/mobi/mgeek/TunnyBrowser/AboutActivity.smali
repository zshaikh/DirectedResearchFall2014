.class public Lmobi/mgeek/TunnyBrowser/AboutActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "AboutActivity.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Landroid/widget/LinearLayout;

.field private c:Lcom/dolphin/browser/core/IWebView;

.field private d:Lcom/dolphin/browser/core/IWebViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lmobi/mgeek/TunnyBrowser/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 112
    new-instance v0, Lmobi/mgeek/TunnyBrowser/a;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/a;-><init>(Lmobi/mgeek/TunnyBrowser/AboutActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->d:Lcom/dolphin/browser/core/IWebViewCallback;

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/AboutActivity;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/ib;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/ib;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 70
    :goto_0
    return v3

    .line 66
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-static {p0, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/AboutActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-static {p0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    .line 76
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 78
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    .line 79
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->d:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 81
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 82
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 87
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->requestFocus()Z

    .line 89
    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/AboutActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 154
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 42
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->setHardwareAccelerated(Landroid/view/Window;)V

    .line 44
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->b:Landroid/widget/LinearLayout;

    .line 45
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 49
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;

    invoke-direct {v1}, Lcom/dolphin/browser/javascript/DolphinJsApiHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/javascript/h;)V

    .line 52
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->a()Lmobi/mgeek/TunnyBrowser/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    sget-object v1, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a:Ljava/lang/String;

    const-string v2, "pageUrl :%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->b(Ljava/lang/String;)V

    .line 57
    :cond_0
    const-string v0, "settings_new"

    const-string v1, "about_Dolphin"

    const-string v2, "app_info"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPause()V

    .line 106
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onPause()V

    .line 108
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->pauseTimers()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 95
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a()V

    .line 96
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onResume()V

    .line 98
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/AboutActivity;->c:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->resumeTimers()V

    .line 100
    :cond_0
    return-void
.end method
