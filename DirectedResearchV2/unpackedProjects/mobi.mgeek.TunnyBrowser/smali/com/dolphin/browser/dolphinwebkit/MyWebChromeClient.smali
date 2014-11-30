.class Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;
.super Ldolphin/webkit/WebChromeClient;
.source "MyWebChromeClient.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final GAMEMODE_WHITELIST:[Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final mWebView:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".*[./]google\\..*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->GAMEMODE_WHITELIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ldolphin/webkit/WebChromeClient;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisitedHistory(Ldolphin/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v1, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;-><init>(Ldolphin/webkit/ValueCallback;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->getVisitedHistory(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1}, Ldolphin/webkit/WebChromeClient;->getVisitedHistory(Ldolphin/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public isInGameModeWhitelist(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 309
    :goto_1
    sget-object v2, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->GAMEMODE_WHITELIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 310
    sget-object v2, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->GAMEMODE_WHITELIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCheckFullScreenStatus(Ldolphin/webkit/WebView;)Z
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onCheckFullScreenStatus(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v0

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseWindow(Ldolphin/webkit/WebView;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    check-cast p1, Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Ldolphin/webkit/WebChromeClient;->onCloseWindow(Ldolphin/webkit/WebView;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v1, Lcom/dolphin/browser/core/ConsoleMessage;

    invoke-direct {v1, p1, p3, p2}, Lcom/dolphin/browser/core/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onConsoleMessage(Lcom/dolphin/browser/core/ConsoleMessage;)Z

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateWindow(Ldolphin/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/dolphinwebkit/CreateWindowHandlerWrapper;-><init>(Landroid/os/Message;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebChromeClient;->onCreateWindow(Ldolphin/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLdolphin/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    .prologue
    .line 203
    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v10, Lcom/dolphin/browser/dolphinwebkit/QuotaUpdaterWrapper;

    move-object/from16 v0, p9

    invoke-direct {v10, v0}, Lcom/dolphin/browser/dolphinwebkit/QuotaUpdaterWrapper;-><init>(Ldolphin/webkit/WebStorage$QuotaUpdater;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v10}, Lcom/dolphin/browser/core/IWebViewCallback;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super/range {p0 .. p9}, Ldolphin/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLdolphin/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onGeolocationPermissionsHidePrompt(Lcom/dolphin/browser/core/IWebView;)V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Ldolphin/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/GeolocationCallbackWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/dolphinwebkit/GeolocationCallbackWrapper;-><init>(Ldolphin/webkit/GeolocationPermissions$Callback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onGeolocationPermissionsShowPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Lcom/dolphin/browser/core/IGeolocationPermissions$Callback;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Ldolphin/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onHideCustomView(Lcom/dolphin/browser/core/IWebView;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onJsAlert(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 96
    if-nez p3, :cond_0

    .line 97
    const-string p3, ""

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/JsResultWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/dolphinwebkit/JsResultWrapper;-><init>(Ldolphin/webkit/JsResult;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebChromeClient;->onJsAlert(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 134
    if-nez p3, :cond_0

    .line 135
    const-string p3, ""

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/JsResultWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/dolphinwebkit/JsResultWrapper;-><init>(Ldolphin/webkit/JsResult;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsBeforeUnload(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebChromeClient;->onJsBeforeUnload(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 108
    if-nez p3, :cond_0

    .line 109
    const-string p3, ""

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/JsResultWrapper;

    invoke-direct {v2, p4}, Lcom/dolphin/browser/dolphinwebkit/JsResultWrapper;-><init>(Ldolphin/webkit/JsResult;)V

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebChromeClient;->onJsConfirm(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 121
    if-nez p3, :cond_1

    .line 122
    const-string v3, ""

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v5, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;

    invoke-direct {v5, p5}, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;-><init>(Ldolphin/webkit/JsPromptResult;)V

    move-object v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z

    move-result v0

    .line 127
    :goto_1
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Ldolphin/webkit/WebChromeClient;->onJsPrompt(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldolphin/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move-object v3, p3

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->onJsTimeout()Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Ldolphin/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onProgressChanged(Lcom/dolphin/browser/core/IWebView;I)V

    .line 68
    :goto_0
    const/16 v0, 0x64

    if-ne v0, p2, :cond_0

    .line 69
    invoke-static {p1}, Lcom/dolphin/browser/dolphinwebkit/i;->a(Ldolphin/webkit/WebView;)V

    .line 71
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebChromeClient;->onProgressChanged(Ldolphin/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLdolphin/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    new-instance v5, Lcom/dolphin/browser/dolphinwebkit/QuotaUpdaterWrapper;

    invoke-direct {v5, p5}, Lcom/dolphin/browser/dolphinwebkit/QuotaUpdaterWrapper;-><init>(Ldolphin/webkit/WebStorage$QuotaUpdater;)V

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebViewCallback;->onReachedMaxAppCacheSize(JJLcom/dolphin/browser/core/IWebStorage$QuotaUpdater;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-super/range {p0 .. p5}, Ldolphin/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLdolphin/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onReceivedIcon(Ldolphin/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedIcon(Lcom/dolphin/browser/core/IWebView;Landroid/graphics/Bitmap;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebChromeClient;->onReceivedIcon(Ldolphin/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->notifyUrlUpdated()V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebChromeClient;->onReceivedTitle(Ldolphin/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/dolphin/browser/core/IWebViewCallback;->onReceivedTouchIconUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebChromeClient;->onReceivedTouchIconUrl(Ldolphin/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onRequestFocus(Ldolphin/webkit/WebView;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onRequestFocus(Lcom/dolphin/browser/core/IWebView;)V

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-super {p0, p1}, Ldolphin/webkit/WebChromeClient;->onRequestFocus(Ldolphin/webkit/WebView;)V

    goto :goto_0
.end method

.method public onSelectionDone(Ldolphin/webkit/WebView;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onSelectionDone(Lcom/dolphin/browser/core/IWebView;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onSelectionStart(Ldolphin/webkit/WebView;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onSelectionStart(Lcom/dolphin/browser/core/IWebView;)V

    .line 403
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILdolphin/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0, p1, p3}, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    .line 293
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;

    invoke-direct {v2, p2}, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;-><init>(Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/dolphin/browser/core/IWebViewCallback;->onShowCustomView(Lcom/dolphin/browser/core/IWebView;Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public openFileChooser(Ldolphin/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    const-string v0, "*/*"

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->openFileChooser(Ldolphin/webkit/ValueCallback;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public openFileChooser(Ldolphin/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;

    invoke-direct {v2, p1}, Lcom/dolphin/browser/dolphinwebkit/ValueCallbackWrapper;-><init>(Ldolphin/webkit/ValueCallback;)V

    invoke-interface {v0, v1, v2, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->openFileChooser(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public setFullScreen(Ldolphin/webkit/WebView;Z)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->setFullScreen(Lcom/dolphin/browser/core/IWebView;Z)V

    .line 426
    :cond_0
    return-void
.end method

.method public setInstallableWebApp()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback;->setInstallableWebApp()V

    .line 385
    :cond_0
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->setupAutoFill(Landroid/os/Message;)V

    .line 392
    :cond_0
    return-void
.end method

.method public showGameModeAlertDialog(Ldolphin/webkit/WebView;Z)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public switchToGameMode()V
    .locals 5

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/dolphin/browser/dolphinwebkit/d;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/dolphinwebkit/d;-><init>(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/core/IWebViewCallback;->onCreateWindow(Lcom/dolphin/browser/core/IWebView;ZZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)Z

    .line 453
    return-void
.end method
