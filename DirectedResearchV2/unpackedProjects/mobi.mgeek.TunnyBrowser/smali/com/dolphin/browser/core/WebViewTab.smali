.class Lcom/dolphin/browser/core/WebViewTab;
.super Lcom/dolphin/browser/core/an;
.source "WebViewTab.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/IWebView;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;)V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewTab;->a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/core/WebViewTab;-><init>(Lcom/dolphin/browser/core/TabManager;ILcom/dolphin/browser/core/IWebView;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;ILcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/an;-><init>(Lcom/dolphin/browser/core/TabManager;I)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    .line 103
    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/core/WebViewTab;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 106
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/core/an;-><init>(Lcom/dolphin/browser/core/TabManager;I)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    .line 122
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/core/WebViewTab;->setSavedState(Landroid/os/Bundle;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/core/WebViewTab;->e:Z

    .line 125
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->j()V

    .line 126
    return-void
.end method

.method private static a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public static b(Lcom/dolphin/browser/core/IWebView;)Ljava/io/File;
    .locals 3

    .prologue
    .line 1205
    .line 1208
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pic.save"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1212
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->getThumbnailDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    const-string v0, "0_pic.save"

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebViewCallback;->interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 325
    :cond_0
    return-object p2
.end method

.method private e()V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->d()V

    .line 302
    return-void
.end method


# virtual methods
.method protected a()Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewTab;->a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 112
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 1168
    if-nez p1, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewTab;->e()V

    .line 1170
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->performResume()V

    .line 1171
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->onWindowFocusChanged(Z)V

    .line 1175
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1181
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_0

    .line 1201
    :goto_0
    return v1

    .line 1185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveState for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/core/WebViewTab;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    :cond_0
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->addPackageName(Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->addPackageNames(Ljava/util/Set;)V

    .line 750
    :cond_0
    return-void
.end method

.method protected b(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 1278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onResume()V

    .line 1136
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->d()Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onResume(Lcom/dolphin/browser/core/IWebView;)V

    .line 1139
    :cond_0
    return-void
.end method

.method protected b(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1223
    iput-boolean v1, p0, Lcom/dolphin/browser/core/WebViewTab;->b:Z

    .line 1224
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 1256
    :goto_0
    return v0

    .line 1229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreState for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_6

    .line 1232
    :cond_2
    const-string v0, "currentPicture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1233
    new-instance v0, Ljava/io/File;

    const-string v2, "currentPicture"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1237
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->l:Lcom/dolphin/browser/core/ar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1238
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    .line 1246
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore failed, loadUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 1247
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/WebViewTab;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 1248
    goto :goto_0

    .line 1240
    :cond_5
    const-string v0, "currentUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1242
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1251
    :cond_6
    const-string v0, "currentPicture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1252
    new-instance v0, Ljava/io/File;

    const-string v1, "currentPicture"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1, p1, v0}, Lcom/dolphin/browser/core/IWebView;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    .line 1254
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1256
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1159
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->c()V

    .line 1160
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->pause()V

    .line 1161
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->onWindowFocusChanged(Z)V

    .line 1164
    :cond_0
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->canGoBack()Z

    move-result v0

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->canGoBackOrForward(I)Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->canGoForward()Z

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canStateUndo()Z
    .locals 1

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/dolphin/browser/core/WebViewTab;->b:Z

    return v0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x1

    return v0
.end method

.method public cancelSelectText()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->cancelSelectText()V

    .line 1016
    :cond_0
    return-void
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/IWebView;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 442
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v1, :cond_1

    .line 443
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 459
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    .line 446
    const-string v2, "currentPicture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_0

    .line 448
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    const-string v2, "WebViewTab"

    const-string v3, "Read picture failed"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->clearCache(Z)V

    .line 623
    :cond_0
    return-void
.end method

.method public clearContentAndHistory()V
    .locals 2

    .prologue
    .line 1289
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    .line 1290
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 1292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewTab;->a(Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 1297
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 1298
    iput-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    .line 1299
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->g()V

    .line 1301
    :cond_1
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearFormData()V

    .line 630
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearHistory()V

    .line 637
    :cond_0
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearMatches()V

    .line 683
    :cond_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearSslPreferences()V

    .line 644
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearView()V

    .line 438
    :cond_0
    return-void
.end method

.method public containsView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsWebView(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 1

    .prologue
    .line 1122
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentToViewX(I)I
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->contentToViewX(I)I

    move-result v0

    .line 1077
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentToViewY(I)I
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->contentToViewY(I)I

    move-result v0

    .line 1086
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 651
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->a()Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 289
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 290
    iput-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    .line 291
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->g()V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/WebViewTab;->restoreState(Landroid/os/Bundle;)Z

    .line 298
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->destroy()V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_2

    .line 200
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->d()Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->destory(Lcom/dolphin/browser/core/IWebView;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v2, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 205
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewTab;->b(Lcom/dolphin/browser/core/IWebView;)Ljava/io/File;

    move-result-object v0

    .line 209
    :goto_0
    iput-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    move-object v1, v0

    .line 217
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete saved picture "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :cond_1
    return-void

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    const-string v2, "currentPicture"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    new-instance v1, Ljava/io/File;

    const-string v2, "currentPicture"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCopySelection()Z
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->doCopySelection()Z

    move-result v0

    .line 1095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSelectTextDone()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->doSelectTextDone()V

    .line 1271
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->documentAsText(Landroid/os/Message;)V

    .line 1313
    :cond_0
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->findAll(Ljava/lang/String;)I

    move-result v0

    .line 667
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V

    .line 1320
    :cond_0
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->findNext(Z)V

    .line 660
    :cond_0
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->flingScroll(II)V

    .line 830
    :cond_0
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->freeMemory()V

    .line 616
    :cond_0
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getContentHeight()I

    move-result v0

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getContentWidth()I

    move-result v0

    .line 570
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 889
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFlatHistoryCount()I
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1392
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public getFlatHistoryIndex()I
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1403
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getHeight()I

    move-result v0

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinWebAppModePageIndex()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getScale()F

    move-result v0

    .line 468
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getScrollX()I

    move-result v0

    .line 1023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getScrollY()I

    move-result v0

    .line 1032
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitleBar()Landroid/view/View;

    move-result-object v0

    .line 991
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitleHeight()I

    move-result v0

    .line 1000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/dolphin/browser/x/d;->a()Lcom/dolphin/browser/x/d;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/x/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getViewHeight()I

    move-result v0

    .line 960
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getViewWidth()I

    move-result v0

    .line 951
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getVisibleTitleHeight()I

    move-result v0

    .line 903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebView()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    .line 711
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWidth()I

    move-result v0

    .line 1041
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->goBack()V

    .line 381
    :cond_0
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->goBackOrForward(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->goForward()V

    .line 397
    :cond_0
    return-void
.end method

.method public hasFeature(I)Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->hasFeature(I)Z

    move-result v0

    .line 871
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideTitleBar()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->hideTitleBar()V

    .line 912
    :cond_0
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->hideZoomButtonsController()V

    .line 944
    :cond_0
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->invokeZoomPicker()V

    .line 484
    :cond_0
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isAtLeftEdge()Z

    move-result v0

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtRightEdge()Z
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isAtRightEdge()Z

    move-result v0

    .line 935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isPaused()Z

    move-result v0

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isPrivateBrowsingEnabled()Z

    move-result v0

    .line 1349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->isSelectingText()Z

    move-result v0

    .line 880
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewTab;->e()V

    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewTab;->e()V

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/IWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewTab;->e()V

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/core/WebViewTab;->b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/dolphin/browser/util/URIUtil;->isDolphinGameUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-static {v0}, Lcom/dolphin/browser/util/URIUtil;->getOriginUrlOfGameUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/WebViewTab;->setLastGameModeUrl(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/WebViewTab;->setGameMode(Z)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 318
    :cond_1
    return-void
.end method

.method public notifyFindDialogDismissed2()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->notifyFindDialogDismissed2()V

    .line 690
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 787
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onPause()V

    .line 593
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onResume()V

    .line 600
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->onWindowFocusChanged(Z)V

    .line 1264
    :cond_0
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->pageDown(Z)Z

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->pageUp(Z)Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->onPause()V

    .line 1145
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->d()Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onPause(Lcom/dolphin/browser/core/IWebView;)V

    .line 1148
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->pauseTimers()V

    .line 579
    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewTab;->e()V

    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->postUrl(Ljava/lang/String;[B)V

    .line 334
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->reload()V

    .line 365
    :cond_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 734
    :cond_0
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->removePackageName(Ljava/lang/String;)V

    .line 764
    :cond_0
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->requestFocus()Z

    move-result v0

    .line 855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 500
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->requestImageRef(Landroid/os/Message;)V

    .line 507
    :cond_0
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->resumeTimers()V

    .line 586
    :cond_0
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/IWebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->saveWebArchive(Ljava/lang/String;)V

    .line 1342
    :cond_0
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/IWebView;->saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V

    .line 1335
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->scrollTo(II)V

    .line 1328
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setBackgroundColor(I)V

    .line 864
    :cond_0
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 169
    :cond_0
    return-void
.end method

.method public setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    .line 1104
    :cond_0
    return-void
.end method

.method public setFindDialogHeight(I)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setFindDialogHeight(I)V

    .line 697
    :cond_0
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setFindIsUp(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/IWebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setInitialScale(I)V

    .line 477
    :cond_0
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setJsFlags(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    :cond_0
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setMapTrackballToArrowKeys(Z)V

    .line 814
    :cond_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setNetworkAvailable(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IWebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V

    .line 1358
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setOverScrollMode(I)V

    .line 1155
    :cond_0
    return-void
.end method

.method public setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V

    .line 720
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setScrollBarStyle(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setScrollbarFadingEnabled(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method public setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public setTitleBar(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 966
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewTab;->e()V

    .line 968
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    instance-of v0, v0, Lcom/dolphin/browser/core/bl;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setTitleBar(Landroid/view/View;)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->setTitleBar(Landroid/view/View;)V

    .line 977
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->h:Lcom/dolphin/browser/core/k;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/k;->b(Landroid/view/View;)V

    goto :goto_0

    .line 979
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setTitleBar(Landroid/view/View;)V

    .line 980
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->h:Lcom/dolphin/browser/core/k;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/k;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 704
    :cond_0
    return-void
.end method

.method public setWebappMode(Z)V
    .locals 3

    .prologue
    .line 1372
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setWebappMode(Z)V

    .line 1373
    if-eqz p1, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/dolphin/browser/core/WebViewTab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_0

    .line 1377
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1378
    iget v1, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1379
    iput v0, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    if-le v1, v0, :cond_0

    .line 1382
    iput v0, p0, Lcom/dolphin/browser/core/WebViewTab;->c:I

    goto :goto_0
.end method

.method public showTitleBar()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->showTitleBar()V

    .line 919
    :cond_0
    return-void
.end method

.method public startSelectText()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->startSelectText()V

    .line 1009
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->stopLoading()V

    .line 358
    :cond_0
    return-void
.end method

.method public viewToContentX(I)I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->viewToContentX(I)I

    move-result v0

    .line 1059
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewToContentY(I)I
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebView;->viewToContentY(I)I

    move-result v0

    .line 1068
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->zoomIn()Z

    move-result v0

    .line 837
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewTab;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->zoomOut()Z

    move-result v0

    .line 846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
