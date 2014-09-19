.class public Lcom/inmobi/androidsdk/IMBrowserActivity;
.super Landroid/app/Activity;
.source "IMBrowserActivity.java"


# static fields
.field public static final EXTRA_BROWSER_ACTIVITY_TYPE:Ljava/lang/String; = "extra_browser_type"

.field public static final EXTRA_BROWSER_STATUS_BAR:I = 0x65

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field private static b:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field private static c:Landroid/os/Message;


# instance fields
.field private a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:F

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

.field private h:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 271
    new-instance v0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$1;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/webkit/WebViewClient;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    .line 118
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 121
    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 122
    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$2;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 130
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 131
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v2

    .line 133
    const/high16 v3, 0x4230

    iget v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 131
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v2

    .line 139
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 137
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    const/high16 v2, 0x41c8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 144
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$3;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$3;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->REFRESH:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 164
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$4;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$4;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->BACK:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$5;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$5;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    .line 206
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$6;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$6;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method public static requestOnAdDismiss(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;

    .line 319
    return-void
.end method

.method public static setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 323
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->onOrientationEventChange()V

    .line 335
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestWindowFeature(I)Z

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 78
    :cond_1
    const-string v0, "window"

    .line 77
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 79
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    .line 83
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "FIRST_INSTANCE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Ljava/lang/Boolean;

    .line 86
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMBrowserActivity-> onCreate"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v1, :cond_2

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    .line 91
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v2, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, p0, v2, v4, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v2

    .line 95
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 93
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExternalWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 110
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 112
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 114
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 261
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception in onDestroy "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 236
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 249
    return-void
.end method
