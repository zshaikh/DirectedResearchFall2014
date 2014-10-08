.class public Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;
.super Landroid/webkit/WebView;
.source "ApplifierImpactWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;,
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;,
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewClient;
    }
.end annotation


# instance fields
.field private _currentWebView:Ljava/lang/String;

.field private _listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

.field private _url:Ljava/lang/String;

.field private _webAppLoaded:Z

.field private _webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;
    .param p3, "webBridge"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .line 34
    const-string v0, "start"

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading WebView from URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;
    .param p4, "webBridge"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .line 34
    const-string v0, "start"

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .line 34
    const-string v0, "start"

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .line 34
    const-string v0, "start"

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .line 34
    const-string v0, "start"

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;)Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    return v0
.end method

.method static synthetic access$2(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    return-void
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;
    .param p4, "webBridge"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .prologue
    .line 177
    iput-object p3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 178
    iput-object p2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    .line 180
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setupApplifierView()V

    .line 181
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 184
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$1;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setLongClickable(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method private setupApplifierView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 199
    iget-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_url:Ljava/lang/String;

    const-string v3, "_raw.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 201
    const-string v2, "startup() -> LOAD_NO_CACHE"

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    :goto_0
    const/4 v1, 0x0

    .line 213
    .local v1, "appCachePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 220
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 224
    invoke-virtual {p0, v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 225
    invoke-virtual {p0, v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setVerticalScrollBarEnabled(Z)V

    .line 227
    invoke-virtual {p0, v5}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setClickable(Z)V

    .line 228
    invoke-virtual {p0, v5}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setFocusable(Z)V

    .line 229
    invoke-virtual {p0, v5}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setFocusableInTouchMode(Z)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setInitialScale(I)V

    .line 232
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setBackgroundColor(I)V

    .line 233
    invoke-virtual {p0, v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {p0, v4}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setBackgroundResource(I)V

    .line 236
    new-instance v2, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewClient;

    invoke-direct {v2, p0, v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewClient;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewClient;)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 237
    new-instance v2, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;

    invoke-direct {v2, p0, v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierViewChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 239
    if-eqz v1, :cond_2

    .line 240
    const/4 v0, 0x1

    .line 242
    .local v0, "appCache":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_1

    .line 243
    const/4 v0, 0x0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-wide/32 v3, 0xa00000

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 249
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 252
    .end local v0    # "appCache":Z
    :cond_2
    const-string v2, "Adding javascript interface"

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webBridge:Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge;

    const-string v3, "applifierimpactnative"

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    return-void

    .line 204
    .end local v1    # "appCachePath":Ljava/lang/String;
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearWebView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    .line 62
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    .line 63
    invoke-virtual {p0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 65
    return-void
.end method

.method public getWebViewCurrentView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    return-object v0
.end method

.method public initWebApp(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const-string v3, "unknown"

    .line 133
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v1, "initData":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "campaignData"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v3, "deviceId"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v3, "unknown"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    const-string v3, "androidId"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_0
    const-string v3, "unknown"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    const-string v3, "serialId"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_1
    const-string v3, "unknown"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getTelephonyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    const-string v3, "telephonyId"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getTelephonyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_2
    const-string v3, "openUdid"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getOpenUdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v3, "macAddress"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v3, "sdkVersion"

    const-string v4, "109"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v3, "gameId"

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v3, "screenDensity"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getScreenDensity()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string v3, "screenSize"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getScreenSize()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v3, "softwareVersion"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v3, "deviceType"

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getDeviceType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const-string v3, "%s%s(%s);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "javascript:applifierimpact."

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "init"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "initString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initializing WebView with JS call: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v4, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;

    invoke-direct {v4, p0, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    .end local v1    # "initData":Lorg/json/JSONObject;
    .end local v2    # "initString":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 162
    .restart local v1    # "initData":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error creating webview init params"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isWebAppLoaded()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_webAppLoaded:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 281
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 275
    :pswitch_0
    const-string v0, "onKeyDown"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/a1/webapp/IApplifierImpactWebViewListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 278
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const-string v0, "{}"

    .line 123
    .local v0, "dataString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    const-string v2, "%s%s(\"%s\", %s);"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "javascript:applifierimpact."

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "handleNativeEvent"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "javascriptString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send native event to WebApp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v3, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;

    invoke-direct {v3, p0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "javascriptString":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 261
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 262
    .local v1, "layertype":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "layertype":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not invoke setLayerType"

    invoke-static {v2, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWebViewCurrentView(Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    return-void
.end method

.method public setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const-string v9, "open"

    const-string v7, "action"

    .line 80
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->isWebAppLoaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const-string v1, "{}"

    .line 83
    .local v1, "dataString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    const-string v3, "%s%s(\"%s\", %s);"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "javascript:applifierimpact."

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const-string v6, "setView"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "javascriptString":Ljava/lang/String;
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->_currentWebView:Ljava/lang/String;

    .line 88
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v4, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;

    invoke-direct {v4, p0, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send change view to WebApp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    const-string v0, "test"

    .line 94
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v3, "action"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataHasApiActionKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "action"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "actionEqualsWebViewApiOpen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "open"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDebuggable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    invoke-static {v4}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "runWebViewTests="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "testJavaScriptContents="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v3, "action"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    if-eqz v0, :cond_1

    .line 107
    const-string v3, "open"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running test-javascript: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v4, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 117
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v2    # "javascriptString":Ljava/lang/String;
    :cond_1
    return-void

    .line 96
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "dataString":Ljava/lang/String;
    .restart local v2    # "javascriptString":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
