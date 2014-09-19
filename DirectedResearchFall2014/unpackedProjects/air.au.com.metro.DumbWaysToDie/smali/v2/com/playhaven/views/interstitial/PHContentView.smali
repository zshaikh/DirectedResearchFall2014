.class public Lv2/com/playhaven/views/interstitial/PHContentView;
.super Landroid/widget/RelativeLayout;
.source "PHContentView.java"

# interfaces
.implements Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/views/interstitial/PHContentView$Listener;
    }
.end annotation


# static fields
.field private static final TIME_BEFORE_SHOW_CLOSE_BUTTON:I = 0xfa0


# instance fields
.field private final CLOSE_BUTTON_MARGIN:F

.field private closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

.field private closeButtonTimerHandler:Landroid/os/Handler;

.field private content:Lv2/com/playhaven/model/PHContent;

.field private listener:Lv2/com/playhaven/views/interstitial/PHContentView$Listener;

.field private showCloseButtonRunnable:Ljava/lang/Runnable;

.field private webview:Lv2/com/playhaven/views/interstitial/PHWebView;


# direct methods
.method public constructor <init>(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;Landroid/content/Context;Lv2/com/playhaven/model/PHContent;Lv2/com/playhaven/views/interstitial/PHContentView$Listener;Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "contentDisplayer"
    .parameter "context"
    .parameter "content"
    .parameter "listener"
    .parameter "bridge"
    .parameter "custom_active"
    .parameter "custom_inactive"

    .prologue
    .line 93
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/high16 v0, 0x4000

    iput v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->CLOSE_BUTTON_MARGIN:F

    .line 95
    iput-object p4, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->listener:Lv2/com/playhaven/views/interstitial/PHContentView$Listener;

    .line 96
    iput-object p3, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->content:Lv2/com/playhaven/model/PHContent;

    .line 102
    invoke-direct {p0, p6, p7}, Lv2/com/playhaven/views/interstitial/PHContentView;->setupCloseButton(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 108
    invoke-direct {p0, p2, p5, p1}, Lv2/com/playhaven/views/interstitial/PHContentView;->setupWebview(Landroid/content/Context;Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;)V

    .line 109
    return-void
.end method

.method private setupCloseButton(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 6
    .parameter "custom_active"
    .parameter "custom_inactive"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 130
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Lv2/com/playhaven/utils/PHConversionUtils;->dipToPixels(Landroid/content/Context;F)F

    move-result v1

    .line 138
    .local v1, marginInPixels:F
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 139
    :cond_0
    new-instance v2, Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;-><init>(Landroid/content/Context;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;)V

    iput-object v2, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    .line 143
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    float-to-int v2, v1

    .line 153
    float-to-int v3, v1

    .line 151
    invoke-virtual {v0, v5, v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    iget-object v2, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-virtual {v2, v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v2, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-virtual {p0, v2}, Lv2/com/playhaven/views/interstitial/PHContentView;->addView(Landroid/view/View;)V

    .line 162
    iget-object v2, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setVisibility(I)V

    .line 165
    invoke-direct {p0}, Lv2/com/playhaven/views/interstitial/PHContentView;->startShowCloseButtonTimer()V

    .line 166
    return-void

    .line 141
    .end local v0           #closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v2, Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, p1, p2}, Lv2/com/playhaven/views/interstitial/PHCloseButton;-><init>(Landroid/content/Context;Lv2/com/playhaven/views/interstitial/PHCloseButton$Listener;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v2, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    goto :goto_0
.end method

.method private setupWebview(Landroid/content/Context;Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;)V
    .locals 8
    .parameter "context"
    .parameter "bridge"
    .parameter "contentDisplayer"

    .prologue
    const/4 v7, -0x1

    .line 170
    new-instance v3, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;

    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->content:Lv2/com/playhaven/model/PHContent;

    invoke-direct {v3, p3, p2, v0}, Lv2/com/playhaven/interstitial/webview/PHWebViewClient;-><init>(Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;Lv2/com/playhaven/model/PHContent;)V

    .line 172
    .local v3, client:Lv2/com/playhaven/interstitial/webview/PHWebViewClient;
    new-instance v4, Lv2/com/playhaven/interstitial/webview/PHWebViewChrome;

    invoke-direct {v4}, Lv2/com/playhaven/interstitial/webview/PHWebViewChrome;-><init>()V

    .line 174
    .local v4, chrome:Lv2/com/playhaven/interstitial/webview/PHWebViewChrome;
    new-instance v0, Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v5, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->content:Lv2/com/playhaven/model/PHContent;

    invoke-direct/range {v0 .. v5}, Lv2/com/playhaven/views/interstitial/PHWebView;-><init>(Landroid/content/Context;ZLv2/com/playhaven/interstitial/webview/PHWebViewClient;Lv2/com/playhaven/interstitial/webview/PHWebViewChrome;Lv2/com/playhaven/model/PHContent;)V

    iput-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    .line 176
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {v0, v6}, Lv2/com/playhaven/views/interstitial/PHWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {p2, v0}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->attachWebview(Landroid/webkit/WebView;)V

    .line 185
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/interstitial/PHContentView;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHWebView;->loadContentTemplate()V

    .line 192
    return-void
.end method

.method private startShowCloseButtonTimer()V
    .locals 4

    .prologue
    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonTimerHandler:Landroid/os/Handler;

    .line 246
    new-instance v0, Lv2/com/playhaven/views/interstitial/PHContentView$1;

    invoke-direct {v0, p0}, Lv2/com/playhaven/views/interstitial/PHContentView$1;-><init>(Lv2/com/playhaven/views/interstitial/PHContentView;)V

    iput-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->showCloseButtonRunnable:Ljava/lang/Runnable;

    .line 257
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->showCloseButtonRunnable:Ljava/lang/Runnable;

    .line 258
    const-wide/16 v2, 0xfa0

    .line 257
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonTimerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->showCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {v0, v2}, Lv2/com/playhaven/views/interstitial/PHWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 119
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {v0, v2}, Lv2/com/playhaven/views/interstitial/PHWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->webview:Lv2/com/playhaven/views/interstitial/PHWebView;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHWebView;->cleanup()V

    .line 196
    return-void
.end method

.method public closeButtonIsShowing()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCloseButton()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonTimerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButtonTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->showCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setVisibility(I)V

    .line 236
    return-void
.end method

.method public onClose(Lv2/com/playhaven/views/interstitial/PHCloseButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 203
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->listener:Lv2/com/playhaven/views/interstitial/PHContentView$Listener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->listener:Lv2/com/playhaven/views/interstitial/PHContentView$Listener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/views/interstitial/PHContentView$Listener;->onClose(Lv2/com/playhaven/views/interstitial/PHContentView;)V

    .line 205
    :cond_0
    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    invoke-virtual {v0}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->bringToFront()V

    .line 220
    iget-object v0, p0, Lv2/com/playhaven/views/interstitial/PHContentView;->closeButton:Lv2/com/playhaven/views/interstitial/PHCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv2/com/playhaven/views/interstitial/PHCloseButton;->setVisibility(I)V

    .line 221
    return-void
.end method
